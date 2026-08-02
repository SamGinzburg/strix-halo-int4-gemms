	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_and_b32_e32 v63, 0xf0, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v117, 15, v0
	v_lshlrev_b32_e32 v88, 4, v0
	v_or_b32_e32 v92, 0x3f0, v0
	v_lshrrev_b32_e32 v3, 2, v63
	v_or_b32_e32 v93, 0x7f0, v0
	v_or_b32_e32 v94, 0xbf0, v0
	v_or_b32_e32 v95, 0xff0, v0
	v_and_b32_e32 v96, 32, v0
	v_or_b32_e32 v7, 16, v117
	v_or_b32_e32 v8, 32, v117
	v_or_b32_e32 v9, 48, v117
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 63
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s27, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s26, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v85, v117, 4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mad_u64_u32 v[86:87], null, s27, 3, v[85:86]
	v_lshl_add_u32 v89, s27, 1, v85
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
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
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 48, v88
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
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
	s_sub_i32 s24, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s24, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s14, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_addk_i32 s12, 0x7f
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s14, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s14, 8
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
	s_lshr_b32 s3, s3, 25
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s12, s3
.Ltmp21:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v87, v2, v1, s34
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s27, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s15, s26, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s33, s2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s15, v87
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v85
	v_add_nc_u32_e32 v4, s12, v89
	v_add_nc_u32_e32 v5, s12, v86
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s17, s27, 6
	v_add_nc_u32_e32 v6, s27, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s17
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s16, s26, 6
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[10:13], v1, s[4:7], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[14:17], v4, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v5, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s12, v89
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v6, s3
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v4, s15, s16, v87
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s12, v86
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[22:25], v1, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v5, s2
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_b128 v[30:33], v2, s[20:23], 0 offen
	buffer_load_b128 v[34:37], v4, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v85
	v_lshlrev_b32_e32 v5, 5, v0
	v_lshlrev_b32_e32 v6, 3, v0
	s_mov_b32 s12, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s27, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x1
	buffer_load_b128 v[38:41], v2, s[20:23], 0 offen
	buffer_load_b128 v[42:45], v4, s[20:23], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[46:49], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	v_and_b32_e32 v1, 14, v0
	v_lshlrev_b32_e32 v4, 6, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x420, v2
	v_xor_b32_e32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v97, v1, 10, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, 0, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v98, 0x90, v97
	v_xor_b32_e32 v99, 0x120, v97
	v_xor_b32_e32 v100, 0x1b0, v97
	v_xor_b32_e32 v105, 0x210, v97
	v_add_nc_u32_e32 v3, 0, v97
	v_xor_b32_e32 v106, 0x330, v97
	v_xor_b32_e32 v107, 0x3a0, v97
	v_add_nc_u32_e32 v50, 0, v98
	v_add_nc_u32_e32 v51, 0, v99
	v_add_nc_u32_e32 v52, 0, v100
	v_add_nc_u32_e32 v53, 0, v105
	v_add_nc_u32_e32 v54, 0, v106
	v_add_nc_u32_e32 v55, 0, v107
	v_add_nc_u32_e32 v56, 0x4000, v3
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	v_add_nc_u32_e32 v60, 0x4000, v53
	v_add_nc_u32_e32 v61, 0x4000, v54
	v_add_nc_u32_e32 v62, 0x4000, v55
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v2, v[10:13] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v10, v18, v14, 0x4000501
	v_perm_b32 v11, v18, v14, 0x6020703
	v_perm_b32 v12, v19, v15, 0x4000501
	v_perm_b32 v13, v19, v15, 0x6020703
	v_perm_b32 v14, v20, v16, 0x4000501
	v_perm_b32 v15, v20, v16, 0x6020703
	v_perm_b32 v16, v21, v17, 0x4000501
	v_perm_b32 v17, v21, v17, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v18, v26, v22, 0x4000501
	v_perm_b32 v19, v26, v22, 0x6020703
	v_perm_b32 v20, v27, v23, 0x4000501
	v_perm_b32 v21, v27, v23, 0x6020703
	v_perm_b32 v22, v28, v24, 0x4000501
	v_perm_b32 v23, v28, v24, 0x6020703
	v_perm_b32 v24, v29, v25, 0x4000501
	v_perm_b32 v25, v29, v25, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v34, v30, 0x4000501
	v_perm_b32 v27, v34, v30, 0x6020703
	v_perm_b32 v34, v10, v18, 0x7060302
	v_perm_b32 v10, v10, v18, 0x5040100
	v_perm_b32 v18, v11, v19, 0x7060302
	v_perm_b32 v11, v11, v19, 0x5040100
	v_perm_b32 v19, v12, v20, 0x7060302
	v_perm_b32 v12, v12, v20, 0x5040100
	v_perm_b32 v20, v13, v21, 0x7060302
	v_perm_b32 v13, v13, v21, 0x5040100
	v_perm_b32 v21, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v15, v23, 0x7060302
	v_perm_b32 v15, v15, v23, 0x5040100
	v_perm_b32 v23, v16, v24, 0x7060302
	v_perm_b32 v16, v16, v24, 0x5040100
	v_perm_b32 v24, v17, v25, 0x7060302
	v_perm_b32 v17, v17, v25, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v25, v42, v38, 0x4000501
	v_perm_b32 v28, v35, v31, 0x4000501
	v_perm_b32 v29, v35, v31, 0x6020703
	v_perm_b32 v35, v42, v38, 0x6020703
	v_perm_b32 v30, v36, v32, 0x4000501
	v_perm_b32 v31, v36, v32, 0x6020703
	v_perm_b32 v36, v43, v39, 0x4000501
	v_perm_b32 v32, v37, v33, 0x4000501
	v_perm_b32 v33, v37, v33, 0x6020703
	v_perm_b32 v37, v43, v39, 0x6020703
	v_perm_b32 v38, v44, v40, 0x4000501
	v_perm_b32 v39, v44, v40, 0x6020703
	v_perm_b32 v40, v45, v41, 0x4000501
	v_perm_b32 v41, v45, v41, 0x6020703
	ds_store_2addr_b32 v3, v34, v10 offset1:16
	ds_store_2addr_b32 v50, v18, v11 offset1:16
	ds_store_2addr_b32 v51, v19, v12 offset1:16
	ds_store_2addr_b32 v52, v20, v13 offset1:16
	ds_store_2addr_b32 v53, v21, v14 offset1:16
	ds_store_2addr_b32 v3, v22, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v54, v23, v16 offset1:16
	ds_store_2addr_b32 v55, v24, v17 offset1:16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[46:49] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v2, v26, v25, 0x7060302
	v_perm_b32 v3, v26, v25, 0x5040100
	v_perm_b32 v10, v27, v35, 0x7060302
	v_perm_b32 v11, v27, v35, 0x5040100
	v_perm_b32 v12, v28, v36, 0x7060302
	v_perm_b32 v13, v28, v36, 0x5040100
	v_perm_b32 v14, v29, v37, 0x7060302
	v_perm_b32 v15, v29, v37, 0x5040100
	v_perm_b32 v16, v30, v38, 0x7060302
	v_perm_b32 v17, v30, v38, 0x5040100
	v_perm_b32 v18, v31, v39, 0x7060302
	v_perm_b32 v19, v31, v39, 0x5040100
	v_perm_b32 v20, v32, v40, 0x7060302
	v_perm_b32 v21, v32, v40, 0x5040100
	v_perm_b32 v22, v33, v41, 0x7060302
	v_perm_b32 v23, v33, v41, 0x5040100
	ds_store_2addr_b32 v56, v2, v3 offset1:16
	ds_store_2addr_b32 v57, v10, v11 offset1:16
	ds_store_2addr_b32 v58, v12, v13 offset1:16
	ds_store_2addr_b32 v59, v14, v15 offset1:16
	ds_store_2addr_b32 v60, v16, v17 offset1:16
	ds_store_2addr_b32 v56, v18, v19 offset0:160 offset1:176
	ds_store_2addr_b32 v61, v20, v21 offset1:16
	ds_store_2addr_b32 v62, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 0x1800, v5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v113, 0x3f0, v0
	v_or_b32_e32 v114, 0x7f0, v0
	v_or_b32_e32 v115, 0xbf0, v0
	v_or_b32_e32 v116, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v91, 48, v6
	v_and_b32_e32 v3, 8, v0
	v_and_b32_e32 v2, 32, v0
	v_and_or_b32 v90, 0x1c0, v4, v10
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr90
.LBB0_3:                                ; %Flow94
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v11, s34, v117
	v_or_b32_e32 v7, s34, v7
	v_or_b32_e32 v8, s34, v8
	v_or_b32_e32 v9, s34, v9
	s_ashr_i32 s0, s14, 7
	v_and_b32_e32 v10, 1, v0
	v_mul_lo_u32 v155, v11, s0
	v_mul_lo_u32 v145, v7, s0
	v_mul_lo_u32 v146, v8, s0
	v_mul_lo_u32 v147, v9, s0
	v_or_b32_e32 v154, s33, v0
	v_lshlrev_b32_e32 v103, 2, v63
	v_lshlrev_b32_e32 v101, 1, v1
	v_lshlrev_b32_e32 v104, 5, v10
	v_lshlrev_b32_e32 v102, 1, v63
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s1, s30, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v2, 0x1800, v5
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s31, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v91, 48, v6
	v_and_b32_e32 v1, 0x210, v1
	v_bfe_i32 v3, v0, 5, 1
	v_and_or_b32 v90, 0x1c0, v4, v2
	v_add3_u32 v9, 0, v103, v104
