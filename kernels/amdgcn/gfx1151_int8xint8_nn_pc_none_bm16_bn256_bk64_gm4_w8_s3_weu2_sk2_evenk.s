	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v9, 0xf0, v0
	v_and_b32_e32 v10, 15, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v36, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v7, 2, v9
	v_lshlrev_b32_e32 v2, 2, v10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 15
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s29, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s28, s29, 3
	s_mov_b32 s15, 0x31027000
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v28, v10, 4, v3
	v_lshl_add_u32 v29, s29, 1, v28
	v_add_nc_u32_e32 v30, s28, v28
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
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_load_b32 s9, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	v_mul_lo_u32 v1, s9, v1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
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
	s_add_i32 s5, s9, 0x7f
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s6, s3, 6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s30, s9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v31, v1, v2, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s18, s2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s6, v31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v28
	v_add_nc_u32_e32 v3, s4, v29
	v_add_nc_u32_e32 v4, s4, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s29, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s7, s29, 7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s7
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_addk_i32 s6, 0x80
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v54, v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[24:27], 0 offen
	buffer_load_b128 v[12:15], v8, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	v_cndmask_b32_e64 v2, 0x80000000, v11, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s4, v29
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s6, v31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v24, s4, v30
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_load_b128 v[20:23], v2, s[24:27], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x17f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v11, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v8, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v24, s2
	s_clause 0x1
	buffer_load_b128 v[24:27], v2, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v8, s[24:27], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 14, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s29, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x1
	buffer_load_b128 v[46:49], v2, s[24:27], 0 offen
	buffer_load_b128 v[50:53], v8, s[24:27], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b32 v8, v1, s[12:15], 0 offen
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v37, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 0x420, v1
	v_lshlrev_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v38, v36, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v7
	v_and_b32_e32 v36, 8, v0
	v_and_b32_e32 v37, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, 0, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v39, v11, 10, v1
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v40, 0x90, v39
	v_xor_b32_e32 v41, 0x120, v39
	v_xor_b32_e32 v42, 0x1b0, v39
	v_xor_b32_e32 v43, 0x210, v39
	v_add_nc_u32_e32 v55, 0, v39
	v_xor_b32_e32 v44, 0x330, v39
	v_xor_b32_e32 v45, 0x3a0, v39
	v_add_nc_u32_e32 v56, 0, v40
	v_add_nc_u32_e32 v57, 0, v41
	v_add_nc_u32_e32 v58, 0, v42
	v_add_nc_u32_e32 v59, 0, v43
	v_add_nc_u32_e32 v60, 0, v44
	v_add_nc_u32_e32 v61, 0, v45
	v_add_nc_u32_e32 v62, 0x4000, v55
	v_add_nc_u32_e32 v63, 0x4000, v56
	v_add_nc_u32_e32 v64, 0x4000, v57
	v_add_nc_u32_e32 v65, 0x4000, v58
	v_add_nc_u32_e32 v66, 0x4000, v59
	v_add_nc_u32_e32 v67, 0x4000, v60
	v_add_nc_u32_e32 v68, 0x4000, v61
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v7, v54 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v54, v12, v3, 0x4000501
	v_perm_b32 v3, v12, v3, 0x6020703
	v_perm_b32 v12, v13, v4, 0x4000501
	v_perm_b32 v4, v13, v4, 0x6020703
	v_perm_b32 v13, v14, v5, 0x4000501
	v_perm_b32 v5, v14, v5, 0x6020703
	v_perm_b32 v14, v15, v6, 0x4000501
	v_perm_b32 v6, v15, v6, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v15, v20, v16, 0x4000501
	v_perm_b32 v16, v20, v16, 0x6020703
	v_perm_b32 v20, v21, v17, 0x4000501
	v_perm_b32 v17, v21, v17, 0x6020703
	v_perm_b32 v21, v22, v18, 0x4000501
	v_perm_b32 v18, v22, v18, 0x6020703
	v_perm_b32 v22, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v23, v32, v24, 0x4000501
	v_perm_b32 v24, v32, v24, 0x6020703
	v_perm_b32 v32, v33, v25, 0x4000501
	v_perm_b32 v25, v33, v25, 0x6020703
	v_perm_b32 v33, v34, v26, 0x4000501
	v_perm_b32 v26, v34, v26, 0x6020703
	v_perm_b32 v34, v35, v27, 0x4000501
	v_perm_b32 v27, v35, v27, 0x6020703
	v_perm_b32 v35, v54, v15, 0x7060302
	v_perm_b32 v15, v54, v15, 0x5040100
	v_perm_b32 v54, v3, v16, 0x7060302
	v_perm_b32 v3, v3, v16, 0x5040100
	v_perm_b32 v16, v12, v20, 0x7060302
	v_perm_b32 v12, v12, v20, 0x5040100
	v_perm_b32 v20, v4, v17, 0x7060302
	v_perm_b32 v4, v4, v17, 0x5040100
	v_perm_b32 v17, v13, v21, 0x7060302
	v_perm_b32 v13, v13, v21, 0x5040100
	v_perm_b32 v21, v5, v18, 0x7060302
	v_perm_b32 v5, v5, v18, 0x5040100
	v_perm_b32 v18, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v6, v19, 0x7060302
	v_perm_b32 v6, v6, v19, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v19, v50, v46, 0x4000501
	v_perm_b32 v46, v50, v46, 0x6020703
	v_perm_b32 v50, v51, v47, 0x4000501
	v_perm_b32 v47, v51, v47, 0x6020703
	v_perm_b32 v51, v52, v48, 0x4000501
	v_perm_b32 v48, v52, v48, 0x6020703
	v_perm_b32 v52, v53, v49, 0x4000501
	v_perm_b32 v49, v53, v49, 0x6020703
	ds_store_2addr_b32 v55, v35, v15 offset1:16
	ds_store_2addr_b32 v56, v54, v3 offset1:16
	ds_store_2addr_b32 v57, v16, v12 offset1:16
	ds_store_2addr_b32 v58, v20, v4 offset1:16
	ds_store_2addr_b32 v59, v17, v13 offset1:16
	ds_store_2addr_b32 v55, v21, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v60, v18, v14 offset1:16
	ds_store_2addr_b32 v61, v22, v6 offset1:16
	v_perm_b32 v3, v23, v19, 0x7060302
	v_perm_b32 v4, v23, v19, 0x5040100
	v_perm_b32 v5, v24, v46, 0x7060302
	v_perm_b32 v6, v24, v46, 0x5040100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v7, v8 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v7, v32, v50, 0x7060302
	v_perm_b32 v8, v32, v50, 0x5040100
	v_perm_b32 v12, v25, v47, 0x7060302
	v_perm_b32 v13, v25, v47, 0x5040100
	v_perm_b32 v14, v33, v51, 0x7060302
	v_perm_b32 v15, v33, v51, 0x5040100
	v_perm_b32 v16, v26, v48, 0x7060302
	v_perm_b32 v17, v26, v48, 0x5040100
	v_perm_b32 v18, v34, v52, 0x7060302
	v_perm_b32 v19, v34, v52, 0x5040100
	v_perm_b32 v20, v27, v49, 0x7060302
	v_perm_b32 v21, v27, v49, 0x5040100
	ds_store_2addr_b32 v62, v3, v4 offset1:16
	ds_store_2addr_b32 v63, v5, v6 offset1:16
	ds_store_2addr_b32 v64, v7, v8 offset1:16
	ds_store_2addr_b32 v65, v12, v13 offset1:16
	ds_store_2addr_b32 v66, v14, v15 offset1:16
	ds_store_2addr_b32 v62, v16, v17 offset0:160 offset1:176
	ds_store_2addr_b32 v67, v18, v19 offset1:16
	ds_store_2addr_b32 v68, v20, v21 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v46, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v47, 0x1800, v1
	v_and_b32_e32 v3, 8, v0
	v_and_b32_e32 v4, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v32, v10, 6, v46
	v_xor_b32_e32 v35, 16, v32
	v_xor_b32_e32 v34, 32, v32
	v_xor_b32_e32 v33, 48, v32
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s19, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr4
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s33, s5, 7
	s_add_i32 s0, s6, 0x80
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v3, 0x210, v3
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v46, 48, v2
	v_lshlrev_b32_e32 v2, 6, v0
	v_and_b32_e32 v47, 0x1800, v1
	v_bfe_i32 v1, v0, 5, 1
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v48, s29, v28
	v_xor_b32_e32 v3, v3, v46
	v_and_b32_e32 v2, 0x1c0, v2
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_and_b32_e32 v1, 0x420, v1
	v_mov_b32_e32 v27, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v2, v2, v3, v47
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v19, 0
	v_xor_b32_e32 v49, v2, v1
	v_mov_b32_e32 v1, s4
	v_lshl_or_b32 v32, v10, 6, v46
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v50, 16, v49
	v_xor_b32_e32 v51, 32, v49
	v_xor_b32_e32 v35, 16, v32
	v_xor_b32_e32 v34, 32, v32
	v_xor_b32_e32 v33, 48, v32
	v_xor_b32_e32 v52, 48, v49
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v14, 0
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s19, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s34, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s0, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s6, s29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v53, s6, v31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s18
	s_mov_b32 s6, s31
	v_add_nc_u32_e32 v54, s7, v28
	v_add_nc_u32_e32 v55, s7, v48
	v_add_nc_u32_e32 v56, s7, v29
	v_add_nc_u32_e32 v57, s7, v30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v129, v53, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[69:72], v54, s[24:27], 0 offen
	buffer_load_b128 v[73:76], v55, s[24:27], 0 offen
	buffer_load_b128 v[77:80], v56, s[24:27], 0 offen
	buffer_load_b128 v[81:84], v57, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v53, s6, v32
	v_add_nc_u32_e32 v54, s6, v35
	s_mov_b32 s31, s1
	s_mov_b32 s1, s4
	v_add_nc_u32_e32 v55, s6, v34
	v_add_nc_u32_e32 v56, s6, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, s1, v49
	v_add_nc_u32_e32 v58, s1, v50
	v_add_nc_u32_e32 v59, s1, v51
	v_add_nc_u32_e32 v60, s1, v52
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[85:88], v53
	ds_load_b128 v[89:92], v54
	ds_load_b128 v[93:96], v55
	ds_load_b128 v[97:100], v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[61:64], v57
	ds_load_b128 v[101:104], v57 offset:8192
	ds_load_b128 v[105:108], v58
	ds_load_b128 v[109:112], v58 offset:8192
	ds_load_b128 v[113:116], v59
	ds_load_b128 v[117:120], v59 offset:8192
	ds_load_b128 v[121:124], v60
	ds_load_b128 v[125:128], v60 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s34, 1
	s_mov_b32 s4, s19
	s_cmp_lt_i32 s7, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s34, s7, 0
	s_add_i32 s6, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s34, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s34, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s8, s1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s19, s7, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s8, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v131, s19, v39
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[101:104], v[85:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v134, s19, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[105:108], v[89:92], v[53:60] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[109:112], v[89:92], v[61:68] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v135, s19, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[113:116], v[93:96], v[53:60] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[117:120], v[93:96], v[61:68] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v136, s19, v44
	v_add_nc_u32_e32 v137, s19, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[121:124], v[97:100], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[125:128], v[97:100], v[61:68] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v12, v12, v53 :: v_dual_add_f32 v27, v27, v54
	v_dual_add_f32 v26, v26, v55 :: v_dual_add_f32 v25, v25, v56
	v_dual_add_f32 v24, v24, v57 :: v_dual_add_f32 v23, v23, v58
	v_dual_add_f32 v22, v22, v59 :: v_dual_add_f32 v21, v21, v60
	v_dual_add_f32 v20, v20, v61 :: v_dual_add_f32 v19, v19, v62
	v_dual_add_f32 v13, v13, v68 :: v_dual_add_nc_u32 v130, s8, v38
	v_dual_add_f32 v15, v15, v66 :: v_dual_add_nc_u32 v132, s19, v40
	v_dual_add_f32 v14, v14, v67 :: v_dual_add_nc_u32 v133, s19, v41
	v_dual_add_f32 v18, v18, v63 :: v_dual_add_f32 v17, v17, v64
	v_add_f32_e32 v16, v16, v65
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v130, v129 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v53, v73, v69, 0x4000501
	v_perm_b32 v55, v73, v69, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v81, v77, 0x4000501
	v_perm_b32 v56, v81, v77, 0x6020703
	v_perm_b32 v57, v74, v70, 0x4000501
	v_perm_b32 v58, v82, v78, 0x4000501
	v_perm_b32 v59, v74, v70, 0x6020703
	v_perm_b32 v60, v82, v78, 0x6020703
	v_perm_b32 v61, v75, v71, 0x4000501
	v_perm_b32 v62, v83, v79, 0x4000501
	v_perm_b32 v63, v75, v71, 0x6020703
	v_perm_b32 v64, v83, v79, 0x6020703
	v_perm_b32 v65, v76, v72, 0x4000501
	v_perm_b32 v66, v84, v80, 0x4000501
	v_perm_b32 v67, v76, v72, 0x6020703
	v_perm_b32 v68, v84, v80, 0x6020703
	v_perm_b32 v69, v54, v53, 0x7060302
	v_perm_b32 v53, v54, v53, 0x5040100
	v_perm_b32 v54, v56, v55, 0x7060302
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
	ds_store_2addr_b32 v131, v69, v53 offset1:16
	ds_store_2addr_b32 v132, v54, v55 offset1:16
	ds_store_2addr_b32 v133, v56, v57 offset1:16
	ds_store_2addr_b32 v134, v58, v59 offset1:16
	ds_store_2addr_b32 v135, v60, v61 offset1:16
	ds_store_2addr_b32 v131, v62, v63 offset0:160 offset1:176
	ds_store_2addr_b32 v136, v64, v65 offset1:16
	ds_store_2addr_b32 v137, v66, v67 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v36 :: v_dual_mov_b32 v4, v37
.LBB0_7:                                ; %Flow22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v3
	v_and_b32_e32 v1, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_and_b32_e32 v2, 1, v0
	s_mov_b32 s8, 0
	v_cndmask_b32_e64 v3, 0x210, 0, s0
	v_lshlrev_b32_e32 v5, 6, v1
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or3_b32 v3, v5, v47, v3
	v_xor_b32_e32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v4, 16, v3
	v_xor_b32_e32 v5, 32, v3
	v_xor_b32_e32 v6, 48, v3
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
	v_add_nc_u32_e32 v8, s4, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v38, s31, v35
	v_add_nc_u32_e32 v39, s31, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[28:31], v8 offset:8192
	ds_load_b128 v[52:55], v8
	v_add_nc_u32_e32 v36, s4, v5
	v_add_nc_u32_e32 v37, s4, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[56:59], v38
	ds_load_b128 v[60:63], v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[64:67], v36 offset:8192
	ds_load_b128 v[68:71], v36
	ds_load_b128 v[72:75], v37 offset:8192
	ds_load_b128 v[76:79], v37
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s31, v34
	v_add_nc_u32_e32 v36, s31, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v7, s4, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[80:83], v8
	ds_load_b128 v[84:87], v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s15 :: v_dual_mov_b32 v42, s14
	v_dual_mov_b32 v41, s13 :: v_dual_mov_b32 v40, s12
	v_dual_mov_b32 v39, s11 :: v_dual_mov_b32 v38, s10
	v_dual_mov_b32 v37, s9 :: v_dual_mov_b32 v36, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[88:91], v7
	ds_load_b128 v[92:95], v7 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[60:63], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[28:31], v[60:63], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[76:79], v[56:59], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[72:75], v[56:59], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[80:83], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[64:67], v[80:83], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[88:91], v[84:87], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[92:95], v[84:87], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v45
	v_cvt_f32_i32_e32 v8, v46
	v_cvt_f32_i32_e32 v28, v47
	v_cvt_f32_i32_e32 v29, v48
	v_cvt_f32_i32_e32 v30, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v27, v27, v7 :: v_dual_add_f32 v26, v26, v8
	v_add_f32_e32 v25, v25, v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v37
	v_cvt_f32_i32_e32 v8, v38
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v31, v50
	v_cvt_f32_i32_e32 v45, v51
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v24, v29 :: v_dual_add_f32 v19, v19, v7
	v_dual_add_f32 v23, v23, v30 :: v_dual_add_f32 v18, v18, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v17, v17, v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v41
	v_cvt_f32_i32_e32 v28, v42
	v_cvt_f32_i32_e32 v29, v43
	v_cvt_f32_i32_e32 v30, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v22, v31 :: v_dual_add_f32 v21, v21, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v20, v20, v36 :: v_dual_add_f32 v13, v13, v29
	v_dual_add_f32 v16, v16, v7 :: v_dual_add_f32 v15, v15, v8
	v_add_f32_e32 v12, v12, v30
	v_add_f32_e32 v14, v14, v28
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
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
	v_add_nc_u32_e32 v7, s19, v5
	v_add_nc_u32_e32 v29, s19, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v45, s11 :: v_dual_add_nc_u32 v8, s19, v6
	v_dual_mov_b32 v43, s9 :: v_dual_add_nc_u32 v28, s19, v4
	v_mov_b32_e32 v44, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[3:6], v7 offset:8192
	ds_load_b128 v[46:49], v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v40, s6 :: v_dual_add_nc_u32 v7, s1, v35
	v_dual_mov_b32 v41, s7 :: v_dual_add_nc_u32 v30, s1, v32
	v_mov_b32_e32 v42, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[50:53], v29 offset:8192
	ds_load_b128 v[54:57], v29
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[58:61], v7
	ds_load_b128 v[62:65], v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[66:69], v28 offset:8192
	ds_load_b128 v[70:73], v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v38, s4 :: v_dual_add_nc_u32 v29, s1, v34
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, s1, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v39, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v8
	ds_load_b128 v[86:89], v8 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[74:77], v29
	ds_load_b128 v[78:81], v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[54:57], v[62:65], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[62:65], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[70:73], v[58:61], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[66:69], v[58:61], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[46:49], v[74:77], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[3:6], v[74:77], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[82:85], v[78:81], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[38:45], v[86:89], v[78:81], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v28
	v_cvt_f32_i32_e32 v8, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v29, v31
	v_cvt_f32_i32_e32 v30, v32
	v_cvt_f32_i32_e32 v31, v33
	v_cvt_f32_i32_e32 v36, v34
	v_cvt_f32_i32_e32 v37, v35
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v3, s30, v10
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s20
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v26, v28 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v0, s18, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v23, v31 :: v_dual_add_f32 v33, v18, v40
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v32, v3, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	v_lshlrev_b32_e32 v4, 1, v0
	s_mov_b32 s4, s22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v5, v27, v8 :: v_dual_add_f32 v8, v24, v30
	v_dual_add_f32 v28, v22, v36 :: v_dual_add_f32 v31, v19, v39
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v3, v4, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v4, v12, v7
	v_add_f32_e32 v30, v20, v38
	v_dual_add_f32 v36, v15, v43 :: v_dual_lshlrev_b32 v39, 2, v9
	v_dual_add_f32 v38, v13, v45 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v5, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v7, v25, v29
	v_add_f32_e32 v29, v21, v37
	v_dual_add_f32 v34, v17, v41 :: v_dual_add_f32 v35, v16, v42
	v_add_f32_e32 v37, v14, v44
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v40, 0x2040, 0, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v12, v4, s2
	v_cndmask_b32_e64 v22, v22, v28, s2
	v_cndmask_b32_e64 v21, v21, v29, s2
	v_cndmask_b32_e64 v28, v19, v31, s2
	v_cndmask_b32_e64 v29, v18, v33, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[18:19], null, s30, s29, v[0:1]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v6, s2
	v_cndmask_b32_e64 v20, v20, v30, s2
	v_cndmask_b32_e64 v30, v17, v34, s2
	v_cndmask_b32_e64 v31, v16, v35, s2
	v_cndmask_b32_e64 v33, v15, v36, s2
	v_cndmask_b32_e64 v34, v14, v37, s2
	v_cndmask_b32_e64 v35, v13, v38, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v7, s2
	v_cndmask_b32_e64 v24, v24, v8, s2
	v_cndmask_b32_e64 v23, v23, v10, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v52, v18, s29, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s29, 5
	s_mul_i32 s4, s29, 6
	s_mul_i32 s5, s29, 7
	s_mul_i32 s8, s29, 9
	s_mul_i32 s9, s29, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	v_add_lshl_u32 v53, v18, s28, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s29, 11
	s_mul_i32 s11, s29, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v54, v18, s3, 2
	v_add_lshl_u32 v55, v18, s4, 2
	v_add_lshl_u32 v56, v18, s5, 2
	v_add_lshl_u32 v57, v18, s8, 2
	v_add_lshl_u32 v58, v18, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s12, s29, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v59, v18, s10, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s13, s29, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v60, v18, s11, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s29, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v61, v18, s12, 2
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v2, 5, v2
	v_lshlrev_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or3_b32 v2, v39, v2, v11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v4, v1, 2, v9
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add_nc_u32_e32 v14, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 0, v2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v6, v4, v40
	v_xad_u32 v19, 0x404, v2, 0
	v_xad_u32 v36, 0x808, v2, 0
	v_xad_u32 v37, 0xc0c, v2, 0
	v_xad_u32 v38, 0x1010, v2, 0
	v_xad_u32 v39, 0x1414, v2, 0
	v_xad_u32 v40, 0x1818, v2, 0
	v_xad_u32 v42, 0x1c1c, v2, 0
	v_xad_u32 v43, 0x2040, v2, 0
	v_xad_u32 v44, 0x2444, v2, 0
	v_xad_u32 v45, 0x2848, v2, 0
	v_xad_u32 v46, 0x2c4c, v2, 0
	v_xad_u32 v47, 0x3050, v2, 0
	v_xad_u32 v48, 0x3454, v2, 0
	v_xad_u32 v49, 0x3858, v2, 0
	v_xad_u32 v50, 0x3c5c, v2, 0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v1, v1, 10, v6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v0, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v14
	ds_load_b128 v[6:9], v14 offset:16
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v63, v1, 4, 0
	v_xad_u32 v64, v1, 8, 0
	v_xad_u32 v65, v1, 12, 0
	v_xad_u32 v66, v1, 16, 0
	v_xad_u32 v67, v1, 20, 0
	v_xad_u32 v68, v1, 24, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v3, v3, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v27, v3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v5, v5, v32
	ds_load_b128 v[10:13], v14 offset:512
	ds_load_b128 v[14:17], v14 offset:528
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v6, v6, v32
	v_mul_f32_e32 v2, v2, v32
	v_dual_mul_f32 v9, v9, v32 :: v_dual_add_nc_u32 v62, 0, v1
	v_dual_mul_f32 v4, v4, v32 :: v_dual_lshlrev_b32 v51, 2, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v5, v25, v5 :: v_dual_mul_f32 v6, v24, v6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v7, v7, v32
	v_mul_f32_e32 v8, v8, v32
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v41, v2
	v_mul_f32_e32 v9, v21, v9
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_xad_u32 v1, v1, 28, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v23, v7 :: v_dual_mul_f32 v8, v22, v8
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v10, v10, v32
	v_mul_f32_e32 v11, v11, v32
	v_mul_f32_e32 v13, v13, v32
	v_mul_f32_e32 v12, v12, v32
	v_mul_f32_e32 v14, v14, v32
	v_mul_f32_e32 v15, v15, v32
	v_mul_f32_e32 v16, v16, v32
	v_dual_mul_f32 v17, v17, v32 :: v_dual_mul_f32 v10, v20, v10
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v11, v28, v11 :: v_dual_mul_f32 v4, v26, v4
	v_dual_mul_f32 v13, v30, v13 :: v_dual_mul_f32 v12, v29, v12
	v_dual_mul_f32 v14, v31, v14 :: v_dual_mul_f32 v15, v33, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v16, v34, v16 :: v_dual_mul_f32 v17, v35, v17
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b32 v62, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v63, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v64, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v65, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v66, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v67, v7, v15 offset1:2
	ds_store_2addr_stride64_b32 v68, v8, v16 offset1:2
	ds_store_2addr_stride64_b32 v1, v9, v17 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	ds_load_b32 v1, v19
	ds_load_b32 v2, v36
	ds_load_b32 v3, v37
	ds_load_b32 v4, v38
	ds_load_b32 v5, v39
	ds_load_b32 v6, v40
	ds_load_b32 v7, v42
	ds_load_b32 v8, v43
	ds_load_b32 v9, v44
	ds_load_b32 v10, v45
	ds_load_b32 v12, v46
	ds_load_b32 v13, v47
	ds_load_b32 v14, v48
	ds_load_b32 v15, v49
	ds_load_b32 v16, v50
	v_lshl_add_u32 v17, s29, 3, v51
	v_lshl_add_u32 v19, s29, 4, v51
	v_lshl_add_u32 v20, s29, 5, v51
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v51, s[16:19], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v52, s[16:19], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v17, s[16:19], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v53, s[16:19], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v19, s[16:19], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v54, s[16:19], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v55, s[16:19], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v56, s[16:19], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v20, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v57, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v58, s[16:19], 0 offen
	v_add_lshl_u32 v11, v18, s13, 2
	v_add_lshl_u32 v0, v18, s1, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v59, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v13, v60, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v14, v61, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v15, v11, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v16, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_inst_pref_size 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 138
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5836
; TotalNumSgprs: 37
; NumVgprs: 138
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     138
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
