	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshlrev_b32_e32 v255, 4, v0
	v_and_b32_e32 v113, 15, v0
	v_or_b32_e32 v94, 0x3f0, v0
	v_or_b32_e32 v95, 0x7f0, v0
	v_or_b32_e32 v91, 0xbf0, v0
	v_and_b32_e32 v5, 48, v255
	v_or_b32_e32 v92, 0xff0, v0
	v_lshlrev_b32_e32 v93, 5, v0
	scratch_store_b32 off, v5, off          ; 4-byte Folded Spill
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v3, s34, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s35, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	v_rcp_iflag_f32_e32 v2, s18
	v_readfirstlane_b32 s18, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s19, s19, s18
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v86, v113, 4, v4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s23, s14, s17
	s_cmp_ge_u32 s14, s17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v87, s33, v86
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s23, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s14, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s12, s12, 63
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s14, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s27, s14, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s12, 31
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s3, s3, 26
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s41, s2, 6
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s12, s3
.Ltmp21:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s35, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v85, v3, v5, s41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s27, s2
	s_lshl_b32 s40, s35, 1
	v_add_nc_u32_e32 v4, s12, v86
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s15, s34, s26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v88, s40, v86
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v3, s15, v85
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s35, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s12, v88
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x1ff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s12, v87
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s16, s35, 8
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[8:11], v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[12:15], v4, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v6, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v7, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v5, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v88
	v_add_nc_u32_e32 v5, s12, v87
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s17, s34, 8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 32, v113
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v3, s15, s17, v85
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_b128 v[28:31], v4, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v5, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v86
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v7, 48, v113
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x2ff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_b128 v[36:39], v4, s[20:23], 0 offen
	buffer_load_b128 v[40:43], v5, s[20:23], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[44:47], v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	v_and_b32_e32 v4, 14, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v5, 16, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0x420, v3
	v_xor_b32_e32 v2, v3, v2
	v_lshlrev_b32_e32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v96, v4, 10, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, 0, v255
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v97, 0x90, v96
	v_xor_b32_e32 v98, 0x120, v96
	v_xor_b32_e32 v99, 0x1b0, v96
	v_xor_b32_e32 v100, 0x210, v96
	v_add_nc_u32_e32 v48, 0, v96
	v_xor_b32_e32 v105, 0x330, v96
	v_xor_b32_e32 v106, 0x3a0, v96
	v_add_nc_u32_e32 v49, 0, v97
	v_add_nc_u32_e32 v50, 0, v98
	v_add_nc_u32_e32 v51, 0, v99
	v_add_nc_u32_e32 v52, 0, v100
	v_add_nc_u32_e32 v53, 0, v105
	v_add_nc_u32_e32 v54, 0, v106
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	v_add_nc_u32_e32 v60, 0x4000, v53
	v_add_nc_u32_e32 v61, 0x4000, v54
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v2, v[8:11] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v8, v16, v12, 0x4000501
	v_perm_b32 v10, v16, v12, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v9, v24, v20, 0x4000501
	v_perm_b32 v11, v24, v20, 0x6020703
	v_perm_b32 v12, v17, v13, 0x4000501
	v_perm_b32 v16, v25, v21, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v25, v21, 0x6020703
	v_perm_b32 v20, v18, v14, 0x4000501
	v_perm_b32 v21, v26, v22, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v26, v22, 0x6020703
	v_perm_b32 v22, v19, v15, 0x4000501
	v_perm_b32 v24, v27, v23, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	v_perm_b32 v19, v27, v23, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v23, v32, v28, 0x4000501
	v_perm_b32 v25, v32, v28, 0x6020703
	v_perm_b32 v32, v9, v8, 0x7060302
	v_perm_b32 v8, v9, v8, 0x5040100
	v_perm_b32 v9, v11, v10, 0x7060302
	v_perm_b32 v10, v11, v10, 0x5040100
	v_perm_b32 v11, v16, v12, 0x7060302
	v_perm_b32 v12, v16, v12, 0x5040100
	v_perm_b32 v16, v17, v13, 0x7060302
	v_perm_b32 v13, v17, v13, 0x5040100
	v_perm_b32 v17, v21, v20, 0x7060302
	v_perm_b32 v20, v21, v20, 0x5040100
	v_perm_b32 v21, v18, v14, 0x7060302
	v_perm_b32 v14, v18, v14, 0x5040100
	v_perm_b32 v18, v24, v22, 0x7060302
	v_perm_b32 v22, v24, v22, 0x5040100
	v_perm_b32 v24, v19, v15, 0x7060302
	v_perm_b32 v15, v19, v15, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v19, v40, v36, 0x4000501
	v_perm_b32 v26, v33, v29, 0x4000501
	v_perm_b32 v27, v33, v29, 0x6020703
	v_perm_b32 v33, v40, v36, 0x6020703
	v_perm_b32 v28, v34, v30, 0x4000501
	v_perm_b32 v29, v34, v30, 0x6020703
	v_perm_b32 v34, v41, v37, 0x4000501
	v_perm_b32 v30, v35, v31, 0x4000501
	v_perm_b32 v31, v35, v31, 0x6020703
	v_perm_b32 v35, v41, v37, 0x6020703
	v_perm_b32 v36, v42, v38, 0x4000501
	v_perm_b32 v37, v42, v38, 0x6020703
	v_perm_b32 v38, v43, v39, 0x4000501
	v_perm_b32 v39, v43, v39, 0x6020703
	ds_store_2addr_b32 v48, v32, v8 offset1:16
	ds_store_2addr_b32 v49, v9, v10 offset1:16
	ds_store_2addr_b32 v50, v11, v12 offset1:16
	ds_store_2addr_b32 v51, v16, v13 offset1:16
	ds_store_2addr_b32 v52, v17, v20 offset1:16
	ds_store_2addr_b32 v48, v21, v14 offset0:160 offset1:176
	ds_store_2addr_b32 v53, v18, v22 offset1:16
	ds_store_2addr_b32 v54, v24, v15 offset1:16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[44:47] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v2, v23, v19, 0x7060302
	v_perm_b32 v8, v23, v19, 0x5040100
	v_perm_b32 v9, v25, v33, 0x7060302
	v_perm_b32 v10, v25, v33, 0x5040100
	v_perm_b32 v11, v26, v34, 0x7060302
	v_perm_b32 v12, v26, v34, 0x5040100
	v_perm_b32 v13, v27, v35, 0x7060302
	v_perm_b32 v14, v27, v35, 0x5040100
	v_perm_b32 v15, v28, v36, 0x7060302
	v_perm_b32 v16, v28, v36, 0x5040100
	v_perm_b32 v17, v29, v37, 0x7060302
	v_perm_b32 v18, v29, v37, 0x5040100
	v_perm_b32 v19, v30, v38, 0x7060302
	v_perm_b32 v20, v30, v38, 0x5040100
	v_perm_b32 v21, v31, v39, 0x7060302
	v_perm_b32 v22, v31, v39, 0x5040100
	ds_store_2addr_b32 v55, v2, v8 offset1:16
	ds_store_2addr_b32 v56, v9, v10 offset1:16
	ds_store_2addr_b32 v57, v11, v12 offset1:16
	ds_store_2addr_b32 v58, v13, v14 offset1:16
	ds_store_2addr_b32 v59, v15, v16 offset1:16
	ds_store_2addr_b32 v55, v17, v18 offset0:160 offset1:176
	ds_store_2addr_b32 v60, v19, v20 offset1:16
	ds_store_2addr_b32 v61, v21, v22 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v196, 5, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v114, 0x3f0, v0
	v_or_b32_e32 v115, 0x7f0, v0
	v_or_b32_e32 v116, 0xbf0, v0
	v_or_b32_e32 v190, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v89, 0x1800, v196
	v_and_b32_e32 v90, 48, v3
	v_and_b32_e32 v2, 8, v0
	v_and_b32_e32 v197, 32, v0
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr190
                                        ; implicit-def: $vgpr196
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr197
.LBB0_3:                                ; %Flow90
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v9, s41, v113
	v_or_b32_e32 v5, s41, v5
	v_or_b32_e32 v6, s41, v6
	v_or_b32_e32 v7, s41, v7
	s_ashr_i32 s42, s14, 6
	v_and_b32_e32 v8, 1, v0
	v_mul_lo_u32 v150, v9, s42
	v_mul_lo_u32 v137, v5, s42
	v_mul_lo_u32 v138, v6, s42
	v_mul_lo_u32 v139, v7, s42
	v_or_b32_e32 v119, s27, v0
	v_lshlrev_b32_e32 v10, 6, v0
	v_lshlrev_b32_e32 v103, 2, v1
	v_lshlrev_b32_e32 v101, 1, v4
	v_lshlrev_b32_e32 v104, 5, v8
	v_lshlrev_b32_e32 v102, 1, v1
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s43, s26, 0x100
	scratch_store_b32 off, v10, off offset:4 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
	v_dual_mov_b32 v121, 0 :: v_dual_and_b32 v90, 48, v3
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s46, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x210, v1
	v_and_b32_e32 v2, 0x1c0, v10
	v_and_b32_e32 v89, 0x1800, v93
	v_bfe_i32 v3, v0, 5, 1
	v_add3_u32 v9, 0, v103, v104
	v_xor_b32_e32 v1, v1, v90
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 0x420, v3
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v111, v9, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v1, v2, v1, v89
	v_add_nc_u32_e32 v112, 0, v102
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v128, 0
	v_xor_b32_e32 v107, v1, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v108, 16, v107
	v_xor_b32_e32 v109, 32, v107
	v_xor_b32_e32 v110, 48, v107
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_mov_b32_e32 v181, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s10, s43, 0x100
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_mov_b32 s11, 1
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s45, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s46, s46, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 8
	s_mov_b32 s14, s26
	s_mov_b32 s26, s43
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s43, s10, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s47, v113
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s43, s34, v[85:86]
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s12, v109
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[73:76], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v114 offset:832
	ds_load_u8 v10, v114 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v114 offset:960
	ds_load_u8 v11, v114 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v114 offset:576
	ds_load_u8 v12, v114 offset:512
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v114 offset:320
	ds_load_u8 v10, v114 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v114 offset:704
	ds_load_u8 v13, v114 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v11
	ds_load_u8 v10, v114 offset:448
	ds_load_u8 v11, v114 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v114 offset:64
	ds_load_u8 v10, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v114 offset:192
	ds_load_u8 v11, v114 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v114 offset:1856
	ds_load_u8 v10, v114 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v114 offset:1984
	ds_load_u8 v11, v114 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v114 offset:1600
	ds_load_u8 v12, v114 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v114 offset:1344
	ds_load_u8 v10, v114 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v114 offset:1728
	ds_load_u8 v13, v114 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v114 offset:1472
	ds_load_u8 v11, v114 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v114 offset:1088
	ds_load_u8 v10, v114 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v114 offset:1216
	ds_load_u8 v11, v114 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s12, v107
	v_add_nc_u32_e32 v10, s12, v108
	ds_load_b128 v[57:60], v9
	ds_load_b128 v[61:64], v10
	ds_load_b128 v[77:80], v9 offset:8192
	ds_load_b128 v[81:84], v10 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v114 offset:848
	ds_load_u8 v26, v114 offset:784
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v114 offset:976
	ds_load_u8 v27, v114 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v114 offset:592
	ds_load_u8 v28, v114 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v114 offset:336
	ds_load_u8 v26, v114 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v114 offset:720
	ds_load_u8 v29, v114 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v114 offset:464
	ds_load_u8 v27, v114 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v114 offset:16
	ds_load_u8 v26, v114 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v114 offset:208
	ds_load_u8 v27, v114 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v114 offset:1872
	ds_load_u8 v26, v114 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[57:60], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v114 offset:2000
	ds_load_u8 v27, v114 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v114 offset:1616
	ds_load_u8 v28, v114 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v114 offset:1360
	ds_load_u8 v26, v114 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v114 offset:1744
	ds_load_u8 v29, v114 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v114 offset:1488
	ds_load_u8 v27, v114 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v114 offset:1104
	ds_load_u8 v26, v114 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v114 offset:1232
	ds_load_u8 v27, v114 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v114 offset:864
	ds_load_u8 v42, v114 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v114 offset:992
	ds_load_u8 v43, v114 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v114 offset:608
	ds_load_u8 v44, v114 offset:544
	v_lshl_or_b32 v68, v42, 16, v41
	ds_load_u8 v41, v114 offset:352
	ds_load_u8 v42, v114 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v114 offset:736
	ds_load_u8 v45, v114 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v44, 16, v43
	ds_load_u8 v42, v114 offset:480
	ds_load_u8 v43, v114 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v66, v42, 16, v41
	ds_load_u8 v41, v114 offset:32
	ds_load_u8 v42, v114 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v114 offset:224
	ds_load_u8 v43, v114 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v42, 16, v41
	ds_load_u8 v41, v114 offset:1888
	ds_load_u8 v42, v114 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v114 offset:2016
	ds_load_u8 v43, v114 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v114 offset:1632
	ds_load_u8 v44, v114 offset:1568
	v_lshl_or_b32 v72, v42, 16, v41
	ds_load_u8 v41, v114 offset:1376
	ds_load_u8 v42, v114 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v114 offset:1760
	ds_load_u8 v45, v114 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v44, 16, v43
	ds_load_u8 v42, v114 offset:1504
	ds_load_u8 v43, v114 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v70, v42, 16, v41
	ds_load_u8 v41, v114 offset:1120
	ds_load_u8 v42, v114 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v114 offset:1248
	ds_load_u8 v43, v114 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[65:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v65, v114 offset:880
	ds_load_u8 v66, v114 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[69:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s47, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v114 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v114 offset:624
	ds_load_u8 v68, v114 offset:560
	v_lshl_or_b32 v192, v66, 16, v65
	ds_load_u8 v65, v114 offset:368
	ds_load_u8 v66, v114 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v114 offset:752
	ds_load_u8 v69, v114 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v191, v68, 16, v67
	ds_load_u8 v66, v114 offset:496
	ds_load_u8 v67, v114 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_lshl_or_b32 v190, v66, 16, v65
	ds_load_u8 v65, v114 offset:48
	ds_load_u8 v66, v114 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v66, 0xc0c0004
	ds_load_u8 v66, v114 offset:240
	ds_load_u8 v67, v114 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v66, 16, v65
	ds_load_u8 v65, v114 offset:1904
	ds_load_u8 v66, v114 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s47, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v114 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v114 offset:1648
	ds_load_u8 v68, v114 offset:1584
	v_lshl_or_b32 v196, v66, 16, v65
	ds_load_u8 v65, v114 offset:1392
	ds_load_u8 v66, v114 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v114 offset:1776
	ds_load_u8 v69, v114 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v195, v68, 16, v67
	ds_load_u8 v66, v114 offset:1520
	ds_load_u8 v67, v114 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_lshl_or_b32 v194, v66, 16, v65
	ds_load_u8 v65, v114 offset:1136
	ds_load_u8 v66, v114 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v114 offset:1264
	ds_load_u8 v67, v114 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v193, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[65:72], v[57:60], v[189:192], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[61:64], v[193:196], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[189:192], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:2880
	ds_load_u8 v78, v114 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[189:192], v115 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[193:196], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:3008
	ds_load_u8 v79, v114 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:2624
	ds_load_u8 v80, v114 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:2752
	ds_load_u8 v81, v114 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:2368
	ds_load_u8 v78, v114 offset:2304
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:2496
	ds_load_u8 v81, v114 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:2112
	ds_load_u8 v81, v114 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v114 offset:2240
	ds_load_u8 v82, v114 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[189:192], v[77:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[77:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:2896
	ds_load_u8 v78, v114 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:3024
	ds_load_u8 v79, v114 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:2640
	ds_load_u8 v80, v114 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:2768
	ds_load_u8 v115, v114 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:2384
	ds_load_u8 v78, v114 offset:2320
	v_lshl_or_b32 v79, v115, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:2512
	ds_load_u8 v115, v114 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v115, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:2128
	ds_load_u8 v115, v114 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v115, v77, 0xc0c0004
	ds_load_u8 v115, v114 offset:2256
	ds_load_u8 v116, v114 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v115, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[189:192], v[77:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:2912
	ds_load_u8 v78, v114 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:3040
	ds_load_u8 v79, v114 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:2656
	ds_load_u8 v80, v114 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:2784
	ds_load_u8 v115, v114 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:2400
	ds_load_u8 v78, v114 offset:2336
	v_lshl_or_b32 v79, v115, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:2528
	ds_load_u8 v115, v114 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v115, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:2144
	ds_load_u8 v115, v114 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v115, v77, 0xc0c0004
	ds_load_u8 v115, v114 offset:2272
	ds_load_u8 v116, v114 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v115, 16, v77
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[189:192], v[77:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:2928
	ds_load_u8 v78, v114 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v78, s47, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v114 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:2672
	ds_load_u8 v80, v114 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:2800
	ds_load_u8 v115, v114 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:2416
	ds_load_u8 v78, v114 offset:2352
	v_lshl_or_b32 v79, v115, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:2544
	ds_load_u8 v115, v114 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v115, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:2160
	ds_load_u8 v115, v114 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v115, v77, 0xc0c0004
	ds_load_u8 v115, v114 offset:2288
	ds_load_u8 v116, v114 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v77, v115, 16, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s12, v110
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s43, s35
	s_add_i32 s12, s12, s27
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[189:192], v[77:80], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:3904
	ds_load_u8 v78, v114 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[189:192], v115 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:4032
	ds_load_u8 v79, v114 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:3648
	ds_load_u8 v80, v114 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:3776
	ds_load_u8 v81, v114 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:3392
	ds_load_u8 v78, v114 offset:3328
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:3520
	ds_load_u8 v81, v114 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:3136
	ds_load_u8 v81, v114 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v114 offset:3264
	ds_load_u8 v82, v114 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[189:192], v[77:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[77:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:3920
	ds_load_u8 v78, v114 offset:3856
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:4048
	ds_load_u8 v79, v114 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:3664
	ds_load_u8 v80, v114 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:3792
	ds_load_u8 v115, v114 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:3408
	ds_load_u8 v78, v114 offset:3344
	v_lshl_or_b32 v79, v115, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:3536
	ds_load_u8 v115, v114 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v115, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:3152
	ds_load_u8 v115, v114 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v115, v77, 0xc0c0004
	ds_load_u8 v115, v114 offset:3280
	ds_load_u8 v116, v114 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v115, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[189:192], v[77:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:3936
	ds_load_u8 v78, v114 offset:3872
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:4064
	ds_load_u8 v79, v114 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:3680
	ds_load_u8 v80, v114 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:3808
	ds_load_u8 v115, v114 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:3424
	ds_load_u8 v78, v114 offset:3360
	v_lshl_or_b32 v79, v115, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:3552
	ds_load_u8 v115, v114 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v115, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:3168
	ds_load_u8 v115, v114 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v115, v77, 0xc0c0004
	ds_load_u8 v115, v114 offset:3296
	ds_load_u8 v116, v114 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v115, 16, v77
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[189:192], v[77:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v77, v114 offset:3952
	ds_load_u8 v78, v114 offset:3888
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v78, s47, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v114 offset:4016
	s_mov_b32 s47, s45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v114 offset:3696
	ds_load_u8 v80, v114 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v114 offset:3824
	ds_load_u8 v115, v114 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v114 offset:3440
	ds_load_u8 v78, v114 offset:3376
	v_lshl_or_b32 v79, v115, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v114 offset:3568
	ds_load_u8 v115, v114 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v115, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v114 offset:3184
	ds_load_u8 v115, v114 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v115, v77, 0xc0c0004
	ds_load_u8 v115, v114 offset:3312
	ds_load_u8 v114, v114 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v114, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v77, v114, 16, v77
	v_cvt_f32_i32_e32 v114, v16
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[189:192], v[77:80], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v79, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s35, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v78, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s12, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v82, v13
	v_cvt_f32_i32_e32 v80, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s12, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v81, v12
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v84, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v77, v17
	v_cvt_f32_i32_e32 v17, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v64, v13, v9, 0x4000501
	v_perm_b32 v115, v13, v9, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s12, v88
	v_add_nc_u32_e32 v13, s12, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v116, v14, v10, 0x4000501
	v_perm_b32 v117, v14, v10, 0x6020703
	v_perm_b32 v120, v15, v11, 0x4000501
	v_perm_b32 v197, v15, v11, 0x6020703
	v_perm_b32 v198, v16, v12, 0x4000501
	v_perm_b32 v199, v16, v12, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s12, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 26
	s_add_i32 s14, s14, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s14, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s42
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s11, 14
	s_waitcnt vmcnt(0)
	v_perm_b32 v200, v13, v9, 0x4000501
	v_perm_b32 v201, v13, v9, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v119, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v202, v14, v10, 0x4000501
	v_perm_b32 v203, v14, v10, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v137, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v206, v16, v12, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v207, v16, v12, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v12, v139, s12, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v204, v15, v11, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v205, v15, v11, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v11, v138, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v111, v9 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v150, s12, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s12, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x3
	buffer_load_u16 v208, v9, s[28:31], 0 offen
	buffer_load_u16 v209, v10, s[28:31], 0 offen
	buffer_load_u16 v210, v11, s[28:31], 0 offen
	buffer_load_u16 v211, v12, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v112 offset:40960
	ds_load_b128 v[13:16], v112 offset:40976
	ds_load_b128 v[189:192], v112 offset:41472
	ds_load_b128 v[193:196], v112 offset:41488
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v212, s14, v255
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s45, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s46
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v212, v[73:76] offset:32768
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v74, 16, v209
	v_lshlrev_b32_e32 v73, 16, v208
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v211
	v_lshlrev_b32_e32 v75, 16, v210
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v212, v9, v74
	v_mul_f32_e32 v213, v10, v74
	v_mul_f32_e32 v214, v11, v74
	v_mul_f32_e32 v215, v12, v74
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v219, v12, v75 :: v_dual_mul_f32 v224, v13, v74
	v_mul_f32_e32 v208, v9, v73
	v_mul_f32_e32 v209, v10, v73
	v_mul_f32_e32 v210, v11, v73
	v_mul_f32_e32 v211, v12, v73
	v_mul_f32_e32 v12, v12, v76
	v_mul_f32_e32 v216, v9, v75
	v_mul_f32_e32 v217, v10, v75
	v_dual_mul_f32 v218, v11, v75 :: v_dual_mul_f32 v9, v9, v76
	v_mul_f32_e32 v10, v10, v76
	v_dual_mul_f32 v11, v11, v76 :: v_dual_mul_f32 v220, v13, v73
	v_mul_f32_e32 v225, v14, v74
	v_dual_mul_f32 v221, v14, v73 :: v_dual_mul_f32 v226, v15, v74
	v_dual_mul_f32 v222, v15, v73 :: v_dual_mul_f32 v227, v16, v74
	v_dual_mul_f32 v223, v16, v73 :: v_dual_mul_f32 v228, v13, v75
	v_mul_f32_e32 v229, v14, v75
	v_dual_mul_f32 v230, v15, v75 :: v_dual_mul_f32 v13, v13, v76
	v_dual_mul_f32 v231, v16, v75 :: v_dual_mul_f32 v14, v14, v76
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v15, v15, v76 :: v_dual_mul_f32 v232, v189, v73
	v_dual_mul_f32 v16, v16, v76 :: v_dual_mul_f32 v233, v190, v73
	v_mul_f32_e32 v236, v189, v74
	v_dual_mul_f32 v234, v191, v73 :: v_dual_mul_f32 v237, v190, v74
	v_dual_mul_f32 v235, v192, v73 :: v_dual_mul_f32 v238, v191, v74
	v_dual_mul_f32 v239, v192, v74 :: v_dual_mul_f32 v240, v189, v75
	v_mul_f32_e32 v241, v190, v75
	v_dual_mul_f32 v242, v191, v75 :: v_dual_mul_f32 v189, v189, v76
	v_dual_mul_f32 v243, v192, v75 :: v_dual_mul_f32 v190, v190, v76
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v191, v191, v76 :: v_dual_mul_f32 v244, v193, v73
	v_dual_mul_f32 v192, v192, v76 :: v_dual_mul_f32 v245, v194, v73
	v_dual_mul_f32 v246, v195, v73 :: v_dual_mul_f32 v247, v193, v74
	v_dual_mul_f32 v73, v196, v73 :: v_dual_mul_f32 v248, v194, v74
	v_dual_mul_f32 v249, v195, v74 :: v_dual_mul_f32 v250, v193, v75
	v_dual_mul_f32 v74, v196, v74 :: v_dual_mul_f32 v251, v194, v75
	v_dual_mul_f32 v252, v195, v75 :: v_dual_mul_f32 v193, v193, v76
	v_dual_mul_f32 v75, v196, v75 :: v_dual_mul_f32 v194, v194, v76
	v_mul_f32_e32 v195, v195, v76
	v_mul_f32_e32 v76, v196, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v196, v200, v64, 0x7060302
	v_perm_b32 v64, v200, v64, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v121, v208, v77 :: v_dual_add_nc_u32 v200, s44, v96
	v_fmac_f32_e32 v123, v210, v19
	v_dual_fmac_f32 v125, v220, v21 :: v_dual_fmac_f32 v122, v209, v18
	v_fmac_f32_e32 v131, v234, v80
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v200, v196, v64 offset1:16
	v_perm_b32 v64, v201, v115, 0x7060302
	v_perm_b32 v115, v201, v115, 0x5040100
	v_add_nc_u32_e32 v196, s44, v97
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v124, v211, v20 :: v_dual_fmac_f32 v129, v232, v78
	v_dual_fmac_f32 v126, v221, v22 :: v_dual_fmac_f32 v135, v246, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v196, v64, v115 offset1:16
	v_perm_b32 v64, v202, v116, 0x7060302
	v_perm_b32 v115, v202, v116, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v127, v222, v23 :: v_dual_add_nc_u32 v116, s44, v98
	v_dual_fmac_f32 v128, v223, v24 :: v_dual_fmac_f32 v133, v244, v82
	v_dual_fmac_f32 v130, v233, v79 :: v_dual_fmac_f32 v143, v215, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v116, v64, v115 offset1:16
	v_perm_b32 v64, v203, v117, 0x7060302
	v_perm_b32 v115, v203, v117, 0x5040100
	v_add_nc_u32_e32 v116, s44, v99
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v132, v235, v81 :: v_dual_fmac_f32 v141, v213, v34
	v_dual_fmac_f32 v134, v245, v83 :: v_dual_fmac_f32 v147, v227, v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v116, v64, v115 offset1:16
	v_perm_b32 v64, v204, v120, 0x7060302
	v_perm_b32 v115, v204, v120, 0x5040100
	v_add_nc_u32_e32 v116, s44, v100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v136, v73, v114 :: v_dual_fmac_f32 v151, v238, v27
	v_dual_fmac_f32 v140, v212, v33 :: v_dual_fmac_f32 v145, v225, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v116, v64, v115 offset1:16
	v_perm_b32 v64, v205, v197, 0x7060302
	v_perm_b32 v115, v205, v197, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v142, v214, v35 :: v_dual_fmac_f32 v149, v237, v26
	v_dual_fmac_f32 v144, v224, v37 :: v_dual_fmac_f32 v155, v249, v31
	v_dual_fmac_f32 v146, v226, v39 :: v_dual_fmac_f32 v153, v247, v29
	v_dual_fmac_f32 v148, v236, v25 :: v_dual_fmac_f32 v159, v218, v51
	v_dual_fmac_f32 v152, v239, v28 :: v_dual_fmac_f32 v157, v216, v49
	v_dual_fmac_f32 v154, v248, v30 :: v_dual_fmac_f32 v163, v230, v55
	v_dual_fmac_f32 v156, v74, v32 :: v_dual_fmac_f32 v161, v228, v53
	v_dual_fmac_f32 v158, v217, v50 :: v_dual_fmac_f32 v165, v240, v41
	v_dual_fmac_f32 v160, v219, v52 :: v_dual_fmac_f32 v167, v242, v43
	v_dual_fmac_f32 v162, v229, v54 :: v_dual_fmac_f32 v169, v250, v45
	v_dual_fmac_f32 v164, v231, v56 :: v_dual_fmac_f32 v171, v252, v47
	v_dual_fmac_f32 v166, v241, v42 :: v_dual_fmac_f32 v175, v11, v67
	v_dual_fmac_f32 v168, v243, v44 :: v_dual_fmac_f32 v173, v9, v65
	v_dual_fmac_f32 v170, v251, v46 :: v_dual_fmac_f32 v177, v13, v69
	v_dual_fmac_f32 v172, v75, v48 :: v_dual_fmac_f32 v183, v190, v58
	v_dual_fmac_f32 v174, v10, v66 :: v_dual_fmac_f32 v179, v15, v71
	v_dual_fmac_f32 v176, v12, v68 :: v_dual_fmac_f32 v187, v194, v62
	v_dual_fmac_f32 v178, v14, v70 :: v_dual_fmac_f32 v185, v192, v60
	v_dual_fmac_f32 v180, v16, v72 :: v_dual_add_nc_u32 v9, s44, v105
	v_fmac_f32_e32 v182, v189, v57
	v_dual_fmac_f32 v184, v191, v59 :: v_dual_fmac_f32 v181, v76, v17
	v_fmac_f32_e32 v186, v193, v61
	v_fmac_f32_e32 v188, v195, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v11, v206, v198, 0x7060302
	v_perm_b32 v12, v206, v198, 0x5040100
	v_add_nc_u32_e32 v10, s44, v106
	v_perm_b32 v13, v207, v199, 0x7060302
	v_perm_b32 v14, v207, v199, 0x5040100
	ds_store_2addr_b32 v200, v64, v115 offset0:160 offset1:176
	ds_store_2addr_b32 v9, v11, v12 offset1:16
	ds_store_2addr_b32 v10, v13, v14 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v114, v94 :: v_dual_mov_b32 v115, v95
	v_and_b32_e32 v2, 8, v0
	v_dual_mov_b32 v116, v91 :: v_dual_and_b32 v197, 32, v0
	v_mov_b32_e32 v190, v92
	v_mov_b32_e32 v196, v93
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s45, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v198, 7, v0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v191, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v189, 0 :: v_dual_lshlrev_b32 v2, 6, v198
	v_cmp_eq_u32_e32 vcc_lo, 0, v197
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_xor_b32_e32 v1, v1, v90
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or3_b32 v1, v2, v89, v1
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_xor_b32_e32 v109, v1, v3
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v106, 16, v109
	v_xor_b32_e32 v107, 32, v109
	v_xor_b32_e32 v108, 48, v109
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v252, 0
	v_mov_b32_e32 v251, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s16, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v110, s47, v113
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v110 offset:832
	ds_load_u8 v2, v110 offset:768
	ds_load_u8 v3, v110 offset:960
	ds_load_u8 v4, v110 offset:896
	ds_load_u8 v5, v110 offset:576
	ds_load_u8 v6, v110 offset:512
	ds_load_u8 v7, v110 offset:704
	ds_load_u8 v8, v110 offset:640
	ds_load_u8 v9, v110 offset:320
	ds_load_u8 v10, v110 offset:256
	ds_load_u8 v11, v110 offset:448
	ds_load_u8 v12, v110 offset:384
	ds_load_u8 v13, v110 offset:64
	ds_load_u8 v14, v110
	ds_load_u8 v15, v110 offset:192
	ds_load_u8 v16, v110 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s12, v108
	v_add_nc_u32_e32 v18, s12, v109
	v_add_nc_u32_e32 v19, s12, v107
	v_add_nc_u32_e32 v20, s12, v106
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v117, s47, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v28, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v12, v11, 0xc0c0004
	v_lshl_or_b32 v27, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v16, v15, 0xc0c0004
	v_lshl_or_b32 v26, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v25, v8, 16, v7
	v_mov_b32_e32 v1, s16
	ds_load_u8 v21, v110 offset:1856
	ds_load_u8 v22, v110 offset:1792
	ds_load_u8 v23, v110 offset:1984
	ds_load_u8 v24, v110 offset:1920
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v17 offset:8192
	ds_load_b128 v[93:96], v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v17
	ds_load_b128 v[73:76], v19
	ds_load_b128 v[81:84], v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	ds_load_u8 v60, v110 offset:2384
	ds_load_u8 v61, v110 offset:2320
	ds_load_u8 v62, v110 offset:2512
	ds_load_u8 v63, v110 offset:2448
	ds_load_u8 v64, v110 offset:2128
	ds_load_u8 v97, v110 offset:2064
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	ds_load_u8 v21, v110 offset:1600
	ds_load_u8 v22, v110 offset:1536
	ds_load_u8 v29, v110 offset:1728
	ds_load_u8 v30, v110 offset:1664
	ds_load_u8 v31, v110 offset:1344
	ds_load_u8 v33, v110 offset:1280
	ds_load_u8 v34, v110 offset:1472
	ds_load_u8 v35, v110 offset:1408
	ds_load_u8 v36, v110 offset:1088
	ds_load_u8 v37, v110 offset:1024
	ds_load_u8 v38, v110 offset:1216
	ds_load_u8 v39, v110 offset:1152
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v110 offset:2880
	ds_load_u8 v40, v110 offset:2816
	ds_load_u8 v41, v110 offset:3008
	ds_load_u8 v42, v110 offset:2944
	ds_load_u8 v43, v110 offset:2624
	ds_load_u8 v44, v110 offset:2560
	ds_load_u8 v45, v110 offset:2752
	ds_load_u8 v46, v110 offset:2688
	ds_load_u8 v47, v110 offset:2368
	ds_load_u8 v48, v110 offset:2304
	ds_load_u8 v49, v110 offset:2496
	ds_load_u8 v50, v110 offset:2432
	s_waitcnt lgkmcnt(33)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v23, 16, v17
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v21, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v22, v33, v31, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v35, v34, 0xc0c0004
	v_lshl_or_b32 v31, v21, 16, v17
	ds_load_u8 v17, v110 offset:2240
	ds_load_u8 v21, v110 offset:2176
	ds_load_u8 v34, v110 offset:2112
	ds_load_u8 v35, v110 offset:2048
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v33, v39, v38, 0xc0c0004
	v_lshl_or_b32 v30, v23, 16, v22
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v40, v24, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v23, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v24, v44, v43, 0xc0c0004
	v_lshl_or_b32 v29, v33, 16, v29
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v50, v49, 0xc0c0004
	ds_load_u8 v39, v110 offset:3904
	ds_load_u8 v40, v110 offset:3840
	ds_load_u8 v41, v110 offset:4032
	ds_load_u8 v42, v110 offset:3968
	ds_load_u8 v43, v110 offset:3648
	ds_load_u8 v44, v110 offset:3584
	ds_load_u8 v45, v110 offset:3776
	ds_load_u8 v46, v110 offset:3712
	ds_load_u8 v48, v110 offset:3392
	ds_load_u8 v49, v110 offset:3328
	v_lshl_or_b32 v36, v23, 16, v22
	ds_load_u8 v22, v110 offset:3136
	ds_load_u8 v23, v110 offset:3072
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	ds_load_u8 v21, v110 offset:3520
	ds_load_u8 v50, v110 offset:3456
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v35, v34, 0xc0c0004
	v_lshl_or_b32 v34, v38, 16, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[77:80], v19 offset:8192
	ds_load_b128 v[85:88], v20 offset:8192
	ds_load_b128 v[89:92], v18 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v37, v110 offset:16
	v_lshl_or_b32 v35, v33, 16, v24
	v_lshl_or_b32 v33, v17, 16, v47
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v42, v41, 0xc0c0004
	ds_load_u8 v38, v110 offset:3264
	ds_load_u8 v39, v110 offset:3200
	ds_load_u8 v40, v110 offset:848
	ds_load_u8 v41, v110 offset:784
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v19, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v24, v49, v48, 0xc0c0004
	v_lshl_or_b32 v44, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v23, v22, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v20, 16, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v50, v21, 0xc0c0004
	ds_load_u8 v45, v110 offset:976
	ds_load_u8 v46, v110 offset:912
	ds_load_u8 v47, v110 offset:592
	ds_load_u8 v48, v110 offset:528
	ds_load_u8 v49, v110 offset:720
	ds_load_u8 v50, v110 offset:656
	ds_load_u8 v51, v110 offset:336
	ds_load_u8 v52, v110 offset:272
	ds_load_u8 v53, v110 offset:464
	ds_load_u8 v54, v110 offset:400
	v_lshl_or_b32 v42, v21, 16, v24
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v110 offset:80
	ds_load_u8 v27, v110 offset:208
	ds_load_u8 v28, v110 offset:144
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v25, v39, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v29, v41, v40, 0xc0c0004
	ds_load_u8 v30, v110 offset:1872
	ds_load_u8 v31, v110 offset:1808
	ds_load_u8 v32, v110 offset:2000
	ds_load_u8 v38, v110 offset:1936
	ds_load_u8 v39, v110 offset:1616
	ds_load_u8 v40, v110 offset:1552
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_lshl_or_b32 v41, v25, 16, v55
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v47, v50, v49, 0xc0c0004
	v_lshl_or_b32 v48, v45, 16, v29
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v49, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v47, 16, v46
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[41:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v25, v37, v26, 0xc0c0004
	v_lshl_or_b32 v46, v50, 16, v49
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	ds_load_u8 v27, v110 offset:1744
	ds_load_u8 v28, v110 offset:1680
	ds_load_u8 v29, v110 offset:1360
	ds_load_u8 v33, v110 offset:1296
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v38, v32, 0xc0c0004
	v_cvt_f32_i32_e32 v189, v10
	v_lshl_or_b32 v45, v26, 16, v25
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v40, v39, 0xc0c0004
	ds_load_u8 v25, v110 offset:1488
	ds_load_u8 v26, v110 offset:1424
	ds_load_u8 v37, v110 offset:1104
	ds_load_u8 v38, v110 offset:1040
	ds_load_u8 v39, v110 offset:1232
	ds_load_u8 v40, v110 offset:1168
	ds_load_u8 v49, v110 offset:2896
	ds_load_u8 v53, v110 offset:2832
	ds_load_u8 v54, v110 offset:3024
	ds_load_u8 v55, v110 offset:2960
	ds_load_u8 v56, v110 offset:2640
	ds_load_u8 v57, v110 offset:2576
	ds_load_u8 v58, v110 offset:2768
	ds_load_u8 v59, v110 offset:2704
	v_lshl_or_b32 v52, v35, 16, v34
	v_cvt_f32_i32_e32 v191, v11
	v_cvt_f32_i32_e32 v192, v12
	v_cvt_f32_i32_e32 v193, v13
	v_cvt_f32_i32_e32 v194, v14
	v_cvt_f32_i32_e32 v195, v15
	v_cvt_f32_i32_e32 v199, v16
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v26, v25, 0xc0c0004
	v_cvt_f32_i32_e32 v200, v17
	v_cvt_f32_i32_e32 v201, v18
	v_cvt_f32_i32_e32 v202, v19
	v_perm_b32 v50, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	v_perm_b32 v33, v33, v29, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v53, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v50, 16, v36
	v_lshl_or_b32 v50, v98, 16, v33
	v_perm_b32 v33, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v59, v58, 0xc0c0004
	v_cvt_f32_i32_e32 v203, v20
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v110 offset:2256
	ds_load_u8 v34, v110 offset:2192
	v_lshl_or_b32 v56, v36, 16, v35
	v_lshl_or_b32 v55, v38, 16, v37
	v_perm_b32 v35, v61, v60, 0xc0c0004
	v_perm_b32 v36, v63, v62, 0xc0c0004
	v_perm_b32 v37, v97, v64, 0xc0c0004
	ds_load_u8 v57, v110 offset:3920
	ds_load_u8 v58, v110 offset:864
	ds_load_u8 v59, v110 offset:800
	ds_load_u8 v60, v110 offset:992
	ds_load_u8 v61, v110 offset:928
	ds_load_u8 v62, v110 offset:608
	ds_load_u8 v63, v110 offset:544
	ds_load_u8 v64, v110 offset:736
	ds_load_u8 v97, v110 offset:672
	ds_load_u8 v98, v110 offset:352
	ds_load_u8 v99, v110 offset:288
	ds_load_u8 v100, v110 offset:480
	ds_load_u8 v111, v110 offset:416
	ds_load_u8 v112, v110 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[49:52], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v204, v21
	v_lshl_or_b32 v54, v36, 16, v35
	v_cvt_f32_i32_e32 v205, v22
	v_cvt_f32_i32_e32 v206, v23
	v_cvt_f32_i32_e32 v207, v24
	v_cvt_f32_i32_e32 v208, v9
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v61, v60, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v53, v33, 16, v37
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[45:48], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v110 offset:32
	ds_load_u8 v45, v110 offset:48
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v46, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v47, v97, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[49:52], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v48, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v49, v111, v100, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[53:56], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v111, v112, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[53:56], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v47, 16, v46
	v_lshl_or_b32 v42, v49, 16, v48
	ds_load_u8 v46, v110 offset:96
	ds_load_u8 v47, v110 offset:224
	ds_load_u8 v48, v110 offset:160
	ds_load_u8 v49, v110 offset:880
	ds_load_u8 v50, v110 offset:816
	ds_load_u8 v51, v117
	ds_load_u8 v52, v110 offset:944
	ds_load_u8 v53, v110 offset:624
	ds_load_u8 v54, v110 offset:560
	ds_load_u8 v55, v110 offset:752
	ds_load_u8 v56, v110 offset:688
	ds_load_u8 v57, v110 offset:368
	ds_load_u8 v58, v110 offset:304
	ds_load_u8 v59, v110 offset:496
	ds_load_u8 v60, v110 offset:432
	ds_load_u8 v61, v110 offset:1888
	ds_load_u8 v62, v110 offset:112
	ds_load_u8 v63, v110 offset:240
	ds_load_u8 v64, v110 offset:176
	ds_load_u8 v97, v110 offset:1824
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v98, v52, v51, 0xc0c0004
	v_perm_b32 v41, v41, v46, 0xc0c0004
	v_perm_b32 v46, v48, v47, 0xc0c0004
	ds_load_u8 v47, v110 offset:2016
	ds_load_u8 v48, v110 offset:1952
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v99, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v117, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v41
	v_perm_b32 v46, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v45, v62, 0xc0c0004
	v_lshl_or_b32 v99, v117, 16, v99
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v59, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v112, v97, v61, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v46
	v_lshl_or_b32 v98, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v59, 16, v45
	v_wmma_i32_16x16x16_iu8 v[57:64], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[97:100], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v110 offset:1632
	ds_load_u8 v90, v110 offset:1568
	ds_load_u8 v91, v110 offset:1760
	ds_load_u8 v92, v110 offset:1696
	ds_load_u8 v93, v110 offset:1376
	ds_load_u8 v94, v110 offset:1312
	ds_load_u8 v95, v110 offset:1504
	ds_load_u8 v96, v110 offset:1440
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:4048
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v110 offset:3984
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v110 offset:3664
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v110 offset:3600
	v_lshl_or_b32 v91, v91, 16, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v92, v90, 0xc0c0004
	v_lshl_or_b32 v90, v95, 16, v93
	v_lshl_or_b32 v92, v117, 16, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v96, v94, 0xc0c0004
	ds_load_u8 v89, v110 offset:1120
	ds_load_u8 v93, v110 offset:1056
	ds_load_u8 v94, v110 offset:1248
	ds_load_u8 v95, v110 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v93, v89, 0xc0c0004
	ds_load_u8 v93, v110 offset:3792
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v110 offset:3728
	v_lshl_or_b32 v89, v94, 16, v89
	v_lshl_or_b32 v94, v97, 16, v111
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v111, s47, v190
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[89:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[89:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v110 offset:3472
	ds_load_u8 v90, v110 offset:1904
	ds_load_u8 v91, v110 offset:1840
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v92, s47, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v95, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v96
	ds_load_u8 v95, v110 offset:3408
	ds_load_u8 v96, v110 offset:3344
	ds_load_u8 v97, v110 offset:3536
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v97, 0xc0c0004
	ds_load_u8 v91, v92
	ds_load_u8 v92, v110 offset:1968
	ds_load_u8 v96, v110 offset:1648
	ds_load_u8 v97, v110 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v92, v110 offset:1776
	ds_load_u8 v97, v110 offset:1712
	v_lshl_or_b32 v98, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v97, v92, 0xc0c0004
	v_lshl_or_b32 v92, v89, 16, v95
	ds_load_u8 v89, v110 offset:1392
	ds_load_u8 v90, v110 offset:1328
	v_lshl_or_b32 v97, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:1520
	ds_load_u8 v91, v110 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v90, 16, v89
	ds_load_u8 v89, v110 offset:1136
	ds_load_u8 v90, v110 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:1264
	ds_load_u8 v91, v110 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v110 offset:3152
	ds_load_u8 v95, v110 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	v_lshl_or_b32 v95, v90, 16, v89
	ds_load_u8 v89, v110 offset:3280
	ds_load_u8 v90, v110 offset:3216
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[95:98], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v81, v110 offset:3040
	ds_load_u8 v82, v110 offset:2976
	ds_load_u8 v83, v110 offset:2656
	ds_load_u8 v84, v110 offset:2592
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[95:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v98, s47, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:2912
	ds_load_u8 v99, v110 offset:2848
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	ds_load_u8 v83, v110 offset:2784
	ds_load_u8 v84, v110 offset:2720
	v_lshl_or_b32 v91, v89, 16, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[91:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[91:94], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v209, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v210, v26
	v_cvt_f32_i32_e32 v211, v27
	v_cvt_f32_i32_e32 v212, v28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v99, v90, 0xc0c0004
	v_cvt_f32_i32_e32 v213, v29
	v_cvt_f32_i32_e32 v214, v30
	v_cvt_f32_i32_e32 v215, v31
	v_cvt_f32_i32_e32 v216, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_lshl_or_b32 v84, v81, 16, v90
	v_cvt_f32_i32_e32 v217, v33
	v_cvt_f32_i32_e32 v218, v34
	v_cvt_f32_i32_e32 v219, v35
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v81, v110 offset:2400
	ds_load_u8 v82, v110 offset:2336
	v_cvt_f32_i32_e32 v220, v36
	v_cvt_f32_i32_e32 v221, v37
	v_cvt_f32_i32_e32 v222, v38
	v_cvt_f32_i32_e32 v223, v39
	v_cvt_f32_i32_e32 v224, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v110 offset:2528
	ds_load_u8 v89, v110 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v89, v82, 0xc0c0004
	ds_load_u8 v89, v110 offset:2144
	ds_load_u8 v90, v110 offset:2080
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v85, v110 offset:2272
	ds_load_u8 v86, v110 offset:2208
	ds_load_u8 v87, v110 offset:3936
	ds_load_u8 v88, v110 offset:3872
	ds_load_u8 v90, v110 offset:4064
	ds_load_u8 v95, v110 offset:4000
	ds_load_u8 v96, v110 offset:3680
	ds_load_u8 v97, v110 offset:3616
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v95, v90, 0xc0c0004
	v_lshl_or_b32 v81, v85, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v97, v96, 0xc0c0004
	ds_load_u8 v90, v110 offset:3808
	ds_load_u8 v95, v110 offset:3744
	ds_load_u8 v96, v110 offset:3424
	ds_load_u8 v97, v110 offset:3360
	v_lshl_or_b32 v87, v87, 16, v86
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[81:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[81:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v97, v96, 0xc0c0004
	ds_load_u8 v96, v110 offset:3552
	ds_load_u8 v97, v110 offset:3488
	v_lshl_or_b32 v86, v90, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v96, 16, v95
	ds_load_u8 v88, v110 offset:3168
	ds_load_u8 v89, v110 offset:3104
	ds_load_u8 v90, v110 offset:3296
	ds_load_u8 v95, v110 offset:3232
	ds_load_u8 v96, v110 offset:2928
	ds_load_u8 v97, v110 offset:2864
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v95, v90, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v97, v96, 0xc0c0004
	ds_load_u8 v82, v98
	ds_load_u8 v83, v110 offset:2992
	ds_load_u8 v84, v110 offset:2672
	ds_load_u8 v90, v110 offset:2608
	ds_load_u8 v95, v110 offset:2800
	ds_load_u8 v96, v110 offset:2736
	ds_load_u8 v97, v110 offset:2416
	ds_load_u8 v98, v110 offset:2352
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v90, v84, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v98, v97, 0xc0c0004
	ds_load_u8 v84, v110 offset:2544
	ds_load_u8 v96, v110 offset:2480
	ds_load_u8 v97, v110 offset:2160
	ds_load_u8 v98, v110 offset:2096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v96, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v98, v97, 0xc0c0004
	ds_load_u8 v84, v110 offset:2288
	ds_load_u8 v97, v110 offset:2224
	v_lshl_or_b32 v98, v82, 16, v81
	v_lshl_or_b32 v96, v96, 16, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v97, v84, 0xc0c0004
	v_lshl_or_b32 v84, v89, 16, v88
	v_lshl_or_b32 v97, v90, 16, v83
	ds_load_u8 v81, v110 offset:3952
	ds_load_u8 v82, v110 offset:3888
	ds_load_u8 v83, v111
	ds_load_u8 v88, v110 offset:4016
	ds_load_u8 v89, v110 offset:3696
	ds_load_u8 v90, v110 offset:3632
	v_lshl_or_b32 v95, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[84:87], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[84:87], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[95:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[95:98], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v225, v49
	v_cvt_f32_i32_e32 v226, v50
	v_cvt_f32_i32_e32 v227, v51
	v_cvt_f32_i32_e32 v228, v52
	v_cvt_f32_i32_e32 v229, v53
	v_cvt_f32_i32_e32 v230, v54
	v_cvt_f32_i32_e32 v231, v55
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_cvt_f32_i32_e32 v232, v56
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v88, v83, 0xc0c0004
	v_cvt_f32_i32_e32 v233, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v90, v89, 0xc0c0004
	ds_load_u8 v88, v110 offset:3824
	ds_load_u8 v89, v110 offset:3760
	ds_load_u8 v90, v110 offset:3440
	ds_load_u8 v99, v110 offset:3376
	v_cvt_f32_i32_e32 v234, v58
	v_lshl_or_b32 v76, v82, 16, v81
	v_cvt_f32_i32_e32 v235, v59
	v_cvt_f32_i32_e32 v236, v60
	v_cvt_f32_i32_e32 v237, v61
	v_cvt_f32_i32_e32 v238, v62
	v_cvt_f32_i32_e32 v239, v63
	v_cvt_f32_i32_e32 v240, v64
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v99, v90, 0xc0c0004
	ds_load_u8 v90, v110 offset:3568
	ds_load_u8 v99, v110 offset:3504
	v_lshl_or_b32 v75, v88, 16, v83
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v99, v90, 0xc0c0004
	ds_load_u8 v99, v110 offset:3184
	ds_load_u8 v100, v110 offset:3120
	v_lshl_or_b32 v74, v90, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v110 offset:3312
	ds_load_u8 v110, v110 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v110, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[73:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v110, v41
	v_cvt_f32_i32_e32 v111, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v112, v43
	v_cvt_f32_i32_e32 v241, v44
	v_cvt_f32_i32_e32 v242, v45
	v_cvt_f32_i32_e32 v243, v46
	v_cvt_f32_i32_e32 v244, v47
	v_cvt_f32_i32_e32 v245, v48
	v_cvt_f32_i32_e32 v246, v1
	v_cvt_f32_i32_e32 v247, v2
	v_cvt_f32_i32_e32 v248, v3
	v_cvt_f32_i32_e32 v249, v4
	v_cvt_f32_i32_e32 v250, v5
	v_cvt_f32_i32_e32 v117, v6
	v_cvt_f32_i32_e32 v251, v7
	v_cvt_f32_i32_e32 v252, v8
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v150, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v119, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v137, s4, 1
	v_add_lshl_u32 v4, v138, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x2
	buffer_load_u16 v254, v1, s[8:11], 0 offen
	buffer_load_u16 v118, v3, s[8:11], 0 offen
	buffer_load_u16 v1, v4, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v5, v139, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v120, 0, v102
	v_dual_mov_b32 v10, 0 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v86, v5, s[8:11], 0 offen
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
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v59, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v8, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v103, v104
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v253, v1, v101
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v2
	v_mov_b32_e32 v2, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v253, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v120 offset:40960
	ds_load_b128 v[69:72], v120 offset:40976
	ds_load_b128 v[73:76], v120 offset:41472
	ds_load_b128 v[77:80], v120 offset:41488
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v110, off offset:44
	scratch_store_b32 off, v111, off offset:48
	scratch_store_b32 off, v112, off offset:52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s44, v108
	ds_load_b128 v[43:46], v1 offset:8192
	ds_load_b128 v[93:96], v1
	v_add_nc_u32_e32 v1, s44, v107
	ds_load_b128 v[47:50], v1 offset:8192
	ds_load_b128 v[101:104], v1
	v_add_nc_u32_e32 v1, s44, v106
	ds_load_b128 v[51:54], v1 offset:8192
	ds_load_b128 v[97:100], v1
	v_add_nc_u32_e32 v1, s44, v109
	v_mov_b32_e32 v85, v243
	v_mov_b32_e32 v243, v237
	v_dual_mov_b32 v237, v231 :: v_dual_mov_b32 v64, v197
	ds_load_b128 v[89:92], v1 offset:8192
	ds_load_b128 v[105:108], v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s45, v190
	v_dual_mov_b32 v231, v225 :: v_dual_add_nc_u32 v190, s45, v113
	v_mov_b32_e32 v225, v219
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v57.l, v86.l
	v_mov_b16_e32 v86.l, v118.l
	v_mov_b32_e32 v118, v198
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	scratch_store_b128 off, v[93:96], off offset:72 ; 16-byte Folded Spill
	v_mov_b32_e32 v84, v46
	v_dual_mov_b32 v82, v44 :: v_dual_mov_b32 v83, v45
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v112, v54
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_dual_mov_b32 v110, v52 :: v_dual_add_nc_u32 v1, s45, v116
	v_mov_b32_e32 v81, v43
	v_mov_b32_e32 v111, v53
	v_mov_b32_e32 v109, v51
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s45, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_clause 0x1                            ; 20-byte Folded Spill
	scratch_store_b128 off, v[81:84], off offset:12
	scratch_store_b32 off, v1, off offset:64
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s45, v114
	v_mov_b32_e32 v116, v50
	v_dual_mov_b32 v114, v48 :: v_dual_mov_b32 v115, v49
	v_mov_b32_e32 v113, v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v1, v190 offset:832
	ds_load_u8 v2, v190 offset:768
	scratch_store_b128 off, v[113:116], off offset:28 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v190 offset:960
	ds_load_u8 v3, v190 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v190 offset:576
	ds_load_u8 v2, v190 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v190 offset:704
	ds_load_u8 v3, v190 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v190 offset:320
	ds_load_u8 v2, v190 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v190 offset:448
	ds_load_u8 v3, v190 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v190 offset:64
	ds_load_u8 v2, v190
	ds_load_u8 v42, v190 offset:16
	ds_load_u8 v41, v190 offset:32
	ds_load_u8 v58, v190 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v190 offset:192
	ds_load_u8 v3, v190 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_mov_b32_e32 v1, s12
	ds_load_u8 v17, v190 offset:1856
	ds_load_u8 v18, v190 offset:1792
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[105:108], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:1984
	ds_load_u8 v19, v190 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v190 offset:1600
	ds_load_u8 v18, v190 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:1728
	ds_load_u8 v19, v190 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v190 offset:1344
	ds_load_u8 v18, v190 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:1472
	ds_load_u8 v19, v190 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v190 offset:1088
	ds_load_u8 v18, v190 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:1216
	ds_load_u8 v19, v190 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v190 offset:2880
	ds_load_u8 v18, v190 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:3008
	ds_load_u8 v19, v190 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v190 offset:2624
	ds_load_u8 v18, v190 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:2752
	ds_load_u8 v19, v190 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v190 offset:2368
	ds_load_u8 v18, v190 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:2496
	ds_load_u8 v19, v190 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v190 offset:2112
	ds_load_u8 v18, v190 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:2240
	ds_load_u8 v19, v190 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v190 offset:3904
	ds_load_u8 v18, v190 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:4032
	ds_load_u8 v19, v190 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v190 offset:3648
	ds_load_u8 v18, v190 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:3776
	ds_load_u8 v19, v190 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v190 offset:3392
	ds_load_u8 v18, v190 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:3520
	ds_load_u8 v19, v190 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v190 offset:3136
	ds_load_u8 v18, v190 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v190 offset:3264
	ds_load_u8 v19, v190 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v190 offset:848
	ds_load_u8 v26, v190 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[51:54], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[47:50], v[33:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v190 offset:1872
	ds_load_u8 v34, v190 offset:1808
	v_wmma_i32_16x16x16_iu8 v[17:24], v[43:46], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v190 offset:976
	ds_load_u8 v27, v190 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:2000
	ds_load_u8 v35, v190 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v190 offset:592
	ds_load_u8 v26, v190 offset:528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v190 offset:1616
	ds_load_u8 v34, v190 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v190 offset:720
	ds_load_u8 v27, v190 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:1744
	ds_load_u8 v35, v190 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v190 offset:336
	ds_load_u8 v26, v190 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v190 offset:1360
	ds_load_u8 v34, v190 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v190 offset:464
	ds_load_u8 v27, v190 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:1488
	ds_load_u8 v35, v190 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v190 offset:80
	ds_load_u8 v26, v190 offset:208
	ds_load_u8 v27, v190 offset:144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v190 offset:1104
	ds_load_u8 v34, v190 offset:1040
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:1232
	ds_load_u8 v35, v190 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v190 offset:2896
	ds_load_u8 v34, v190 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:3024
	ds_load_u8 v35, v190 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v190 offset:2640
	ds_load_u8 v34, v190 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:2768
	ds_load_u8 v35, v190 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v190 offset:2384
	ds_load_u8 v34, v190 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:2512
	ds_load_u8 v35, v190 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v190 offset:2128
	ds_load_u8 v34, v190 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:2256
	ds_load_u8 v35, v190 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v190 offset:3920
	ds_load_u8 v34, v190 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:4048
	ds_load_u8 v35, v190 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v190 offset:3664
	ds_load_u8 v34, v190 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:3792
	ds_load_u8 v35, v190 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v190 offset:3408
	ds_load_u8 v34, v190 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:3536
	ds_load_u8 v35, v190 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v190 offset:3152
	ds_load_u8 v34, v190 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v190 offset:3280
	ds_load_u8 v35, v190 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[42:45], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[109:112], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[113:116], v[50:53], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[59:62], v[33:40] neg_lo:[1,1,0]
	v_dual_mov_b32 v83, v252 :: v_dual_mov_b32 v252, v246
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[42:45], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v246, v240
	v_mov_b32_e32 v240, v234
	v_mov_b32_e32 v234, v228
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[46:49], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v228, v222
	v_mov_b32_e32 v222, v216
	v_mov_b32_e32 v216, v210
	v_mov_b32_e32 v210, v204
	v_wmma_i32_16x16x16_iu8 v[25:32], v[101:104], v[50:53], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v49, v190 offset:1888
	ds_load_u8 v50, v190 offset:1824
	v_mov_b32_e32 v204, v195
	v_dual_mov_b32 v82, v251 :: v_dual_mov_b32 v251, v245
	v_mov_b32_e32 v245, v239
	v_mov_b32_e32 v239, v233
	v_mov_b32_e32 v233, v227
	v_mov_b32_e32 v227, v221
	v_mov_b32_e32 v221, v215
	v_mov_b32_e32 v215, v209
	v_mov_b32_e32 v209, v203
	v_mov_b32_e32 v203, v194
	v_mov_b32_e32 v81, v117
	v_dual_mov_b32 v117, v250 :: v_dual_mov_b32 v250, v244
	v_mov_b32_e32 v244, v238
	v_mov_b32_e32 v238, v232
	v_mov_b32_e32 v232, v226
	v_mov_b32_e32 v226, v220
	v_mov_b32_e32 v220, v214
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:2016
	ds_load_u8 v51, v190 offset:1952
	v_mov_b32_e32 v214, v208
	v_mov_b32_e32 v208, v202
	v_mov_b32_e32 v202, v193
	ds_load_u8 v42, v190 offset:864
	ds_load_u8 v43, v190 offset:800
	v_mov_b32_e32 v219, v213
	v_mov_b32_e32 v213, v207
	v_mov_b32_e32 v207, v201
	v_mov_b32_e32 v201, v192
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v84, v253
	v_mov_b32_e32 v253, v241
	v_mov_b32_e32 v241, v235
	v_mov_b32_e32 v235, v229
	v_mov_b32_e32 v229, v223
	v_mov_b32_e32 v223, v217
	v_mov_b32_e32 v217, v211
	v_mov_b32_e32 v211, v205
	v_mov_b32_e32 v205, v199
	v_mov_b32_e32 v63, v196
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v116, v50, 16, v49
	ds_load_u8 v49, v190 offset:1632
	ds_load_u8 v50, v190 offset:1568
	ds_load_u8 v43, v190 offset:992
	ds_load_u8 v44, v190 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:1760
	ds_load_u8 v51, v190 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v190 offset:608
	ds_load_u8 v43, v190 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v115, v50, 16, v49
	ds_load_u8 v49, v190 offset:1376
	ds_load_u8 v50, v190 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v190 offset:736
	ds_load_u8 v44, v190 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:1504
	ds_load_u8 v51, v190 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v190 offset:352
	ds_load_u8 v43, v190 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v114, v50, 16, v49
	ds_load_u8 v49, v190 offset:1120
	ds_load_u8 v50, v190 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v190 offset:480
	ds_load_u8 v44, v190 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:1248
	ds_load_u8 v51, v190 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v190 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v113, v50, 16, v49
	ds_load_u8 v49, v190 offset:2912
	ds_load_u8 v50, v190 offset:2848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v190 offset:224
	ds_load_u8 v43, v190 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:3040
	ds_load_u8 v51, v190 offset:2976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[105:108], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[113:116], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v195, v50, 16, v49
	ds_load_u8 v49, v190 offset:2656
	ds_load_u8 v50, v190 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:2784
	ds_load_u8 v51, v190 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v50, 16, v49
	ds_load_u8 v49, v190 offset:2400
	ds_load_u8 v50, v190 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:2528
	ds_load_u8 v51, v190 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v50, 16, v49
	ds_load_u8 v49, v190 offset:2144
	ds_load_u8 v50, v190 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:2272
	ds_load_u8 v51, v190 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v50, 16, v49
	ds_load_u8 v49, v190 offset:3936
	ds_load_u8 v50, v190 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[192:195], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:4064
	ds_load_u8 v51, v190 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v50, 16, v49
	ds_load_u8 v49, v190 offset:3680
	ds_load_u8 v50, v190 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:3808
	ds_load_u8 v51, v190 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v50, 16, v49
	ds_load_u8 v49, v190 offset:3424
	ds_load_u8 v50, v190 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:3552
	ds_load_u8 v51, v190 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v50, 16, v49
	ds_load_u8 v49, v190 offset:3168
	ds_load_u8 v50, v190 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v190 offset:3296
	ds_load_u8 v51, v190 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[59:62], v[1:8] neg_lo:[1,1,0]
	scratch_load_b128 v[59:62], off, off offset:28 ; 16-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[196:199], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[109:112], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_mov_b32_e32 v94, v92
	v_dual_mov_b32 v93, v91 :: v_dual_mov_b32 v92, v90
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[59:62], v[192:195], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v195, v204 :: v_dual_mov_b32 v204, v210
	v_mov_b32_e32 v210, v216
	v_mov_b32_e32 v216, v222
	v_dual_mov_b32 v194, v203 :: v_dual_mov_b32 v203, v209
	v_mov_b32_e32 v209, v215
	v_mov_b32_e32 v215, v221
	v_mov_b32_e32 v221, v227
	v_mov_b32_e32 v227, v233
	v_mov_b32_e32 v233, v239
	v_mov_b32_e32 v239, v245
	v_mov_b32_e32 v245, v251
	v_mov_b32_e32 v251, v82
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b128 v[59:62], off, off offset:12
	scratch_load_b32 v82, off, off offset:64
	v_mov_b32_e32 v91, v89
	v_dual_mov_b32 v87, v109 :: v_dual_mov_b32 v88, v110
	v_dual_mov_b32 v89, v111 :: v_dual_mov_b32 v90, v112
	ds_load_u8 v109, v190 offset:1904
	ds_load_u8 v110, v190 offset:1840
	v_mov_b32_e32 v222, v228
	v_mov_b32_e32 v228, v234
	v_mov_b32_e32 v234, v240
	v_mov_b32_e32 v240, v246
	v_mov_b32_e32 v246, v252
	v_mov_b32_e32 v252, v83
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v110, v82
	ds_load_u8 v111, v190 offset:1968
	scratch_load_b32 v82, off, off offset:60 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[49:56], v[59:62], v[196:199], v[49:56] neg_lo:[1,1,0]
	v_mov_b32_e32 v198, v118
	v_mov_b16_e32 v118.l, v86.l
	v_mov_b16_e32 v86.l, v57.l
	scratch_load_b32 v57, off, off offset:68 ; 4-byte Folded Reload
	ds_load_u8 v59, v190 offset:880
	ds_load_u8 v60, v190 offset:816
	v_dual_mov_b32 v197, v64 :: v_dual_mov_b32 v196, v63
	v_mov_b32_e32 v199, v205
	v_mov_b32_e32 v205, v211
	v_mov_b32_e32 v211, v217
	v_mov_b32_e32 v217, v223
	v_mov_b32_e32 v223, v229
	v_mov_b32_e32 v229, v235
	v_mov_b32_e32 v235, v241
	v_mov_b32_e32 v241, v253
	v_mov_b32_e32 v253, v84
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v110, 16, v109
	ds_load_u8 v109, v190 offset:1648
	ds_load_u8 v110, v190 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	ds_load_u8 v60, v190 offset:944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v190 offset:1776
	ds_load_u8 v111, v190 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v60, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v116, v57, 16, v59
	ds_load_u8 v57, v190 offset:624
	ds_load_u8 v59, v190 offset:560
	v_lshl_or_b32 v111, v110, 16, v109
	ds_load_u8 v109, v190 offset:1392
	ds_load_u8 v110, v190 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v190 offset:752
	ds_load_u8 v60, v190 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v190 offset:1520
	ds_load_u8 v192, v190 offset:1456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v192, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v115, v59, 16, v57
	ds_load_u8 v57, v190 offset:368
	ds_load_u8 v59, v190 offset:304
	v_lshl_or_b32 v110, v110, 16, v109
	ds_load_u8 v109, v190 offset:1136
	ds_load_u8 v192, v190 offset:1072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v190 offset:496
	ds_load_u8 v60, v190 offset:432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v192, v109, 0xc0c0004
	ds_load_u8 v192, v190 offset:1264
	ds_load_u8 v193, v190 offset:1200
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v114, v59, 16, v57
	ds_load_u8 v57, v190 offset:112
	v_lshl_or_b32 v109, v192, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v190 offset:240
	ds_load_u8 v59, v190 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v105, v190 offset:2928
	ds_load_u8 v106, v190 offset:2864
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[109:112], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v82
	ds_load_u8 v107, v190 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v190 offset:2672
	ds_load_u8 v106, v190 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v190 offset:2800
	ds_load_u8 v107, v190 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v106, 16, v105
	ds_load_u8 v105, v190 offset:2416
	ds_load_u8 v106, v190 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v190 offset:2544
	ds_load_u8 v192, v190 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v192, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v190 offset:2160
	ds_load_u8 v192, v190 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v192, v105, 0xc0c0004
	ds_load_u8 v192, v190 offset:2288
	ds_load_u8 v193, v190 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	v_dual_mov_b32 v193, v202 :: v_dual_mov_b32 v202, v208
	v_mov_b32_e32 v208, v214
	v_mov_b32_e32 v214, v220
	v_mov_b32_e32 v220, v226
	v_mov_b32_e32 v226, v232
	v_mov_b32_e32 v232, v238
	v_mov_b32_e32 v238, v244
	v_mov_b32_e32 v244, v250
	v_mov_b32_e32 v250, v117
	v_mov_b32_e32 v117, v81
	scratch_load_b32 v81, off, off offset:56 ; 4-byte Folded Reload
	v_lshl_or_b32 v105, v192, 16, v105
	v_wmma_i32_16x16x16_iu8 v[1:8], v[91:94], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[105:108], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v101, v190 offset:3952
	ds_load_u8 v102, v190 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[87:90], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v102, v81
	ds_load_u8 v103, v190 offset:4016
	scratch_load_b128 v[81:84], off, off offset:72 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v190 offset:3696
	ds_load_u8 v102, v190 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v190 offset:3824
	ds_load_u8 v103, v190 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v101
	ds_load_u8 v101, v190 offset:3440
	ds_load_u8 v102, v190 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v190 offset:3568
	ds_load_u8 v192, v190 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v192, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v190 offset:3184
	ds_load_u8 v192, v190 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v192, v101, 0xc0c0004
	ds_load_u8 v192, v190 offset:3312
	ds_load_u8 v190, v190 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v190, v192, 0xc0c0004
	v_dual_mov_b32 v192, v201 :: v_dual_mov_b32 v201, v207
	v_mov_b32_e32 v207, v213
	v_mov_b32_e32 v213, v219
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v101, v190, 16, v101
	v_mov_b32_e32 v219, v225
	v_mov_b32_e32 v225, v231
	v_mov_b32_e32 v231, v237
	v_mov_b32_e32 v237, v243
	v_mov_b32_e32 v243, v85
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[101:104], v[57:64] neg_lo:[1,1,0]
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b32 v112, off, off offset:52
	scratch_load_b32 v111, off, off offset:48
	scratch_load_b32 v110, off, off offset:44
	scratch_load_b128 v[81:84], off, off offset:28
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[105:108], v[1:8] neg_lo:[1,1,0]
	scratch_load_b128 v[81:84], off, off offset:12 ; 16-byte Folded Reload
	v_cvt_f32_i32_e32 v105, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	v_cvt_f32_i32_e32 v20, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v23, v24
	v_cvt_f32_i32_e32 v24, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s43, 31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v102, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s43, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v64, v150, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v81, v119, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v137, s4, 1
	v_add_lshl_u32 v83, v138, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v84, v139, s4, 1
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x3
	buffer_load_u16 v85, v64, s[8:11], 0 offen
	buffer_load_u16 v82, v82, s[8:11], 0 offen
	buffer_load_u16 v83, v83, s[8:11], 0 offen
	buffer_load_u16 v84, v84, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v81, v81, s[24:27], 0 offen
	v_mov_b16_e32 v64.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v64.h, v86.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s37, s41, s35
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v80, v64
	v_mul_f32_e32 v87, v79, v64
	v_mul_f32_e32 v89, v77, v64
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s70, s37, s35
	s_add_i32 s69, s37, s40
	s_add_i32 s68, s37, s33
	s_lshl2_add_u32 s67, s35, s37
	s_mul_i32 s4, s35, 7
	s_mul_i32 s5, s35, 9
	s_add_i32 s64, s37, s4
	s_mul_i32 s6, s35, 10
	s_lshl3_add_u32 s63, s35, s37
	s_mul_i32 s7, s35, 11
	s_add_i32 s62, s37, s5
	s_mul_i32 s8, s35, 12
	s_add_i32 s61, s37, s6
	s_mul_i32 s9, s35, 13
	s_add_i32 s60, s37, s7
	s_mul_i32 s12, s35, 14
	s_add_i32 s59, s37, s8
	s_mul_i32 s13, s35, 15
	s_add_i32 s58, s37, s9
	s_add_i32 s57, s37, s12
	s_mul_i32 s14, s35, 17
	s_add_i32 s56, s37, s13
	s_mul_i32 s15, s35, 18
	s_lshl4_add_u32 s55, s35, s37
	s_mul_i32 s16, s35, 19
	s_add_i32 s54, s37, s14
	s_mul_i32 s17, s35, 20
	s_add_i32 s53, s37, s15
	s_mul_i32 s18, s35, 21
	s_add_i32 s52, s37, s16
	s_mul_i32 s19, s35, 22
	s_add_i32 s51, s37, s17
	s_mul_i32 s20, s35, 23
	s_add_i32 s50, s37, s18
	s_mul_i32 s21, s35, 24
	s_add_i32 s49, s37, s19
	s_mul_i32 s22, s35, 25
	s_add_i32 s48, s37, s20
	s_mul_i32 s23, s35, 26
	s_add_i32 s47, s37, s21
	s_mul_i32 s24, s35, 27
	s_add_i32 s46, s37, s22
	s_mul_i32 s25, s35, 28
	s_add_i32 s45, s37, s23
	s_mul_i32 s26, s35, 29
	s_add_i32 s44, s37, s24
	s_mul_i32 s27, s35, 30
	s_add_i32 s43, s37, s25
	s_mul_i32 s28, s35, 31
	s_add_i32 s42, s37, s26
	s_lshl_b32 s29, s35, 5
	s_add_i32 s41, s37, s27
	s_mul_i32 s30, s35, 33
	s_add_i32 s40, s37, s28
	s_mul_i32 s31, s35, 34
	s_add_i32 s39, s37, s29
	s_mul_i32 s34, s35, 35
	s_add_i32 s38, s37, s30
	s_mul_i32 s36, s35, 36
	s_mul_i32 s71, s35, 37
	s_mul_i32 s72, s35, 38
	s_mul_i32 s73, s35, 39
	s_mul_i32 s74, s35, 40
	s_mul_i32 s75, s35, 41
	s_mul_i32 s76, s35, 42
	s_mul_i32 s77, s35, 43
	s_mul_i32 s78, s35, 44
	s_mul_i32 s79, s35, 45
	s_mul_i32 s80, s35, 46
	s_mul_i32 s81, s35, 47
	s_mul_i32 s82, s35, 48
	s_mul_i32 s83, s35, 49
	s_mul_i32 s84, s35, 50
	s_mul_i32 s85, s35, 51
	s_mul_i32 s86, s35, 52
	s_mul_i32 s87, s35, 53
	s_mul_i32 s88, s35, 54
	s_mul_i32 s89, s35, 55
	s_mul_i32 s90, s35, 56
	s_mul_i32 s91, s35, 57
	s_mul_i32 s92, s35, 58
	s_mul_i32 s93, s35, 59
	s_mul_i32 s94, s35, 60
	s_mul_i32 s95, s35, 61
	s_mul_i32 s96, s35, 62
	s_mul_i32 s97, s35, 63
	s_add_i32 s33, s37, s34
	s_add_i32 s30, s37, s71
	s_add_i32 s29, s37, s72
	s_add_i32 s23, s37, s73
	s_add_i32 s22, s37, s74
	s_add_i32 s21, s37, s75
	s_add_i32 s19, s37, s76
	s_add_i32 s17, s37, s77
	s_add_i32 s13, s37, s78
	s_add_i32 s12, s37, s79
	s_add_i32 s8, s37, s80
	s_add_i32 s34, s37, s82
	s_add_i32 s26, s37, s83
	s_add_i32 s28, s37, s84
	s_add_i32 s27, s37, s85
	s_add_i32 s25, s37, s86
	s_add_i32 s24, s37, s87
	s_add_i32 s20, s37, s88
	s_add_i32 s18, s37, s89
	s_add_i32 s16, s37, s90
	s_add_i32 s14, s37, s91
	s_add_i32 s15, s37, s92
	s_add_i32 s9, s37, s93
	s_add_i32 s7, s37, s94
	s_add_i32 s5, s37, s95
	s_add_i32 s6, s37, s96
	s_add_i32 s4, s37, s97
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v88, v78, v64 :: v_dual_lshlrev_b32 v85, 16, v85
	v_mul_f32_e32 v90, v76, v64
	v_mul_f32_e32 v91, v75, v64
	v_mul_f32_e32 v92, v74, v64
	v_mul_f32_e32 v93, v73, v64
	v_mul_f32_e32 v94, v72, v64
	v_mul_f32_e32 v95, v71, v64
	v_mul_f32_e32 v96, v70, v64
	v_mul_f32_e32 v97, v69, v64
	v_mul_f32_e32 v98, v68, v64
	v_mul_f32_e32 v99, v67, v64
	v_mul_f32_e32 v100, v66, v64
	v_mul_f32_e32 v101, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v64.h, v102.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v90, v90, v249, v185
	v_fma_f32 v91, v91, v248, v184
	v_fma_f32 v92, v92, v247, v183
	v_fma_f32 v93, v93, v246, v182
	v_fma_f32 v94, v94, v245, v180
	v_fma_f32 v95, v95, v244, v179
	v_fma_f32 v96, v96, v243, v178
	v_fma_f32 v97, v97, v242, v177
	v_fma_f32 v98, v98, v241, v176
	v_fma_f32 v99, v99, v112, v175
	v_fma_f32 v100, v100, v111, v174
	v_fma_f32 v101, v101, v110, v173
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v80, v64
	v_mul_f32_e32 v103, v79, v64
	v_mul_f32_e32 v104, v78, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v89, v89, v250, v186
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v106, v77, v64
	v_mul_f32_e32 v107, v76, v64
	v_mul_f32_e32 v108, v75, v64
	v_mul_f32_e32 v109, v74, v64
	v_mul_f32_e32 v110, v73, v64
	v_mul_f32_e32 v111, v72, v64
	v_mul_f32_e32 v112, v71, v64
	v_mul_f32_e32 v113, v70, v64
	v_mul_f32_e32 v114, v69, v64
	v_mul_f32_e32 v115, v68, v64
	v_mul_f32_e32 v116, v67, v64
	v_mul_f32_e32 v137, v66, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v86, v252, v181
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v138, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v64.h, v118.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v186, v89, s3
	v_cndmask_b32_e64 v90, v185, v90, s3
	v_cndmask_b32_e64 v86, v181, v86, s3
	v_cndmask_b32_e64 v91, v184, v91, s3
	v_cndmask_b32_e64 v92, v183, v92, s3
	v_cndmask_b32_e64 v93, v182, v93, s3
	v_cndmask_b32_e64 v94, v180, v94, s3
	v_cndmask_b32_e64 v95, v179, v95, s3
	v_cndmask_b32_e64 v96, v178, v96, s3
	v_cndmask_b32_e64 v97, v177, v97, s3
	v_cndmask_b32_e64 v98, v176, v98, s3
	v_cndmask_b32_e64 v99, v175, v99, s3
	v_cndmask_b32_e64 v100, v174, v100, s3
	v_cndmask_b32_e64 v101, v173, v101, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v115, v115, v228, v160
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v139, v80, v64
	v_mul_f32_e32 v150, v79, v64
	v_mul_f32_e32 v173, v78, v64
	v_mul_f32_e32 v174, v77, v64
	v_mul_f32_e32 v175, v76, v64
	v_mul_f32_e32 v176, v75, v64
	v_mul_f32_e32 v177, v74, v64
	v_mul_f32_e32 v178, v73, v64
	v_mul_f32_e32 v179, v72, v64
	v_mul_f32_e32 v180, v71, v64
	v_mul_f32_e32 v181, v70, v64
	v_mul_f32_e32 v182, v69, v64
	v_mul_f32_e32 v183, v68, v64
	v_mul_f32_e32 v184, v67, v64
	v_mul_f32_e32 v185, v66, v64
	v_mul_f32_e32 v186, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v64.h, v254.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v160, v115, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v160, v176, v219, v151
	v_fma_f32 v88, v88, v117, v187
	v_fma_f32 v113, v113, v230, v162
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v80, v80, v64
	v_mul_f32_e32 v79, v79, v64
	v_mul_f32_e32 v78, v78, v64
	v_mul_f32_e32 v77, v77, v64
	v_mul_f32_e32 v76, v76, v64
	v_mul_f32_e32 v75, v75, v64
	v_mul_f32_e32 v74, v74, v64
	v_mul_f32_e32 v73, v73, v64
	v_mul_f32_e32 v72, v72, v64
	v_mul_f32_e32 v71, v71, v64
	v_mul_f32_e32 v70, v70, v64
	v_mul_f32_e32 v69, v69, v64
	v_mul_f32_e32 v68, v68, v64
	v_mul_f32_e32 v67, v67, v64
	v_mul_f32_e32 v66, v66, v64
	v_mul_f32_e32 v64, v65, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v151, v151, v160, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v79, v206, v135
	v_fma_f32 v78, v78, v205, v134
	v_fma_f32 v77, v77, v204, v133
	v_fma_f32 v76, v76, v203, v132
	v_fma_f32 v75, v75, v202, v131
	v_fma_f32 v74, v74, v201, v130
	v_fma_f32 v73, v73, v200, v129
	v_fma_f32 v72, v72, v199, v128
	v_fma_f32 v160, v64, v208, v121
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v135, v135, v79, s3
	v_cndmask_b32_e64 v134, v134, v78, s3
	v_cndmask_b32_e64 v133, v133, v77, s3
	v_cndmask_b32_e64 v117, v132, v76, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v253, v64 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v131, v75, s3
	v_cndmask_b32_e64 v130, v130, v74, s3
	v_cndmask_b32_e64 v129, v129, v73, s3
	v_cndmask_b32_e64 v128, v128, v72, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[72:75], v120 offset:41472
	ds_load_b128 v[76:79], v120 offset:41488
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v116, v116, v227, v159
	v_fma_f32 v137, v137, v226, v158
	v_fma_f32 v138, v138, v225, v157
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v113, v162, v113, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v139, v139, v224, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v159, v116, s3
	v_cndmask_b32_e64 v137, v158, v137, s3
	v_cndmask_b32_e64 v138, v157, v138, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v150, v150, v223, v155
	v_fma_f32 v158, v174, v221, v153
	v_fma_f32 v159, v175, v220, v152
	v_fma_f32 v162, v178, v217, v148
	v_fma_f32 v65, v80, v207, v136
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v139, v156, v139, s3
	v_cndmask_b32_e64 v150, v155, v150, s3
	v_cndmask_b32_e64 v153, v153, v158, s3
	v_cndmask_b32_e64 v152, v152, v159, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v71, v195, v127
	v_fma_f32 v155, v70, v194, v126
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v178, v76, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v173, v222, v154
	v_fma_f32 v156, v69, v193, v125
	v_fma_f32 v158, v67, v191, v123
	v_fma_f32 v159, v66, v189, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v136, v65, s3
	v_cndmask_b32_e64 v154, v154, v157, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v68, v192, v124
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[64:67], v120 offset:40960
	ds_load_b128 v[68:71], v120 offset:40976
	v_mul_f32_e32 v189, v72, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v87, v87, v251, v188
	v_fma_f32 v106, v106, v237, v169
	v_fma_f32 v107, v107, v236, v168
	v_fma_f32 v108, v108, v235, v167
	v_fma_f32 v109, v109, v234, v166
	v_fma_f32 v114, v114, v229, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v188, v87, s3
	v_cndmask_b32_e64 v106, v169, v106, s3
	v_cndmask_b32_e64 v107, v168, v107, s3
	v_cndmask_b32_e64 v108, v167, v108, s3
	v_cndmask_b32_e64 v109, v166, v109, s3
	v_cndmask_b32_e64 v114, v161, v114, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v190, v73, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v169, v185, v210, v141
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v191, v74, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v166, v182, v213, v144
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v182, v65, v83 :: v_dual_mul_f32 v173, v71, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v110, v233, v165
	v_fma_f32 v161, v177, v218, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v188, v71, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v167, v183, v212, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v193, v76, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v165, v110, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v165, v181, v214, v145
	v_fma_f32 v168, v184, v211, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v184, v67, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v149, v161, s3
	v_cndmask_b32_e64 v148, v148, v162, s3
	v_cndmask_b32_e64 v145, v145, v165, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v165, v78, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v102, v240, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v144, v144, v166, s3
	v_cndmask_b32_e64 v143, v143, v167, s3
	v_cndmask_b32_e64 v142, v142, v168, s3
	v_cndmask_b32_e64 v141, v141, v169, s3
	v_cndmask_b32_e64 v102, v172, v102, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v172, v70, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v111, v232, v164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v127, v80, s3
	v_cndmask_b32_e64 v126, v126, v155, s3
	v_cndmask_b32_e64 v125, v125, v156, s3
	v_cndmask_b32_e64 v124, v124, v157, s3
	v_cndmask_b32_e64 v111, v164, v111, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v164, v180, v215, v146
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v120, v123, v158, s3
	v_cndmask_b32_e64 v122, v122, v159, s3
	v_cndmask_b32_e64 v121, v121, v160, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v64, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v146, v146, v164, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v77, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v103, v103, v239, v171
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v127, v65, v85
	v_mul_f32_e32 v132, v66, v85
	v_mul_f32_e32 v136, v67, v85
	v_mul_f32_e32 v155, v68, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v171, v103, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v171, v69, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v112, v112, v231, v163
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v69, v85
	v_mul_f32_e32 v157, v70, v85
	v_mul_f32_e32 v158, v71, v85
	v_mul_f32_e32 v159, v72, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v163, v112, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v163, v179, v216, v147
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v160, v73, v85
	v_mul_f32_e32 v161, v74, v85
	v_mul_f32_e32 v162, v75, v85
	v_mul_f32_e32 v166, v64, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v147, v163, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v163, v76, v85
	v_mul_f32_e32 v85, v79, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v104, v238, v170
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v167, v65, v82
	v_mul_f32_e32 v168, v66, v82
	v_mul_f32_e32 v169, v67, v82
	v_mul_f32_e32 v181, v64, v83
	v_dual_mul_f32 v183, v66, v83 :: v_dual_mul_f32 v64, v64, v84
	v_mul_f32_e32 v65, v65, v84
	v_mul_f32_e32 v66, v66, v84
	v_mul_f32_e32 v67, v67, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v170, v104, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v175, v73, v82
	v_mul_f32_e32 v195, v78, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v170, v186, v209, v140
	v_fma_f32 v12, v155, v12, v125
	v_fma_f32 v16, v159, v16, v129
	v_fma_f32 v56, v64, v56, v101
	v_fma_f32 v64, v65, v57, v100
	v_fma_f32 v65, v66, v58, v99
	v_fma_f32 v66, v67, v59, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v187, v88, s3
	v_cndmask_b32_e64 v140, v140, v170, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v170, v68, v82
	v_mul_f32_e32 v174, v72, v82
	v_mul_f32_e32 v176, v74, v82
	v_mul_f32_e32 v177, v75, v82
	v_mul_f32_e32 v179, v77, v82
	v_mul_f32_e32 v180, v78, v82
	v_dual_mul_f32 v82, v79, v82 :: v_dual_mul_f32 v185, v68, v83
	v_mul_f32_e32 v186, v69, v83
	v_mul_f32_e32 v187, v70, v83
	v_mul_f32_e32 v192, v75, v83
	v_mul_f32_e32 v194, v77, v83
	v_dual_mul_f32 v83, v79, v83 :: v_dual_mul_f32 v68, v68, v84
	v_mul_f32_e32 v69, v69, v84
	v_mul_f32_e32 v70, v70, v84
	v_mul_f32_e32 v71, v71, v84
	v_mul_f32_e32 v72, v72, v84
	v_mul_f32_e32 v73, v73, v84
	v_mul_f32_e32 v74, v74, v84
	v_mul_f32_e32 v75, v75, v84
	v_mul_f32_e32 v76, v76, v84
	v_mul_f32_e32 v77, v77, v84
	v_mul_f32_e32 v78, v78, v84
	v_mul_f32_e32 v79, v79, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v123, v105, v121
	v_fma_f32 v11, v136, v11, v124
	v_fma_f32 v123, v160, v17, v130
	v_fma_f32 v136, v175, v33, v149
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v125, v12, s2
	v_cndmask_b32_e64 v33, v129, v16, s2
	v_cndmask_b32_e64 v12, v99, v65, s2
	v_cndmask_b32_e64 v16, v98, v66, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v65, 0xcf0, v255
	v_lshl_or_b32 v66, v197, 1, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v166, v24, v140
	v_fma_f32 v40, v181, v40, v138
	v_fma_f32 v9, v127, v9, v122
	v_fma_f32 v10, v132, v10, v120
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v65, v66, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v158, v15, v128
	v_fma_f32 v26, v168, v26, v142
	v_fma_f32 v158, v183, v42, v116
	v_fma_f32 v18, v161, v18, v131
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v65, v198, 13, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v162, v19, v117
	v_fma_f32 v20, v163, v20, v133
	v_fma_f32 v28, v170, v28, v144
	v_fma_f32 v44, v185, v44, v114
	v_fma_f32 v60, v68, v60, v97
	v_fma_f32 v14, v157, v14, v80
	v_fma_f32 v27, v169, v27, v143
	v_fma_f32 v30, v172, v30, v146
	v_fma_f32 v160, v187, v46, v112
	v_fma_f32 v68, v70, v62, v95
	v_fma_f32 v32, v174, v32, v148
	v_fma_f32 v35, v177, v35, v152
	v_fma_f32 v36, v178, v36, v153
	v_fma_f32 v48, v189, v48, v110
	v_fma_f32 v70, v72, v1, v93
	v_fma_f32 v155, v176, v34, v151
	v_fma_f32 v43, v184, v43, v115
	v_fma_f32 v162, v191, v50, v108
	v_fma_f32 v67, v69, v61, v96
	v_fma_f32 v69, v71, v63, v94
	v_fma_f32 v71, v73, v2, v92
	v_fma_f32 v72, v74, v3, v91
	v_fma_f32 v73, v75, v4, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v121, v84, s2
	v_cndmask_b32_e64 v2, v140, v24, s2
	v_cndmask_b32_e64 v3, v138, v40, s2
	v_cndmask_b32_e64 v4, v101, v56, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v66, 0, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v156, v13, v126
	v_fma_f32 v74, v76, v5, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v122, v9, s2
	v_cndmask_b32_e64 v9, v120, v10, s2
	v_cndmask_b32_e64 v13, v124, v11, s2
	v_cndmask_b32_e64 v10, v142, v26, s2
	v_cndmask_b32_e64 v11, v116, v158, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v82, v39, v139
	v_fma_f32 v82, v182, v41, v137
	v_fma_f32 v159, v186, v45, v113
	v_fma_f32 v161, v190, v49, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v131, v18, s2
	v_cndmask_b32_e64 v45, v117, v19, s2
	v_cndmask_b32_e64 v49, v133, v20, s2
	v_cndmask_b32_e64 v18, v144, v28, s2
	v_cndmask_b32_e64 v19, v114, v44, s2
	v_cndmask_b32_e64 v20, v97, v60, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v85, v23, v81
	v_fma_f32 v85, v167, v25, v141
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v80, v14, s2
	v_cndmask_b32_e64 v14, v143, v27, s2
	v_cndmask_b32_e64 v26, v146, v30, s2
	v_cndmask_b32_e64 v27, v112, v160, s2
	v_cndmask_b32_e64 v28, v95, v68, s2
	v_cndmask_b32_e64 v34, v148, v32, s2
	v_cndmask_b32_e64 v46, v152, v35, s2
	v_cndmask_b32_e64 v50, v153, v36, s2
	v_cndmask_b32_e64 v35, v110, v48, s2
	v_cndmask_b32_e64 v36, v93, v70, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v132, v171, v29, v145
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v128, v15, s2
	v_cndmask_b32_e64 v42, v151, v155, s2
	v_cndmask_b32_e64 v15, v115, v43, s2
	v_cndmask_b32_e64 v43, v108, v162, s2
	v_cndmask_b32_e64 v44, v91, v72, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v66, v[1:4]
	ds_store_b128 v66, v[9:12] offset:256
	ds_store_b128 v66, v[17:20] offset:512
	ds_store_b128 v66, v[25:28] offset:768
	ds_store_b128 v66, v[33:36] offset:4096
	ds_store_b128 v66, v[41:44] offset:4352
	scratch_load_b32 v3, off, off offset:4  ; 4-byte Folded Reload
	v_and_b32_e32 v1, 0x1c00, v196
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v173, v31, v147
	v_fma_f32 v47, v188, v47, v111
	v_fma_f32 v51, v192, v51, v107
	v_fma_f32 v52, v193, v52, v106
	v_fma_f32 v127, v164, v21, v134
	v_fma_f32 v22, v165, v22, v135
	v_fma_f32 v157, v180, v38, v150
	v_fma_f32 v164, v195, v54, v103
	v_fma_f32 v76, v78, v7, v87
	v_fma_f32 v156, v179, v37, v154
	v_fma_f32 v163, v194, v53, v104
	v_fma_f32 v75, v77, v6, v88
	v_fma_f32 v83, v83, v55, v102
	v_fma_f32 v77, v79, v8, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v130, v123, s2
	v_cndmask_b32_e64 v6, v141, v85, s2
	v_cndmask_b32_e64 v30, v147, v31, s2
	v_cndmask_b32_e64 v38, v149, v136, s2
	v_cndmask_b32_e64 v62, v139, v39, s2
	v_cndmask_b32_e64 v7, v137, v82, s2
	v_cndmask_b32_e64 v31, v111, v47, s2
	v_cndmask_b32_e64 v39, v109, v161, s2
	v_cndmask_b32_e64 v47, v107, v51, s2
	v_cndmask_b32_e64 v51, v106, v52, s2
	v_cndmask_b32_e64 v8, v100, v64, s2
	v_cndmask_b32_e64 v40, v92, v71, s2
	v_cndmask_b32_e64 v52, v89, v74, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v2, v65, 32, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v135, v22, s2
	v_cndmask_b32_e64 v58, v150, v157, s2
	v_cndmask_b32_e64 v59, v103, v164, s2
	v_cndmask_b32_e64 v48, v90, v73, s2
	v_cndmask_b32_e64 v60, v87, v76, s2
	v_cndmask_b32_e64 v21, v126, v105, s2
	v_cndmask_b32_e64 v53, v134, v127, s2
	v_cndmask_b32_e64 v61, v81, v23, s2
	v_cndmask_b32_e64 v22, v145, v132, s2
	v_cndmask_b32_e64 v54, v154, v156, s2
	v_cndmask_b32_e64 v23, v113, v159, s2
	v_cndmask_b32_e64 v55, v104, v163, s2
	v_cndmask_b32_e64 v24, v96, v67, s2
	v_cndmask_b32_e64 v56, v88, v75, s2
	v_cndmask_b32_e64 v63, v102, v83, s2
	v_cndmask_b32_e64 v32, v94, v69, s2
	v_cndmask_b32_e64 v64, v86, v77, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v66, v[49:52] offset:4608
	ds_store_b128 v66, v[57:60] offset:4864
	ds_store_b128 v2, v[5:8]
	ds_store_b128 v2, v[13:16] offset:256
	ds_store_b128 v2, v[21:24] offset:512
	ds_store_b128 v2, v[29:32] offset:768
	ds_store_b128 v2, v[37:40] offset:4096
	ds_store_b128 v2, v[45:48] offset:4352
	ds_store_b128 v2, v[53:56] offset:4608
	ds_store_b128 v2, v[61:64] offset:4864
	v_add_lshl_u32 v64, s37, v119, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s35, 5
	s_mul_i32 s3, s35, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v65, s70, v119, 2
	v_add_lshl_u32 v66, s69, v119, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s66, s37, s2
	s_add_i32 s65, s37, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	v_add_lshl_u32 v67, s68, v119, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s35, s37, s31
	s_add_i32 s31, s37, s36
	s_add_i32 s36, s37, s81
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt vmcnt(0)
	v_and_or_b32 v1, 0x300, v3, v1
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_or3_b32 v41, v1, v0, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v41
	v_xad_u32 v12, 0x2010, v41, 0
	v_xad_u32 v28, 0x6030, v41, 0
	v_xad_u32 v20, 0x4020, v41, 0
	v_xad_u32 v44, 0xa050, v41, 0
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	v_xad_u32 v36, 0x8040, v41, 0
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[28:31], v28 offset:128
	v_xad_u32 v52, 0xc060, v41, 0
	v_xad_u32 v60, 0xe070, v41, 0
	ds_load_b128 v[40:43], v44
	ds_load_b128 v[44:47], v44 offset:128
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[52:55], v52 offset:128
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[32:35], v36
	ds_load_b128 v[36:39], v36 offset:128
	ds_load_b128 v[60:63], v60 offset:128
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v67, s[0:3], 0 offen
	v_add_lshl_u32 v0, s67, v119, 2
	v_add_lshl_u32 v8, s66, v119, 2
	v_add_lshl_u32 v16, s65, v119, 2
	v_add_lshl_u32 v24, s64, v119, 2
	v_add_lshl_u32 v64, s63, v119, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v40, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v48, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v24, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v64, s[0:3], 0 offen
	v_add_lshl_u32 v0, s62, v119, 2
	v_add_lshl_u32 v4, s61, v119, 2
	v_add_lshl_u32 v8, s60, v119, 2
	v_add_lshl_u32 v16, s59, v119, 2
	v_add_lshl_u32 v24, s58, v119, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v8, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v24, s[0:3], 0 offen
	v_add_lshl_u32 v0, s57, v119, 2
	v_add_lshl_u32 v4, s56, v119, 2
	v_add_lshl_u32 v8, s55, v119, 2
	v_add_lshl_u32 v12, s54, v119, 2
	v_add_lshl_u32 v16, s53, v119, 2
	buffer_atomic_add_f32 v52, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, s52, v119, 2
	v_add_lshl_u32 v1, s51, v119, 2
	v_add_lshl_u32 v4, s50, v119, 2
	v_add_lshl_u32 v8, s49, v119, 2
	v_add_lshl_u32 v9, s48, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s47, v119, 2
	v_add_lshl_u32 v1, s46, v119, 2
	v_add_lshl_u32 v4, s45, v119, 2
	v_add_lshl_u32 v8, s44, v119, 2
	v_add_lshl_u32 v9, s43, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s42, v119, 2
	v_add_lshl_u32 v1, s41, v119, 2
	v_add_lshl_u32 v4, s40, v119, 2
	v_add_lshl_u32 v5, s39, v119, 2
	v_add_lshl_u32 v8, s38, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, s35, v119, 2
	v_add_lshl_u32 v1, s33, v119, 2
	v_add_lshl_u32 v2, s31, v119, 2
	v_add_lshl_u32 v4, s30, v119, 2
	v_add_lshl_u32 v5, s29, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v34, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s23, v119, 2
	v_add_lshl_u32 v1, s22, v119, 2
	v_add_lshl_u32 v2, s21, v119, 2
	v_add_lshl_u32 v4, s19, v119, 2
	v_add_lshl_u32 v5, s17, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s13, v119, 2
	v_add_lshl_u32 v1, s12, v119, 2
	v_add_lshl_u32 v2, s8, v119, 2
	v_add_lshl_u32 v4, s36, v119, 2
	v_add_lshl_u32 v5, s34, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v54, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s26, v119, 2
	v_add_lshl_u32 v1, s28, v119, 2
	v_add_lshl_u32 v2, s27, v119, 2
	v_add_lshl_u32 v3, s25, v119, 2
	v_add_lshl_u32 v4, s24, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s20, v119, 2
	v_add_lshl_u32 v1, s18, v119, 2
	v_add_lshl_u32 v2, s16, v119, 2
	v_add_lshl_u32 v3, s14, v119, 2
	v_add_lshl_u32 v4, s15, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s9, v119, 2
	v_add_lshl_u32 v1, s7, v119, 2
	v_add_lshl_u32 v2, s5, v119, 2
	v_add_lshl_u32 v3, s6, v119, 2
	v_add_lshl_u32 v4, s4, v119, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v55, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v4, s[0:3], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 98
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 98
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 92
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27260
; TotalNumSgprs: 100
; NumVgprs: 256
; ScratchSize: 92
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 100
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 92
    .sgpr_count:     100
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
