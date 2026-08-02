	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	v_lshrrev_b32_e32 v132, 2, v0
	v_and_b32_e32 v151, 0xf0, v0
	v_and_b32_e32 v150, 15, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v154, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v155, 14, v0
	v_or_b32_e32 v135, 0x3f0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v133, 2, v151
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v149, 4, v150
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v42, 0, v154
	v_or_b32_e32 v136, 0x7f0, v0
	v_or_b32_e32 v137, 0xbf0, v0
	v_or_b32_e32 v138, 0xff0, v0
	v_lshlrev_b32_e32 v139, 6, v0
	v_and_b32_e32 v140, 8, v0
	v_and_b32_e32 v141, 32, v0
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
	v_mad_u64_u32 v[129:130], null, s29, v133, v[149:150]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[130:131], null, s29, 3, v[129:130]
	v_lshl_add_u32 v134, s29, 1, v129
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
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s28, v132
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s13, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	s_lshl_b32 s35, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s8, s13
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s35, v132
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s30, s3, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s34, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s30, s11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s9, s29, s35
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s3, s30, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s10
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s31, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s17, 63
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s35, v133
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s33, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s9, s3, s9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v153, 3, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s9, v129
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s8, s28, s35
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s34, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s9, v134
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v152, 4, v153
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s29, v2
	v_add_nc_u32_e32 v4, s9, v130
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v131, v1, v152, s31
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s17, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v18, 0x80000000, v11, s2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v10, s8, v131
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v6, 0x80000000, v4, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s35, 64
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s10, s29, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[10:13], v10, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[14:17], v1, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s35, v133
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s9, s9, s10
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[2:5], v3, s[24:27], 0 offen
	buffer_load_b128 v[6:9], v6, s[24:27], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v22, s9, v129
	v_add_nc_u32_e32 v23, s9, v134
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v24, s9, v130
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s9, s28, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s29, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v30, 0x80000000, v23, vcc_lo
	v_cndmask_b32_e32 v34, 0x80000000, v24, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[22:25], v22, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v1, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v30, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v34, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s35, v132
	s_mov_b32 s26, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s8, s9, v131
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s17, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b128 v[38:41], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v1, v1, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v143, v155, 10, v1
	v_lshlrev_b32_e32 v1, 5, v0
	v_xor_b32_e32 v144, 0x90, v143
	v_xor_b32_e32 v145, 0x120, v143
	v_xor_b32_e32 v146, 0x1b0, v143
	v_xor_b32_e32 v147, 0x210, v143
	v_add_nc_u32_e32 v43, 0, v143
	v_xor_b32_e32 v148, 0x330, v143
	v_xor_b32_e32 v174, 0x3a0, v143
	v_add_nc_u32_e32 v44, 0, v144
	v_add_nc_u32_e32 v45, 0, v145
	v_add_nc_u32_e32 v46, 0, v146
	v_add_nc_u32_e32 v47, 0, v147
	v_add_nc_u32_e32 v48, 0, v148
	v_add_nc_u32_e32 v49, 0, v174
	v_add_nc_u32_e32 v50, 0x4000, v43
	v_add_nc_u32_e32 v51, 0x4000, v44
	v_add_nc_u32_e32 v52, 0x4000, v45
	v_add_nc_u32_e32 v53, 0x4000, v46
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v42, v[10:13] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v10, v18, v14, 0x6020703
	v_perm_b32 v11, v19, v15, 0x4000501
	v_perm_b32 v12, v19, v15, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v57, v6, v2, 0x4000501
	v_perm_b32 v2, v6, v2, 0x6020703
	v_perm_b32 v6, v7, v3, 0x4000501
	v_perm_b32 v3, v7, v3, 0x6020703
	v_perm_b32 v7, v8, v4, 0x4000501
	v_perm_b32 v4, v8, v4, 0x6020703
	v_perm_b32 v8, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	v_perm_b32 v9, v18, v14, 0x4000501
	v_perm_b32 v13, v20, v16, 0x4000501
	v_perm_b32 v14, v20, v16, 0x6020703
	v_perm_b32 v15, v21, v17, 0x4000501
	v_perm_b32 v16, v21, v17, 0x6020703
	v_perm_b32 v17, v57, v9, 0x7060302
	v_perm_b32 v9, v57, v9, 0x5040100
	v_perm_b32 v18, v2, v10, 0x7060302
	v_perm_b32 v2, v2, v10, 0x5040100
	v_perm_b32 v10, v6, v11, 0x7060302
	v_perm_b32 v6, v6, v11, 0x5040100
	v_perm_b32 v11, v3, v12, 0x7060302
	v_perm_b32 v3, v3, v12, 0x5040100
	v_perm_b32 v12, v7, v13, 0x7060302
	v_perm_b32 v7, v7, v13, 0x5040100
	v_perm_b32 v13, v4, v14, 0x7060302
	v_perm_b32 v4, v4, v14, 0x5040100
	v_perm_b32 v14, v8, v15, 0x7060302
	v_perm_b32 v8, v8, v15, 0x5040100
	v_perm_b32 v15, v5, v16, 0x7060302
	v_perm_b32 v5, v5, v16, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v16, v26, v22, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v19, v34, v30, 0x4000501
	v_perm_b32 v20, v26, v22, 0x6020703
	v_perm_b32 v21, v34, v30, 0x6020703
	v_perm_b32 v22, v27, v23, 0x4000501
	v_perm_b32 v26, v35, v31, 0x4000501
	v_perm_b32 v23, v27, v23, 0x6020703
	v_perm_b32 v27, v35, v31, 0x6020703
	v_perm_b32 v30, v28, v24, 0x4000501
	v_perm_b32 v31, v36, v32, 0x4000501
	v_perm_b32 v24, v28, v24, 0x6020703
	v_perm_b32 v28, v36, v32, 0x6020703
	v_perm_b32 v32, v29, v25, 0x4000501
	v_perm_b32 v34, v37, v33, 0x4000501
	v_perm_b32 v25, v29, v25, 0x6020703
	v_perm_b32 v29, v37, v33, 0x6020703
	ds_store_2addr_b32 v43, v17, v9 offset1:16
	ds_store_2addr_b32 v44, v18, v2 offset1:16
	ds_store_2addr_b32 v45, v10, v6 offset1:16
	ds_store_2addr_b32 v46, v11, v3 offset1:16
	ds_store_2addr_b32 v47, v12, v7 offset1:16
	ds_store_2addr_b32 v43, v13, v4 offset0:160 offset1:176
	ds_store_2addr_b32 v48, v14, v8 offset1:16
	ds_store_2addr_b32 v49, v15, v5 offset1:16
	v_perm_b32 v2, v19, v16, 0x7060302
	v_perm_b32 v3, v19, v16, 0x5040100
	v_perm_b32 v4, v21, v20, 0x7060302
	v_perm_b32 v5, v21, v20, 0x5040100
	v_perm_b32 v6, v26, v22, 0x7060302
	v_perm_b32 v7, v26, v22, 0x5040100
	v_perm_b32 v8, v27, v23, 0x7060302
	v_perm_b32 v9, v27, v23, 0x5040100
	v_perm_b32 v10, v31, v30, 0x7060302
	v_perm_b32 v11, v31, v30, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[38:41] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v12, v28, v24, 0x7060302
	v_perm_b32 v13, v28, v24, 0x5040100
	v_perm_b32 v14, v34, v32, 0x7060302
	v_perm_b32 v15, v34, v32, 0x5040100
	v_perm_b32 v16, v29, v25, 0x7060302
	v_perm_b32 v17, v29, v25, 0x5040100
	ds_store_2addr_b32 v50, v2, v3 offset1:16
	ds_store_2addr_b32 v51, v4, v5 offset1:16
	ds_store_2addr_b32 v52, v6, v7 offset1:16
	ds_store_2addr_b32 v53, v8, v9 offset1:16
	ds_store_2addr_b32 v54, v10, v11 offset1:16
	ds_store_2addr_b32 v50, v12, v13 offset0:160 offset1:176
	ds_store_2addr_b32 v55, v14, v15 offset1:16
	ds_store_2addr_b32 v56, v16, v17 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v173, 6, v0
	v_and_b32_e32 v2, 0x1800, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v177, 0x3f0, v0
	v_or_b32_e32 v178, 0x7f0, v0
	v_or_b32_e32 v179, 0xbf0, v0
	v_or_b32_e32 v180, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v175, 8, v0
	v_and_b32_e32 v172, 32, v0
	v_and_or_b32 v142, 0x1c0, v173, v2
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v65, 0
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v157, v65
	v_mov_b32_e32 v158, v65
	v_mov_b32_e32 v72, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v76, v68 :: v_dual_mov_b32 v75, v67
	v_dual_mov_b32 v84, v68 :: v_dual_mov_b32 v83, v67
	v_dual_mov_b32 v112, v68 :: v_dual_mov_b32 v111, v67
	v_dual_mov_b32 v104, v68 :: v_dual_mov_b32 v103, v67
	v_dual_mov_b32 v108, v68 :: v_dual_mov_b32 v107, v67
	v_dual_mov_b32 v96, v68 :: v_dual_mov_b32 v95, v67
	v_dual_mov_b32 v100, v68 :: v_dual_mov_b32 v99, v67
	v_dual_mov_b32 v92, v68 :: v_dual_mov_b32 v91, v67
	v_dual_mov_b32 v88, v68 :: v_dual_mov_b32 v87, v67
	v_dual_mov_b32 v80, v68 :: v_dual_mov_b32 v79, v67
	v_dual_mov_b32 v71, v67 :: v_dual_mov_b32 v70, v66
	v_dual_mov_b32 v69, v65 :: v_dual_mov_b32 v74, v66
	v_dual_mov_b32 v73, v65 :: v_dual_mov_b32 v82, v66
	v_dual_mov_b32 v81, v65 :: v_dual_mov_b32 v110, v66
	v_dual_mov_b32 v109, v65 :: v_dual_mov_b32 v102, v66
	v_dual_mov_b32 v101, v65 :: v_dual_mov_b32 v106, v66
	v_dual_mov_b32 v105, v65 :: v_dual_mov_b32 v94, v66
	v_dual_mov_b32 v93, v65 :: v_dual_mov_b32 v98, v66
	v_dual_mov_b32 v97, v65 :: v_dual_mov_b32 v90, v66
	v_dual_mov_b32 v89, v65 :: v_dual_mov_b32 v86, v66
	v_dual_mov_b32 v85, v65 :: v_dual_mov_b32 v78, v66
	v_mov_b32_e32 v77, v65
	v_mov_b32_e32 v159, v65
	v_mov_b32_e32 v160, v65
	v_mov_b32_e32 v161, v65
	v_mov_b32_e32 v162, v65
	v_mov_b32_e32 v163, v65
	v_mov_b32_e32 v164, v65
	v_mov_b32_e32 v165, v65
	v_mov_b32_e32 v166, v65
	v_mov_b32_e32 v167, v65
	v_mov_b32_e32 v168, v65
	v_mov_b32_e32 v169, v65
	v_mov_b32_e32 v170, v65
	v_mov_b32_e32 v171, v65
	v_mov_b32_e32 v156, v65
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $vgpr178
                                        ; implicit-def: $vgpr179
                                        ; implicit-def: $vgpr180
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr175
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr142
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s37, s17, 6
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_lshlrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v1, 0x1800, v1
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 48, v2
	v_and_or_b32 v142, 0x1c0, v139, v1
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v172, s29, v129
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v165, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v3, v2
	v_dual_mov_b32 v171, 0 :: v_dual_and_b32 v2, 0x420, v4
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_mov_b32_e32 v163, 0
	v_or_b32_e32 v1, v142, v1
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_mov_b32_e32 v159, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v173, v1, v2
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_xor_b32_e32 v175, 16, v173
	v_xor_b32_e32 v176, 32, v173
	v_xor_b32_e32 v177, 48, v173
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v80, 0
	s_add_i32 s35, s35, 64
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s17, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s17, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v178, s36, v150
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s18, s35, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s16, v173
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s18, v132
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s18, s28, v[131:132]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v18, s16, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v11
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[57:60], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v178 offset:832
	ds_load_u8 v10, v178 offset:768
	ds_load_u8 v11, v178 offset:960
	ds_load_u8 v12, v178 offset:896
	ds_load_u8 v13, v178 offset:576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v17
	ds_load_b128 v[121:124], v18
	ds_load_b128 v[61:64], v17 offset:8192
	ds_load_b128 v[113:116], v18 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v178 offset:704
	v_lshl_or_b32 v28, v11, 16, v9
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v13, 0xc0c0004
	ds_load_u8 v13, v178 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v10
	ds_load_u8 v9, v178 offset:320
	ds_load_u8 v10, v178 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:448
	ds_load_u8 v11, v178 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v178 offset:64
	ds_load_u8 v10, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:192
	ds_load_u8 v11, v178 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v178 offset:1856
	ds_load_u8 v10, v178 offset:1792
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:1984
	ds_load_u8 v11, v178 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v178 offset:1600
	ds_load_u8 v12, v178 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v178 offset:1344
	ds_load_u8 v10, v178 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v178 offset:1728
	ds_load_u8 v13, v178 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v178 offset:1472
	ds_load_u8 v11, v178 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v178 offset:1088
	ds_load_u8 v10, v178 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:1216
	ds_load_u8 v11, v178 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[117:120], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v178 offset:848
	ds_load_u8 v26, v178 offset:784
	v_wmma_i32_16x16x16_iu8 v[17:24], v[113:116], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v178 offset:976
	ds_load_u8 v27, v178 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v178 offset:592
	ds_load_u8 v28, v178 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v178 offset:336
	ds_load_u8 v26, v178 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v178 offset:720
	ds_load_u8 v29, v178 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v178 offset:464
	ds_load_u8 v27, v178 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v178 offset:16
	ds_load_u8 v26, v178 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v178 offset:208
	ds_load_u8 v27, v178 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v178 offset:1872
	ds_load_u8 v26, v178 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v178 offset:2000
	ds_load_u8 v27, v178 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v178 offset:1616
	ds_load_u8 v28, v178 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v178 offset:1360
	ds_load_u8 v26, v178 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v178 offset:1744
	ds_load_u8 v29, v178 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v178 offset:1488
	ds_load_u8 v27, v178 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v178 offset:1104
	ds_load_u8 v26, v178 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v178 offset:1232
	ds_load_u8 v27, v178 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[117:120], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v178 offset:864
	ds_load_u8 v42, v178 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[113:116], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v178 offset:992
	ds_load_u8 v43, v178 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v178 offset:608
	ds_load_u8 v44, v178 offset:544
	v_lshl_or_b32 v128, v42, 16, v41
	ds_load_u8 v41, v178 offset:352
	ds_load_u8 v42, v178 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v178 offset:736
	ds_load_u8 v45, v178 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v44, 16, v43
	ds_load_u8 v42, v178 offset:480
	ds_load_u8 v43, v178 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v126, v42, 16, v41
	ds_load_u8 v41, v178 offset:32
	ds_load_u8 v42, v178 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v178 offset:224
	ds_load_u8 v43, v178 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v42, 16, v41
	ds_load_u8 v41, v178 offset:1888
	ds_load_u8 v42, v178 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[125:128], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v178 offset:2016
	ds_load_u8 v43, v178 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v178 offset:1632
	ds_load_u8 v44, v178 offset:1568
	v_lshl_or_b32 v182, v42, 16, v41
	ds_load_u8 v41, v178 offset:1376
	ds_load_u8 v42, v178 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v178 offset:1760
	ds_load_u8 v45, v178 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v44, 16, v43
	ds_load_u8 v42, v178 offset:1504
	ds_load_u8 v43, v178 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v180, v42, 16, v41
	ds_load_u8 v41, v178 offset:1120
	ds_load_u8 v42, v178 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v178 offset:1248
	ds_load_u8 v43, v178 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[117:120], v[125:128], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v125, v178 offset:880
	ds_load_u8 v126, v178 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[113:116], v[179:182], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[179:182], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v126, s36, v135
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v126, v126
	ds_load_u8 v127, v178 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v178 offset:624
	ds_load_u8 v128, v178 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v178 offset:752
	ds_load_u8 v179, v178 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v128, 0xc0c0004
	v_lshl_or_b32 v128, v126, 16, v125
	ds_load_u8 v125, v178 offset:368
	ds_load_u8 v126, v178 offset:304
	v_lshl_or_b32 v127, v179, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v178 offset:496
	ds_load_u8 v179, v178 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v179, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v126, 16, v125
	ds_load_u8 v125, v178 offset:48
	ds_load_u8 v179, v178 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v179, 0xc0c0004
	ds_load_u8 v179, v178 offset:240
	ds_load_u8 v180, v178 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v179, 16, v125
	ds_load_u8 v179, v178 offset:1904
	ds_load_u8 v180, v178 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v180, s36, v136
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v180, v180
	ds_load_u8 v181, v178 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v178 offset:1648
	ds_load_u8 v182, v178 offset:1584
	v_lshl_or_b32 v190, v180, 16, v179
	ds_load_u8 v179, v178 offset:1392
	ds_load_u8 v180, v178 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v178 offset:1776
	ds_load_u8 v183, v178 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v182, 16, v181
	ds_load_u8 v180, v178 offset:1520
	ds_load_u8 v181, v178 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_lshl_or_b32 v188, v180, 16, v179
	ds_load_u8 v179, v178 offset:1136
	ds_load_u8 v180, v178 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v178 offset:1264
	ds_load_u8 v181, v178 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v180, 16, v179
	v_wmma_i32_16x16x16_iu8 v[179:186], v[117:120], v[125:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[121:124], v[187:190], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[61:64], v[125:128], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2880
	ds_load_u8 v62, v178 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v125, s16, v176
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[117:124], v[113:116], v[187:190], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3008
	ds_load_u8 v63, v178 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2624
	ds_load_u8 v64, v178 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2752
	ds_load_u8 v113, v178 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2368
	ds_load_u8 v62, v178 offset:2304
	v_lshl_or_b32 v63, v113, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2496
	ds_load_u8 v113, v178 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v113, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2112
	ds_load_u8 v113, v178 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v113, v61, 0xc0c0004
	ds_load_u8 v113, v178 offset:2240
	ds_load_u8 v114, v178 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v113, 16, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v125
	ds_load_b128 v[125:128], v125 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[113:116], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[125:128], v[61:64], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2896
	ds_load_u8 v62, v178 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3024
	ds_load_u8 v63, v178 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2640
	ds_load_u8 v64, v178 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2768
	ds_load_u8 v187, v178 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2384
	ds_load_u8 v62, v178 offset:2320
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2512
	ds_load_u8 v187, v178 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2128
	ds_load_u8 v187, v178 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:2256
	ds_load_u8 v188, v178 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[113:116], v[61:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[125:128], v[61:64], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2912
	ds_load_u8 v62, v178 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3040
	ds_load_u8 v63, v178 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2656
	ds_load_u8 v64, v178 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2784
	ds_load_u8 v187, v178 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2400
	ds_load_u8 v62, v178 offset:2336
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2528
	ds_load_u8 v187, v178 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2144
	ds_load_u8 v187, v178 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:2272
	ds_load_u8 v188, v178 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[41:48], v[113:116], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[125:128], v[61:64], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2928
	ds_load_u8 v62, v178 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s36, v137
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v62
	ds_load_u8 v63, v178 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2672
	ds_load_u8 v64, v178 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2800
	ds_load_u8 v187, v178 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2416
	ds_load_u8 v62, v178 offset:2352
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2544
	ds_load_u8 v187, v178 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2160
	ds_load_u8 v187, v178 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:2288
	ds_load_u8 v188, v178 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[179:186], v[113:116], v[61:64], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[125:128], v[61:64], v[117:124] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3904
	ds_load_u8 v62, v178 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v125, s16, v177
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s18, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s16, s16, s3
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:4032
	ds_load_u8 v63, v178 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3648
	ds_load_u8 v64, v178 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3776
	ds_load_u8 v113, v178 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3392
	ds_load_u8 v62, v178 offset:3328
	v_lshl_or_b32 v63, v113, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3520
	ds_load_u8 v113, v178 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v113, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3136
	ds_load_u8 v113, v178 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v113, v61, 0xc0c0004
	ds_load_u8 v113, v178 offset:3264
	ds_load_u8 v114, v178 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v113, 16, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v125
	ds_load_b128 v[125:128], v125 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[113:116], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[125:128], v[61:64], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3920
	ds_load_u8 v62, v178 offset:3856
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v169, v169, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v171, v171, v22 :: v_dual_add_f32 v104, v104, v21
	v_dual_add_f32 v170, v170, v23 :: v_dual_add_f32 v103, v103, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:4048
	ds_load_u8 v63, v178 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3664
	ds_load_u8 v64, v178 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3792
	ds_load_u8 v187, v178 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3408
	ds_load_u8 v62, v178 offset:3344
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3536
	ds_load_u8 v187, v178 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3152
	ds_load_u8 v187, v178 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:3280
	ds_load_u8 v188, v178 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[113:116], v[61:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[125:128], v[61:64], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3936
	ds_load_u8 v62, v178 offset:3872
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v107, v107, v27
	v_add_f32_e32 v105, v105, v25
	v_add_f32_e32 v75, v75, v31
	v_add_f32_e32 v73, v73, v29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:4064
	ds_load_u8 v63, v178 offset:4000
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v108, v108, v28
	v_add_f32_e32 v106, v106, v26
	v_add_f32_e32 v167, v167, v38
	v_add_f32_e32 v95, v95, v36
	v_add_f32_e32 v165, v165, v40
	v_add_f32_e32 v93, v93, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3680
	ds_load_u8 v64, v178 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3808
	ds_load_u8 v187, v178 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3424
	ds_load_u8 v62, v178 offset:3360
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3552
	ds_load_u8 v187, v178 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3168
	ds_load_u8 v187, v178 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:3296
	ds_load_u8 v188, v178 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[41:48], v[113:116], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[125:128], v[61:64], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3952
	ds_load_u8 v62, v178 offset:3888
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v32 :: v_dual_add_f32 v99, v99, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s36, v138
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v62
	ds_load_u8 v63, v178 offset:4016
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v74, v74, v30 :: v_dual_add_f32 v97, v97, v41
	v_dual_add_f32 v168, v168, v33 :: v_dual_add_f32 v71, v71, v47
	v_dual_add_f32 v96, v96, v37 :: v_dual_add_f32 v91, v91, v52
	v_dual_add_f32 v94, v94, v35 :: v_dual_add_f32 v69, v69, v45
	v_dual_add_f32 v166, v166, v39 :: v_dual_add_f32 v89, v89, v50
	v_dual_add_f32 v100, v100, v44 :: v_dual_add_f32 v163, v163, v54
	v_dual_add_f32 v98, v98, v42 :: v_dual_add_f32 v161, v161, v56
	s_mov_b32 s36, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3696
	ds_load_u8 v64, v178 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3824
	ds_load_u8 v187, v178 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3440
	ds_load_u8 v62, v178 offset:3376
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3568
	ds_load_u8 v187, v178 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3184
	ds_load_u8 v187, v178 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:3312
	ds_load_u8 v178, v178 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v178, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v178, 16, v61
	v_wmma_i32_16x16x16_iu8 v[179:186], v[113:116], v[61:64], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[125:128], v[61:64], v[117:124] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v64, v12
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v12, s18, v133
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v18
	v_cvt_f32_i32_e32 v113, v13
	v_cvt_f32_i32_e32 v114, v14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s16, v172
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v101, v101, v126 :: v_dual_add_nc_u32 v12, s16, v129
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v82, v82, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v16, 0x80000000, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v115, v15
	v_cvt_f32_i32_e32 v125, v17
	v_cvt_f32_i32_e32 v127, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v16, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v62, v10
	v_cvt_f32_i32_e32 v63, v11
	v_cvt_f32_i32_e32 v11, v122
	v_cvt_f32_i32_e32 v10, v123
	v_cvt_f32_i32_e32 v61, v9
	v_cvt_f32_i32_e32 v128, v179
	v_cvt_f32_i32_e32 v179, v181
	v_cvt_f32_i32_e32 v181, v183
	v_cvt_f32_i32_e32 v183, v185
	v_cvt_f32_i32_e32 v9, v124
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v156, v156, v125
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v178, v180
	v_cvt_f32_i32_e32 v180, v182
	v_cvt_f32_i32_e32 v182, v184
	v_cvt_f32_i32_e32 v184, v186
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v102, v102, v127
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v112, v112, v64 :: v_dual_add_f32 v111, v111, v63
	v_dual_add_f32 v110, v110, v62 :: v_dual_add_f32 v109, v109, v61
	v_dual_add_f32 v84, v84, v116 :: v_dual_add_f32 v83, v83, v115
	v_dual_add_f32 v81, v81, v113 :: v_dual_add_f32 v72, v72, v48
	v_dual_add_f32 v87, v87, v179 :: v_dual_add_f32 v70, v70, v46
	v_dual_add_f32 v85, v85, v128 :: v_dual_add_f32 v164, v164, v49
	v_dual_add_f32 v67, v67, v183 :: v_dual_add_f32 v92, v92, v53
	v_dual_add_f32 v79, v79, v120 :: v_dual_add_f32 v90, v90, v51
	v_dual_add_f32 v65, v65, v181 :: v_dual_add_f32 v162, v162, v55
	v_dual_add_f32 v77, v77, v118 :: v_dual_add_f32 v88, v88, v180
	v_dual_add_f32 v159, v159, v11 :: v_dual_add_f32 v66, v66, v182
	v_add_f32_e32 v157, v157, v9
	v_add_f32_e32 v160, v160, v117
	v_add_f32_e32 v80, v80, v121
	v_add_f32_e32 v78, v78, v119
	v_add_f32_e32 v158, v158, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v122, v16, v12, 0x4000501
	v_perm_b32 v123, v16, v12, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s16, v134
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v124, v17, v13, 0x4000501
	v_perm_b32 v185, v17, v13, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s16, v130
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v186, v18, v14, 0x4000501
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_perm_b32 v187, v18, v14, 0x6020703
	v_perm_b32 v188, v19, v15, 0x4000501
	v_cndmask_b32_e32 v16, 0x80000000, v13, vcc_lo
	v_perm_b32 v189, v19, v15, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v16, s[24:27], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_add_i32 s16, s38, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s16, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s38, s16, 0
	s_add_i32 s19, s17, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s16, s38, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s16, 0
	s_mov_b32 s16, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s0, s38, 14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s18, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s0, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v86, v86, v178 :: v_dual_add_nc_u32 v11, s0, v148
	v_add_f32_e32 v68, v68, v184
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s37
	s_mov_b32 s17, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v190, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v19, s18, v154
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v10, v14, v187, 0x7060302
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v19, v[57:60] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v19, v190, v122, 0x7060302
	v_perm_b32 v57, v190, v122, 0x5040100
	v_add_nc_u32_e32 v58, s0, v143
	ds_store_2addr_b32 v58, v19, v57 offset1:16
	v_perm_b32 v19, v12, v123, 0x7060302
	v_perm_b32 v12, v12, v123, 0x5040100
	v_add_nc_u32_e32 v57, s0, v144
	ds_store_2addr_b32 v57, v19, v12 offset1:16
	v_perm_b32 v12, v16, v124, 0x7060302
	v_perm_b32 v16, v16, v124, 0x5040100
	v_add_nc_u32_e32 v19, s0, v145
	ds_store_2addr_b32 v19, v12, v16 offset1:16
	v_perm_b32 v12, v13, v185, 0x7060302
	v_perm_b32 v13, v13, v185, 0x5040100
	v_add_nc_u32_e32 v16, s0, v146
	ds_store_2addr_b32 v16, v12, v13 offset1:16
	v_perm_b32 v12, v17, v186, 0x7060302
	v_perm_b32 v13, v17, v186, 0x5040100
	v_add_nc_u32_e32 v16, s0, v147
	v_add_nc_u32_e32 v17, s0, v174
	ds_store_2addr_b32 v16, v12, v13 offset1:16
	v_perm_b32 v12, v14, v187, 0x5040100
	v_perm_b32 v13, v18, v188, 0x7060302
	v_perm_b32 v14, v18, v188, 0x5040100
	v_perm_b32 v16, v15, v189, 0x7060302
	v_perm_b32 v15, v15, v189, 0x5040100
	ds_store_2addr_b32 v58, v10, v12 offset0:160 offset1:176
	ds_store_2addr_b32 v11, v13, v14 offset1:16
	ds_store_2addr_b32 v17, v16, v15 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v177, v135 :: v_dual_mov_b32 v178, v136
	v_dual_mov_b32 v179, v137 :: v_dual_mov_b32 v180, v138
	v_dual_mov_b32 v173, v139 :: v_dual_mov_b32 v172, v141
	v_mov_b32_e32 v175, v140
	s_mov_b32 s26, s16
.LBB0_7:                                ; %Flow214
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_and_b32_e32 v174, 6, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v175
	v_and_b32_e32 v176, 1, v0
	s_mov_b32 s16, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v2, 3, v174
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v172
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v2
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v142, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v125, v1, v2
	v_xor_b32_e32 v121, 16, v125
	v_xor_b32_e32 v122, 32, v125
	v_xor_b32_e32 v123, 48, v125
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v124, s36, v150
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v2, v124 offset:832
	ds_load_u8 v3, v124 offset:768
	ds_load_u8 v4, v124 offset:960
	ds_load_u8 v5, v124 offset:896
	ds_load_u8 v6, v124 offset:576
	ds_load_u8 v7, v124 offset:512
	ds_load_u8 v8, v124 offset:704
	ds_load_u8 v9, v124 offset:640
	ds_load_u8 v10, v124 offset:320
	ds_load_u8 v11, v124 offset:256
	ds_load_u8 v12, v124 offset:448
	ds_load_u8 v13, v124 offset:384
	ds_load_u8 v14, v124 offset:64
	ds_load_u8 v15, v124
	ds_load_u8 v16, v124 offset:192
	ds_load_u8 v17, v124 offset:128
	ds_load_u8 v21, v124 offset:848
	ds_load_u8 v22, v124 offset:784
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s26, v125
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v3, v2, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s36, v177
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[130:133], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	v_lshl_or_b32 v20, v4, 16, v3
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	ds_load_u8 v9, v124 offset:16
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v13, v12, 0xc0c0004
	v_lshl_or_b32 v19, v6, 16, v5
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v17, v16, 0xc0c0004
	v_lshl_or_b32 v18, v8, 16, v7
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v22, v21, 0xc0c0004
	ds_load_u8 v6, v124 offset:976
	ds_load_u8 v7, v124 offset:912
	ds_load_u8 v8, v124 offset:592
	ds_load_u8 v10, v124 offset:528
	ds_load_u8 v11, v124 offset:720
	ds_load_u8 v12, v124 offset:656
	ds_load_u8 v13, v124 offset:336
	ds_load_u8 v14, v124 offset:272
	ds_load_u8 v15, v124 offset:464
	ds_load_u8 v16, v124 offset:400
	ds_load_u8 v21, v124 offset:80
	ds_load_u8 v22, v124 offset:208
	ds_load_u8 v25, v124 offset:144
	ds_load_u8 v26, v124 offset:864
	ds_load_u8 v27, v124 offset:800
	ds_load_u8 v28, v124 offset:992
	ds_load_u8 v29, v124 offset:928
	ds_load_u8 v30, v124 offset:608
	ds_load_u8 v31, v124 offset:544
	ds_load_u8 v32, v124 offset:736
	ds_load_u8 v33, v124 offset:672
	ds_load_u8 v34, v124 offset:352
	ds_load_u8 v35, v124 offset:288
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v124 offset:480
	ds_load_u8 v36, v124 offset:416
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v8, v10, v8, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	ds_load_u8 v11, v124 offset:32
	ds_load_u8 v12, v124 offset:48
	v_lshl_or_b32 v17, v4, 16, v3
	v_lshl_or_b32 v24, v6, 16, v5
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	v_lshl_or_b32 v23, v10, 16, v8
	ds_load_u8 v8, v124 offset:96
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v5, v9, v21, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v6, v25, v22, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v10, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v31, v30, 0xc0c0004
	ds_load_u8 v16, v124 offset:224
	ds_load_u8 v25, v124 offset:160
	ds_load_u8 v26, v124 offset:880
	ds_load_u8 v27, v124 offset:816
	ds_load_u8 v2, v2
	ds_load_u8 v28, v124 offset:944
	ds_load_u8 v29, v124 offset:624
	ds_load_u8 v30, v124 offset:560
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v14, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v15, v35, v34, 0xc0c0004
	v_lshl_or_b32 v22, v4, 16, v3
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v36, v7, 0xc0c0004
	v_lshl_or_b32 v21, v6, 16, v5
	v_lshl_or_b32 v129, v10, 16, v9
	v_lshl_or_b32 v128, v14, 16, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v127, v7, 16, v15
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v11, v8, 0xc0c0004
	ds_load_u8 v4, v124 offset:752
	ds_load_u8 v5, v124 offset:688
	ds_load_u8 v6, v124 offset:368
	ds_load_u8 v7, v124 offset:304
	ds_load_u8 v8, v124 offset:496
	ds_load_u8 v9, v124 offset:432
	ds_load_u8 v11, v124 offset:112
	ds_load_u8 v13, v124 offset:240
	ds_load_u8 v14, v124 offset:176
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v1 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v28, v2, 0xc0c0004
	v_perm_b32 v10, v25, v16, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v120, v2, 16, v15
	v_lshl_or_b32 v126, v10, 16, v3
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v9, v8, 0xc0c0004
	v_lshl_or_b32 v119, v1, 16, v16
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v14, v13, 0xc0c0004
	v_mov_b32_e32 v9, s16
	v_lshl_or_b32 v118, v4, 16, v3
	v_dual_mov_b32 v10, s17 :: v_dual_mov_b32 v11, s18
	v_dual_mov_b32 v12, s19 :: v_dual_mov_b32 v13, s20
	v_dual_mov_b32 v14, s21 :: v_dual_mov_b32 v15, s22
	v_mov_b32_e32 v16, s23
	v_lshl_or_b32 v117, v2, 16, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[130:133], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[130:133], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[113:116], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[130:133], v[126:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[113:116], v[126:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[130:133], v[117:120], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[113:116], v[117:120], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:1856
	ds_load_u8 v114, v124 offset:1792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v126, s26, v121
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:1984
	ds_load_u8 v115, v124 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:1600
	ds_load_u8 v116, v124 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:1728
	ds_load_u8 v117, v124 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:1344
	ds_load_u8 v114, v124 offset:1280
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:1472
	ds_load_u8 v117, v124 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:1088
	ds_load_u8 v117, v124 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v124 offset:1216
	ds_load_u8 v118, v124 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v126
	ds_load_b128 v[126:129], v126 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[126:129], v[113:116], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:1872
	ds_load_u8 v114, v124 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:2000
	ds_load_u8 v115, v124 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:1616
	ds_load_u8 v116, v124 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:1744
	ds_load_u8 v130, v124 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:1360
	ds_load_u8 v114, v124 offset:1296
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:1488
	ds_load_u8 v130, v124 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:1104
	ds_load_u8 v130, v124 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:1232
	ds_load_u8 v131, v124 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[126:129], v[113:116], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:1888
	ds_load_u8 v114, v124 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:2016
	ds_load_u8 v115, v124 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:1632
	ds_load_u8 v116, v124 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:1760
	ds_load_u8 v130, v124 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:1376
	ds_load_u8 v114, v124 offset:1312
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:1504
	ds_load_u8 v130, v124 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:1120
	ds_load_u8 v130, v124 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:1248
	ds_load_u8 v131, v124 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[113:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[126:129], v[113:116], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:1904
	ds_load_u8 v114, v124 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s36, v178
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v114
	ds_load_u8 v115, v124 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:1648
	ds_load_u8 v116, v124 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:1776
	ds_load_u8 v130, v124 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:1392
	ds_load_u8 v114, v124 offset:1328
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:1520
	ds_load_u8 v130, v124 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:1136
	ds_load_u8 v130, v124 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:1264
	ds_load_u8 v131, v124 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[126:129], v[113:116], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:2880
	ds_load_u8 v114, v124 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v126, s26, v122
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:3008
	ds_load_u8 v115, v124 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:2624
	ds_load_u8 v116, v124 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:2752
	ds_load_u8 v117, v124 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:2368
	ds_load_u8 v114, v124 offset:2304
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:2496
	ds_load_u8 v117, v124 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:2112
	ds_load_u8 v117, v124 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v124 offset:2240
	ds_load_u8 v118, v124 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v126
	ds_load_b128 v[126:129], v126 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[126:129], v[113:116], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:2896
	ds_load_u8 v114, v124 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:3024
	ds_load_u8 v115, v124 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:2640
	ds_load_u8 v116, v124 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:2768
	ds_load_u8 v130, v124 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:2384
	ds_load_u8 v114, v124 offset:2320
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:2512
	ds_load_u8 v130, v124 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:2128
	ds_load_u8 v130, v124 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:2256
	ds_load_u8 v131, v124 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[126:129], v[113:116], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:2912
	ds_load_u8 v114, v124 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:3040
	ds_load_u8 v115, v124 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:2656
	ds_load_u8 v116, v124 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:2784
	ds_load_u8 v130, v124 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:2400
	ds_load_u8 v114, v124 offset:2336
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:2528
	ds_load_u8 v130, v124 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:2144
	ds_load_u8 v130, v124 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:2272
	ds_load_u8 v131, v124 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[113:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[126:129], v[113:116], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:2928
	ds_load_u8 v114, v124 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s36, v179
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v114
	ds_load_u8 v115, v124 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:2672
	ds_load_u8 v116, v124 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:2800
	ds_load_u8 v130, v124 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:2416
	ds_load_u8 v114, v124 offset:2352
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:2544
	ds_load_u8 v130, v124 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:2160
	ds_load_u8 v130, v124 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:2288
	ds_load_u8 v131, v124 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[126:129], v[113:116], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:3904
	ds_load_u8 v114, v124 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v126, s26, v123
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:4032
	ds_load_u8 v115, v124 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:3648
	ds_load_u8 v116, v124 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:3776
	ds_load_u8 v117, v124 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:3392
	ds_load_u8 v114, v124 offset:3328
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:3520
	ds_load_u8 v117, v124 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:3136
	ds_load_u8 v117, v124 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v124 offset:3264
	ds_load_u8 v118, v124 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v126
	ds_load_b128 v[126:129], v126 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[126:129], v[113:116], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:3920
	ds_load_u8 v114, v124 offset:3856
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v83, v83, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:4048
	ds_load_u8 v115, v124 offset:3984
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v103, v103, v60
	v_add_f32_e32 v101, v101, v58
	v_add_f32_e32 v171, v171, v62
	v_add_f32_e32 v169, v169, v64
	v_add_f32_e32 v112, v112, v4
	v_dual_add_f32 v110, v110, v2 :: v_dual_add_f32 v109, v109, v1
	v_add_f32_e32 v111, v111, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:3664
	ds_load_u8 v116, v124 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:3792
	ds_load_u8 v130, v124 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:3408
	ds_load_u8 v114, v124 offset:3344
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:3536
	ds_load_u8 v130, v124 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:3152
	ds_load_u8 v130, v124 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:3280
	ds_load_u8 v131, v124 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[126:129], v[113:116], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:3936
	ds_load_u8 v114, v124 offset:3872
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v82, v82, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v107, v107, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v84, v84, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:4064
	ds_load_u8 v115, v124 offset:4000
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v156, v156, v57 :: v_dual_add_f32 v95, v95, v44
	v_dual_add_f32 v104, v104, v61 :: v_dual_add_f32 v93, v93, v42
	v_dual_add_f32 v102, v102, v59 :: v_dual_add_f32 v73, v73, v53
	v_dual_add_f32 v170, v170, v63 :: v_dual_add_f32 v167, v167, v46
	v_dual_add_f32 v106, v106, v50 :: v_dual_add_f32 v165, v165, v48
	v_add_f32_e32 v105, v105, v49
	v_add_f32_e32 v75, v75, v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:3680
	ds_load_u8 v116, v124 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:3808
	ds_load_u8 v130, v124 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:3424
	ds_load_u8 v114, v124 offset:3360
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:3552
	ds_load_u8 v130, v124 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:3168
	ds_load_u8 v130, v124 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:3296
	ds_load_u8 v131, v124 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[113:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[126:129], v[113:116], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v113, v124 offset:3952
	ds_load_u8 v114, v124 offset:3888
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v7, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v168, v168, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v29
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v89, v89, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v25
	v_cvt_f32_i32_e32 v8, v27
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v108, v108, v52
	v_dual_add_f32 v76, v76, v56 :: v_dual_add_f32 v97, v97, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s36, v180
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v114
	ds_load_u8 v115, v124 offset:4016
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v74, v74, v54 :: v_dual_add_f32 v71, v71, v39
	v_dual_add_f32 v94, v94, v43 :: v_dual_add_f32 v69, v69, v37
	v_add_f32_e32 v99, v99, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v124 offset:3696
	ds_load_u8 v116, v124 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v124 offset:3824
	ds_load_u8 v130, v124 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v124 offset:3440
	ds_load_u8 v114, v124 offset:3376
	v_lshl_or_b32 v115, v130, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v124 offset:3568
	ds_load_u8 v130, v124 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v130, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v124 offset:3184
	ds_load_u8 v130, v124 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v130, v113, 0xc0c0004
	ds_load_u8 v130, v124 offset:3312
	ds_load_u8 v124, v124 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v124, 16, v113
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[126:129], v[113:116], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v7, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v98, v98, v34 :: v_dual_add_f32 v87, v87, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v66, v66, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v92, v92, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v96, v96, v45 :: v_dual_add_f32 v79, v79, v7
	v_add_f32_e32 v163, v163, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v100, v100, v36 :: v_dual_add_f32 v161, v161, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v72, v40 :: v_dual_add_f32 v85, v85, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v164, v164, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v166, v166, v47 :: v_dual_add_f32 v67, v67, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v91, v91, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v80, v80, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v162, v162, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v159, v159, v6 :: v_dual_add_f32 v88, v88, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v68, v68, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v9, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v160, v160, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v90, v90, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v158, v158, v9
	v_add_f32_e32 v77, v77, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v86, v86, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v70, v70, v38 :: v_dual_add_f32 v157, v157, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v65, v65, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v8
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v5, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v181, s1, v150
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	ds_load_u8 v17, v181 offset:1856
	ds_load_u8 v18, v181 offset:1792
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s0, v123
	ds_load_b128 v[113:116], v1 offset:8192
	ds_load_b128 v[129:132], v1
	v_add_nc_u32_e32 v1, s0, v122
	ds_load_b128 v[117:120], v1 offset:8192
	ds_load_b128 v[133:136], v1
	v_add_nc_u32_e32 v1, s0, v121
	ds_load_b128 v[121:124], v1 offset:8192
	ds_load_b128 v[137:140], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:1984
	ds_load_u8 v19, v181 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s0, v125
	ds_load_b128 v[125:128], v1 offset:8192
	ds_load_b128 v[141:144], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v181 offset:832
	ds_load_u8 v2, v181 offset:768
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v180, s1, v180
	v_add_nc_u32_e32 v178, s1, v178
	v_add_nc_u32_e32 v58, s1, v177
	v_add_nc_u32_e32 v179, s1, v179
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v181 offset:1600
	ds_load_u8 v18, v181 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v181 offset:960
	ds_load_u8 v3, v181 offset:896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:1728
	ds_load_u8 v19, v181 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v181 offset:576
	ds_load_u8 v2, v181 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v181 offset:1344
	ds_load_u8 v18, v181 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v181 offset:704
	ds_load_u8 v3, v181 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:1472
	ds_load_u8 v19, v181 offset:1408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v181 offset:320
	ds_load_u8 v2, v181 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v181 offset:1088
	ds_load_u8 v18, v181 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v181 offset:448
	ds_load_u8 v3, v181 offset:384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:1216
	ds_load_u8 v19, v181 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v181 offset:64
	ds_load_u8 v2, v181
	ds_load_u8 v42, v181 offset:16
	ds_load_u8 v41, v181 offset:32
	ds_load_u8 v57, v181 offset:48
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v181 offset:2880
	ds_load_u8 v18, v181 offset:2816
	ds_load_u8 v2, v181 offset:192
	ds_load_u8 v3, v181 offset:128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:3008
	ds_load_u8 v19, v181 offset:2944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[141:144], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[137:140], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v181 offset:2624
	ds_load_u8 v18, v181 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:2752
	ds_load_u8 v19, v181 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v181 offset:2368
	ds_load_u8 v18, v181 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:2496
	ds_load_u8 v19, v181 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v181 offset:2112
	ds_load_u8 v18, v181 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:2240
	ds_load_u8 v19, v181 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v181 offset:3904
	ds_load_u8 v18, v181 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[133:136], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:4032
	ds_load_u8 v19, v181 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v181 offset:3648
	ds_load_u8 v18, v181 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:3776
	ds_load_u8 v19, v181 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v181 offset:3392
	ds_load_u8 v18, v181 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:3520
	ds_load_u8 v19, v181 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v181 offset:3136
	ds_load_u8 v18, v181 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v181 offset:3264
	ds_load_u8 v19, v181 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[125:128], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v181 offset:848
	ds_load_u8 v26, v181 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[129:132], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[121:124], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[33:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v181 offset:1872
	ds_load_u8 v34, v181 offset:1808
	v_wmma_i32_16x16x16_iu8 v[17:24], v[113:116], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v181 offset:976
	ds_load_u8 v27, v181 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:2000
	ds_load_u8 v35, v181 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v181 offset:592
	ds_load_u8 v26, v181 offset:528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v181 offset:1616
	ds_load_u8 v34, v181 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v181 offset:720
	ds_load_u8 v27, v181 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:1744
	ds_load_u8 v35, v181 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v181 offset:336
	ds_load_u8 v26, v181 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v181 offset:1360
	ds_load_u8 v34, v181 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v181 offset:464
	ds_load_u8 v27, v181 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:1488
	ds_load_u8 v35, v181 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v181 offset:80
	ds_load_u8 v26, v181 offset:208
	ds_load_u8 v27, v181 offset:144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v181 offset:1104
	ds_load_u8 v34, v181 offset:1040
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:1232
	ds_load_u8 v35, v181 offset:1168
	v_wmma_i32_16x16x16_iu8 v[25:32], v[141:144], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v181 offset:2896
	ds_load_u8 v34, v181 offset:2832
	v_wmma_i32_16x16x16_iu8 v[25:32], v[137:140], v[46:49], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:3024
	ds_load_u8 v35, v181 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v181 offset:2640
	ds_load_u8 v34, v181 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:2768
	ds_load_u8 v35, v181 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v181 offset:2384
	ds_load_u8 v34, v181 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:2512
	ds_load_u8 v35, v181 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v181 offset:2128
	ds_load_u8 v34, v181 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:2256
	ds_load_u8 v35, v181 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v181 offset:3920
	ds_load_u8 v34, v181 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[133:136], v[50:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:4048
	ds_load_u8 v35, v181 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v181 offset:3664
	ds_load_u8 v34, v181 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:3792
	ds_load_u8 v35, v181 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v181 offset:3408
	ds_load_u8 v34, v181 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:3536
	ds_load_u8 v35, v181 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v181 offset:3152
	ds_load_u8 v34, v181 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181 offset:3280
	ds_load_u8 v35, v181 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[125:128], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v181 offset:864
	ds_load_u8 v43, v181 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[121:124], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v31, v31
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[50:53], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v181 offset:1888
	ds_load_u8 v50, v181 offset:1824
	v_cvt_f32_i32_e32 v32, v32
	v_wmma_i32_16x16x16_iu8 v[33:40], v[113:116], v[59:62], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v36, v36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v181 offset:992
	ds_load_u8 v44, v181 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:2016
	ds_load_u8 v51, v181 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v181 offset:608
	ds_load_u8 v43, v181 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v148, v50, 16, v49
	ds_load_u8 v49, v181 offset:1632
	ds_load_u8 v50, v181 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v181 offset:736
	ds_load_u8 v44, v181 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:1760
	ds_load_u8 v51, v181 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v181 offset:352
	ds_load_u8 v43, v181 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v147, v50, 16, v49
	ds_load_u8 v49, v181 offset:1376
	ds_load_u8 v50, v181 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v181 offset:480
	ds_load_u8 v44, v181 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:1504
	ds_load_u8 v51, v181 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v181 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v146, v50, 16, v49
	ds_load_u8 v49, v181 offset:1120
	ds_load_u8 v50, v181 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v181 offset:224
	ds_load_u8 v43, v181 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:1248
	ds_load_u8 v51, v181 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v59, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[141:144], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v145, v50, 16, v49
	ds_load_u8 v49, v181 offset:2912
	ds_load_u8 v50, v181 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[137:140], v[145:148], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:3040
	ds_load_u8 v51, v181 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v50, 16, v49
	ds_load_u8 v49, v181 offset:2656
	ds_load_u8 v50, v181 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:2784
	ds_load_u8 v51, v181 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v50, 16, v49
	ds_load_u8 v49, v181 offset:2400
	ds_load_u8 v50, v181 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:2528
	ds_load_u8 v51, v181 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v50, 16, v49
	ds_load_u8 v49, v181 offset:2144
	ds_load_u8 v50, v181 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:2272
	ds_load_u8 v51, v181 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v50, 16, v49
	ds_load_u8 v49, v181 offset:3936
	ds_load_u8 v50, v181 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[133:136], v[182:185], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:4064
	ds_load_u8 v51, v181 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v50, 16, v49
	ds_load_u8 v49, v181 offset:3680
	ds_load_u8 v50, v181 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:3808
	ds_load_u8 v51, v181 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v50, 16, v49
	ds_load_u8 v49, v181 offset:3424
	ds_load_u8 v50, v181 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:3552
	ds_load_u8 v51, v181 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v50, 16, v49
	ds_load_u8 v49, v181 offset:3168
	ds_load_u8 v50, v181 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v181 offset:3296
	ds_load_u8 v51, v181 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[125:128], v[59:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v59, v181 offset:880
	ds_load_u8 v60, v181 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[129:132], v[186:189], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[121:124], v[145:148], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[182:185], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[113:116], v[186:189], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v58, v58
	ds_load_u8 v60, v181 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v58, 16, v59
	ds_load_u8 v58, v181 offset:624
	ds_load_u8 v59, v181 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v181 offset:752
	ds_load_u8 v60, v181 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v59, 16, v58
	ds_load_u8 v58, v181 offset:368
	ds_load_u8 v59, v181 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v181 offset:496
	ds_load_u8 v60, v181 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v59, 16, v58
	ds_load_u8 v58, v181 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v181 offset:240
	ds_load_u8 v59, v181 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[141:144], v[145:148], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v141, v181 offset:1904
	ds_load_u8 v142, v181 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[125:128], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v126, v12
	v_cvt_f32_i32_e32 v128, v20
	v_cvt_f32_i32_e32 v12, v24
	v_cvt_f32_i32_e32 v127, v25
	v_cvt_f32_i32_e32 v25, v46
	v_cvt_f32_i32_e32 v46, v53
	v_cvt_f32_i32_e32 v20, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v178
	ds_load_u8 v143, v181 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v142, 16, v141
	ds_load_u8 v141, v181 offset:1648
	ds_load_u8 v142, v181 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v181 offset:1776
	ds_load_u8 v143, v181 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v142, 16, v141
	ds_load_u8 v141, v181 offset:1392
	ds_load_u8 v142, v181 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v181 offset:1520
	ds_load_u8 v177, v181 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v177, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v142, 16, v141
	ds_load_u8 v141, v181 offset:1136
	ds_load_u8 v177, v181 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v177, v141, 0xc0c0004
	ds_load_u8 v177, v181 offset:1264
	ds_load_u8 v178, v181 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v177, 16, v141
	v_wmma_i32_16x16x16_iu8 v[57:64], v[137:140], v[141:144], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v137, v181 offset:2928
	ds_load_u8 v138, v181 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[121:124], v[141:144], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v124, v19
	v_cvt_f32_i32_e32 v19, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v179
	ds_load_u8 v139, v181 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v138, 16, v137
	ds_load_u8 v137, v181 offset:2672
	ds_load_u8 v138, v181 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v181 offset:2800
	ds_load_u8 v139, v181 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v138, 16, v137
	ds_load_u8 v137, v181 offset:2416
	ds_load_u8 v138, v181 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v181 offset:2544
	ds_load_u8 v177, v181 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v177, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v137, v181 offset:2160
	ds_load_u8 v177, v181 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v177, v137, 0xc0c0004
	ds_load_u8 v177, v181 offset:2288
	ds_load_u8 v178, v181 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v177, 16, v137
	v_wmma_i32_16x16x16_iu8 v[57:64], v[133:136], v[137:140], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v133, v181 offset:3952
	ds_load_u8 v134, v181 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v117, v10
	v_cvt_f32_i32_e32 v120, v11
	v_cvt_f32_i32_e32 v119, v16
	v_cvt_f32_i32_e32 v118, v18
	v_cvt_f32_i32_e32 v10, v22
	v_cvt_f32_i32_e32 v11, v23
	v_cvt_f32_i32_e32 v16, v40
	v_cvt_f32_i32_e32 v23, v45
	v_cvt_f32_i32_e32 v40, v51
	v_cvt_f32_i32_e32 v18, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v180
	ds_load_u8 v135, v181 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v134, 16, v133
	ds_load_u8 v133, v181 offset:3696
	ds_load_u8 v134, v181 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v181 offset:3824
	ds_load_u8 v135, v181 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v134, 16, v133
	ds_load_u8 v133, v181 offset:3440
	ds_load_u8 v134, v181 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v181 offset:3568
	ds_load_u8 v177, v181 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v177, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v134, 16, v133
	ds_load_u8 v133, v181 offset:3184
	ds_load_u8 v177, v181 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v177, v133, 0xc0c0004
	ds_load_u8 v177, v181 offset:3312
	ds_load_u8 v178, v181 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v177, 16, v133
	v_wmma_i32_16x16x16_iu8 v[57:64], v[129:132], v[133:136], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[113:116], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v115, v9
	v_cvt_f32_i32_e32 v113, v13
	v_cvt_f32_i32_e32 v114, v14
	v_cvt_f32_i32_e32 v116, v15
	v_cvt_f32_i32_e32 v9, v17
	v_cvt_f32_i32_e32 v130, v21
	v_cvt_f32_i32_e32 v129, v26
	v_cvt_f32_i32_e32 v131, v27
	v_cvt_f32_i32_e32 v132, v28
	v_cvt_f32_i32_e32 v26, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v13, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v133, v37
	v_cvt_f32_i32_e32 v14, v38
	v_cvt_f32_i32_e32 v15, v39
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v37, v42
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v41, v44
	v_cvt_f32_i32_e32 v28, v47
	v_cvt_f32_i32_e32 v30, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v38, v50
	v_cvt_f32_i32_e32 v43, v52
	v_cvt_f32_i32_e32 v42, v57
	v_cvt_f32_i32_e32 v44, v58
	v_cvt_f32_i32_e32 v47, v59
	v_cvt_f32_i32_e32 v49, v60
	v_cvt_f32_i32_e32 v21, v61
	v_cvt_f32_i32_e32 v22, v62
	v_cvt_f32_i32_e32 v24, v63
	v_cvt_f32_i32_e32 v27, v64
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v45, v2
	v_cvt_f32_i32_e32 v48, v3
	v_cvt_f32_i32_e32 v50, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v6, s31, v150
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s8
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v7, s3, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v55, v110, v117 :: v_dual_add_f32 v56, v109, v115
	v_dual_add_f32 v32, v76, v32 :: v_dual_add_f32 v31, v75, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v8, 32, v6
	v_or_b32_e32 v51, 64, v6
	v_or_b32_e32 v52, 0x60, v6
	s_clause 0x3
	buffer_load_u16 v53, v6, s[16:19], 0 offen
	buffer_load_u16 v54, v8, s[16:19], 0 offen
	buffer_load_u16 v51, v51, s[16:19], 0 offen
	buffer_load_u16 v52, v52, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v112, v126 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v29, v74, v29 :: v_dual_add_f32 v26, v73, v26
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v6, v7, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v117, v96, v133 :: v_dual_add_f32 v34, v94, v34
	v_dual_add_f32 v35, v97, v35 :: v_dual_add_f32 v40, v90, v40
	v_dual_add_f32 v25, v70, v25 :: v_dual_add_f32 v38, v89, v38
	v_dual_add_f32 v47, v87, v47 :: v_dual_add_f32 v22, v66, v22
	v_dual_add_f32 v49, v88, v49 :: v_dual_add_f32 v24, v67, v24
	v_add_f32_e32 v7, v111, v120
	v_dual_add_f32 v9, v156, v9 :: v_dual_add_f32 v62, v103, v128
	v_dual_add_f32 v45, v77, v45 :: v_dual_lshlrev_b32 v120, 2, v151
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v74, v29, s2
	v_cndmask_b32_e64 v74, v75, v31, s2
	v_cndmask_b32_e64 v34, v94, v34, s2
	v_cndmask_b32_e64 v75, v96, v117, s2
	v_cndmask_b32_e64 v35, v97, v35, s2
	v_cndmask_b32_e64 v94, v70, v25, s2
	v_cndmask_b32_e64 v96, v66, v22, s2
	v_cndmask_b32_e64 v97, v67, v24, s2
	v_cndmask_b32_e64 v126, v156, v9, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v84, v119 :: v_dual_add_f32 v58, v83, v116
	v_dual_add_f32 v61, v104, v130 :: v_dual_add_f32 v12, v169, v12
	v_dual_add_f32 v10, v171, v10 :: v_dual_add_f32 v11, v170, v11
	v_dual_add_f32 v13, v168, v13 :: v_dual_add_f32 v36, v95, v36
	v_add_f32_e32 v119, v157, v4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v122, v151, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v110, v55, s2
	v_cndmask_b32_e64 v110, v111, v7, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v115, v106, v129 :: v_dual_add_f32 v116, v105, v127
	v_dual_add_f32 v33, v93, v33 :: v_dual_add_f32 v14, v167, v14
	v_dual_add_f32 v15, v166, v15 :: v_dual_add_f32 v16, v165, v16
	v_dual_add_f32 v23, v69, v23 :: v_dual_add_f32 v18, v163, v18
	v_dual_add_f32 v17, v164, v17 :: v_dual_add_f32 v20, v161, v20
	v_dual_add_f32 v19, v162, v19 :: v_dual_add_f32 v42, v85, v42
	v_dual_add_f32 v21, v65, v21 :: v_dual_add_f32 v48, v78, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v127, v171, v10, s2
	v_cndmask_b32_e64 v128, v170, v11, s2
	v_cndmask_b32_e64 v129, v169, v12, s2
	v_cndmask_b32_e64 v130, v168, v13, s2
	v_cndmask_b32_e64 v56, v109, v56, s2
	v_cndmask_b32_e64 v109, v112, v8, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v82, v114 :: v_dual_add_f32 v60, v81, v113
	v_dual_add_f32 v113, v107, v131 :: v_dual_add_f32 v114, v108, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v167, v14, s2
	v_cndmask_b32_e64 v132, v166, v15, s2
	v_cndmask_b32_e64 v133, v165, v16, s2
	v_cndmask_b32_e64 v134, v164, v17, s2
	v_cndmask_b32_e64 v135, v163, v18, s2
	v_cndmask_b32_e64 v136, v162, v19, s2
	v_cndmask_b32_e64 v137, v161, v20, s2
	v_cndmask_b32_e64 v36, v95, v36, s2
	v_cndmask_b32_e64 v95, v65, v21, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v41, v100, v41 :: v_dual_add_f32 v28, v71, v28
	v_dual_add_f32 v63, v102, v124 :: v_dual_add_f32 v64, v101, v118
	v_dual_add_f32 v39, v99, v39 :: v_dual_add_f32 v30, v72, v30
	v_dual_add_f32 v37, v98, v37 :: v_dual_add_f32 v46, v92, v46
	v_dual_add_f32 v43, v91, v43 :: v_dual_add_f32 v44, v86, v44
	v_dual_add_f32 v27, v68, v27 :: v_dual_add_f32 v50, v79, v50
	v_dual_add_f32 v1, v160, v1 :: v_dual_add_f32 v2, v159, v2
	v_dual_add_f32 v5, v80, v5 :: v_dual_add_f32 v118, v158, v3
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v125, v153, 9, 0
.Ltmp17:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v26, s2
	v_cndmask_b32_e64 v32, v76, v32, s2
	v_cndmask_b32_e64 v76, v100, v41, s2
	v_cndmask_b32_e64 v85, v85, v42, s2
	v_cndmask_b32_e64 v77, v77, v45, s2
	v_cndmask_b32_e64 v2, v159, v2, s2
	v_cndmask_b32_e64 v118, v158, v118, s2
	v_cndmask_b32_e64 v60, v81, v60, s2
	v_cndmask_b32_e64 v81, v82, v59, s2
	v_cndmask_b32_e64 v58, v83, v58, s2
	v_cndmask_b32_e64 v82, v84, v57, s2
	v_cndmask_b32_e64 v64, v101, v64, s2
	v_cndmask_b32_e64 v63, v102, v63, s2
	v_cndmask_b32_e64 v83, v103, v62, s2
	v_cndmask_b32_e64 v84, v104, v61, s2
	v_cndmask_b32_e64 v101, v105, v116, s2
	v_cndmask_b32_e64 v102, v106, v115, s2
	v_cndmask_b32_e64 v103, v108, v114, s2
	v_cndmask_b32_e64 v104, v107, v113, s2
	v_cndmask_b32_e64 v33, v93, v33, s2
	v_cndmask_b32_e64 v37, v98, v37, s2
	v_cndmask_b32_e64 v93, v99, v39, s2
	v_cndmask_b32_e64 v23, v69, v23, s2
	v_cndmask_b32_e64 v28, v71, v28, s2
	v_cndmask_b32_e64 v30, v72, v30, s2
	v_cndmask_b32_e64 v89, v89, v38, s2
	v_cndmask_b32_e64 v90, v90, v40, s2
	v_cndmask_b32_e64 v91, v91, v43, s2
	v_cndmask_b32_e64 v92, v92, v46, s2
	v_cndmask_b32_e64 v86, v86, v44, s2
	v_cndmask_b32_e64 v88, v88, v49, s2
	v_cndmask_b32_e64 v87, v87, v47, s2
	v_cndmask_b32_e64 v98, v68, v27, s2
	v_cndmask_b32_e64 v78, v78, v48, s2
	v_cndmask_b32_e64 v79, v79, v50, s2
	v_cndmask_b32_e64 v80, v80, v5, s2
	v_cndmask_b32_e64 v1, v160, v1, s2
	s_mov_b32 s0, 0x76543210
.Ltmp18:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
.Ltmp19:
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v51
	v_lshlrev_b32_e32 v24, 16, v54
	v_lshlrev_b32_e32 v22, 16, v53
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v121, 5, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v9, 0, v120, v121
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v119, v157, v119, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v7, v155, 1, v9
	ds_store_b32 v7, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v122 offset:512
	ds_load_b128 v[10:13], v122 offset:528
	ds_load_b128 v[14:17], v122
	ds_load_b128 v[18:21], v122 offset:16
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp21:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v45, v11, v25
	v_dual_mul_f32 v40, v6, v24 :: v_dual_lshlrev_b32 v3, 5, v153
	v_mul_f32_e32 v41, v11, v24
	v_dual_mul_f32 v31, v11, v22 :: v_dual_and_b32 v124, 0x80, v0
	v_dual_mul_f32 v39, v13, v22 :: v_dual_lshlrev_b32 v26, 16, v52
	v_mul_f32_e32 v42, v12, v24
	v_dual_mul_f32 v44, v6, v25 :: v_dual_and_b32 v123, 4, v0
	v_dual_mul_f32 v27, v6, v22 :: v_dual_and_b32 v4, 0x60, v0
	v_dual_mul_f32 v46, v12, v25 :: v_dual_lshlrev_b32 v5, 1, v124
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v100, v123, 2, v125
	v_and_or_b32 v106, 0x680, v154, v3
.Ltmp23:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v38, v12, v22 :: v_dual_mul_f32 v43, v13, v24
	v_dual_mul_f32 v6, v6, v26 :: v_dual_mul_f32 v47, v13, v25
	v_mul_f32_e32 v12, v12, v26
	v_dual_mul_f32 v11, v11, v26 :: v_dual_mul_f32 v112, v16, v24
	v_dual_mul_f32 v13, v13, v26 :: v_dual_mul_f32 v108, v15, v24
	v_dual_mul_f32 v49, v14, v22 :: v_dual_mul_f32 v114, v19, v24
	v_dual_mul_f32 v50, v15, v22 :: v_dual_mul_f32 v107, v14, v24
	v_dual_mul_f32 v51, v17, v22 :: v_dual_mul_f32 v120, v8, v24
	v_dual_mul_f32 v52, v16, v22 :: v_dual_mul_f32 v111, v17, v24
	v_dual_mul_f32 v66, v18, v22 :: v_dual_mul_f32 v115, v20, v24
	v_dual_mul_f32 v67, v19, v22 :: v_dual_mul_f32 v116, v21, v24
	v_dual_mul_f32 v68, v20, v22 :: v_dual_mul_f32 v113, v18, v24
	v_mul_f32_e32 v69, v21, v22
	v_dual_mul_f32 v70, v7, v22 :: v_dual_mul_f32 v121, v9, v24
	v_dual_mul_f32 v71, v8, v22 :: v_dual_mul_f32 v122, v14, v25
	v_dual_mul_f32 v72, v9, v22 :: v_dual_mul_f32 v117, v7, v24
	v_dual_mul_f32 v22, v10, v22 :: v_dual_mul_f32 v125, v15, v25
	v_mul_f32_e32 v24, v10, v24
	v_dual_mul_f32 v138, v17, v25 :: v_dual_mul_f32 v15, v15, v26
	v_dual_mul_f32 v139, v16, v25 :: v_dual_mul_f32 v148, v14, v26
	v_dual_mul_f32 v140, v18, v25 :: v_dual_mul_f32 v17, v17, v26
	v_dual_mul_f32 v141, v19, v25 :: v_dual_mul_f32 v16, v16, v26
	v_dual_mul_f32 v142, v20, v25 :: v_dual_mul_f32 v19, v19, v26
	v_dual_mul_f32 v143, v21, v25 :: v_dual_mul_f32 v18, v18, v26
	v_dual_mul_f32 v144, v7, v25 :: v_dual_mul_f32 v153, v21, v26
	v_dual_mul_f32 v145, v8, v25 :: v_dual_mul_f32 v154, v9, v26
	v_dual_mul_f32 v146, v9, v25 :: v_dual_mul_f32 v7, v7, v26
	v_dual_mul_f32 v147, v10, v25 :: v_dual_mul_f32 v20, v20, v26
	v_dual_mul_f32 v8, v8, v26 :: v_dual_mul_f32 v59, v127, v31
	v_dual_mul_f32 v155, v10, v26 :: v_dual_mul_f32 v62, v129, v39
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v48, v126, v27 :: v_dual_mul_f32 v61, v128, v38
	v_dual_mul_f32 v65, v130, v40 :: v_dual_mul_f32 v54, v132, v42
	v_dual_mul_f32 v57, v131, v41 :: v_dual_mul_f32 v26, v137, v47
	v_dual_mul_f32 v53, v133, v43 :: v_dual_mul_f32 v10, v118, v12
	v_dual_mul_f32 v31, v134, v44 :: v_dual_mul_f32 v14, v1, v6
	v_dual_mul_f32 v27, v135, v45 :: v_dual_mul_f32 v40, v110, v52
	v_dual_mul_f32 v25, v136, v46 :: v_dual_mul_f32 v44, v58, v68
	v_dual_mul_f32 v9, v2, v11 :: v_dual_mul_f32 v38, v56, v49
	v_dual_mul_f32 v11, v119, v13 :: v_dual_mul_f32 v42, v60, v66
	v_dual_mul_f32 v41, v109, v51 :: v_dual_mul_f32 v58, v84, v22
	v_dual_mul_f32 v39, v55, v50 :: v_dual_mul_f32 v66, v101, v107
	v_dual_mul_f32 v45, v82, v69 :: v_dual_mul_f32 v56, v83, v72
	v_dual_mul_f32 v43, v81, v67 :: v_dual_mul_f32 v60, v75, v24
	v_mul_f32_e32 v55, v63, v71
	v_dual_mul_f32 v49, v64, v70 :: v_dual_mul_f32 v70, v103, v111
	v_dual_mul_f32 v69, v104, v112 :: v_dual_mul_f32 v72, v74, v115
	v_dual_mul_f32 v67, v102, v108 :: v_dual_mul_f32 v68, v33, v117
	v_dual_mul_f32 v71, v32, v116 :: v_dual_mul_f32 v46, v93, v139
	v_mul_f32_e32 v74, v29, v114
	v_dual_mul_f32 v73, v73, v113 :: v_dual_mul_f32 v64, v34, v120
	v_dual_mul_f32 v63, v36, v121 :: v_dual_mul_f32 v34, v30, v143
	v_dual_mul_f32 v47, v76, v138 :: v_dual_mul_f32 v50, v37, v125
	v_dual_mul_f32 v51, v35, v122 :: v_dual_mul_f32 v36, v94, v141
	v_dual_mul_f32 v35, v28, v142 :: v_dual_mul_f32 v30, v90, v145
	v_dual_mul_f32 v37, v23, v140 :: v_dual_mul_f32 v28, v92, v147
	v_dual_mul_f32 v29, v91, v146 :: v_dual_mul_f32 v32, v89, v144
	v_dual_mul_f32 v22, v87, v16 :: v_dual_mul_f32 v21, v88, v17
	v_dual_mul_f32 v23, v86, v15 :: v_dual_mul_f32 v24, v85, v148
	v_dual_mul_f32 v16, v98, v153 :: v_dual_mul_f32 v17, v97, v20
	v_dual_mul_f32 v19, v96, v19 :: v_dual_mul_f32 v20, v95, v18
	v_dual_mul_f32 v12, v80, v155 :: v_dual_mul_f32 v13, v79, v154
	v_dual_mul_f32 v15, v78, v8 :: v_dual_mul_f32 v18, v77, v7
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v38|, |v39|
	v_max3_f32 v2, |v41|, |v42|, |v43|
	v_max3_f32 v7, |v49|, |v55|, |v56|
	v_max3_f32 v8, |v58|, |v59|, |v61|
	v_max_f32_e64 v33, |v66|, |v67|
	v_max3_f32 v52, |v70|, |v73|, |v74|
	v_max3_f32 v76, |v68|, |v64|, |v63|
	v_max3_f32 v77, |v60|, |v57|, |v54|
	v_max_f32_e64 v78, |v51|, |v50|
	v_max3_f32 v79, |v47|, |v37|, |v36|
	v_max3_f32 v81, |v32|, |v30|, |v29|
	v_max3_f32 v82, |v28|, |v27|, |v25|
	v_max_f32_e64 v83, |v24|, |v23|
	v_max3_f32 v84, |v21|, |v20|, |v19|
	v_max3_f32 v86, |v18|, |v15|, |v13|
	v_max3_f32 v87, |v12|, |v9|, |v10|
	v_max3_f32 v6, |v44|, |v45|, |v48|
	v_max3_f32 v75, |v72|, |v71|, |v65|
	v_max3_f32 v80, |v35|, |v34|, |v31|
	v_max3_f32 v85, |v17|, |v16|, |v14|
	v_max3_f32 v1, v1, |v40|, v2
	v_max3_f32 v2, v7, v8, |v62|
	v_max3_f32 v7, v33, |v69|, v52
	v_max3_f32 v8, v76, v77, |v53|
	v_max3_f32 v33, v78, |v46|, v79
	v_max3_f32 v52, v81, v82, |v26|
	v_max3_f32 v76, v83, |v22|, v84
	v_max3_f32 v77, v86, v87, |v11|
	v_max3_f32 v1, v1, v6, v2
	v_max3_f32 v2, v7, v75, v8
	v_max3_f32 v6, v33, v80, v52
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v99, v3, v4
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v76, v85, v77
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v33, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v75, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v105, 3, v124
	v_permlanex16_b32 v76, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v79, v123, 6, 0
	v_lshl_add_u32 v8, v175, 4, v100
	v_xor_b32_e32 v80, v106, v4
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v52, v52, v52
	v_dual_max_f32 v77, v75, v75 :: v_dual_max_f32 v78, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v8, v8, v5, v99
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v75, v1, v33 :: v_dual_max_f32 v76, v2, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v77, v6, v77 :: v_dual_max_f32 v78, v7, v78
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v79, v105, v80
	v_lshlrev_b32_e32 v79, 3, v175
.Ltmp32:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, 0x1b00, v173, v3
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v8, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp34:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v3, v3, v151, 0
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v1, v75 :: v_dual_mov_b32 v6, v76
	v_dual_mov_b32 v8, v77 :: v_dual_max_f32 v33, v78, v78
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v75, v75 :: v_dual_max_f32 v7, v76, v76
	v_dual_max_f32 v52, v77, v77 :: v_dual_max_f32 v75, v78, v78
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v8, v8, v8
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v77, 0, v124
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v33, v33, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v2, v1 :: v_dual_max_f32 v2, v7, v6
	v_dual_max_f32 v6, v52, v8 :: v_dual_mov_b32 v7, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v52, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v75, v6
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v75, v75, v75
	v_dual_max_f32 v7, v33, v7 :: v_dual_add_nc_u32 v80, 0, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, v1, v8
	v_max_f32_e32 v2, v2, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, v6, v75
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v8, 1, v4
	v_dual_mov_b32 v33, v7 :: v_dual_mov_b32 v52, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v75, v2
	v_mov_b32_e32 v76, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v8, v77, v8, v79
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v81, 5, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v52, v52, v52
	v_dual_max_f32 v82, v75, v75 :: v_dual_max_f32 v83, v76, v76
.Ltmp43:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v4, v149, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v78, v7, v33 :: v_dual_max_f32 v75, v1, v52
	v_max_f32_e32 v76, v2, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v77, v6, v83
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v80, v81, v79
	ds_store_b128 v8, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v1
.Ltmp46:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v75, v75 :: v_dual_max_f32 v6, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v76, v76 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v52, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v80, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v8
	v_div_scale_f32 v82, s1, v2, 0x40e00000, v2
	v_fma_f32 v83, -v8, v76, 1.0
	v_max_f32_e32 v7, v78, v78
	v_rcp_f32_e32 v78, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v83, v76
	v_dual_max_f32 v6, 0x2b8cbccc, v6 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v33, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v75, null, 0x40e00000, 0x40e00000, v7
	v_div_scale_f32 v81, s0, v6, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v77, v33
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v52, v78, 1.0
	v_div_scale_f32 v87, s2, v7, 0x40e00000, v7
	v_fmac_f32_e32 v78, v85, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v33, v77, 1.0
	v_fma_f32 v86, -v75, v79, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v84, v77
	v_dual_fmac_f32 v79, v86, v79 :: v_dual_mul_f32 v84, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v83, v80, v76 :: v_dual_mul_f32 v86, v87, v79
	v_fma_f32 v89, -v33, v84, v81
	v_mul_f32_e32 v85, v82, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v8, v83, v80
	v_fma_f32 v91, -v75, v86, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v89, v77
	v_fma_f32 v90, -v52, v85, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v83, v88, v76 :: v_dual_fmac_f32 v86, v91, v79
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v88.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v33, -v33, v84, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v90, v78
	v_fma_f32 v8, -v8, v83, v80
	v_fma_f32 v75, -v75, v86, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v52, v85, v82
	v_div_fmas_f32 v8, v8, v76, v83
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v33, v33, v77, v84
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v1, v8, 0x40e00000, v1
	v_div_fmas_f32 v52, v52, v78, v85
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v8, v33, 0x40e00000, v6
	v_div_fmas_f32 v6, v75, v79, v86
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v33.h, v88.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v52, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v33.l, v1.h
	v_mov_b16_e32 v88.l, v8.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v52, v6, 0x40e00000, v7
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v88.h
	v_mov_b16_e32 v6.l, v2.h
	v_and_b32_e32 v7, 1, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v75, 1, v6
	v_add3_u32 v6, v1, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v77, 0xffff0000, v6
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v93, null, v77, v77, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v93
	v_fma_f32 v120, -v93, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v108, v120, v108
	v_div_scale_f32 v81, null, v77, v77, v40
	v_div_scale_f32 v85, null, v77, v77, v42
	v_div_scale_f32 v79, null, v77, v77, v39
	v_rcp_f32_e32 v102, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v104, v85
	v_div_scale_f32 v83, null, v77, v77, v41
	v_div_scale_f32 v97, null, v77, v77, v55
	v_rcp_f32_e32 v101, v79
	v_div_scale_f32 v87, null, v77, v77, v43
	v_rcp_f32_e32 v103, v83
	v_fma_f32 v114, -v81, v102, 1.0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v33, 1, v88
	v_mov_b16_e32 v88.l, v52.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v116, -v85, v104, 1.0
	v_div_scale_f32 v89, null, v77, v77, v44
	v_rcp_f32_e32 v110, v97
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v76, 1, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v104, v116, v104
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v7, v2, v75, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v91, null, v77, v77, v45
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v52, v76, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v76, null, v77, v77, v38
	v_rcp_f32_e32 v105, v87
	v_div_scale_f32 v95, null, v77, v77, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v100, v76
	v_rcp_f32_e32 v106, v89
	v_fma_f32 v113, -v79, v101, 1.0
	v_rcp_f32_e32 v107, v91
	v_div_scale_f32 v78, vcc_lo, v38, v77, v38
	v_fma_f32 v115, -v83, v103, 1.0
	v_fmac_f32_e32 v102, v114, v102
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v8, v33, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v80, s0, v39, v77, v39
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v112, -v76, v100, 1.0
	v_rcp_f32_e32 v109, v95
	v_fma_f32 v122, -v97, v110, 1.0
	v_fmac_f32_e32 v101, v113, v101
	v_div_scale_f32 v82, s1, v40, v77, v40
	v_fmac_f32_e32 v100, v112, v100
	v_fma_f32 v117, -v87, v105, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v33, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_and_b32 v52, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v112, v78, v100
	v_div_scale_f32 v84, s2, v41, v77, v41
	v_div_scale_f32 v94, s7, v48, v77, v48
	v_fma_f32 v118, -v89, v106, 1.0
	v_dual_fmac_f32 v110, v122, v110 :: v_dual_mul_f32 v113, v80, v101
	v_mul_f32_e32 v120, v94, v108
	v_div_scale_f32 v86, s3, v42, v77, v42
	v_fma_f32 v119, -v91, v107, 1.0
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v114, v82, v102
	v_div_scale_f32 v88, s4, v43, v77, v43
	v_fma_f32 v124, -v76, v112, v78
	v_div_scale_f32 v98, s9, v55, v77, v55
	v_mul_f32_e32 v115, v84, v103
	v_dual_fmac_f32 v106, v118, v106 :: v_dual_and_b32 v75, 0xffff0000, v7
	v_div_scale_f32 v90, s5, v44, v77, v44
	v_fma_f32 v121, -v95, v109, 1.0
	v_fma_f32 v125, -v79, v113, v80
	v_dual_fmac_f32 v107, v119, v107 :: v_dual_mul_f32 v116, v86, v104
	v_fma_f32 v126, -v81, v114, v82
	v_mul_f32_e32 v117, v88, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v112, v124, v100 :: v_dual_fmac_f32 v113, v125, v101
	v_mul_f32_e32 v122, v98, v110
	v_fma_f32 v127, -v83, v115, v84
	v_dual_fmac_f32 v109, v121, v109 :: v_dual_mul_f32 v118, v90, v106
	v_fma_f32 v128, -v85, v116, v86
	v_fmac_f32_e32 v114, v126, v102
	v_fma_f32 v129, -v87, v117, v88
	v_fma_f32 v76, -v76, v112, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v115, v127, v103 :: v_dual_fmac_f32 v116, v128, v104
	v_div_scale_f32 v92, s6, v45, v77, v45
	v_fma_f32 v130, -v89, v118, v90
	v_fma_f32 v78, -v79, v113, v80
	v_fma_f32 v79, -v81, v114, v82
	v_fma_f32 v132, -v93, v120, v94
	v_fmac_f32_e32 v117, v129, v105
	v_div_fmas_f32 v76, v76, v100, v112
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v80, -v83, v115, v84
	v_dual_mul_f32 v119, v92, v107 :: v_dual_fmac_f32 v118, v130, v106
	v_div_fmas_f32 v78, v78, v101, v113
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v85, v116, v86
	v_div_fmas_f32 v79, v79, v102, v114
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v120, v132, v108
	v_fma_f32 v82, -v87, v117, v88
	v_div_fixup_f32 v38, v76, v77, v38
	v_div_fmas_f32 v76, v80, v103, v115
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v83, -v89, v118, v90
	v_div_fixup_f32 v39, v78, v77, v39
	v_div_fmas_f32 v78, v81, v104, v116
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v40, v79, v77, v40
	v_div_fmas_f32 v79, v82, v105, v117
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v99, null, v77, v77, v56
	v_div_fmas_f32 v80, v83, v106, v118
	v_fma_f32 v131, -v91, v119, v92
	v_div_scale_f32 v83, null, v77, v77, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v111, v99
	v_div_fixup_f32 v44, v80, v77, v44
	v_fma_f32 v80, -v97, v122, v98
	v_fmac_f32_e32 v119, v131, v107
	v_div_scale_f32 v96, s8, v49, v77, v49
	v_div_scale_f32 v82, s0, v56, v77, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v122, v80, v110
	v_rcp_f32_e32 v80, v83
	v_fma_f32 v123, -v99, v111, 1.0
	v_fma_f32 v84, -v91, v119, v92
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v41, v76, v77, v41
	v_div_scale_f32 v76, null, v77, v77, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v81, v84, v107, v119
	v_fma_f32 v85, -v93, v120, v94
	v_div_fixup_f32 v43, v79, v77, v43
	v_fma_f32 v86, -v83, v80, 1.0
	v_fmac_f32_e32 v111, v123, v111
	v_div_fixup_f32 v45, v81, v77, v45
	v_rcp_f32_e32 v81, v76
	v_div_scale_f32 v87, null, v77, v77, v61
	v_dual_fmac_f32 v80, v86, v80 :: v_dual_mul_f32 v121, v96, v109
	v_mul_f32_e32 v84, v82, v111
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v42, v78, v77, v42
	v_div_fmas_f32 v78, v85, v108, v120
	v_fma_f32 v133, -v95, v121, v96
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v76, v81, 1.0
	v_rcp_f32_e32 v86, v87
	v_div_fixup_f32 v48, v78, v77, v48
	v_fmac_f32_e32 v121, v133, v109
	v_fma_f32 v78, -v97, v122, v98
	v_div_scale_f32 v88, s2, v59, v77, v59
	v_fmac_f32_e32 v81, v85, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v95, v121, v96
	v_div_scale_f32 v85, s1, v58, v77, v58
	v_div_scale_f32 v89, null, v77, v77, v62
	v_div_fmas_f32 v79, v79, v109, v121
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v90, v88, v80
	v_div_fmas_f32 v78, v78, v110, v122
	v_fma_f32 v92, -v87, v86, 1.0
	v_div_fixup_f32 v49, v79, v77, v49
	v_fma_f32 v79, -v99, v84, v82
	v_rcp_f32_e32 v91, v89
	v_div_fixup_f32 v55, v78, v77, v55
	v_fmac_f32_e32 v86, v92, v86
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v84, v79, v111 :: v_dual_mul_f32 v79, v85, v81
.Ltmp47:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v99, v84, v82
	v_fma_f32 v82, -v76, v79, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v89, v91, 1.0
	v_div_fmas_f32 v78, v78, v111, v84
	v_div_scale_f32 v84, s0, v61, v77, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v82, v81
	v_fma_f32 v82, -v83, v90, v88
	v_div_fixup_f32 v56, v78, v77, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v78, v84, v86
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v76, -v76, v79, v85
	v_dual_fmac_f32 v90, v82, v80 :: v_dual_fmac_f32 v91, v92, v91
	v_div_scale_f32 v85, null, v75, v75, v66
	v_div_fmas_f32 v76, v76, v81, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v83, v90, v88
	v_div_scale_f32 v82, s3, v62, v77, v62
	v_rcp_f32_e32 v83, v85
	v_fma_f32 v81, -v87, v78, v84
	v_div_scale_f32 v92, null, v75, v75, v67
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v88, v82, v91
	v_div_fmas_f32 v79, v79, v80, v90
	v_rcp_f32_e32 v80, v92
	v_div_fixup_f32 v58, v76, v77, v58
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v83, 1.0
	v_fmac_f32_e32 v78, v81, v86
	v_fma_f32 v81, -v89, v88, v82
	v_div_fixup_f32 v59, v79, v77, v59
	v_div_scale_f32 v79, s1, v66, v75, v66
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v76, -v87, v78, v84
	v_div_scale_f32 v84, null, v75, v75, v69
	v_div_scale_f32 v87, null, v75, v75, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v86, v78
	v_div_scale_f32 v86, s0, v67, v75, v67
	v_fmac_f32_e32 v88, v81, v91
	v_fma_f32 v81, -v92, v80, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v61, v76, v77, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v89, v88, v82
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v89, v86, v80
	v_div_fmas_f32 v78, v78, v91, v88
	v_rcp_f32_e32 v91, v87
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v76, -v92, v89, v86
	v_fma_f32 v90, -v84, v81, 1.0
	v_mul_f32_e32 v82, v79, v83
	v_div_fixup_f32 v62, v78, v77, v62
	v_div_scale_f32 v78, null, v75, v75, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v90, v81
	v_fma_f32 v88, -v85, v82, v79
	v_div_scale_f32 v77, s2, v69, v75, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v88, v83
	v_fma_f32 v88, -v87, v91, 1.0
	v_fma_f32 v79, -v85, v82, v79
	v_rcp_f32_e32 v85, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v91, v88, v91
	v_dual_fmac_f32 v89, v76, v80 :: v_dual_mul_f32 v76, v77, v81
	v_div_scale_f32 v88, s3, v70, v75, v70
	v_fma_f32 v90, -v78, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v85, v90, v85
	v_div_fmas_f32 v79, v79, v83, v82
	v_fma_f32 v82, -v92, v89, v86
	v_fma_f32 v83, -v84, v76, v77
	v_div_scale_f32 v92, null, v75, v75, v74
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v66, v79, v75, v66
	v_div_fmas_f32 v80, v82, v80, v89
	v_fmac_f32_e32 v76, v83, v81
	v_rcp_f32_e32 v82, v92
	v_div_scale_f32 v89, s0, v73, v75, v73
	v_mul_f32_e32 v86, v88, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v84, v76, v77
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v79, v89, v85
	v_div_fixup_f32 v67, v80, v75, v67
	v_fma_f32 v83, -v87, v86, v88
	v_div_fmas_f32 v76, v77, v81, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v92, v82, 1.0
	v_fma_f32 v81, -v78, v79, v89
	v_div_scale_f32 v84, s1, v74, v75, v74
	v_fmac_f32_e32 v86, v83, v91
	v_div_scale_f32 v83, null, v75, v75, v72
	v_dual_fmac_f32 v82, v80, v82 :: v_dual_fmac_f32 v79, v81, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v87, v86, v88
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v87, null, v75, v75, v71
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v69, v76, v75, v69
	v_div_fmas_f32 v77, v77, v91, v86
	v_rcp_f32_e32 v81, v87
	v_mul_f32_e32 v86, v84, v82
	v_fma_f32 v76, -v78, v79, v89
	v_div_scale_f32 v89, null, v75, v75, v65
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v70, v77, v75, v70
	v_fma_f32 v77, -v92, v86, v84
	v_div_scale_f32 v78, s2, v72, v75, v72
	v_fmac_f32_e32 v80, v88, v80
	v_fma_f32 v88, -v87, v81, 1.0
	v_div_fmas_f32 v76, v76, v85, v79
	v_rcp_f32_e32 v79, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v77, v82 :: v_dual_mul_f32 v77, v78, v80
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v85, s0, v71, v75, v71
	v_div_fixup_f32 v73, v76, v75, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v92, v86, v84
	v_fma_f32 v84, -v83, v77, v78
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v92, -v89, v79, 1.0
	v_mul_f32_e32 v90, v85, v81
	v_div_scale_f32 v88, null, v75, v75, v68
	v_div_fmas_f32 v76, v76, v82, v86
	v_fmac_f32_e32 v77, v84, v80
	v_fmac_f32_e32 v79, v92, v79
	v_fma_f32 v82, -v87, v90, v85
	v_rcp_f32_e32 v91, v88
	v_div_fixup_f32 v74, v76, v75, v74
	v_fma_f32 v76, -v83, v77, v78
	v_div_scale_f32 v83, null, v75, v75, v64
	v_fmac_f32_e32 v90, v82, v81
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v65, v75, v65
	v_div_fmas_f32 v76, v76, v80, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v77, -v87, v90, v85
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v86, -v88, v91, 1.0
	v_mul_f32_e32 v78, v84, v79
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v82, s3, v68, v75, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v86, v91
	v_fma_f32 v80, -v89, v78, v84
	v_div_scale_f32 v87, null, v75, v75, v63
	v_div_fmas_f32 v77, v77, v81, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v83, v85, 1.0
	v_mul_f32_e32 v86, v82, v91
	v_div_fixup_f32 v72, v76, v75, v72
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v71, v77, v75, v71
	v_dual_fmac_f32 v85, v90, v85 :: v_dual_fmac_f32 v78, v80, v79
	v_rcp_f32_e32 v80, v87
	v_fma_f32 v81, -v88, v86, v82
	v_div_scale_f32 v77, s0, v64, v75, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v89, v78, v84
	v_div_scale_f32 v84, null, v75, v75, v60
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v92, null, v75, v75, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v87, v80, 1.0
	v_div_fmas_f32 v76, v76, v79, v78
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v79, v77, v85
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v72, v72
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v84
	v_div_fixup_f32 v65, v76, v75, v65
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v65, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v90, -v84, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v90, v81
	v_fma_f32 v78, -v88, v86, v82
	v_div_scale_f32 v88, null, v75, v75, v57
	v_div_scale_f32 v82, s1, v63, v75, v63
	v_div_fmas_f32 v78, v78, v91, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v86, -v83, v79, v77
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v68, v78, v75, v68
	v_div_scale_f32 v78, s2, v60, v75, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v79, v86, v85
	v_div_scale_f32 v86, null, v75, v75, v54
	v_fma_f32 v90, -v88, v91, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v77, -v83, v79, v77
	v_rcp_f32_e32 v83, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v90, v91
	v_mul_f32_e32 v89, v82, v80
	v_div_fmas_f32 v77, v77, v85, v79
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v90, s3, v57, v75, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v87, v89, v82
	v_div_fixup_f32 v64, v77, v75, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v76, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v87, v89, v82
	v_fma_f32 v87, -v86, v83, 1.0
	v_mul_f32_e32 v76, v78, v81
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v87, v83
	v_fma_f32 v82, -v84, v76, v78
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v63, v79, v75, v63
	v_div_scale_f32 v87, s0, v54, v75, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v82, v81
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v92, v80, 1.0
	v_dual_mul_f32 v85, v90, v91 :: v_dual_fmac_f32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v88, v85, v90
	v_fmac_f32_e32 v85, v82, v91
	v_div_scale_f32 v82, null, v52, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v82
	v_fma_f32 v89, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v77, -v84, v76, v78
	v_div_scale_f32 v84, s1, v53, v75, v53
	v_div_scale_f32 v89, null, v52, v52, v46
	v_div_fmas_f32 v76, v77, v81, v76
	v_fma_f32 v77, -v88, v85, v90
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v88, null, v52, v52, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v60, v76, v75, v60
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v57, v77, v75, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v92, v85, v84
	v_mul_f32_e32 v78, v87, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v85, v77, v80
	v_fma_f32 v81, -v86, v78, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v81, v83
	v_rcp_f32_e32 v81, v88
	v_fma_f32 v76, -v86, v78, v87
	v_div_scale_f32 v86, s2, v51, v52, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v88, v81, 1.0
	v_fmac_f32_e32 v81, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v83, v78
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v52, v52, v47
	v_div_scale_f32 v83, s0, v50, v52, v50
	v_div_fixup_f32 v54, v76, v75, v54
	v_fma_f32 v76, -v92, v85, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v87
	v_mul_f32_e32 v90, v83, v81
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v89, v78, 1.0
	v_mul_f32_e32 v77, v86, v79
	v_div_fmas_f32 v76, v76, v80, v85
	v_fma_f32 v80, -v88, v90, v83
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v78, v92, v78
	v_fma_f32 v84, -v82, v77, v86
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v53, v76, v75, v53
	v_fmac_f32_e32 v90, v80, v81
	v_div_scale_f32 v80, s3, v47, v52, v47
	v_fmac_f32_e32 v77, v84, v79
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v84, s1, v46, v52, v46
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v82, v77, v86
	v_mul_f32_e32 v85, v80, v91
	v_div_scale_f32 v86, null, v52, v52, v36
	v_div_scale_f32 v82, null, v52, v52, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v51, v75, v52, v51
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v87, v85, v80
	v_mul_f32_e32 v76, v84, v78
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v51
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v50, v77, v52, v50
	v_fmac_f32_e32 v85, v81, v91
	v_fma_f32 v79, -v89, v76, v84
	v_fma_f32 v88, -v82, v83, 1.0
	v_div_scale_f32 v77, s0, v37, v52, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v76, v79, v78
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v75, -v89, v76, v84
	v_div_scale_f32 v84, null, v52, v52, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v85, v80
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v87, null, v52, v52, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v86, v79, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v46, v75, v52, v46
	v_rcp_f32_e32 v90, v87
	v_div_fmas_f32 v76, v76, v91, v85
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s1, v36, v52, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fixup_f32 v47, v76, v52, v47
	v_div_scale_f32 v76, s2, v35, v52, v35
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v80, v89, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fmac_f32_e32 v83, v88, v83
	v_mul_f32_e32 v88, v81, v79
	v_div_scale_f32 v91, null, v52, v52, v32
	v_fmac_f32_e32 v90, v89, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v77, v83
	v_fma_f32 v75, -v86, v88, v81
	v_div_scale_f32 v89, s3, v34, v52, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v88, v75, v79 :: v_dual_mul_f32 v75, v76, v80
	v_fma_f32 v85, -v82, v78, v77
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v52, v52, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v82, v78, v77
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v77, v77, v83, v78
	v_mul_f32_e32 v83, v89, v90
	v_fma_f32 v78, -v86, v88, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v84, v75, v76
	v_div_fixup_f32 v37, v77, v52, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v85, v82, 1.0
	v_fmac_f32_e32 v75, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v86, v82
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_div_scale_f32 v86, s0, v31, v52, v31
	v_fmac_f32_e32 v83, v81, v90
	v_div_fixup_f32 v36, v78, v52, v36
	v_div_scale_f32 v81, null, v52, v52, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v77, v86, v82
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v91, v79, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_fma_f32 v88, -v81, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v76, -v84, v75, v76
	v_div_scale_f32 v84, s1, v32, v52, v32
	v_div_scale_f32 v88, null, v52, v52, v28
	v_div_fmas_f32 v75, v76, v80, v75
	v_fma_f32 v76, -v87, v83, v89
	v_fma_f32 v80, -v85, v77, v86
	v_div_scale_f32 v87, null, v52, v52, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v35, v75, v52, v35
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v77, v80, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v85, v77, v86
	v_div_scale_f32 v85, s2, v30, v52, v30
	v_fma_f32 v86, -v87, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v80, v86, v80
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_div_scale_f32 v86, null, v52, v52, v27
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v34, v76, v52, v34
	v_fma_f32 v76, -v91, v83, v84
	v_div_fmas_f32 v75, v75, v82, v77
	v_rcp_f32_e32 v77, v88
	v_div_scale_f32 v82, s0, v29, v52, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v83, v76, v79 :: v_dual_mul_f32 v76, v85, v78
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v31, v75, v52, v31
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v75, -v91, v83, v84
	v_fma_f32 v84, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v88, v77, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v79, v83
	v_fmac_f32_e32 v76, v84, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fma_f32 v84, -v86, v90, 1.0
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s1, v28, v52, v28
	v_div_fixup_f32 v32, v75, v52, v32
	v_fma_f32 v75, -v81, v76, v85
	v_dual_fmac_f32 v89, v79, v80 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v52, v52, v25
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v79, v83, v77
	v_div_scale_f32 v81, s3, v27, v52, v27
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_rcp_f32_e32 v82, v84
	v_fma_f32 v78, -v88, v79, v83
	v_mul_f32_e32 v85, v81, v90
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v87, null, v52, v52, v26
	v_div_fmas_f32 v76, v76, v80, v89
	v_fmac_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v86, v85, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v78, v87
	v_fma_f32 v89, -v84, v82, 1.0
	v_div_fixup_f32 v30, v75, v52, v30
	v_div_fixup_f32 v29, v76, v52, v29
	v_fma_f32 v75, -v88, v79, v83
	v_fmac_f32_e32 v85, v80, v90
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v76, s0, v25, v52, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v87, v78, 1.0
	v_div_fmas_f32 v75, v75, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	v_mul_f32_e32 v79, v76, v82
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v33, v33, v24
	v_div_fmas_f32 v77, v77, v90, v85
	v_fma_f32 v85, -v84, v79, v76
	v_div_scale_f32 v90, null, v33, v33, v21
	v_div_scale_f32 v81, s1, v26, v52, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v85, v82
	v_rcp_f32_e32 v83, v80
	v_rcp_f32_e32 v92, v90
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v86, v81, v78
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v88, null, v33, v33, v23
	v_div_fixup_f32 v28, v75, v52, v28
	v_div_fixup_f32 v27, v77, v52, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v82, v79
	v_fma_f32 v75, -v87, v86, v81
	v_rcp_f32_e32 v77, v88
	v_fma_f32 v85, -v80, v83, 1.0
	v_div_scale_f32 v82, s0, v23, v33, v23
	v_div_fixup_f32 v25, v76, v52, v25
	v_fma_f32 v76, -v90, v92, 1.0
	v_fmac_f32_e32 v86, v75, v78
	v_div_scale_f32 v75, s2, v24, v33, v24
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v92, v76, v92 :: v_dual_fmac_f32 v83, v85, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v88, v77, 1.0
	v_fma_f32 v79, -v87, v86, v81
	v_div_scale_f32 v84, null, v33, v33, v22
	v_mul_f32_e32 v81, v75, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v89, v77
	v_div_fmas_f32 v78, v79, v78, v86
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v89, -v80, v81, v75
	v_mul_f32_e32 v91, v82, v77
	v_div_fixup_f32 v26, v78, v52, v26
	v_div_scale_f32 v78, null, v33, v33, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v79, -v88, v91, v82
	v_div_scale_f32 v76, s1, v21, v33, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v84, v85, 1.0
	v_fma_f32 v52, -v80, v81, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v79, v77 :: v_dual_mul_f32 v80, v76, v92
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v52, v52, v83, v81
	v_div_scale_f32 v81, null, v33, v33, v19
	v_fma_f32 v79, -v88, v91, v82
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v52, v33, v24
	v_rcp_f32_e32 v83, v81
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v77, v79, v77, v91
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v23, v77, v33, v23
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v77, -v81, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v77, v83
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s3, v22, v33, v22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v77, s2, v19, v33, v19
	v_mul_f32_e32 v86, v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v84, v86, v87
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v84, v86, v87
	v_fma_f32 v84, -v90, v80, v76
	v_div_fmas_f32 v79, v79, v85, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v78, v75, 1.0
	v_fmac_f32_e32 v80, v84, v92
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v79, v33, v22
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s0, v20, v33, v20
	v_div_scale_f32 v79, null, v33, v33, v17
	v_fma_f32 v76, -v90, v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v82, v75
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v92, v80
	v_fma_f32 v84, -v78, v52, v82
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v21, v76, v33, v21
	v_fmac_f32_e32 v52, v84, v75
	v_div_scale_f32 v84, null, v33, v33, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v78, v52, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v76, v75, v52
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v33, v33, v18
	v_div_scale_f32 v75, null, v33, v33, v14
	v_div_scale_f32 v76, s0, v17, v33, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v88, v82
	v_div_fixup_f32 v20, v52, v33, v20
	v_fma_f32 v52, -v84, v86, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v89, s2, v14, v33, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v52, v86
	v_div_scale_f32 v52, s1, v16, v33, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v88, 1.0
	v_fmac_f32_e32 v88, v90, v88
	v_mul_f32_e32 v80, v77, v83
	v_div_scale_f32 v90, s3, v18, v33, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v81, v80, v77
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v81, v80, v77
	v_mul_f32_e32 v81, v76, v85
	v_div_fmas_f32 v77, v77, v83, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v52, v86
	v_fma_f32 v87, -v75, v78, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v19, v77, v33, v19
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v52
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v33, v33, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v89, v78
	v_rcp_f32_e32 v91, v87
	v_mul_f32_e32 v79, v90, v88
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v52, -v84, v83, v52
	v_div_scale_f32 v81, null, v33, v33, v13
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v77, -v75, v92, v89
	v_div_fmas_f32 v52, v52, v86, v83
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v87, v91, 1.0
	v_div_fixup_f32 v17, v76, v33, v17
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s0, v15, v33, v15
	v_fma_f32 v75, -v75, v92, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_scale_f32 v85, null, v33, v33, v11
	v_div_fixup_f32 v16, v52, v33, v16
	v_div_fmas_f32 v75, v75, v78, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v83, v76, v83
	v_fmac_f32_e32 v79, v77, v88
	v_mul_f32_e32 v77, v80, v91
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v75, v33, v14
	v_div_scale_f32 v75, null, v33, v33, v12
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_div_scale_f32 v76, null, v33, v33, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v78, v78, v88, v79
	v_fmac_f32_e32 v77, v82, v91
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v18, v78, v33, v18
	v_fma_f32 v52, -v87, v77, v80
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v78, null, v33, v33, v10
	v_rcp_f32_e32 v80, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v91, v77
	v_rcp_f32_e32 v77, v75
	v_rcp_f32_e32 v82, v78
	v_div_scale_f32 v79, vcc_lo, v13, v33, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v15, v52, v33, v15
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v84, v79, v83
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v76, v80, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v52, -v75, v77, 1.0
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s3, v11, v33, v11
	v_fma_f32 v89, -v78, v82, 1.0
	v_fma_f32 v88, -v81, v84, v79
	v_fmac_f32_e32 v80, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v91, v87 :: v_dual_fmac_f32 v77, v52, v77
	v_div_scale_f32 v52, s0, v12, v33, v12
	v_div_scale_f32 v86, s1, v9, v33, v9
	v_fmac_f32_e32 v82, v89, v82
	v_mul_f32_e32 v90, v52, v77
	v_div_scale_f32 v89, s2, v10, v33, v10
	v_fmac_f32_e32 v84, v88, v83
	v_mul_f32_e32 v92, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v75, v90, v52
	v_mul_f32_e32 v93, v89, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v81, -v76, v92, v86
	v_fmac_f32_e32 v90, v88, v77
	v_fma_f32 v88, -v78, v93, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v83, v84
	v_fmac_f32_e32 v92, v81, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v52, -v75, v90, v52
	v_fma_f32 v75, -v85, v94, v91
	v_fmac_f32_e32 v93, v88, v82
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v76, -v76, v92, v86
	v_div_fixup_f32 v13, v79, v33, v13
	v_fmac_f32_e32 v94, v75, v87
	v_fma_f32 v75, -v78, v93, v89
	v_div_fmas_f32 v52, v52, v77, v90
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v77, -v85, v94, v91
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v52, v33, v12
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v76, v33, v9
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v52, v56
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v75, v33, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v77, v33, v11
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v55
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v58, v61
	v_rndne_f32_e32 v61, v66
	v_rndne_f32_e32 v62, v67
	v_rndne_f32_e32 v66, v69
	v_rndne_f32_e32 v67, v70
	v_rndne_f32_e32 v69, v73
	v_rndne_f32_e32 v70, v74
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v73, v37
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v91, v17
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v45, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v73, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v79, v30
	v_cvt_i32_f32_e32 v80, v29
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v30, 15, v70
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v69, 10, v174
	v_lshlrev_b32_e32 v70, 6, v73
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v77, v31
	v_cvt_i32_f32_e32 v85, v24
	v_cvt_i32_f32_e32 v86, v23
	v_cvt_i32_f32_e32 v87, v22
	v_cvt_i32_f32_e32 v88, v21
	v_and_b32_e32 v31, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v72, 0, v69, v70
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v78, v32
	v_cvt_i32_f32_e32 v93, v14
	v_cvt_i32_f32_e32 v94, v18
	v_cvt_i32_f32_e32 v95, v15
	v_cvt_i32_f32_e32 v96, v13
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v81, v28
	v_cvt_i32_f32_e32 v82, v27
	v_cvt_i32_f32_e32 v83, v25
	v_cvt_i32_f32_e32 v84, v26
	v_cvt_i32_f32_e32 v92, v16
	v_cvt_i32_f32_e32 v97, v12
	v_cvt_i32_f32_e32 v98, v9
	v_cvt_i32_f32_e32 v99, v10
	v_cvt_i32_f32_e32 v100, v11
	v_and_b32_e32 v9, 15, v33
	v_and_b32_e32 v10, 15, v38
	v_and_b32_e32 v11, 15, v39
	v_and_b32_e32 v12, 15, v40
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v16, 15, v44
	v_and_b32_e32 v23, 15, v58
	v_and_b32_e32 v24, 15, v59
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v27, 15, v66
	v_and_b32_e32 v28, 15, v67
	v_and_b32_e32 v37, 15, v60
	v_and_b32_e32 v38, 15, v57
	v_and_b32_e32 v41, 15, v51
	v_and_b32_e32 v42, 15, v50
	v_and_b32_e32 v43, 15, v46
	v_and_b32_e32 v44, 15, v47
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v4, v72, v4, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v74, v36
	v_cvt_i32_f32_e32 v75, v35
	v_cvt_i32_f32_e32 v76, v34
	v_cvt_i32_f32_e32 v89, v20
	v_cvt_i32_f32_e32 v90, v19
	v_and_b32_e32 v18, 15, v48
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v20, 15, v52
	v_and_b32_e32 v21, 15, v55
	v_and_b32_e32 v22, 15, v56
	v_and_b32_e32 v33, 15, v65
	v_and_b32_e32 v34, 15, v68
	v_and_b32_e32 v35, 15, v64
	v_and_b32_e32 v36, 15, v63
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v32, 15, v71
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v4, v[9:12]
	ds_store_b128 v4, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v3
	ds_load_b128 v[17:20], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[25:28]
	ds_store_b128 v4, v[33:36] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v3
	ds_load_b128 v[33:36], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[41:44]
	ds_store_b128 v4, v[49:52] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v3
	ds_load_b128 v[49:52], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[57:60]
	ds_store_b128 v4, v[65:68] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v3
	ds_load_b128 v[65:68], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[13:16]
	ds_store_b128 v4, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[21:24], v3 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 15, v54
	v_and_b32_e32 v40, 15, v53
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[29:32]
	ds_store_b128 v4, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v3
	ds_load_b128 v[37:40], v3 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v46, 15, v74
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v48, 15, v76
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v92
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[45:48]
	ds_store_b128 v4, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v3
	ds_load_b128 v[53:56], v3 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v4, v[61:64]
	ds_store_b128 v4, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v3
	ds_load_b128 v[69:72], v3 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v17, 4, v9
	v_lshl_or_b32 v3, v18, 4, v10
	v_lshl_or_b32 v5, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v150
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	s_mul_i32 s2, s31, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v2.l, 0xff, v5.l
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v13.l
	v_and_b16 v4.h, 0xff, v12.l
	v_lshlrev_b16 v5.l, 8, v11.l
	v_and_b16 v5.h, 0xff, v10.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v23, v50, 4, v42
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v8
	v_add3_u32 v41, v8, s1, v38
	v_add3_u32 v42, v8, s2, v38
	v_add3_u32 v38, v8, s0, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v3.h, v3.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v9.l, v5.h, v5.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v3.h, 0xff, v14.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v5.h, 0xff, v18.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v30, v65, 4, v57
	v_lshl_or_b32 v31, v66, 4, v58
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v40, s[16:19], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v3.h, v3.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v9.l, v5.h, v5.l
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v3.h, 0xff, v22.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v28, v55, 4, v47
	v_lshl_or_b32 v29, v56, 4, v48
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v34, v69, 4, v61
	v_lshl_or_b32 v35, v70, 4, v62
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v5.h, 0xff, v26.l
	buffer_store_b64 v[8:9], v41, s[16:19], 0 offen
	v_or_b16 v8.l, v3.h, v3.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v3.h, 0xff, v30.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v37, v71, 4, v63
	v_lshl_or_b32 v39, v72, 4, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.l, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v5.h, 0xff, v34.l
	v_or_b16 v10.l, v3.h, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 2, v73
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v9.h, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v4.l, 8, v39.l
	v_and_b16 v4.h, 0xff, v37.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v5, 4, v172
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v4, 0, v36
	v_mov_b16_e32 v2.l, v7.h
	v_mov_b16_e32 v1.l, v6.h
	v_add3_u32 v3, v3, v5, v36
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 63, s31
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v42, s[16:19], 0 offen
	buffer_store_b64 v[10:11], v38, s[16:19], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v4, v[1:2]
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
	v_add_lshl_u32 v2, v2, s30, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp49:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 191
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32188
; TotalNumSgprs: 41
; NumVgprs: 191
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     191
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
