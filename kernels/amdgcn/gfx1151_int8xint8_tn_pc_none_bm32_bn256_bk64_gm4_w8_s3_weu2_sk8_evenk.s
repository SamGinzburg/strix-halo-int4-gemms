	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
	v_and_b32_e32 v10, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v46, 3, v0
	v_and_b32_e32 v13, 15, v0
	v_or_b32_e32 v51, 0x3f0, v0
	v_or_b32_e32 v52, 0x7f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v44, 2, v10
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 24, v46
	v_and_b32_e32 v53, 8, v0
	v_and_b32_e32 v54, 32, v0
	v_and_b32_e32 v55, 48, v46
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
	v_mul_lo_u32 v3, s29, v44
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v47, v13, 4, v3
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s15
	s_mov_b32 s26, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v48, s29, 1, v47
	v_add_nc_u32_e32 v49, s30, v47
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
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_load_b32 s9, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s28, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s11
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s16, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s16, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s34, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s10
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s9, 0x1ff
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s6, s28, s34
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s31, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s34
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v9, v1, v2, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x1ff
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s18, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s6, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v47
	v_add_nc_u32_e32 v3, s4, v48
	v_add_nc_u32_e32 v4, s4, v49
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s29, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s8, s29, 9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s8
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s7, s28, 9
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b64 v[7:8], v1, s[12:15], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v11, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	v_cndmask_b32_e64 v2, 0x80000000, v12, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s4, v48
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v11, s6, s7, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v26, s4, v49
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v1, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v2, s[24:27], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x5ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v12, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v11, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v26, s2
	s_clause 0x1
	buffer_load_b128 v[26:29], v2, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v11, s[24:27], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v12, 1, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s29, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x1
	buffer_load_b128 v[34:37], v2, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v11, s[24:27], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b64 v[42:43], v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	v_and_b32_e32 v11, 14, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v44, v1, v44
	v_lshlrev_b32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v57, v11, 10, v44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v44, 0, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v58, 0x90, v57
	v_xor_b32_e32 v60, 0x120, v57
	v_xor_b32_e32 v61, 0x1b0, v57
	v_xor_b32_e32 v62, 0x210, v57
	v_add_nc_u32_e32 v45, 0, v57
	v_xor_b32_e32 v63, 0x330, v57
	v_xor_b32_e32 v64, 0x3a0, v57
	v_add_nc_u32_e32 v50, 0, v58
	v_add_nc_u32_e32 v56, 0, v60
	v_add_nc_u32_e32 v59, 0, v61
	v_add_nc_u32_e32 v65, 0, v62
	v_add_nc_u32_e32 v66, 0, v63
	v_add_nc_u32_e32 v67, 0, v64
	v_add_nc_u32_e32 v68, 0x4000, v45
	v_add_nc_u32_e32 v69, 0x4000, v50
	v_add_nc_u32_e32 v70, 0x4000, v56
	v_add_nc_u32_e32 v71, 0x4000, v59
	v_add_nc_u32_e32 v72, 0x4000, v65
	v_add_nc_u32_e32 v73, 0x4000, v66
	v_add_nc_u32_e32 v74, 0x4000, v67
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v44, v[7:8] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v7, v14, v3, 0x4000501
	v_perm_b32 v3, v14, v3, 0x6020703
	v_perm_b32 v8, v15, v4, 0x4000501
	v_perm_b32 v4, v15, v4, 0x6020703
	v_perm_b32 v14, v16, v5, 0x4000501
	v_perm_b32 v5, v16, v5, 0x6020703
	v_perm_b32 v15, v17, v6, 0x4000501
	v_perm_b32 v6, v17, v6, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v16, v22, v18, 0x4000501
	v_perm_b32 v17, v22, v18, 0x6020703
	v_perm_b32 v18, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v22, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v23, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v24, v30, v26, 0x4000501
	v_perm_b32 v25, v30, v26, 0x6020703
	v_perm_b32 v30, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v7, v16, 0x7060302
	v_perm_b32 v7, v7, v16, 0x5040100
	v_perm_b32 v16, v3, v17, 0x7060302
	v_perm_b32 v3, v3, v17, 0x5040100
	v_perm_b32 v17, v8, v18, 0x7060302
	v_perm_b32 v8, v8, v18, 0x5040100
	v_perm_b32 v18, v4, v19, 0x7060302
	v_perm_b32 v4, v4, v19, 0x5040100
	v_perm_b32 v19, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v5, v20, 0x7060302
	v_perm_b32 v5, v5, v20, 0x5040100
	v_perm_b32 v20, v15, v23, 0x7060302
	v_perm_b32 v15, v15, v23, 0x5040100
	v_perm_b32 v23, v6, v21, 0x7060302
	v_perm_b32 v6, v6, v21, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v21, v38, v34, 0x4000501
	v_perm_b32 v26, v31, v27, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v38, v34, 0x6020703
	v_perm_b32 v34, v39, v35, 0x4000501
	v_perm_b32 v35, v39, v35, 0x6020703
	v_perm_b32 v38, v40, v36, 0x4000501
	v_perm_b32 v36, v40, v36, 0x6020703
	v_perm_b32 v39, v41, v37, 0x4000501
	v_perm_b32 v37, v41, v37, 0x6020703
	ds_store_2addr_b32 v45, v32, v7 offset1:16
	ds_store_2addr_b32 v50, v16, v3 offset1:16
	ds_store_2addr_b32 v56, v17, v8 offset1:16
	ds_store_2addr_b32 v59, v18, v4 offset1:16
	ds_store_2addr_b32 v65, v19, v14 offset1:16
	ds_store_2addr_b32 v45, v22, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v66, v20, v15 offset1:16
	ds_store_2addr_b32 v67, v23, v6 offset1:16
	v_perm_b32 v3, v24, v21, 0x7060302
	v_perm_b32 v4, v24, v21, 0x5040100
	v_perm_b32 v5, v25, v33, 0x7060302
	v_perm_b32 v6, v25, v33, 0x5040100
	v_perm_b32 v7, v26, v34, 0x7060302
	v_perm_b32 v8, v26, v34, 0x5040100
	v_perm_b32 v14, v27, v35, 0x7060302
	v_perm_b32 v15, v27, v35, 0x5040100
	v_perm_b32 v16, v30, v38, 0x7060302
	v_perm_b32 v17, v30, v38, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v44, v[42:43] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v18, v28, v36, 0x7060302
	v_perm_b32 v19, v28, v36, 0x5040100
	v_perm_b32 v20, v31, v39, 0x7060302
	v_perm_b32 v21, v31, v39, 0x5040100
	v_perm_b32 v22, v29, v37, 0x7060302
	v_perm_b32 v23, v29, v37, 0x5040100
	ds_store_2addr_b32 v68, v3, v4 offset1:16
	ds_store_2addr_b32 v69, v5, v6 offset1:16
	ds_store_2addr_b32 v70, v7, v8 offset1:16
	ds_store_2addr_b32 v71, v14, v15 offset1:16
	ds_store_2addr_b32 v72, v16, v17 offset1:16
	ds_store_2addr_b32 v68, v18, v19 offset0:160 offset1:176
	ds_store_2addr_b32 v73, v20, v21 offset1:16
	ds_store_2addr_b32 v74, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v50, 0x3f0, v0
	v_or_b32_e32 v59, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 48, v46
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v4, 32, v0
	v_and_or_b32 v56, 0x1c0, v1, v6
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr56
.LBB0_3:                                ; %Flow37
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v12
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
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
	v_and_b32_e32 v2, 0x1800, v2
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v50, s29, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v56, 0x1c0, v1, v2
	v_xor_b32_e32 v1, v3, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 0x420, v4
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_or_b32_e32 v1, v56, v1
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v37, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v59, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_xor_b32_e32 v65, 16, v59
	v_xor_b32_e32 v66, 32, v59
	v_xor_b32_e32 v67, 48, v59
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
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
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_addk_i32 s34, 0x400
	s_add_i32 s19, 0, 0x8000
	s_add_i32 s1, 0, 0x8800
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s7, s5, 9
	s_mov_b32 s6, s19
	s_mov_b32 s19, s1
	s_mov_b32 s1, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s34, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v73, s1, v59
	v_add_nc_u32_e32 v74, s1, v65
	v_add_nc_u32_e32 v75, s1, v66
	v_add_nc_u32_e32 v76, s1, v67
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s1, s7, s29
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[68:69], null, s7, s28, v[9:10]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s1, s1, s18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v70, s6, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v69, s1, v47
	v_add_nc_u32_e32 v77, s1, v50
	v_add_nc_u32_e32 v78, s1, v48
	v_add_nc_u32_e32 v79, s1, v49
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[172:173], v68, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[128:131], v69, s[24:27], 0 offen
	buffer_load_b128 v[132:135], v77, s[24:27], 0 offen
	buffer_load_b128 v[136:139], v78, s[24:27], 0 offen
	buffer_load_b128 v[140:143], v79, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v71, s6, v51
	v_add_nc_u32_e32 v72, s6, v52
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v73
	ds_load_b128 v[100:103], v73 offset:8192
	ds_load_b128 v[104:107], v74
	ds_load_b128 v[108:111], v74 offset:8192
	ds_load_b128 v[112:115], v75
	ds_load_b128 v[116:119], v75 offset:8192
	ds_load_b128 v[120:123], v76
	ds_load_b128 v[124:127], v76 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v68, v70 offset:96
	ds_load_u8 v73, v70 offset:64
	ds_load_u8 v74, v70
	ds_load_u8 v75, v70 offset:16
	ds_load_u8 v76, v70 offset:32
	ds_load_u8 v80, v70 offset:112
	ds_load_u8 v81, v70 offset:80
	ds_load_u8 v82, v70 offset:48
	ds_load_u8 v83, v70 offset:928
	ds_load_u8 v84, v70 offset:896
	ds_load_u8 v85, v70 offset:992
	ds_load_u8 v86, v70 offset:960
	ds_load_u8 v87, v70 offset:1024
	ds_load_u8 v88, v70 offset:416
	ds_load_u8 v89, v70 offset:384
	ds_load_u8 v90, v70 offset:480
	ds_load_u8 v91, v70 offset:448
	ds_load_u8 v96, v70 offset:496
	ds_load_u8 v97, v70 offset:464
	ds_load_u8 v98, v70 offset:432
	ds_load_u8 v99, v70 offset:400
	ds_load_u8 v144, v70 offset:288
	ds_load_u8 v145, v70 offset:256
	ds_load_u8 v146, v70 offset:352
	ds_load_u8 v147, v70 offset:320
	ds_load_u8 v148, v70 offset:368
	ds_load_u8 v149, v70 offset:336
	ds_load_u8 v150, v70 offset:304
	ds_load_u8 v151, v70 offset:272
	ds_load_u8 v152, v70 offset:160
	ds_load_u8 v153, v70 offset:128
	ds_load_u8 v154, v70 offset:224
	ds_load_u8 v155, v70 offset:192
	ds_load_u8 v156, v70 offset:240
	ds_load_u8 v157, v70 offset:208
	ds_load_u8 v158, v70 offset:176
	ds_load_u8 v159, v70 offset:144
	ds_load_u8 v69, v70 offset:976
	ds_load_u8 v77, v70 offset:944
	ds_load_u8 v78, v70 offset:912
	ds_load_u8 v79, v70 offset:800
	ds_load_u8 v160, v70 offset:768
	ds_load_u8 v161, v70 offset:864
	ds_load_u8 v162, v70 offset:832
	ds_load_u8 v163, v70 offset:880
	ds_load_u8 v164, v70 offset:848
	ds_load_u8 v165, v70 offset:816
	ds_load_u8 v166, v70 offset:784
	ds_load_u8 v167, v70 offset:672
	ds_load_u8 v168, v70 offset:640
	ds_load_u8 v169, v70 offset:736
	ds_load_u8 v170, v70 offset:704
	ds_load_u8 v171, v70 offset:752
	ds_load_u8 v174, v70 offset:720
	ds_load_u8 v175, v70 offset:688
	ds_load_u8 v176, v70 offset:656
	ds_load_u8 v177, v70 offset:544
	ds_load_u8 v178, v70 offset:512
	ds_load_u8 v179, v70 offset:608
	ds_load_u8 v180, v70 offset:576
	ds_load_u8 v181, v70 offset:624
	ds_load_u8 v182, v70 offset:592
	ds_load_u8 v183, v70 offset:560
	ds_load_u8 v184, v70 offset:528
	ds_load_u8 v185, v70 offset:1440
	ds_load_u8 v186, v70 offset:1504
	ds_load_u8 v187, v70 offset:1472
	ds_load_u8 v188, v70 offset:1536
	ds_load_u8 v189, v70 offset:1520
	ds_load_u8 v190, v70 offset:1488
	ds_load_u8 v191, v70 offset:1456
	ds_load_u8 v192, v70 offset:1424
	ds_load_u8 v193, v70 offset:1408
	ds_load_u8 v194, v70 offset:1312
	ds_load_u8 v195, v70 offset:1376
	ds_load_u8 v196, v70 offset:1344
	ds_load_u8 v197, v70 offset:1392
	ds_load_u8 v198, v70 offset:1360
	ds_load_u8 v199, v70 offset:1328
	ds_load_u8 v200, v70 offset:1296
	ds_load_u8 v201, v70 offset:1280
	ds_load_u8 v202, v70 offset:1184
	ds_load_u8 v203, v70 offset:1248
	ds_load_u8 v204, v70 offset:1216
	ds_load_u8 v205, v70 offset:1264
	ds_load_u8 v206, v70 offset:1232
	ds_load_u8 v207, v70 offset:1200
	ds_load_u8 v208, v70 offset:1168
	ds_load_u8 v209, v70 offset:1152
	ds_load_u8 v210, v70 offset:1056
	ds_load_u8 v211, v70 offset:1120
	ds_load_u8 v212, v70 offset:1088
	ds_load_u8 v213, v70 offset:1136
	ds_load_u8 v214, v70 offset:1104
	ds_load_u8 v215, v70 offset:1072
	ds_load_u8 v216, v70 offset:1040
	ds_load_u8 v217, v70 offset:1952
	ds_load_u8 v218, v70 offset:2016
	ds_load_u8 v219, v70 offset:1984
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	ds_load_u8 v220, v70 offset:2000
	ds_load_u8 v221, v70 offset:1968
	ds_load_u8 v222, v70 offset:1936
	ds_load_u8 v223, v70 offset:1920
	ds_load_u8 v224, v70 offset:1824
	ds_load_u8 v225, v70 offset:1888
	ds_load_u8 v226, v70 offset:1856
	ds_load_u8 v227, v70 offset:1904
	ds_load_u8 v228, v70 offset:1872
	ds_load_u8 v229, v70 offset:1840
	ds_load_u8 v230, v70 offset:1808
	ds_load_u8 v231, v70 offset:1792
	ds_load_u8 v232, v70 offset:1696
	ds_load_u8 v233, v70 offset:1760
	ds_load_u8 v234, v70 offset:1728
	ds_load_u8 v235, v70 offset:1776
	ds_load_u8 v236, v70 offset:1744
	ds_load_u8 v237, v70 offset:1712
	ds_load_u8 v238, v70 offset:1680
	ds_load_u8 v239, v70 offset:1664
	ds_load_u8 v240, v70 offset:1568
	ds_load_u8 v241, v70 offset:1632
	ds_load_u8 v242, v70 offset:1600
	ds_load_u8 v243, v70 offset:1648
	ds_load_u8 v244, v70 offset:1616
	ds_load_u8 v245, v70 offset:1584
	ds_load_u8 v70, v70 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v91, v90, 0xc0c0004
	v_perm_b32 v68, v73, v68, 0xc0c0004
	v_perm_b32 v73, v74, v76, 0xc0c0004
	v_perm_b32 v90, v145, v144, 0xc0c0004
	v_perm_b32 v74, v84, v83, 0xc0c0004
	v_perm_b32 v91, v147, v146, 0xc0c0004
	v_perm_b32 v76, v86, v85, 0xc0c0004
	v_perm_b32 v79, v160, v79, 0xc0c0004
	v_perm_b32 v83, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v162, v201, v194, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v144, v153, v152, 0xc0c0004
	v_perm_b32 v152, v168, v167, 0xc0c0004
	v_perm_b32 v145, v155, v154, 0xc0c0004
	v_perm_b32 v153, v170, v169, 0xc0c0004
	v_perm_b32 v154, v178, v177, 0xc0c0004
	v_perm_b32 v155, v180, v179, 0xc0c0004
	v_perm_b32 v167, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v168, v209, v202, 0xc0c0004
	v_perm_b32 v169, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v170, v87, v210, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v97, v151, v150, 0xc0c0004
	v_perm_b32 v99, v149, v148, 0xc0c0004
	v_perm_b32 v194, v159, v158, 0xc0c0004
	v_perm_b32 v156, v157, v156, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v75, v75, v82, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v69, v69, v71, 0xc0c0004
	v_perm_b32 v71, v166, v165, 0xc0c0004
	v_perm_b32 v78, v164, v163, 0xc0c0004
	v_perm_b32 v82, v174, v171, 0xc0c0004
	v_perm_b32 v164, v184, v183, 0xc0c0004
	v_perm_b32 v166, v192, v191, 0xc0c0004
	v_perm_b32 v171, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v184, v222, v221, 0xc0c0004
	v_perm_b32 v72, v220, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v245, 0xc0c0004
	v_perm_b32 v195, v244, v243, 0xc0c0004
	v_lshl_or_b32 v87, v89, 16, v88
	v_lshl_or_b32 v86, v91, 16, v90
	v_lshl_or_b32 v85, v145, 16, v144
	v_lshl_or_b32 v84, v68, 16, v73
	v_perm_b32 v160, v193, v185, 0xc0c0004
	v_perm_b32 v161, v187, v186, 0xc0c0004
	v_perm_b32 v81, v176, v175, 0xc0c0004
	v_perm_b32 v177, v212, v211, 0xc0c0004
	v_perm_b32 v165, v182, v181, 0xc0c0004
	v_lshl_or_b32 v147, v76, 16, v74
	v_lshl_or_b32 v146, v83, 16, v79
	v_lshl_or_b32 v145, v153, 16, v152
	v_lshl_or_b32 v144, v155, 16, v154
	v_lshl_or_b32 v150, v167, 16, v162
	v_lshl_or_b32 v149, v169, 16, v168
	v_lshl_or_b32 v159, v96, 16, v98
	v_lshl_or_b32 v158, v99, 16, v97
	v_lshl_or_b32 v157, v156, 16, v194
	v_lshl_or_b32 v156, v80, 16, v75
	v_lshl_or_b32 v163, v69, 16, v77
	v_lshl_or_b32 v162, v78, 16, v71
	v_lshl_or_b32 v167, v171, 16, v166
	v_lshl_or_b32 v171, v72, 16, v184
	v_lshl_or_b32 v168, v195, 16, v70
	v_wmma_i32_16x16x16_iu8 v[68:75], v[92:95], v[84:87], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v151, v161, 16, v160
	v_lshl_or_b32 v161, v82, 16, v81
	v_wmma_i32_16x16x16_iu8 v[76:83], v[100:103], v[84:87], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v178, v223, v217, 0xc0c0004
	v_perm_b32 v179, v219, v218, 0xc0c0004
	v_perm_b32 v180, v231, v224, 0xc0c0004
	v_perm_b32 v185, v226, v225, 0xc0c0004
	v_perm_b32 v186, v239, v232, 0xc0c0004
	v_perm_b32 v187, v234, v233, 0xc0c0004
	v_perm_b32 v188, v188, v240, 0xc0c0004
	v_perm_b32 v193, v242, v241, 0xc0c0004
	v_perm_b32 v174, v200, v199, 0xc0c0004
	v_perm_b32 v175, v198, v197, 0xc0c0004
	v_perm_b32 v176, v208, v207, 0xc0c0004
	v_perm_b32 v181, v206, v205, 0xc0c0004
	v_perm_b32 v182, v216, v215, 0xc0c0004
	v_perm_b32 v183, v214, v213, 0xc0c0004
	v_lshl_or_b32 v148, v177, 16, v170
	v_lshl_or_b32 v160, v165, 16, v164
	v_wmma_i32_16x16x16_iu8 v[84:91], v[92:95], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[100:103], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[104:107], v[144:147], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[108:111], v[144:147], v[76:83] neg_lo:[1,1,0]
	v_perm_b32 v189, v230, v229, 0xc0c0004
	v_perm_b32 v190, v228, v227, 0xc0c0004
	v_perm_b32 v191, v238, v237, 0xc0c0004
	v_perm_b32 v192, v236, v235, 0xc0c0004
	v_lshl_or_b32 v155, v179, 16, v178
	v_lshl_or_b32 v154, v185, 16, v180
	v_lshl_or_b32 v153, v187, 16, v186
	v_lshl_or_b32 v152, v193, 16, v188
	v_lshl_or_b32 v166, v175, 16, v174
	v_lshl_or_b32 v165, v181, 16, v176
	v_lshl_or_b32 v164, v183, 16, v182
	v_wmma_i32_16x16x16_iu8 v[84:91], v[104:107], v[160:163], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[108:111], v[160:163], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[112:115], v[148:151], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[116:119], v[148:151], v[76:83] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v190, 16, v189
	v_lshl_or_b32 v169, v192, 16, v191
	v_wmma_i32_16x16x16_iu8 v[84:91], v[112:115], v[164:167], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[116:119], v[164:167], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[120:123], v[152:155], v[68:75] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s8, s36, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[76:83], v[124:127], v[152:155], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[120:123], v[168:171], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[124:127], v[168:171], v[92:99] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s8, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s8, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s36, 11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v15, v15, v68
	v_add_f32_e32 v45, v45, v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s36, 14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v44, v44, v70 :: v_dual_add_f32 v43, v43, v71
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s8, s1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v42, v72 :: v_dual_add_f32 v41, v41, v73
	s_mov_b32 s4, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s33, s7, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v40, v40, v74 :: v_dual_add_f32 v39, v39, v75
	v_dual_add_f32 v37, v37, v77 :: v_dual_add_nc_u32 v246, s8, v46
	v_dual_add_f32 v38, v38, v76 :: v_dual_add_nc_u32 v247, s33, v57
	v_add_f32_e32 v32, v32, v82
	v_dual_add_f32 v35, v35, v79 :: v_dual_add_nc_u32 v248, s33, v58
	v_dual_add_f32 v28, v28, v86 :: v_dual_add_nc_u32 v249, s33, v60
	v_dual_add_f32 v31, v31, v83 :: v_dual_add_nc_u32 v250, s33, v61
	v_dual_add_f32 v30, v30, v84 :: v_dual_add_nc_u32 v251, s33, v62
	v_dual_add_f32 v33, v33, v81 :: v_dual_add_nc_u32 v252, s33, v63
	v_dual_add_f32 v24, v24, v90 :: v_dual_add_nc_u32 v253, s33, v64
	v_add_f32_e32 v36, v36, v78
	v_dual_add_f32 v34, v34, v80 :: v_dual_add_f32 v29, v29, v85
	v_dual_add_f32 v26, v26, v88 :: v_dual_add_f32 v27, v27, v87
	v_dual_add_f32 v22, v22, v92 :: v_dual_add_f32 v25, v25, v89
	v_dual_add_f32 v20, v20, v94 :: v_dual_add_f32 v23, v23, v91
	v_dual_add_f32 v18, v18, v96 :: v_dual_add_f32 v21, v21, v93
	v_dual_add_f32 v16, v16, v98 :: v_dual_add_f32 v19, v19, v95
	v_dual_add_f32 v17, v17, v97 :: v_dual_add_f32 v14, v14, v99
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s8, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v246, v[172:173] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v68, v132, v128, 0x4000501
	v_perm_b32 v70, v132, v128, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v69, v140, v136, 0x4000501
	v_perm_b32 v71, v140, v136, 0x6020703
	v_perm_b32 v72, v133, v129, 0x4000501
	v_perm_b32 v73, v141, v137, 0x4000501
	v_perm_b32 v74, v133, v129, 0x6020703
	v_perm_b32 v75, v141, v137, 0x6020703
	v_perm_b32 v76, v134, v130, 0x4000501
	v_perm_b32 v77, v142, v138, 0x4000501
	v_perm_b32 v78, v134, v130, 0x6020703
	v_perm_b32 v79, v142, v138, 0x6020703
	v_perm_b32 v80, v135, v131, 0x4000501
	v_perm_b32 v81, v143, v139, 0x4000501
	v_perm_b32 v82, v135, v131, 0x6020703
	v_perm_b32 v83, v143, v139, 0x6020703
	v_perm_b32 v84, v69, v68, 0x7060302
	v_perm_b32 v68, v69, v68, 0x5040100
	v_perm_b32 v69, v71, v70, 0x7060302
	v_perm_b32 v70, v71, v70, 0x5040100
	v_perm_b32 v71, v73, v72, 0x7060302
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
	ds_store_2addr_b32 v247, v84, v68 offset1:16
	ds_store_2addr_b32 v248, v69, v70 offset1:16
	ds_store_2addr_b32 v249, v71, v72 offset1:16
	ds_store_2addr_b32 v250, v73, v74 offset1:16
	ds_store_2addr_b32 v251, v75, v76 offset1:16
	ds_store_2addr_b32 v247, v77, v78 offset0:160 offset1:176
	ds_store_2addr_b32 v252, v79, v80 offset1:16
	ds_store_2addr_b32 v253, v81, v82 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v50, v51 :: v_dual_mov_b32 v59, v52
	v_dual_mov_b32 v3, v55 :: v_dual_mov_b32 v4, v54
	v_mov_b32_e32 v5, v53
	s_branch .LBB0_8
