	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v18, 0xf0, v0
	v_and_b32_e32 v17, 15, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v41, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v18
	v_lshlrev_b32_e32 v2, 2, v17
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s27, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v17, 4, v4
	v_mad_u64_u32 v[10:11], null, s27, 3, v[9:10]
	v_lshl_add_u32 v12, s27, 1, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s13
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 4, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s12, v1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	s_mov_b64 s[28:29], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s22, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s22, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s12, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s13, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s14, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s14, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s27, s30
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s2, 4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s2, s3, 31
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s12, s26, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s2, 25
.Ltmp19:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v11, v1, v2, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s3, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s33, s15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s30, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v9
	v_add_nc_u32_e32 v4, s12, v12
	v_add_nc_u32_e32 v5, s12, v10
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s27, 6
	v_add_nc_u32_e32 v19, s27, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v5, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_add_i32 s34, s30, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v39, v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v4, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v27, s12, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v19, s2
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s34, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v28, s12, v10
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v1, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v27, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v28, s3
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v4, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v9
	s_mov_b32 s12, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s27, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_clause 0x1
	buffer_load_b128 v[35:38], v2, s[20:23], 0 offen
	buffer_load_b128 v[51:54], v4, s[20:23], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b32 v40, v1, s[4:7], 0 offen
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v42, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v4, 0x420, v1
	v_and_b32_e32 v1, 14, v0
	v_lshlrev_b32_e32 v2, 6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v43, v41, v42
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v44, v4, v3
	v_lshlrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v4, 5, v0
	v_and_b32_e32 v41, 8, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v55, 0, v43
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v44, v1, 10, v44
	v_and_b32_e32 v42, 32, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v45, 0x90, v44
	v_xor_b32_e32 v46, 0x120, v44
	v_xor_b32_e32 v47, 0x1b0, v44
	v_xor_b32_e32 v48, 0x210, v44
	v_add_nc_u32_e32 v56, 0, v44
	v_xor_b32_e32 v49, 0x330, v44
	v_xor_b32_e32 v50, 0x3a0, v44
	v_add_nc_u32_e32 v57, 0, v45
	v_add_nc_u32_e32 v58, 0, v46
	v_add_nc_u32_e32 v59, 0, v47
	v_add_nc_u32_e32 v60, 0, v48
	v_add_nc_u32_e32 v61, 0, v49
	v_add_nc_u32_e32 v62, 0, v50
	v_add_nc_u32_e32 v63, 0x4000, v56
	v_add_nc_u32_e32 v64, 0x4000, v57
	v_add_nc_u32_e32 v65, 0x4000, v58
	v_add_nc_u32_e32 v66, 0x4000, v59
	v_add_nc_u32_e32 v67, 0x4000, v60
	v_add_nc_u32_e32 v68, 0x4000, v61
	v_add_nc_u32_e32 v69, 0x4000, v62
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v55, v39 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v39, v13, v5, 0x4000501
	v_perm_b32 v5, v13, v5, 0x6020703
	v_perm_b32 v13, v14, v6, 0x4000501
	v_perm_b32 v6, v14, v6, 0x6020703
	v_perm_b32 v14, v15, v7, 0x4000501
	v_perm_b32 v7, v15, v7, 0x6020703
	v_perm_b32 v15, v16, v8, 0x4000501
	v_perm_b32 v8, v16, v8, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v16, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v31, v27, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v34, v30, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	v_perm_b32 v34, v39, v16, 0x7060302
	v_perm_b32 v16, v39, v16, 0x5040100
	v_perm_b32 v39, v5, v19, 0x7060302
	v_perm_b32 v5, v5, v19, 0x5040100
	v_perm_b32 v19, v13, v23, 0x7060302
	v_perm_b32 v13, v13, v23, 0x5040100
	v_perm_b32 v23, v6, v20, 0x7060302
	v_perm_b32 v6, v6, v20, 0x5040100
	v_perm_b32 v20, v14, v24, 0x7060302
	v_perm_b32 v14, v14, v24, 0x5040100
	v_perm_b32 v24, v7, v21, 0x7060302
	v_perm_b32 v7, v7, v21, 0x5040100
	v_perm_b32 v21, v15, v25, 0x7060302
	v_perm_b32 v15, v15, v25, 0x5040100
	v_perm_b32 v25, v8, v22, 0x7060302
	v_perm_b32 v8, v8, v22, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v22, v51, v35, 0x4000501
	v_perm_b32 v35, v51, v35, 0x6020703
	v_perm_b32 v51, v52, v36, 0x4000501
	v_perm_b32 v36, v52, v36, 0x6020703
	v_perm_b32 v52, v53, v37, 0x4000501
	v_perm_b32 v37, v53, v37, 0x6020703
	v_perm_b32 v53, v54, v38, 0x4000501
	v_perm_b32 v38, v54, v38, 0x6020703
	ds_store_2addr_b32 v56, v34, v16 offset1:16
	ds_store_2addr_b32 v57, v39, v5 offset1:16
	ds_store_2addr_b32 v58, v19, v13 offset1:16
	ds_store_2addr_b32 v59, v23, v6 offset1:16
	ds_store_2addr_b32 v60, v20, v14 offset1:16
	ds_store_2addr_b32 v56, v24, v7 offset0:160 offset1:176
	ds_store_2addr_b32 v61, v21, v15 offset1:16
	ds_store_2addr_b32 v62, v25, v8 offset1:16
	v_perm_b32 v5, v26, v22, 0x7060302
	v_perm_b32 v6, v26, v22, 0x5040100
	v_perm_b32 v7, v27, v35, 0x7060302
	v_perm_b32 v8, v27, v35, 0x5040100
	v_perm_b32 v13, v31, v51, 0x7060302
	v_perm_b32 v14, v31, v51, 0x5040100
	v_perm_b32 v15, v28, v36, 0x7060302
	v_perm_b32 v16, v28, v36, 0x5040100
	v_perm_b32 v19, v32, v52, 0x7060302
	v_perm_b32 v20, v32, v52, 0x5040100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v40 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v21, v29, v37, 0x7060302
	v_perm_b32 v22, v29, v37, 0x5040100
	v_perm_b32 v23, v33, v53, 0x7060302
	v_perm_b32 v24, v33, v53, 0x5040100
	v_perm_b32 v25, v30, v38, 0x7060302
	v_perm_b32 v26, v30, v38, 0x5040100
	ds_store_2addr_b32 v63, v5, v6 offset1:16
	ds_store_2addr_b32 v64, v7, v8 offset1:16
	ds_store_2addr_b32 v65, v13, v14 offset1:16
	ds_store_2addr_b32 v66, v15, v16 offset1:16
	ds_store_2addr_b32 v67, v19, v20 offset1:16
	ds_store_2addr_b32 v63, v21, v22 offset0:160 offset1:176
	ds_store_2addr_b32 v68, v23, v24 offset1:16
	ds_store_2addr_b32 v69, v25, v26 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v51, 48, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x1800, v4
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v5, 32, v0
	s_mov_b32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v37, v17, 6, v51
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_or_b32 v52, 0x1c0, v2, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v40, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v38, 48, v37
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr52
.LBB0_3:                                ; %Flow42
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v7, s26, v17
	s_ashr_i32 s0, s14, 7
	v_and_b32_e32 v8, 1, v0
	v_or_b32_e32 v35, s33, v0
	v_lshlrev_b32_e32 v14, 2, v18
	v_mul_lo_u32 v36, v7, s0
	v_lshlrev_b32_e32 v15, 1, v1
	v_lshlrev_b32_e32 v16, 5, v8
	v_lshlrev_b32_e32 v13, 1, v18
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s44, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v51, 48, v3
	v_and_b32_e32 v3, 0x1800, v4
	v_and_b32_e32 v1, 0x210, v1
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v20, 0, v14, v16
	v_mov_b32_e32 v19, 0
	v_and_or_b32 v52, 0x1c0, v2, v3
	v_xor_b32_e32 v1, v1, v51
	v_and_b32_e32 v2, 0x420, v4
