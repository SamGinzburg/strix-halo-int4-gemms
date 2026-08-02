	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v14, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v13, 15, v0
	v_lshlrev_b32_e32 v47, 3, v0
	v_or_b32_e32 v50, 0x3f0, v0
	v_or_b32_e32 v51, 0x7f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v45, 2, v14
	v_and_b32_e32 v52, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 24, v47
	v_and_b32_e32 v53, 32, v0
	v_and_b32_e32 v54, 48, v47
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s24, 31
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
	s_mov_b64 s[20:21], s[14:15]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s25, v45
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v13, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mad_u64_u32 v[10:11], null, s25, 3, v[9:10]
	v_lshl_add_u32 v48, s25, 1, v9
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	v_mul_lo_u32 v1, s24, v1
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
	s_sub_i32 s14, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s14, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s14, 0x7ffffffe
	s_cselect_b32 s4, s11, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s29, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s14
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s4, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s9, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s6, s24, s29
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s27, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s25, s29
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v11, v1, v2, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s26, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s6, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v9
	v_add_nc_u32_e32 v3, s4, v48
	v_add_nc_u32_e32 v4, s4, v10
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s8, s25, 6
	v_add_nc_u32_e32 v19, s25, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s8
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s7, s24, 6
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b64 v[7:8], v1, s[12:15], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v27, s4, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v19, s3
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v12, s6, s7, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v28, s4, v10
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v1, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v27, s2
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v12, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v28, s2
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v12, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v9
	s_mov_b32 s4, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s25, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	s_clause 0x1
	buffer_load_b128 v[35:38], v2, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v12, s[20:23], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b64 v[43:44], v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	v_and_b32_e32 v12, 14, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v45, v1, v45
	v_lshlrev_b32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v56, v12, 10, v45
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v45, 0, v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v58, 0x90, v56
	v_xor_b32_e32 v59, 0x120, v56
	v_xor_b32_e32 v60, 0x1b0, v56
	v_xor_b32_e32 v61, 0x210, v56
	v_add_nc_u32_e32 v46, 0, v56
	v_xor_b32_e32 v62, 0x330, v56
	v_xor_b32_e32 v63, 0x3a0, v56
	v_add_nc_u32_e32 v49, 0, v58
	v_add_nc_u32_e32 v55, 0, v59
	v_add_nc_u32_e32 v57, 0, v60
	v_add_nc_u32_e32 v64, 0, v61
	v_add_nc_u32_e32 v65, 0, v62
	v_add_nc_u32_e32 v66, 0, v63
	v_add_nc_u32_e32 v67, 0x4000, v46
	v_add_nc_u32_e32 v68, 0x4000, v49
	v_add_nc_u32_e32 v69, 0x4000, v55
	v_add_nc_u32_e32 v70, 0x4000, v57
	v_add_nc_u32_e32 v71, 0x4000, v64
	v_add_nc_u32_e32 v72, 0x4000, v65
	v_add_nc_u32_e32 v73, 0x4000, v66
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v45, v[7:8] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v7, v15, v3, 0x4000501
	v_perm_b32 v3, v15, v3, 0x6020703
	v_perm_b32 v8, v16, v4, 0x4000501
	v_perm_b32 v4, v16, v4, 0x6020703
	v_perm_b32 v15, v17, v5, 0x4000501
	v_perm_b32 v5, v17, v5, 0x6020703
	v_perm_b32 v16, v18, v6, 0x4000501
	v_perm_b32 v6, v18, v6, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v17, v23, v19, 0x4000501
	v_perm_b32 v18, v23, v19, 0x6020703
	v_perm_b32 v19, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v23, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v24, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v25, v31, v27, 0x4000501
	v_perm_b32 v26, v31, v27, 0x6020703
	v_perm_b32 v31, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v7, v17, 0x7060302
	v_perm_b32 v7, v7, v17, 0x5040100
	v_perm_b32 v17, v3, v18, 0x7060302
	v_perm_b32 v3, v3, v18, 0x5040100
	v_perm_b32 v18, v8, v19, 0x7060302
	v_perm_b32 v8, v8, v19, 0x5040100
	v_perm_b32 v19, v4, v20, 0x7060302
	v_perm_b32 v4, v4, v20, 0x5040100
	v_perm_b32 v20, v15, v23, 0x7060302
	v_perm_b32 v15, v15, v23, 0x5040100
	v_perm_b32 v23, v5, v21, 0x7060302
	v_perm_b32 v5, v5, v21, 0x5040100
	v_perm_b32 v21, v16, v24, 0x7060302
	v_perm_b32 v16, v16, v24, 0x5040100
	v_perm_b32 v24, v6, v22, 0x7060302
	v_perm_b32 v6, v6, v22, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v22, v39, v35, 0x4000501
	v_perm_b32 v27, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v34, v30, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	v_perm_b32 v34, v39, v35, 0x6020703
	v_perm_b32 v35, v40, v36, 0x4000501
	v_perm_b32 v36, v40, v36, 0x6020703
	v_perm_b32 v39, v41, v37, 0x4000501
	v_perm_b32 v37, v41, v37, 0x6020703
	v_perm_b32 v40, v42, v38, 0x4000501
	v_perm_b32 v38, v42, v38, 0x6020703
	ds_store_2addr_b32 v46, v33, v7 offset1:16
	ds_store_2addr_b32 v49, v17, v3 offset1:16
	ds_store_2addr_b32 v55, v18, v8 offset1:16
	ds_store_2addr_b32 v57, v19, v4 offset1:16
	ds_store_2addr_b32 v64, v20, v15 offset1:16
	ds_store_2addr_b32 v46, v23, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v65, v21, v16 offset1:16
	ds_store_2addr_b32 v66, v24, v6 offset1:16
	v_perm_b32 v3, v25, v22, 0x7060302
	v_perm_b32 v4, v25, v22, 0x5040100
	v_perm_b32 v5, v26, v34, 0x7060302
	v_perm_b32 v6, v26, v34, 0x5040100
	v_perm_b32 v7, v27, v35, 0x7060302
	v_perm_b32 v8, v27, v35, 0x5040100
	v_perm_b32 v15, v28, v36, 0x7060302
	v_perm_b32 v16, v28, v36, 0x5040100
	v_perm_b32 v17, v31, v39, 0x7060302
	v_perm_b32 v18, v31, v39, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v45, v[43:44] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v19, v29, v37, 0x7060302
	v_perm_b32 v20, v29, v37, 0x5040100
	v_perm_b32 v21, v32, v40, 0x7060302
	v_perm_b32 v22, v32, v40, 0x5040100
	v_perm_b32 v23, v30, v38, 0x7060302
	v_perm_b32 v24, v30, v38, 0x5040100
	ds_store_2addr_b32 v67, v3, v4 offset1:16
	ds_store_2addr_b32 v68, v5, v6 offset1:16
	ds_store_2addr_b32 v69, v7, v8 offset1:16
	ds_store_2addr_b32 v70, v15, v16 offset1:16
	ds_store_2addr_b32 v71, v17, v18 offset1:16
	ds_store_2addr_b32 v67, v19, v20 offset0:160 offset1:176
	ds_store_2addr_b32 v72, v21, v22 offset1:16
	ds_store_2addr_b32 v73, v23, v24 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v49, 0x3f0, v0
	v_or_b32_e32 v57, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 48, v47
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v4, 32, v0
	v_and_or_b32 v55, 0x1c0, v1, v6
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
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
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v25, 0
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s28, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr55
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 0x1800, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s30, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	v_and_or_b32 v55, 0x1c0, v1, v2
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v49, s25, v9
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_xor_b32_e32 v1, v3, v54
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v2, 0x420, v4
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v46, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v55, v1
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_xor_b32_e32 v57, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v64, 16, v57
	v_xor_b32_e32 v65, 32, v57
	v_xor_b32_e32 v66, 48, v57
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	s_addk_i32 s29, 0x80
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s30, s30, -3
	s_mov_b32 s31, 1
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s7, s5, 6
	s_mov_b32 s6, s1
	s_mov_b32 s1, s0
	s_mov_b32 s0, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s29, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v72, s0, v57
	v_add_nc_u32_e32 v73, s0, v64
	v_add_nc_u32_e32 v74, s0, v65
	v_add_nc_u32_e32 v75, s0, v66
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s0, s7, s25
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[67:68], null, s7, s24, v[11:12]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s0, s0, s26
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v69, s6, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v68, s0, v9
	v_add_nc_u32_e32 v76, s0, v49
	v_add_nc_u32_e32 v77, s0, v48
	v_add_nc_u32_e32 v78, s0, v10
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[171:172], v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[127:130], v68, s[20:23], 0 offen
	buffer_load_b128 v[131:134], v76, s[20:23], 0 offen
	buffer_load_b128 v[135:138], v77, s[20:23], 0 offen
	buffer_load_b128 v[139:142], v78, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v70, s6, v50
	v_add_nc_u32_e32 v71, s6, v51
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[91:94], v72
	ds_load_b128 v[99:102], v72 offset:8192
	ds_load_b128 v[103:106], v73
	ds_load_b128 v[107:110], v73 offset:8192
	ds_load_b128 v[111:114], v74
	ds_load_b128 v[115:118], v74 offset:8192
	ds_load_b128 v[119:122], v75
	ds_load_b128 v[123:126], v75 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v67, v69 offset:96
	ds_load_u8 v72, v69 offset:64
	ds_load_u8 v73, v69
	ds_load_u8 v74, v69 offset:16
	ds_load_u8 v75, v69 offset:32
	ds_load_u8 v79, v69 offset:112
	ds_load_u8 v80, v69 offset:80
	ds_load_u8 v81, v69 offset:48
	ds_load_u8 v82, v69 offset:928
	ds_load_u8 v83, v69 offset:896
	ds_load_u8 v84, v69 offset:992
	ds_load_u8 v85, v69 offset:960
	ds_load_u8 v86, v69 offset:1024
	ds_load_u8 v87, v69 offset:416
	ds_load_u8 v88, v69 offset:384
	ds_load_u8 v89, v69 offset:480
	ds_load_u8 v90, v69 offset:448
	ds_load_u8 v95, v69 offset:496
	ds_load_u8 v96, v69 offset:464
	ds_load_u8 v97, v69 offset:432
	ds_load_u8 v98, v69 offset:400
	ds_load_u8 v143, v69 offset:288
	ds_load_u8 v144, v69 offset:256
	ds_load_u8 v145, v69 offset:352
	ds_load_u8 v146, v69 offset:320
	ds_load_u8 v147, v69 offset:368
	ds_load_u8 v148, v69 offset:336
	ds_load_u8 v149, v69 offset:304
	ds_load_u8 v150, v69 offset:272
	ds_load_u8 v151, v69 offset:160
	ds_load_u8 v152, v69 offset:128
	ds_load_u8 v153, v69 offset:224
	ds_load_u8 v154, v69 offset:192
	ds_load_u8 v155, v69 offset:240
	ds_load_u8 v156, v69 offset:208
	ds_load_u8 v157, v69 offset:176
	ds_load_u8 v158, v69 offset:144
	ds_load_u8 v68, v69 offset:976
	ds_load_u8 v76, v69 offset:944
	ds_load_u8 v77, v69 offset:912
	ds_load_u8 v78, v69 offset:800
	ds_load_u8 v159, v69 offset:768
	ds_load_u8 v160, v69 offset:864
	ds_load_u8 v161, v69 offset:832
	ds_load_u8 v162, v69 offset:880
	ds_load_u8 v163, v69 offset:848
	ds_load_u8 v164, v69 offset:816
	ds_load_u8 v165, v69 offset:784
	ds_load_u8 v166, v69 offset:672
	ds_load_u8 v167, v69 offset:640
	ds_load_u8 v168, v69 offset:736
	ds_load_u8 v169, v69 offset:704
	ds_load_u8 v170, v69 offset:752
	ds_load_u8 v173, v69 offset:720
	ds_load_u8 v174, v69 offset:688
	ds_load_u8 v175, v69 offset:656
	ds_load_u8 v176, v69 offset:544
	ds_load_u8 v177, v69 offset:512
	ds_load_u8 v178, v69 offset:608
	ds_load_u8 v179, v69 offset:576
	ds_load_u8 v180, v69 offset:624
	ds_load_u8 v181, v69 offset:592
	ds_load_u8 v182, v69 offset:560
	ds_load_u8 v183, v69 offset:528
	ds_load_u8 v184, v69 offset:1440
	ds_load_u8 v185, v69 offset:1504
	ds_load_u8 v186, v69 offset:1472
	ds_load_u8 v187, v69 offset:1536
	ds_load_u8 v188, v69 offset:1520
	ds_load_u8 v189, v69 offset:1488
	ds_load_u8 v190, v69 offset:1456
	ds_load_u8 v191, v69 offset:1424
	ds_load_u8 v192, v69 offset:1408
	ds_load_u8 v193, v69 offset:1312
	ds_load_u8 v194, v69 offset:1376
	ds_load_u8 v195, v69 offset:1344
	ds_load_u8 v196, v69 offset:1392
	ds_load_u8 v197, v69 offset:1360
	ds_load_u8 v198, v69 offset:1328
	ds_load_u8 v199, v69 offset:1296
	ds_load_u8 v200, v69 offset:1280
	ds_load_u8 v201, v69 offset:1184
	ds_load_u8 v202, v69 offset:1248
	ds_load_u8 v203, v69 offset:1216
	ds_load_u8 v204, v69 offset:1264
	ds_load_u8 v205, v69 offset:1232
	ds_load_u8 v206, v69 offset:1200
	ds_load_u8 v207, v69 offset:1168
	ds_load_u8 v208, v69 offset:1152
	ds_load_u8 v209, v69 offset:1056
	ds_load_u8 v210, v69 offset:1120
	ds_load_u8 v211, v69 offset:1088
	ds_load_u8 v212, v69 offset:1136
	ds_load_u8 v213, v69 offset:1104
	ds_load_u8 v214, v69 offset:1072
	ds_load_u8 v215, v69 offset:1040
	ds_load_u8 v216, v69 offset:1952
	ds_load_u8 v217, v69 offset:2016
	ds_load_u8 v218, v69 offset:1984
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	ds_load_u8 v219, v69 offset:2000
	ds_load_u8 v220, v69 offset:1968
	ds_load_u8 v221, v69 offset:1936
	ds_load_u8 v222, v69 offset:1920
	ds_load_u8 v223, v69 offset:1824
	ds_load_u8 v224, v69 offset:1888
	ds_load_u8 v225, v69 offset:1856
	ds_load_u8 v226, v69 offset:1904
	ds_load_u8 v227, v69 offset:1872
	ds_load_u8 v228, v69 offset:1840
	ds_load_u8 v229, v69 offset:1808
	ds_load_u8 v230, v69 offset:1792
	ds_load_u8 v231, v69 offset:1696
	ds_load_u8 v232, v69 offset:1760
	ds_load_u8 v233, v69 offset:1728
	ds_load_u8 v234, v69 offset:1776
	ds_load_u8 v235, v69 offset:1744
	ds_load_u8 v236, v69 offset:1712
	ds_load_u8 v237, v69 offset:1680
	ds_load_u8 v238, v69 offset:1664
	ds_load_u8 v239, v69 offset:1568
	ds_load_u8 v240, v69 offset:1632
	ds_load_u8 v241, v69 offset:1600
	ds_load_u8 v242, v69 offset:1648
	ds_load_u8 v243, v69 offset:1616
	ds_load_u8 v244, v69 offset:1584
	ds_load_u8 v69, v69 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v88, v90, v89, 0xc0c0004
	v_perm_b32 v67, v72, v67, 0xc0c0004
	v_perm_b32 v72, v73, v75, 0xc0c0004
	v_perm_b32 v89, v144, v143, 0xc0c0004
	v_perm_b32 v73, v83, v82, 0xc0c0004
	v_perm_b32 v90, v146, v145, 0xc0c0004
	v_perm_b32 v75, v85, v84, 0xc0c0004
	v_perm_b32 v78, v159, v78, 0xc0c0004
	v_perm_b32 v82, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v161, v200, v193, 0xc0c0004
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v143, v152, v151, 0xc0c0004
	v_perm_b32 v151, v167, v166, 0xc0c0004
	v_perm_b32 v144, v154, v153, 0xc0c0004
	v_perm_b32 v152, v169, v168, 0xc0c0004
	v_perm_b32 v153, v177, v176, 0xc0c0004
	v_perm_b32 v154, v179, v178, 0xc0c0004
	v_perm_b32 v166, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v167, v208, v201, 0xc0c0004
	v_perm_b32 v168, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v169, v86, v209, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_perm_b32 v96, v150, v149, 0xc0c0004
	v_perm_b32 v98, v148, v147, 0xc0c0004
	v_perm_b32 v193, v158, v157, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v74, v74, v81, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v68, v68, v70, 0xc0c0004
	v_perm_b32 v70, v165, v164, 0xc0c0004
	v_perm_b32 v77, v163, v162, 0xc0c0004
	v_perm_b32 v81, v173, v170, 0xc0c0004
	v_perm_b32 v163, v183, v182, 0xc0c0004
	v_perm_b32 v165, v191, v190, 0xc0c0004
	v_perm_b32 v170, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v183, v221, v220, 0xc0c0004
	v_perm_b32 v71, v219, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v244, 0xc0c0004
	v_perm_b32 v194, v243, v242, 0xc0c0004
	v_lshl_or_b32 v86, v88, 16, v87
	v_lshl_or_b32 v85, v90, 16, v89
	v_lshl_or_b32 v84, v144, 16, v143
	v_lshl_or_b32 v83, v67, 16, v72
	v_perm_b32 v159, v192, v184, 0xc0c0004
	v_perm_b32 v160, v186, v185, 0xc0c0004
	v_perm_b32 v80, v175, v174, 0xc0c0004
	v_perm_b32 v176, v211, v210, 0xc0c0004
	v_perm_b32 v164, v181, v180, 0xc0c0004
	v_lshl_or_b32 v146, v75, 16, v73
	v_lshl_or_b32 v145, v82, 16, v78
	v_lshl_or_b32 v144, v152, 16, v151
	v_lshl_or_b32 v143, v154, 16, v153
	v_lshl_or_b32 v149, v166, 16, v161
	v_lshl_or_b32 v148, v168, 16, v167
	v_lshl_or_b32 v158, v95, 16, v97
	v_lshl_or_b32 v157, v98, 16, v96
	v_lshl_or_b32 v156, v155, 16, v193
	v_lshl_or_b32 v155, v79, 16, v74
	v_lshl_or_b32 v162, v68, 16, v76
	v_lshl_or_b32 v161, v77, 16, v70
	v_lshl_or_b32 v166, v170, 16, v165
	v_lshl_or_b32 v170, v71, 16, v183
	v_lshl_or_b32 v167, v194, 16, v69
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v150, v160, 16, v159
	v_lshl_or_b32 v160, v81, 16, v80
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v177, v222, v216, 0xc0c0004
	v_perm_b32 v178, v218, v217, 0xc0c0004
	v_perm_b32 v179, v230, v223, 0xc0c0004
	v_perm_b32 v184, v225, v224, 0xc0c0004
	v_perm_b32 v185, v238, v231, 0xc0c0004
	v_perm_b32 v186, v233, v232, 0xc0c0004
	v_perm_b32 v187, v187, v239, 0xc0c0004
	v_perm_b32 v192, v241, v240, 0xc0c0004
	v_perm_b32 v173, v199, v198, 0xc0c0004
	v_perm_b32 v174, v197, v196, 0xc0c0004
	v_perm_b32 v175, v207, v206, 0xc0c0004
	v_perm_b32 v180, v205, v204, 0xc0c0004
	v_perm_b32 v181, v215, v214, 0xc0c0004
	v_perm_b32 v182, v213, v212, 0xc0c0004
	v_lshl_or_b32 v147, v176, 16, v169
	v_lshl_or_b32 v159, v164, 16, v163
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[155:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[155:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[103:106], v[143:146], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[107:110], v[143:146], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v188, v229, v228, 0xc0c0004
	v_perm_b32 v189, v227, v226, 0xc0c0004
	v_perm_b32 v190, v237, v236, 0xc0c0004
	v_perm_b32 v191, v235, v234, 0xc0c0004
	v_lshl_or_b32 v154, v178, 16, v177
	v_lshl_or_b32 v153, v184, 16, v179
	v_lshl_or_b32 v152, v186, 16, v185
	v_lshl_or_b32 v151, v192, 16, v187
	v_lshl_or_b32 v165, v174, 16, v173
	v_lshl_or_b32 v164, v180, 16, v175
	v_lshl_or_b32 v163, v182, 16, v181
	v_wmma_i32_16x16x16_iu8 v[83:90], v[103:106], v[159:162], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[107:110], v[159:162], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[111:114], v[147:150], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[115:118], v[147:150], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v169, v189, 16, v188
	v_lshl_or_b32 v168, v191, 16, v190
	v_wmma_i32_16x16x16_iu8 v[83:90], v[111:114], v[163:166], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[115:118], v[163:166], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[119:122], v[151:154], v[67:74] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s8, s31, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[123:126], v[151:154], v[75:82] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s8, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[83:90], v[119:122], v[167:170], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[123:126], v[167:170], v[91:98] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, s8, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s31, 14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s0, s31, 11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v67 :: v_dual_add_f32 v46, v46, v68
	s_mov_b32 s4, s28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s28, s7, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v45, v45, v69 :: v_dual_add_f32 v44, v44, v70
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s8, s0, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v43, v43, v71 :: v_dual_add_f32 v42, v42, v72
	v_dual_add_f32 v41, v41, v73 :: v_dual_add_nc_u32 v246, s28, v56
	v_dual_add_f32 v40, v40, v74 :: v_dual_add_nc_u32 v245, s8, v47
	v_dual_add_f32 v38, v38, v76 :: v_dual_add_f32 v39, v39, v75
	v_dual_add_f32 v34, v34, v80 :: v_dual_add_nc_u32 v247, s28, v58
	v_dual_add_f32 v37, v37, v77 :: v_dual_add_nc_u32 v248, s28, v59
	v_dual_add_f32 v32, v32, v82 :: v_dual_add_nc_u32 v249, s28, v60
	v_dual_add_f32 v27, v27, v87 :: v_dual_add_nc_u32 v250, s28, v61
	v_dual_add_f32 v30, v30, v84 :: v_dual_add_nc_u32 v251, s28, v62
	v_dual_add_f32 v33, v33, v81 :: v_dual_add_nc_u32 v252, s28, v63
	v_dual_add_f32 v36, v36, v78 :: v_dual_add_f32 v35, v35, v79
	v_add_f32_e32 v31, v31, v83
	v_dual_add_f32 v29, v29, v85 :: v_dual_add_f32 v28, v28, v86
	v_dual_add_f32 v26, v26, v88 :: v_dual_add_f32 v23, v23, v90
	v_dual_add_f32 v24, v24, v89 :: v_dual_add_f32 v21, v21, v92
	v_dual_add_f32 v22, v22, v91 :: v_dual_add_f32 v19, v19, v94
	v_dual_add_f32 v20, v20, v93 :: v_dual_add_f32 v17, v17, v96
	v_dual_add_f32 v18, v18, v95 :: v_dual_add_f32 v15, v15, v98
	v_add_f32_e32 v16, v16, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s0, s8, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s30
	s_mov_b32 s5, s6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v245, v[171:172] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v67, v131, v127, 0x4000501
	v_perm_b32 v69, v131, v127, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v139, v135, 0x4000501
	v_perm_b32 v70, v139, v135, 0x6020703
	v_perm_b32 v71, v132, v128, 0x4000501
	v_perm_b32 v72, v140, v136, 0x4000501
	v_perm_b32 v73, v132, v128, 0x6020703
	v_perm_b32 v74, v140, v136, 0x6020703
	v_perm_b32 v75, v133, v129, 0x4000501
	v_perm_b32 v76, v141, v137, 0x4000501
	v_perm_b32 v77, v133, v129, 0x6020703
	v_perm_b32 v78, v141, v137, 0x6020703
	v_perm_b32 v79, v134, v130, 0x4000501
	v_perm_b32 v80, v142, v138, 0x4000501
	v_perm_b32 v81, v134, v130, 0x6020703
	v_perm_b32 v82, v142, v138, 0x6020703
	v_perm_b32 v83, v68, v67, 0x7060302
	v_perm_b32 v67, v68, v67, 0x5040100
	v_perm_b32 v68, v70, v69, 0x7060302
	v_perm_b32 v69, v70, v69, 0x5040100
	v_perm_b32 v70, v72, v71, 0x7060302
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
	ds_store_2addr_b32 v246, v83, v67 offset1:16
	ds_store_2addr_b32 v247, v68, v69 offset1:16
	ds_store_2addr_b32 v248, v70, v71 offset1:16
	ds_store_2addr_b32 v249, v72, v73 offset1:16
	ds_store_2addr_b32 v250, v74, v75 offset1:16
	ds_store_2addr_b32 v246, v76, v77 offset0:160 offset1:176
	ds_store_2addr_b32 v251, v78, v79 offset1:16
	ds_store_2addr_b32 v252, v80, v81 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v49, v50 :: v_dual_mov_b32 v4, v53
	v_mov_b32_e32 v57, v51
	v_mov_b32_e32 v3, v54
	v_mov_b32_e32 v5, v52
.LBB0_7:                                ; %Flow38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_and_b32_e32 v9, 1, v0
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
	v_or_b32_e32 v1, v55, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v5, v1, v2
	v_xor_b32_e32 v6, 16, v5
	v_xor_b32_e32 v7, 32, v5
	v_xor_b32_e32 v8, 48, v5
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v10, s1, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v48, v10 offset:416
	ds_load_u8 v54, v10 offset:384
	ds_load_u8 v55, v10 offset:480
	ds_load_u8 v56, v10 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s4, v8
	v_add_nc_u32_e32 v47, s4, v6
	ds_load_b128 v[1:4], v11
	ds_load_b128 v[50:53], v47 offset:8192
	ds_load_b128 v[90:93], v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v47, v10 offset:288
	ds_load_u8 v59, v10 offset:256
	ds_load_u8 v60, v10 offset:352
	ds_load_u8 v61, v10 offset:320
	ds_load_u8 v62, v10 offset:160
	ds_load_u8 v63, v10 offset:128
	ds_load_u8 v64, v10 offset:224
	ds_load_u8 v65, v10 offset:192
	ds_load_u8 v118, v10 offset:464
	ds_load_u8 v119, v10 offset:432
	ds_load_u8 v120, v10 offset:400
	ds_load_u8 v121, v10 offset:368
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, s4, v5
	ds_load_b128 v[94:97], v58 offset:8192
	ds_load_b128 v[98:101], v58
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s1, v57
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v74, s4, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v47, v59, v47, 0xc0c0004
	v_perm_b32 v48, v54, v48, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v59, v61, v60, 0xc0c0004
	v_perm_b32 v54, v56, v55, 0xc0c0004
	ds_load_u8 v55, v10 offset:96
	ds_load_u8 v56, v10 offset:64
	ds_load_u8 v66, v10
	ds_load_u8 v67, v10 offset:32
	ds_load_u8 v122, v10 offset:336
	ds_load_u8 v123, v10 offset:304
	ds_load_u8 v124, v10 offset:272
	ds_load_u8 v125, v10 offset:240
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v61, v65, v64, 0xc0c0004
	v_lshl_or_b32 v84, v59, 16, v47
	v_lshl_or_b32 v85, v54, 16, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v83, v61, 16, v60
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v56, v55, 0xc0c0004
	ds_load_u8 v55, v10 offset:16
	ds_load_u8 v56, v58
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v66, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v54, 16, v58
	v_mov_b32_e32 v65, s15
	ds_load_u8 v66, v10 offset:928
	ds_load_u8 v67, v10 offset:896
	ds_load_u8 v68, v10 offset:992
	ds_load_u8 v69, v10 offset:960
	ds_load_u8 v54, v10 offset:800
	ds_load_u8 v70, v10 offset:768
	ds_load_u8 v71, v10 offset:864
	ds_load_u8 v72, v10 offset:832
	ds_load_u8 v73, v10 offset:672
	ds_load_u8 v75, v10 offset:640
	ds_load_u8 v76, v10 offset:736
	ds_load_u8 v77, v10 offset:704
	ds_load_u8 v130, v10 offset:976
	ds_load_u8 v131, v10 offset:944
	ds_load_u8 v132, v10 offset:912
	ds_load_u8 v133, v10 offset:880
	v_mov_b32_e32 v63, s13
	ds_load_u8 v126, v10 offset:208
	ds_load_u8 v127, v10 offset:176
	ds_load_u8 v128, v10 offset:144
	ds_load_u8 v129, v10 offset:112
	ds_load_u8 v47, v10 offset:80
	ds_load_u8 v48, v10 offset:48
	ds_load_u8 v138, v10 offset:720
	ds_load_u8 v139, v10 offset:688
	ds_load_u8 v140, v10 offset:656
	ds_load_u8 v141, v10 offset:624
	ds_load_u8 v157, v10 offset:1136
	ds_load_u8 v158, v10 offset:1104
	ds_load_u8 v159, v10 offset:1072
	ds_load_u8 v160, v10 offset:1040
	v_mov_b32_e32 v64, s14
	v_dual_mov_b32 v62, s12 :: v_dual_mov_b32 v61, s11
	v_mov_b32_e32 v60, s10
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v54, v70, v54, 0xc0c0004
	v_mov_b32_e32 v59, s9
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v80, v72, v71, 0xc0c0004
	v_mov_b32_e32 v58, s8
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v75, v75, v73, 0xc0c0004
	ds_load_u8 v170, v10 offset:1904
	ds_load_u8 v171, v10 offset:1872
	ds_load_u8 v172, v10 offset:1840
	ds_load_u8 v173, v10 offset:1808
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v10 offset:1440
	ds_load_u8 v81, v10 offset:1408
	ds_load_u8 v102, v10 offset:1504
	ds_load_u8 v103, v10 offset:1472
	ds_load_u8 v142, v10 offset:592
	ds_load_u8 v143, v10 offset:560
	ds_load_u8 v144, v10 offset:528
	ds_load_u8 v145, v10 offset:496
	v_perm_b32 v78, v67, v66, 0xc0c0004
	v_perm_b32 v79, v69, v68, 0xc0c0004
	v_lshl_or_b32 v88, v80, 16, v54
	v_lshl_or_b32 v87, v76, 16, v75
	ds_load_u8 v66, v10 offset:544
	ds_load_u8 v67, v10 offset:512
	ds_load_u8 v68, v10 offset:608
	ds_load_u8 v69, v10 offset:576
	ds_load_u8 v134, v10 offset:848
	ds_load_u8 v135, v10 offset:816
	ds_load_u8 v136, v10 offset:784
	ds_load_u8 v137, v10 offset:752
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v47, v47, v129, 0xc0c0004
	v_lshl_or_b32 v89, v79, 16, v78
	ds_load_u8 v54, v10 offset:1312
	ds_load_u8 v75, v10 offset:1280
	ds_load_u8 v76, v10 offset:1376
	ds_load_u8 v78, v10 offset:1344
	ds_load_u8 v146, v10 offset:1520
	ds_load_u8 v147, v10 offset:1488
	ds_load_u8 v148, v10 offset:1456
	ds_load_u8 v149, v10 offset:1424
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v48, v55, v48, 0xc0c0004
	ds_load_u8 v174, v10 offset:1776
	ds_load_u8 v175, v10 offset:1744
	ds_load_u8 v176, v10 offset:1712
	ds_load_u8 v177, v10 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v80, v10 offset:1184
	ds_load_u8 v81, v10 offset:1152
	ds_load_u8 v110, v10 offset:1248
	ds_load_u8 v111, v10 offset:1216
	ds_load_u8 v114, v10 offset:1056
	ds_load_u8 v115, v10 offset:1024
	ds_load_u8 v116, v10 offset:1120
	ds_load_u8 v117, v10 offset:1088
	ds_load_u8 v150, v10 offset:1392
	ds_load_u8 v151, v10 offset:1360
	ds_load_u8 v152, v10 offset:1328
	ds_load_u8 v153, v10 offset:1296
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v79, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v86, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v104, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v54, v75, v54, 0xc0c0004
	v_lshl_or_b32 v113, v79, 16, v77
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v75, v78, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[98:101], v[82:85], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v76, v111, v110, 0xc0c0004
	v_lshl_or_b32 v86, v104, 16, v86
	v_lshl_or_b32 v112, v75, 16, v54
	v_perm_b32 v75, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v77, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v117, v116, 0xc0c0004
	ds_load_u8 v79, v10 offset:1952
	ds_load_u8 v80, v10 offset:1920
	ds_load_u8 v81, v10 offset:2016
	ds_load_u8 v114, v10 offset:1984
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[102:105], v74 offset:8192
	ds_load_b128 v[106:109], v74
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v74, s1, v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v111, v76, 16, v75
	v_lshl_or_b32 v110, v78, 16, v77
	ds_load_u8 v75, v10 offset:1824
	ds_load_u8 v76, v10 offset:1792
	ds_load_u8 v77, v10 offset:1888
	ds_load_u8 v78, v10 offset:1856
	ds_load_u8 v115, v10 offset:1696
	ds_load_u8 v116, v10 offset:1664
	ds_load_u8 v117, v10 offset:1760
	ds_load_u8 v161, v10 offset:1728
	ds_load_u8 v162, v10 offset:1568
	ds_load_u8 v163, v10 offset:1536
	ds_load_u8 v164, v10 offset:1632
	ds_load_u8 v165, v10 offset:1600
	ds_load_u8 v166, v74
	ds_load_u8 v167, v10 offset:2000
	ds_load_u8 v168, v10 offset:1968
	ds_load_u8 v169, v10 offset:1936
	ds_load_u8 v54, v10 offset:1264
	ds_load_u8 v154, v10 offset:1232
	ds_load_u8 v155, v10 offset:1200
	ds_load_u8 v156, v10 offset:1168
	v_perm_b32 v55, v136, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[90:93], v[86:89], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v77, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v78, v161, v117, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v163, v162, 0xc0c0004
	v_perm_b32 v79, v114, v81, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v165, v164, 0xc0c0004
	v_lshl_or_b32 v116, v76, 16, v75
	v_lshl_or_b32 v115, v78, 16, v77
	ds_load_u8 v161, v10 offset:1648
	ds_load_u8 v178, v10 offset:1616
	ds_load_u8 v179, v10 offset:1584
	ds_load_u8 v10, v10 offset:1552
	v_lshl_or_b32 v117, v79, 16, v74
	v_lshl_or_b32 v114, v81, 16, v80
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[82:85], v[58:65] neg_lo:[1,1,0]
	v_perm_b32 v82, v120, v119, 0xc0c0004
	v_perm_b32 v83, v118, v145, 0xc0c0004
	v_perm_b32 v84, v124, v123, 0xc0c0004
	v_perm_b32 v85, v122, v121, 0xc0c0004
	v_perm_b32 v118, v128, v127, 0xc0c0004
	v_perm_b32 v119, v126, v125, 0xc0c0004
	v_lshl_or_b32 v121, v83, 16, v82
	v_perm_b32 v122, v134, v133, 0xc0c0004
	v_lshl_or_b32 v120, v85, 16, v84
	v_perm_b32 v123, v140, v139, 0xc0c0004
	v_lshl_or_b32 v119, v119, 16, v118
	v_lshl_or_b32 v118, v47, 16, v48
	v_perm_b32 v47, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v48, v130, v166, 0xc0c0004
	v_perm_b32 v124, v138, v137, 0xc0c0004
	v_perm_b32 v125, v144, v143, 0xc0c0004
	v_perm_b32 v126, v142, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[74:81], v[50:53], v[86:89], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[98:101], v[118:121], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v48, 16, v47
	v_lshl_or_b32 v100, v122, 16, v55
	v_lshl_or_b32 v99, v124, 16, v123
	v_lshl_or_b32 v98, v126, 16, v125
	v_perm_b32 v55, v153, v152, 0xc0c0004
	v_perm_b32 v122, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v123, v156, v155, 0xc0c0004
	v_perm_b32 v54, v154, v54, 0xc0c0004
	v_perm_b32 v124, v160, v159, 0xc0c0004
	v_perm_b32 v125, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[82:89], v[90:93], v[98:101], v[82:89] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v122, 16, v55
	v_lshl_or_b32 v91, v54, 16, v123
	v_perm_b32 v47, v149, v148, 0xc0c0004
	v_lshl_or_b32 v90, v125, 16, v124
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[122:125], v11 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v48, v147, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[106:109], v[110:113], v[66:73] neg_lo:[1,1,0]
	v_perm_b32 v11, v169, v168, 0xc0c0004
	v_perm_b32 v54, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[94:97], v[118:121], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v48, 16, v47
	v_perm_b32 v47, v167, v56, 0xc0c0004
	v_perm_b32 v48, v173, v172, 0xc0c0004
	v_perm_b32 v55, v177, v176, 0xc0c0004
	v_perm_b32 v56, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v179, 0xc0c0004
	v_perm_b32 v94, v178, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[1:4], v[114:117], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[102:105], v[110:113], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[106:109], v[90:93], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[50:53], v[98:101], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v47, 16, v11
	v_lshl_or_b32 v52, v54, 16, v48
	v_lshl_or_b32 v51, v56, 16, v55
	v_lshl_or_b32 v50, v94, 16, v10
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[122:125], v[114:117], v[74:81] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v67
	v_wmma_i32_16x16x16_iu8 v[58:65], v[102:105], v[90:93], v[58:65] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v68
	v_wmma_i32_16x16x16_iu8 v[82:89], v[1:4], v[50:53], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v69
	v_cvt_f32_i32_e32 v3, v71
	v_cvt_f32_i32_e32 v2, v70
	v_cvt_f32_i32_e32 v4, v72
	v_wmma_i32_16x16x16_iu8 v[58:65], v[122:125], v[50:53], v[58:65] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v11
	v_add_f32_e32 v42, v42, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v2
	v_add_f32_e32 v41, v41, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v75
	v_cvt_f32_i32_e32 v4, v77
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v1
	v_add_f32_e32 v37, v37, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v79
	v_cvt_f32_i32_e32 v3, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v86
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v80
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v87
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v29, v29, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v30, v10 :: v_dual_add_f32 v21, v21, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v88
	v_cvt_f32_i32_e32 v3, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v23, v23, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v16, v3 :: v_dual_add_f32 v19, v19, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v1 :: v_dual_add_f32 v25, v25, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_add_f32 v15, v15, v4 :: v_dual_add_f32 v22, v22, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v17, v17, v2
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
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
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v74, 0
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
	v_add_nc_u32_e32 v8, s28, v8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v10, s0, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v74, s11 :: v_dual_add_nc_u32 v11, s28, v7
	v_dual_mov_b32 v69, s6 :: v_dual_add_nc_u32 v52, s28, v6
	v_dual_mov_b32 v72, s9 :: v_dual_add_nc_u32 v53, s28, v5
	v_mov_b32_e32 v73, s10
	v_mov_b32_e32 v71, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v8 offset:8192
	ds_load_b128 v[5:8], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v54, v10 offset:288
	ds_load_u8 v55, v10 offset:256
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[63:66], v11 offset:8192
	ds_load_b128 v[83:86], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v11, v10 offset:352
	ds_load_u8 v56, v10 offset:320
	ds_load_u8 v58, v10 offset:160
	ds_load_u8 v59, v10 offset:128
	ds_load_u8 v60, v10 offset:224
	ds_load_u8 v61, v10 offset:192
	ds_load_u8 v107, v10 offset:464
	ds_load_u8 v108, v10 offset:432
	ds_load_u8 v109, v10 offset:400
	ds_load_u8 v111, v10 offset:368
	ds_load_u8 v47, v10 offset:416
	ds_load_u8 v48, v10 offset:384
	ds_load_u8 v50, v10 offset:480
	ds_load_u8 v51, v10 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[87:90], v53 offset:8192
	ds_load_b128 v[91:94], v53
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v70, s7 :: v_dual_add_nc_u32 v53, s0, v57
	ds_load_u8 v116, v10 offset:208
	ds_load_u8 v117, v10 offset:176
	ds_load_u8 v118, v10 offset:144
	ds_load_u8 v119, v10 offset:112
	ds_load_u8 v135, v10 offset:592
	ds_load_u8 v136, v10 offset:560
	ds_load_u8 v137, v10 offset:528
	ds_load_u8 v138, v10 offset:496
	ds_load_u8 v121, v10 offset:16
	ds_load_u8 v122, v53
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v10
	ds_load_u8 v62, v10 offset:32
	ds_load_u8 v131, v10 offset:720
	ds_load_u8 v132, v10 offset:688
	ds_load_u8 v133, v10 offset:656
	ds_load_u8 v134, v10 offset:624
	ds_load_u8 v149, v10 offset:1264
	ds_load_u8 v150, v10 offset:1232
	ds_load_u8 v151, v10 offset:1200
	ds_load_u8 v152, v10 offset:1168
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v11, v56, v11, 0xc0c0004
	ds_load_u8 v153, v10 offset:1136
	ds_load_u8 v154, v10 offset:1104
	ds_load_u8 v155, v10 offset:1072
	ds_load_u8 v156, v10 offset:1040
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v56, v59, v58, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v59, s0, v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v58, v61, v60, 0xc0c0004
	v_lshl_or_b32 v77, v11, 16, v54
	ds_load_u8 v11, v10 offset:80
	ds_load_u8 v120, v10 offset:48
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_dual_mov_b32 v68, s5 :: v_dual_mov_b32 v67, s4
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v48, v51, v50, 0xc0c0004
	v_lshl_or_b32 v76, v58, 16, v56
	ds_load_u8 v50, v10 offset:96
	ds_load_u8 v51, v10 offset:64
	ds_load_u8 v112, v10 offset:336
	ds_load_u8 v113, v10 offset:304
	ds_load_u8 v114, v10 offset:272
	ds_load_u8 v115, v10 offset:240
	ds_load_u8 v165, v10 offset:1904
	ds_load_u8 v166, v10 offset:1872
	ds_load_u8 v167, v10 offset:1840
	ds_load_u8 v168, v10 offset:1808
	ds_load_u8 v171, v10 offset:1776
	ds_load_u8 v172, v10 offset:1744
	ds_load_u8 v173, v10 offset:1712
	ds_load_u8 v174, v10 offset:1680
	v_lshl_or_b32 v78, v48, 16, v47
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v48, v55, v62, 0xc0c0004
	ds_load_u8 v55, v10 offset:928
	ds_load_u8 v56, v10 offset:896
	ds_load_u8 v57, v10 offset:992
	ds_load_u8 v58, v10 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[95:98], v52 offset:8192
	ds_load_b128 v[99:102], v52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v60, v10 offset:800
	ds_load_u8 v61, v10 offset:768
	ds_load_u8 v62, v10 offset:864
	ds_load_u8 v79, v10 offset:832
	ds_load_u8 v80, v10 offset:672
	ds_load_u8 v81, v10 offset:640
	ds_load_u8 v82, v10 offset:736
	ds_load_u8 v103, v10 offset:704
	ds_load_u8 v123, v10 offset:976
	ds_load_u8 v124, v10 offset:944
	ds_load_u8 v125, v10 offset:912
	ds_load_u8 v126, v10 offset:880
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v11, v11, v119, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v47, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v61, v79, v62, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v62, v81, v80, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v10 offset:544
	ds_load_u8 v104, v10 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v103, v82, 0xc0c0004
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v10 offset:608
	ds_load_u8 v105, v10 offset:576
	ds_load_u8 v127, v10 offset:848
	ds_load_u8 v128, v10 offset:816
	ds_load_u8 v129, v10 offset:784
	ds_load_u8 v130, v10 offset:752
	v_lshl_or_b32 v81, v61, 16, v60
	v_lshl_or_b32 v75, v47, 16, v48
	v_lshl_or_b32 v80, v79, 16, v62
	v_lshl_or_b32 v82, v57, 16, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[91:94], v[75:78], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v58, v105, v58, 0xc0c0004
	v_perm_b32 v56, v104, v56, 0xc0c0004
	ds_load_u8 v103, v10 offset:1440
	ds_load_u8 v104, v10 offset:1408
	ds_load_u8 v105, v10 offset:1504
	ds_load_u8 v106, v10 offset:1472
	v_lshl_or_b32 v79, v58, 16, v56
	ds_load_u8 v55, v10 offset:1312
	ds_load_u8 v56, v10 offset:1280
	ds_load_u8 v57, v10 offset:1376
	ds_load_u8 v58, v10 offset:1344
	ds_load_u8 v60, v10 offset:1184
	ds_load_u8 v61, v10 offset:1152
	ds_load_u8 v62, v10 offset:1248
	ds_load_u8 v110, v10 offset:1216
	ds_load_u8 v139, v10 offset:1520
	ds_load_u8 v140, v10 offset:1488
	ds_load_u8 v141, v10 offset:1456
	ds_load_u8 v142, v10 offset:1424
	v_wmma_i32_16x16x16_iu8 v[47:54], v[99:102], v[79:82], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v61, v60, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v10 offset:1056
	ds_load_u8 v143, v10 offset:1024
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v10 offset:1120
	ds_load_u8 v144, v10 offset:1088
	ds_load_u8 v145, v10 offset:1392
	ds_load_u8 v146, v10 offset:1360
	ds_load_u8 v147, v10 offset:1328
	ds_load_u8 v148, v10 offset:1296
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v110, v62, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v144, v106, 0xc0c0004
	v_lshl_or_b32 v106, v105, 16, v103
	v_perm_b32 v60, v143, v104, 0xc0c0004
	ds_load_u8 v61, v10 offset:1952
	ds_load_u8 v62, v10 offset:1920
	ds_load_u8 v110, v10 offset:2016
	ds_load_u8 v143, v10 offset:1984
	v_lshl_or_b32 v105, v56, 16, v55
	v_lshl_or_b32 v104, v58, 16, v57
	v_lshl_or_b32 v103, v144, 16, v60
	ds_load_u8 v55, v10 offset:1824
	ds_load_u8 v56, v10 offset:1792
	ds_load_u8 v57, v10 offset:1888
	ds_load_u8 v58, v10 offset:1856
	ds_load_u8 v60, v10 offset:1696
	ds_load_u8 v144, v10 offset:1664
	ds_load_u8 v157, v10 offset:1760
	ds_load_u8 v158, v10 offset:1728
	ds_load_u8 v159, v59
	ds_load_u8 v160, v10 offset:2000
	ds_load_u8 v161, v10 offset:1968
	ds_load_u8 v162, v10 offset:1936
	v_wmma_i32_16x16x16_iu8 v[47:54], v[83:86], v[103:106], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v169, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v170, v58, v57, 0xc0c0004
	v_perm_b32 v59, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v144, v144, v60, 0xc0c0004
	v_perm_b32 v61, v143, v110, 0xc0c0004
	ds_load_u8 v62, v10 offset:1568
	ds_load_u8 v143, v10 offset:1536
	ds_load_u8 v163, v10 offset:1632
	ds_load_u8 v164, v10 offset:1600
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v10 offset:1648
	ds_load_u8 v175, v10 offset:1616
	ds_load_u8 v176, v10 offset:1584
	ds_load_u8 v10, v10 offset:1552
	v_lshl_or_b32 v110, v61, 16, v59
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v143, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[87:90], v[75:78], v[67:74] neg_lo:[1,1,0]
	v_perm_b32 v75, v109, v108, 0xc0c0004
	v_perm_b32 v76, v107, v138, 0xc0c0004
	v_perm_b32 v77, v114, v113, 0xc0c0004
	v_perm_b32 v78, v112, v111, 0xc0c0004
	v_perm_b32 v107, v118, v117, 0xc0c0004
	v_perm_b32 v108, v116, v115, 0xc0c0004
	v_perm_b32 v109, v121, v120, 0xc0c0004
	v_lshl_or_b32 v114, v76, 16, v75
	v_lshl_or_b32 v113, v78, 16, v77
	v_perm_b32 v115, v133, v132, 0xc0c0004
	v_lshl_or_b32 v112, v108, 16, v107
	v_lshl_or_b32 v111, v11, 16, v109
	v_perm_b32 v11, v125, v124, 0xc0c0004
	v_perm_b32 v107, v123, v159, 0xc0c0004
	v_perm_b32 v108, v129, v128, 0xc0c0004
	v_perm_b32 v109, v127, v126, 0xc0c0004
	v_perm_b32 v116, v131, v130, 0xc0c0004
	v_perm_b32 v117, v137, v136, 0xc0c0004
	v_perm_b32 v118, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[95:98], v[79:82], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[111:114], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v107, 16, v11
	v_lshl_or_b32 v93, v109, 16, v108
	v_lshl_or_b32 v92, v116, 16, v115
	v_lshl_or_b32 v91, v118, 16, v117
	v_perm_b32 v11, v142, v141, 0xc0c0004
	v_perm_b32 v107, v140, v139, 0xc0c0004
	v_perm_b32 v108, v148, v147, 0xc0c0004
	v_perm_b32 v109, v146, v145, 0xc0c0004
	v_perm_b32 v115, v152, v151, 0xc0c0004
	v_perm_b32 v116, v150, v149, 0xc0c0004
	v_perm_b32 v117, v156, v155, 0xc0c0004
	v_perm_b32 v118, v154, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[91:94], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v107, 16, v11
	v_lshl_or_b32 v101, v109, 16, v108
	v_lshl_or_b32 v100, v116, 16, v115
	v_lshl_or_b32 v99, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[67:74], v[87:90], v[111:114], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_perm_b32 v11, v162, v161, 0xc0c0004
	v_perm_b32 v87, v174, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[83:86], v[99:102], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v83, v160, v122, 0xc0c0004
	v_perm_b32 v84, v168, v167, 0xc0c0004
	v_perm_b32 v85, v166, v165, 0xc0c0004
	v_perm_b32 v88, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v176, 0xc0c0004
	v_perm_b32 v89, v175, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[95:98], v[91:94], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v170, 16, v169
	v_lshl_or_b32 v108, v157, 16, v144
	v_lshl_or_b32 v107, v163, 16, v143
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[103:106], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v83, 16, v11
	v_lshl_or_b32 v85, v85, 16, v84
	v_lshl_or_b32 v84, v88, 16, v87
	v_lshl_or_b32 v83, v89, 16, v10
	v_wmma_i32_16x16x16_iu8 v[67:74], v[63:66], v[99:102], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[5:8], v[107:110], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[1:4], v[107:110], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[5:8], v[83:86], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[1:4], v[83:86], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v47
	v_cvt_f32_i32_e32 v2, v48
	v_cvt_f32_i32_e32 v3, v49
	v_cvt_f32_i32_e32 v4, v50
	v_cvt_f32_i32_e32 v10, v51
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v47, v53
	v_cvt_f32_i32_e32 v48, v54
	v_cvt_f32_i32_e32 v50, v55
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v52, v57
	v_cvt_f32_i32_e32 v53, v58
	v_cvt_f32_i32_e32 v54, v59
	v_cvt_f32_i32_e32 v55, v60
	v_cvt_f32_i32_e32 v56, v61
	v_cvt_f32_i32_e32 v58, v62
	v_cvt_f32_i32_e32 v59, v75
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
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v5, s27, v13
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s16
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v2, v46, v2 :: v_dual_lshlrev_b32 v5, 1, v5
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v6, s26, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v1, v25, v1
	v_add_f32_e32 v8, v41, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v7, 32, v5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v75, 1, v14
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v1, s2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v49, v5, s[28:31], 0 offen
	buffer_load_u16 v57, v7, s[28:31], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v7, v42, v11
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v5, v6, s[28:31], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v6, v43, v10
	v_dual_add_f32 v10, v40, v48 :: v_dual_add_f32 v47, v38, v51
	v_dual_add_f32 v11, v39, v50 :: v_dual_add_f32 v48, v37, v52
	v_dual_add_f32 v51, v35, v54 :: v_dual_add_f32 v50, v36, v53
	v_dual_add_f32 v53, v33, v56 :: v_dual_add_f32 v52, v34, v55
	v_dual_add_f32 v54, v32, v58 :: v_dual_add_f32 v55, v31, v59
	v_add_f32_e32 v56, v30, v60
	v_dual_add_f32 v58, v29, v61 :: v_dual_add_f32 v61, v26, v64
	v_dual_add_f32 v59, v28, v62 :: v_dual_add_f32 v60, v27, v63
	v_dual_add_f32 v62, v24, v65 :: v_dual_add_f32 v63, v23, v66
	v_dual_add_f32 v64, v22, v67 :: v_dual_add_f32 v65, v21, v68
	v_add_f32_e32 v66, v20, v69
	v_dual_add_f32 v68, v18, v71 :: v_dual_lshlrev_b32 v9, 5, v9
	v_dual_add_f32 v69, v17, v72 :: v_dual_mov_b32 v76, 0x7632
	v_dual_add_f32 v67, v19, v70 :: v_dual_add_f32 v70, v16, v73
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v73, 16, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v71, v15, v74 :: v_dual_mov_b32 v74, 0x5410
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v8, s2
	v_cndmask_b32_e64 v40, v40, v10, s2
	v_cndmask_b32_e64 v39, v39, v11, s2
	v_cndmask_b32_e64 v38, v38, v47, s2
	v_cndmask_b32_e64 v37, v37, v48, s2
	v_cndmask_b32_e64 v36, v36, v50, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v19, v67, s2
	v_cndmask_b32_e64 v48, v18, v68, s2
	v_cndmask_b32_e64 v50, v17, v69, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v45, v3 :: v_dual_add_f32 v4, v44, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v2, s2
	v_cndmask_b32_e64 v43, v43, v6, s2
	v_cndmask_b32_e64 v42, v42, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v45, v45, v3, s2
	v_cndmask_b32_e64 v44, v44, v4, s2
	v_cndmask_b32_e64 v35, v35, v51, s2
	v_cndmask_b32_e64 v28, v28, v59, s2
	v_cndmask_b32_e64 v22, v22, v64, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v13, s25, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v62, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s27, s27, s25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v56, s2
	v_cndmask_b32_e64 v29, v29, v58, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v51, s27, s26, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v52, s2
	v_cndmask_b32_e64 v32, v32, v54, s2
	v_cndmask_b32_e64 v23, v23, v63, s2
	v_cndmask_b32_e64 v21, v21, v65, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v52, v51, v13, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v53, s2
	v_cndmask_b32_e64 v31, v31, v55, s2
	v_cndmask_b32_e64 v26, v26, v61, s2
	v_cndmask_b32_e64 v16, v16, v70, s2
	v_cndmask_b32_e64 v15, v15, v71, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s38, s30
	s_mov_b32 s33, 0x76543210
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, s31
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v72, 2, v14
	v_lshl_add_u32 v14, v14, 1, 0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v0, 0, v72, v9
	v_lshl_add_u32 v0, v12, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v27, v60, s2
	v_cndmask_b32_e64 v27, v20, v66, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v14 offset:512
	ds_load_b128 v[17:20], v14 offset:528
	ds_load_b128 v[0:3], v14
	ds_load_b128 v[4:7], v14 offset:16
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v14, s25, 4, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v51, v51, v14, 1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v64, v17, v49
	v_mul_f32_e32 v62, v10, v49
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v53, v1, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v35, v35, v64 :: v_dual_mul_f32 v60, v8, v49
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v37, v37, v62 :: v_dual_mul_f32 v58, v6, v49
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s11, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v39, v39, v60 :: v_dual_mul_f32 v56, v4, v49
	v_dual_mul_f32 v41, v41, v58 :: v_dual_mul_f32 v54, v2, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s9, v37, v37
	v_cmp_o_f32_e64 s7, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v43, v43, v56 :: v_dual_mul_f32 v14, v0, v49
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v13, 16, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v41, v41
	v_cmp_o_f32_e64 s3, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v14, v25, v14
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v2, v2, v13
	v_mul_f32_e32 v63, v11, v49
	v_mul_f32_e32 v11, v11, v13
	v_mul_f32_e32 v4, v4, v13
	v_mul_f32_e32 v17, v17, v13
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v29, v2 :: v_dual_mul_f32 v59, v7, v49
	v_mul_f32_e32 v36, v36, v63
	v_mul_f32_e32 v11, v47, v11
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v65, v18, v49 :: v_dual_mul_f32 v4, v12, v4
	v_mul_f32_e32 v18, v18, v13
	v_mul_f32_e32 v66, v19, v49
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v12, v48, v17
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v55, v3, v49 :: v_dual_mul_f32 v40, v40, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v17, v50, v18 :: v_dual_mul_f32 v0, v0, v13
	v_mul_f32_e32 v33, v33, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v57, v5, v49 :: v_dual_mul_f32 v44, v44, v55
	v_dual_mul_f32 v61, v9, v49 :: v_dual_mul_f32 v0, v31, v0
	v_mul_f32_e32 v6, v6, v13
	v_mul_f32_e32 v1, v1, v13
	v_mul_f32_e32 v7, v7, v13
	v_mul_f32_e32 v8, v8, v13
	v_mul_f32_e32 v9, v9, v13
	v_mul_f32_e32 v10, v10, v13
	v_mul_f32_e32 v5, v5, v13
	v_mul_f32_e32 v19, v19, v13
	v_mul_f32_e32 v3, v3, v13
	v_mul_f32_e32 v13, v20, v13
	v_dual_mul_f32 v49, v20, v49 :: v_dual_mul_f32 v8, v22, v8
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v25, v45, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v6, v24, v6 :: v_dual_mul_f32 v13, v15, v13
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_bfe_u32 v15, v14, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v21, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v48, v0, 16, 1
	v_bfe_u32 v54, v4, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v16, v16, v19
	v_mul_f32_e32 v3, v28, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_bfe_u32 v50, v2, 16, 1
	v_add3_u32 v14, v14, v15, 0x7fff
	v_cmp_o_f32_e64 s15, v0, v0
	v_cmp_o_f32_e64 s19, v4, v4
	v_bfe_u32 v56, v6, 16, 1
	v_bfe_u32 v58, v8, 16, 1
	v_bfe_u32 v59, v9, 16, 1
	v_bfe_u32 v62, v12, 16, 1
	v_bfe_u32 v63, v17, 16, 1
	v_add3_u32 v0, v0, v48, 0x7fff
	v_add3_u32 v4, v4, v54, 0x7fff
	v_cmp_o_f32_e64 s17, v2, v2
	v_add3_u32 v2, v2, v50, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v20, v46, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v53, v3, 16, 1
	v_cmp_o_f32_e64 s21, v6, v6
	v_cmp_o_f32_e64 s23, v8, v8
	v_cmp_o_f32_e64 s24, v9, v9
	v_cmp_o_f32_e64 s27, v12, v12
	v_cmp_o_f32_e64 s28, v17, v17
	v_add3_u32 v6, v6, v56, 0x7fff
	v_add3_u32 v8, v8, v58, 0x7fff
	v_add3_u32 v9, v9, v59, 0x7fff
	v_add3_u32 v12, v12, v62, 0x7fff
	v_add3_u32 v17, v17, v63, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s15
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s19
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v30, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s18, v3, v3
	v_add3_u32 v3, v3, v53, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s21
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s23
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s24
	v_cndmask_b16 v6.l, 0x7fff, v12.h, s27
	v_cndmask_b16 v6.h, 0x7fff, v17.h, s28
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v32, v32, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v49, v1, 16, 1
	v_cmp_o_f32_e64 s16, v1, v1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v7, v23, v7
	v_dual_mul_f32 v10, v27, v10 :: v_dual_mul_f32 v5, v26, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v1, v1, v49, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s17
	v_bfe_u32 v19, v25, 16, 1
	v_bfe_u32 v21, v44, 16, 1
	v_bfe_u32 v22, v43, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s16
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s18
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v42, v42, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v24, v41, 16, 1
	v_bfe_u32 v26, v40, 16, 1
	v_bfe_u32 v57, v7, 16, 1
	v_cndmask_b32_e32 v17, 0x1054, v74, vcc_lo
	v_bfe_u32 v18, v20, 16, 1
	v_bfe_u32 v23, v42, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v38, v38, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v20, v20
	v_cmp_o_f32_e64 s1, v25, v25
	v_cmp_o_f32_e64 s2, v44, v44
	v_cmp_o_f32_e64 s6, v40, v40
	v_bfe_u32 v55, v5, 16, 1
	v_cmp_o_f32_e64 s22, v7, v7
	v_bfe_u32 v60, v10, 16, 1
	v_bfe_u32 v61, v11, 16, 1
	v_add3_u32 v15, v20, v18, 0x7fff
	v_add3_u32 v18, v25, v19, 0x7fff
	v_add3_u32 v19, v44, v21, 0x7fff
	v_add3_u32 v20, v43, v22, 0x7fff
	v_add3_u32 v21, v42, v23, 0x7fff
	v_add3_u32 v22, v41, v24, 0x7fff
	v_add3_u32 v23, v40, v26, 0x7fff
	v_add3_u32 v7, v7, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v5, v5
	v_cmp_o_f32_e64 s25, v10, v10
	v_cmp_o_f32_e64 s26, v11, v11
	v_add3_u32 v5, v5, v55, 0x7fff
	v_add3_u32 v10, v10, v60, 0x7fff
	v_add3_u32 v11, v11, v61, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v15.h, s0
	v_cndmask_b16 v15.l, 0x7fff, v18.h, s1
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s2
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v23.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s22
	v_bfe_u32 v64, v16, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s20
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s25
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s26
	v_cndmask_b32_e32 v10, v19, v15, vcc_lo
	v_cndmask_b32_e32 v11, v15, v19, vcc_lo
	v_cndmask_b32_e32 v19, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_cmp_o_f32_e64 s4, v42, v42
	v_cmp_o_f32_e64 s29, v16, v16
	v_add3_u32 v16, v16, v64, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s3
	v_cmp_o_f32_e64 s30, v13, v13
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s4
	v_bfe_u32 v27, v39, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v16.h, s29
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v34, v34, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v65, v13, 16, 1
	v_cndmask_b32_e32 v8, v18, v14, vcc_lo
	v_dual_cndmask_b32 v9, v14, v18 :: v_dual_cndmask_b32 v18, 0x3276, v76
	v_bfe_u32 v29, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v13, v13, v65, 0x7fff
	v_bfe_u32 v30, v36, 16, 1
	v_bfe_u32 v31, v35, 16, 1
	v_lshl_or_b32 v3, v18, 8, v18
	v_bfe_u32 v46, v33, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v13.h, s30
	v_cndmask_b32_e32 v16, v2, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v2, vcc_lo
	v_lshl_or_b32 v2, v17, 8, v17
	v_cndmask_b32_e32 v17, v6, v4, vcc_lo
	v_bfe_u32 v47, v32, 16, 1
	v_and_b32_e32 v3, 0x760076, v3
	v_bfe_u32 v28, v38, 16, 1
	v_dual_cndmask_b32 v18, v7, v5 :: v_dual_cndmask_b32 v5, v5, v7
	v_bfe_u32 v45, v34, 16, 1
	v_cmp_o_f32_e64 s10, v36, v36
	v_cmp_o_f32_e64 s13, v33, v33
	v_cmp_o_f32_e64 s14, v32, v32
	v_add3_u32 v24, v39, v27, 0x7fff
	v_add3_u32 v25, v38, v28, 0x7fff
	v_add3_u32 v26, v37, v29, 0x7fff
	v_add3_u32 v27, v36, v30, 0x7fff
	v_add3_u32 v28, v35, v31, 0x7fff
	v_add3_u32 v30, v33, v46, 0x7fff
	v_add3_u32 v31, v32, v47, 0x7fff
	v_cmp_o_f32_e64 s8, v38, v38
	v_cmp_o_f32_e64 s12, v34, v34
	v_add3_u32 v29, v34, v45, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v26.h, s9
	v_cndmask_b16 v21.h, 0x7fff, v27.h, s10
	v_cndmask_b16 v23.l, 0x7fff, v30.h, s13
	v_cndmask_b16 v23.h, 0x7fff, v31.h, s14
	v_and_b32_e32 v2, 0x540054, v2
	v_cndmask_b16 v20.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v25.h, s8
	v_cndmask_b16 v22.l, 0x7fff, v28.h, s11
	v_cndmask_b16 v22.h, 0x7fff, v29.h, s12
	v_cndmask_b32_e32 v15, v21, v23, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e32 v4, v4, v6, vcc_lo
	v_dual_cndmask_b32 v13, v20, v22 :: v_dual_cndmask_b32 v12, v22, v20
	v_permlanex16_b32 v6, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x5040504, v2
	v_and_b32_e32 v20, 0x7060706, v3
	v_cndmask_b32_e32 v14, v23, v21, vcc_lo
	v_permlanex16_b32 v9, v13, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v1, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v4, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v5, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v15
	v_perm_b32 v1, v6, v8, v20
	v_perm_b32 v2, v7, v10, v15
	v_perm_b32 v3, v7, v10, v20
	v_perm_b32 v4, v9, v12, v15
	v_perm_b32 v5, v9, v12, v20
	v_perm_b32 v6, v11, v14, v15
	v_perm_b32 v7, v11, v14, v20
	v_perm_b32 v8, v13, v16, v15
	v_perm_b32 v9, v13, v16, v20
	v_perm_b32 v10, v21, v19, v15
	v_perm_b32 v11, v21, v19, v20
	v_perm_b32 v12, v22, v17, v15
	v_perm_b32 v13, v22, v17, v20
	v_perm_b32 v14, v23, v18, v15
	v_perm_b32 v15, v23, v18, v20
	s_clause 0x3
	buffer_store_b128 v[0:3], v52, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v52, s[36:39], 0 offen offset:256
	buffer_store_b128 v[8:11], v51, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v51, s[36:39], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 253
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 253
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14040
; TotalNumSgprs: 42
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 253
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     253
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