.LBB0_7:
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
	s_add_i32 s19, 0, 0x8000
	s_add_i32 s1, 0, 0x8800
	s_add_i32 s33, 0, 0x4000
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
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v56, v1
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
	v_add_nc_u32_e32 v9, s19, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v52, v9 offset:416
	ds_load_u8 v53, v9 offset:384
	ds_load_u8 v54, v9 offset:480
	ds_load_u8 v55, v9 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s4, v8
	v_add_nc_u32_e32 v51, s4, v6
	ds_load_b128 v[1:4], v116
	ds_load_b128 v[46:49], v51 offset:8192
	ds_load_b128 v[84:87], v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v51, v9 offset:288
	ds_load_u8 v57, v9 offset:256
	ds_load_u8 v58, v9 offset:352
	ds_load_u8 v60, v9 offset:320
	ds_load_u8 v61, v9 offset:160
	ds_load_u8 v62, v9 offset:128
	ds_load_u8 v63, v9 offset:224
	ds_load_u8 v64, v9 offset:192
	ds_load_u8 v112, v9 offset:464
	ds_load_u8 v113, v9 offset:432
	ds_load_u8 v114, v9 offset:400
	ds_load_u8 v115, v9 offset:368
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v56, s4, v5
	ds_load_b128 v[88:91], v56 offset:8192
	ds_load_b128 v[92:95], v56
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v56, s19, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v127, v9 offset:16
	ds_load_u8 v128, v56
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v51, v57, v51, 0xc0c0004
	v_perm_b32 v53, v55, v54, 0xc0c0004
	ds_load_u8 v54, v9 offset:96
	ds_load_u8 v55, v9 offset:64
	ds_load_u8 v65, v9
	ds_load_u8 v66, v9 offset:32
	ds_load_u8 v117, v9 offset:336
	ds_load_u8 v118, v9 offset:304
	ds_load_u8 v119, v9 offset:272
	ds_load_u8 v120, v9 offset:240
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v57, v60, v58, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v58, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v64, v63, 0xc0c0004
	v_lshl_or_b32 v79, v53, 16, v52
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v68, s4, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v78, v57, 16, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v60, 16, v58
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v65, v66, 0xc0c0004
	v_lshl_or_b32 v76, v51, 16, v52
	v_mov_b32_e32 v58, s15
	ds_load_u8 v60, v9 offset:928
	ds_load_u8 v61, v9 offset:896
	ds_load_u8 v62, v9 offset:992
	ds_load_u8 v63, v9 offset:960
	ds_load_u8 v64, v9 offset:800
	ds_load_u8 v65, v9 offset:768
	ds_load_u8 v66, v9 offset:864
	ds_load_u8 v67, v9 offset:832
	ds_load_u8 v69, v9 offset:672
	ds_load_u8 v70, v9 offset:640
	ds_load_u8 v71, v9 offset:736
	ds_load_u8 v72, v9 offset:704
	ds_load_u8 v129, v9 offset:976
	ds_load_u8 v130, v9 offset:944
	ds_load_u8 v131, v9 offset:912
	ds_load_u8 v132, v9 offset:880
	v_mov_b32_e32 v55, s12
	ds_load_u8 v121, v9 offset:208
	ds_load_u8 v122, v9 offset:176
	ds_load_u8 v123, v9 offset:144
	ds_load_u8 v124, v9 offset:112
	ds_load_u8 v125, v9 offset:80
	ds_load_u8 v126, v9 offset:48
	ds_load_u8 v137, v9 offset:720
	ds_load_u8 v138, v9 offset:688
	ds_load_u8 v139, v9 offset:656
	ds_load_u8 v140, v9 offset:624
	v_dual_mov_b32 v57, s14 :: v_dual_mov_b32 v56, s13
	v_dual_mov_b32 v54, s11 :: v_dual_mov_b32 v53, s10
	v_mov_b32_e32 v52, s9
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v75, v65, v64, 0xc0c0004
	v_mov_b32_e32 v51, s8
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v80, v67, v66, 0xc0c0004
	ds_load_u8 v154, v9 offset:1264
	ds_load_u8 v155, v9 offset:1232
	ds_load_u8 v156, v9 offset:1200
	ds_load_u8 v157, v9 offset:1168
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v158, v9 offset:1136
	ds_load_u8 v159, v9 offset:1104
	ds_load_u8 v160, v9 offset:1072
	ds_load_u8 v161, v9 offset:1040
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_perm_b32 v73, v61, v60, 0xc0c0004
	ds_load_u8 v71, v9 offset:1440
	ds_load_u8 v72, v9 offset:1408
	ds_load_u8 v96, v9 offset:1504
	ds_load_u8 v97, v9 offset:1472
	ds_load_u8 v141, v9 offset:592
	ds_load_u8 v142, v9 offset:560
	ds_load_u8 v143, v9 offset:528
	ds_load_u8 v144, v9 offset:496
	v_perm_b32 v74, v63, v62, 0xc0c0004
	ds_load_u8 v60, v9 offset:544
	ds_load_u8 v61, v9 offset:512
	ds_load_u8 v62, v9 offset:608
	ds_load_u8 v63, v9 offset:576
	ds_load_u8 v133, v9 offset:848
	ds_load_u8 v134, v9 offset:816
	ds_load_u8 v135, v9 offset:784
	ds_load_u8 v136, v9 offset:752
	v_lshl_or_b32 v81, v70, 16, v69
	v_lshl_or_b32 v82, v80, 16, v75
	ds_load_u8 v75, v9 offset:1184
	ds_load_u8 v104, v9 offset:1152
	ds_load_u8 v105, v9 offset:1248
	ds_load_u8 v108, v9 offset:1216
	ds_load_u8 v109, v9 offset:1056
	ds_load_u8 v110, v9 offset:1024
	ds_load_u8 v111, v9 offset:1120
	ds_load_u8 v149, v9 offset:1088
	ds_load_u8 v150, v9 offset:1392
	ds_load_u8 v151, v9 offset:1360
	ds_load_u8 v152, v9 offset:1328
	ds_load_u8 v153, v9 offset:1296
	v_lshl_or_b32 v83, v74, 16, v73
	ds_load_u8 v69, v9 offset:1312
	ds_load_u8 v70, v9 offset:1280
	ds_load_u8 v73, v9 offset:1376
	ds_load_u8 v74, v9 offset:1344
	ds_load_u8 v145, v9 offset:1520
	ds_load_u8 v146, v9 offset:1488
	ds_load_u8 v147, v9 offset:1456
	ds_load_u8 v148, v9 offset:1424
	ds_load_u8 v170, v9 offset:1904
	ds_load_u8 v171, v9 offset:1872
	ds_load_u8 v172, v9 offset:1840
	ds_load_u8 v173, v9 offset:1808
	ds_load_u8 v174, v9 offset:1776
	ds_load_u8 v175, v9 offset:1744
	ds_load_u8 v176, v9 offset:1712
	ds_load_u8 v177, v9 offset:1680
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v72, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v98, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[92:95], v[76:79], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_lshl_or_b32 v107, v72, 16, v71
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v70, v74, v73, 0xc0c0004
	v_perm_b32 v71, v110, v109, 0xc0c0004
	v_perm_b32 v72, v149, v111, 0xc0c0004
	v_lshl_or_b32 v80, v99, 16, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[96:99], v68 offset:8192
	ds_load_b128 v[100:103], v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v106, v70, 16, v69
	v_perm_b32 v69, v104, v75, 0xc0c0004
	v_perm_b32 v70, v108, v105, 0xc0c0004
	ds_load_u8 v73, v9 offset:1952
	ds_load_u8 v74, v9 offset:1920
	ds_load_u8 v75, v9 offset:2016
	ds_load_u8 v108, v9 offset:1984
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v68, s19, v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v104, v72, 16, v71
	v_wmma_i32_16x16x16_iu8 v[60:67], v[84:87], v[80:83], v[60:67] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v70, 16, v69
	ds_load_u8 v69, v9 offset:1824
	ds_load_u8 v70, v9 offset:1792
	ds_load_u8 v71, v9 offset:1888
	ds_load_u8 v72, v9 offset:1856
	ds_load_u8 v109, v9 offset:1696
	ds_load_u8 v110, v9 offset:1664
	ds_load_u8 v111, v9 offset:1760
	ds_load_u8 v149, v9 offset:1728
	ds_load_u8 v162, v9 offset:1568
	ds_load_u8 v163, v9 offset:1536
	ds_load_u8 v164, v9 offset:1632
	ds_load_u8 v165, v9 offset:1600
	ds_load_u8 v166, v68
	ds_load_u8 v167, v9 offset:2000
	ds_load_u8 v168, v9 offset:1968
	ds_load_u8 v169, v9 offset:1936
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v71, v110, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[100:103], v[104:107], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v149, v111, 0xc0c0004
	v_perm_b32 v68, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v163, v162, 0xc0c0004
	v_perm_b32 v73, v108, v75, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v165, v164, 0xc0c0004
	v_lshl_or_b32 v110, v70, 16, v69
	v_lshl_or_b32 v109, v72, 16, v71
	ds_load_u8 v149, v9 offset:1648
	ds_load_u8 v178, v9 offset:1616
	ds_load_u8 v179, v9 offset:1584
	ds_load_u8 v9, v9 offset:1552
	v_lshl_or_b32 v111, v73, 16, v68
	v_lshl_or_b32 v108, v75, 16, v74
	v_wmma_i32_16x16x16_iu8 v[68:75], v[88:91], v[76:79], v[51:58] neg_lo:[1,1,0]
	v_perm_b32 v76, v114, v113, 0xc0c0004
	v_perm_b32 v77, v112, v144, 0xc0c0004
	v_perm_b32 v78, v119, v118, 0xc0c0004
	v_perm_b32 v79, v117, v115, 0xc0c0004
	v_perm_b32 v112, v123, v122, 0xc0c0004
	v_perm_b32 v113, v121, v120, 0xc0c0004
	v_perm_b32 v117, v125, v124, 0xc0c0004
	v_perm_b32 v118, v127, v126, 0xc0c0004
	v_lshl_or_b32 v115, v77, 16, v76
	v_lshl_or_b32 v114, v79, 16, v78
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
	v_wmma_i32_16x16x16_iu8 v[68:75], v[46:49], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[92:95], v[112:115], v[51:58] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[92:95], v[76:83] neg_lo:[1,1,0]
	v_lshl_or_b32 v87, v118, 16, v117
	v_lshl_or_b32 v86, v120, 16, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v116 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v85, v122, 16, v121
	v_lshl_or_b32 v84, v124, 16, v123
	v_wmma_i32_16x16x16_iu8 v[51:58], v[88:91], v[112:115], v[51:58] neg_lo:[1,1,0]
	v_perm_b32 v88, v177, v176, 0xc0c0004
	v_perm_b32 v89, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[76:83], v[100:103], v[84:87], v[76:83] neg_lo:[1,1,0]
	v_perm_b32 v100, v169, v168, 0xc0c0004
	v_perm_b32 v101, v167, v128, 0xc0c0004
	v_perm_b32 v102, v173, v172, 0xc0c0004
	v_perm_b32 v103, v171, v170, 0xc0c0004
	v_perm_b32 v90, v178, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[1:4], v[108:111], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[96:99], v[104:107], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[46:49], v[92:95], v[51:58] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v101, 16, v100
	v_lshl_or_b32 v48, v103, 16, v102
	v_lshl_or_b32 v47, v89, 16, v88
	v_lshl_or_b32 v46, v90, 16, v9
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[116:119], v[108:111], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v61
	v_cvt_f32_i32_e32 v61, v62
	v_wmma_i32_16x16x16_iu8 v[51:58], v[96:99], v[84:87], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[1:4], v[46:49], v[76:83] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v63
	v_cvt_f32_i32_e32 v2, v64
	v_cvt_f32_i32_e32 v4, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v68
	v_cvt_f32_i32_e32 v9, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v61
	v_add_f32_e32 v38, v38, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v71
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v3
	v_add_f32_e32 v39, v39, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v70
	v_cvt_f32_i32_e32 v9, v72
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v2
	v_add_f32_e32 v35, v35, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v74
	v_cvt_f32_i32_e32 v4, v76
	v_wmma_i32_16x16x16_iu8 v[51:58], v[116:119], v[46:49], v[51:58] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v77
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v30, v30, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v79
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v1
	v_add_f32_e32 v31, v31, v3
	v_add_f32_e32 v29, v29, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v78
	v_cvt_f32_i32_e32 v3, v80
	v_cvt_f32_i32_e32 v9, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v4 :: v_dual_add_f32 v26, v26, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v83
	v_cvt_f32_i32_e32 v4, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v22, v22, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v23, v23, v1
	v_add_f32_e32 v21, v21, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v55
	v_cvt_f32_i32_e32 v3, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v1 :: v_dual_add_f32 v17, v17, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v16, v16, v3 :: v_dual_add_f32 v15, v15, v9
	v_add_f32_e32 v14, v14, v4
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
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
	v_add_nc_u32_e32 v8, s33, v8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v9, s1, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v46, s33, v7
	v_add_nc_u32_e32 v52, s33, v6
	v_add_nc_u32_e32 v53, s33, v5
	ds_load_b128 v[1:4], v8 offset:8192
	ds_load_b128 v[5:8], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v54, v9 offset:288
	ds_load_u8 v55, v9 offset:256
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[62:65], v46 offset:8192
	ds_load_b128 v[83:86], v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v46, v9 offset:352
	ds_load_u8 v56, v9 offset:320
	ds_load_u8 v57, v9 offset:160
	ds_load_u8 v58, v9 offset:128
	ds_load_u8 v60, v9 offset:224
	ds_load_u8 v61, v9 offset:192
	ds_load_u8 v66, v9 offset:464
	ds_load_u8 v107, v9 offset:432
	ds_load_u8 v108, v9 offset:400
	ds_load_u8 v109, v9 offset:368
	ds_load_u8 v47, v9 offset:416
	ds_load_u8 v48, v9 offset:384
	ds_load_u8 v49, v9 offset:480
	ds_load_u8 v51, v9 offset:448
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v9
	ds_load_u8 v67, v9 offset:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v56, v46, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s1, v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v61, v60, 0xc0c0004
	v_lshl_or_b32 v77, v46, 16, v54
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v51, v49, 0xc0c0004
	v_lshl_or_b32 v76, v57, 16, v56
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v78, v48, 16, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v55, v67, 0xc0c0004
	v_dual_mov_b32 v74, s11 :: v_dual_mov_b32 v69, s6
	ds_load_u8 v54, v9 offset:928
	ds_load_u8 v55, v9 offset:896
	ds_load_u8 v56, v9 offset:992
	ds_load_u8 v57, v9 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[95:98], v52 offset:8192
	ds_load_b128 v[99:102], v52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v72, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[87:90], v53 offset:8192
	ds_load_b128 v[91:94], v53
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v70, s7 :: v_dual_add_nc_u32 v53, s1, v59
	ds_load_u8 v59, v9 offset:800
	ds_load_u8 v60, v9 offset:768
	ds_load_u8 v61, v9 offset:864
	ds_load_u8 v79, v9 offset:832
	ds_load_u8 v80, v9 offset:672
	ds_load_u8 v81, v9 offset:640
	ds_load_u8 v82, v9 offset:736
	ds_load_u8 v103, v9 offset:704
	ds_load_u8 v123, v9 offset:976
	ds_load_u8 v124, v9 offset:944
	ds_load_u8 v125, v9 offset:912
	ds_load_u8 v126, v9 offset:880
	ds_load_u8 v49, v9 offset:96
	ds_load_u8 v51, v9 offset:64
	ds_load_u8 v111, v9 offset:336
	ds_load_u8 v112, v9 offset:304
	ds_load_u8 v113, v9 offset:272
	ds_load_u8 v114, v9 offset:240
	ds_load_u8 v115, v9 offset:208
	ds_load_u8 v116, v9 offset:176
	ds_load_u8 v117, v9 offset:144
	ds_load_u8 v118, v9 offset:112
	ds_load_u8 v119, v9 offset:80
	ds_load_u8 v120, v9 offset:48
	ds_load_u8 v135, v9 offset:592
	ds_load_u8 v136, v9 offset:560
	ds_load_u8 v137, v9 offset:528
	ds_load_u8 v138, v9 offset:496
	ds_load_u8 v121, v9 offset:16
	ds_load_u8 v122, v53
	ds_load_u8 v131, v9 offset:720
	ds_load_u8 v132, v9 offset:688
	ds_load_u8 v133, v9 offset:656
	ds_load_u8 v134, v9 offset:624
	ds_load_u8 v149, v9 offset:1264
	ds_load_u8 v150, v9 offset:1232
	ds_load_u8 v151, v9 offset:1200
	ds_load_u8 v152, v9 offset:1168
	ds_load_u8 v153, v9 offset:1136
	ds_load_u8 v154, v9 offset:1104
	ds_load_u8 v155, v9 offset:1072
	ds_load_u8 v156, v9 offset:1040
	v_mov_b32_e32 v73, s10
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v9 offset:544
	ds_load_u8 v104, v9 offset:512
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v60, v79, v61, 0xc0c0004
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v9 offset:608
	ds_load_u8 v105, v9 offset:576
	ds_load_u8 v127, v9 offset:848
	ds_load_u8 v128, v9 offset:816
	ds_load_u8 v129, v9 offset:784
	ds_load_u8 v130, v9 offset:752
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v79, v103, v82, 0xc0c0004
	v_perm_b32 v61, v81, v80, 0xc0c0004
	v_lshl_or_b32 v81, v60, 16, v59
	v_lshl_or_b32 v82, v56, 16, v54
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v46, v51, v49, 0xc0c0004
	v_mov_b32_e32 v71, s8
	v_lshl_or_b32 v80, v79, 16, v61
	v_dual_mov_b32 v68, s5 :: v_dual_mov_b32 v67, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v75, v46, 16, v47
	ds_load_u8 v165, v9 offset:1904
	ds_load_u8 v166, v9 offset:1872
	ds_load_u8 v167, v9 offset:1840
	ds_load_u8 v168, v9 offset:1808
	ds_load_u8 v171, v9 offset:1776
	ds_load_u8 v172, v9 offset:1744
	ds_load_u8 v173, v9 offset:1712
	ds_load_u8 v174, v9 offset:1680
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v66, v66, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[46:53], v[91:94], v[75:78], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v104, v55, 0xc0c0004
	ds_load_u8 v103, v9 offset:1440
	ds_load_u8 v104, v9 offset:1408
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v57, v105, v57, 0xc0c0004
	ds_load_u8 v105, v9 offset:1504
	ds_load_u8 v106, v9 offset:1472
	v_lshl_or_b32 v79, v57, 16, v55
	ds_load_u8 v54, v9 offset:1312
	ds_load_u8 v55, v9 offset:1280
	ds_load_u8 v56, v9 offset:1376
	ds_load_u8 v57, v9 offset:1344
	ds_load_u8 v59, v9 offset:1184
	ds_load_u8 v60, v9 offset:1152
	ds_load_u8 v61, v9 offset:1248
	ds_load_u8 v110, v9 offset:1216
	ds_load_u8 v139, v9 offset:1520
	ds_load_u8 v140, v9 offset:1488
	ds_load_u8 v141, v9 offset:1456
	ds_load_u8 v142, v9 offset:1424
	v_wmma_i32_16x16x16_iu8 v[46:53], v[99:102], v[79:82], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v57, v56, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v9 offset:1056
	ds_load_u8 v143, v9 offset:1024
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v9 offset:1120
	ds_load_u8 v144, v9 offset:1088
	ds_load_u8 v145, v9 offset:1392
	ds_load_u8 v146, v9 offset:1360
	ds_load_u8 v147, v9 offset:1328
	ds_load_u8 v148, v9 offset:1296
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v57, v110, v61, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v144, v106, 0xc0c0004
	v_lshl_or_b32 v106, v105, 16, v103
	v_perm_b32 v59, v143, v104, 0xc0c0004
	ds_load_u8 v60, v9 offset:1952
	ds_load_u8 v61, v9 offset:1920
	ds_load_u8 v110, v9 offset:2016
	ds_load_u8 v143, v9 offset:1984
	v_lshl_or_b32 v105, v55, 16, v54
	v_lshl_or_b32 v104, v57, 16, v56
	v_lshl_or_b32 v103, v144, 16, v59
	ds_load_u8 v54, v9 offset:1824
	ds_load_u8 v55, v9 offset:1792
	ds_load_u8 v56, v9 offset:1888
	ds_load_u8 v57, v9 offset:1856
	ds_load_u8 v59, v9 offset:1696
	ds_load_u8 v144, v9 offset:1664
	ds_load_u8 v157, v9 offset:1760
	ds_load_u8 v158, v9 offset:1728
	ds_load_u8 v159, v58
	ds_load_u8 v160, v9 offset:2000
	ds_load_u8 v161, v9 offset:1968
	ds_load_u8 v162, v9 offset:1936
	v_wmma_i32_16x16x16_iu8 v[46:53], v[83:86], v[103:106], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v169, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v170, v57, v56, 0xc0c0004
	v_perm_b32 v58, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v144, v144, v59, 0xc0c0004
	v_perm_b32 v60, v143, v110, 0xc0c0004
	ds_load_u8 v61, v9 offset:1568
	ds_load_u8 v143, v9 offset:1536
	ds_load_u8 v163, v9 offset:1632
	ds_load_u8 v164, v9 offset:1600
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v9 offset:1648
	ds_load_u8 v175, v9 offset:1616
	ds_load_u8 v176, v9 offset:1584
	ds_load_u8 v9, v9 offset:1552
	v_lshl_or_b32 v110, v60, 16, v58
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v143, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[54:61], v[87:90], v[75:78], v[67:74] neg_lo:[1,1,0]
	v_perm_b32 v75, v108, v107, 0xc0c0004
	v_perm_b32 v76, v113, v112, 0xc0c0004
	v_perm_b32 v77, v111, v109, 0xc0c0004
	v_perm_b32 v78, v117, v116, 0xc0c0004
	v_perm_b32 v107, v115, v114, 0xc0c0004
	v_perm_b32 v108, v119, v118, 0xc0c0004
	v_perm_b32 v109, v121, v120, 0xc0c0004
	v_lshl_or_b32 v114, v66, 16, v75
	v_lshl_or_b32 v113, v77, 16, v76
	v_lshl_or_b32 v112, v107, 16, v78
	v_perm_b32 v66, v125, v124, 0xc0c0004
	v_lshl_or_b32 v111, v108, 16, v109
	v_perm_b32 v107, v123, v159, 0xc0c0004
	v_perm_b32 v108, v129, v128, 0xc0c0004
	v_perm_b32 v109, v127, v126, 0xc0c0004
	v_perm_b32 v115, v133, v132, 0xc0c0004
	v_perm_b32 v116, v131, v130, 0xc0c0004
	v_perm_b32 v117, v137, v136, 0xc0c0004
	v_perm_b32 v118, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[54:61], v[95:98], v[79:82], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[111:114], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v107, 16, v66
	v_lshl_or_b32 v93, v109, 16, v108
	v_lshl_or_b32 v92, v116, 16, v115
	v_lshl_or_b32 v91, v118, 16, v117
	v_perm_b32 v66, v142, v141, 0xc0c0004
	v_perm_b32 v107, v140, v139, 0xc0c0004
	v_perm_b32 v108, v148, v147, 0xc0c0004
	v_perm_b32 v109, v146, v145, 0xc0c0004
	v_perm_b32 v115, v152, v151, 0xc0c0004
	v_perm_b32 v116, v150, v149, 0xc0c0004
	v_perm_b32 v117, v156, v155, 0xc0c0004
	v_perm_b32 v118, v154, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[91:94], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v107, 16, v66
	v_lshl_or_b32 v101, v109, 16, v108
	v_lshl_or_b32 v100, v116, 16, v115
	v_lshl_or_b32 v99, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[67:74], v[87:90], v[111:114], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_perm_b32 v66, v162, v161, 0xc0c0004
	v_perm_b32 v87, v174, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[83:86], v[99:102], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v83, v160, v122, 0xc0c0004
	v_perm_b32 v84, v168, v167, 0xc0c0004
	v_perm_b32 v85, v166, v165, 0xc0c0004
	v_perm_b32 v88, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v176, 0xc0c0004
	v_perm_b32 v89, v175, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[95:98], v[91:94], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v170, 16, v169
	v_lshl_or_b32 v108, v157, 16, v144
	v_lshl_or_b32 v107, v163, 16, v143
	v_wmma_i32_16x16x16_iu8 v[54:61], v[62:65], v[103:106], v[54:61] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v83, 16, v66
	v_lshl_or_b32 v85, v85, 16, v84
	v_lshl_or_b32 v84, v88, 16, v87
	v_lshl_or_b32 v83, v89, 16, v9
	v_wmma_i32_16x16x16_iu8 v[67:74], v[62:65], v[99:102], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[5:8], v[107:110], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[1:4], v[107:110], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[5:8], v[83:86], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[1:4], v[83:86], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v46
	v_cvt_f32_i32_e32 v2, v47
	v_cvt_f32_i32_e32 v3, v48
	v_cvt_f32_i32_e32 v4, v49
	v_cvt_f32_i32_e32 v9, v50
	v_cvt_f32_i32_e32 v46, v51
	v_cvt_f32_i32_e32 v47, v52
	v_cvt_f32_i32_e32 v48, v53
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v52, v56
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v54, v58
	v_cvt_f32_i32_e32 v55, v59
	v_cvt_f32_i32_e32 v56, v60
	v_cvt_f32_i32_e32 v57, v61
	v_cvt_f32_i32_e32 v58, v75
	v_cvt_f32_i32_e32 v60, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
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
	v_or_b32_e32 v5, s31, v13
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s20
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v44, v3 :: v_dual_lshlrev_b32 v6, 1, v5
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v5, s18, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v4, v43, v4
	v_dual_add_f32 v1, v15, v1 :: v_dual_add_f32 v2, v45, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v7, 32, v6
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v8, 1, v5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v75, 0x840, 0, s0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v50, v6, s[4:7], 0 offen
	buffer_load_u16 v59, v7, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v7, v42, v9
	v_add_f32_e32 v9, v40, v47
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v6, v8, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v41, v46 :: v_dual_add_f32 v13, v39, v48
	v_dual_add_f32 v46, v38, v49 :: v_dual_add_f32 v47, v37, v51
	v_dual_add_f32 v48, v36, v52 :: v_dual_add_f32 v49, v35, v53
	v_dual_add_f32 v51, v34, v54 :: v_dual_add_f32 v52, v33, v55
	v_dual_add_f32 v53, v32, v56 :: v_dual_add_f32 v54, v31, v57
	v_dual_add_f32 v55, v30, v58 :: v_dual_add_f32 v56, v29, v60
	v_dual_add_f32 v57, v28, v61 :: v_dual_add_f32 v58, v27, v62
	v_dual_add_f32 v60, v26, v63 :: v_dual_add_f32 v61, v25, v64
	v_dual_add_f32 v62, v24, v65 :: v_dual_add_f32 v63, v23, v66
	v_dual_add_f32 v64, v22, v67 :: v_dual_add_f32 v65, v21, v68
	v_add_f32_e32 v68, v18, v71
	v_dual_add_f32 v66, v20, v69 :: v_dual_add_f32 v67, v19, v70
	v_dual_add_f32 v69, v17, v72 :: v_dual_add_f32 v70, v16, v73
	v_add_f32_e32 v71, v14, v74
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v72, 2, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v54, s2
	v_cndmask_b32_e64 v54, v18, v68, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v74, v10, 1, 0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v10, 3, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v15, v1, s2
	v_cndmask_b32_e64 v45, v45, v2, s2
	v_cndmask_b32_e64 v43, v43, v4, s2
	v_cndmask_b32_e64 v38, v38, v46, s2
	v_cndmask_b32_e64 v30, v30, v55, s2
	v_cndmask_b32_e64 v46, v29, v56, s2
	v_cndmask_b32_e64 v55, v17, v69, s2
	v_cndmask_b32_e64 v56, v16, v70, s2
	v_cndmask_b32_e64 v44, v44, v3, s2
	v_cndmask_b32_e64 v42, v42, v7, s2
	v_cndmask_b32_e64 v41, v41, v8, s2
	v_cndmask_b32_e64 v40, v40, v9, s2
	v_cndmask_b32_e64 v39, v39, v13, s2
	v_cndmask_b32_e64 v37, v37, v47, s2
	v_cndmask_b32_e64 v36, v36, v48, s2
	v_cndmask_b32_e64 v35, v35, v49, s2
	v_cndmask_b32_e64 v34, v34, v51, s2
	v_cndmask_b32_e64 v33, v33, v52, s2
	v_cndmask_b32_e64 v32, v32, v53, s2
	v_cndmask_b32_e64 v28, v28, v57, s2
	v_cndmask_b32_e64 v47, v27, v58, s2
	v_cndmask_b32_e64 v26, v26, v60, s2
	v_cndmask_b32_e64 v48, v25, v61, s2
	v_cndmask_b32_e64 v24, v24, v62, s2
	v_cndmask_b32_e64 v49, v23, v63, s2
	v_cndmask_b32_e64 v22, v22, v64, s2
	v_cndmask_b32_e64 v51, v21, v65, s2
	v_cndmask_b32_e64 v52, v20, v66, s2
	v_cndmask_b32_e64 v53, v19, v67, s2
	v_cndmask_b32_e64 v57, v14, v71, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	s_mul_i32 s28, s29, 21
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
	v_lshlrev_b32_e32 v18, 16, v50
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v73, 5, v12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshlrev_b32_e32 v76, 2, v11
	v_lshlrev_b32_e32 v12, 6, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v1, 0, v72, v73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[16:17], null, s31, s29, v[5:6]
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v2, v10, v12, v76
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v1, v11, 1, v1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v4, v75, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v0, 16, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v58, 0, v2
	v_xad_u32 v60, 0x840, v2, 0
	v_xad_u32 v61, 0x1008, v2, 0
	v_xad_u32 v62, 0x1848, v2, 0
	v_xad_u32 v63, 0x2010, v2, 0
	v_xad_u32 v64, 0x2850, v2, 0
	v_xad_u32 v65, 0x3018, v2, 0
	v_xad_u32 v66, 0x3858, v2, 0
	v_xad_u32 v67, 0x4020, v2, 0
	v_xad_u32 v68, 0x4860, v2, 0
	v_xad_u32 v69, 0x5028, v2, 0
	v_xad_u32 v70, 0x5868, v2, 0
	v_xad_u32 v71, 0x6030, v2, 0
	v_xad_u32 v72, 0x6870, v2, 0
	v_xad_u32 v73, 0x7038, v2, 0
	v_xad_u32 v75, 0x7878, v2, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v74
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v17, v11, 11, v4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[4:7], v74 offset:16
	ds_load_b128 v[8:11], v74 offset:512
	ds_load_b128 v[12:15], v74 offset:528
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v104, 0, v17
	v_xad_u32 v105, v17, 8, 0
	v_xad_u32 v106, v17, 16, 0
	v_xad_u32 v107, v17, 24, 0
	v_xad_u32 v108, v17, 32, 0
	v_xad_u32 v74, v17, 40, 0
	v_xad_u32 v109, v17, 48, 0
	v_xad_u32 v50, v17, 56, 0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v17, 16, v59
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_barrier
	v_add_lshl_u32 v78, v16, s29, 2
	v_add_lshl_u32 v79, v16, s30, 2
	v_add_lshl_u32 v80, v16, s10, 2
	v_add_lshl_u32 v81, v16, s11, 2
	v_add_lshl_u32 v82, v16, s12, 2
	v_add_lshl_u32 v83, v16, s13, 2
	v_add_lshl_u32 v84, v16, s14, 2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v125, v8, v17 :: v_dual_lshlrev_b32 v76, 2, v16
	v_mul_f32_e32 v27, v5, v18
	v_mul_f32_e32 v19, v0, v18
	v_mul_f32_e32 v20, v1, v18
	v_mul_f32_e32 v21, v2, v18
	v_mul_f32_e32 v23, v3, v18
	v_mul_f32_e32 v25, v4, v18
	v_mul_f32_e32 v29, v6, v18
	v_mul_f32_e32 v110, v8, v18
	v_dual_mul_f32 v59, v7, v18 :: v_dual_mul_f32 v118, v1, v17
	v_dual_mul_f32 v111, v9, v18 :: v_dual_mul_f32 v120, v3, v17
	v_dual_mul_f32 v112, v10, v18 :: v_dual_mul_f32 v129, v12, v17
	v_dual_mul_f32 v113, v11, v18 :: v_dual_mul_f32 v122, v5, v17
	v_dual_mul_f32 v114, v12, v18 :: v_dual_mul_f32 v127, v10, v17
	v_dual_mul_f32 v115, v13, v18 :: v_dual_mul_f32 v124, v7, v17
	v_mul_f32_e32 v116, v14, v18
	v_dual_mul_f32 v18, v15, v18 :: v_dual_mul_f32 v131, v14, v17
	v_mul_f32_e32 v117, v0, v17
	v_mul_f32_e32 v123, v6, v17
	v_mul_f32_e32 v126, v9, v17
	v_mul_f32_e32 v119, v2, v17
	v_mul_f32_e32 v128, v11, v17
	v_mul_f32_e32 v121, v4, v17
	v_mul_f32_e32 v130, v13, v17
	v_mul_f32_e32 v132, v15, v17
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v0, v77, v19
	v_dual_mul_f32 v2, v45, v20 :: v_dual_mul_f32 v31, v31, v18
	v_dual_mul_f32 v10, v41, v27 :: v_dual_mul_f32 v1, v30, v117
	v_mul_f32_e32 v17, v38, v110
	v_dual_mul_f32 v11, v48, v122 :: v_dual_mul_f32 v18, v22, v125
	v_dual_mul_f32 v4, v44, v21 :: v_dual_mul_f32 v3, v46, v118
	v_mul_f32_e32 v19, v37, v111
	v_dual_mul_f32 v13, v24, v123 :: v_dual_mul_f32 v20, v51, v126
	v_dual_mul_f32 v8, v42, v25 :: v_dual_mul_f32 v5, v28, v119
	v_mul_f32_e32 v21, v36, v112
	v_dual_mul_f32 v15, v49, v124 :: v_dual_mul_f32 v22, v52, v127
	v_mul_f32_e32 v6, v43, v23
	v_dual_mul_f32 v12, v40, v29 :: v_dual_mul_f32 v7, v47, v120
	v_dual_mul_f32 v23, v35, v113 :: v_dual_mul_f32 v24, v53, v128
	v_dual_mul_f32 v14, v39, v59 :: v_dual_mul_f32 v9, v26, v121
	v_mul_f32_e32 v25, v34, v114
	v_mul_f32_e32 v27, v33, v115
	v_dual_mul_f32 v29, v32, v116 :: v_dual_mul_f32 v26, v54, v129
	v_mul_f32_e32 v28, v55, v130
	v_mul_f32_e32 v30, v56, v131
	v_mul_f32_e32 v32, v57, v132
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v104, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v105, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v106, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v107, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v108, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v74, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v109, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v50, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v58
	ds_load_b64 v[2:3], v60
	ds_load_b64 v[4:5], v61
	ds_load_b64 v[6:7], v62
	ds_load_b64 v[8:9], v63
	ds_load_b64 v[10:11], v64
	ds_load_b64 v[12:13], v65
	ds_load_b64 v[14:15], v66
	ds_load_b64 v[17:18], v67
	ds_load_b64 v[19:20], v68
	ds_load_b64 v[21:22], v69
	ds_load_b64 v[23:24], v70
	ds_load_b64 v[25:26], v71
	ds_load_b64 v[27:28], v72
	ds_load_b64 v[29:30], v73
	ds_load_b64 v[31:32], v75
	v_lshl_add_u32 v33, s29, 3, v76
	v_lshl_add_u32 v34, s29, 4, v76
	v_add_lshl_u32 v85, v16, s15, 2
	v_add_lshl_u32 v86, v16, s20, 2
	v_add_lshl_u32 v87, v16, s21, 2
	v_add_lshl_u32 v88, v16, s22, 2
	v_add_lshl_u32 v89, v16, s23, 2
	v_add_lshl_u32 v90, v16, s24, 2
	v_add_lshl_u32 v91, v16, s25, 2
	v_add_lshl_u32 v92, v16, s26, 2
	v_add_lshl_u32 v93, v16, s27, 2
	v_add_lshl_u32 v94, v16, s28, 2
	v_add_lshl_u32 v95, v16, s33, 2
	v_add_lshl_u32 v96, v16, s34, 2
	v_add_lshl_u32 v97, v16, s35, 2
	v_add_lshl_u32 v98, v16, s36, 2
	v_add_lshl_u32 v99, v16, s9, 2
	v_lshl_add_u32 v35, s29, 5, v76
	v_lshl_add_u32 v36, s29, 6, v76
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v76, s[16:19], 0 offen
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
	v_add_lshl_u32 v100, v16, s8, 2
	v_add_lshl_u32 v101, v16, s5, 2
	v_add_lshl_u32 v102, v16, s4, 2
	v_add_lshl_u32 v103, v16, s3, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 254
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 254
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13400
; TotalNumSgprs: 39
; NumVgprs: 254
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 254
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     254
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