.Ltmp23:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v53, s27, v9
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v59, 0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v52, v1
	v_add_nc_u32_e32 v58, v20, v15
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v28, 0
	v_xor_b32_e32 v54, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_lshl_or_b32 v37, v17, 6, v51
	v_mov_b32_e32 v3, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v55, 16, v54
	v_xor_b32_e32 v56, 32, v54
	v_xor_b32_e32 v57, 48, v54
	v_xor_b32_e32 v40, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v38, 48, v37
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v22, 0
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v33, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s11, s34, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s31, 1
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s35, 0, 0x4000
	s_add_i32 s44, s44, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_mov_b32 s14, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s30, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s11, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v60, s34, v11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 25
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s34, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v136, v60, s[4:7], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v60, v36, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s27
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v61, s16, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v65, v35, s14, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v62, s16, v53
	v_add_nc_u32_e32 v63, s16, v12
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[76:79], v61, s[20:23], 0 offen
	buffer_load_b128 v[80:83], v62, s[20:23], 0 offen
	buffer_load_b128 v[84:87], v63, s[20:23], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v61, 0x80000000, v65, vcc_lo
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v64, s16, v10
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v137, v60, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v138, v61, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[88:91], v64, s[20:23], 0 offen
	s_mov_b32 s14, s10
	s_mov_b32 s10, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v60, s14, v37
	v_add_nc_u32_e32 v61, s14, v40
	s_mov_b32 s1, s12
	v_add_nc_u32_e32 v62, s14, v39
	v_add_nc_u32_e32 v63, s14, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, s1, v54
	v_add_nc_u32_e32 v65, s1, v55
	v_add_nc_u32_e32 v66, s1, v56
	v_add_nc_u32_e32 v67, s1, v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[92:95], v60
	ds_load_b128 v[96:99], v61
	ds_load_b128 v[100:103], v62
	ds_load_b128 v[104:107], v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[68:71], v64
	ds_load_b128 v[108:111], v64 offset:8192
	ds_load_b128 v[112:115], v65
	ds_load_b128 v[116:119], v65 offset:8192
	ds_load_b128 v[120:123], v66
	ds_load_b128 v[124:127], v66 offset:8192
	ds_load_b128 v[128:131], v67
	ds_load_b128 v[132:135], v67 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s31, 1
	s_mov_b32 s12, s35
	s_cmp_lt_i32 s1, 2
	s_cselect_b32 s31, s1, 0
	s_add_i32 s14, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s31, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s31, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s16, s1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s35, s15, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s16, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[68:71], v[92:95], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[108:111], v[92:95], v[1:8] neg_lo:[1,1,0]
	s_mov_b32 s13, s14
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[112:115], v[96:99], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[116:119], v[96:99], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[120:123], v[100:103], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[124:127], v[100:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[128:131], v[104:107], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[132:135], v[104:107], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v97, v65
	v_cvt_f32_i32_e32 v98, v66
	v_cvt_f32_i32_e32 v99, v67
	v_cvt_f32_i32_e32 v100, v68
	v_cvt_f32_i32_e32 v101, v69
	v_cvt_f32_i32_e32 v102, v70
	v_cvt_f32_i32_e32 v103, v71
	v_cvt_f32_i32_e32 v104, v72
	v_cvt_f32_i32_e32 v105, v73
	v_cvt_f32_i32_e32 v106, v74
	v_cvt_f32_i32_e32 v107, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v60, v80, v76, 0x4000501
	v_perm_b32 v62, v80, v76, 0x6020703
	v_perm_b32 v64, v81, v77, 0x4000501
	v_perm_b32 v66, v81, v77, 0x6020703
	v_perm_b32 v68, v82, v78, 0x4000501
	v_perm_b32 v70, v82, v78, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v88, v84, 0x4000501
	v_perm_b32 v63, v88, v84, 0x6020703
	v_perm_b32 v65, v89, v85, 0x4000501
	v_perm_b32 v67, v89, v85, 0x6020703
	v_perm_b32 v69, v90, v86, 0x4000501
	v_perm_b32 v71, v90, v86, 0x6020703
	v_perm_b32 v72, v83, v79, 0x4000501
	v_perm_b32 v73, v91, v87, 0x4000501
	v_perm_b32 v74, v83, v79, 0x6020703
	v_perm_b32 v75, v91, v87, 0x6020703
	v_perm_b32 v76, v61, v60, 0x7060302
	v_perm_b32 v77, v61, v60, 0x5040100
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v60, 16, v138
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v78, v63, v62, 0x7060302
	v_perm_b32 v79, v63, v62, 0x5040100
	v_perm_b32 v80, v65, v64, 0x7060302
	v_perm_b32 v81, v65, v64, 0x5040100
	v_perm_b32 v82, v67, v66, 0x7060302
	v_perm_b32 v83, v67, v66, 0x5040100
	v_perm_b32 v84, v69, v68, 0x7060302
	v_perm_b32 v85, v69, v68, 0x5040100
	v_perm_b32 v86, v71, v70, 0x7060302
	v_perm_b32 v87, v71, v70, 0x5040100
	v_perm_b32 v88, v73, v72, 0x7060302
	v_perm_b32 v89, v73, v72, 0x5040100
	v_perm_b32 v90, v75, v74, 0x7060302
	v_perm_b32 v91, v75, v74, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v58, v60 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v59 offset:34816
	ds_load_b128 v[64:67], v59 offset:34832
	ds_load_b128 v[68:71], v59 offset:35328
	ds_load_b128 v[72:75], v59 offset:35344
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v108, 16, v137
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v60, v60, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v19, v60, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v68, v68, v108 :: v_dual_add_nc_u32 v139, s16, v43
	v_dual_mul_f32 v70, v70, v108 :: v_dual_add_nc_u32 v141, s35, v45
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v73, v73, v108 :: v_dual_add_nc_u32 v142, s35, v46
	v_dual_mul_f32 v72, v72, v108 :: v_dual_add_nc_u32 v143, s35, v47
	v_dual_mul_f32 v74, v74, v108 :: v_dual_add_nc_u32 v145, s35, v49
	v_dual_mul_f32 v75, v75, v108 :: v_dual_add_nc_u32 v146, s35, v50
	v_mul_f32_e32 v61, v61, v108
	v_mul_f32_e32 v62, v62, v108
	v_mul_f32_e32 v63, v63, v108
	v_mul_f32_e32 v64, v64, v108
	v_mul_f32_e32 v65, v65, v108
	v_mul_f32_e32 v66, v66, v108
	v_mul_f32_e32 v67, v67, v108
	v_mul_f32_e32 v69, v69, v108
	v_mul_f32_e32 v71, v71, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v25, v66, v98 :: v_dual_add_nc_u32 v140, s35, v44
	v_dual_fmac_f32 v29, v70, v102 :: v_dual_add_nc_u32 v144, s35, v48
	v_dual_fmac_f32 v20, v61, v93 :: v_dual_fmac_f32 v21, v62, v94
	v_dual_fmac_f32 v22, v63, v95 :: v_dual_fmac_f32 v23, v64, v96
	v_dual_fmac_f32 v24, v65, v97 :: v_dual_fmac_f32 v27, v68, v100
	v_dual_fmac_f32 v26, v67, v99 :: v_dual_fmac_f32 v31, v72, v104
	v_dual_fmac_f32 v28, v69, v101 :: v_dual_fmac_f32 v33, v75, v107
	v_fmac_f32_e32 v30, v71, v103
	v_fmac_f32_e32 v32, v73, v105
	v_fmac_f32_e32 v34, v74, v106
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v139, v136 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v140, v76, v77 offset1:16
	ds_store_2addr_b32 v141, v78, v79 offset1:16
	ds_store_2addr_b32 v142, v80, v81 offset1:16
	ds_store_2addr_b32 v143, v82, v83 offset1:16
	ds_store_2addr_b32 v144, v84, v85 offset1:16
	ds_store_2addr_b32 v140, v86, v87 offset0:160 offset1:176
	ds_store_2addr_b32 v145, v88, v89 offset1:16
	ds_store_2addr_b32 v146, v90, v91 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v6, v41 :: v_dual_mov_b32 v5, v42
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s35, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v51
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v51, 0
	v_or_b32_e32 v1, v52, v1
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v56, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v76, v1, v2
	v_mov_b32_e32 v57, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v77, 16, v76
	v_xor_b32_e32 v78, 32, v76
	v_xor_b32_e32 v79, 48, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s12, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v4, s10, v40
	v_add_nc_u32_e32 v5, s10, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[9:12], v1 offset:8192
	ds_load_b128 v[42:45], v1
	v_add_nc_u32_e32 v2, s12, v78
	v_add_nc_u32_e32 v3, s12, v77
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[54:57], v4
	ds_load_b128 v[58:61], v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[62:65], v2 offset:8192
	ds_load_b128 v[66:69], v2
	ds_load_b128 v[70:73], v3 offset:8192
	ds_load_b128 v[80:83], v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s10, v39
	v_add_nc_u32_e32 v2, s10, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v46, s12, v79
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[84:87], v1
	ds_load_b128 v[88:91], v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v46
	ds_load_b128 v[96:99], v46 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[42:45], v[58:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[9:12], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[80:83], v[54:57], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[70:73], v[54:57], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[66:69], v[84:87], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[62:65], v[84:87], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[92:95], v[88:91], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[96:99], v[88:91], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v43, v48
	v_cvt_f32_i32_e32 v44, v49
	v_cvt_f32_i32_e32 v45, v50
	v_cvt_f32_i32_e32 v47, v51
	v_cvt_f32_i32_e32 v48, v52
	v_cvt_f32_i32_e32 v49, v53
	v_cvt_f32_i32_e32 v50, v1
	v_cvt_f32_i32_e32 v51, v2
	v_cvt_f32_i32_e32 v52, v3
	v_cvt_f32_i32_e32 v53, v4
	v_cvt_f32_i32_e32 v54, v5
	v_cvt_f32_i32_e32 v55, v6
	v_cvt_f32_i32_e32 v56, v7
	v_cvt_f32_i32_e32 v57, v8
	v_cvt_f32_i32_e32 v46, v46
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s27
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v36, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v35, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v58, 0, v13
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v75, v1, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v14, v16
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v59, v1, v15
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v59, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v58 offset:34816
	ds_load_b128 v[5:8], v58 offset:34832
	ds_load_b128 v[9:12], v58 offset:35328
	ds_load_b128 v[13:16], v58 offset:35344
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v66, s35, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v40, s1, v40
	v_add_nc_u32_e32 v37, s1, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v74, s19 :: v_dual_add_nc_u32 v41, s35, v78
	v_dual_mov_b32 v72, s17 :: v_dual_add_nc_u32 v65, s35, v77
	v_mov_b32_e32 v71, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[88:91], v66 offset:8192
	ds_load_b128 v[92:95], v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v70, s15 :: v_dual_mov_b32 v69, s14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[96:99], v40
	ds_load_b128 v[100:103], v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[104:107], v65 offset:8192
	ds_load_b128 v[108:111], v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v68, s13 :: v_dual_add_nc_u32 v39, s1, v39
	v_dual_mov_b32 v73, s18 :: v_dual_add_nc_u32 v64, s35, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[60:63], v41 offset:8192
	ds_load_b128 v[84:87], v41
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v41, s1, v38
	ds_load_b128 v[37:40], v39
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v67, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v64
	ds_load_b128 v[120:123], v64 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[92:95], v[100:103], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[88:91], v[100:103], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[108:111], v[96:99], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[104:107], v[96:99], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[37:40], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[60:63], v[37:40], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[116:119], v[112:115], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[120:123], v[112:115], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v76
	v_cvt_f32_i32_e32 v60, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v61, v78
	v_cvt_f32_i32_e32 v62, v79
	v_cvt_f32_i32_e32 v63, v80
	v_cvt_f32_i32_e32 v64, v81
	v_cvt_f32_i32_e32 v65, v82
	v_cvt_f32_i32_e32 v66, v83
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s34, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s34, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, 0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v37.h, v75.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s27
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v36, v36, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v35, v35, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, s27, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v39, 0x5410 :: v_dual_and_b32 v38, 16, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v40, 0x7632 :: v_dual_mul_f32 v15, v15, v37
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v16, v37
	v_mul_f32_e32 v1, v1, v37
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s26, s27
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v18, 1, v18
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v17, s1, s33, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v56, v34
	v_fma_f32 v46, v1, v46, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v13, v37
	s_waitcnt lgkmcnt(0)
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v17, v17, v18, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v46, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v82.h, v37.l
	v_mov_b16_e32 v86.h, v37.l
	v_mov_b16_e32 v81.h, v37.l
	v_mov_b16_e32 v85.h, v37.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	v_mov_b16_e32 v78.h, v37.l
	v_mov_b16_e32 v84.h, v37.l
	v_mov_b16_e32 v77.h, v37.l
	v_mov_b16_e32 v83.h, v37.l
	v_mov_b16_e32 v16.h, v37.l
	v_mov_b16_e32 v80.h, v37.l
	v_mov_b16_e32 v79.h, v37.l
	v_mov_b16_e32 v75.h, v37.l
	v_mov_b16_e32 v76.h, v37.l
	v_mov_b16_e32 v87.h, v37.l
	v_mov_b16_e32 v88.h, v37.l
	s_mov_b32 s0, 0x76543210
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_and_b32 s25, s25, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v57, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v59, v1 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v33, v0, s2
	v_cndmask_b32_e64 v33, v34, v15, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v7, v37 :: v_dual_lshlrev_b32 v34, 16, v36
	v_mul_f32_e32 v6, v6, v37
	v_mul_f32_e32 v5, v5, v37
	v_mul_f32_e32 v4, v4, v37
	v_mul_f32_e32 v3, v3, v37
	v_mul_f32_e32 v2, v2, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v7, v48, v25
	v_fma_f32 v47, v6, v47, v24
	v_fma_f32 v45, v5, v45, v23
	v_fma_f32 v44, v4, v44, v22
	v_fma_f32 v43, v3, v43, v21
	v_fma_f32 v42, v2, v42, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v58 offset:34816
	ds_load_b128 v[4:7], v58 offset:34832
	v_mul_f32_e32 v14, v14, v37
	v_mul_f32_e32 v12, v12, v37
	v_mul_f32_e32 v11, v11, v37
	v_mul_f32_e32 v10, v10, v37
	v_mul_f32_e32 v9, v9, v37
	v_mul_f32_e32 v8, v8, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v54, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v42, s2
	v_cndmask_b32_e64 v25, v25, v48, s2
	v_cndmask_b32_e64 v23, v23, v45, s2
	v_cndmask_b32_e64 v24, v24, v47, s2
	v_cndmask_b32_e64 v31, v31, v13, s2
	v_cndmask_b32_e64 v21, v21, v43, s2
	v_cndmask_b32_e64 v22, v22, v44, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.h, v37.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v52, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v55, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v53, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v5, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v51, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v14, s2
	v_cndmask_b32_e64 v29, v29, v11, s2
	v_cndmask_b32_e64 v30, v30, v12, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v58 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v10, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v9, v50, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v8, v49, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v58 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v60, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v50, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v41, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v34
	v_mul_f32_e32 v4, v4, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v20, v1, s3
	v_cndmask_b32_e64 v26, v26, v49, s2
	v_cndmask_b32_e64 v0, v19, v0, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v65, v25
	v_fma_f32 v4, v4, v63, v23
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v61, v21
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v0, v0, v0 :: v_dual_mul_f32 v15, v15, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v12, v34
	v_mul_f32_e32 v13, v13, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v25, v6, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v64, v24
	v_fma_f32 v15, v15, v74, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v34
	v_mul_f32_e32 v9, v9, v34
	v_mul_f32_e32 v10, v10, v34
	v_mul_f32_e32 v11, v11, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v71, v31
	v_fma_f32 v8, v8, v67, v27
	v_fma_f32 v9, v9, v68, v28
	v_fma_f32 v10, v10, v69, v29
	v_fma_f32 v13, v13, v72, v32
	v_fma_f32 v11, v11, v70, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v27, v8, s3
	v_cndmask_b32_e64 v12, v31, v12, s3
	v_cndmask_b32_e64 v9, v28, v9, s3
	v_cndmask_b32_e64 v10, v29, v10, s3
	v_cndmask_b32_e64 v13, v32, v13, s3
	v_cndmask_b32_e64 v11, v30, v11, s3
	v_cndmask_b32_e64 v15, v18, v15, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v12, v12, v12
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v9, v9, v9
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v13, v13, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v62, v22
	v_fma_f32 v7, v7, v66, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v23, v4, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v8, 0, v8
	v_max_f32_e32 v12, 0, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v2, s3
	v_cndmask_b32_e64 v5, v24, v5, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, 0, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v22, v3, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v26, v7, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v12, v12
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v5, v5
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v9, v9, v9
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v73, v33
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v4, 0, v4
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v11, v11
	v_mul_f32_e32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v82.l, v8.h
	v_mov_b16_e32 v86.l, v12.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, 0, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v81.l, v9.h
	v_mov_b16_e32 v85.l, v13.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v33, v14, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v4, v4, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v26, 1, v82
	v_and_b32_e32 v30, 1, v86
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v25, 1, v81
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_and_b32 v29, 1, v85
	v_max_f32_e32 v1, 0, v1
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v78.l, v4.h
	v_add3_u32 v8, v8, v26, 0x7fff
	v_add3_u32 v12, v12, v30, 0x7fff
	v_mov_b16_e32 v84.l, v10.h
	v_mov_b16_e32 v77.l, v5.h
	v_add3_u32 v9, v9, v25, 0x7fff
	v_add3_u32 v13, v13, v29, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v83.l, v11.h
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v13.l, v12.h
	v_and_b32_e32 v22, 1, v78
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v3, 0, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v28, 1, v84
	v_and_b32_e32 v21, 1, v77
	v_mov_b16_e32 v16.l, v1.h
	v_dual_cndmask_b32 v8, v9, v13 :: v_dual_and_b32 v27, 1, v83
	v_add3_u32 v4, v4, v22, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v0, v0, v0 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v80.l, v6.h
	v_add3_u32 v10, v10, v28, 0x7fff
	v_add3_u32 v5, v5, v21, 0x7fff
	v_mov_b16_e32 v79.l, v7.h
	v_add3_u32 v11, v11, v27, 0x7fff
	v_mov_b16_e32 v5.l, v4.h
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v75.l, v3.h
	v_mov_b16_e32 v11.l, v10.h
	v_and_b32_e32 v24, 1, v80
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v1, v1, v16, 0x7fff
	v_and_b32_e32 v23, 1, v79
	v_mov_b16_e32 v76.l, v2.h
	v_and_b32_e32 v19, 1, v75
	v_add3_u32 v6, v6, v24, 0x7fff
	v_mov_b16_e32 v37.l, v0.h
	v_add3_u32 v7, v7, v23, 0x7fff
	v_mov_b16_e32 v88.l, v14.h
	v_add3_u32 v3, v3, v19, 0x7fff
	v_mov_b16_e32 v7.l, v6.h
	v_and_b32_e32 v20, 1, v76
	v_mov_b16_e32 v87.l, v15.h
	v_cndmask_b32_e32 v4, 0x1054, v39, vcc_lo
	v_cndmask_b32_e32 v6, 0x3276, v40, vcc_lo
	v_and_b32_e32 v32, 1, v88
	v_add3_u32 v2, v2, v20, 0x7fff
	v_and_b32_e32 v31, 1, v87
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v6, 8, v6
	v_add3_u32 v14, v14, v32, 0x7fff
	v_mov_b16_e32 v3.l, v2.h
	v_and_b32_e32 v18, 1, v37
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v0, v18, 0x7fff
	v_lshl_or_b32 v4, v4, 4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, v6, 4, v6
	v_mov_b16_e32 v1.l, v0.h
	v_add3_u32 v0, v15, v31, 0x7fff
	v_mov_b16_e32 v0.l, v14.h
	v_and_b32_e32 v10, 0x5040504, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v2, v5, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v5, vcc_lo
	v_cndmask_b32_e32 v5, v7, v3, vcc_lo
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_cndmask_b32_e32 v7, v13, v9, vcc_lo
	v_dual_cndmask_b32 v9, v0, v11 :: v_dual_cndmask_b32 v0, v11, v0
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 0x7060706, v6
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v2, v10
	v_perm_b32 v1, v1, v2, v11
	v_perm_b32 v2, v3, v5, v10
	v_perm_b32 v3, v3, v5, v11
	v_perm_b32 v4, v6, v7, v10
	v_perm_b32 v5, v6, v7, v11
	v_perm_b32 v6, v8, v9, v10
	v_perm_b32 v7, v8, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v17, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 147
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6736
; TotalNumSgprs: 47
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