.Ltmp23:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v108, s27, v85
	v_xor_b32_e32 v1, v1, v91
	v_and_b32_e32 v2, 0x420, v3
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v114, 0, v102
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v113, v9, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v90, v1
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_xor_b32_e32 v109, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v110, 16, v109
	v_xor_b32_e32 v111, 32, v109
	v_xor_b32_e32 v112, 48, v109
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_mov_b32_e32 v180, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s10, s1, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s11, 1
	s_add_i32 s45, 0, 0x8000
	s_add_i32 s44, 0, 0x9000
	s_add_i32 s35, 0, 0x4000
	s_add_i32 s31, s31, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s30
	s_mov_b32 s30, s1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s1, s10, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v115, s45, v117
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s1, s26, v[87:88]
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s12, v111
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[73:76], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v115 offset:832
	ds_load_u8 v10, v115 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v115 offset:960
	ds_load_u8 v11, v115 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v115 offset:576
	ds_load_u8 v12, v115 offset:512
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v115 offset:320
	ds_load_u8 v10, v115 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115 offset:704
	ds_load_u8 v13, v115 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v11
	ds_load_u8 v10, v115 offset:448
	ds_load_u8 v11, v115 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v115 offset:64
	ds_load_u8 v10, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v115 offset:192
	ds_load_u8 v11, v115 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v115 offset:1856
	ds_load_u8 v10, v115 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v115 offset:1984
	ds_load_u8 v11, v115 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v115 offset:1600
	ds_load_u8 v12, v115 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v115 offset:1344
	ds_load_u8 v10, v115 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v115 offset:1728
	ds_load_u8 v13, v115 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v115 offset:1472
	ds_load_u8 v11, v115 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v115 offset:1088
	ds_load_u8 v10, v115 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v115 offset:1216
	ds_load_u8 v11, v115 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s12, v109
	v_add_nc_u32_e32 v10, s12, v110
	ds_load_b128 v[57:60], v9
	ds_load_b128 v[61:64], v10
	ds_load_b128 v[77:80], v9 offset:8192
	ds_load_b128 v[81:84], v10 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v115 offset:848
	ds_load_u8 v26, v115 offset:784
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v115 offset:976
	ds_load_u8 v27, v115 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v115 offset:592
	ds_load_u8 v28, v115 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v115 offset:336
	ds_load_u8 v26, v115 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v115 offset:720
	ds_load_u8 v29, v115 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v115 offset:464
	ds_load_u8 v27, v115 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v115 offset:16
	ds_load_u8 v26, v115 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v115 offset:208
	ds_load_u8 v27, v115 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v115 offset:1872
	ds_load_u8 v26, v115 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[57:60], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v115 offset:2000
	ds_load_u8 v27, v115 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v115 offset:1616
	ds_load_u8 v28, v115 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v115 offset:1360
	ds_load_u8 v26, v115 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v115 offset:1744
	ds_load_u8 v29, v115 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v115 offset:1488
	ds_load_u8 v27, v115 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v115 offset:1104
	ds_load_u8 v26, v115 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v115 offset:1232
	ds_load_u8 v27, v115 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v115 offset:864
	ds_load_u8 v42, v115 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v115 offset:992
	ds_load_u8 v43, v115 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v115 offset:608
	ds_load_u8 v44, v115 offset:544
	v_lshl_or_b32 v68, v42, 16, v41
	ds_load_u8 v41, v115 offset:352
	ds_load_u8 v42, v115 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v115 offset:736
	ds_load_u8 v45, v115 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v44, 16, v43
	ds_load_u8 v42, v115 offset:480
	ds_load_u8 v43, v115 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v66, v42, 16, v41
	ds_load_u8 v41, v115 offset:32
	ds_load_u8 v42, v115 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v115 offset:224
	ds_load_u8 v43, v115 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v42, 16, v41
	ds_load_u8 v41, v115 offset:1888
	ds_load_u8 v42, v115 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v115 offset:2016
	ds_load_u8 v43, v115 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v115 offset:1632
	ds_load_u8 v44, v115 offset:1568
	v_lshl_or_b32 v72, v42, 16, v41
	ds_load_u8 v41, v115 offset:1376
	ds_load_u8 v42, v115 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v115 offset:1760
	ds_load_u8 v45, v115 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v44, 16, v43
	ds_load_u8 v42, v115 offset:1504
	ds_load_u8 v43, v115 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v70, v42, 16, v41
	ds_load_u8 v41, v115 offset:1120
	ds_load_u8 v42, v115 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v115 offset:1248
	ds_load_u8 v43, v115 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[65:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v65, v115 offset:880
	ds_load_u8 v66, v115 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[69:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s45, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v115 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v115 offset:624
	ds_load_u8 v68, v115 offset:560
	v_lshl_or_b32 v191, v66, 16, v65
	ds_load_u8 v65, v115 offset:368
	ds_load_u8 v66, v115 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v115 offset:752
	ds_load_u8 v69, v115 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v190, v68, 16, v67
	ds_load_u8 v66, v115 offset:496
	ds_load_u8 v67, v115 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_lshl_or_b32 v189, v66, 16, v65
	ds_load_u8 v65, v115 offset:48
	ds_load_u8 v66, v115 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v66, 0xc0c0004
	ds_load_u8 v66, v115 offset:240
	ds_load_u8 v67, v115 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v66, 16, v65
	ds_load_u8 v65, v115 offset:1904
	ds_load_u8 v66, v115 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s45, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v115 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v115 offset:1648
	ds_load_u8 v68, v115 offset:1584
	v_lshl_or_b32 v195, v66, 16, v65
	ds_load_u8 v65, v115 offset:1392
	ds_load_u8 v66, v115 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v115 offset:1776
	ds_load_u8 v69, v115 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v194, v68, 16, v67
	ds_load_u8 v66, v115 offset:1520
	ds_load_u8 v67, v115 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_lshl_or_b32 v193, v66, 16, v65
	ds_load_u8 v65, v115 offset:1136
	ds_load_u8 v66, v115 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v115 offset:1264
	ds_load_u8 v67, v115 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v192, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[65:72], v[57:60], v[188:191], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[61:64], v[192:195], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[188:191], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:2880
	ds_load_u8 v78, v115 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[188:191], v116 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[192:195], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:3008
	ds_load_u8 v79, v115 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:2624
	ds_load_u8 v80, v115 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:2752
	ds_load_u8 v81, v115 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:2368
	ds_load_u8 v78, v115 offset:2304
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:2496
	ds_load_u8 v81, v115 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:2112
	ds_load_u8 v81, v115 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v115 offset:2240
	ds_load_u8 v82, v115 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[188:191], v[77:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[77:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:2896
	ds_load_u8 v78, v115 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:3024
	ds_load_u8 v79, v115 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:2640
	ds_load_u8 v80, v115 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:2768
	ds_load_u8 v116, v115 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:2384
	ds_load_u8 v78, v115 offset:2320
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:2512
	ds_load_u8 v116, v115 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:2128
	ds_load_u8 v116, v115 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v115 offset:2256
	ds_load_u8 v118, v115 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v118, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[188:191], v[77:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:2912
	ds_load_u8 v78, v115 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:3040
	ds_load_u8 v79, v115 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:2656
	ds_load_u8 v80, v115 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:2784
	ds_load_u8 v116, v115 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:2400
	ds_load_u8 v78, v115 offset:2336
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:2528
	ds_load_u8 v116, v115 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:2144
	ds_load_u8 v116, v115 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v115 offset:2272
	ds_load_u8 v118, v115 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v118, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[188:191], v[77:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:2928
	ds_load_u8 v78, v115 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v78, s45, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v115 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:2672
	ds_load_u8 v80, v115 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:2800
	ds_load_u8 v116, v115 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:2416
	ds_load_u8 v78, v115 offset:2352
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:2544
	ds_load_u8 v116, v115 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:2160
	ds_load_u8 v116, v115 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v115 offset:2288
	ds_load_u8 v118, v115 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v118, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v77, v116, 16, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s12, v112
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s1, s27
	s_add_i32 s12, s12, s33
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[188:191], v[77:80], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:3904
	ds_load_u8 v78, v115 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[188:191], v116 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:4032
	ds_load_u8 v79, v115 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:3648
	ds_load_u8 v80, v115 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:3776
	ds_load_u8 v81, v115 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:3392
	ds_load_u8 v78, v115 offset:3328
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:3520
	ds_load_u8 v81, v115 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:3136
	ds_load_u8 v81, v115 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v115 offset:3264
	ds_load_u8 v82, v115 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[188:191], v[77:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[77:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:3920
	ds_load_u8 v78, v115 offset:3856
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:4048
	ds_load_u8 v79, v115 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:3664
	ds_load_u8 v80, v115 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:3792
	ds_load_u8 v116, v115 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:3408
	ds_load_u8 v78, v115 offset:3344
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:3536
	ds_load_u8 v116, v115 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:3152
	ds_load_u8 v116, v115 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v115 offset:3280
	ds_load_u8 v118, v115 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v118, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[188:191], v[77:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:3936
	ds_load_u8 v78, v115 offset:3872
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
	ds_load_u8 v78, v115 offset:4064
	ds_load_u8 v79, v115 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:3680
	ds_load_u8 v80, v115 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:3808
	ds_load_u8 v116, v115 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:3424
	ds_load_u8 v78, v115 offset:3360
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:3552
	ds_load_u8 v116, v115 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:3168
	ds_load_u8 v116, v115 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v115 offset:3296
	ds_load_u8 v118, v115 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v118, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[188:191], v[77:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v77, v115 offset:3952
	ds_load_u8 v78, v115 offset:3888
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
	v_add_nc_u32_e32 v78, s45, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v115 offset:4016
	s_mov_b32 s45, s44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v115 offset:3696
	ds_load_u8 v80, v115 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v115 offset:3824
	ds_load_u8 v116, v115 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v115 offset:3440
	ds_load_u8 v78, v115 offset:3376
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v115 offset:3568
	ds_load_u8 v116, v115 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v115 offset:3184
	ds_load_u8 v116, v115 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v115 offset:3312
	ds_load_u8 v115, v115 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v77, v115, 16, v77
	v_cvt_f32_i32_e32 v115, v16
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[188:191], v[77:80], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v78, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s12, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v82, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s12, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v80, v11
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
	v_perm_b32 v116, v13, v9, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s12, v89
	v_add_nc_u32_e32 v13, s12, v86
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v118, v14, v10, 0x4000501
	v_perm_b32 v196, v14, v10, 0x6020703
	v_perm_b32 v197, v15, v11, 0x4000501
	v_perm_b32 v198, v15, v11, 0x6020703
	v_perm_b32 v199, v16, v12, 0x4000501
	v_perm_b32 v200, v16, v12, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s12, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 25
	s_add_i32 s14, s14, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s14, 7
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s0
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s11, 14
	s_waitcnt vmcnt(0)
	v_perm_b32 v201, v13, v9, 0x4000501
	v_perm_b32 v202, v13, v9, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v154, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v203, v14, v10, 0x4000501
	v_perm_b32 v204, v14, v10, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v145, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v207, v16, v12, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v208, v16, v12, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v12, v147, s12, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v205, v15, v11, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v206, v15, v11, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v11, v146, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v113, v9 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v155, s12, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s12, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x3
	buffer_load_u16 v209, v9, s[36:39], 0 offen
	buffer_load_u16 v210, v10, s[36:39], 0 offen
	buffer_load_u16 v211, v11, s[36:39], 0 offen
	buffer_load_u16 v212, v12, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v114 offset:40960
	ds_load_b128 v[13:16], v114 offset:40976
	ds_load_b128 v[188:191], v114 offset:41472
	ds_load_b128 v[192:195], v114 offset:41488
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v213, s14, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s35, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s44, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s31
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v213, v[73:76] offset:32768
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v74, 16, v210
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v212
	v_lshlrev_b32_e32 v73, 16, v209
	v_lshlrev_b32_e32 v75, 16, v211
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v213, v9, v74
	v_mul_f32_e32 v214, v10, v74
	v_dual_mul_f32 v215, v11, v74 :: v_dual_mul_f32 v210, v10, v73
	v_mul_f32_e32 v216, v12, v74
	v_mul_f32_e32 v218, v10, v75
	v_mul_f32_e32 v220, v12, v75
	v_dual_mul_f32 v10, v10, v76 :: v_dual_mul_f32 v209, v9, v73
	v_mul_f32_e32 v211, v11, v73
	v_mul_f32_e32 v212, v12, v73
	v_dual_mul_f32 v12, v12, v76 :: v_dual_mul_f32 v217, v9, v75
	v_mul_f32_e32 v219, v11, v75
	v_mul_f32_e32 v9, v9, v76
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v11, v11, v76 :: v_dual_mul_f32 v224, v16, v73
	v_dual_mul_f32 v221, v13, v73 :: v_dual_mul_f32 v226, v14, v74
	v_mul_f32_e32 v222, v14, v73
	v_dual_mul_f32 v223, v15, v73 :: v_dual_mul_f32 v228, v16, v74
	v_dual_mul_f32 v225, v13, v74 :: v_dual_mul_f32 v230, v14, v75
	v_dual_mul_f32 v227, v15, v74 :: v_dual_mul_f32 v232, v16, v75
	v_dual_mul_f32 v229, v13, v75 :: v_dual_mul_f32 v14, v14, v76
	v_dual_mul_f32 v231, v15, v75 :: v_dual_mul_f32 v16, v16, v76
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v13, v13, v76 :: v_dual_mul_f32 v236, v191, v73
	v_dual_mul_f32 v15, v15, v76 :: v_dual_mul_f32 v234, v189, v73
	v_dual_mul_f32 v233, v188, v73 :: v_dual_mul_f32 v238, v189, v74
	v_dual_mul_f32 v235, v190, v73 :: v_dual_mul_f32 v240, v191, v74
	v_dual_mul_f32 v237, v188, v74 :: v_dual_mul_f32 v242, v189, v75
	v_dual_mul_f32 v239, v190, v74 :: v_dual_mul_f32 v244, v191, v75
	v_mul_f32_e32 v241, v188, v75
	v_dual_mul_f32 v243, v190, v75 :: v_dual_mul_f32 v188, v188, v76
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v189, v189, v76 :: v_dual_mul_f32 v248, v192, v74
	v_mul_f32_e32 v190, v190, v76
	v_dual_mul_f32 v191, v191, v76 :: v_dual_mul_f32 v246, v193, v73
	v_dual_mul_f32 v245, v192, v73 :: v_dual_mul_f32 v250, v194, v74
	v_mul_f32_e32 v247, v194, v73
	v_dual_mul_f32 v73, v195, v73 :: v_dual_mul_f32 v252, v193, v75
	v_mul_f32_e32 v249, v193, v74
	v_dual_mul_f32 v74, v195, v74 :: v_dual_mul_f32 v251, v192, v75
	v_mul_f32_e32 v253, v194, v75
	v_dual_mul_f32 v75, v195, v75 :: v_dual_mul_f32 v192, v192, v76
	v_mul_f32_e32 v193, v193, v76
	v_mul_f32_e32 v194, v194, v76
	v_mul_f32_e32 v76, v195, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v195, v201, v64, 0x7060302
	v_perm_b32 v64, v201, v64, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v120, v210, v18 :: v_dual_add_nc_u32 v201, s35, v97
	v_dual_fmac_f32 v122, v212, v20 :: v_dual_fmac_f32 v121, v211, v19
	v_fmac_f32_e32 v119, v209, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v201, v195, v64 offset1:16
	v_perm_b32 v64, v202, v116, 0x7060302
	v_perm_b32 v116, v202, v116, 0x5040100
	v_add_nc_u32_e32 v195, s35, v98
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v123, v221, v21 :: v_dual_fmac_f32 v124, v222, v22
	v_dual_fmac_f32 v125, v223, v23 :: v_dual_fmac_f32 v126, v224, v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v195, v64, v116 offset1:16
	v_perm_b32 v64, v203, v118, 0x7060302
	v_perm_b32 v116, v203, v118, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v127, v233, v78 :: v_dual_add_nc_u32 v118, s35, v99
	v_dual_fmac_f32 v128, v234, v79 :: v_dual_fmac_f32 v129, v235, v80
	v_fmac_f32_e32 v130, v236, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v118, v64, v116 offset1:16
	v_perm_b32 v64, v204, v196, 0x7060302
	v_perm_b32 v116, v204, v196, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v131, v245, v82 :: v_dual_add_nc_u32 v118, s35, v100
	v_dual_fmac_f32 v132, v246, v83 :: v_dual_fmac_f32 v133, v247, v84
	v_fmac_f32_e32 v134, v73, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v118, v64, v116 offset1:16
	v_perm_b32 v64, v205, v197, 0x7060302
	v_perm_b32 v116, v205, v197, 0x5040100
	v_add_nc_u32_e32 v118, s35, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v135, v213, v33 :: v_dual_fmac_f32 v136, v214, v34
	v_dual_fmac_f32 v137, v215, v35 :: v_dual_fmac_f32 v138, v216, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v118, v64, v116 offset1:16
	v_perm_b32 v64, v206, v198, 0x7060302
	v_perm_b32 v116, v206, v198, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v139, v225, v37 :: v_dual_add_nc_u32 v118, s35, v106
	v_dual_fmac_f32 v140, v226, v38 :: v_dual_fmac_f32 v141, v227, v39
	v_fmac_f32_e32 v142, v228, v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v201, v64, v116 offset0:160 offset1:176
	v_perm_b32 v64, v207, v199, 0x7060302
	v_perm_b32 v116, v207, v199, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v143, v237, v25 :: v_dual_fmac_f32 v144, v238, v26
	v_dual_fmac_f32 v148, v239, v27 :: v_dual_fmac_f32 v149, v240, v28
	v_dual_fmac_f32 v150, v248, v29 :: v_dual_fmac_f32 v151, v249, v30
	v_dual_fmac_f32 v152, v250, v31 :: v_dual_fmac_f32 v159, v220, v52
	v_dual_fmac_f32 v153, v74, v32 :: v_dual_fmac_f32 v156, v217, v49
	v_dual_fmac_f32 v157, v218, v50 :: v_dual_fmac_f32 v158, v219, v51
	v_dual_fmac_f32 v160, v229, v53 :: v_dual_fmac_f32 v161, v230, v54
	v_dual_fmac_f32 v162, v231, v55 :: v_dual_fmac_f32 v163, v232, v56
	v_dual_fmac_f32 v164, v241, v41 :: v_dual_fmac_f32 v165, v242, v42
	v_dual_fmac_f32 v166, v243, v43 :: v_dual_fmac_f32 v167, v244, v44
	v_dual_fmac_f32 v168, v251, v45 :: v_dual_fmac_f32 v169, v252, v46
	v_dual_fmac_f32 v170, v253, v47 :: v_dual_fmac_f32 v171, v75, v48
	v_dual_fmac_f32 v172, v9, v65 :: v_dual_fmac_f32 v173, v10, v66
	v_dual_fmac_f32 v174, v11, v67 :: v_dual_fmac_f32 v175, v12, v68
	v_dual_fmac_f32 v176, v13, v69 :: v_dual_fmac_f32 v177, v14, v70
	v_dual_fmac_f32 v178, v15, v71 :: v_dual_fmac_f32 v179, v16, v72
	v_dual_fmac_f32 v181, v188, v57 :: v_dual_fmac_f32 v182, v189, v58
	v_dual_fmac_f32 v183, v190, v59 :: v_dual_fmac_f32 v184, v191, v60
	v_dual_fmac_f32 v185, v192, v61 :: v_dual_fmac_f32 v186, v193, v62
	v_dual_fmac_f32 v187, v194, v63 :: v_dual_fmac_f32 v180, v76, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v9, v208, v200, 0x7060302
	v_perm_b32 v10, v208, v200, 0x5040100
	v_add_nc_u32_e32 v11, s35, v107
	ds_store_2addr_b32 v118, v64, v116 offset1:16
	ds_store_2addr_b32 v11, v9, v10 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v114, v93 :: v_dual_and_b32 v3, 8, v0
	v_dual_mov_b32 v113, v92 :: v_dual_mov_b32 v116, v95
	v_dual_mov_b32 v115, v94 :: v_dual_mov_b32 v2, v96
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	s_add_i32 s45, 0, 0x8000
	s_add_i32 s44, 0, 0x9000
	s_add_i32 s35, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v254, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v91
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_or_b32_e32 v1, v90, v1
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v109, v1, v2
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v207, 0
	v_xor_b32_e32 v106, 16, v109
	v_xor_b32_e32 v107, 32, v109
	v_xor_b32_e32 v108, 48, v109
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v247, 0
	v_mov_b32_e32 v248, 0
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
	v_add_nc_u32_e32 v110, s45, v117
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
	v_add_nc_u32_e32 v118, s45, v113
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
	v_cvt_f32_i32_e32 v188, v10
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
	v_cvt_f32_i32_e32 v254, v11
	v_cvt_f32_i32_e32 v190, v12
	v_cvt_f32_i32_e32 v191, v13
	v_cvt_f32_i32_e32 v192, v14
	v_cvt_f32_i32_e32 v193, v15
	v_cvt_f32_i32_e32 v194, v16
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v26, v25, 0xc0c0004
	v_cvt_f32_i32_e32 v195, v17
	v_cvt_f32_i32_e32 v196, v18
	v_cvt_f32_i32_e32 v197, v19
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
	v_cvt_f32_i32_e32 v198, v20
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
	v_cvt_f32_i32_e32 v199, v21
	v_lshl_or_b32 v54, v36, 16, v35
	v_cvt_f32_i32_e32 v200, v22
	v_cvt_f32_i32_e32 v201, v23
	v_cvt_f32_i32_e32 v202, v24
	v_cvt_f32_i32_e32 v203, v9
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
	ds_load_u8 v51, v118
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
	v_perm_b32 v118, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v41
	v_perm_b32 v46, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v45, v62, 0xc0c0004
	v_lshl_or_b32 v99, v118, 16, v99
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
	v_perm_b32 v118, v48, v47, 0xc0c0004
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
	v_lshl_or_b32 v92, v118, 16, v112
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
	v_add_nc_u32_e32 v111, s45, v116
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[89:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[89:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v110 offset:3472
	ds_load_u8 v90, v110 offset:1904
	ds_load_u8 v91, v110 offset:1840
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v92, s45, v114
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
	v_add_nc_u32_e32 v98, s45, v115
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
	v_cvt_f32_i32_e32 v204, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v205, v26
	v_cvt_f32_i32_e32 v206, v27
	v_cvt_f32_i32_e32 v207, v28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v99, v90, 0xc0c0004
	v_cvt_f32_i32_e32 v208, v29
	v_cvt_f32_i32_e32 v209, v30
	v_cvt_f32_i32_e32 v210, v31
	v_cvt_f32_i32_e32 v211, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_lshl_or_b32 v84, v81, 16, v90
	v_cvt_f32_i32_e32 v212, v33
	v_cvt_f32_i32_e32 v213, v34
	v_cvt_f32_i32_e32 v214, v35
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v81, v110 offset:2400
	ds_load_u8 v82, v110 offset:2336
	v_cvt_f32_i32_e32 v215, v36
	v_cvt_f32_i32_e32 v216, v37
	v_cvt_f32_i32_e32 v217, v38
	v_cvt_f32_i32_e32 v218, v39
	v_cvt_f32_i32_e32 v219, v40
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
	v_cvt_f32_i32_e32 v220, v49
	v_cvt_f32_i32_e32 v221, v50
	v_cvt_f32_i32_e32 v222, v51
	v_cvt_f32_i32_e32 v223, v52
	v_cvt_f32_i32_e32 v224, v53
	v_cvt_f32_i32_e32 v225, v54
	v_cvt_f32_i32_e32 v226, v55
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_cvt_f32_i32_e32 v227, v56
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v88, v83, 0xc0c0004
	v_cvt_f32_i32_e32 v228, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v90, v89, 0xc0c0004
	ds_load_u8 v88, v110 offset:3824
	ds_load_u8 v89, v110 offset:3760
	ds_load_u8 v90, v110 offset:3440
	ds_load_u8 v99, v110 offset:3376
	v_cvt_f32_i32_e32 v229, v58
	v_lshl_or_b32 v76, v82, 16, v81
	v_cvt_f32_i32_e32 v230, v59
	v_cvt_f32_i32_e32 v231, v60
	v_cvt_f32_i32_e32 v253, v61
	v_cvt_f32_i32_e32 v233, v62
	v_cvt_f32_i32_e32 v234, v63
	v_cvt_f32_i32_e32 v235, v64
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
	v_cvt_f32_i32_e32 v118, v44
	v_cvt_f32_i32_e32 v237, v45
	v_cvt_f32_i32_e32 v238, v46
	v_cvt_f32_i32_e32 v239, v47
	v_cvt_f32_i32_e32 v240, v48
	v_cvt_f32_i32_e32 v241, v1
	v_cvt_f32_i32_e32 v242, v2
	v_cvt_f32_i32_e32 v243, v3
	v_cvt_f32_i32_e32 v244, v4
	v_cvt_f32_i32_e32 v245, v5
	v_cvt_f32_i32_e32 v246, v6
	v_cvt_f32_i32_e32 v247, v7
	v_cvt_f32_i32_e32 v248, v8
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
	v_add_lshl_u32 v1, v155, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v154, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v145, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v146, s4, 1
	v_add_lshl_u32 v5, v147, s4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_mov_b32_e32 v10, 0
	s_clause 0x3
	buffer_load_u16 v236, v1, s[8:11], 0 offen
	buffer_load_u16 v250, v3, s[8:11], 0 offen
	buffer_load_u16 v251, v4, s[8:11], 0 offen
	buffer_load_u16 v86, v5, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v103, v104
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v255, 0, v102
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v9, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v249, v1, v101
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v55, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	v_mov_b32_e32 v2, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v249, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v255 offset:40960
	ds_load_b128 v[69:72], v255 offset:40976
	ds_load_b128 v[73:76], v255 offset:41472
	ds_load_b128 v[77:80], v255 offset:41488
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	scratch_store_b32 off, v118, off offset:12 ; 4-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s35, v108
	ds_load_b128 v[43:46], v1 offset:8192
	ds_load_b128 v[97:100], v1
	v_add_nc_u32_e32 v1, s35, v107
	ds_load_b128 v[9:12], v1 offset:8192
	ds_load_b128 v[101:104], v1
	v_add_nc_u32_e32 v1, s35, v106
	ds_load_b128 v[81:84], v1 offset:8192
	ds_load_b128 v[105:108], v1
	v_add_nc_u32_e32 v1, s35, v109
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v118, s44, v117
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v110, off
	scratch_store_b32 off, v111, off offset:4
	scratch_store_b32 off, v112, off offset:8
	v_add_nc_u32_e32 v96, s44, v114
	v_add_nc_u32_e32 v58, s44, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[21:24], v1 offset:8192
	ds_load_b128 v[109:112], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v118 offset:832
	ds_load_u8 v2, v118 offset:768
	v_dual_mov_b32 v63, v190 :: v_dual_mov_b32 v252, v117
	v_mov_b32_e32 v117, v233
	v_mov_b32_e32 v233, v225
	v_mov_b32_e32 v225, v221
	v_dual_mov_b32 v221, v217 :: v_dual_mov_b32 v64, v191
	v_mov_b32_e32 v232, v224
	v_mov_b32_e32 v224, v220
	v_mov_b32_e32 v220, v216
	v_mov_b32_e32 v216, v212
	v_mov_b32_e32 v212, v208
	v_mov_b32_e32 v208, v204
	v_mov_b32_e32 v204, v200
	v_mov_b32_e32 v200, v196
	v_mov_b32_e32 v196, v192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v118 offset:960
	ds_load_u8 v3, v118 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v118 offset:576
	ds_load_u8 v2, v118 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v118 offset:704
	ds_load_u8 v3, v118 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v118 offset:320
	ds_load_u8 v2, v118 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v118 offset:448
	ds_load_u8 v3, v118 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v118 offset:64
	ds_load_u8 v2, v118
	ds_load_u8 v42, v118 offset:16
	ds_load_u8 v41, v118 offset:32
	ds_load_u8 v57, v118 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v118 offset:192
	ds_load_u8 v3, v118 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_mov_b32_e32 v1, s12
	ds_load_u8 v17, v118 offset:1856
	ds_load_u8 v18, v118 offset:1792
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[109:112], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:1984
	ds_load_u8 v19, v118 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v118 offset:1600
	ds_load_u8 v18, v118 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:1728
	ds_load_u8 v19, v118 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v118 offset:1344
	ds_load_u8 v18, v118 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:1472
	ds_load_u8 v19, v118 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v118 offset:1088
	ds_load_u8 v18, v118 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:1216
	ds_load_u8 v19, v118 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v118 offset:2880
	ds_load_u8 v18, v118 offset:2816
	v_wmma_i32_16x16x16_iu8 v[33:40], v[105:108], v[29:32], v[33:40] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v85, s44, v116
	v_add_nc_u32_e32 v95, s44, v115
	v_dual_mov_b32 v116, v46 :: v_dual_mov_b32 v115, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v94, v40 :: v_dual_mov_b32 v93, v39
	v_mov_b32_e32 v88, v34
	v_dual_mov_b32 v92, v38 :: v_dual_mov_b32 v91, v37
	v_dual_mov_b32 v90, v36 :: v_dual_mov_b32 v89, v35
	v_dual_mov_b32 v87, v33 :: v_dual_mov_b32 v114, v44
	v_mov_b32_e32 v113, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:3008
	ds_load_u8 v19, v118 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v118 offset:2624
	ds_load_u8 v18, v118 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:2752
	ds_load_u8 v19, v118 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v118 offset:2368
	ds_load_u8 v18, v118 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:2496
	ds_load_u8 v19, v118 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v118 offset:2112
	ds_load_u8 v18, v118 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:2240
	ds_load_u8 v19, v118 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v118 offset:3904
	ds_load_u8 v18, v118 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:4032
	ds_load_u8 v19, v118 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v118 offset:3648
	ds_load_u8 v18, v118 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:3776
	ds_load_u8 v19, v118 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v118 offset:3392
	ds_load_u8 v18, v118 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:3520
	ds_load_u8 v19, v118 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v118 offset:3136
	ds_load_u8 v18, v118 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v118 offset:3264
	ds_load_u8 v19, v118 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v37, v18, 16, v17
	v_dual_mov_b32 v17, v81 :: v_dual_mov_b32 v18, v82
	v_mov_b32_e32 v20, v84
	v_wmma_i32_16x16x16_iu8 v[87:94], v[101:104], v[33:36], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v19, v83
	v_wmma_i32_16x16x16_iu8 v[87:94], v[97:100], v[37:40], v[87:94] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[87:90], off offset:16
	scratch_store_b128 off, v[91:94], off offset:32
	v_wmma_i32_16x16x16_iu8 v[87:94], v[21:24], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v118 offset:848
	ds_load_u8 v26, v118 offset:784
	v_wmma_i32_16x16x16_iu8 v[87:94], v[81:84], v[29:32], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v81, v0
	v_dual_mov_b32 v0, v188 :: v_dual_mov_b32 v13, v113
	v_mov_b32_e32 v16, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[9:12], v[33:36], v[87:94] neg_lo:[1,1,0]
	ds_load_u8 v33, v118 offset:1872
	ds_load_u8 v34, v118 offset:1808
	v_dual_mov_b32 v14, v114 :: v_dual_mov_b32 v15, v115
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v83.l, v251.l
	v_wmma_i32_16x16x16_iu8 v[87:94], v[43:46], v[37:40], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v251, v247
	v_mov_b32_e32 v247, v243
	v_mov_b32_e32 v243, v239
	v_mov_b32_e32 v239, v235
	v_mov_b32_e32 v235, v231
	v_mov_b32_e32 v231, v227
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v118 offset:976
	ds_load_u8 v27, v118 offset:912
	v_mov_b32_e32 v227, v223
	v_mov_b32_e32 v223, v219
	v_mov_b32_e32 v219, v215
	v_mov_b32_e32 v215, v211
	v_mov_b32_e32 v211, v207
	v_mov_b32_e32 v207, v203
	v_mov_b32_e32 v203, v199
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:2000
	ds_load_u8 v35, v118 offset:1936
	v_mov_b32_e32 v199, v195
	v_mov_b16_e64 v82.l, v250.l
	v_mov_b32_e32 v250, v234
	v_mov_b32_e32 v234, v226
	v_mov_b32_e32 v226, v222
	v_mov_b32_e32 v222, v218
	v_mov_b32_e32 v218, v214
	v_mov_b32_e32 v214, v210
	v_mov_b32_e32 v210, v206
	v_mov_b32_e32 v206, v202
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_mov_b32_e32 v202, v198
	v_dual_mov_b32 v198, v194 :: v_dual_mov_b32 v217, v213
	v_mov_b32_e32 v213, v209
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v118 offset:592
	ds_load_u8 v26, v118 offset:528
	v_mov_b32_e32 v209, v205
	v_mov_b32_e32 v205, v201
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_mov_b32_e32 v201, v197
	v_mov_b32_e32 v197, v193
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v118 offset:1616
	ds_load_u8 v34, v118 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v118 offset:720
	ds_load_u8 v27, v118 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:1744
	ds_load_u8 v35, v118 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v118 offset:336
	ds_load_u8 v26, v118 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v118 offset:1360
	ds_load_u8 v34, v118 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v118 offset:464
	ds_load_u8 v27, v118 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:1488
	ds_load_u8 v35, v118 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v118 offset:80
	ds_load_u8 v26, v118 offset:208
	ds_load_u8 v27, v118 offset:144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v118 offset:1104
	ds_load_u8 v34, v118 offset:1040
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:1232
	ds_load_u8 v35, v118 offset:1168
	v_wmma_i32_16x16x16_iu8 v[25:32], v[109:112], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v118 offset:2896
	ds_load_u8 v34, v118 offset:2832
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[46:49], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:3024
	ds_load_u8 v35, v118 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v118 offset:2640
	ds_load_u8 v34, v118 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:2768
	ds_load_u8 v35, v118 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v118 offset:2384
	ds_load_u8 v34, v118 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:2512
	ds_load_u8 v35, v118 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v118 offset:2128
	ds_load_u8 v34, v118 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:2256
	ds_load_u8 v35, v118 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v118 offset:3920
	ds_load_u8 v34, v118 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[101:104], v[50:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:4048
	ds_load_u8 v35, v118 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v118 offset:3664
	ds_load_u8 v34, v118 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:3792
	ds_load_u8 v35, v118 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v118 offset:3408
	ds_load_u8 v34, v118 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:3536
	ds_load_u8 v35, v118 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v118 offset:3152
	ds_load_u8 v34, v118 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v118 offset:3280
	ds_load_u8 v35, v118 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v118 offset:864
	ds_load_u8 v43, v118 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[17:20], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[9:12], v[50:53], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v118 offset:1888
	ds_load_u8 v50, v118 offset:1824
	v_wmma_i32_16x16x16_iu8 v[33:40], v[113:116], v[59:62], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v118 offset:992
	ds_load_u8 v44, v118 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:2016
	ds_load_u8 v51, v118 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v118 offset:608
	ds_load_u8 v43, v118 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v116, v50, 16, v49
	ds_load_u8 v49, v118 offset:1632
	ds_load_u8 v50, v118 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v118 offset:736
	ds_load_u8 v44, v118 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:1760
	ds_load_u8 v51, v118 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v118 offset:352
	ds_load_u8 v43, v118 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v115, v50, 16, v49
	ds_load_u8 v49, v118 offset:1376
	ds_load_u8 v50, v118 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v118 offset:480
	ds_load_u8 v44, v118 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:1504
	ds_load_u8 v51, v118 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v118 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v114, v50, 16, v49
	ds_load_u8 v49, v118 offset:1120
	ds_load_u8 v50, v118 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v118 offset:224
	ds_load_u8 v43, v118 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:1248
	ds_load_u8 v51, v118 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v59, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[109:112], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v50, 16, v49
	ds_load_u8 v49, v118 offset:2912
	ds_load_u8 v50, v118 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[105:108], v[113:116], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:3040
	ds_load_u8 v51, v118 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v50, 16, v49
	ds_load_u8 v49, v118 offset:2656
	ds_load_u8 v50, v118 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:2784
	ds_load_u8 v51, v118 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v50, 16, v49
	ds_load_u8 v49, v118 offset:2400
	ds_load_u8 v50, v118 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:2528
	ds_load_u8 v51, v118 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v50, 16, v49
	ds_load_u8 v49, v118 offset:2144
	ds_load_u8 v50, v118 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:2272
	ds_load_u8 v51, v118 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v50, 16, v49
	ds_load_u8 v49, v118 offset:3936
	ds_load_u8 v50, v118 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[188:191], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:4064
	ds_load_u8 v51, v118 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v50, 16, v49
	ds_load_u8 v49, v118 offset:3680
	ds_load_u8 v50, v118 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:3808
	ds_load_u8 v51, v118 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v50, 16, v49
	ds_load_u8 v49, v118 offset:3424
	ds_load_u8 v50, v118 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:3552
	ds_load_u8 v51, v118 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v50, 16, v49
	ds_load_u8 v49, v118 offset:3168
	ds_load_u8 v50, v118 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v118 offset:3296
	ds_load_u8 v51, v118 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[21:24], v[59:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v59, v118 offset:880
	ds_load_u8 v60, v118 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[192:195], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[17:20], v[113:116], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[9:12], v[188:191], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v191, v64 :: v_dual_mov_b32 v190, v63
	v_wmma_i32_16x16x16_iu8 v[49:56], v[13:16], v[192:195], v[49:56] neg_lo:[1,1,0]
	v_mov_b32_e32 v195, v199
	v_mov_b32_e32 v199, v203
	v_mov_b32_e32 v203, v207
	v_dual_mov_b32 v207, v211 :: v_dual_mov_b32 v192, v196
	v_dual_mov_b32 v211, v215 :: v_dual_mov_b32 v196, v200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v58, v58
	ds_load_u8 v60, v118 offset:944
	v_dual_mov_b32 v215, v219 :: v_dual_mov_b32 v200, v204
	v_dual_mov_b32 v219, v223 :: v_dual_mov_b32 v204, v208
	v_dual_mov_b32 v223, v227 :: v_dual_mov_b32 v208, v212
	v_dual_mov_b32 v227, v231 :: v_dual_mov_b32 v212, v216
	v_dual_mov_b32 v231, v235 :: v_dual_mov_b32 v216, v220
	v_dual_mov_b32 v235, v239 :: v_dual_mov_b32 v220, v224
	v_dual_mov_b32 v239, v243 :: v_dual_mov_b32 v224, v232
	v_mov_b32_e32 v243, v247
	v_mov_b32_e32 v247, v251
	v_mov_b16_e64 v251.l, v83.l
	v_mov_b32_e32 v194, v198
	v_mov_b32_e32 v198, v202
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	v_mov_b32_e32 v202, v206
	v_mov_b32_e32 v206, v210
	v_mov_b32_e32 v210, v214
	v_mov_b32_e32 v214, v218
	v_lshl_or_b32 v116, v58, 16, v59
	ds_load_u8 v58, v118 offset:624
	ds_load_u8 v59, v118 offset:560
	v_mov_b32_e32 v218, v222
	v_mov_b32_e32 v222, v226
	v_mov_b32_e32 v226, v234
	v_mov_b32_e32 v234, v250
	v_mov_b16_e64 v250.l, v82.l
	v_mov_b32_e32 v193, v197
	v_mov_b32_e32 v197, v201
	v_mov_b32_e32 v201, v205
	v_mov_b32_e32 v205, v209
	v_mov_b32_e32 v209, v213
	v_mov_b32_e32 v213, v217
	v_mov_b32_e32 v217, v221
	v_mov_b32_e32 v221, v225
	v_mov_b32_e32 v225, v233
	v_mov_b32_e32 v233, v117
	v_mov_b32_e32 v117, v252
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v118 offset:752
	ds_load_u8 v60, v118 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v59, 16, v58
	ds_load_u8 v58, v118 offset:368
	ds_load_u8 v59, v118 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v118 offset:496
	ds_load_u8 v60, v118 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v59, 16, v58
	ds_load_u8 v58, v118 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v118 offset:240
	ds_load_u8 v59, v118 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v109, v118 offset:1904
	ds_load_u8 v110, v118 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[21:24], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v92
	v_cvt_f32_i32_e32 v22, v93
	v_cvt_f32_i32_e32 v23, v94
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
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v96
	ds_load_u8 v111, v118 offset:1968
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
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v110, 16, v109
	ds_load_u8 v109, v118 offset:1648
	ds_load_u8 v110, v118 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v118 offset:1776
	ds_load_u8 v111, v118 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v110, 16, v109
	ds_load_u8 v109, v118 offset:1392
	ds_load_u8 v110, v118 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v118 offset:1520
	ds_load_u8 v188, v118 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v188, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v110, 16, v109
	ds_load_u8 v109, v118 offset:1136
	ds_load_u8 v188, v118 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v188, v109, 0xc0c0004
	ds_load_u8 v188, v118 offset:1264
	ds_load_u8 v189, v118 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v188, 16, v109
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[109:112], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v105, v118 offset:2928
	ds_load_u8 v106, v118 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v112, off, off offset:8
	scratch_load_b32 v111, off, off offset:4
	scratch_load_b32 v110, off, off
	v_cvt_f32_i32_e32 v17, v88
	v_cvt_f32_i32_e32 v18, v89
	v_cvt_f32_i32_e32 v19, v90
	v_cvt_f32_i32_e32 v20, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v95
	ds_load_u8 v107, v118 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v118 offset:2672
	ds_load_u8 v106, v118 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v118 offset:2800
	ds_load_u8 v107, v118 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v106, 16, v105
	ds_load_u8 v105, v118 offset:2416
	ds_load_u8 v106, v118 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v118 offset:2544
	ds_load_u8 v188, v118 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v188, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v118 offset:2160
	ds_load_u8 v188, v118 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v188, v105, 0xc0c0004
	ds_load_u8 v188, v118 offset:2288
	ds_load_u8 v189, v118 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v105, v188, 16, v105
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[105:108], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v101, v118 offset:3952
	ds_load_u8 v102, v118 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[9:12], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v85
	ds_load_u8 v103, v118 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v118 offset:3696
	ds_load_u8 v102, v118 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v118 offset:3824
	ds_load_u8 v103, v118 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v101
	ds_load_u8 v101, v118 offset:3440
	ds_load_u8 v102, v118 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v118 offset:3568
	ds_load_u8 v188, v118 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v188, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v118 offset:3184
	ds_load_u8 v188, v118 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v188, v101, 0xc0c0004
	ds_load_u8 v188, v118 offset:3312
	ds_load_u8 v118, v118 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v118, v188, 0xc0c0004
	v_mov_b32_e32 v188, v0
	v_mov_b32_e32 v0, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v101, v118, 16, v101
	scratch_load_b32 v118, off, off offset:12 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:16
	scratch_load_b128 v[13:16], off, off offset:32
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[101:104], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v105, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v87
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s1, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s1, s4
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s26, s10
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s27
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v64, v155, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v81, v154, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v145, s1, 1
	v_add_lshl_u32 v83, v146, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v84, v147, s1, 1
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
	buffer_load_u16 v81, v81, s[28:31], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v64.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v64.h, v86.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v87, v80, v64
	v_mul_f32_e32 v88, v79, v64
	v_mul_f32_e32 v89, v78, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v87, v87, v248, v180
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v180, v87, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v90, v77, v64 :: v_dual_lshlrev_b32 v85, 16, v85
	v_mul_f32_e32 v91, v76, v64
	v_mul_f32_e32 v92, v75, v64
	v_mul_f32_e32 v93, v74, v64
	v_mul_f32_e32 v94, v73, v64
	v_mul_f32_e32 v95, v72, v64
	v_mul_f32_e32 v96, v71, v64
	v_mul_f32_e32 v97, v70, v64
	v_mul_f32_e32 v98, v69, v64
	v_mul_f32_e32 v99, v68, v64
	v_mul_f32_e32 v100, v67, v64
	v_mul_f32_e32 v101, v66, v64
	v_mul_f32_e32 v102, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v64.h, v251.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v91, v91, v244, v184
	v_fma_f32 v92, v92, v243, v183
	v_fma_f32 v93, v93, v242, v182
	v_fma_f32 v94, v94, v241, v181
	v_fma_f32 v95, v95, v240, v179
	v_fma_f32 v96, v96, v239, v178
	v_fma_f32 v97, v97, v238, v177
	v_fma_f32 v98, v98, v237, v176
	v_fma_f32 v99, v99, v118, v175
	v_fma_f32 v100, v100, v112, v174
	v_fma_f32 v101, v101, v111, v173
	v_fma_f32 v102, v102, v110, v172
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v103, v80, v64
	v_mul_f32_e32 v106, v78, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v104, v79, v64
	v_mul_f32_e32 v107, v77, v64
	v_mul_f32_e32 v108, v76, v64
	v_mul_f32_e32 v109, v75, v64
	v_mul_f32_e32 v110, v74, v64
	v_mul_f32_e32 v111, v73, v64
	v_mul_f32_e32 v112, v72, v64
	v_mul_f32_e32 v113, v71, v64
	v_mul_f32_e32 v114, v70, v64
	v_mul_f32_e32 v115, v69, v64
	v_mul_f32_e32 v116, v68, v64
	v_mul_f32_e32 v118, v67, v64
	v_mul_f32_e32 v145, v66, v64
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v146, v65, v64 :: v_dual_lshlrev_b32 v83, 16, v83
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v64.h, v250.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v184, v91, s3
	v_cndmask_b32_e64 v92, v183, v92, s3
	v_cndmask_b32_e64 v93, v182, v93, s3
	v_cndmask_b32_e64 v94, v181, v94, s3
	v_cndmask_b32_e64 v95, v179, v95, s3
	v_cndmask_b32_e64 v96, v178, v96, s3
	v_cndmask_b32_e64 v97, v177, v97, s3
	v_cndmask_b32_e64 v98, v176, v98, s3
	v_cndmask_b32_e64 v99, v175, v99, s3
	v_cndmask_b32_e64 v100, v174, v100, s3
	v_cndmask_b32_e64 v101, v173, v101, s3
	v_cndmask_b32_e64 v102, v172, v102, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v118, v118, v222, v158
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v147, v80, v64
	v_mul_f32_e32 v154, v79, v64
	v_mul_f32_e32 v155, v78, v64
	v_mul_f32_e32 v172, v77, v64
	v_mul_f32_e32 v173, v76, v64
	v_mul_f32_e32 v174, v75, v64
	v_mul_f32_e32 v175, v74, v64
	v_mul_f32_e32 v176, v73, v64
	v_mul_f32_e32 v177, v72, v64
	v_mul_f32_e32 v178, v71, v64
	v_mul_f32_e32 v179, v70, v64
	v_mul_f32_e32 v180, v69, v64
	v_mul_f32_e32 v181, v68, v64
	v_mul_f32_e32 v182, v67, v64
	v_mul_f32_e32 v183, v66, v64
	v_mul_f32_e32 v184, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v64.h, v236.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v118, v158, v118, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v158, v174, v214, v148
	v_fma_f32 v111, v111, v228, v164
	v_fma_f32 v145, v145, v221, v157
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
	v_cndmask_b32_e64 v148, v148, v158, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v75, v197, v129
	v_fma_f32 v74, v74, v196, v128
	v_fma_f32 v73, v73, v195, v127
	v_fma_f32 v72, v72, v194, v126
	v_fma_f32 v158, v64, v203, v119
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v79, v201, v133
	v_fma_f32 v78, v78, v200, v132
	v_fma_f32 v77, v77, v199, v131
	v_fma_f32 v76, v76, v198, v130
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v249, v64 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v129, v129, v75, s3
	v_cndmask_b32_e64 v128, v128, v74, s3
	v_cndmask_b32_e64 v127, v127, v73, s3
	v_cndmask_b32_e64 v126, v126, v72, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[72:75], v255 offset:41472
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v133, v133, v79, s3
	v_cndmask_b32_e64 v132, v132, v78, s3
	v_cndmask_b32_e64 v131, v131, v77, s3
	v_cndmask_b32_e64 v130, v130, v76, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[76:79], v255 offset:41488
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v146, v146, v220, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v164, v111, s3
	v_cndmask_b32_e64 v145, v157, v145, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v154, v154, v218, v152
	v_fma_f32 v155, v155, v217, v151
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v146, v156, v146, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v156, v172, v216, v150
	v_fma_f32 v65, v80, v202, v134
	v_fma_f32 v80, v71, v193, v125
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v152, v152, v154, s3
	v_cndmask_b32_e64 v151, v151, v155, s3
	v_cndmask_b32_e64 v150, v150, v156, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v154, v69, v191, v123
	v_fma_f32 v155, v68, v190, v122
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v174, v72, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v115, v115, v224, v160
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v189, v72, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v156, v67, v254, v121
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v134, v65, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v193, v76, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v160, v115, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v160, v176, v212, v143
	v_fma_f32 v164, v180, v208, v139
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v176, v74, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v147, v147, v219, v153
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v180, v78, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v173, v215, v149
	v_fma_f32 v109, v109, v230, v166
	v_fma_f32 v116, v116, v223, v159
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v153, v147, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v153, v70, v192, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v149, v157, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v66, v188, v120
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[64:67], v255 offset:40960
	ds_load_b128 v[68:71], v255 offset:40976
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v166, v109, s3
	v_cndmask_b32_e64 v139, v139, v164, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v77, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v103, v103, v235, v171
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v195, v78, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v166, v182, v206, v137
	v_fma_f32 v89, v89, v246, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v159, v116, s3
	v_cndmask_b32_e64 v103, v171, v103, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v191, v74, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v137, v137, v166, s3
	v_cndmask_b32_e64 v89, v186, v89, s3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v86, 0xf0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v143, v143, v160, s3
	v_cndmask_b32_e64 v80, v125, v80, s3
	v_cndmask_b32_e64 v124, v124, v153, s3
	v_cndmask_b32_e64 v123, v123, v154, s3
	v_cndmask_b32_e64 v122, v122, v155, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v166, v64, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v107, v253, v168
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v171, v69, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v110, v229, v165
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v172, v70, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v113, v113, v226, v162
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v173, v71, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v112, v112, v227, v163
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v182, v65, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v159, v175, v213, v144
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v175, v73, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v114, v114, v225, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v168, v107, s3
	v_cndmask_b32_e64 v110, v165, v110, s3
	v_cndmask_b32_e64 v112, v163, v112, s3
	v_cndmask_b32_e64 v113, v162, v113, s3
	v_cndmask_b32_e64 v114, v161, v114, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v162, v178, v210, v141
	v_fma_f32 v168, v184, v204, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v184, v67, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v161, v177, v211, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v186, v69, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v163, v179, v209, v140
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v188, v71, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v165, v181, v207, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v144, v144, v159, s3
	v_cndmask_b32_e64 v142, v142, v161, s3
	v_cndmask_b32_e64 v141, v141, v162, s3
	v_cndmask_b32_e64 v140, v140, v163, s3
	v_cndmask_b32_e64 v138, v138, v165, s3
	v_cndmask_b32_e64 v121, v121, v156, s3
	v_cndmask_b32_e64 v120, v120, v157, s3
	v_cndmask_b32_e64 v119, v119, v158, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v125, v64, v85
	v_mul_f32_e32 v134, v65, v85
	v_mul_f32_e32 v153, v66, v85
	v_mul_f32_e32 v154, v67, v85
	v_mul_f32_e32 v155, v68, v85
	v_mul_f32_e32 v156, v69, v85
	v_mul_f32_e32 v157, v70, v85
	v_mul_f32_e32 v158, v71, v85
	v_mul_f32_e32 v159, v72, v85
	v_mul_f32_e32 v160, v73, v85
	v_mul_f32_e32 v161, v74, v85
	v_mul_f32_e32 v162, v75, v85
	v_mul_f32_e32 v163, v76, v85
	v_mul_f32_e32 v165, v78, v85
	v_mul_f32_e32 v85, v79, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v106, v233, v169
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v190, v73, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v88, v247, v187
	v_fma_f32 v90, v90, v245, v185
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v106, v169, v106, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v169, v67, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v108, v231, v167
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v187, v88, s3
	v_cndmask_b32_e64 v90, v185, v90, s3
	v_cndmask_b32_e64 v135, v135, v168, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v168, v66, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v167, v108, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v167, v183, v205, v136
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v177, v75, v82
	v_mul_f32_e32 v178, v76, v82
	v_mul_f32_e32 v179, v77, v82
	v_mul_f32_e32 v181, v64, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v136, v136, v167, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v167, v65, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v104, v234, v170
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v183, v66, v83
	v_mul_f32_e32 v185, v68, v83
	v_mul_f32_e32 v187, v70, v83
	v_mul_f32_e32 v192, v75, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v170, v104, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v170, v68, v82
	v_mul_f32_e32 v82, v79, v82
	v_mul_f32_e32 v194, v77, v83
	v_dual_mul_f32 v83, v79, v83 :: v_dual_mul_f32 v64, v64, v84
	v_mul_f32_e32 v65, v65, v84
	v_mul_f32_e32 v66, v66, v84
	v_mul_f32_e32 v67, v67, v84
	v_mul_f32_e32 v68, v68, v84
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
	v_fma_f32 v84, v125, v105, v119
	v_fma_f32 v9, v134, v9, v120
	v_fma_f32 v10, v153, v10, v121
	v_fma_f32 v57, v65, v57, v101
	v_fma_f32 v11, v154, v11, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v119, v84, s2
	v_cndmask_b32_e64 v9, v120, v9, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v155, v12, v123
	v_fma_f32 v13, v156, v13, v124
	v_fma_f32 v63, v71, v63, v95
	v_fma_f32 v1, v72, v1, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v121, v10, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v71, v65, 16, 1
	v_bfe_u32 v72, v9, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v157, v14, v80
	v_fma_f32 v15, v158, v15, v126
	v_fma_f32 v2, v73, v2, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v122, v11, s2
	v_cndmask_b32_e64 v12, v123, v12, s2
	v_cndmask_b32_e64 v13, v124, v13, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v73, v10, 16, 1
	v_add3_u32 v71, v65, v71, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_add3_u32 v65, v9, v72, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v159, v16, v127
	v_fma_f32 v17, v160, v17, v128
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v80, v14, s2
	v_cndmask_b32_e64 v15, v126, v15, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v10, v73, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	v_cndmask_b16 v10.l, 0x7fff, v71.h, vcc_lo
	v_bfe_u32 v71, v11, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v65.h, s0
	v_bfe_u32 v65, v12, 16, 1
	v_bfe_u32 v72, v13, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v161, v18, v129
	v_fma_f32 v19, v162, v19, v130
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v127, v16, s2
	v_cndmask_b32_e64 v17, v128, v17, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_add3_u32 v71, v11, v71, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v11, v12, v65, 0x7fff
	v_cmp_o_f32_e64 s0, v12, v12
	v_add3_u32 v12, v13, v72, 0x7fff
	v_cmp_o_f32_e64 s1, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_bfe_u32 v65, v15, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v163, v20, v131
	v_fma_f32 v21, v164, v21, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v129, v18, s2
	v_cndmask_b32_e64 v19, v130, v19, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.h, 0x7fff, v71.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_add3_u32 v14, v15, v65, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_bfe_u32 v15, v17, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v165, v22, v133
	v_fma_f32 v23, v85, v23, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v131, v20, s2
	v_cndmask_b32_e64 v21, v132, v21, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v16, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v16, v16
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v14.h, s0
	v_bfe_u32 v14, v18, 16, 1
	v_bfe_u32 v16, v19, 16, 1
	v_add3_u32 v15, v17, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v166, v24, v135
	v_fma_f32 v25, v167, v25, v136
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v133, v22, s2
	v_cndmask_b32_e64 v23, v81, v23, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_add3_u32 v14, v18, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	v_add3_u32 v16, v19, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v19, v19
	v_cndmask_b16 v12.h, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v15, v20, 16, 1
	v_bfe_u32 v17, v21, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v168, v26, v137
	v_fma_f32 v27, v169, v27, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v135, v24, s2
	v_cndmask_b32_e64 v25, v136, v25, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v22, 16, 1
	v_add3_u32 v15, v20, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v17, v21, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v21, v21
	v_bfe_u32 v18, v23, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v170, v28, v139
	v_fma_f32 v29, v171, v29, v140
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v137, v26, s2
	v_cndmask_b32_e64 v27, v138, v27, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v16, v22, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v22, v22
	v_cndmask_b16 v15.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v24, 16, 1
	v_bfe_u32 v19, v25, 16, 1
	v_add3_u32 v18, v23, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v172, v30, v141
	v_fma_f32 v31, v173, v31, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v139, v28, s2
	v_cndmask_b32_e64 v29, v140, v29, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_add3_u32 v17, v24, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	v_add3_u32 v19, v25, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v25, v25
	v_cndmask_b16 v16.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v26, 16, 1
	v_bfe_u32 v20, v27, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v174, v32, v143
	v_fma_f32 v33, v175, v33, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v141, v30, s2
	v_cndmask_b32_e64 v31, v142, v31, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v28, 16, 1
	v_add3_u32 v18, v26, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v20, v27, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v27, v27
	v_bfe_u32 v21, v29, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v176, v34, v148
	v_fma_f32 v35, v177, v35, v149
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v143, v32, s2
	v_cndmask_b32_e64 v33, v144, v33, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v28, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v28, v28
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v30, 16, 1
	v_bfe_u32 v22, v31, 16, 1
	v_add3_u32 v21, v29, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v178, v36, v150
	v_fma_f32 v37, v179, v37, v151
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v148, v34, s2
	v_cndmask_b32_e64 v35, v149, v35, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_add3_u32 v20, v30, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v22, v31, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_cndmask_b16 v19.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v32, 16, 1
	v_bfe_u32 v23, v33, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v180, v38, v152
	v_fma_f32 v39, v82, v39, v147
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v150, v36, s2
	v_cndmask_b32_e64 v37, v151, v37, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s0
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v34, 16, 1
	v_add3_u32 v21, v32, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_add3_u32 v23, v33, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v33, v33
	v_bfe_u32 v24, v35, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v181, v40, v146
	v_fma_f32 v41, v182, v41, v145
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v152, v38, s2
	v_cndmask_b32_e64 v39, v147, v39, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v34, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_cndmask_b16 v21.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s0
	v_bfe_u32 v23, v36, 16, 1
	v_bfe_u32 v25, v37, 16, 1
	v_add3_u32 v24, v35, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v42, v183, v42, v118
	v_fma_f32 v43, v184, v43, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v146, v40, s2
	v_cndmask_b32_e64 v41, v145, v41, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_add3_u32 v23, v36, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v36, v36
	v_add3_u32 v25, v37, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v37, v37
	v_cndmask_b16 v22.h, 0x7fff, v24.h, vcc_lo
	v_bfe_u32 v24, v38, 16, 1
	v_bfe_u32 v26, v39, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v185, v44, v115
	v_fma_f32 v45, v186, v45, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v118, v42, s2
	v_cndmask_b32_e64 v43, v116, v43, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s0
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s1
	v_bfe_u32 v25, v40, 16, 1
	v_add3_u32 v24, v38, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v26, v39, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v39, v39
	v_bfe_u32 v27, v41, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v187, v46, v113
	v_fma_f32 v47, v188, v47, v112
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v115, v44, s2
	v_cndmask_b32_e64 v45, v114, v45, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v40, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_cndmask_b16 v24.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s0
	v_bfe_u32 v26, v42, 16, 1
	v_bfe_u32 v28, v43, 16, 1
	v_add3_u32 v27, v41, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v189, v48, v111
	v_fma_f32 v49, v190, v49, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v113, v46, s2
	v_cndmask_b32_e64 v47, v112, v47, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_add3_u32 v26, v42, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v42, v42
	v_add3_u32 v28, v43, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v43, v43
	v_cndmask_b16 v25.h, 0x7fff, v27.h, vcc_lo
	v_bfe_u32 v27, v44, 16, 1
	v_bfe_u32 v29, v45, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v191, v50, v109
	v_fma_f32 v51, v192, v51, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v111, v48, s2
	v_cndmask_b32_e64 v49, v110, v49, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s0
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s1
	v_bfe_u32 v28, v46, 16, 1
	v_add3_u32 v27, v44, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v29, v45, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	v_bfe_u32 v30, v47, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v52, v193, v52, v107
	v_fma_f32 v53, v194, v53, v106
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v109, v50, s2
	v_cndmask_b32_e64 v51, v108, v51, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v46, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v46, v46
	v_cndmask_b16 v27.l, 0x7fff, v27.h, vcc_lo
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s0
	v_bfe_u32 v29, v48, 16, 1
	v_bfe_u32 v31, v49, 16, 1
	v_add3_u32 v30, v47, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v54, v195, v54, v104
	v_fma_f32 v55, v83, v55, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v107, v52, s2
	v_cndmask_b32_e64 v53, v106, v53, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_add3_u32 v29, v48, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	v_add3_u32 v31, v49, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_cndmask_b16 v28.h, 0x7fff, v30.h, vcc_lo
	v_bfe_u32 v30, v50, 16, 1
	v_bfe_u32 v32, v51, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v64, v56, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v104, v54, s2
	v_cndmask_b32_e64 v55, v103, v55, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s0
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v52, 16, 1
	v_add3_u32 v30, v50, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v32, v51, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v51, v51
	v_bfe_u32 v33, v53, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v66, v58, v100
	v_fma_f32 v59, v67, v59, v99
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v102, v56, s2
	v_cndmask_b32_e64 v57, v101, v57, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v31, v52, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v52, v52
	v_cndmask_b16 v30.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s0
	v_bfe_u32 v32, v54, 16, 1
	v_bfe_u32 v34, v55, 16, 1
	v_add3_u32 v33, v53, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v60, v68, v60, v98
	v_fma_f32 v61, v69, v61, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v100, v58, s2
	v_cndmask_b32_e64 v59, v99, v59, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_add3_u32 v32, v54, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_add3_u32 v34, v55, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_cndmask_b16 v31.h, 0x7fff, v33.h, vcc_lo
	v_bfe_u32 v33, v56, 16, 1
	v_bfe_u32 v35, v57, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v62, v70, v62, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v98, v60, s2
	v_cndmask_b32_e64 v61, v97, v61, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s0
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v58, 16, 1
	v_add3_u32 v33, v56, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v35, v57, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v57, v57
	v_bfe_u32 v36, v59, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v96, v62, s2
	v_cndmask_b32_e64 v63, v95, v63, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v58, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s0
	v_bfe_u32 v35, v60, 16, 1
	v_bfe_u32 v37, v61, 16, 1
	v_add3_u32 v36, v59, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v74, v3, v92
	v_fma_f32 v4, v75, v4, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v94, v1, s2
	v_cndmask_b32_e64 v67, v93, v2, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_add3_u32 v35, v60, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_add3_u32 v37, v61, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v61, v61
	v_cndmask_b16 v34.h, 0x7fff, v36.h, vcc_lo
	v_bfe_u32 v36, v62, 16, 1
	v_bfe_u32 v38, v63, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v76, v5, v90
	v_fma_f32 v6, v77, v6, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v92, v64, s2
	v_cndmask_b32_e64 v68, v91, v4, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s0
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v66, 16, 1
	v_add3_u32 v36, v62, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v38, v63, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v63, v63
	v_bfe_u32 v39, v67, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v78, v7, v88
	v_fma_f32 v8, v79, v8, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v90, v5, s2
	v_cndmask_b32_e64 v70, v89, v6, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v66, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v66, v66
	v_cndmask_b16 v36.l, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s0
	v_bfe_u32 v38, v64, 16, 1
	v_bfe_u32 v40, v68, 16, 1
	v_add3_u32 v39, v67, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v88, v7, s2
	v_cndmask_b32_e64 v8, v87, v8, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s1
	v_add3_u32 v38, v64, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_add3_u32 v40, v68, v40, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_bfe_u32 v41, v69, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v39.h, vcc_lo
	v_bfe_u32 v39, v70, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s0
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s1
	v_add3_u32 v40, v69, v41, 0x7fff
	v_bfe_u32 v41, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_add3_u32 v39, v70, v39, 0x7fff
	v_bfe_u32 v42, v8, 16, 1
	v_cmp_o_f32_e64 s0, v70, v70
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v41, v7, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v7, v8, v42, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_cndmask_b16 v8.l, 0x7fff, v40.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v8.h, 0x7fff, v39.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v41.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v39, v11, v10, vcc_lo
	v_dual_cndmask_b32 v7, v10, v11 :: v_dual_cndmask_b32 v10, v13, v9
	v_cndmask_b32_e32 v9, v9, v13, vcc_lo
	v_cndmask_b32_e32 v13, v15, v12, vcc_lo
	v_cndmask_b32_e32 v11, v12, v15, vcc_lo
	v_dual_cndmask_b32 v15, v16, v14 :: v_dual_cndmask_b32 v12, v14, v16
	v_cndmask_b32_e32 v16, v19, v17, vcc_lo
	v_dual_cndmask_b32 v14, v17, v19 :: v_dual_cndmask_b32 v19, v20, v18
	v_dual_cndmask_b32 v17, v18, v20 :: v_dual_cndmask_b32 v20, v23, v21
	v_dual_cndmask_b32 v18, v21, v23 :: v_dual_cndmask_b32 v23, v24, v22
	v_dual_cndmask_b32 v21, v22, v24 :: v_dual_cndmask_b32 v24, v27, v25
	v_dual_cndmask_b32 v22, v25, v27 :: v_dual_cndmask_b32 v27, v28, v26
	v_dual_cndmask_b32 v25, v26, v28 :: v_dual_cndmask_b32 v28, v31, v29
	v_dual_cndmask_b32 v26, v29, v31 :: v_dual_cndmask_b32 v31, v32, v30
	v_dual_cndmask_b32 v29, v30, v32 :: v_dual_cndmask_b32 v32, v35, v33
	v_dual_cndmask_b32 v30, v33, v35 :: v_dual_cndmask_b32 v35, v36, v34
	v_dual_cndmask_b32 v33, v34, v36 :: v_dual_cndmask_b32 v36, v8, v37
	v_cndmask_b32_e32 v8, v37, v8, vcc_lo
	v_mov_b32_e32 v34, 0x5410
	v_dual_mov_b32 v37, 0x7632 :: v_dual_cndmask_b32 v40, v0, v38
	v_cndmask_b32_e32 v0, v38, v0, vcc_lo
	v_permlanex16_b32 v38, v7, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x1054, v34, vcc_lo
	v_cndmask_b32_e32 v34, 0x3276, v37, vcc_lo
	v_permlanex16_b32 v37, v9, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v86, 1, v86
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v3, s27, v117
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v9, v34, 8, v34
	v_permlanex16_b32 v41, v11, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v4, s34, s33, v86
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v42, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v9, 0x760076, v9
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v6, s27, 4, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v34, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v9, v9, 4, v9
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[1:2], null, s27, 48, v[3:4]
	v_add_nc_u32_e32 v2, 0x80, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v51, 0x5040504, v7
	v_and_b32_e32 v52, 0x7060706, v9
	v_permlanex16_b32 v44, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v5, s27, 5, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v46, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v38, v39, v51
	v_perm_b32 v8, v38, v39, v52
	v_perm_b32 v9, v37, v10, v51
	v_perm_b32 v10, v37, v10, v52
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v3, v4, v3, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v48, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v41, v13, v51
	v_perm_b32 v12, v41, v13, v52
	v_perm_b32 v13, v42, v15, v51
	v_perm_b32 v14, v42, v15, v52
	v_permlanex16_b32 v50, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v34, v16, v51
	v_perm_b32 v16, v34, v16, v52
	v_perm_b32 v17, v43, v19, v51
	v_perm_b32 v18, v43, v19, v52
	v_add_lshl_u32 v39, v4, v6, 1
	s_mov_b32 s27, s11
	v_perm_b32 v19, v44, v20, v51
	v_perm_b32 v20, v44, v20, v52
	v_perm_b32 v21, v45, v23, v51
	v_perm_b32 v22, v45, v23, v52
	v_perm_b32 v37, v0, v40, v51
	v_perm_b32 v38, v0, v40, v52
	v_add_lshl_u32 v0, v2, v6, 1
	v_perm_b32 v23, v46, v24, v51
	v_perm_b32 v24, v46, v24, v52
	v_perm_b32 v25, v47, v27, v51
	v_perm_b32 v26, v47, v27, v52
	s_clause 0x2
	buffer_store_b128 v[7:10], v3, s[24:27], 0 offen
	buffer_store_b128 v[11:14], v3, s[24:27], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[24:27], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	v_perm_b32 v27, v48, v28, v51
	v_perm_b32 v28, v48, v28, v52
	v_perm_b32 v29, v49, v31, v51
	v_perm_b32 v30, v49, v31, v52
	v_add_lshl_u32 v5, v2, v5, 1
	v_perm_b32 v31, v50, v32, v51
	v_perm_b32 v32, v50, v32, v52
	v_perm_b32 v33, v53, v35, v51
	v_perm_b32 v34, v53, v35, v52
	v_add_lshl_u32 v4, v4, v1, 1
	v_perm_b32 v35, v54, v36, v51
	v_perm_b32 v36, v54, v36, v52
	v_add_lshl_u32 v1, v2, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[24:27], 0 offen
	buffer_store_b128 v[23:26], v3, s[24:27], 0 offen
	buffer_store_b128 v[27:30], v5, s[24:27], 0 offen
	buffer_store_b128 v[31:34], v4, s[24:27], 0 offen
	buffer_store_b128 v[35:38], v1, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 52
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 52
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28428
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 52
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 52
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 12
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
