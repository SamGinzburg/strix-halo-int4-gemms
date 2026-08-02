	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v123, 15, v0
	v_and_b32_e32 v255, 0xf0, v0
	v_and_b32_e32 v2, 3, v0
	v_or_b32_e32 v135, 0x3f0, v0
	v_or_b32_e32 v136, 0x7f0, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v105, 4, v123
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v3, 2, v255
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v2, 3, v2
	v_and_b32_e32 v137, 8, v0
	v_and_b32_e32 v138, 32, v0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s18, s14
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
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
	v_mul_lo_u32 v1, s30, v1
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
	s_sub_i32 s19, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s19, s15
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s11, s4
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s21, s31, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[106:107], null, s21, v3, v[105:106]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s4, s10
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s9, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s33, s7
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s7, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s20, s33, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v134, s31, 2, v106
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s21, s7
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v107, v1, v2, s34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s20, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[108:109], null, s31, 6, v[106:107]
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s6, s4, s31
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v14, s6, v134
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[1:2], null, s30, s7, v[107:108]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v134
	v_add_nc_u32_e32 v4, s4, v108
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v15, s6, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v18, 0x80000000, v15, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[1:2], v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[6:9], v5, s[16:19], 0 offen
	buffer_load_b128 v[10:13], v4, s[16:19], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s4, v106
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v5, 0x80000000, v14, s2
	s_clause 0x1
	buffer_load_b128 v[14:17], v5, s[16:19], 0 offen
	buffer_load_b128 v[18:21], v18, s[16:19], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v22, s21, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v4, s2
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s31, v4
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v26, 0x80000000, v22, s2
	s_clause 0x1
	buffer_load_b128 v[22:25], v5, s[16:19], 0 offen
	buffer_load_b128 v[26:29], v26, s[16:19], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s21, v4
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_b128 v[30:33], v4, s[16:19], 0 offen
	buffer_load_b128 v[34:37], v5, s[16:19], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_bfe_i32 v4, v0, 0, 1
	v_and_b32_e32 v5, 14, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 0x420, v4
	v_xor_b32_e32 v3, v4, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v4, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v3, v5, 10, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v139, 0, v4
	v_lshlrev_b32_e32 v5, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v38, 0x90, v3
	v_xor_b32_e32 v39, 0x120, v3
	v_xor_b32_e32 v40, 0x1b0, v3
	v_xor_b32_e32 v41, 0x210, v3
	v_add_nc_u32_e32 v140, 0, v3
	v_xor_b32_e32 v42, 0x330, v3
	v_xor_b32_e32 v3, 0x3a0, v3
	v_add_nc_u32_e32 v141, 0, v38
	v_add_nc_u32_e32 v142, 0, v39
	v_add_nc_u32_e32 v143, 0, v40
	v_add_nc_u32_e32 v144, 0, v41
	v_add_nc_u32_e32 v145, 0, v42
	v_add_nc_u32_e32 v146, 0, v3
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v3, 0x4000, v140
	v_add_nc_u32_e32 v38, 0x4000, v141
	v_add_nc_u32_e32 v39, 0x4000, v142
	v_add_nc_u32_e32 v40, 0x4000, v143
	v_add_nc_u32_e32 v41, 0x4000, v144
	v_add_nc_u32_e32 v42, 0x4000, v145
	v_add_nc_u32_e32 v43, 0x4000, v146
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(8)
	ds_store_b64 v139, v[1:2] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(6)
	v_perm_b32 v1, v10, v6, 0x4000501
	v_perm_b32 v2, v10, v6, 0x6020703
	v_perm_b32 v6, v11, v7, 0x4000501
	v_perm_b32 v7, v11, v7, 0x6020703
	v_perm_b32 v10, v12, v8, 0x4000501
	v_perm_b32 v8, v12, v8, 0x6020703
	v_perm_b32 v11, v13, v9, 0x4000501
	v_perm_b32 v9, v13, v9, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(4)
	v_perm_b32 v12, v18, v14, 0x4000501
	v_perm_b32 v13, v18, v14, 0x6020703
	v_perm_b32 v14, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	v_perm_b32 v18, v20, v16, 0x4000501
	v_perm_b32 v16, v20, v16, 0x6020703
	v_perm_b32 v19, v21, v17, 0x4000501
	v_perm_b32 v17, v21, v17, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v20, v26, v22, 0x4000501
	v_perm_b32 v21, v26, v22, 0x6020703
	v_perm_b32 v22, v27, v23, 0x4000501
	v_perm_b32 v23, v27, v23, 0x6020703
	v_perm_b32 v26, v28, v24, 0x4000501
	v_perm_b32 v24, v28, v24, 0x6020703
	v_perm_b32 v27, v29, v25, 0x4000501
	v_perm_b32 v25, v29, v25, 0x6020703
	v_perm_b32 v28, v1, v20, 0x7060302
	v_perm_b32 v1, v1, v20, 0x5040100
	v_perm_b32 v20, v2, v21, 0x7060302
	v_perm_b32 v2, v2, v21, 0x5040100
	v_perm_b32 v21, v6, v22, 0x7060302
	v_perm_b32 v6, v6, v22, 0x5040100
	v_perm_b32 v22, v7, v23, 0x7060302
	v_perm_b32 v7, v7, v23, 0x5040100
	v_perm_b32 v23, v10, v26, 0x7060302
	v_perm_b32 v10, v10, v26, 0x5040100
	v_perm_b32 v26, v8, v24, 0x7060302
	v_perm_b32 v8, v8, v24, 0x5040100
	v_perm_b32 v24, v11, v27, 0x7060302
	v_perm_b32 v11, v11, v27, 0x5040100
	v_perm_b32 v27, v9, v25, 0x7060302
	v_perm_b32 v9, v9, v25, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v34, v30, 0x4000501
	v_perm_b32 v29, v34, v30, 0x6020703
	v_perm_b32 v30, v35, v31, 0x4000501
	v_perm_b32 v31, v35, v31, 0x6020703
	v_perm_b32 v34, v36, v32, 0x4000501
	v_perm_b32 v32, v36, v32, 0x6020703
	v_perm_b32 v35, v37, v33, 0x4000501
	v_perm_b32 v33, v37, v33, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v140, v28, v1 offset1:16
	ds_store_2addr_b32 v141, v20, v2 offset1:16
	ds_store_2addr_b32 v142, v21, v6 offset1:16
	ds_store_2addr_b32 v143, v22, v7 offset1:16
	ds_store_2addr_b32 v144, v23, v10 offset1:16
	ds_store_2addr_b32 v140, v26, v8 offset0:160 offset1:176
	ds_store_2addr_b32 v145, v24, v11 offset1:16
	ds_store_2addr_b32 v146, v27, v9 offset1:16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v1, v12, v25, 0x7060302
	v_perm_b32 v2, v12, v25, 0x5040100
	v_perm_b32 v6, v13, v29, 0x7060302
	v_perm_b32 v7, v13, v29, 0x5040100
	v_perm_b32 v8, v14, v30, 0x7060302
	v_perm_b32 v9, v14, v30, 0x5040100
	v_perm_b32 v10, v15, v31, 0x7060302
	v_perm_b32 v11, v15, v31, 0x5040100
	v_perm_b32 v12, v18, v34, 0x7060302
	v_perm_b32 v13, v18, v34, 0x5040100
	v_perm_b32 v14, v16, v32, 0x7060302
	v_perm_b32 v15, v16, v32, 0x5040100
	v_perm_b32 v16, v19, v35, 0x7060302
	v_perm_b32 v18, v19, v35, 0x5040100
	v_perm_b32 v19, v17, v33, 0x7060302
	v_perm_b32 v17, v17, v33, 0x5040100
	ds_store_2addr_b32 v3, v1, v2 offset1:16
	ds_store_2addr_b32 v38, v6, v7 offset1:16
	ds_store_2addr_b32 v39, v8, v9 offset1:16
	ds_store_2addr_b32 v40, v10, v11 offset1:16
	ds_store_2addr_b32 v41, v12, v13 offset1:16
	ds_store_2addr_b32 v3, v14, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v42, v16, v18 offset1:16
	ds_store_2addr_b32 v43, v19, v17 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v1, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v133, 0x1800, v5
	v_and_b32_e32 v90, 8, v0
	v_and_b32_e32 v2, 32, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow332
	s_load_b256 s[36:43], s[0:1], 0x10
	v_lshlrev_b32_e32 v6, 6, v0
	v_add_nc_u32_e32 v132, 0, v123
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v2, 48, v4
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
	v_and_b32_e32 v1, 0x210, v1
	v_and_b32_e32 v3, 0x1c0, v6
	v_and_b32_e32 v133, 0x1800, v5
	v_bfe_i32 v4, v0, 5, 1
	v_add_nc_u32_e32 v148, 0, v135
	v_xor_b32_e32 v1, v1, v2
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v147, s21, v106
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v149, 0, v136
	v_and_b32_e32 v2, 0x420, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v1, v3, v1, v133
	v_add_nc_u32_e32 v150, 0x4000, v140
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v155, 0x4000, v141
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v156, 0x4000, v142
	v_xor_b32_e32 v9, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v10, 16, v9
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v12, 48, v9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_add_nc_u32 v152, 0, v10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v151, 0, v9
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v153, 0, v11
	v_mov_b32_e32 v118, 0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v154, 0, v12
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v157, 0x4000, v143
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v158, 0x4000, v144
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v159, 0x4000, v145
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v160, 0x4000, v146
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v87, 0
	s_add_i32 s0, s0, -2
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s5, s1, s3
	s_lshl_b32 s5, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s5, s30, v[107:108]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s5, s5, s21
	s_add_i32 s5, s5, s20
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[109:110], v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v132 offset:33184
	ds_load_u8 v10, v132 offset:33152
	ds_load_u8 v11, v132 offset:33248
	ds_load_u8 v12, v132 offset:33216
	ds_load_u8 v13, v132 offset:33056
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v151
	ds_load_b128 v[21:24], v152
	ds_load_b128 v[161:164], v151 offset:8192
	ds_load_b128 v[165:168], v152 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[177:180], v151 offset:16384
	ds_load_b128 v[181:184], v152 offset:16384
	ds_load_b128 v[185:188], v151 offset:24576
	ds_load_b128 v[189:192], v152 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:33024
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v132 offset:33120
	v_lshl_or_b32 v92, v11, 16, v9
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v13, 0xc0c0004
	ds_load_u8 v13, v132 offset:33088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v12, 16, v10
	ds_load_u8 v9, v132 offset:32928
	ds_load_u8 v10, v132 offset:32896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:32992
	ds_load_u8 v11, v132 offset:32960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v10, 16, v9
	ds_load_u8 v9, v132 offset:32864
	ds_load_u8 v10, v132 offset:32832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:32768
	ds_load_u8 v11, v132 offset:32800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v9, 16, v10
	ds_load_u8 v9, v132 offset:33696
	ds_load_u8 v10, v132 offset:33664
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[89:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[89:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:33760
	ds_load_u8 v11, v132 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v132 offset:33568
	ds_load_u8 v12, v132 offset:33536
	v_lshl_or_b32 v96, v10, 16, v9
	ds_load_u8 v9, v132 offset:33440
	ds_load_u8 v10, v132 offset:33408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v132 offset:33632
	ds_load_u8 v13, v132 offset:33600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v12, 16, v11
	ds_load_u8 v10, v132 offset:33504
	ds_load_u8 v11, v132 offset:33472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v94, v10, 16, v9
	ds_load_u8 v9, v132 offset:33312
	ds_load_u8 v10, v132 offset:33280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:33376
	ds_load_u8 v11, v132 offset:33344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v10, 16, v9
	ds_load_u8 v9, v132 offset:33200
	ds_load_u8 v10, v132 offset:33168
	v_wmma_i32_16x16x16_iu8 v[25:32], v[21:24], v[93:96], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[93:96], v[169:176] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:33264
	ds_load_u8 v11, v132 offset:33232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v132 offset:33072
	ds_load_u8 v12, v132 offset:33040
	v_lshl_or_b32 v100, v10, 16, v9
	ds_load_u8 v9, v132 offset:32944
	ds_load_u8 v10, v132 offset:32912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v132 offset:33136
	ds_load_u8 v13, v132 offset:33104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v12, 16, v11
	ds_load_u8 v10, v132 offset:33008
	ds_load_u8 v11, v132 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v98, v10, 16, v9
	ds_load_u8 v9, v132 offset:32880
	ds_load_u8 v10, v132 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:32784
	ds_load_u8 v11, v132 offset:32816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v9, 16, v10
	ds_load_u8 v9, v132 offset:33584
	ds_load_u8 v10, v132 offset:33552
	v_wmma_i32_16x16x16_iu8 v[33:40], v[161:164], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v132 offset:33648
	ds_load_u8 v11, v132 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v132 offset:33456
	ds_load_u8 v12, v132 offset:33424
	v_lshl_or_b32 v103, v10, 16, v9
	ds_load_u8 v9, v132 offset:33328
	ds_load_u8 v10, v132 offset:33296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v132 offset:33520
	ds_load_u8 v13, v132 offset:33488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v12, 16, v11
	ds_load_u8 v10, v132 offset:33392
	ds_load_u8 v11, v132 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v101, v10, 16, v9
	ds_load_u8 v9, v132 offset:33712
	ds_load_u8 v10, v132 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:32768
	ds_load_u8 v11, v132 offset:33744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v104, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[165:168], v[101:104], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[101:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[161:164], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[93:96], v[17:24] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[161:168], v[177:180], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[181:184], v[93:96], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[177:180], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[181:184], v[101:104], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[185:188], v[97:100], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v97, v132 offset:34208
	ds_load_u8 v98, v132 offset:34176
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v153
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[177:184], v[189:192], v[101:104], v[177:184] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[189:192], v153 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v132 offset:34272
	ds_load_u8 v99, v132 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v132 offset:34080
	ds_load_u8 v100, v132 offset:34048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v132 offset:34144
	ds_load_u8 v101, v132 offset:34112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v132 offset:33952
	ds_load_u8 v98, v132 offset:33920
	v_lshl_or_b32 v99, v101, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v132 offset:34016
	ds_load_u8 v101, v132 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v132 offset:33824
	ds_load_u8 v101, v132 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v101, v97, 0xc0c0004
	ds_load_u8 v101, v132 offset:33888
	ds_load_u8 v102, v132 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v101, 16, v97
	ds_load_u8 v101, v132 offset:34224
	ds_load_u8 v102, v132 offset:34192
	v_wmma_i32_16x16x16_iu8 v[25:32], v[185:188], v[97:100], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[97:100], v[169:176] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v132 offset:34288
	ds_load_u8 v103, v132 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v132 offset:34096
	ds_load_u8 v104, v132 offset:34064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v132 offset:34160
	ds_load_u8 v111, v132 offset:34128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v104, 0xc0c0004
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v132 offset:33968
	ds_load_u8 v102, v132 offset:33936
	v_lshl_or_b32 v103, v111, 16, v103
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v132 offset:34032
	ds_load_u8 v111, v132 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v111, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v132 offset:33840
	ds_load_u8 v111, v132 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v111, v101, 0xc0c0004
	ds_load_u8 v111, v132 offset:33904
	ds_load_u8 v112, v132 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v101, v111, 16, v101
	v_wmma_i32_16x16x16_iu8 v[9:16], v[185:188], v[101:104], v[9:16] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v153 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[177:184], v[189:192], v[101:104], v[177:184] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[189:192], v154 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[185:188], v[97:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[185:188], v[101:104], v[33:40] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[185:188], v153 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[185:188], v[97:100], v[161:168] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v97, v132 offset:34720
	ds_load_u8 v98, v132 offset:34688
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[89:96], v[185:188], v[101:104], v[89:96] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v154
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v132 offset:34784
	ds_load_u8 v99, v132 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v132 offset:34592
	ds_load_u8 v100, v132 offset:34560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v132 offset:34656
	ds_load_u8 v101, v132 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v132 offset:34464
	ds_load_u8 v98, v132 offset:34432
	v_lshl_or_b32 v99, v101, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v132 offset:34528
	ds_load_u8 v101, v132 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v132 offset:34336
	ds_load_u8 v101, v132 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v101, v97, 0xc0c0004
	ds_load_u8 v101, v132 offset:34400
	ds_load_u8 v102, v132 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v97, v101, 16, v97
	ds_load_u8 v101, v132 offset:34608
	ds_load_u8 v102, v132 offset:34576
	v_wmma_i32_16x16x16_iu8 v[25:32], v[185:188], v[97:100], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[189:192], v[97:100], v[169:176] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v114, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v170
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v132 offset:34672
	ds_load_u8 v103, v132 offset:34640
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v53, v53, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v27
	v_add_f32_e32 v71, v71, v31
	v_add_f32_e32 v69, v69, v29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v132 offset:34480
	ds_load_u8 v104, v132 offset:34448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v104, v103, 0xc0c0004
	ds_load_u8 v103, v132 offset:34544
	ds_load_u8 v111, v132 offset:34512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v103, 0xc0c0004
	v_lshl_or_b32 v103, v102, 16, v101
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v102, v111, 16, v104
	ds_load_u8 v101, v132 offset:34352
	ds_load_u8 v104, v132 offset:34320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v104, v101, 0xc0c0004
	ds_load_u8 v104, v132 offset:34416
	ds_load_u8 v111, v132 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v111, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v104, 16, v101
	ds_load_u8 v104, v132 offset:34736
	ds_load_u8 v111, v132 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v111, v104, 0xc0c0004
	ds_load_u8 v111, v149 offset:32768
	ds_load_u8 v112, v132 offset:34768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v112, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v104, v111, 16, v104
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v115, v115, v112
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[185:188], v[101:104], v[9:16] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v154 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[177:184], v[189:192], v[101:104], v[177:184] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v171, v14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v14, s5, v147
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v169, v12
	v_cvt_f32_i32_e32 v170, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v72, v32 :: v_dual_add_f32 v65, v65, v170
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[185:188], v[97:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[185:188], v[101:104], v[33:40] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[185:188], v154 offset:16384
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v111, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v124, v124, v111
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[185:188], v[97:100], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[185:188], v[101:104], v[89:96] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v80, v80, v21 :: v_dual_add_f32 v85, v85, v34
	v_dual_add_f32 v78, v78, v19 :: v_dual_add_f32 v129, v129, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v103, v167
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v167, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s5, v106
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v97, v161
	v_cvt_f32_i32_e32 v98, v162
	v_cvt_f32_i32_e32 v104, v168
	v_cvt_f32_i32_e32 v161, v172
	v_cvt_f32_i32_e32 v162, v173
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v168, v11
	v_cvt_f32_i32_e32 v172, v15
	v_cvt_f32_i32_e32 v173, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[16:19], 0 offen
	buffer_load_b128 v[14:17], v14, s[16:19], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v100, v164
	v_cvt_f32_i32_e32 v101, v165
	v_cvt_f32_i32_e32 v164, v175
	v_cvt_f32_i32_e32 v165, v176
	v_cvt_f32_i32_e32 v175, v178
	v_cvt_f32_i32_e32 v176, v179
	v_cvt_f32_i32_e32 v178, v181
	v_cvt_f32_i32_e32 v179, v182
	v_cvt_f32_i32_e32 v99, v163
	v_cvt_f32_i32_e32 v102, v166
	v_cvt_f32_i32_e32 v163, v174
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v166, v9
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v174, v177
	v_cvt_f32_i32_e32 v177, v180
	v_cvt_f32_i32_e32 v180, v183
	v_cvt_f32_i32_e32 v9, v184
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v28 :: v_dual_add_f32 v81, v81, v166
	v_dual_add_f32 v74, v74, v26 :: v_dual_add_f32 v83, v83, v168
	v_dual_add_f32 v70, v70, v30 :: v_dual_add_f32 v67, v67, v172
	v_dual_add_f32 v126, v126, v23 :: v_dual_add_f32 v131, v131, v40
	v_dual_add_f32 v84, v84, v169 :: v_dual_add_f32 v51, v51, v99
	v_dual_add_f32 v82, v82, v167 :: v_dual_add_f32 v49, v49, v97
	v_dual_add_f32 v68, v68, v173 :: v_dual_add_f32 v47, v47, v103
	v_dual_add_f32 v66, v66, v171 :: v_dual_add_f32 v45, v45, v101
	v_add_f32_e32 v128, v128, v33
	v_dual_add_f32 v88, v88, v37 :: v_dual_add_f32 v121, v121, v164
	v_dual_add_f32 v87, v87, v36 :: v_dual_add_f32 v86, v86, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v55, v55, v161 :: v_dual_add_f32 v130, v130, v39
	v_dual_add_f32 v52, v52, v100 :: v_dual_add_f32 v59, v59, v91
	v_dual_add_f32 v50, v50, v98 :: v_dual_add_f32 v57, v57, v89
	v_dual_add_f32 v48, v48, v104 :: v_dual_add_f32 v43, v43, v95
	v_dual_add_f32 v46, v46, v102 :: v_dual_add_f32 v41, v41, v93
	v_dual_add_f32 v56, v56, v162 :: v_dual_add_f32 v63, v63, v177
	v_dual_add_f32 v54, v54, v114 :: v_dual_add_f32 v61, v61, v175
	v_dual_add_f32 v122, v122, v163 :: v_dual_add_f32 v119, v119, v174
	v_dual_add_f32 v120, v120, v165 :: v_dual_add_f32 v117, v117, v180
	v_add_f32_e32 v60, v60, v92
	v_add_f32_e32 v58, v58, v90
	v_add_f32_e32 v44, v44, v96
	v_add_f32_e32 v42, v42, v94
	v_add_f32_e32 v64, v64, v178
	v_add_f32_e32 v62, v62, v176
	v_add_f32_e32 v118, v118, v179
	v_dual_add_f32 v116, v116, v9 :: v_dual_add_f32 v79, v79, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v18
	v_add_f32_e32 v125, v125, v22
	v_add_f32_e32 v127, v127, v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v181, v14, v10, 0x4000501
	v_perm_b32 v182, v14, v10, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s5, v134
	v_add_nc_u32_e32 v14, s5, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v183, v15, v11, 0x4000501
	v_perm_b32 v184, v15, v11, 0x6020703
	v_perm_b32 v185, v16, v12, 0x4000501
	v_perm_b32 v186, v16, v12, 0x6020703
	v_perm_b32 v187, v17, v13, 0x4000501
	v_perm_b32 v188, v17, v13, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[16:19], 0 offen
	buffer_load_b128 v[14:17], v14, s[16:19], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	s_add_i32 s5, s5, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s0
	s_mov_b32 s4, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v189, v14, v10, 0x4000501
	v_perm_b32 v190, v14, v10, 0x6020703
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s5, v106
	v_add_nc_u32_e32 v14, s5, v147
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v191, v15, v11, 0x4000501
	v_perm_b32 v192, v15, v11, 0x6020703
	v_perm_b32 v193, v16, v12, 0x4000501
	v_perm_b32 v194, v16, v12, 0x6020703
	v_perm_b32 v195, v17, v13, 0x4000501
	v_perm_b32 v196, v17, v13, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[16:19], 0 offen
	buffer_load_b128 v[14:17], v14, s[16:19], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v197, v14, v10, 0x4000501
	v_perm_b32 v198, v14, v10, 0x6020703
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s5, v134
	v_add_nc_u32_e32 v14, s5, v108
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v199, v15, v11, 0x4000501
	v_perm_b32 v200, v15, v11, 0x6020703
	v_perm_b32 v201, v16, v12, 0x4000501
	v_perm_b32 v202, v16, v12, 0x6020703
	v_perm_b32 v203, v17, v13, 0x4000501
	v_perm_b32 v204, v17, v13, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[16:19], 0 offen
	buffer_load_b128 v[14:17], v14, s[16:19], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v139, v[109:110] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v109, v189, v181, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v205, v14, v10, 0x4000501
	v_perm_b32 v10, v14, v10, 0x6020703
	v_perm_b32 v14, v15, v11, 0x4000501
	v_perm_b32 v11, v15, v11, 0x6020703
	v_perm_b32 v15, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v17, v189, v181, 0x7060302
	ds_store_2addr_b32 v140, v17, v109 offset1:16
	v_perm_b32 v17, v190, v182, 0x7060302
	v_perm_b32 v109, v190, v182, 0x5040100
	ds_store_2addr_b32 v141, v17, v109 offset1:16
	v_perm_b32 v17, v191, v183, 0x7060302
	v_perm_b32 v109, v191, v183, 0x5040100
	ds_store_2addr_b32 v142, v17, v109 offset1:16
	v_perm_b32 v17, v192, v184, 0x7060302
	v_perm_b32 v109, v192, v184, 0x5040100
	ds_store_2addr_b32 v143, v17, v109 offset1:16
	v_perm_b32 v17, v193, v185, 0x7060302
	v_perm_b32 v109, v193, v185, 0x5040100
	ds_store_2addr_b32 v144, v17, v109 offset1:16
	v_perm_b32 v17, v194, v186, 0x7060302
	v_perm_b32 v109, v194, v186, 0x5040100
	ds_store_2addr_b32 v140, v17, v109 offset0:160 offset1:176
	v_perm_b32 v17, v195, v187, 0x7060302
	v_perm_b32 v109, v195, v187, 0x5040100
	ds_store_2addr_b32 v145, v17, v109 offset1:16
	v_perm_b32 v17, v196, v188, 0x7060302
	v_perm_b32 v109, v196, v188, 0x5040100
	ds_store_2addr_b32 v146, v17, v109 offset1:16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v17, v205, v197, 0x7060302
	v_perm_b32 v109, v205, v197, 0x5040100
	ds_store_2addr_b32 v150, v17, v109 offset1:16
	v_perm_b32 v17, v10, v198, 0x7060302
	v_perm_b32 v10, v10, v198, 0x5040100
	ds_store_2addr_b32 v155, v17, v10 offset1:16
	v_perm_b32 v10, v14, v199, 0x7060302
	v_perm_b32 v14, v14, v199, 0x5040100
	ds_store_2addr_b32 v156, v10, v14 offset1:16
	v_perm_b32 v10, v11, v200, 0x7060302
	v_perm_b32 v11, v11, v200, 0x5040100
	v_perm_b32 v14, v16, v203, 0x5040100
	ds_store_2addr_b32 v157, v10, v11 offset1:16
	v_perm_b32 v10, v15, v201, 0x7060302
	v_perm_b32 v11, v15, v201, 0x5040100
	v_perm_b32 v15, v13, v204, 0x7060302
	v_perm_b32 v13, v13, v204, 0x5040100
	ds_store_2addr_b32 v158, v10, v11 offset1:16
	v_perm_b32 v10, v12, v202, 0x7060302
	v_perm_b32 v11, v12, v202, 0x5040100
	v_perm_b32 v12, v16, v203, 0x7060302
	ds_store_2addr_b32 v150, v10, v11 offset0:160 offset1:176
	ds_store_2addr_b32 v159, v12, v14 offset1:16
	ds_store_2addr_b32 v160, v15, v13 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v135 :: v_dual_mov_b32 v90, v137
	v_dual_mov_b32 v1, v136 :: v_dual_mov_b32 v2, v138
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v41, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v116, v41
	v_dual_mov_b32 v117, v41 :: v_dual_mov_b32 v68, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v48, v44 :: v_dual_mov_b32 v47, v43
	v_dual_mov_b32 v72, v44 :: v_dual_mov_b32 v71, v43
	v_dual_mov_b32 v52, v44 :: v_dual_mov_b32 v51, v43
	v_dual_mov_b32 v76, v44 :: v_dual_mov_b32 v75, v43
	v_dual_mov_b32 v56, v44 :: v_dual_mov_b32 v55, v43
	v_dual_mov_b32 v80, v44 :: v_dual_mov_b32 v79, v43
	v_dual_mov_b32 v60, v44 :: v_dual_mov_b32 v59, v43
	v_dual_mov_b32 v84, v44 :: v_dual_mov_b32 v83, v43
	v_dual_mov_b32 v64, v44 :: v_dual_mov_b32 v63, v43
	v_dual_mov_b32 v88, v44 :: v_dual_mov_b32 v87, v43
	v_dual_mov_b32 v67, v43 :: v_dual_mov_b32 v66, v42
	v_dual_mov_b32 v65, v41 :: v_dual_mov_b32 v46, v42
	v_dual_mov_b32 v45, v41 :: v_dual_mov_b32 v70, v42
	v_dual_mov_b32 v69, v41 :: v_dual_mov_b32 v50, v42
	v_dual_mov_b32 v49, v41 :: v_dual_mov_b32 v74, v42
	v_dual_mov_b32 v73, v41 :: v_dual_mov_b32 v54, v42
	v_dual_mov_b32 v53, v41 :: v_dual_mov_b32 v78, v42
	v_dual_mov_b32 v77, v41 :: v_dual_mov_b32 v58, v42
	v_dual_mov_b32 v57, v41 :: v_dual_mov_b32 v82, v42
	v_dual_mov_b32 v81, v41 :: v_dual_mov_b32 v62, v42
	v_dual_mov_b32 v61, v41 :: v_dual_mov_b32 v86, v42
	v_mov_b32_e32 v85, v41
	v_mov_b32_e32 v118, v41
	v_mov_b32_e32 v119, v41
	v_mov_b32_e32 v120, v41
	v_mov_b32_e32 v121, v41
	v_mov_b32_e32 v122, v41
	v_mov_b32_e32 v115, v41
	v_mov_b32_e32 v131, v41
	v_mov_b32_e32 v130, v41
	v_mov_b32_e32 v129, v41
	v_mov_b32_e32 v128, v41
	v_mov_b32_e32 v127, v41
	v_mov_b32_e32 v126, v41
	v_mov_b32_e32 v125, v41
	v_mov_b32_e32 v124, v41
.LBB0_8:                                ; %Flow333
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v167, v132 offset:32864
	ds_load_u8_d16 v169, v132 offset:32896
	ds_load_u8_d16 v170, v132 offset:32928
	ds_load_u8_d16 v168, v132 offset:32960
	ds_load_u8_d16 v11, v132 offset:32976
	ds_load_u8_d16 v35, v132 offset:32944
	ds_load_u8_d16 v36, v132 offset:32912
	ds_load_u8_d16 v9, v132 offset:32880
	ds_load_u8_d16 v188, v132 offset:32992
	ds_load_u8_d16 v197, v132 offset:33024
	ds_load_u8_d16 v199, v132 offset:33056
	ds_load_u8_d16 v196, v132 offset:33088
	ds_load_u8_d16 v106, v132 offset:33104
	ds_load_u8_d16 v110, v132 offset:33072
	ds_load_u8_d16 v135, v132 offset:33040
	ds_load_u8_d16 v103, v132 offset:33008
	ds_load_u8_d16 v207, v132 offset:33120
	ds_load_u8_d16 v216, v132 offset:33152
	ds_load_u8_d16 v217, v132 offset:33184
	ds_load_u8_d16 v215, v132 offset:33216
	ds_load_u8_d16 v145, v132 offset:33232
	ds_load_u8_d16 v149, v132 offset:33200
	ds_load_u8_d16 v150, v132 offset:33168
	ds_load_u8_d16 v143, v132 offset:33136
	ds_load_u8_d16 v219, v132 offset:33248
	ds_load_u8_d16 v172, v132 offset:33280
	ds_load_u8_d16 v173, v132 offset:33312
	ds_load_u8_d16 v171, v132 offset:33344
	ds_load_u8_d16 v6, v132 offset:33360
	ds_load_u8_d16 v7, v132 offset:33328
	ds_load_u8_d16 v8, v132 offset:33296
	ds_load_u8_d16 v154, v132 offset:33264
	ds_load_u8_d16 v175, v132 offset:33376
	ds_load_u8_d16 v180, v132 offset:33408
	ds_load_u8_d16 v181, v132 offset:33440
	ds_load_u8_d16 v179, v132 offset:33472
	ds_load_u8_d16 v37, v132 offset:33488
	ds_load_u8_d16 v100, v132 offset:33456
	ds_load_u8_d16 v102, v132 offset:33424
	ds_load_u8_d16 v34, v132 offset:33392
	ds_load_u8_d16 v185, v132 offset:33504
	ds_load_u8_d16 v194, v132 offset:33536
	ds_load_u8_d16 v195, v132 offset:33568
	ds_load_u8_d16 v192, v132 offset:33600
	ds_load_u8_d16 v138, v132 offset:33616
	ds_load_u8_d16 v141, v132 offset:33584
	ds_load_u8_d16 v142, v132 offset:33552
	ds_load_u8_d16 v109, v132 offset:33520
	ds_load_u8_d16 v205, v132 offset:33632
	ds_load_u8_d16 v212, v132 offset:33664
	ds_load_u8_d16 v214, v132 offset:33696
	ds_load_u8_d16 v209, v132 offset:33728
	ds_load_u8_d16 v151, v132 offset:33744
	ds_load_u8_d16 v152, v132 offset:33712
	ds_load_u8_d16 v153, v132 offset:33680
	ds_load_u8_d16 v148, v132 offset:33648
	ds_load_u8_d16 v218, v132 offset:33760
	ds_load_u8_d16 v176, v132 offset:33792
	ds_load_u8_d16 v178, v132 offset:33824
	ds_load_u8_d16 v174, v132 offset:33856
	ds_load_u8_d16 v177, v132 offset:33888
	ds_load_u8_d16 v10, v132 offset:33872
	ds_load_u8_d16 v12, v132 offset:33840
	ds_load_u8_d16 v33, v132 offset:33808
	ds_load_u8_d16 v183, v132 offset:33920
	ds_load_u8_d16 v186, v132 offset:33952
	ds_load_u8_d16 v182, v132 offset:33984
	ds_load_u8_d16 v184, v132 offset:34016
	ds_load_u8_d16 v104, v132 offset:34000
	ds_load_u8_d16 v107, v132 offset:33968
	ds_load_u8_d16 v108, v132 offset:33936
	ds_load_u8_d16 v39, v132 offset:33904
	ds_load_u8_d16 v203, v132 offset:34048
	ds_load_u8_d16 v206, v132 offset:34080
	ds_load_u8_d16 v201, v132 offset:34112
	ds_load_u8_d16 v204, v132 offset:34144
	ds_load_u8_d16 v144, v132 offset:34128
	ds_load_u8_d16 v146, v132 offset:34096
	ds_load_u8_d16 v147, v132 offset:34064
	ds_load_u8_d16 v140, v132 offset:34032
	v_dual_mov_b32 v96, v128 :: v_dual_and_b32 v89, 6, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v90
	v_dual_mov_b32 v98, v130 :: v_dual_and_b32 v91, 7, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v93, v125 :: v_dual_lshlrev_b32 v4, 3, v89
	v_cndmask_b32_e64 v13, 0x210, 0, vcc_lo
	v_dual_mov_b32 v95, v127 :: v_dual_lshlrev_b32 v14, 6, v91
	v_dual_mov_b32 v94, v126 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v4, v13, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v225, v132 offset:34176
	ds_load_u8_d16 v227, v132 offset:34208
	ds_load_u8_d16 v224, v132 offset:34240
	ds_load_u8_d16 v226, v132 offset:34272
	ds_load_u8_d16 v160, v132 offset:34256
	ds_load_u8_d16 v162, v132 offset:34224
	ds_load_u8_d16 v163, v132 offset:34192
	ds_load_u8_d16 v158, v132 offset:34160
	ds_load_u8_d16 v190, v132 offset:34304
	ds_load_u8_d16 v193, v132 offset:34336
	ds_load_u8_d16 v189, v132 offset:34368
	ds_load_u8_d16 v191, v132 offset:34400
	ds_load_u8_d16 v38, v132 offset:34384
	ds_load_u8_d16 v40, v132 offset:34352
	ds_load_u8_d16 v101, v132 offset:34320
	ds_load_u8_d16 v166, v132 offset:34288
	ds_load_u8_d16 v210, v132 offset:34432
	ds_load_u8_d16 v213, v132 offset:34464
	ds_load_u8_d16 v208, v132 offset:34496
	ds_load_u8_d16 v211, v132 offset:34528
	ds_load_u8_d16 v134, v132 offset:34512
	ds_load_u8_d16 v137, v132 offset:34480
	ds_load_u8_d16 v139, v132 offset:34448
	ds_load_u8_d16 v136, v132 offset:34416
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_or3_b32 v4, v14, v133, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v221, v132 offset:34560
	ds_load_u8_d16 v223, v132 offset:34592
	ds_load_u8_d16 v220, v132 offset:34624
	ds_load_u8_d16 v222, v132 offset:34656
	ds_load_u8_d16 v155, v132 offset:34640
	ds_load_u8_d16 v156, v132 offset:34608
	ds_load_u8_d16 v157, v132 offset:34576
	ds_load_u8_d16 v133, v132 offset:34544
	ds_load_u8_d16 v229, v132 offset:34688
	ds_load_u8_d16 v231, v132 offset:34720
	ds_load_u8_d16 v228, v132 offset:34752
	ds_load_u8_d16 v230, v132 offset:34784
	ds_load_u8_d16 v161, v132 offset:34768
	ds_load_u8_d16 v164, v132 offset:34736
	ds_load_u8_d16 v165, v132 offset:34704
	ds_load_u8_d16 v159, v132 offset:34672
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_u8_d16 v234, v132 offset:32768
	ds_load_u8_d16 v198, v132 offset:32784
	ds_load_u8_d16 v236, v132 offset:32800
	ds_load_u8_d16 v202, v132 offset:32816
	ds_load_u8_d16 v235, v132 offset:32832
	ds_load_u8_d16 v200, v132 offset:32848
	ds_load_u8_d16 v187, v3 offset:32768
	ds_load_u8_d16 v132, v1 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v15, 0, 1, s2
	v_mov_b32_e32 v25, v81
	v_mov_b32_e32 v17, v77
	v_mov_b32_e32 v21, v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, v4, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v15
	v_mov_b32_e32 v29, v65
	v_dual_mov_b32 v92, v124 :: v_dual_and_b32 v5, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v4, 16, v2
	v_xor_b32_e32 v13, 32, v2
	v_xor_b32_e32 v14, 48, v2
	v_dual_mov_b32 v26, v82 :: v_dual_add_nc_u32 v237, 0, v2
	v_add_nc_u32_e32 v233, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v99, v131 :: v_dual_add_nc_u32 v238, 0, v13
	v_dual_mov_b32 v97, v129 :: v_dual_add_nc_u32 v232, 0, v14
	v_dual_mov_b32 v1, v85 :: v_dual_mov_b32 v28, v84
	v_dual_mov_b32 v13, v73 :: v_dual_mov_b32 v24, v72
	v_dual_mov_b32 v2, v86 :: v_dual_mov_b32 v3, v87
	v_mov_b32_e32 v18, v78
	v_dual_mov_b32 v4, v88 :: v_dual_mov_b32 v27, v83
	v_dual_mov_b32 v14, v74 :: v_dual_mov_b32 v19, v79
	v_mov_b32_e32 v22, v70
	v_dual_mov_b32 v20, v80 :: v_dual_mov_b32 v15, v75
	v_mov_b32_e32 v30, v66
	v_dual_mov_b32 v16, v76 :: v_dual_mov_b32 v23, v71
	v_dual_mov_b32 v31, v67 :: v_dual_mov_b32 v32, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v216, v217, 0xc0c0004
	v_perm_b32 v2, v215, v219, 0xc0c0004
	v_perm_b32 v3, v197, v199, 0xc0c0004
	v_perm_b32 v13, v196, v207, 0xc0c0004
	v_perm_b32 v14, v145, v154, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[247:250], v237
	ds_load_b128 v[251:254], v237 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v169, v170, 0xc0c0004
	v_perm_b32 v2, v168, v188, 0xc0c0004
	v_lshl_or_b32 v3, v13, 16, v3
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v235, v167, 0xc0c0004
	v_perm_b32 v15, v135, v110, 0xc0c0004
	v_perm_b32 v16, v106, v143, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v234, v236, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v1, v13, 16, v1
	v_perm_b32 v13, v150, v149, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v31, v16, 16, v15
	v_lshl_or_b32 v32, v14, 16, v13
	v_perm_b32 v13, v36, v35, 0xc0c0004
	v_perm_b32 v14, v11, v103, 0xc0c0004
	v_perm_b32 v111, v138, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v14, 16, v13
	v_perm_b32 v13, v198, v202, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v200, v9, 0xc0c0004
	v_lshl_or_b32 v29, v14, 16, v13
	v_dual_mov_b32 v20, s11 :: v_dual_mov_b32 v19, s10
	v_dual_mov_b32 v18, s9 :: v_dual_mov_b32 v17, s8
	v_dual_mov_b32 v16, s7 :: v_dual_mov_b32 v15, s6
	v_dual_mov_b32 v14, s5 :: v_dual_mov_b32 v13, s4
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[247:250], v[1:4], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[251:254], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v1, v212, v214, 0xc0c0004
	v_perm_b32 v2, v209, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[239:246], v[247:250], v[29:32], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[251:254], v[29:32], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v3, v194, v195, 0xc0c0004
	v_perm_b32 v29, v192, v205, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v180, v181, 0xc0c0004
	v_perm_b32 v2, v179, v185, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[247:250], v233 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v3, v29, 16, v3
	v_perm_b32 v29, v171, v175, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v172, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v29, 16, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[29:32], v233
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[247:250], v[1:4], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[1:4], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v1, v153, v152, 0xc0c0004
	v_perm_b32 v2, v151, v187, 0xc0c0004
	v_perm_b32 v3, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v102, v100, 0xc0c0004
	v_perm_b32 v2, v37, v109, 0xc0c0004
	v_lshl_or_b32 v3, v111, 16, v3
	v_perm_b32 v111, v6, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v8, v7, 0xc0c0004
	v_lshl_or_b32 v1, v111, 16, v1
	v_perm_b32 v111, v144, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[239:246], v[29:32], v[1:4], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[247:250], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v1, v225, v227, 0xc0c0004
	v_perm_b32 v2, v224, v226, 0xc0c0004
	v_perm_b32 v3, v203, v206, 0xc0c0004
	v_perm_b32 v29, v201, v204, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[247:250], v238 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v183, v186, 0xc0c0004
	v_perm_b32 v2, v182, v184, 0xc0c0004
	v_lshl_or_b32 v3, v29, 16, v3
	v_perm_b32 v29, v174, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v176, v178, 0xc0c0004
	v_lshl_or_b32 v1, v29, 16, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[29:32], v238
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[247:250], v[1:4], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[1:4], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v1, v163, v162, 0xc0c0004
	v_perm_b32 v2, v160, v166, 0xc0c0004
	v_perm_b32 v3, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v108, v107, 0xc0c0004
	v_perm_b32 v2, v104, v140, 0xc0c0004
	v_lshl_or_b32 v3, v111, 16, v3
	v_perm_b32 v111, v10, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v33, v12, 0xc0c0004
	v_lshl_or_b32 v1, v111, 16, v1
	v_perm_b32 v111, v155, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[239:246], v[29:32], v[1:4], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[247:250], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v1, v229, v231, 0xc0c0004
	v_perm_b32 v2, v228, v230, 0xc0c0004
	v_perm_b32 v3, v221, v223, 0xc0c0004
	v_perm_b32 v29, v220, v222, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[247:250], v232 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v210, v213, 0xc0c0004
	v_perm_b32 v2, v208, v211, 0xc0c0004
	v_lshl_or_b32 v3, v29, 16, v3
	v_perm_b32 v29, v189, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v190, v193, 0xc0c0004
	v_lshl_or_b32 v1, v29, 16, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[29:32], v232
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[247:250], v[1:4], v[92:99] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v92, v92
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[1:4], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v1, v165, v164, 0xc0c0004
	v_perm_b32 v2, v161, v132, 0xc0c0004
	v_perm_b32 v3, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v139, v137, 0xc0c0004
	v_perm_b32 v2, v134, v133, 0xc0c0004
	v_lshl_or_b32 v3, v111, 16, v3
	v_perm_b32 v111, v38, v136, 0xc0c0004
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v101, v40, 0xc0c0004
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_lshl_or_b32 v1, v111, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[239:246], v[29:32], v[1:4], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[247:250], v[1:4], v[13:20] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v93
	v_cvt_f32_i32_e32 v2, v94
	v_cvt_f32_i32_e32 v3, v95
	v_cvt_f32_i32_e32 v4, v96
	v_cvt_f32_i32_e32 v93, v97
	v_cvt_f32_i32_e32 v94, v98
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v29, v239
	v_cvt_f32_i32_e32 v30, v240
	v_cvt_f32_i32_e32 v31, v241
	v_cvt_f32_i32_e32 v32, v242
	v_cvt_f32_i32_e32 v96, v243
	v_cvt_f32_i32_e32 v97, v244
	v_cvt_f32_i32_e32 v98, v245
	v_cvt_f32_i32_e32 v99, v246
	v_cvt_f32_i32_e32 v111, v13
	v_cvt_f32_i32_e32 v112, v14
	v_cvt_f32_i32_e32 v113, v15
	v_cvt_f32_i32_e32 v114, v16
	v_cvt_f32_i32_e32 v239, v17
	v_cvt_f32_i32_e32 v240, v18
	v_cvt_f32_i32_e32 v241, v19
	v_cvt_f32_i32_e32 v242, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v76, v24 :: v_dual_add_f32 v15, v75, v23
	v_dual_add_f32 v14, v74, v22 :: v_dual_add_f32 v13, v73, v21
	v_dual_add_f32 v24, v72, v28 :: v_dual_add_f32 v23, v71, v27
	v_dual_add_f32 v22, v70, v26 :: v_dual_add_f32 v21, v69, v25
	v_dual_add_f32 v20, v80, v4 :: v_dual_add_f32 v19, v79, v3
	v_dual_add_f32 v18, v78, v2 :: v_dual_add_f32 v17, v77, v1
	v_dual_add_f32 v28, v84, v32 :: v_dual_add_f32 v27, v83, v31
	v_dual_add_f32 v26, v82, v30 :: v_dual_add_f32 v25, v81, v29
	v_dual_add_f32 v32, v68, v99 :: v_dual_add_f32 v31, v67, v98
	v_dual_add_f32 v30, v66, v97 :: v_dual_add_f32 v29, v65, v96
	v_dual_add_f32 v4, v88, v239 :: v_dual_add_f32 v3, v87, v114
	v_dual_add_f32 v2, v86, v113 :: v_dual_add_f32 v1, v85, v112
	v_dual_add_f32 v92, v124, v92 :: v_dual_add_f32 v93, v125, v93
	v_dual_add_f32 v94, v126, v94 :: v_dual_add_f32 v95, v127, v95
	v_dual_add_f32 v96, v128, v111 :: v_dual_add_f32 v97, v129, v240
	v_dual_add_f32 v98, v130, v241 :: v_dual_add_f32 v99, v131, v242
.LBB0_10:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[251:254], v237 offset:24576
	ds_load_b128 v[111:114], v237 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v65, v216, v217, 0xc0c0004
	v_perm_b32 v66, v215, v219, 0xc0c0004
	v_perm_b32 v81, v212, v214, 0xc0c0004
	v_perm_b32 v82, v209, v218, 0xc0c0004
	v_perm_b32 v85, v180, v181, 0xc0c0004
	v_perm_b32 v86, v179, v185, 0xc0c0004
	v_perm_b32 v87, v172, v173, 0xc0c0004
	v_perm_b32 v88, v171, v175, 0xc0c0004
	v_perm_b32 v67, v197, v199, 0xc0c0004
	v_perm_b32 v68, v196, v207, 0xc0c0004
	v_perm_b32 v69, v169, v170, 0xc0c0004
	v_perm_b32 v70, v168, v188, 0xc0c0004
	v_lshl_or_b32 v127, v66, 16, v65
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v65, v234, v236, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v66, v235, v167, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_mov_b32 s0, 0
	ds_load_b128 v[239:242], v238 offset:24576
	ds_load_b128 v[243:246], v238 offset:16384
	ds_load_b128 v[247:250], v233 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v83, v194, v195, 0xc0c0004
	v_perm_b32 v84, v192, v205, 0xc0c0004
	v_lshl_or_b32 v131, v82, 16, v81
	v_perm_b32 v81, v225, v227, 0xc0c0004
	v_perm_b32 v82, v224, v226, 0xc0c0004
	s_mov_b32 s7, s0
	v_lshl_or_b32 v129, v86, 16, v85
	v_lshl_or_b32 v128, v88, 16, v87
	v_perm_b32 v86, v182, v184, 0xc0c0004
	v_perm_b32 v87, v176, v178, 0xc0c0004
	v_perm_b32 v88, v174, v177, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[171:174], v233 offset:24576
	ds_load_b128 v[175:178], v232 offset:24576
	ds_load_b128 v[179:182], v232 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s1, s0
	s_mov_b32 s2, s0
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	v_lshl_or_b32 v126, v68, 16, v67
	v_lshl_or_b32 v125, v70, 16, v69
	v_lshl_or_b32 v124, v66, 16, v65
	v_dual_mov_b32 v72, s7 :: v_dual_mov_b32 v71, s6
	v_dual_mov_b32 v70, s5 :: v_dual_mov_b32 v69, s4
	v_dual_mov_b32 v68, s3 :: v_dual_mov_b32 v67, s2
	v_dual_mov_b32 v66, s1 :: v_dual_mov_b32 v65, s0
	v_lshl_or_b32 v130, v84, 16, v83
	v_perm_b32 v83, v203, v206, 0xc0c0004
	v_perm_b32 v84, v201, v204, 0xc0c0004
	v_perm_b32 v85, v183, v186, 0xc0c0004
	v_lshl_or_b32 v170, v82, 16, v81
	v_perm_b32 v81, v229, v231, 0xc0c0004
	v_perm_b32 v82, v228, v230, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[111:114], v[124:127], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v169, v84, 16, v83
	v_lshl_or_b32 v168, v86, 16, v85
	v_lshl_or_b32 v167, v88, 16, v87
	v_lshl_or_b32 v186, v82, 16, v81
	v_wmma_i32_16x16x16_iu8 v[81:88], v[251:254], v[124:127], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v124, v150, v149, 0xc0c0004
	v_perm_b32 v125, v145, v154, 0xc0c0004
	v_perm_b32 v110, v135, v110, 0xc0c0004
	v_perm_b32 v106, v106, v143, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_perm_b32 v11, v11, v103, 0xc0c0004
	v_perm_b32 v36, v198, v202, 0xc0c0004
	v_perm_b32 v9, v200, v9, 0xc0c0004
	v_perm_b32 v193, v190, v193, 0xc0c0004
	v_perm_b32 v195, v189, v191, 0xc0c0004
	v_lshl_or_b32 v191, v125, 16, v124
	v_lshl_or_b32 v190, v106, 16, v110
	v_lshl_or_b32 v189, v11, 16, v35
	v_lshl_or_b32 v188, v9, 16, v36
	v_perm_b32 v9, v153, v152, 0xc0c0004
	v_perm_b32 v11, v151, v187, 0xc0c0004
	v_perm_b32 v35, v142, v141, 0xc0c0004
	v_perm_b32 v36, v138, v148, 0xc0c0004
	v_perm_b32 v100, v102, v100, 0xc0c0004
	v_perm_b32 v37, v37, v109, 0xc0c0004
	v_perm_b32 v102, v8, v7, 0xc0c0004
	v_perm_b32 v6, v6, v34, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[247:250], v[128:131], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[171:174], v[128:131], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[111:114], v[188:191], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v11, 16, v9
	v_lshl_or_b32 v8, v36, 16, v35
	v_lshl_or_b32 v7, v37, 16, v100
	v_lshl_or_b32 v6, v6, 16, v102
	v_perm_b32 v11, v163, v162, 0xc0c0004
	v_perm_b32 v34, v160, v166, 0xc0c0004
	v_perm_b32 v35, v147, v146, 0xc0c0004
	v_perm_b32 v37, v144, v158, 0xc0c0004
	v_perm_b32 v100, v108, v107, 0xc0c0004
	v_perm_b32 v102, v104, v140, 0xc0c0004
	v_perm_b32 v12, v33, v12, 0xc0c0004
	v_perm_b32 v10, v10, v39, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[65:72], v[251:254], v[188:191], v[65:72] neg_lo:[1,1,0]
	v_perm_b32 v183, v221, v223, 0xc0c0004
	v_perm_b32 v184, v220, v222, 0xc0c0004
	v_perm_b32 v192, v210, v213, 0xc0c0004
	v_perm_b32 v194, v208, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[124:131], v[247:250], v[6:9], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v34, 16, v11
	v_lshl_or_b32 v35, v37, 16, v35
	v_lshl_or_b32 v34, v102, 16, v100
	v_lshl_or_b32 v33, v10, 16, v12
	v_perm_b32 v10, v165, v164, 0xc0c0004
	v_perm_b32 v11, v161, v132, 0xc0c0004
	v_perm_b32 v12, v157, v156, 0xc0c0004
	v_perm_b32 v37, v155, v159, 0xc0c0004
	v_perm_b32 v39, v139, v137, 0xc0c0004
	v_perm_b32 v100, v134, v133, 0xc0c0004
	v_perm_b32 v40, v101, v40, 0xc0c0004
	v_perm_b32 v38, v38, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[65:72], v[171:174], v[6:9], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[243:246], v[167:170], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v185, v184, 16, v183
	v_lshl_or_b32 v184, v194, 16, v192
	v_lshl_or_b32 v183, v195, 16, v193
	v_wmma_i32_16x16x16_iu8 v[81:88], v[239:242], v[167:170], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[243:246], v[33:36], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v11, 16, v10
	v_lshl_or_b32 v8, v37, 16, v12
	v_lshl_or_b32 v7, v100, 16, v39
	v_lshl_or_b32 v6, v38, 16, v40
	v_wmma_i32_16x16x16_iu8 v[65:72], v[239:242], v[33:36], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[179:182], v[183:186], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[175:178], v[183:186], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[179:182], v[6:9], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[175:178], v[6:9], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v73
	v_cvt_f32_i32_e32 v7, v74
	v_cvt_f32_i32_e32 v8, v75
	v_cvt_f32_i32_e32 v9, v76
	v_cvt_f32_i32_e32 v10, v77
	v_cvt_f32_i32_e32 v11, v78
	v_cvt_f32_i32_e32 v12, v79
	v_cvt_f32_i32_e32 v33, v80
	v_cvt_f32_i32_e32 v34, v81
	v_cvt_f32_i32_e32 v35, v82
	v_cvt_f32_i32_e32 v36, v83
	v_cvt_f32_i32_e32 v37, v84
	v_cvt_f32_i32_e32 v38, v85
	v_cvt_f32_i32_e32 v39, v86
	v_cvt_f32_i32_e32 v40, v87
	v_cvt_f32_i32_e32 v73, v88
	v_cvt_f32_i32_e32 v74, v124
	v_cvt_f32_i32_e32 v75, v125
	v_cvt_f32_i32_e32 v76, v126
	v_cvt_f32_i32_e32 v77, v127
	v_cvt_f32_i32_e32 v78, v128
	v_cvt_f32_i32_e32 v79, v129
	v_cvt_f32_i32_e32 v80, v130
	v_cvt_f32_i32_e32 v81, v131
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v52, v52, v9 :: v_dual_add_f32 v51, v51, v8
	v_dual_add_f32 v50, v50, v7 :: v_dual_add_f32 v49, v49, v6
	v_dual_add_f32 v48, v48, v33 :: v_dual_add_f32 v47, v47, v12
	v_dual_add_f32 v46, v46, v11 :: v_dual_add_f32 v45, v45, v10
	v_dual_add_f32 v115, v115, v34 :: v_dual_add_f32 v54, v54, v36
	v_dual_add_f32 v56, v56, v38 :: v_dual_add_f32 v55, v55, v37
	v_dual_add_f32 v53, v53, v35 :: v_dual_add_f32 v120, v120, v73
	v_dual_add_f32 v122, v122, v39 :: v_dual_add_f32 v121, v121, v40
	v_dual_add_f32 v60, v60, v77 :: v_dual_add_f32 v59, v59, v76
	v_dual_add_f32 v58, v58, v75 :: v_dual_add_f32 v57, v57, v74
	v_dual_add_f32 v44, v44, v81 :: v_dual_add_f32 v43, v43, v80
	v_dual_add_f32 v42, v42, v79 :: v_dual_add_f32 v41, v41, v78
	v_dual_add_f32 v119, v119, v65 :: v_dual_add_f32 v62, v62, v67
	v_dual_add_f32 v64, v64, v69 :: v_dual_add_f32 v63, v63, v68
	v_dual_add_f32 v61, v61, v66 :: v_dual_add_f32 v116, v116, v72
	v_dual_add_f32 v118, v118, v70 :: v_dual_add_f32 v117, v117, v71
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_dual_mov_b32 v1, v85 :: v_dual_mov_b32 v2, v86
	v_dual_mov_b32 v25, v81 :: v_dual_mov_b32 v26, v82
	v_dual_mov_b32 v17, v77 :: v_dual_mov_b32 v18, v78
	v_dual_mov_b32 v13, v73 :: v_dual_mov_b32 v14, v74
	v_dual_mov_b32 v21, v69 :: v_dual_mov_b32 v22, v70
	v_dual_mov_b32 v29, v65 :: v_dual_mov_b32 v30, v66
	v_dual_mov_b32 v99, v131 :: v_dual_mov_b32 v98, v130
	v_dual_mov_b32 v97, v129 :: v_dual_mov_b32 v96, v128
	v_dual_mov_b32 v95, v127 :: v_dual_mov_b32 v94, v126
	v_dual_mov_b32 v93, v125 :: v_dual_mov_b32 v92, v124
	v_dual_mov_b32 v3, v87 :: v_dual_mov_b32 v4, v88
	v_dual_mov_b32 v27, v83 :: v_dual_mov_b32 v28, v84
	v_dual_mov_b32 v19, v79 :: v_dual_mov_b32 v20, v80
	v_dual_mov_b32 v15, v75 :: v_dual_mov_b32 v16, v76
	v_dual_mov_b32 v23, v71 :: v_dual_mov_b32 v24, v72
	v_dual_mov_b32 v31, v67 :: v_dual_mov_b32 v32, v68
.LBB0_13:
	.loc	1 434 22 is_stmt 1              ; generate_amdgcn.py:434:22
	s_waitcnt lgkmcnt(62)
	v_or_b32_e32 v6, s34, v123
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mov_b32 s44, s36
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v7, s20, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s20, s20, s31
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v72, v255, 1, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v8, 32, v6
	s_clause 0x1
	buffer_load_u16 v65, v6, s[44:47], 0 offen
	buffer_load_u16 v66, v8, s[44:47], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s45, s39, 0xffff
	s_mov_b32 s44, s38
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v70, 16, v65
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v5, 5, v5
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v65, 16, v66
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v6, v7, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v7, 2, v255
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v5, 0, v7, v5
	v_and_b32_e32 v7, 14, v0
	v_lshl_add_u32 v71, v7, 1, v5
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v6
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v6, s20, v0, 1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v71, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v73, v6, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[5:8], v72 offset:512
	ds_load_b128 v[9:12], v72 offset:528
	ds_load_b128 v[37:40], v72
	ds_load_b128 v[33:36], v72 offset:16
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp16:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s45, s41, 0xffff
	s_mov_b32 s44, s40
.Ltmp17:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v66, v5, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v69, v92, v66
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v67, v10, v70
	v_mul_f32_e32 v74, v11, v70
	v_mul_f32_e32 v78, v40, v70
	v_mul_f32_e32 v80, v37, v70
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v68, v93, v67 :: v_dual_mul_f32 v75, v12, v70
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v102, v38, v65
	v_mul_f32_e32 v5, v5, v65
	v_mul_f32_e32 v10, v10, v65
	v_mul_f32_e32 v11, v11, v65
	v_dual_mul_f32 v76, v12, v65 :: v_dual_mul_f32 v77, v39, v70
	v_dual_mul_f32 v104, v36, v65 :: v_dual_mul_f32 v79, v38, v70
	v_dual_mul_f32 v106, v35, v65 :: v_dual_mul_f32 v81, v36, v70
	v_mul_f32_e32 v108, v33, v65
	v_dual_mul_f32 v84, v33, v70 :: v_dual_mul_f32 v107, v34, v65
	v_dual_mul_f32 v82, v35, v70 :: v_dual_mul_f32 v101, v40, v65
	v_dual_mul_f32 v83, v34, v70 :: v_dual_mul_f32 v66, v95, v75
	v_dual_mul_f32 v85, v9, v70 :: v_dual_mul_f32 v12, v96, v5
	v_dual_mul_f32 v86, v8, v70 :: v_dual_mul_f32 v103, v37, v65
	v_mul_f32_e32 v87, v7, v70
	v_mul_f32_e32 v88, v6, v70
	v_dual_mul_f32 v100, v39, v65 :: v_dual_mul_f32 v67, v94, v74
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v40, v13, v80
	v_dual_mul_f32 v5, v97, v10 :: v_dual_mul_f32 v36, v15, v77
	v_dual_mul_f32 v10, v98, v11 :: v_dual_mul_f32 v11, v99, v76
	v_dual_mul_f32 v39, v14, v79 :: v_dual_mul_f32 v34, v23, v82
	v_mul_f32_e32 v37, v21, v84
	v_mul_f32_e32 v35, v22, v83
	v_dual_mul_f32 v23, v18, v87 :: v_dual_mul_f32 v14, v27, v100
	v_dual_mul_f32 v22, v19, v86 :: v_dual_mul_f32 v21, v20, v85
	v_dual_mul_f32 v19, v25, v103 :: v_dual_mul_f32 v18, v32, v104
	v_mul_f32_e32 v38, v16, v78
	v_mul_f32_e32 v16, v30, v107
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v26, v102 :: v_dual_lshlrev_b32 v33, 16, v73
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	ds_store_b32 v71, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v72 offset:512
	ds_load_b128 v[77:80], v72 offset:528
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v33, v24, v81 :: v_dual_mul_f32 v24, v17, v88
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[81:84], v72
	ds_load_b128 v[85:88], v72 offset:16
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v17, v28, v101
	v_mul_f32_e32 v13, v29, v108
	v_mul_f32_e32 v15, v31, v106
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v25, v73, v70 :: v_dual_mul_f32 v32, v80, v65
	v_mul_f32_e32 v27, v79, v70
	v_mul_f32_e32 v26, v78, v70
	v_dual_mul_f32 v28, v80, v70 :: v_dual_mul_f32 v29, v73, v65
	v_mul_f32_e32 v72, v84, v70
	v_mul_f32_e32 v30, v78, v65
	v_dual_mul_f32 v31, v79, v65 :: v_dual_mul_f32 v92, v81, v70
	v_dual_mul_f32 v71, v83, v70 :: v_dual_mul_f32 v102, v81, v65
	v_mul_f32_e32 v73, v82, v70
	v_mul_f32_e32 v93, v88, v70
	v_dual_mul_f32 v94, v87, v70 :: v_dual_mul_f32 v101, v82, v65
	v_dual_mul_f32 v96, v85, v70 :: v_dual_mul_f32 v83, v83, v65
	v_dual_mul_f32 v98, v76, v70 :: v_dual_mul_f32 v87, v87, v65
	v_dual_mul_f32 v100, v74, v70 :: v_dual_mul_f32 v85, v85, v65
	v_dual_mul_f32 v84, v84, v65 :: v_dual_mul_f32 v99, v75, v70
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v80, v121, v27
	v_dual_mul_f32 v82, v115, v25 :: v_dual_mul_f32 v81, v122, v26
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v95, v86, v70 :: v_dual_mul_f32 v104, v76, v65
	v_mul_f32_e32 v88, v88, v65
	v_dual_mul_f32 v86, v86, v65 :: v_dual_mul_f32 v97, v77, v70
	v_mul_f32_e32 v106, v75, v65
	v_dual_mul_f32 v103, v77, v65 :: v_dual_mul_f32 v26, v118, v30
	v_dual_mul_f32 v107, v74, v65 :: v_dual_mul_f32 v78, v116, v32
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v27, v120, v28 :: v_dual_mul_f32 v76, v50, v73
	v_dual_mul_f32 v79, v117, v31 :: v_dual_mul_f32 v70, v48, v93
	v_dual_mul_f32 v77, v49, v92 :: v_dual_mul_f32 v74, v51, v71
	v_dual_mul_f32 v75, v52, v72 :: v_dual_mul_f32 v52, v54, v99
	v_dual_mul_f32 v73, v45, v96 :: v_dual_mul_f32 v50, v56, v97
	v_dual_mul_f32 v45, v41, v85 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v80
	v_mul_f32_e32 v41, v43, v87
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v82
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v71, v47, v94 :: v_dual_mul_f32 v48, v58, v101
	v_mul_f32_e32 v51, v55, v98
	v_dual_mul_f32 v47, v60, v84 :: v_dual_mul_f32 v32, v42, v86
	v_mul_f32_e32 v42, v44, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v81
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v25, v119, v29 :: v_dual_mul_f32 v72, v46, v95
	v_dual_mul_f32 v53, v53, v100 :: v_dual_mul_f32 v46, v59, v83
	v_dual_mul_f32 v49, v57, v102 :: v_dual_mul_f32 v30, v63, v104
	v_dual_mul_f32 v28, v61, v107 :: v_dual_mul_f32 v29, v62, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v55, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v74
	v_dual_mul_f32 v57, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v76
	v_dual_mul_f32 v58, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v78
	v_dual_mul_f32 v84, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v77
	v_mul_f32_e32 v86, 0xbfb8aa3b, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v31, v64, v103 :: v_dual_mul_f32 v56, 0xbfb8aa3b, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v61, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v64, 0xbfb8aa3b, v70
	v_dual_mul_f32 v85, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v94, 0xbfb8aa3b, v47
	v_dual_mul_f32 v83, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v88, 0xbfb8aa3b, v52
	v_dual_mul_f32 v87, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v92, 0xbfb8aa3b, v53
	v_dual_mul_f32 v93, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v96, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v59
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v63
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v62
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v60
	v_dual_mul_f32 v95, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v98, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v55
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v85
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v64
	v_dual_mul_f32 v97, 0xbfb8aa3b, v42 :: v_dual_mul_f32 v100, 0xbfb8aa3b, v45
	v_dual_mul_f32 v103, 0xbfb8aa3b, v29 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v58
	v_cndmask_b32_e64 v59, 0, 0x42800000, s6
	v_cndmask_b32_e64 v63, 0, 0x42800000, s7
	v_cndmask_b32_e64 v62, 0, 0x42800000, s8
	v_cndmask_b32_e64 v60, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v83
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v92
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v86
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v93
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v82 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v61
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v88
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v95
	v_dual_mul_f32 v101, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v104, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v84
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v87
	v_dual_mul_f32 v99, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v30
	v_cndmask_b32_e64 v85, 0, 0x42800000, s11
	v_cndmask_b32_e64 v64, 0, 0x42800000, s14
	v_cndmask_b32_e64 v58, 0, 0x42800000, s5
	v_cndmask_b32_e64 v83, 0, 0x42800000, s13
	v_cndmask_b32_e64 v92, 0, 0x42800000, s15
	v_cndmask_b32_e64 v86, 0, 0x42800000, s18
	v_cndmask_b32_e64 v96, 0, 0x42800000, s19
	v_cndmask_b32_e64 v93, 0, 0x42800000, s22
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v100
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v97
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v79
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v78 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v76
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v77 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v74
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v61, 0, 0x42800000, s9
	v_cndmask_b32_e64 v88, 0, 0x42800000, s16
	v_cndmask_b32_e64 v95, 0, 0x42800000, s20
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v94
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v84, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v104
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v103
	v_exp_f32_e32 v44, v44
	v_cndmask_b32_e64 v87, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v99
	v_dual_fmac_f32 v85, 0xbfb8aa3b, v73 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v100, 0, 0x42800000, s23
	v_cndmask_b32_e64 v97, 0, 0x42800000, s26
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v102
	v_cndmask_b32_e64 v106, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v83, 0xbfb8aa3b, v71 :: v_dual_fmac_f32 v92, 0xbfb8aa3b, v53
	v_dual_fmac_f32 v86, 0xbfb8aa3b, v50 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v48
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v93, 0xbfb8aa3b, v46
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v60, v60
	v_cndmask_b32_e64 v94, 0, 0x42800000, s21
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v75 :: v_dual_fmac_f32 v84, 0xbfb8aa3b, v72
	v_dual_fmac_f32 v88, 0xbfb8aa3b, v52 :: v_dual_fmac_f32 v87, 0xbfb8aa3b, v51
	v_exp_f32_e32 v55, v55
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v98
	v_cndmask_b32_e64 v104, 0, 0x42800000, s27
	v_cndmask_b32_e64 v103, 0, 0x42800000, s28
	v_cndmask_b32_e64 v107, 0, 0xffffffc0, s0
	v_exp_f32_e32 v56, v56
	v_cndmask_b32_e64 v99, 0, 0x42800000, s24
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v64, v64
	v_cndmask_b32_e64 v102, 0, 0x42800000, s29
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s10
	v_dual_fmac_f32 v100, 0xbfb8aa3b, v45 :: v_dual_fmac_f32 v97, 0xbfb8aa3b, v42
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v43, v43, v106
	v_ldexp_f32 v54, v54, v108
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s2
	v_dual_fmac_f32 v94, 0xbfb8aa3b, v47 :: v_dual_fmac_f32 v99, 0xbfb8aa3b, v32
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v95, v95
	v_cndmask_b32_e64 v98, 0, 0x42800000, s25
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v101
	v_dual_fmac_f32 v104, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v103, 0xbfb8aa3b, v29
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v96, v96
	v_ldexp_f32 v44, v44, v107
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s3
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v87, v87
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s22
	v_dual_fmac_f32 v102, 0xbfb8aa3b, v30 :: v_dual_add_f32 v43, 1.0, v43
	v_exp_f32_e32 v97, v97
	v_ldexp_f32 v57, v57, v111
	v_ldexp_f32 v63, v63, v114
	v_ldexp_f32 v62, v62, v115
	v_ldexp_f32 v60, v60, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v54, 1.0, v54 :: v_dual_add_f32 v57, 1.0, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s20
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v55, v55, v109
	v_cndmask_b32_e64 v101, 0, 0x42800000, s30
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s19
	v_fmac_f32_e32 v98, 0xbfb8aa3b, v41
	v_exp_f32_e32 v103, v103
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v44, 1.0, v44 :: v_dual_add_f32 v55, 1.0, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s17
	v_ldexp_f32 v56, v56, v110
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v99, v99
	v_ldexp_f32 v85, v85, v118
	v_ldexp_f32 v64, v64, v121
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s26
	v_ldexp_f32 v83, v83, v120
	v_ldexp_f32 v92, v92, v122
	v_ldexp_f32 v86, v86, v126
	v_ldexp_f32 v93, v93, v130
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v60, 1.0, v60 :: v_dual_add_f32 v63, 1.0, v63
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_add_f32 v83, 1.0, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v106, null, v43, v43, v82
	v_div_scale_f32 v110, null, v54, v54, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s21
	v_ldexp_f32 v58, v58, v112
	v_ldexp_f32 v61, v61, v116
	v_ldexp_f32 v88, v88, v124
	v_ldexp_f32 v95, v95, v128
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s28
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v31
	v_exp_f32_e32 v98, v98
	v_ldexp_f32 v84, v84, v119
	v_ldexp_f32 v96, v96, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v108, null, v44, v44, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v59, v59, v113
	v_ldexp_f32 v87, v87, v125
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s23
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_add_f32 v85, 1.0, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v97, v97, v134
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v86, 1.0, v86 :: v_dual_add_f32 v93, 1.0, v93
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v122, null, v63, v63, v77
	v_div_scale_f32 v125, null, v62, v62, v76
	v_rcp_f32_e32 v165, v106
	v_rcp_f32_e32 v167, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v102, v102
	v_ldexp_f32 v94, v94, v129
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_add_f32 v61, 1.0, v61
	v_dual_add_f32 v88, 1.0, v88 :: v_dual_add_f32 v95, 1.0, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v112, null, v55, v55, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s25
	v_ldexp_f32 v103, v103, v136
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v84, 1.0, v84 :: v_dual_add_f32 v87, 1.0, v87
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v166, v108
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v114, null, v56, v56, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v104, v104
	v_ldexp_f32 v100, v100, v131
	v_ldexp_f32 v99, v99, v132
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v116, null, v57, v57, v26
	v_div_scale_f32 v129, null, v60, v60, v74
	v_div_scale_f32 v131, null, v85, v85, v73
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v97, 1.0, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v92, v92, v53
	v_div_scale_f32 v153, null, v93, v93, v46
	v_rcp_f32_e32 v173, v122
	v_rcp_f32_e32 v174, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s29
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v94, 1.0, v94 :: v_dual_add_f32 v99, 1.0, v99
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v127, null, v61, v61, v75
	v_div_scale_f32 v149, null, v95, v95, v48
	v_rcp_f32_e32 v168, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v98, v98, v133
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v103, 1.0, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v118, null, v58, v58, v79
	v_div_scale_f32 v133, null, v84, v84, v72
	v_div_scale_f32 v147, null, v96, v96, v49
	v_div_scale_f32 v143, null, v87, v87, v51
	v_rcp_f32_e32 v169, v114
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v120, null, v59, v59, v78
	v_rcp_f32_e32 v170, v116
	v_rcp_f32_e32 v176, v129
	v_rcp_f32_e32 v177, v131
	v_rcp_f32_e32 v181, v139
	v_rcp_f32_e32 v188, v153
	v_fma_f32 v194, -v106, v165, 1.0
	v_fma_f32 v196, -v110, v167, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v100, 1.0, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v102, v102, v137
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v137, null, v64, v64, v70
	v_div_scale_f32 v151, null, v94, v94, v47
	v_rcp_f32_e32 v175, v127
	v_rcp_f32_e32 v186, v149
	v_rcp_f32_e32 v171, v118
	v_rcp_f32_e32 v178, v133
	v_rcp_f32_e32 v185, v147
	v_fma_f32 v195, -v108, v166, 1.0
	v_div_scale_f32 v161, null, v97, v97, v42
	v_rcp_f32_e32 v183, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v104, v104, v135
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v98, 1.0, v98 :: v_dual_fmac_f32 v165, v194, v165
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, null, v83, v83, v71
	v_div_scale_f32 v157, null, v99, v99, v32
	v_rcp_f32_e32 v172, v120
	v_div_scale_f32 v107, vcc_lo, v82, v43, v82
	v_div_scale_f32 v141, null, v88, v88, v52
	v_fma_f32 v202, -v122, v173, 1.0
	v_fma_f32 v203, -v125, v174, 1.0
	v_fmac_f32_e32 v167, v196, v167
	v_div_scale_f32 v155, null, v100, v100, v45
	v_rcp_f32_e32 v180, v137
	v_rcp_f32_e32 v187, v151
	v_fma_f32 v197, -v112, v168, 1.0
	v_div_scale_f32 v109, s25, v81, v44, v81
	v_dual_fmac_f32 v166, v195, v166 :: v_dual_fmac_f32 v173, v202, v173
	v_rcp_f32_e32 v192, v161
	v_fma_f32 v198, -v114, v169, 1.0
	v_div_scale_f32 v111, s26, v80, v54, v80
	v_div_scale_f32 v145, null, v86, v86, v50
	v_div_scale_f32 v159, null, v98, v98, v41
	v_rcp_f32_e32 v179, v135
	v_rcp_f32_e32 v190, v157
	v_fma_f32 v199, -v116, v170, 1.0
	v_fma_f32 v205, -v129, v176, 1.0
	v_fma_f32 v206, -v131, v177, 1.0
	v_div_scale_f32 v126, s18, v76, v62, v76
	v_rcp_f32_e32 v182, v141
	v_rcp_f32_e32 v189, v155
	v_fma_f32 v210, -v139, v181, 1.0
	v_fma_f32 v217, -v153, v188, 1.0
	v_fmac_f32_e32 v174, v203, v174
	v_dual_mul_f32 v194, v107, v165 :: v_dual_mul_f32 v195, v109, v166
	v_div_scale_f32 v113, s24, v27, v55, v27
	v_fma_f32 v204, -v127, v175, 1.0
	v_fma_f32 v215, -v149, v186, 1.0
	v_fmac_f32_e32 v168, v197, v168
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v101, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v200, -v118, v171, 1.0
	v_fma_f32 v207, -v133, v178, 1.0
	v_fma_f32 v214, -v147, v185, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v102, 1.0, v102 :: v_dual_fmac_f32 v169, v198, v169
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v115, s23, v25, v56, v25
	v_fma_f32 v212, -v143, v183, 1.0
	v_div_scale_f32 v117, s22, v26, v57, v26
	v_div_scale_f32 v130, s16, v74, v60, v74
	v_rcp_f32_e32 v184, v145
	v_rcp_f32_e32 v191, v159
	v_fma_f32 v201, -v120, v172, 1.0
	v_dual_fmac_f32 v170, v199, v170 :: v_dual_fmac_f32 v177, v206, v177
	v_dual_fmac_f32 v176, v205, v176 :: v_dual_fmac_f32 v183, v212, v183
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v196, v111, v167 :: v_dual_mul_f32 v199, v117, v170
	v_dual_fmac_f32 v181, v210, v181 :: v_dual_fmac_f32 v188, v217, v188
	v_mul_f32_e32 v203, v126, v174
	v_fma_f32 v222, -v106, v194, v107
	v_fma_f32 v209, -v137, v180, 1.0
	v_fma_f32 v216, -v151, v187, 1.0
	v_dual_fmac_f32 v175, v204, v175 :: v_dual_fmac_f32 v186, v215, v186
	v_mul_f32_e32 v197, v113, v168
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s30
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v104, 1.0, v104 :: v_dual_fmac_f32 v171, v200, v171
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v119, s21, v79, v58, v79
	v_div_scale_f32 v148, s7, v49, v96, v49
	v_dual_fmac_f32 v178, v207, v178 :: v_dual_fmac_f32 v185, v214, v185
	v_fma_f32 v223, -v108, v195, v109
	v_div_scale_f32 v134, s14, v72, v84, v72
	v_fma_f32 v221, -v161, v192, 1.0
	v_dual_mul_f32 v198, v115, v169 :: v_dual_mul_f32 v205, v130, v176
	v_div_scale_f32 v121, s20, v78, v59, v78
	v_fma_f32 v208, -v135, v179, 1.0
	v_fma_f32 v219, -v157, v190, 1.0
	v_fmac_f32_e32 v172, v201, v172
	v_fma_f32 v224, -v110, v196, v111
	v_fma_f32 v211, -v141, v182, 1.0
	v_fma_f32 v218, -v155, v189, 1.0
	v_fma_f32 v231, -v125, v203, v126
	v_fmac_f32_e32 v194, v222, v165
	v_div_scale_f32 v152, s5, v47, v94, v47
	v_dual_fmac_f32 v180, v209, v180 :: v_dual_fmac_f32 v187, v216, v187
	v_fma_f32 v225, -v112, v197, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v101, v101, v138
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v138, s12, v70, v64, v70
	v_mul_f32_e32 v200, v119, v171
	v_dual_mul_f32 v214, v148, v185 :: v_dual_fmac_f32 v195, v223, v166
	v_dual_fmac_f32 v192, v221, v192 :: v_dual_mul_f32 v207, v134, v178
	v_fma_f32 v226, -v114, v198, v115
	v_div_scale_f32 v124, s19, v77, v63, v77
	v_fma_f32 v213, -v145, v184, 1.0
	v_fma_f32 v220, -v159, v191, 1.0
	v_dual_fmac_f32 v179, v208, v179 :: v_dual_fmac_f32 v190, v219, v190
	v_mul_f32_e32 v201, v121, v172
	v_fma_f32 v233, -v129, v205, v130
	v_fmac_f32_e32 v196, v224, v167
	v_div_scale_f32 v156, s3, v45, v100, v45
	v_dual_fmac_f32 v182, v211, v182 :: v_dual_fmac_f32 v189, v218, v189
	v_fma_f32 v227, -v116, v199, v117
	v_fmac_f32_e32 v203, v231, v174
	v_fma_f32 v106, -v106, v194, v107
	v_dual_mul_f32 v216, v152, v187 :: v_dual_fmac_f32 v197, v225, v168
	v_mul_f32_e32 v209, v138, v180
	v_fma_f32 v228, -v118, v200, v119
	v_fma_f32 v107, -v108, v195, v109
	v_fma_f32 v235, -v133, v207, v134
	v_fmac_f32_e32 v198, v226, v169
	v_div_scale_f32 v128, s17, v75, v61, v75
	v_div_scale_f32 v142, s10, v52, v88, v52
	v_div_scale_f32 v160, s1, v41, v98, v41
	v_dual_fmac_f32 v184, v213, v184 :: v_dual_fmac_f32 v191, v220, v191
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v202, v124, v173 :: v_dual_mul_f32 v211, v142, v182
	v_fma_f32 v229, -v120, v201, v121
	v_fmac_f32_e32 v205, v233, v176
	v_fma_f32 v108, -v110, v196, v111
	v_dual_mul_f32 v218, v156, v189 :: v_dual_fmac_f32 v199, v227, v170
	v_div_fmas_f32 v106, v106, v165, v194
	s_mov_b32 vcc_lo, s25
	v_fma_f32 v109, -v112, v197, v113
	v_fma_f32 v237, -v137, v209, v138
	v_fmac_f32_e32 v200, v228, v171
	v_div_fmas_f32 v107, v107, v166, v195
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v132, s15, v73, v85, v73
	v_fmac_f32_e32 v207, v235, v178
	v_fma_f32 v110, -v114, v198, v115
	v_div_scale_f32 v146, s8, v50, v86, v50
	v_mul_f32_e32 v204, v128, v175
	v_dual_mul_f32 v220, v160, v191 :: v_dual_fmac_f32 v201, v229, v172
	v_fma_f32 v230, -v122, v202, v124
	v_div_fmas_f32 v108, v108, v167, v196
	s_mov_b32 vcc_lo, s24
	v_fma_f32 v111, -v116, v199, v117
	v_div_fixup_f32 v43, v106, v43, v82
	v_div_fmas_f32 v82, v109, v168, v197
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v242, -v147, v214, v148
	v_fmac_f32_e32 v209, v237, v180
	v_fma_f32 v112, -v118, v200, v119
	v_div_scale_f32 v150, s6, v48, v95, v48
	v_mul_f32_e32 v206, v132, v177
	v_div_fixup_f32 v44, v107, v44, v81
	v_div_fmas_f32 v81, v110, v169, v198
	s_mov_b32 vcc_lo, s22
	v_mul_f32_e32 v213, v146, v184
	v_fma_f32 v232, -v127, v204, v128
	v_fma_f32 v239, -v141, v211, v142
	v_fma_f32 v222, -v151, v216, v152
	v_fmac_f32_e32 v202, v230, v173
	v_fma_f32 v113, -v120, v201, v121
	v_div_scale_f32 v136, s13, v71, v83, v71
	v_div_fixup_f32 v54, v108, v54, v80
	v_div_fmas_f32 v80, v111, v170, v199
	s_mov_b32 vcc_lo, s21
	v_dual_fmac_f32 v214, v242, v185 :: v_dual_mul_f32 v43, v69, v43
	v_div_fmas_f32 v69, v112, v171, v200
	s_mov_b32 vcc_lo, s20
	v_mul_f32_e32 v215, v150, v186
	v_fma_f32 v234, -v131, v206, v132
	v_div_scale_f32 v140, s11, v53, v92, v53
	v_fma_f32 v241, -v145, v213, v146
	v_fma_f32 v224, -v155, v218, v156
	v_dual_fmac_f32 v204, v232, v175 :: v_dual_fmac_f32 v211, v239, v182
	v_fmac_f32_e32 v216, v222, v187
	v_fma_f32 v114, -v122, v202, v124
	v_div_fixup_f32 v55, v82, v55, v27
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v68, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v44, v81, v56, v25
	v_div_fmas_f32 v56, v113, v172, v201
	v_div_scale_f32 v154, s4, v46, v93, v46
	v_mul_f32_e32 v208, v136, v179
	v_fma_f32 v115, -v125, v203, v126
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v144, s9, v51, v87, v51
	v_fma_f32 v243, -v149, v215, v150
	v_fmac_f32_e32 v206, v234, v177
	v_div_scale_f32 v158, s0, v32, v99, v32
	v_mul_f32_e32 v210, v140, v181
	v_fma_f32 v226, -v159, v220, v160
	v_dual_fmac_f32 v213, v241, v184 :: v_dual_fmac_f32 v218, v224, v189
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v67, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v116, -v127, v204, v128
	v_div_fixup_f32 v54, v80, v57, v26
	v_div_fixup_f32 v56, v56, v59, v78
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v66, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v114, v173, v202
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v217, v154, v188
	v_fma_f32 v236, -v135, v208, v136
	v_fma_f32 v117, -v129, v205, v130
	v_div_fixup_f32 v57, v69, v58, v79
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v12, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v115, v174, v203
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v162, s2, v42, v97, v42
	v_dual_mul_f32 v212, v144, v183 :: v_dual_fmac_f32 v215, v243, v186
	v_fma_f32 v118, -v131, v206, v132
	v_mul_f32_e32 v219, v158, v190
	v_fma_f32 v238, -v139, v210, v140
	v_dual_fmac_f32 v220, v226, v191 :: v_dual_mul_f32 v5, v5, v54
	v_div_fmas_f32 v54, v116, v175, v204
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v223, -v153, v217, v154
	v_fmac_f32_e32 v208, v236, v179
	v_div_fixup_f32 v44, v44, v62, v76
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v10, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v57, v117, v176, v205
	s_mov_b32 vcc_lo, s15
	v_mul_f32_e32 v221, v162, v192
	v_fma_f32 v240, -v143, v212, v144
	v_fma_f32 v119, -v133, v207, v134
	v_div_fixup_f32 v55, v55, v63, v77
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v11, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v56, v118, v177, v206
	v_fma_f32 v225, -v157, v219, v158
	v_dual_fmac_f32 v210, v238, v181 :: v_dual_fmac_f32 v217, v223, v188
	v_fma_f32 v120, -v135, v208, v136
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v121, -v137, v209, v138
	v_div_fixup_f32 v54, v54, v61, v75
	v_fma_f32 v227, -v161, v221, v162
	v_fmac_f32_e32 v212, v240, v183
	v_div_fixup_f32 v56, v56, v85, v73
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v119, v178, v207
	s_mov_b32 vcc_lo, s13
	v_fmac_f32_e32 v219, v225, v190
	v_fma_f32 v122, -v139, v210, v140
	v_div_fixup_f32 v57, v57, v60, v74
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v39, v39, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v120, v179, v208
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v124, -v141, v211, v142
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v54, v38, v54 :: v_dual_mul_f32 v57, v36, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v121, v180, v209
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v221, v227, v192
	v_fma_f32 v125, -v143, v212, v144
	v_div_fixup_f32 v55, v55, v84, v72
	v_div_fmas_f32 v36, v122, v181, v210
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v126, -v145, v213, v146
	v_div_fixup_f32 v44, v44, v83, v71
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v37, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v56, v124, v182, v211
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v127, -v147, v214, v148
	v_div_fixup_f32 v58, v38, v64, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v38, v35, v55 :: v_dual_mul_f32 v35, v34, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v125, v183, v212
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v128, -v149, v215, v150
	v_div_fixup_f32 v53, v36, v92, v53
	v_div_fmas_f32 v44, v126, v184, v213
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v129, -v151, v216, v152
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v33, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v33, v127, v185, v214
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v130, -v153, v217, v154
	v_div_fixup_f32 v51, v55, v87, v51
	v_div_fixup_f32 v44, v44, v86, v50
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v24, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v53, v128, v186, v215
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v131, -v155, v218, v156
	v_div_fixup_f32 v52, v56, v88, v52
	v_div_fmas_f32 v50, v129, v187, v216
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v132, -v157, v219, v158
	v_div_fixup_f32 v49, v33, v96, v49
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v22, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v22, v130, v188, v217
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v133, -v159, v220, v160
	v_div_fixup_f32 v47, v50, v94, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v23, v52
	v_mul_f32_e32 v23, v21, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v131, v189, v218
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v134, -v161, v221, v162
	v_div_fmas_f32 v50, v132, v190, v219
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v48, v53, v95, v48
	v_div_fmas_f32 v51, v133, v191, v220
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v22, v93, v46
	v_div_fmas_f32 v52, v134, v192, v221
	v_div_scale_f32 v164, null, v103, v103, v29
	v_div_fixup_f32 v41, v51, v98, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v19, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v52, v97, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v19, v20, v48 :: v_dual_mul_f32 v20, v14, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v50, v99, v32
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v15, v15, v41 :: v_dual_mul_f32 v14, v18, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v163, null, v104, v104, v28
	v_div_scale_f32 v18, null, v102, v102, v30
	v_rcp_f32_e32 v22, v164
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, null, v41, v41, v31
	v_rcp_f32_e32 v193, v163
	v_div_fixup_f32 v44, v44, v100, v45
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v18
	v_rcp_f32_e32 v47, v32
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v7, v7, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v164, v22, 1.0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v9, v9, v65
	s_mov_b32 s7, 0x76543210
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v163, v193, 1.0
	v_fmac_f32_e32 v22, v46, v22
	v_div_scale_f32 v46, s0, v29, v103, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v48, -v18, v45, 1.0
	v_fma_f32 v50, -v32, v47, 1.0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v8, v8, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v52, v46, v22
	v_fmac_f32_e32 v193, v42, v193
	v_div_scale_f32 v42, vcc_lo, v28, v104, v28
	v_fmac_f32_e32 v45, v48, v45
	v_div_scale_f32 v48, s1, v30, v102, v30
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, s2, v31, v41, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v48, v45
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v6, v6, v65 :: v_dual_mul_f32 v3, v3, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v50, v47
	v_mul_f32_e32 v49, v42, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v18, v53, v48
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v1, v1, v6 :: v_dual_mul_f32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v163, v49, v42
	v_fmac_f32_e32 v53, v55, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v51, v193
	v_fma_f32 v51, -v164, v52, v46
	v_fma_f32 v18, -v18, v53, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v163, v49, v42
	v_fmac_f32_e32 v52, v51, v22
	v_fma_f32 v51, -v32, v56, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v193, v49
	v_fma_f32 v46, -v164, v52, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v56, v51, v47
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v22, v46, v22, v52
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v32, -v32, v56, v50
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v18, v18, v45, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v9, v22, v103, v29
	v_div_fmas_f32 v32, v32, v47, v56
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v13, v44
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v2, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v18, v102, v30
	v_div_fixup_f32 v18, v42, v104, v28
	v_div_fixup_f32 v6, v32, v41, v31
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v28, |v17|, |v22|, |v16|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v9, v2, v9 :: v_dual_mul_f32 v8, v3, v8
	v_mul_f32_e32 v13, v1, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v7, v4, v6
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v40|, |v39|
	v_max3_f32 v2, |v54|, |v37|, |v38|
	v_max3_f32 v4, |v34|, |v24|, |v33|
	v_max3_f32 v6, |v23|, |v27|, |v25|
	v_max_f32_e64 v18, |v21|, |v19|
	v_max3_f32 v29, |v13|, |v9|, |v8|
	v_max3_f32 v30, |v7|, |v5|, |v10|
	v_max3_f32 v3, |v35|, |v36|, |v43|
	v_max3_f32 v1, v1, |v57|, v2
	v_max3_f32 v2, v4, v6, |v26|
	v_max3_f32 v4, |v15|, |v14|, |v12|
	v_max3_f32 v6, v18, |v20|, v28
	v_max3_f32 v18, v29, v30, |v11|
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v30, v91, 7, 0
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v1, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v3, v6, v4, v18
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v18, 4, v91
	v_permlanex16_b32 v4, v2, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v6, v3, s7, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v1, 0xe0, v0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v6, v6, v6
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v28, 1, v1
	v_lshl_or_b32 v29, v1, 2, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v4 :: v_dual_max_f32 v3, v3, v6
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v18, v18, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v4, v29, v28
	v_add3_u32 v6, v30, v18, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v4, 0, v90, v4
	v_lshrrev_b32_e32 v18, 2, v1
	v_lshlrev_b32_e32 v30, 3, v90
	ds_store_b64 v6, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[2:3], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v2
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v4
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v3
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v3
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v4, v3, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v29, v4, v6
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v28, v2, v3
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v3, 3, v123
	v_add3_u32 v2, 0, v30, v18
	v_add_nc_u32_e32 v4, 0, v3
	ds_store_b64 v2, v[28:29]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[28:29], v4
.Ltmp46:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v2, v28, v28
	v_max_f32_e32 v4, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v32, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v6
	v_rcp_f32_e32 v29, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v6, v28, 1.0
	v_fma_f32 v31, -v18, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v28, v30, v28 :: v_dual_fmac_f32 v29, v31, v29
	v_div_scale_f32 v30, s0, v4, 0x40e00000, v4
	v_mul_f32_e32 v31, v32, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v41, v30, v29
	v_fma_f32 v42, -v6, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v18, v41, v30
	v_fmac_f32_e32 v31, v42, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v44, v29
	v_fma_f32 v6, -v6, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v18, v41, v30
	v_div_fmas_f32 v6, v6, v28, v31
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v29, v41
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v6, v2, 16, 1
	v_add3_u32 v28, v2, v6, 0x7fff
	v_mov_b16_e32 v2.h, 0
.Ltmp47:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v6, 4, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v41, 0xffff0000, v28
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, v28.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v28, null, v41, v41, v40
	v_div_scale_f32 v30, null, v41, v41, v39
	v_div_scale_f32 v44, null, v41, v41, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v55, v28
	v_rcp_f32_e32 v56, v30
	v_div_scale_f32 v52, null, v41, v41, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v59, v44
	v_div_scale_f32 v53, null, v41, v41, v43
	v_rcp_f32_e32 v63, v52
	v_div_scale_f32 v29, vcc_lo, v40, v41, v40
	v_fma_f32 v66, -v28, v55, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v67, -v30, v56, 1.0
	v_div_scale_f32 v31, s0, v39, v41, v39
	v_fma_f32 v69, -v44, v59, 1.0
	v_div_scale_f32 v45, s2, v54, v41, v54
	v_rcp_f32_e32 v65, v53
	v_dual_fmac_f32 v55, v66, v55 :: v_dual_fmac_f32 v56, v67, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v69, v59
	v_div_scale_f32 v32, null, v41, v41, v57
	v_fma_f32 v73, -v52, v63, 1.0
	v_dual_mul_f32 v66, v29, v55 :: v_dual_mul_f32 v67, v31, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v69, v45, v59
	v_div_scale_f32 v48, null, v41, v41, v38
	v_div_scale_f32 v46, null, v41, v41, v37
	v_rcp_f32_e32 v58, v32
	v_fmac_f32_e32 v63, v73, v63
	v_fma_f32 v73, -v28, v66, v29
	v_fma_f32 v74, -v30, v67, v31
	v_fma_f32 v76, -v44, v69, v45
	v_rcp_f32_e32 v61, v48
	v_rcp_f32_e32 v60, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v66, v73, v55 :: v_dual_fmac_f32 v67, v74, v56
	v_fmac_f32_e32 v69, v76, v59
	v_div_scale_f32 v50, null, v41, v41, v35
	v_fma_f32 v68, -v32, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v28, -v28, v66, v29
	v_fma_f32 v29, -v30, v67, v31
	v_fma_f32 v31, -v44, v69, v45
	v_fma_f32 v44, -v53, v65, 1.0
	v_rcp_f32_e32 v62, v50
	v_fma_f32 v71, -v48, v61, 1.0
	v_fma_f32 v70, -v46, v60, 1.0
	v_div_scale_f32 v42, s1, v57, v41, v57
	v_fmac_f32_e32 v65, v44, v65
	v_fmac_f32_e32 v58, v68, v58
	v_div_scale_f32 v49, s4, v38, v41, v38
	v_fmac_f32_e32 v61, v71, v61
	v_div_scale_f32 v47, s3, v37, v41, v37
	v_div_fmas_f32 v28, v28, v55, v66
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v44, s0, v43, v41, v43
	v_fmac_f32_e32 v60, v70, v60
	v_mul_f32_e32 v68, v42, v58
	v_fma_f32 v72, -v50, v62, 1.0
	v_mul_f32_e32 v71, v49, v61
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v4, v18, 0x40e00000, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v70, v47, v60
	v_fma_f32 v75, -v32, v68, v42
	v_div_scale_f32 v51, s5, v35, v41, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v18, v4, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v62, v72, v62
	v_fma_f32 v77, -v46, v70, v47
	v_fmac_f32_e32 v68, v75, v58
	v_fma_f32 v78, -v48, v71, v49
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v18, v4, v18, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v72, v51, v62
	v_fmac_f32_e32 v70, v77, v60
	v_fma_f32 v30, -v32, v68, v42
	v_div_scale_f32 v64, s6, v36, v41, v36
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v4.l, v18.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v71, v78, v61 :: v_dual_and_b32 v18, 0xffff0000, v18
	v_div_fmas_f32 v29, v29, v56, v67
	v_div_fixup_f32 v28, v28, v41, v40
	v_fma_f32 v40, -v50, v72, v51
	v_div_scale_f32 v45, null, v41, v41, v34
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v46, v70, v47
	v_div_fmas_f32 v30, v30, v58, v68
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v29, v41, v39
	v_fma_f32 v39, -v48, v71, v49
	v_mul_f32_e32 v42, v64, v63
	v_fmac_f32_e32 v72, v40, v62
	v_rcp_f32_e32 v40, v45
	v_div_fmas_f32 v31, v31, v59, v69
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v46, -v52, v42, v64
	v_div_fmas_f32 v32, v32, v60, v70
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, null, v41, v41, v24
	v_div_fmas_f32 v39, v39, v61, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v42, v46, v63
	v_fma_f32 v46, -v45, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v37, v39, v41, v38
	v_mul_f32_e32 v39, v44, v65
	v_fma_f32 v38, -v50, v72, v51
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v50, s1, v34, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v53, v39, v44
	v_fma_f32 v48, -v52, v42, v64
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v51, null, v41, v41, v33
	v_fmac_f32_e32 v39, v49, v65
	v_mul_f32_e32 v49, v50, v40
	v_div_fmas_f32 v38, v38, v62, v72
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v31, v31, v41, v54
	v_div_fmas_f32 v42, v48, v63, v42
	v_rcp_f32_e32 v48, v51
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v35, v38, v41, v35
	v_fma_f32 v38, -v53, v39, v44
	v_div_fixup_f32 v36, v42, v41, v36
	v_fma_f32 v42, -v45, v49, v50
	v_div_scale_f32 v53, null, v41, v41, v23
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v44, s2, v24, v41, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v52, -v51, v48, 1.0
	v_fmac_f32_e32 v49, v42, v40
	v_rcp_f32_e32 v42, v53
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v54, null, v41, v41, v27
	v_div_fmas_f32 v38, v38, v65, v39
	v_mul_f32_e32 v39, v44, v46
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s0, v33, v41, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v38, v38, v41, v43
	v_fma_f32 v43, -v45, v49, v50
	v_fma_f32 v45, -v47, v39, v44
	v_mul_f32_e32 v50, v52, v48
	v_rcp_f32_e32 v55, v54
	v_fma_f32 v56, -v53, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v45, v46
	v_div_fmas_f32 v40, v43, v40, v49
	v_fma_f32 v43, -v51, v50, v52
	v_fmac_f32_e32 v42, v56, v42
	v_div_scale_f32 v45, s1, v23, v41, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v34, v40, v41, v34
	v_fma_f32 v49, -v54, v55, 1.0
	v_fma_f32 v40, -v47, v39, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v50, v43, v48 :: v_dual_mul_f32 v43, v45, v42
	v_div_scale_f32 v47, null, v41, v41, v25
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v49, v55
	v_div_scale_f32 v44, s3, v27, v41, v27
	v_div_fmas_f32 v39, v40, v46, v39
	v_fma_f32 v40, -v51, v50, v52
	v_fma_f32 v46, -v53, v43, v45
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v52, null, v41, v41, v26
	v_mul_f32_e32 v51, v44, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v46, v42
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v46, v52
	v_div_fmas_f32 v40, v40, v48, v50
	v_fma_f32 v48, -v54, v51, v44
	v_div_fixup_f32 v24, v39, v41, v24
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v47, v49, 1.0
	v_fma_f32 v39, -v53, v43, v45
	v_div_fixup_f32 v33, v40, v41, v33
	v_fmac_f32_e32 v51, v48, v55
	v_div_scale_f32 v40, s0, v25, v41, v25
	v_fmac_f32_e32 v49, v50, v49
	v_fma_f32 v45, -v52, v46, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v30, v41, v57
	v_div_fmas_f32 v39, v39, v42, v43
	v_fma_f32 v42, -v54, v51, v44
	v_dual_mul_f32 v43, v40, v49 :: v_dual_fmac_f32 v46, v45, v46
	v_div_scale_f32 v44, null, v18, v18, v21
	v_div_scale_f32 v45, s1, v26, v41, v26
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v48, v44
	v_div_fmas_f32 v42, v42, v55, v51
	v_fma_f32 v50, -v47, v43, v40
	v_mul_f32_e32 v51, v45, v46
	v_div_fixup_f32 v23, v39, v41, v23
	v_div_scale_f32 v55, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v50, v49
	v_fma_f32 v39, -v52, v51, v45
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v44, v48, 1.0
	v_rcp_f32_e32 v57, v55
	v_fma_f32 v40, -v47, v43, v40
	v_div_scale_f32 v47, null, v18, v18, v20
	v_dual_fmac_f32 v51, v39, v46 :: v_dual_fmac_f32 v48, v50, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v49, v43
	v_rcp_f32_e32 v50, v47
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v52, v51, v45
	v_div_scale_f32 v53, null, v18, v18, v19
	v_div_fixup_f32 v27, v42, v41, v27
	v_div_fixup_f32 v25, v40, v41, v25
	v_div_fmas_f32 v43, v43, v46, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v53
	v_div_scale_f32 v39, s2, v21, v18, v21
	v_fma_f32 v52, -v47, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v26, v43, v41, v26
	v_fma_f32 v41, -v55, v57, 1.0
	v_div_scale_f32 v49, s0, v19, v18, v19
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v43, null, v18, v18, v22
	v_dual_fmac_f32 v57, v41, v57 :: v_dual_fmac_f32 v50, v52, v50
	v_div_scale_f32 v52, s3, v20, v18, v20
	v_fma_f32 v54, -v53, v42, 1.0
	v_div_scale_f32 v41, s1, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v52, v50
	v_dual_mul_f32 v45, v39, v48 :: v_dual_fmac_f32 v42, v54, v42
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v47, v51, v52
	v_fma_f32 v54, -v44, v45, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v54, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v26, v26
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v4.h, v2.h
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v44, v45, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v48, v45
	v_mul_f32_e32 v45, v41, v57
	v_mul_f32_e32 v56, v49, v42
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v21, v39, v18, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v53, v56, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v46, v42
	v_div_scale_f32 v46, null, v18, v18, v16
	v_fma_f32 v44, -v53, v56, v49
	v_fma_f32 v49, -v55, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v46
	v_div_fmas_f32 v42, v44, v42, v56
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v45, v49, v57
	v_fmac_f32_e32 v51, v40, v50
	v_rcp_f32_e32 v40, v43
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v42, v18, v19
	v_fma_f32 v41, -v55, v45, v41
	v_fma_f32 v44, -v47, v51, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v48, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v47, -v43, v40, 1.0
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s0, v22, v18, v22
	v_div_fmas_f32 v44, v44, v50, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v39, v47, v40
	v_div_fmas_f32 v41, v41, v57, v45
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v44, v18, v20
	v_div_scale_f32 v44, null, v18, v18, v15
	v_fma_f32 v49, -v43, v39, v47
	v_div_fixup_f32 v17, v41, v18, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	v_div_scale_f32 v49, null, v18, v18, v14
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v43, v39, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v47, -v44, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v41, v40, v39
	v_div_scale_f32 v40, null, v18, v18, v12
	v_fmac_f32_e32 v50, v47, v50
	v_div_scale_f32 v41, s0, v15, v18, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v22, v39, v18, v22
	v_fma_f32 v39, -v49, v51, 1.0
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s2, v16, v18, v16
	v_div_scale_f32 v47, null, v18, v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v39, v51
	v_mul_f32_e32 v45, v42, v48
	v_div_scale_f32 v39, s1, v14, v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v53, v47
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v43, -v46, v45, v42
	v_div_scale_f32 v54, s2, v12, v18, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_fma_f32 v55, -v47, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v46, v45, v42
	v_fma_f32 v52, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v52, v43 :: v_dual_mul_f32 v46, v41, v50
	v_div_fmas_f32 v42, v42, v48, v45
	v_mul_f32_e32 v48, v39, v51
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v54, v43
	v_fma_f32 v45, -v44, v46, v41
	v_div_scale_f32 v52, null, v18, v18, v9
	v_div_fixup_f32 v16, v42, v18, v16
	v_fma_f32 v42, -v40, v57, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s3, v13, v18, v13
	v_fma_f32 v41, -v44, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v45, v51
	v_rcp_f32_e32 v56, v52
	v_dual_mul_f32 v44, v55, v53 :: v_dual_fmac_f32 v57, v42, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v41, v50, v46
	v_fma_f32 v39, -v49, v48, v39
	v_div_scale_f32 v46, null, v18, v18, v8
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v47, v44, v55
	v_div_fmas_f32 v39, v39, v51, v48
	v_rcp_f32_e32 v48, v46
	v_div_fixup_f32 v15, v41, v18, v15
	v_fma_f32 v45, -v52, v56, 1.0
	v_fma_f32 v40, -v40, v57, v54
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v39, v18, v14
	v_div_scale_f32 v50, null, v18, v18, v11
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s0, v9, v18, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v46, v48, 1.0
	v_div_fmas_f32 v40, v40, v43, v57
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v48, v41, v48
	v_fmac_f32_e32 v44, v42, v53
	v_mul_f32_e32 v42, v45, v56
	v_div_scale_f32 v41, null, v18, v18, v5
	v_div_fixup_f32 v12, v40, v18, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_div_scale_f32 v40, null, v18, v18, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v43, v43, v53, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v43, v18, v13
	v_div_scale_f32 v43, null, v18, v18, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v43, v47, 1.0
	v_fmac_f32_e32 v47, v54, v47
	v_fma_f32 v39, -v52, v42, v45
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v52, v50
	v_div_scale_f32 v54, s2, v10, v18, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v44, vcc_lo, v8, v18, v8
	v_div_fixup_f32 v9, v39, v18, v9
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v51, -v41, v45, 1.0
	v_fma_f32 v56, -v50, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s1, v5, v18, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v57, v51, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v49, v44, v48 :: v_dual_fmac_f32 v42, v39, v42
	v_div_scale_f32 v39, s0, v7, v18, v7
	v_fma_f32 v53, -v46, v49, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v39, v42
	v_fmac_f32_e32 v49, v53, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v40, v55, v39
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s3, v11, v18, v11
	v_fmac_f32_e32 v55, v53, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v46, v45
	v_dual_mul_f32 v58, v54, v47 :: v_dual_mul_f32 v59, v56, v52
	v_div_fmas_f32 v44, v44, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v41, -v41, v57, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v43, v58, v54
	v_fma_f32 v40, -v50, v59, v56
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v8, v44, v18, v8
	v_div_fmas_f32 v39, v39, v42, v55
	v_dual_fmac_f32 v58, v53, v47 :: v_dual_fmac_f32 v59, v40, v52
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v41, v41, v45, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v40, -v43, v58, v54
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v39, v18, v7
	v_div_fixup_f32 v5, v41, v18, v5
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v40, v18, v10
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v42, v18, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v48, v9
	v_and_b32_e32 v9, 15, v29
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v29, 1, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v45, v14
	v_cvt_i32_f32_e32 v50, v7
	v_and_b32_e32 v7, 15, v18
	v_and_b32_e32 v14, 15, v36
	v_and_b32_e32 v18, 15, v33
	v_lshlrev_b32_e32 v36, 6, v0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v33, 0x100, v29
	v_and_b32_e32 v29, 3, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v46, v12
	v_cvt_i32_f32_e32 v47, v13
	v_cvt_i32_f32_e32 v51, v10
	v_cvt_i32_f32_e32 v52, v11
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v11, 15, v31
	v_and_b32_e32 v12, 15, v32
	v_and_b32_e32 v13, 15, v35
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 0x60, v0
	v_lshlrev_b32_e32 v31, 10, v89
	v_and_b32_e32 v32, 0x400, v36
	v_lshlrev_b32_e32 v35, 5, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v38, v21
	v_cvt_i32_f32_e32 v39, v19
	v_cvt_i32_f32_e32 v40, v20
	v_cvt_i32_f32_e32 v41, v17
	v_cvt_i32_f32_e32 v43, v16
	v_and_b32_e32 v16, 15, v34
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v34, v105, v30
	v_add3_u32 v32, 0, v31, v32
	v_and_or_b32 v35, 0x1b00, v36, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v49, v8
	v_cvt_i32_f32_e32 v42, v22
	v_and_b32_e32 v8, 15, v28
	v_and_b32_e32 v17, 15, v24
	v_and_b32_e32 v19, 15, v23
	v_and_b32_e32 v21, 15, v25
	v_and_b32_e32 v22, 15, v26
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v24, 15, v39
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v26, 15, v41
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, v32, v33, v34
	v_xad_u32 v40, v35, v255, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v44, v15
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v20, 15, v27
	v_and_b32_e32 v29, 15, v46
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v31, 15, v48
	v_and_b32_e32 v32, 15, v49
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
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_and_b32_e32 v29, 15, v44
	v_and_b32_e32 v30, 15, v45
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s31, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v35, 15, v50
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s31, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v51
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 15, v52
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
.Ltmp49:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22484
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 256
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
