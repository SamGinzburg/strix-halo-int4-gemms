	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v62, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v26, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v44, 15, v0
	v_or_b32_e32 v64, 0x3f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v4, 62, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 12, v62
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v73, 0, v62
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s22, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s17, s16
	s_xor_b32 s13, s2, s16
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s6, s6, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s18, s6
	s_add_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s18
	s_ashr_i32 s18, s13, 31
	s_mul_i32 s14, s6, s17
	s_sub_i32 s13, s7, s14
	s_add_i32 s14, s6, 1
	s_sub_i32 s19, s13, s17
	s_cmp_ge_u32 s13, s17
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s14, s14, s6
	s_cselect_b32 s6, s19, s13
	s_add_i32 s13, s14, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s13, s14
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s23, 1
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v5, s34, v4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s14, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s17, s12, 0xff
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s12, s3, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v63, v1, 4, v5
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s34, s26
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s14, s2, 4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s17, 31
.Ltmp17:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v25, v2, v3, s14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s33, s12, v63
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s16, 24
.Ltmp19:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s6
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s15, s17, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s34, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s7
	v_cndmask_b32_e64 v6, 0x80000000, v2, s2
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[11:14], v6, s[28:31], 0 offen
	buffer_load_b128 v[15:18], v5, s[28:31], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s23, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s23, 7, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s12, s22, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s34, v5
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s34, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v3, s12, v25
	s_lshl_b32 s16, s22, 6
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_b128 v[19:22], v5, s[28:31], 0 offen
	buffer_load_b128 v[27:30], v6, s[28:31], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s23, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v8, s3
	s_clause 0x1
	buffer_load_b128 v[31:34], v5, s[28:31], 0 offen
	buffer_load_b128 v[35:38], v6, s[28:31], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s34, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add3_u32 v7, s12, s16, v25
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_mov_b32 s12, 0
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x1
	buffer_load_b128 v[39:42], v2, s[28:31], 0 offen
	buffer_load_b128 v[45:48], v5, s[28:31], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v23, 0x80000000, v7, s3
	buffer_load_b32 v72, v3, s[4:7], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v5, 0x70, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v81, v23, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v2, v2, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x420, v3
	v_and_b32_e32 v3, 6, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 2, v2
	v_or_b32_e32 v8, 4, v2
	v_or_b32_e32 v9, 6, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v4, v6, v4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v10, 8, v2
	v_or_b32_e32 v5, 12, v2
	v_or_b32_e32 v6, 14, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v65, v3, 10, v4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v4, 10, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v66, 0x90, v65
	v_xor_b32_e32 v67, 0x120, v65
	v_add_nc_u32_e32 v74, 0, v65
	v_xor_b32_e32 v68, 0x1b0, v65
	v_xor_b32_e32 v69, 0x210, v65
	v_add_nc_u32_e32 v75, 0, v66
	v_xor_b32_e32 v70, 0x330, v65
	v_add_nc_u32_e32 v76, 0, v67
	v_xor_b32_e32 v71, 0x3a0, v65
	v_add_nc_u32_e32 v77, 0, v68
	v_add_nc_u32_e32 v78, 0, v69
	v_add_nc_u32_e32 v79, 0, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v80, 0, v71
	s_waitcnt vmcnt(8)
	v_perm_b32 v23, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v24, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v43, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v49, v18, v14, 0x5010400
	v_perm_b32 v50, v18, v14, 0x7030602
	v_and_b16 v11.l, 0xff, v23.l
	v_lshrrev_b32_e32 v51, 8, v23
	v_lshrrev_b32_e32 v52, 24, v23
	v_and_b16 v11.h, 0xff, v23.h
	v_and_b16 v12.l, 0xff, v15.l
	v_lshrrev_b32_e32 v23, 8, v15
	v_lshrrev_b32_e32 v53, 24, v15
	v_and_b16 v12.h, 0xff, v15.h
	v_and_b16 v13.l, 0xff, v24.l
	v_lshrrev_b32_e32 v54, 8, v24
	v_lshrrev_b32_e32 v55, 24, v24
	v_and_b16 v13.h, 0xff, v24.h
	v_and_b16 v14.l, 0xff, v16.l
	v_lshrrev_b32_e32 v24, 8, v16
	v_lshrrev_b32_e32 v56, 24, v16
	v_and_b16 v14.h, 0xff, v16.h
	v_and_b16 v15.l, 0xff, v43.l
	v_lshrrev_b32_e32 v57, 8, v43
	v_lshrrev_b32_e32 v58, 24, v43
	v_and_b16 v15.h, 0xff, v43.h
	v_and_b16 v16.l, 0xff, v17.l
	v_lshrrev_b32_e32 v43, 8, v17
	v_lshrrev_b32_e32 v59, 24, v17
	v_and_b16 v16.h, 0xff, v17.h
	v_and_b16 v17.l, 0xff, v49.l
	v_lshrrev_b32_e32 v60, 8, v49
	v_lshrrev_b32_e32 v61, 24, v49
	v_and_b16 v17.h, 0xff, v49.h
	v_and_b16 v18.l, 0xff, v50.l
	v_lshrrev_b32_e32 v49, 8, v50
	v_lshrrev_b32_e32 v82, 24, v50
	v_and_b16 v18.h, 0xff, v50.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v50, v27, v19, 0x5010400
	v_perm_b32 v83, v27, v19, 0x7030602
	v_perm_b32 v84, v28, v20, 0x5010400
	v_perm_b32 v85, v28, v20, 0x7030602
	v_perm_b32 v86, v29, v21, 0x5010400
	v_perm_b32 v87, v29, v21, 0x7030602
	v_perm_b32 v88, v30, v22, 0x5010400
	v_perm_b32 v89, v30, v22, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v90, v35, v31, 0x5010400
	v_perm_b32 v91, v35, v31, 0x7030602
	v_perm_b32 v92, v36, v32, 0x5010400
	v_perm_b32 v93, v36, v32, 0x7030602
	v_perm_b32 v94, v37, v33, 0x5010400
	v_perm_b32 v95, v37, v33, 0x7030602
	v_perm_b32 v96, v38, v34, 0x5010400
	v_perm_b32 v97, v38, v34, 0x7030602
	v_lshlrev_b16 v19.l, 8, v51.l
	v_lshlrev_b16 v19.h, 8, v52.l
	v_lshlrev_b16 v20.l, 8, v23.l
	v_lshlrev_b16 v20.h, 8, v53.l
	v_lshlrev_b16 v21.l, 8, v54.l
	v_lshlrev_b16 v21.h, 8, v55.l
	v_lshlrev_b16 v22.l, 8, v24.l
	v_lshlrev_b16 v22.h, 8, v56.l
	v_lshlrev_b16 v23.l, 8, v57.l
	v_lshlrev_b16 v23.h, 8, v58.l
	v_lshlrev_b16 v24.l, 8, v43.l
	v_lshlrev_b16 v24.h, 8, v59.l
	v_lshlrev_b16 v27.l, 8, v60.l
	v_lshlrev_b16 v27.h, 8, v61.l
	v_lshlrev_b16 v28.l, 8, v49.l
	v_lshlrev_b16 v28.h, 8, v82.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v29.l, 0xff, v50.l
	v_lshrrev_b32_e32 v54, 8, v50
	v_lshrrev_b32_e32 v55, 24, v50
	v_and_b16 v29.h, 0xff, v50.h
	v_and_b16 v30.l, 0xff, v83.l
	v_lshrrev_b32_e32 v56, 8, v83
	v_lshrrev_b32_e32 v57, 24, v83
	v_and_b16 v30.h, 0xff, v83.h
	v_and_b16 v31.l, 0xff, v84.l
	v_lshrrev_b32_e32 v58, 8, v84
	v_lshrrev_b32_e32 v59, 24, v84
	v_and_b16 v31.h, 0xff, v84.h
	v_and_b16 v32.l, 0xff, v85.l
	v_lshrrev_b32_e32 v60, 8, v85
	v_lshrrev_b32_e32 v61, 24, v85
	v_and_b16 v32.h, 0xff, v85.h
	v_and_b16 v33.l, 0xff, v86.l
	v_lshrrev_b32_e32 v82, 8, v86
	v_lshrrev_b32_e32 v83, 24, v86
	v_and_b16 v33.h, 0xff, v86.h
	v_and_b16 v34.l, 0xff, v87.l
	v_lshrrev_b32_e32 v84, 8, v87
	v_lshrrev_b32_e32 v85, 24, v87
	v_and_b16 v34.h, 0xff, v87.h
	v_and_b16 v35.l, 0xff, v88.l
	v_lshrrev_b32_e32 v86, 8, v88
	v_lshrrev_b32_e32 v87, 24, v88
	v_and_b16 v35.h, 0xff, v88.h
	v_and_b16 v36.l, 0xff, v89.l
	v_lshrrev_b32_e32 v88, 8, v89
	v_lshrrev_b32_e32 v98, 24, v89
	v_and_b16 v36.h, 0xff, v89.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v37.l, 0xff, v90.l
	v_lshrrev_b32_e32 v89, 8, v90
	v_lshrrev_b32_e32 v99, 24, v90
	v_and_b16 v37.h, 0xff, v90.h
	v_and_b16 v38.l, 0xff, v91.l
	v_lshrrev_b32_e32 v90, 8, v91
	v_lshrrev_b32_e32 v100, 24, v91
	v_and_b16 v38.h, 0xff, v91.h
	v_and_b16 v43.l, 0xff, v92.l
	v_lshrrev_b32_e32 v91, 8, v92
	v_lshrrev_b32_e32 v101, 24, v92
	v_and_b16 v43.h, 0xff, v92.h
	v_and_b16 v49.l, 0xff, v93.l
	v_lshrrev_b32_e32 v92, 8, v93
	v_lshrrev_b32_e32 v102, 24, v93
	v_and_b16 v49.h, 0xff, v93.h
	v_and_b16 v50.l, 0xff, v94.l
	v_lshrrev_b32_e32 v93, 8, v94
	v_lshrrev_b32_e32 v103, 24, v94
	v_and_b16 v50.h, 0xff, v94.h
	v_and_b16 v51.l, 0xff, v95.l
	v_lshrrev_b32_e32 v94, 8, v95
	v_lshrrev_b32_e32 v104, 24, v95
	v_and_b16 v51.h, 0xff, v95.h
	v_and_b16 v52.l, 0xff, v96.l
	v_lshrrev_b32_e32 v95, 8, v96
	v_lshrrev_b32_e32 v105, 24, v96
	v_and_b16 v52.h, 0xff, v96.h
	v_and_b16 v53.l, 0xff, v97.l
	v_lshrrev_b32_e32 v96, 8, v97
	v_lshrrev_b32_e32 v106, 24, v97
	v_and_b16 v53.h, 0xff, v97.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v97, v45, v39, 0x5010400
	v_perm_b32 v107, v45, v39, 0x7030602
	v_perm_b32 v108, v46, v40, 0x5010400
	v_perm_b32 v109, v46, v40, 0x7030602
	v_perm_b32 v110, v47, v41, 0x5010400
	v_perm_b32 v111, v47, v41, 0x7030602
	v_perm_b32 v112, v48, v42, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v15.l, v15.l, v23.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.l, 8, v60.l
	v_lshlrev_b16 v23.l, 8, v82.l
	v_lshrrev_b32_e32 v82, 8, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v19.l, 8, v54.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v12.l, v12.l, v20.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v113, v48, v42, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v15.h, v15.h, v23.h
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	v_or_b16 v17.l, v17.l, v27.l
	v_or_b16 v17.h, v17.h, v27.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v19.h, 8, v55.l
	v_lshlrev_b16 v23.h, 8, v83.l
	v_lshlrev_b16 v24.l, 8, v84.l
	v_lshlrev_b16 v24.h, 8, v85.l
	v_lshlrev_b16 v27.l, 8, v86.l
	v_lshlrev_b16 v27.h, 8, v87.l
	v_lshrrev_b32_e32 v84, 8, v107
	v_lshrrev_b32_e32 v85, 24, v107
	v_lshrrev_b32_e32 v86, 8, v108
	v_lshrrev_b32_e32 v87, 24, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v13.h, v13.h, v21.h
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v18.l, v18.l, v28.l
	v_or_b16 v18.h, v18.h, v28.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v20.l, 8, v56.l
	v_lshlrev_b16 v20.h, 8, v57.l
	v_lshlrev_b16 v21.l, 8, v58.l
	v_lshlrev_b16 v21.h, 8, v59.l
	v_lshlrev_b16 v22.h, 8, v61.l
	v_lshlrev_b16 v28.l, 8, v88.l
	v_lshlrev_b16 v28.h, 8, v98.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v39.l, 8, v89.l
	v_lshlrev_b16 v39.h, 8, v99.l
	v_lshlrev_b16 v40.l, 8, v90.l
	v_lshlrev_b16 v41.l, 8, v91.l
	v_lshlrev_b16 v42.l, 8, v92.l
	v_lshlrev_b16 v45.l, 8, v93.l
	v_lshlrev_b16 v46.l, 8, v94.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v83, 24, v97
	v_lshrrev_b32_e32 v88, 8, v109
	v_lshrrev_b32_e32 v89, 24, v109
	v_lshrrev_b32_e32 v90, 8, v110
	v_lshrrev_b32_e32 v91, 24, v110
	v_lshrrev_b32_e32 v92, 8, v111
	v_lshrrev_b32_e32 v93, 24, v111
	v_lshrrev_b32_e32 v94, 8, v112
	v_and_b16 v54.l, 0xff, v97.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v74, v11
	ds_store_b16_d16_hi v74, v11 offset:64
	ds_store_b16 v75, v12
	ds_store_b16_d16_hi v75, v12 offset:64
	ds_store_b16 v76, v13
	ds_store_b16_d16_hi v76, v13 offset:64
	ds_store_b16 v77, v14
	ds_store_b16_d16_hi v77, v14 offset:64
	ds_store_b16 v78, v15
	ds_store_b16_d16_hi v78, v15 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v13.h, v32.l, v22.l
	v_lshlrev_b16 v32.l, 8, v82.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v40.h, 8, v100.l
	v_lshlrev_b16 v47.l, 8, v95.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v95, 24, v112
	v_or_b16 v19.l, v29.l, v19.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v46.h, 8, v104.l
	v_lshlrev_b16 v48.l, 8, v96.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v55.l, 0xff, v107.l
	v_and_b16 v55.h, 0xff, v107.h
	v_and_b16 v56.l, 0xff, v108.l
	v_and_b16 v56.h, 0xff, v108.h
	v_lshrrev_b32_e32 v96, 8, v113
	v_or_b16 v11.l, v29.h, v19.h
	v_or_b16 v14.h, v33.l, v23.l
	v_or_b16 v15.l, v33.h, v23.h
	v_or_b16 v15.h, v34.l, v24.l
	v_or_b16 v19.h, v34.h, v24.h
	v_lshlrev_b16 v33.l, 8, v84.l
	v_lshlrev_b16 v33.h, 8, v85.l
	v_lshlrev_b16 v34.l, 8, v86.l
	v_lshlrev_b16 v34.h, 8, v87.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v41.h, 8, v101.l
	v_lshlrev_b16 v42.h, 8, v102.l
	v_lshlrev_b16 v45.h, 8, v103.l
	v_lshlrev_b16 v47.h, 8, v105.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v54.h, 0xff, v97.h
	v_and_b16 v57.l, 0xff, v109.l
	v_and_b16 v57.h, 0xff, v109.h
	v_and_b16 v58.l, 0xff, v110.l
	v_and_b16 v58.h, 0xff, v110.h
	v_and_b16 v59.l, 0xff, v111.l
	v_and_b16 v59.h, 0xff, v111.h
	v_and_b16 v60.l, 0xff, v112.l
	v_lshrrev_b32_e32 v97, 24, v113
	v_or_b16 v11.h, v30.l, v20.l
	v_or_b16 v12.l, v30.h, v20.h
	v_or_b16 v12.h, v31.l, v21.l
	v_or_b16 v13.l, v31.h, v21.h
	v_or_b16 v14.l, v32.h, v22.h
	v_or_b16 v20.l, v35.l, v27.l
	v_or_b16 v20.h, v35.h, v27.h
	v_or_b16 v21.l, v36.l, v28.l
	v_or_b16 v21.h, v36.h, v28.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v22.l, v37.l, v39.l
	v_or_b16 v22.h, v37.h, v39.h
	v_or_b16 v23.l, v38.l, v40.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v32.h, 8, v83.l
	v_lshlrev_b16 v35.l, 8, v88.l
	v_lshlrev_b16 v35.h, 8, v89.l
	v_lshlrev_b16 v36.l, 8, v90.l
	v_lshlrev_b16 v36.h, 8, v91.l
	v_lshlrev_b16 v37.l, 8, v92.l
	v_lshlrev_b16 v37.h, 8, v93.l
	v_lshlrev_b16 v38.l, 8, v94.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v73, v72 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v74, v19 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v74, v16 offset:640
	ds_store_b16_d16_hi v74, v16 offset:704
	ds_store_b16 v79, v17
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v74, v11 offset:16448
	ds_store_b16_d16_hi v75, v11 offset:16384
	ds_store_b16 v75, v12 offset:16448
	ds_store_b16_d16_hi v76, v12 offset:16384
	ds_store_b16 v76, v13 offset:16448
	ds_store_b16_d16_hi v77, v13 offset:16384
	ds_store_b16 v77, v14 offset:16448
	ds_store_b16_d16_hi v78, v14 offset:16384
	ds_store_b16 v78, v15 offset:16448
	ds_store_b16_d16_hi v74, v15 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v79, v17 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v74, v19 offset:17088
	ds_store_b16 v79, v20 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v80, v18
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v79, v20 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v80, v18 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v80, v21 offset:16384
	ds_store_b16_d16_hi v80, v21 offset:16448
	v_or_b16 v11.l, v54.l, v32.l
	v_and_b16 v60.h, 0xff, v112.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v23.h, v38.h, v40.h
	v_or_b16 v29.l, v51.l, v46.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v38.h, 8, v95.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v48.h, 8, v106.l
	v_or_b16 v29.h, v51.h, v46.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v61.l, 0xff, v113.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v24.l, v43.l, v41.l
	v_or_b16 v30.l, v52.l, v47.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v39.l, 8, v96.l
	v_or_b16 v12.l, v55.l, v33.l
	v_or_b16 v12.h, v55.h, v33.h
	v_or_b16 v13.l, v56.l, v34.l
	v_or_b16 v13.h, v56.h, v34.h
	v_and_b16 v61.h, 0xff, v113.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v24.h, v43.h, v41.h
	v_or_b16 v27.l, v49.l, v42.l
	v_or_b16 v27.h, v49.h, v42.h
	v_or_b16 v28.l, v50.l, v45.l
	v_or_b16 v28.h, v50.h, v45.h
	v_or_b16 v30.h, v52.h, v47.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v39.h, 8, v97.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v74, v22 offset:8192
	ds_store_b16_d16_hi v74, v22 offset:8256
	ds_store_b16 v75, v23 offset:8192
	ds_store_b16_d16_hi v75, v23 offset:8256
	ds_store_b16 v76, v24 offset:8192
	ds_store_b16_d16_hi v76, v24 offset:8256
	ds_store_b16 v77, v27 offset:8192
	ds_store_b16_d16_hi v77, v27 offset:8256
	ds_store_b16 v78, v28 offset:8192
	ds_store_b16_d16_hi v78, v28 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v11.h, v54.h, v32.h
	v_or_b16 v14.l, v57.l, v35.l
	v_or_b16 v14.h, v57.h, v35.h
	v_or_b16 v15.l, v58.l, v36.l
	v_or_b16 v15.h, v58.h, v36.h
	v_or_b16 v16.l, v59.l, v37.l
	v_or_b16 v16.h, v59.h, v37.h
	v_or_b16 v17.l, v60.l, v38.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v73, v81 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v74, v11 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v74, v29 offset:8832
	ds_store_b16_d16_hi v74, v29 offset:8896
	ds_store_b16 v79, v30 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v74, v11 offset:24640
	ds_store_b16 v75, v12 offset:24576
	ds_store_b16_d16_hi v75, v12 offset:24640
	ds_store_b16 v76, v13 offset:24576
	ds_store_b16_d16_hi v76, v13 offset:24640
	ds_store_b16 v77, v14 offset:24576
	ds_store_b16_d16_hi v77, v14 offset:24640
	ds_store_b16 v78, v15 offset:24576
	ds_store_b16_d16_hi v78, v15 offset:24640
	ds_store_b16 v74, v16 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v79, v30 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v74, v16 offset:25280
	v_lshlrev_b32_e32 v73, 6, v1
	v_lshlrev_b32_e32 v12, 5, v0
	v_lshlrev_b32_e32 v13, 3, v3
	v_and_b32_e32 v74, 8, v0
	v_and_b32_e32 v75, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v31.l, v53.l, v48.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.h, v60.h, v38.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v31.h, v53.h, v48.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v18.l, v61.l, v39.l
	v_or_b16 v18.h, v61.h, v39.h
	ds_store_b16 v79, v17 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v80, v31 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v79, v17 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v80, v31 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v80, v18 offset:24576
	ds_store_b16_d16_hi v80, v18 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v21, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v3, 8, v0
	v_and_b32_e32 v11, 32, v0
	v_and_or_b32 v72, 0x1800, v12, v13
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr72
.LBB0_3:                                ; %Flow147
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v43, s14, v44
	s_ashr_i32 s1, s15, 8
	v_or_b32_e32 v59, s33, v2
	v_or_b32_e32 v60, s33, v7
	v_or_b32_e32 v58, s33, v8
	v_mul_lo_u32 v61, v43, s1
	v_or_b32_e32 v57, s33, v9
	v_or_b32_e32 v56, s33, v10
	v_or_b32_e32 v55, s33, v4
	v_or_b32_e32 v54, s33, v5
	v_or_b32_e32 v53, s33, v6
	v_add_nc_u32_e32 v52, s23, v2
	v_add_nc_u32_e32 v51, s23, v7
	v_add_nc_u32_e32 v50, s23, v8
	v_add_nc_u32_e32 v48, s23, v9
	v_add_nc_u32_e32 v46, s23, v10
	v_add_nc_u32_e32 v49, s23, v4
	v_add_nc_u32_e32 v47, s23, v5
	v_add_nc_u32_e32 v45, s23, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s35, s26, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v2, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s27, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v72, 0x1800, v12, v13
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v76, s34, v63
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v1, 0x210, v2, v1
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_xor_b32_e32 v1, v1, v72
	v_mov_b32_e32 v42, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v77, v1, v73
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v6, s17
	v_xor_b32_e32 v78, 16, v77
	v_xor_b32_e32 v79, 32, v77
	v_xor_b32_e32 v80, 48, v77
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s11, s35, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s27, s27, -3
	s_mov_b32 s47, 1
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s13, 6
	s_mov_b32 s15, s12
	s_mov_b32 s17, s26
	s_mov_b32 s26, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s11, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s15, v77
	v_add_nc_u32_e32 v12, s15, v78
	v_add_nc_u32_e32 v13, s15, v79
	v_add_nc_u32_e32 v84, s15, v80
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s35, s34
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s35, s22, v[25:26]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s15, s33
	s_mov_b32 s14, s0
	v_add_nc_u32_e32 v89, s15, v63
	v_add_nc_u32_e32 v90, s15, v76
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s15, s15, s23
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v82, s14, v44
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v91, s15, v63
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v83, s14, v64
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s17, 31
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v92, s15, v76
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s14, s14, 24
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v81, v9, s[4:7], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s17, s17, s14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[118:121], v91, s[28:31], 0 offen
	buffer_load_b128 v[122:125], v92, s[28:31], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s17, 8
	s_mov_b32 s16, s10
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v93, v61, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[110:113], v89, s[28:31], 0 offen
	buffer_load_b128 v[114:117], v90, s[28:31], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v85, s16, v77
	v_add_nc_u32_e32 v86, s16, v78
	v_add_nc_u32_e32 v87, s16, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[21:24], v11
	ds_load_b128 v[17:20], v12
	ds_load_b128 v[13:16], v13
	ds_load_b128 v[9:12], v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v84, v82 offset:208
	ds_load_u8 v94, v82 offset:240
	ds_load_u8 v95, v82 offset:224
	ds_load_u8 v96, v82 offset:192
	ds_load_u8 v97, v82 offset:144
	ds_load_u8 v130, v82 offset:176
	ds_load_u8 v131, v82 offset:160
	ds_load_u8 v132, v82 offset:128
	ds_load_u8 v133, v82 offset:80
	ds_load_u8 v134, v82 offset:112
	ds_load_u8 v135, v82 offset:96
	ds_load_u8 v136, v82 offset:64
	ds_load_u8 v137, v82
	ds_load_u8 v138, v82 offset:16
	ds_load_u8 v139, v82 offset:32
	ds_load_u8 v140, v82 offset:48
	ds_load_u8 v141, v82 offset:464
	ds_load_u8 v142, v82 offset:496
	ds_load_u8 v143, v82 offset:480
	ds_load_u8 v144, v82 offset:448
	ds_load_u8 v145, v82 offset:400
	ds_load_u8 v146, v82 offset:432
	ds_load_u8 v147, v82 offset:416
	ds_load_u8 v148, v82 offset:384
	ds_load_u8 v149, v82 offset:336
	ds_load_u8 v150, v82 offset:368
	ds_load_u8 v151, v82 offset:352
	ds_load_u8 v152, v82 offset:320
	ds_load_u8 v153, v82 offset:272
	ds_load_u8 v154, v82 offset:304
	ds_load_u8 v155, v82 offset:288
	ds_load_u8 v156, v82 offset:256
	ds_load_u8 v157, v82 offset:720
	ds_load_u8 v158, v82 offset:752
	ds_load_u8 v159, v82 offset:736
	ds_load_u8 v160, v82 offset:704
	ds_load_u8 v161, v82 offset:656
	ds_load_u8 v162, v82 offset:688
	ds_load_u8 v163, v82 offset:672
	ds_load_u8 v164, v82 offset:640
	ds_load_u8 v165, v82 offset:592
	ds_load_u8 v166, v82 offset:624
	ds_load_u8 v167, v82 offset:608
	ds_load_u8 v168, v82 offset:576
	ds_load_u8 v169, v82 offset:528
	ds_load_u8 v170, v82 offset:560
	ds_load_u8 v171, v82 offset:544
	ds_load_u8 v172, v82 offset:512
	ds_load_u8 v173, v82 offset:976
	ds_load_u8 v83, v83
	ds_load_u8 v174, v82 offset:992
	ds_load_u8 v175, v82 offset:960
	ds_load_u8 v176, v82 offset:912
	ds_load_u8 v177, v82 offset:944
	ds_load_u8 v178, v82 offset:928
	ds_load_u8 v179, v82 offset:896
	ds_load_u8 v180, v82 offset:848
	ds_load_u8 v181, v82 offset:880
	ds_load_u8 v182, v82 offset:864
	ds_load_u8 v183, v82 offset:832
	ds_load_u8 v184, v82 offset:784
	ds_load_u8 v185, v82 offset:816
	ds_load_u8 v186, v82 offset:800
	ds_load_u8 v82, v82 offset:768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[98:101], v85
	ds_load_b128 v[102:105], v86
	ds_load_b128 v[106:109], v87
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v85, v59, s14, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v86, v60, s14, 1
	v_add_lshl_u32 v87, v58, s14, 1
	v_add_lshl_u32 v126, v57, s14, 1
	v_add_lshl_u32 v127, v56, s14, 1
	v_add_lshl_u32 v128, v55, s14, 1
	v_add_lshl_u32 v129, v54, s14, 1
	v_add_lshl_u32 v187, v53, s14, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s14, s14, s33
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v91, 0x80000000, v93 :: v_dual_cndmask_b32 v86, 0x80000000, v86
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v89, v52, s14, 1
	v_add_lshl_u32 v188, v50, s14, 1
	v_add_lshl_u32 v189, v48, s14, 1
	v_add_lshl_u32 v190, v46, s14, 1
	v_add_lshl_u32 v191, v49, s14, 1
	v_add_lshl_u32 v192, v47, s14, 1
	v_add_lshl_u32 v193, v45, s14, 1
	v_add_lshl_u32 v90, v51, s14, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v85, 0x80000000, v85 :: v_dual_cndmask_b32 v92, 0x80000000, v126
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v126, 0x80000000, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v93, 0x80000000, v127 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_dual_cndmask_b32 v127, 0x80000000, v129 :: v_dual_cndmask_b32 v128, 0x80000000, v187
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	v_cndmask_b32_e32 v129, 0x80000000, v188, vcc_lo
	v_dual_cndmask_b32 v187, 0x80000000, v189 :: v_dual_cndmask_b32 v188, 0x80000000, v190
	v_dual_cndmask_b32 v189, 0x80000000, v191 :: v_dual_cndmask_b32 v190, 0x80000000, v192
	v_cndmask_b32_e32 v191, 0x80000000, v193, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v192, v91, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v193, v85, s[40:43], 0 offen
	buffer_load_u16 v194, v86, s[40:43], 0 offen
	buffer_load_u16 v195, v87, s[40:43], 0 offen
	buffer_load_u16 v196, v92, s[40:43], 0 offen
	buffer_load_u16 v197, v93, s[40:43], 0 offen
	buffer_load_u16 v198, v126, s[40:43], 0 offen
	buffer_load_u16 v199, v127, s[40:43], 0 offen
	buffer_load_u16 v200, v128, s[40:43], 0 offen
	buffer_load_u16 v201, v89, s[40:43], 0 offen
	buffer_load_u16 v202, v90, s[40:43], 0 offen
	buffer_load_u16 v203, v129, s[40:43], 0 offen
	buffer_load_u16 v187, v187, s[40:43], 0 offen
	buffer_load_u16 v188, v188, s[40:43], 0 offen
	buffer_load_u16 v189, v189, s[40:43], 0 offen
	buffer_load_u16 v190, v190, s[40:43], 0 offen
	buffer_load_u16 v191, v191, s[40:43], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v88, s16, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v84, v96, v84, 0xc0c0004
	v_perm_b32 v85, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v86, v132, v97, 0xc0c0004
	v_perm_b32 v87, v131, v130, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[126:129], v88
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v88, v136, v133, 0xc0c0004
	v_perm_b32 v89, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v90, v137, v138, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v91, v139, v140, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v92, v144, v141, 0xc0c0004
	v_perm_b32 v93, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v94, v148, v145, 0xc0c0004
	v_perm_b32 v95, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v96, v152, v149, 0xc0c0004
	v_perm_b32 v97, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v134, v156, v153, 0xc0c0004
	v_perm_b32 v138, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v139, v160, v157, 0xc0c0004
	v_perm_b32 v140, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v142, v164, v161, 0xc0c0004
	v_perm_b32 v143, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v144, v168, v165, 0xc0c0004
	v_perm_b32 v145, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v148, v175, v173, 0xc0c0004
	v_perm_b32 v83, v174, v83, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v82, v184, 0xc0c0004
	v_perm_b32 v153, v186, v185, 0xc0c0004
	v_lshl_or_b32 v133, v85, 16, v84
	v_lshl_or_b32 v132, v87, 16, v86
	v_lshl_or_b32 v131, v89, 16, v88
	v_lshl_or_b32 v130, v91, 16, v90
	v_perm_b32 v146, v172, v169, 0xc0c0004
	v_perm_b32 v147, v171, v170, 0xc0c0004
	v_lshl_or_b32 v137, v93, 16, v92
	v_lshl_or_b32 v136, v95, 16, v94
	v_lshl_or_b32 v135, v97, 16, v96
	v_lshl_or_b32 v134, v138, 16, v134
	v_lshl_or_b32 v141, v140, 16, v139
	v_lshl_or_b32 v140, v143, 16, v142
	v_lshl_or_b32 v139, v145, 16, v144
	v_lshl_or_b32 v145, v83, 16, v148
	v_lshl_or_b32 v142, v153, 16, v82
	v_wmma_i32_16x16x16_iu8 v[82:89], v[21:24], v[130:133], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[98:101], v[130:133], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v149, v179, v176, 0xc0c0004
	v_perm_b32 v150, v178, v177, 0xc0c0004
	v_perm_b32 v151, v183, v180, 0xc0c0004
	v_perm_b32 v152, v182, v181, 0xc0c0004
	v_lshl_or_b32 v138, v147, 16, v146
	v_wmma_i32_16x16x16_iu8 v[82:89], v[17:20], v[134:137], v[82:89] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[102:105], v[134:137], v[90:97] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v144, v150, 16, v149
	v_lshl_or_b32 v143, v152, 16, v151
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s47, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[82:89], v[13:16], v[138:141], v[82:89] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[106:109], v[138:141], v[90:97] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s15, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s47, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[82:89], v[9:12], v[142:145], v[82:89] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[90:97], v[126:129], v[142:145], v[90:97] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s15, s47, 10
	s_barrier
	s_add_i32 s15, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v103, v84
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v105, v92
	v_cvt_f32_i32_e32 v101, v90
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v87
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v108, v95
	v_cvt_f32_i32_e32 v109, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v83
	v_cvt_f32_i32_e32 v99, v82
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v100, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v102, v85
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v104, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v107, v86
	v_cvt_f32_i32_e32 v126, v89
	v_cvt_f32_i32_e32 v127, v88
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v128, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s47, 13
	s_mov_b32 s12, s45
	s_add_i32 s45, s16, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s0, s46
	s_mov_b32 s10, s44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s46, s15, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s27
	s_mov_b32 s13, s14
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(19)
	v_perm_b32 v19, v122, v118, 0x7030602
	v_perm_b32 v18, v122, v118, 0x5010400
	v_perm_b32 v20, v123, v119, 0x5010400
	v_perm_b32 v21, v123, v119, 0x7030602
	v_perm_b32 v22, v124, v120, 0x5010400
	v_perm_b32 v23, v124, v120, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(17)
	v_perm_b32 v14, v116, v112, 0x5010400
	v_perm_b32 v12, v115, v111, 0x5010400
	v_perm_b32 v13, v115, v111, 0x7030602
	v_perm_b32 v16, v117, v113, 0x5010400
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v115, 24, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v10, v114, v110, 0x5010400
	v_lshrrev_b32_e32 v90, 8, v14
	v_perm_b32 v11, v114, v110, 0x7030602
	v_perm_b32 v15, v116, v112, 0x7030602
	v_lshrrev_b32_e32 v87, 24, v12
	v_lshrrev_b32_e32 v94, 8, v16
	v_lshrrev_b32_e32 v95, 24, v16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v90.h, 8, v115.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v83, 24, v10
	v_perm_b32 v17, v117, v113, 0x7030602
	v_and_b16 v9.l, 0xff, v10.l
	v_lshrrev_b32_e32 v82, 8, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v11.l
	v_lshrrev_b32_e32 v84, 8, v11
	v_lshrrev_b32_e32 v85, 24, v11
	v_and_b16 v10.h, 0xff, v11.h
	v_and_b16 v11.l, 0xff, v12.l
	v_lshrrev_b32_e32 v86, 8, v12
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v111, 16, v192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v11.h, 0xff, v12.h
	v_and_b16 v12.l, 0xff, v13.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v133, 16, v195
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v88, 8, v13
	v_lshrrev_b32_e32 v89, 24, v13
	v_and_b16 v12.h, 0xff, v13.h
	v_and_b16 v13.l, 0xff, v14.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v115, v111, v133
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v91, 24, v14
	v_and_b16 v13.h, 0xff, v14.h
	v_and_b16 v14.l, 0xff, v15.l
	v_lshrrev_b32_e32 v92, 8, v15
	v_lshrrev_b32_e32 v93, 24, v15
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v16.l
	v_and_b16 v15.h, 0xff, v16.h
	v_lshlrev_b16 v83.h, 8, v87.l
	v_lshlrev_b16 v87.l, 8, v94.l
	v_lshlrev_b16 v87.h, 8, v95.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v145, 16, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v36, v115, v103
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v204, s15, v62
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v24, v125, v121, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v96, 8, v17
	v_lshrrev_b32_e32 v110, 24, v17
	v_lshlrev_b16 v82.h, 8, v85.l
	v_lshlrev_b16 v85.l, 8, v90.l
	v_lshlrev_b16 v85.h, 8, v91.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v143, 16, v189
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.l, v15.l, v87.l
	v_or_b16 v15.h, v15.h, v87.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v87, v111, v145
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v204, v81 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v81, v125, v121, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v16.l, 0xff, v17.l
	v_and_b16 v16.h, 0xff, v17.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.l, 0xff, v18.l
	v_lshrrev_b32_e32 v112, 8, v18
	v_lshrrev_b32_e32 v113, 24, v18
	v_and_b16 v18.l, 0xff, v19.l
	v_lshrrev_b32_e32 v114, 8, v19
	v_and_b16 v19.l, 0xff, v20.l
	v_lshrrev_b32_e32 v116, 8, v20
	v_lshrrev_b32_e32 v117, 24, v20
	v_and_b16 v20.l, 0xff, v21.l
	v_lshrrev_b32_e32 v118, 8, v21
	v_lshrrev_b32_e32 v119, 24, v21
	v_and_b16 v21.l, 0xff, v22.l
	v_lshrrev_b32_e32 v120, 8, v22
	v_lshrrev_b32_e32 v121, 24, v22
	v_and_b16 v22.l, 0xff, v23.l
	v_lshrrev_b32_e32 v122, 8, v23
	v_lshrrev_b32_e32 v123, 24, v23
	v_and_b16 v23.l, 0xff, v24.l
	v_lshrrev_b32_e32 v124, 8, v24
	v_lshrrev_b32_e32 v125, 24, v24
	v_and_b16 v24.l, 0xff, v81.l
	v_lshrrev_b32_e32 v129, 8, v81
	v_lshrrev_b32_e32 v130, 24, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v81.l, 8, v82.l
	v_lshlrev_b16 v82.l, 8, v84.l
	v_lshlrev_b16 v84.l, 8, v88.l
	v_lshlrev_b16 v88.l, 8, v96.l
	v_lshlrev_b16 v88.h, 8, v110.l
	v_or_b16 v13.l, v13.l, v85.l
	v_or_b16 v13.h, v13.h, v85.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v85, v111, v143 :: v_dual_lshlrev_b32 v144, 16, v190
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.h, 0xff, v18.h
	v_and_b16 v18.h, 0xff, v19.h
	v_and_b16 v19.h, 0xff, v20.h
	v_and_b16 v20.h, 0xff, v21.h
	v_and_b16 v21.h, 0xff, v22.h
	v_and_b16 v22.h, 0xff, v23.h
	v_and_b16 v23.h, 0xff, v24.h
	v_and_b16 v24.h, 0xff, v81.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v134, 16, v196
	v_lshlrev_b32_e32 v136, 16, v198
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v81.h, 8, v83.l
	v_lshlrev_b16 v83.l, 8, v86.l
	v_lshlrev_b16 v86.l, 8, v92.l
	v_lshlrev_b16 v86.h, 8, v93.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v141, 16, v187
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v31, v87, v97 :: v_dual_lshlrev_b32 v142, 16, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v16.l, v16.l, v88.l
	v_or_b16 v16.h, v16.h, v88.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v35, v85, v108
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v88, v111, v144 :: v_dual_add_nc_u32 v205, s45, v65
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v135, 16, v197
	v_lshlrev_b32_e32 v132, 16, v194
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v84.h, 8, v89.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v139, 16, v202
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v90.l, 8, v114.l
	v_lshlrev_b16 v91.l, 8, v116.l
	v_lshlrev_b16 v91.h, 8, v117.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v114, v111, v134
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v138, 16, v200
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v116, v111, v136
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v110, 16, v201
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v11.l, v11.l, v83.l
	v_or_b16 v11.h, v11.h, v83.h
	v_or_b16 v14.l, v14.l, v86.l
	v_or_b16 v14.h, v14.h, v86.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v83, v111, v141 :: v_dual_lshlrev_b32 v140, 16, v203
	v_dual_mul_f32 v86, v111, v142 :: v_dual_lshlrev_b32 v137, 16, v199
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v30, v88, v128 :: v_dual_mul_f32 v117, v111, v135
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v131, 16, v193
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v89.l, 8, v112.l
	v_lshlrev_b16 v89.h, 8, v113.l
	v_lshlrev_b16 v92.l, 8, v118.l
	v_lshlrev_b16 v92.h, 8, v119.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v111, v132
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v81.l
	v_or_b16 v9.h, v9.h, v81.h
	v_or_b16 v10.l, v10.l, v82.l
	v_or_b16 v10.h, v10.h, v82.h
	v_or_b16 v12.l, v12.l, v84.l
	v_or_b16 v12.h, v12.h, v84.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v81, v111, v139
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v37, v114, v102
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v111, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v32, v117, v107
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v113, v111, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v33, v116, v106
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v82, v111, v110
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v39, v83, v104
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v84, v111, v140
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v34, v86, v109
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v119, v111, v137 :: v_dual_add_nc_u32 v206, s45, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v28, v118, v126 :: v_dual_add_nc_u32 v207, s45, v67
	v_dual_fmac_f32 v41, v112, v98 :: v_dual_add_nc_u32 v208, s45, v68
	v_dual_fmac_f32 v40, v113, v99 :: v_dual_add_nc_u32 v209, s45, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v27, v82, v101 :: v_dual_add_nc_u32 v210, s45, v70
	v_dual_fmac_f32 v42, v81, v100 :: v_dual_add_nc_u32 v211, s45, v71
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v93.l, 8, v120.l
	v_lshlrev_b16 v93.h, 8, v121.l
	v_lshlrev_b16 v94.l, 8, v122.l
	v_lshlrev_b16 v94.h, 8, v123.l
	v_lshlrev_b16 v95.l, 8, v124.l
	v_lshlrev_b16 v95.h, 8, v125.l
	v_lshlrev_b16 v96.l, 8, v129.l
	v_lshlrev_b16 v96.h, 8, v130.l
	v_or_b16 v17.l, v17.l, v89.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v29, v119, v127 :: v_dual_fmac_f32 v38, v84, v105
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.h, v17.h, v89.h
	v_or_b16 v18.l, v18.l, v90.l
	v_or_b16 v18.h, v18.h, v90.h
	v_or_b16 v19.l, v19.l, v91.l
	v_or_b16 v19.h, v19.h, v91.h
	v_or_b16 v20.l, v20.l, v92.l
	v_or_b16 v20.h, v20.h, v92.h
	v_or_b16 v21.l, v21.l, v93.l
	v_or_b16 v21.h, v21.h, v93.h
	v_or_b16 v22.l, v22.l, v94.l
	v_or_b16 v22.h, v22.h, v94.h
	v_or_b16 v23.l, v23.l, v95.l
	v_or_b16 v23.h, v23.h, v95.h
	v_or_b16 v24.l, v24.l, v96.l
	v_or_b16 v24.h, v24.h, v96.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v205, v9
	ds_store_b16_d16_hi v205, v9 offset:64
	ds_store_b16 v206, v10
	ds_store_b16_d16_hi v206, v10 offset:64
	ds_store_b16 v207, v11
	ds_store_b16_d16_hi v207, v11 offset:64
	ds_store_b16 v208, v12
	ds_store_b16_d16_hi v208, v12 offset:64
	ds_store_b16 v209, v13
	ds_store_b16_d16_hi v209, v13 offset:64
	ds_store_b16 v205, v14 offset:640
	ds_store_b16_d16_hi v205, v14 offset:704
	ds_store_b16 v210, v15
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v205, v17 offset:16384
	ds_store_b16_d16_hi v205, v17 offset:16448
	ds_store_b16 v206, v18 offset:16384
	ds_store_b16_d16_hi v206, v18 offset:16448
	ds_store_b16 v207, v19 offset:16384
	ds_store_b16_d16_hi v207, v19 offset:16448
	ds_store_b16 v208, v20 offset:16384
	ds_store_b16_d16_hi v208, v20 offset:16448
	ds_store_b16 v209, v21 offset:16384
	ds_store_b16_d16_hi v209, v21 offset:16448
	ds_store_b16 v205, v22 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v210, v15 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v205, v22 offset:17088
	ds_store_b16 v210, v23 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v211, v16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v210, v23 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v211, v16 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v211, v24 offset:16384
	ds_store_b16_d16_hi v211, v24 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v21, v64
	v_mov_b32_e32 v1, v73
	v_mov_b32_e32 v3, v74
	v_mov_b32_e32 v11, v75
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v27, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v2, s0, v44
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v94, v2
	ds_load_u8_d16 v97, v2 offset:16
	ds_load_u8_d16 v91, v2 offset:32
	ds_load_u8_d16 v95, v2 offset:48
	ds_load_u8_d16 v107, v2 offset:64
	ds_load_u8_d16 v109, v2 offset:80
	ds_load_u8_d16 v106, v2 offset:96
	ds_load_u8_d16 v108, v2 offset:112
	ds_load_u8_d16 v115, v2 offset:128
	ds_load_u8_d16 v117, v2 offset:144
	ds_load_u8_d16 v114, v2 offset:160
	ds_load_u8_d16 v116, v2 offset:176
	ds_load_u8_d16 v119, v2 offset:192
	ds_load_u8_d16 v121, v2 offset:208
	ds_load_u8_d16 v118, v2 offset:224
	ds_load_u8_d16 v120, v2 offset:240
	ds_load_u8_d16 v23, v2 offset:256
	ds_load_u8_d16 v25, v2 offset:272
	ds_load_u8_d16 v22, v2 offset:288
	ds_load_u8_d16 v24, v2 offset:304
	ds_load_u8_d16 v71, v2 offset:320
	ds_load_u8_d16 v74, v2 offset:336
	ds_load_u8_d16 v67, v2 offset:352
	ds_load_u8_d16 v73, v2 offset:368
	ds_load_u8_d16 v83, v2 offset:384
	ds_load_u8_d16 v85, v2 offset:400
	ds_load_u8_d16 v82, v2 offset:416
	ds_load_u8_d16 v84, v2 offset:432
	ds_load_u8_d16 v99, v2 offset:448
	ds_load_u8_d16 v101, v2 offset:464
	ds_load_u8_d16 v98, v2 offset:480
	ds_load_u8_d16 v100, v2 offset:496
	ds_load_u8_d16 v76, v2 offset:512
	ds_load_u8_d16 v78, v2 offset:528
	ds_load_u8_d16 v75, v2 offset:544
	ds_load_u8_d16 v77, v2 offset:560
	ds_load_u8_d16 v87, v2 offset:576
	ds_load_u8_d16 v89, v2 offset:592
	ds_load_u8_d16 v86, v2 offset:608
	ds_load_u8_d16 v88, v2 offset:624
	ds_load_u8_d16 v103, v2 offset:640
	ds_load_u8_d16 v105, v2 offset:656
	ds_load_u8_d16 v102, v2 offset:672
	ds_load_u8_d16 v104, v2 offset:688
	ds_load_u8_d16 v111, v2 offset:704
	ds_load_u8_d16 v113, v2 offset:720
	ds_load_u8_d16 v110, v2 offset:736
	ds_load_u8_d16 v112, v2 offset:752
	ds_load_u8_d16 v18, v2 offset:768
	ds_load_u8_d16 v20, v2 offset:784
	ds_load_u8_d16 v17, v2 offset:800
	ds_load_u8_d16 v19, v2 offset:816
	ds_load_u8_d16 v63, v2 offset:832
	ds_load_u8_d16 v66, v2 offset:848
	ds_load_u8_d16 v62, v2 offset:864
	ds_load_u8_d16 v64, v2 offset:880
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_mov_b32_e32 v8, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, 0
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v3, v3, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v4, s0, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v72
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v79, v2 offset:896
	ds_load_u8_d16 v81, v2 offset:912
	ds_load_u8_d16 v72, v2 offset:928
	ds_load_u8_d16 v80, v2 offset:944
	ds_load_u8_d16 v92, v2 offset:960
	ds_load_u8_d16 v96, v2 offset:976
	ds_load_u8_d16 v90, v2 offset:992
	ds_load_u8_d16 v93, v4
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v65, v3, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_mov_b32_e32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v68, 16, v65
	v_xor_b32_e32 v69, 32, v65
	v_xor_b32_e32 v70, 48, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v1
	v_mov_b32_e32 v1, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s12, v70
	v_add_nc_u32_e32 v5, s12, v69
	v_add_nc_u32_e32 v6, s12, v68
	v_add_nc_u32_e32 v8, s12, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v9, v115, v117, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v1
	ds_load_b128 v[122:125], v5
	ds_load_b128 v[126:129], v6
	ds_load_b128 v[130:133], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v5, v119, v121, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v6, v118, v120, 0xc0c0004
	v_perm_b32 v10, v114, v116, 0xc0c0004
	v_perm_b32 v11, v107, v109, 0xc0c0004
	v_perm_b32 v12, v106, v108, 0xc0c0004
	v_perm_b32 v13, v94, v97, 0xc0c0004
	v_perm_b32 v14, v91, v95, 0xc0c0004
	v_mov_b32_e32 v8, 0
	v_lshl_or_b32 v137, v6, 16, v5
	v_lshl_or_b32 v136, v10, 16, v9
	v_lshl_or_b32 v135, v12, 16, v11
	v_lshl_or_b32 v134, v14, 16, v13
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v15, v8
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v5, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v6, v98, v100, 0xc0c0004
	v_perm_b32 v16, v83, v85, 0xc0c0004
	v_perm_b32 v138, v82, v84, 0xc0c0004
	v_perm_b32 v139, v71, v74, 0xc0c0004
	v_perm_b32 v140, v67, v73, 0xc0c0004
	v_perm_b32 v141, v23, v25, 0xc0c0004
	v_perm_b32 v142, v22, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[130:133], v[134:137], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v133, v6, 16, v5
	v_lshl_or_b32 v132, v138, 16, v16
	v_lshl_or_b32 v131, v140, 16, v139
	v_lshl_or_b32 v130, v142, 16, v141
	v_perm_b32 v5, v111, v113, 0xc0c0004
	v_perm_b32 v6, v110, v112, 0xc0c0004
	v_perm_b32 v16, v103, v105, 0xc0c0004
	v_perm_b32 v134, v102, v104, 0xc0c0004
	v_perm_b32 v135, v87, v89, 0xc0c0004
	v_perm_b32 v136, v86, v88, 0xc0c0004
	v_perm_b32 v137, v76, v78, 0xc0c0004
	v_perm_b32 v138, v75, v77, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[8:15], v[126:129], v[130:133], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v129, v6, 16, v5
	v_lshl_or_b32 v128, v134, 16, v16
	v_lshl_or_b32 v127, v136, 16, v135
	v_lshl_or_b32 v126, v138, 16, v137
	v_perm_b32 v5, v92, v96, 0xc0c0004
	v_perm_b32 v6, v90, v93, 0xc0c0004
	v_perm_b32 v16, v79, v81, 0xc0c0004
	v_perm_b32 v130, v72, v80, 0xc0c0004
	v_perm_b32 v131, v63, v66, 0xc0c0004
	v_perm_b32 v132, v62, v64, 0xc0c0004
	v_perm_b32 v133, v18, v20, 0xc0c0004
	v_perm_b32 v134, v17, v19, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[8:15], v[122:125], v[126:129], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v125, v6, 16, v5
	v_lshl_or_b32 v124, v130, 16, v16
	v_lshl_or_b32 v123, v132, 16, v131
	v_lshl_or_b32 v122, v134, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[1:4], v[122:125], v[8:15] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v11
	v_cvt_f32_i32_e32 v1, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v13
	v_cvt_f32_i32_e32 v3, v14
	v_cvt_f32_i32_e32 v4, v15
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v12, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v7, s10, v70
	v_add_nc_u32_e32 v14, s10, v69
	v_add_nc_u32_e32 v15, s10, v68
	v_add_nc_u32_e32 v16, s10, v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v107, v107, v109, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[10:13], v7
	ds_load_b128 v[122:125], v14
	ds_load_b128 v[126:129], v15
	ds_load_b128 v[130:133], v16
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v7, v119, v121, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v14, v118, v120, 0xc0c0004
	v_perm_b32 v15, v115, v117, 0xc0c0004
	v_perm_b32 v16, v114, v116, 0xc0c0004
	v_perm_b32 v106, v106, v108, 0xc0c0004
	v_perm_b32 v94, v94, v97, 0xc0c0004
	v_perm_b32 v91, v91, v95, 0xc0c0004
	v_mov_b32_e32 v114, 0
	v_lshl_or_b32 v109, v14, 16, v7
	v_lshl_or_b32 v108, v16, 16, v15
	v_lshl_or_b32 v107, v106, 16, v107
	v_lshl_or_b32 v106, v91, 16, v94
	v_mov_b32_e32 v115, v114
	v_mov_b32_e32 v116, v114
	v_mov_b32_e32 v117, v114
	v_mov_b32_e32 v118, v114
	v_mov_b32_e32 v119, v114
	v_mov_b32_e32 v120, v114
	v_mov_b32_e32 v121, v114
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v7, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v14, v98, v100, 0xc0c0004
	v_perm_b32 v15, v83, v85, 0xc0c0004
	v_perm_b32 v16, v82, v84, 0xc0c0004
	v_perm_b32 v71, v71, v74, 0xc0c0004
	v_perm_b32 v67, v67, v73, 0xc0c0004
	v_perm_b32 v73, v23, v25, 0xc0c0004
	v_perm_b32 v22, v22, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[130:133], v[106:109], v[114:121] neg_lo:[1,1,0]
	v_lshl_or_b32 v25, v14, 16, v7
	v_lshl_or_b32 v24, v16, 16, v15
	v_lshl_or_b32 v23, v67, 16, v71
	v_lshl_or_b32 v22, v22, 16, v73
	v_perm_b32 v7, v111, v113, 0xc0c0004
	v_perm_b32 v14, v110, v112, 0xc0c0004
	v_perm_b32 v15, v103, v105, 0xc0c0004
	v_perm_b32 v16, v102, v104, 0xc0c0004
	v_perm_b32 v67, v87, v89, 0xc0c0004
	v_perm_b32 v71, v86, v88, 0xc0c0004
	v_perm_b32 v73, v76, v78, 0xc0c0004
	v_perm_b32 v74, v75, v77, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[114:121], v[126:129], v[22:25], v[114:121] neg_lo:[1,1,0]
	v_lshl_or_b32 v25, v14, 16, v7
	v_lshl_or_b32 v24, v16, 16, v15
	v_lshl_or_b32 v23, v71, 16, v67
	v_lshl_or_b32 v22, v74, 16, v73
	v_perm_b32 v7, v92, v96, 0xc0c0004
	v_perm_b32 v14, v90, v93, 0xc0c0004
	v_perm_b32 v15, v79, v81, 0xc0c0004
	v_perm_b32 v16, v72, v80, 0xc0c0004
	v_perm_b32 v63, v63, v66, 0xc0c0004
	v_perm_b32 v62, v62, v64, 0xc0c0004
	v_perm_b32 v18, v18, v20, 0xc0c0004
	v_perm_b32 v19, v17, v19, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[114:121], v[122:125], v[22:25], v[114:121] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v14, 16, v7
	v_lshl_or_b32 v16, v16, 16, v15
	v_lshl_or_b32 v15, v62, 16, v63
	v_lshl_or_b32 v14, v19, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[10:13], v[14:17], v[114:121] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v14, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v15, v117
	v_cvt_f32_i32_e32 v10, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v11, v119
	v_cvt_f32_i32_e32 v12, v120
	v_cvt_f32_i32_e32 v13, v121
	v_cvt_f32_i32_e32 v7, v114
	v_cvt_f32_i32_e32 v16, v115
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(13)
	v_add_lshl_u32 v17, v61, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v18, v59, s0, 1
	s_waitcnt lgkmcnt(12)
	v_add_lshl_u32 v19, v60, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v20, v58, s0, 1
	v_add_lshl_u32 v22, v56, s0, 1
	v_add_lshl_u32 v23, v55, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v77, v17, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v17, 0x80000000, v18 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_cndmask_b32_e32 v18, 0x80000000, v19, vcc_lo
	v_add_lshl_u32 v19, v57, s0, 1
	v_add_lshl_u32 v24, v54, s0, 1
	v_add_lshl_u32 v25, v53, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt lgkmcnt(9)
	v_add_lshl_u32 v62, s0, v52, 1
	v_add_lshl_u32 v63, s0, v51, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt lgkmcnt(8)
	v_add_lshl_u32 v64, s0, v50, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_waitcnt lgkmcnt(7)
	s_clause 0x7
	buffer_load_u16 v79, v17, s[24:27], 0 offen
	buffer_load_u16 v78, v18, s[24:27], 0 offen
	buffer_load_u16 v74, v20, s[24:27], 0 offen
	buffer_load_u16 v73, v19, s[24:27], 0 offen
	buffer_load_u16 v67, v22, s[24:27], 0 offen
	buffer_load_u16 v66, v23, s[24:27], 0 offen
	buffer_load_u16 v18, v24, s[24:27], 0 offen
	buffer_load_u16 v17, v25, s[24:27], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v23, s0, v48, 1
	v_add_lshl_u32 v24, s0, v46, 1
	v_dual_cndmask_b32 v19, 0x80000000, v62 :: v_dual_cndmask_b32 v22, 0x80000000, v64
	v_cndmask_b32_e32 v20, 0x80000000, v63, vcc_lo
	v_add_lshl_u32 v25, s0, v49, 1
	v_add_lshl_u32 v62, s0, v47, 1
	v_add_lshl_u32 v63, s0, v45, 1
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_mov_b32 v64, 0
	s_clause 0x3
	buffer_load_u16 v88, v19, s[24:27], 0 offen
	buffer_load_u16 v87, v20, s[24:27], 0 offen
	buffer_load_u16 v76, v22, s[24:27], 0 offen
	buffer_load_u16 v75, v23, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	s_clause 0x3
	buffer_load_u16 v72, v24, s[24:27], 0 offen
	buffer_load_u16 v71, v25, s[24:27], 0 offen
	buffer_load_u16 v20, v62, s[24:27], 0 offen
	buffer_load_u16 v19, v63, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v22, s46, v44
	v_add_nc_u32_e32 v21, s46, v21
	ds_load_u8_d16 v102, v22 offset:896
	ds_load_u8_d16 v104, v22 offset:912
	ds_load_u8_d16 v101, v22 offset:928
	ds_load_u8_d16 v103, v22 offset:944
	ds_load_u8_d16 v110, v22 offset:960
	ds_load_u8_d16 v112, v22 offset:976
	ds_load_u8_d16 v109, v22 offset:992
	ds_load_u8_d16 v111, v21
	v_mov_b32_e32 v21, 0
	ds_load_u8_d16 v134, v22
	ds_load_u8_d16 v136, v22 offset:16
	ds_load_u8_d16 v133, v22 offset:32
	ds_load_u8_d16 v135, v22 offset:48
	ds_load_u8_d16 v142, v22 offset:64
	ds_load_u8_d16 v144, v22 offset:80
	ds_load_u8_d16 v141, v22 offset:96
	ds_load_u8_d16 v143, v22 offset:112
	ds_load_u8_d16 v146, v22 offset:128
	ds_load_u8_d16 v148, v22 offset:144
	ds_load_u8_d16 v145, v22 offset:160
	ds_load_u8_d16 v147, v22 offset:176
	ds_load_u8_d16 v150, v22 offset:192
	ds_load_u8_d16 v152, v22 offset:208
	ds_load_u8_d16 v149, v22 offset:224
	ds_load_u8_d16 v151, v22 offset:240
	ds_load_u8_d16 v115, v22 offset:256
	ds_load_u8_d16 v119, v22 offset:272
	ds_load_u8_d16 v113, v22 offset:288
	ds_load_u8_d16 v116, v22 offset:304
	ds_load_u8_d16 v123, v22 offset:320
	ds_load_u8_d16 v127, v22 offset:336
	ds_load_u8_d16 v121, v22 offset:352
	ds_load_u8_d16 v124, v22 offset:368
	ds_load_u8_d16 v130, v22 offset:384
	ds_load_u8_d16 v132, v22 offset:400
	ds_load_u8_d16 v129, v22 offset:416
	ds_load_u8_d16 v131, v22 offset:432
	ds_load_u8_d16 v138, v22 offset:448
	ds_load_u8_d16 v140, v22 offset:464
	ds_load_u8_d16 v137, v22 offset:480
	ds_load_u8_d16 v139, v22 offset:496
	ds_load_u8_d16 v98, v22 offset:512
	ds_load_u8_d16 v100, v22 offset:528
	ds_load_u8_d16 v97, v22 offset:544
	ds_load_u8_d16 v99, v22 offset:560
	ds_load_u8_d16 v106, v22 offset:576
	ds_load_u8_d16 v108, v22 offset:592
	ds_load_u8_d16 v105, v22 offset:608
	ds_load_u8_d16 v107, v22 offset:624
	ds_load_u8_d16 v117, v22 offset:640
	ds_load_u8_d16 v120, v22 offset:656
	ds_load_u8_d16 v114, v22 offset:672
	ds_load_u8_d16 v118, v22 offset:688
	ds_load_u8_d16 v125, v22 offset:704
	ds_load_u8_d16 v128, v22 offset:720
	ds_load_u8_d16 v122, v22 offset:736
	ds_load_u8_d16 v126, v22 offset:752
	s_waitcnt lgkmcnt(57)
	ds_load_u8_d16 v90, v22 offset:768
	ds_load_u8_d16 v92, v22 offset:784
	ds_load_u8_d16 v89, v22 offset:800
	ds_load_u8_d16 v91, v22 offset:816
	ds_load_u8_d16 v94, v22 offset:832
	ds_load_u8_d16 v96, v22 offset:848
	s_waitcnt lgkmcnt(62)
	ds_load_u8_d16 v93, v22 offset:864
	ds_load_u8_d16 v95, v22 offset:880
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v22, 0, 1, s3
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v22
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v62, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v22, s45, v70
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v86, v134, v136, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v154, v133, v135, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v44, s45, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v157, v153 :: v_dual_add_nc_u32 v62, s45, v68
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, s45, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v169, v154, 16, v86
	v_mov_b32_e32 v154, v153
	v_mov_b32_e32 v155, v153
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[22:25], v22
	ds_load_b128 v[80:83], v44
	ds_load_b128 v[161:164], v62
	ds_load_b128 v[165:168], v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v44, v150, v152, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v62, v149, v151, 0xc0c0004
	v_perm_b32 v63, v146, v148, 0xc0c0004
	v_perm_b32 v64, v145, v147, 0xc0c0004
	v_perm_b32 v84, v142, v144, 0xc0c0004
	v_perm_b32 v85, v141, v143, 0xc0c0004
	v_lshl_or_b32 v172, v62, 16, v44
	v_mov_b32_e32 v156, v153
	v_lshl_or_b32 v171, v64, 16, v63
	v_mov_b32_e32 v158, v153
	v_lshl_or_b32 v170, v85, 16, v84
	v_mov_b32_e32 v159, v153
	v_mov_b32_e32 v160, v153
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v44, v138, v140, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v62, v137, v139, 0xc0c0004
	v_perm_b32 v63, v130, v132, 0xc0c0004
	v_perm_b32 v64, v129, v131, 0xc0c0004
	v_perm_b32 v84, v123, v127, 0xc0c0004
	v_perm_b32 v85, v121, v124, 0xc0c0004
	v_perm_b32 v86, v115, v119, 0xc0c0004
	v_perm_b32 v173, v113, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[165:168], v[169:172], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v168, v62, 16, v44
	v_lshl_or_b32 v167, v64, 16, v63
	v_lshl_or_b32 v166, v85, 16, v84
	v_lshl_or_b32 v165, v173, 16, v86
	v_perm_b32 v44, v125, v128, 0xc0c0004
	v_perm_b32 v62, v122, v126, 0xc0c0004
	v_perm_b32 v63, v117, v120, 0xc0c0004
	v_perm_b32 v64, v114, v118, 0xc0c0004
	v_perm_b32 v84, v106, v108, 0xc0c0004
	v_perm_b32 v85, v105, v107, 0xc0c0004
	v_perm_b32 v86, v98, v100, 0xc0c0004
	v_perm_b32 v169, v97, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[153:160], v[161:164], v[165:168], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v62, 16, v44
	v_lshl_or_b32 v163, v64, 16, v63
	v_lshl_or_b32 v162, v85, 16, v84
	v_lshl_or_b32 v161, v169, 16, v86
	v_perm_b32 v44, v110, v112, 0xc0c0004
	v_perm_b32 v62, v109, v111, 0xc0c0004
	v_perm_b32 v63, v102, v104, 0xc0c0004
	v_perm_b32 v64, v101, v103, 0xc0c0004
	v_perm_b32 v84, v94, v96, 0xc0c0004
	v_perm_b32 v85, v93, v95, 0xc0c0004
	v_perm_b32 v86, v90, v92, 0xc0c0004
	v_perm_b32 v165, v89, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[153:160], v[80:83], v[161:164], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v62, 16, v44
	v_lshl_or_b32 v82, v64, 16, v63
	v_lshl_or_b32 v81, v85, 16, v84
	v_lshl_or_b32 v80, v165, 16, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[22:25], v[80:83], v[153:160] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v24, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v156
	v_cvt_f32_i32_e32 v22, v157
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v158
	v_cvt_f32_i32_e32 v44, v159
	v_cvt_f32_i32_e32 v62, v160
	v_cvt_f32_i32_e32 v63, v153
	v_cvt_f32_i32_e32 v64, v154
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v86, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v68, s44, v68
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v84, v141, v143, 0xc0c0004
	v_mov_b32_e32 v141, 0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v21, s44, v70
	v_add_nc_u32_e32 v69, s44, v69
	v_add_nc_u32_e32 v65, s44, v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v70, v142, v144, 0xc0c0004
	v_mov_b32_e32 v142, v141
	v_mov_b32_e32 v144, v141
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[80:83], v21
	ds_load_b128 v[153:156], v69
	ds_load_b128 v[157:160], v68
	ds_load_b128 v[161:164], v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v21, v150, v152, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v65, v149, v151, 0xc0c0004
	v_perm_b32 v68, v146, v148, 0xc0c0004
	v_perm_b32 v69, v145, v147, 0xc0c0004
	v_perm_b32 v85, v134, v136, 0xc0c0004
	v_perm_b32 v86, v133, v135, 0xc0c0004
	v_lshl_or_b32 v136, v65, 16, v21
	v_lshl_or_b32 v134, v84, 16, v70
	v_lshl_or_b32 v135, v69, 16, v68
	v_mov_b32_e32 v143, v141
	v_lshl_or_b32 v133, v86, 16, v85
	v_mov_b32_e32 v145, v141
	v_mov_b32_e32 v146, v141
	v_mov_b32_e32 v147, v141
	v_mov_b32_e32 v148, v141
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v21, v138, v140, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v65, v137, v139, 0xc0c0004
	v_perm_b32 v68, v130, v132, 0xc0c0004
	v_perm_b32 v69, v129, v131, 0xc0c0004
	v_perm_b32 v70, v123, v127, 0xc0c0004
	v_perm_b32 v84, v121, v124, 0xc0c0004
	v_perm_b32 v85, v115, v119, 0xc0c0004
	v_perm_b32 v86, v113, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[161:164], v[133:136], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v65, 16, v21
	v_lshl_or_b32 v131, v69, 16, v68
	v_lshl_or_b32 v130, v84, 16, v70
	v_lshl_or_b32 v129, v86, 16, v85
	v_perm_b32 v21, v125, v128, 0xc0c0004
	v_perm_b32 v65, v122, v126, 0xc0c0004
	v_perm_b32 v68, v117, v120, 0xc0c0004
	v_perm_b32 v69, v114, v118, 0xc0c0004
	v_perm_b32 v70, v106, v108, 0xc0c0004
	v_perm_b32 v84, v105, v107, 0xc0c0004
	v_perm_b32 v85, v98, v100, 0xc0c0004
	v_perm_b32 v86, v97, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[141:148], v[157:160], v[129:132], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v65, 16, v21
	v_lshl_or_b32 v99, v69, 16, v68
	v_lshl_or_b32 v98, v84, 16, v70
	v_lshl_or_b32 v97, v86, 16, v85
	v_perm_b32 v21, v110, v112, 0xc0c0004
	v_perm_b32 v65, v109, v111, 0xc0c0004
	v_perm_b32 v68, v102, v104, 0xc0c0004
	v_perm_b32 v69, v101, v103, 0xc0c0004
	v_perm_b32 v70, v94, v96, 0xc0c0004
	v_perm_b32 v84, v93, v95, 0xc0c0004
	v_perm_b32 v85, v90, v92, 0xc0c0004
	v_perm_b32 v86, v89, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[97:100], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v65, 16, v21
	v_lshl_or_b32 v91, v69, 16, v68
	v_lshl_or_b32 v90, v84, 16, v70
	v_lshl_or_b32 v89, v86, 16, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[80:83], v[89:92], v[141:148] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v80, v142
	v_cvt_f32_i32_e32 v83, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v84, v144
	v_cvt_f32_i32_e32 v81, v145
	v_cvt_f32_i32_e32 v82, v146
	v_cvt_f32_i32_e32 v85, v147
	v_cvt_f32_i32_e32 v86, v148
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s35, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s35, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v18.h, v87.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v20.h, v78.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v61, v61, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v59, v59, s0, 1
	v_add_lshl_u32 v60, v60, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v58, v58, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v65, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v48, s0, v48, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v57, v61, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v61, 0x80000000, v65 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v68, 0x80000000, v53
	v_dual_cndmask_b32 v65, 0x80000000, v54 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v69, s0, v52, 1
	v_add_lshl_u32 v70, s0, v51, 1
	s_waitcnt lgkmcnt(5)
	v_add_lshl_u32 v89, s0, v50, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v50, v59, s[24:27], 0 offen
	buffer_load_u16 v51, v60, s[24:27], 0 offen
	buffer_load_u16 v52, v58, s[24:27], 0 offen
	buffer_load_u16 v53, v61, s[24:27], 0 offen
	buffer_load_u16 v54, v56, s[24:27], 0 offen
	buffer_load_u16 v55, v55, s[24:27], 0 offen
	buffer_load_u16 v56, v65, s[24:27], 0 offen
	buffer_load_u16 v58, v68, s[24:27], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, 0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v46, s0, v46, 1
	v_add_lshl_u32 v49, s0, v49, 1
	v_add_lshl_u32 v47, s0, v47, 1
	v_add_lshl_u32 v45, s0, v45, 1
	v_dual_cndmask_b32 v59, 0x80000000, v69 :: v_dual_cndmask_b32 v60, 0x80000000, v70
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v65.h, v77.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v74.h, v20.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v76.h, v18.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v18.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v20.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v61, 0x80000000, v89 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_mul_f32 v18, v65, v18
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_mul_f32 v20, v65, v20
	s_clause 0x7
	buffer_load_u16 v59, v59, s[24:27], 0 offen
	buffer_load_u16 v60, v60, s[24:27], 0 offen
	buffer_load_u16 v61, v61, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v49, v49, s[24:27], 0 offen
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	v_mov_b16_e32 v17.h, v88.l
	v_mov_b16_e32 v66.h, v76.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v68.h, v74.l
	v_mov_b16_e32 v73.h, v66.l
	v_mov_b16_e32 v77.h, v17.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v17.l, v65.l
	v_mov_b16_e32 v66.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v68.l, v65.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v19.h, v79.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v67.h, v75.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v69.h, v73.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v70.h, v72.l
	v_mov_b16_e32 v71.h, v71.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v72.h, v67.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v75.h, v19.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v78, 0x5410 :: v_dual_mul_f32 v17, v65, v17
	v_dual_mov_b32 v79, 0x7632 :: v_dual_mul_f32 v66, v65, v66
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v19.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v67.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v69.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v70.l, v65.l
	v_mov_b16_e32 v71.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v72.l, v65.l
	v_mov_b16_e32 v73.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v74.l, v65.l
	v_mov_b16_e32 v75.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v76.l, v65.l
	v_mov_b16_e32 v77.l, v65.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v68, v65, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.h, v65.l
	v_mov_b16_e32 v88.h, v65.l
	v_mov_b16_e32 v89.h, v65.l
	v_mov_b16_e32 v90.h, v65.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v91.h, v65.l
	v_mov_b16_e32 v92.h, v65.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e32 v93.h, v65.l
	v_mov_b16_e32 v94.h, v65.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v65, v19
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v65, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v65, v69
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v65, v71
	v_mul_f32_e32 v70, v65, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v73, v65, v73
	v_mul_f32_e32 v72, v65, v72
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v65, v75
	v_mul_f32_e32 v74, v65, v74
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v77, v65, v77
	v_mul_f32_e32 v65, v65, v76
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v7, v17, v7, v27
	v_fma_f32 v14, v66, v14, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v20, v9, v41
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v18, v16, v42
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v43, v43, s23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v27, v7, s2
	v_cndmask_b32_e64 v14, v38, v14, s2
	v_cndmask_b32_e64 v9, v41, v9, s2
	v_cndmask_b32_e64 v16, v42, v16, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v17, 16, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v68, v5, v36
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v18, 16, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v19, v8, v40
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v20, 16, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v36, v5, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v27, 16, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v72, v1, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v15, v67, v15, v39
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v19, 16, v51
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v70, v10, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v17, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v32, v1, s2
	v_cndmask_b32_e64 v15, v39, v15, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v17, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v34, v10, s2
	v_cndmask_b32_e64 v8, v40, v8, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v24, v5
	v_fma_f32 v18, v18, v63, v8
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v32, 16, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v73, v2, v33
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v34, 16, v61
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v13, v75, v13, v31
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v77, v4, v28
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v65, v3, v29
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v32, v17, v32 :: v_dual_lshlrev_b32 v39, 16, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v28, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v28, 16, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v69, v6, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v29, v3, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v29, 16, v55
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v12, v74, v12, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v17, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v37, v6, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v37, 16, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v33, v2, s2
	v_cndmask_b32_e64 v12, v30, v12, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v30, 16, v56
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v71, v11, v35
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v37, v17, v37
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v33, 16, v60
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v32, v21, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v31, v13, s2
	v_cndmask_b32_e64 v11, v35, v11, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v17, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v28, v22, v1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v31, 16, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v30, v17, v30 :: v_dual_lshlrev_b32 v35, 16, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v37, v82, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v22, s3
	v_cndmask_b32_e64 v8, v8, v18, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v36, v17, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v21, s3
	v_cndmask_b32_e64 v11, v11, v32, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v17, v33
	v_mul_f32_e32 v34, v17, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v20, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v11
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v28, v33, v80, v16
	v_fma_f32 v33, v39, v86, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v28, s3
	v_cndmask_b32_e64 v13, v13, v33, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v17, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v19, v17, v19 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v27, v25, v6
	v_fma_f32 v25, v30, v44, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, v19, v64, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v24, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v19, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v17, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v25, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v24
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v31, v62, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s5
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v17, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v27, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v18
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v13
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v30, v35, v84, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v30, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v17, v29
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v17, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v25
	v_mul_f32_e32 v20, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v29, v23, v2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v85, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v32
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v23, s3
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v29, v34, v83, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s1
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v29, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v15
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v18, v18, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_mul_f32_e32 v19, 0xbfb8aa3b, v14
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v36, v81, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v24, v24, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v31, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v22
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v17
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v19
	v_cndmask_b32_e64 v22, 0, 0x42800000, s3
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s3
	v_ldexp_f32 v20, v20, v28
	v_mul_f32_e32 v21, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v19, 0, 0x42800000, s2
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v38, v48, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v21
	v_ldexp_f32 v17, v17, v27
	v_exp_f32_e32 v22, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v57, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v21, 0, 0x42800000, s4
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v25
	v_div_scale_f32 v27, vcc_lo, v16, v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, s5, v13, v24, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v30
	v_mul_f32_e32 v23, 0xbfb8aa3b, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, null, v20, v20, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v30
	v_fma_f32 v51, -v25, v41, 1.0
	v_div_scale_f32 v34, null, v22, v22, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s6
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	v_ldexp_f32 v21, v21, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v34
	v_div_scale_f32 v31, s1, v15, v20, v15
	v_fma_f32 v53, -v30, v44, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v14
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, s3, v11, v22, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v53, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v34, v46, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v21, v21, v10
	v_div_scale_f32 v37, s4, v10, v21, v10
	v_fmac_f32_e32 v46, v55, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v28, null, v17, v17, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v36
	v_div_scale_f32 v29, s0, v7, v17, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v28
	v_fma_f32 v56, -v36, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v28, v42, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v56, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v52, v42 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v37, v47
	v_mul_f32_e32 v52, v29, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v32, null, v19, v19, v14
	v_fma_f32 v64, -v36, v56, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v28, v52, v29
	v_rcp_f32_e32 v45, v32
	v_fmac_f32_e32 v41, v51, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, s2, v14, v19, v14
	v_dual_fmac_f32 v52, v60, v42 :: v_dual_mul_f32 v51, v27, v41
	v_fmac_f32_e32 v56, v64, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v32, v45, 1.0
	v_fma_f32 v59, -v25, v51, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v54, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v51, v59, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v54, v33, v45
	v_div_scale_f32 v40, null, v23, v23, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v25, v51, v27
	v_div_scale_f32 v50, s6, v12, v23, v12
	v_rcp_f32_e32 v49, v40
	v_fma_f32 v62, -v32, v54, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v41, v51
	v_mul_f32_e32 v53, v31, v44
	v_fma_f32 v27, -v28, v52, v29
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v54, v62, v45
	v_div_fixup_f32 v16, v25, v18, v16
	v_fma_f32 v61, -v30, v53, v31
	v_div_fmas_f32 v27, v27, v42, v52
	v_fma_f32 v58, -v40, v49, 1.0
	v_fma_f32 v29, -v32, v54, v33
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v61, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v7, v27, v17, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.l, v9.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v28, -v30, v53, v31
	v_fma_f32 v31, -v36, v56, v37
	v_mul_f32_e32 v58, v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v28, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v18, v29, v45, v54
	v_fma_f32 v66, -v40, v58, v50
	v_mul_f32_e32 v55, v35, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v28, v20, v15
	v_div_fixup_f32 v14, v18, v19, v14
	v_fmac_f32_e32 v58, v66, v49
	v_fma_f32 v63, -v34, v55, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v40, v58, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v63, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v89.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v34, v55, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v30, v46, v55
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v16, v31, v47, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v11, v17, v22, v11
	v_mul_f32_e32 v57, v39, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v16, v21, v10
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v38, v57, v39
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v91.l, v2.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v65, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v92.l, v1.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v8, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v1, v1
	v_mov_b16_e32 v88.l, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v7, v7
	v_and_b32_e32 v10, 1, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v7, v7, v10, 0x7fff
	v_and_b32_e32 v10, 1, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v38, v57, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v8, v32, v48, v57
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v15, v33, v49, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v8, v24, v13
	v_div_fixup_f32 v11, v15, v23, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v12, 1, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v89
	v_mov_b16_e32 v93.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v6, v8, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v4, v4
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v94.l, v3.h
	v_and_b32_e32 v10, 1, v94
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v9, v12, 0x7fff
	v_and_b32_e32 v12, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v8.h, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v1, v1, v12, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s4
	v_and_b32_e32 v1, 1, v93
	v_cndmask_b32_e32 v7, 0x1054, v78, vcc_lo
	v_cndmask_b32_e32 v9, 0x3276, v79, vcc_lo
	v_add3_u32 v1, v4, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v7, 8, v7
	v_lshl_or_b32 v7, v9, 8, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v90.l, v5.h
	v_cmp_o_f32_e64 s2, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v90
	v_add3_u32 v0, v5, v11, 0x7fff
	v_dual_cndmask_b32 v5, v2, v8 :: v_dual_cndmask_b32 v2, v8, v2
	v_cmp_o_f32_e64 s0, v3, v3
	v_add3_u32 v3, v3, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v6.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_and_b32_e32 v1, 0x540054, v4
	v_and_b32_e32 v4, 0x760076, v7
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	s_mov_b32 s0, 0x76543210
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_and_or_b32 v8, 0x78, v26, s33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v3, v4, 4, v4
	v_cndmask_b32_e32 v4, v6, v0, vcc_lo
	v_cndmask_b32_e32 v6, v0, v6, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v1
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v2, v5, v7
	v_perm_b32 v1, v2, v5, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v4, v6, v7
	v_perm_b32 v3, v4, v6, v3
	v_add_lshl_u32 v4, v8, v43, 1
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 212
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16228
; TotalNumSgprs: 50
; NumVgprs: 212
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     212
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
