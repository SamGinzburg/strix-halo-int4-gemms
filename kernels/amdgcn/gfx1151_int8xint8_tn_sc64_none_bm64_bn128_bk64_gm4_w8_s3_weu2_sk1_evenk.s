	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s5, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v66, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	s_load_b256 s[20:27], s[0:1], 0x0
	v_lshrrev_b32_e32 v21, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 48, v66
	v_and_b32_e32 v5, 62, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v11, v0, 0, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v59, 0, v66
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v12, 48, v21
	v_and_b32_e32 v67, 8, v0
	v_and_b32_e32 v68, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 0x420, v11
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s30, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v8, s30, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s4
	s_mov_b64 s[16:17], s[26:27]
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_mov_b64 s[12:13], s[22:23]
	s_cselect_b32 s6, s11, s7
	s_mov_b32 s23, 0x31027000
	s_xor_b32 s6, s6, s10
	s_mov_b32 s22, 0x7ffffffe
	s_sub_i32 s6, s6, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s15, s23
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s8, s6, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s6, s6, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s9, s8
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s6
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s9, s7, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s7, s9
	s_xor_b32 s6, s2, s9
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s11, 0, s7
	s_ashr_i32 s6, s6, 31
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[6:7], null, s31, v5, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s11
	s_abs_i32 s11, s2
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s4, s7
	s_sub_i32 s10, s11, s10
	s_add_i32 s11, s4, 1
	s_sub_i32 s14, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s10, s14, s10
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s10, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s14, s22
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s11, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s18, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s7, s4, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s5, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s7, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s5, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s9, s4, s9
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s9
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s30, s18
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s8, s31, s18
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v6, s33, s8, v6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 26
.Ltmp17:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v7, v8, v2, s34
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s8, s5, s2
.Ltmp19:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s31, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v6, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s19, s31, 6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v10, s[12:15], 0 offen
	buffer_load_b128 v[29:32], v9, s[12:15], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s19, v6
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s35, s30, 6
	v_add_nc_u32_e32 v8, s4, v7
	v_add3_u32 v7, s4, s35, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 6, v0
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s31, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_mov_b32 s4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	s_clause 0x1
	buffer_load_b128 v[33:36], v6, s[12:15], 0 offen
	buffer_load_b128 v[37:40], v9, s[12:15], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x1
	buffer_load_b128 v[41:44], v8, s[20:23], 0 offen
	buffer_load_b128 v[50:53], v7, s[20:23], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	v_lshrrev_b32_e32 v8, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v9, 4, v0
	v_lshlrev_b32_e32 v7, 5, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v47, v8, 16, v6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v8, v9, 1, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v9, v11, v5
	v_lshlrev_b32_e32 v6, 3, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v49, 32, v47
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 2, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v69, v10, 10, v9
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 4, v8
	v_or_b32_e32 v14, 6, v8
	v_or_b32_e32 v15, 8, v8
	v_or_b32_e32 v16, 10, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v70, 0x90, v69
	v_xor_b32_e32 v71, 0x120, v69
	v_xor_b32_e32 v72, 0x1b0, v69
	v_xor_b32_e32 v73, 0x210, v69
	v_xor_b32_e32 v74, 0x330, v69
	v_xor_b32_e32 v75, 0x3a0, v69
	v_add_nc_u32_e32 v60, 0, v69
	v_add_nc_u32_e32 v61, 0, v70
	v_add_nc_u32_e32 v62, 0, v71
	v_add_nc_u32_e32 v63, 0, v72
	v_add_nc_u32_e32 v64, 0, v73
	v_add_nc_u32_e32 v65, 0, v74
	v_add_nc_u32_e32 v76, 0, v75
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v17, 12, v8
	v_or_b32_e32 v18, 14, v8
	v_or_b32_e32 v19, 64, v8
	v_or_b32_e32 v20, 0x42, v8
	v_or_b32_e32 v22, 0x44, v8
	v_or_b32_e32 v23, 0x46, v8
	v_or_b32_e32 v24, 0x48, v8
	v_or_b32_e32 v9, 0x4a, v8
	v_or_b32_e32 v10, 0x4c, v8
	v_or_b32_e32 v11, 0x4e, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v45, v29, v25, 0x5010400
	v_perm_b32 v29, v29, v25, 0x7030602
	v_perm_b32 v46, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_perm_b32 v48, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v54, v32, v28, 0x5010400
	v_perm_b32 v55, v32, v28, 0x7030602
	v_lshrrev_b32_e32 v56, 8, v45
	v_lshrrev_b32_e32 v57, 24, v45
	v_lshrrev_b32_e32 v77, 24, v29
	v_lshrrev_b32_e32 v58, 8, v29
	v_lshrrev_b32_e32 v78, 8, v46
	v_lshrrev_b32_e32 v79, 24, v46
	v_lshrrev_b32_e32 v80, 8, v30
	v_lshrrev_b32_e32 v81, 24, v30
	v_lshrrev_b32_e32 v82, 8, v48
	v_lshrrev_b32_e32 v83, 24, v48
	v_lshrrev_b32_e32 v84, 8, v31
	v_lshrrev_b32_e32 v85, 24, v31
	v_lshrrev_b32_e32 v86, 8, v54
	v_lshrrev_b32_e32 v87, 24, v54
	v_lshrrev_b32_e32 v88, 8, v55
	v_lshrrev_b32_e32 v89, 24, v55
	v_and_b16 v25.l, 0xff, v45.l
	v_and_b16 v25.h, 0xff, v45.h
	v_and_b16 v27.h, 0xff, v46.h
	v_lshlrev_b16 v45.l, 8, v56.l
	v_lshlrev_b16 v45.h, 8, v57.l
	v_lshlrev_b16 v46.h, 8, v77.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v77, v37, v33, 0x5010400
	v_and_b16 v26.l, 0xff, v29.l
	v_and_b16 v26.h, 0xff, v29.h
	v_and_b16 v27.l, 0xff, v46.l
	v_lshlrev_b16 v46.l, 8, v58.l
	v_and_b16 v29.l, 0xff, v48.l
	v_and_b16 v29.h, 0xff, v48.h
	v_lshlrev_b16 v48.l, 8, v78.l
	v_lshlrev_b16 v48.h, 8, v79.l
	v_perm_b32 v37, v37, v33, 0x7030602
	v_and_b16 v28.l, 0xff, v30.l
	v_and_b16 v28.h, 0xff, v30.h
	v_and_b16 v30.l, 0xff, v31.l
	v_and_b16 v30.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v54.l
	v_and_b16 v31.h, 0xff, v54.h
	v_lshlrev_b16 v54.l, 8, v80.l
	v_lshlrev_b16 v54.h, 8, v81.l
	v_and_b16 v32.l, 0xff, v55.l
	v_and_b16 v32.h, 0xff, v55.h
	v_lshlrev_b16 v55.l, 8, v82.l
	v_lshlrev_b16 v55.h, 8, v83.l
	v_lshlrev_b16 v56.l, 8, v84.l
	v_lshlrev_b16 v56.h, 8, v85.l
	v_lshlrev_b16 v57.l, 8, v86.l
	v_lshlrev_b16 v57.h, 8, v87.l
	v_lshlrev_b16 v58.l, 8, v88.l
	v_lshlrev_b16 v58.h, 8, v89.l
	v_perm_b32 v78, v38, v34, 0x5010400
	v_perm_b32 v38, v38, v34, 0x7030602
	v_perm_b32 v79, v39, v35, 0x5010400
	v_perm_b32 v39, v39, v35, 0x7030602
	v_perm_b32 v80, v40, v36, 0x5010400
	v_perm_b32 v81, v40, v36, 0x7030602
	v_or_b16 v25.l, v25.l, v45.l
	v_or_b16 v25.h, v25.h, v45.h
	v_lshrrev_b32_e32 v45, 8, v77
	v_or_b16 v26.l, v26.l, v46.l
	v_or_b16 v26.h, v26.h, v46.h
	v_lshrrev_b32_e32 v46, 24, v77
	v_or_b16 v27.l, v27.l, v48.l
	v_or_b16 v27.h, v27.h, v48.h
	v_lshrrev_b32_e32 v48, 8, v37
	v_or_b16 v28.l, v28.l, v54.l
	v_or_b16 v28.h, v28.h, v54.h
	v_lshrrev_b32_e32 v54, 24, v37
	v_or_b16 v29.l, v29.l, v55.l
	v_or_b16 v29.h, v29.h, v55.h
	v_or_b16 v30.l, v30.l, v56.l
	v_or_b16 v30.h, v30.h, v56.h
	v_or_b16 v31.l, v31.l, v57.l
	v_or_b16 v31.h, v31.h, v57.h
	v_or_b16 v32.l, v32.l, v58.l
	v_or_b16 v32.h, v32.h, v58.h
	v_and_b16 v33.l, 0xff, v77.l
	v_and_b16 v33.h, 0xff, v77.h
	v_and_b16 v34.l, 0xff, v37.l
	v_and_b16 v34.h, 0xff, v37.h
	v_and_b16 v35.l, 0xff, v78.l
	v_lshrrev_b32_e32 v55, 8, v78
	v_lshrrev_b32_e32 v56, 24, v78
	v_and_b16 v35.h, 0xff, v78.h
	v_and_b16 v36.l, 0xff, v38.l
	v_lshrrev_b32_e32 v57, 8, v38
	v_lshrrev_b32_e32 v58, 24, v38
	v_and_b16 v36.h, 0xff, v38.h
	v_and_b16 v37.l, 0xff, v79.l
	v_lshrrev_b32_e32 v77, 8, v79
	v_lshrrev_b32_e32 v78, 24, v79
	v_and_b16 v37.h, 0xff, v79.h
	v_and_b16 v38.l, 0xff, v39.l
	v_lshrrev_b32_e32 v79, 8, v39
	v_lshrrev_b32_e32 v82, 24, v39
	v_and_b16 v38.h, 0xff, v39.h
	v_and_b16 v39.l, 0xff, v80.l
	v_lshrrev_b32_e32 v83, 8, v80
	v_lshrrev_b32_e32 v84, 24, v80
	v_and_b16 v39.h, 0xff, v80.h
	v_lshrrev_b32_e32 v80, 8, v81
	v_lshrrev_b32_e32 v85, 24, v81
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v59, v[41:44] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v25
	ds_store_b16_d16_hi v60, v25 offset:64
	ds_store_b16 v61, v26
	ds_store_b16_d16_hi v61, v26 offset:64
	ds_store_b16 v62, v27
	ds_store_b16_d16_hi v62, v27 offset:64
	ds_store_b16 v63, v28
	ds_store_b16_d16_hi v63, v28 offset:64
	ds_store_b16 v64, v29
	ds_store_b16_d16_hi v64, v29 offset:64
	ds_store_b16 v60, v30 offset:640
	ds_store_b16_d16_hi v60, v30 offset:704
	ds_store_b16 v65, v31
	ds_store_b16_d16_hi v65, v31 offset:64
	ds_store_b16 v76, v32
	ds_store_b16_d16_hi v76, v32 offset:64
	v_lshlrev_b16 v25.l, 8, v45.l
	v_lshlrev_b16 v25.h, 8, v46.l
	v_lshlrev_b16 v26.l, 8, v48.l
	v_lshlrev_b16 v26.h, 8, v54.l
	v_and_b16 v40.l, 0xff, v81.l
	v_and_b16 v40.h, 0xff, v81.h
	v_lshlrev_b16 v27.l, 8, v55.l
	v_lshlrev_b16 v27.h, 8, v56.l
	v_lshlrev_b16 v28.l, 8, v57.l
	v_lshlrev_b16 v28.h, 8, v58.l
	v_lshlrev_b16 v29.l, 8, v77.l
	v_lshlrev_b16 v29.h, 8, v78.l
	v_lshlrev_b16 v30.l, 8, v79.l
	v_lshlrev_b16 v30.h, 8, v82.l
	v_lshlrev_b16 v31.l, 8, v83.l
	v_lshlrev_b16 v31.h, 8, v84.l
	v_lshlrev_b16 v32.l, 8, v80.l
	v_lshlrev_b16 v32.h, 8, v85.l
	v_or_b16 v25.l, v33.l, v25.l
	v_or_b16 v25.h, v33.h, v25.h
	v_or_b16 v26.l, v34.l, v26.l
	v_or_b16 v26.h, v34.h, v26.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.l, v35.l, v27.l
	v_or_b16 v27.h, v35.h, v27.h
	v_or_b16 v28.l, v36.l, v28.l
	v_or_b16 v28.h, v36.h, v28.h
	v_or_b16 v29.l, v37.l, v29.l
	v_or_b16 v29.h, v37.h, v29.h
	v_or_b16 v30.l, v38.l, v30.l
	v_or_b16 v30.h, v38.h, v30.h
	v_or_b16 v31.l, v39.l, v31.l
	v_or_b16 v31.h, v39.h, v31.h
	v_or_b16 v32.l, v40.l, v32.l
	v_or_b16 v32.h, v40.h, v32.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v59, v[50:53] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v25 offset:8192
	ds_store_b16_d16_hi v60, v25 offset:8256
	ds_store_b16 v61, v26 offset:8192
	ds_store_b16_d16_hi v61, v26 offset:8256
	ds_store_b16 v62, v27 offset:8192
	ds_store_b16_d16_hi v62, v27 offset:8256
	ds_store_b16 v63, v28 offset:8192
	ds_store_b16_d16_hi v63, v28 offset:8256
	ds_store_b16 v64, v29 offset:8192
	ds_store_b16_d16_hi v64, v29 offset:8256
	ds_store_b16 v60, v30 offset:8832
	ds_store_b16_d16_hi v60, v30 offset:8896
	ds_store_b16 v65, v31 offset:8192
	ds_store_b16_d16_hi v65, v31 offset:8256
	ds_store_b16 v76, v32 offset:8192
	ds_store_b16_d16_hi v76, v32 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v78, 8, v0
	v_and_b32_e32 v79, 32, v0
	v_and_b32_e32 v76, 0x800, v7
	v_lshl_or_b32 v77, v4, 6, v6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s5, s18, 64
	s_mov_b32 s9, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr5
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
.LBB0_3:                                ; %Flow169
	s_load_b64 s[28:29], s[0:1], 0x20
	v_or_b32_e32 v25, s34, v47
	v_or_b32_e32 v26, s34, v49
	s_ashr_i32 s0, s8, 6
	v_or_b32_e32 v63, s33, v8
	v_or_b32_e32 v62, s33, v12
	v_mul_lo_u32 v64, v25, s0
	v_mul_lo_u32 v65, v26, s0
	v_or_b32_e32 v61, s33, v13
	v_or_b32_e32 v60, s33, v14
	v_or_b32_e32 v59, s33, v15
	v_or_b32_e32 v58, s33, v16
	v_or_b32_e32 v57, s33, v17
	v_or_b32_e32 v56, s33, v18
	v_or_b32_e32 v55, s33, v19
	v_or_b32_e32 v54, s33, v20
	v_or_b32_e32 v53, s33, v22
	v_or_b32_e32 v52, s33, v23
	v_or_b32_e32 v50, s33, v24
	v_or_b32_e32 v51, s33, v9
	v_or_b32_e32 v22, s33, v10
	v_or_b32_e32 v23, s33, v11
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v8, v0, 5, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v5, s18, v5
	v_bfe_i32 v9, v0, 3, 1
	v_and_b32_e32 v76, 0x800, v7
	v_lshl_or_b32 v77, v4, 6, v6
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v7, 0x420, v8
	v_add_nc_u32_e32 v6, 0x81, v5
	v_add_nc_u32_e32 v5, 0x80, v5
	v_add3_u32 v3, s18, v3, 0x80
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v4, 0x210, v9, v7
	s_lshl_b32 s1, s7, 7
	v_mul_lo_u32 v6, s31, v6
	v_mul_lo_u32 v5, s31, v5
	v_mul_lo_u32 v3, s30, v3
	v_xor_b32_e32 v4, v4, v77
	s_lshl_b32 s4, s6, 7
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v15, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b32_e32 v78, v4, v76
	v_add3_u32 v4, v6, s1, v1
	v_add3_u32 v1, v5, s1, v1
	v_add3_u32 v84, v3, s34, v2
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_subrev_nc_u32_e32 v82, s4, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v83, s4, v1
	s_mov_b32 s4, 0
	v_xor_b32_e32 v79, 16, v78
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s1, s0, 3
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	s_add_i32 s26, s1, -2
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s30, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_mov_b32 s27, 1
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v133, s44, v47
	buffer_load_b128 v[9:12], v84, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v85, s4, v78
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v86, v133 offset:832
	ds_load_u8 v87, v133 offset:768
	ds_load_u8 v88, v133 offset:960
	ds_load_u8 v89, v133 offset:896
	ds_load_u8 v90, v133 offset:576
	ds_load_u8 v91, v133 offset:512
	ds_load_u8 v92, v133 offset:704
	ds_load_u8 v94, v133 offset:640
	ds_load_u8 v95, v133 offset:320
	ds_load_u8 v96, v133 offset:256
	ds_load_u8 v97, v133 offset:448
	ds_load_u8 v98, v133 offset:384
	ds_load_u8 v99, v133 offset:64
	ds_load_u8 v100, v133
	ds_load_u8 v101, v133 offset:192
	ds_load_u8 v102, v133 offset:128
	ds_load_u8 v103, v133 offset:1856
	ds_load_u8 v104, v133 offset:1792
	ds_load_u8 v105, v133 offset:1984
	ds_load_u8 v106, v133 offset:1920
	ds_load_u8 v107, v133 offset:1600
	ds_load_u8 v108, v133 offset:1536
	ds_load_u8 v113, v133 offset:1728
	ds_load_u8 v114, v133 offset:1664
	ds_load_u8 v117, v133 offset:1344
	ds_load_u8 v118, v133 offset:1280
	ds_load_u8 v119, v133 offset:1472
	ds_load_u8 v120, v133 offset:1408
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v133 offset:1088
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v133 offset:1216
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v92, v94, v92, 0xc0c0004
	ds_load_u8 v94, v133 offset:1152
	ds_load_u8 v89, v133 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v97, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v98, v102, v101, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v93, s4, v79
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v99, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v100, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v105, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v121, v118, v117, 0xc0c0004
	v_perm_b32 v106, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v122, v120, v119, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v85 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v104, v88, 16, v86
	v_lshl_or_b32 v103, v92, 16, v90
	v_lshl_or_b32 v102, v96, 16, v95
	v_lshl_or_b32 v101, v98, 16, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v85, v94, v91, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v87, v89, v87, 0xc0c0004
	v_lshl_or_b32 v108, v100, 16, v99
	v_lshl_or_b32 v107, v106, 16, v105
	v_lshl_or_b32 v106, v122, 16, v121
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[121:124], v93 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v105, v85, 16, v87
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[109:112], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_mov_b32 s5, s18
	s_mov_b32 s44, s30
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[117:120], v[101:104], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v101, v133 offset:864
	ds_load_u8 v102, v133 offset:800
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[113:116], v[105:108], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[121:124], v[105:108], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v133 offset:992
	ds_load_u8 v103, v133 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v133 offset:608
	ds_load_u8 v104, v133 offset:544
	v_lshl_or_b32 v128, v102, 16, v101
	ds_load_u8 v101, v133 offset:352
	ds_load_u8 v102, v133 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v133 offset:736
	ds_load_u8 v105, v133 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v104, 16, v103
	ds_load_u8 v102, v133 offset:480
	ds_load_u8 v103, v133 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v126, v102, 16, v101
	ds_load_u8 v101, v133 offset:32
	ds_load_u8 v102, v133 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v102, 0xc0c0004
	ds_load_u8 v102, v133 offset:224
	ds_load_u8 v103, v133 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v102, 16, v101
	ds_load_u8 v101, v133 offset:1888
	ds_load_u8 v102, v133 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v133 offset:2016
	ds_load_u8 v103, v133 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v133 offset:1632
	ds_load_u8 v104, v133 offset:1568
	v_lshl_or_b32 v132, v102, 16, v101
	ds_load_u8 v101, v133 offset:1376
	ds_load_u8 v102, v133 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v133 offset:1760
	ds_load_u8 v105, v133 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v131, v104, 16, v103
	ds_load_u8 v102, v133 offset:1504
	ds_load_u8 v103, v133 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v130, v102, 16, v101
	ds_load_u8 v101, v133 offset:1120
	ds_load_u8 v102, v133 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v133 offset:1248
	ds_load_u8 v103, v133 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v102, 16, v101
	v_wmma_i32_16x16x16_iu8 v[101:108], v[109:112], v[125:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[113:116], v[129:132], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[117:120], v[125:128], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v117, v133 offset:2880
	ds_load_u8 v118, v133 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v125, s4, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[109:116], v[121:124], v[129:132], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:3008
	ds_load_u8 v119, v133 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v133 offset:2624
	ds_load_u8 v120, v133 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v133 offset:2752
	ds_load_u8 v121, v133 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v133 offset:2368
	ds_load_u8 v118, v133 offset:2304
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:2496
	ds_load_u8 v121, v133 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v133 offset:2112
	ds_load_u8 v121, v133 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v133 offset:2240
	ds_load_u8 v122, v133 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[121:124], v125
	ds_load_b128 v[125:128], v125 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[121:124], v[117:120], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[125:128], v[117:120], v[93:100] neg_lo:[1,1,0]
	ds_load_u8 v117, v133 offset:2912
	ds_load_u8 v118, v133 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:3040
	ds_load_u8 v119, v133 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v133 offset:2656
	ds_load_u8 v120, v133 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v133 offset:2784
	ds_load_u8 v129, v133 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v133 offset:2400
	ds_load_u8 v118, v133 offset:2336
	v_lshl_or_b32 v119, v129, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:2528
	ds_load_u8 v129, v133 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v129, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v133 offset:2144
	ds_load_u8 v129, v133 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v129, v117, 0xc0c0004
	ds_load_u8 v129, v133 offset:2272
	ds_load_u8 v130, v133 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v129, 16, v117
	v_wmma_i32_16x16x16_iu8 v[101:108], v[121:124], v[117:120], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[125:128], v[117:120], v[109:116] neg_lo:[1,1,0]
	ds_load_u8 v117, v133 offset:3904
	ds_load_u8 v118, v133 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v125, s4, v81
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 26
	s_add_i32 s4, s18, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 6
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s6, s4, s31
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v134, v56, s6, 1
	v_add_lshl_u32 v135, v55, s6, 1
	v_add_lshl_u32 v136, v54, s6, 1
	v_add_lshl_u32 v137, v53, s6, 1
	v_add_lshl_u32 v138, v52, s6, 1
	v_add_lshl_u32 v139, v50, s6, 1
	v_add_lshl_u32 v140, v51, s6, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:4032
	ds_load_u8 v119, v133 offset:3968
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v141, v22, s6, 1
	v_add_lshl_u32 v142, v23, s6, 1
	v_dual_cndmask_b32 v134, 0x80000000, v134 :: v_dual_cndmask_b32 v137, 0x80000000, v137
	v_dual_cndmask_b32 v136, 0x80000000, v136 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v138, 0x80000000, v138 :: v_dual_cndmask_b32 v141, 0x80000000, v141
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s27, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s7, 2
	s_cselect_b32 s27, s7, 0
	s_add_i32 s26, s26, -1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s7, s27, 12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s18, 64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v133 offset:3648
	ds_load_u8 v120, v133 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v133 offset:3776
	ds_load_u8 v121, v133 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v133 offset:3392
	ds_load_u8 v118, v133 offset:3328
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:3520
	ds_load_u8 v121, v133 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v133 offset:3136
	ds_load_u8 v121, v133 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v133 offset:3264
	ds_load_u8 v122, v133 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[121:124], v125
	ds_load_b128 v[125:128], v125 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[121:124], v[117:120], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[125:128], v[117:120], v[93:100] neg_lo:[1,1,0]
	ds_load_u8 v117, v133 offset:3936
	ds_load_u8 v118, v133 offset:3872
	v_cvt_f32_i32_e32 v131, v99
	v_cvt_f32_i32_e32 v132, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:4064
	ds_load_u8 v119, v133 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v133 offset:3680
	ds_load_u8 v120, v133 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v133 offset:3808
	ds_load_u8 v129, v133 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v133 offset:3424
	ds_load_u8 v118, v133 offset:3360
	v_lshl_or_b32 v119, v129, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v133 offset:3552
	ds_load_u8 v129, v133 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v129, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v133 offset:3168
	ds_load_u8 v129, v133 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v129, v117, 0xc0c0004
	ds_load_u8 v129, v133 offset:3296
	ds_load_u8 v130, v133 offset:3232
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v133, v57, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v133, 0x80000000, v133, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_cvt_f32_i32_e32 v130, v98
	v_lshl_or_b32 v117, v129, 16, v117
	v_cvt_f32_i32_e32 v129, v97
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[121:124], v[117:120], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[125:128], v[117:120], v[109:116] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v117, v85
	v_cvt_f32_i32_e32 v118, v86
	v_cvt_f32_i32_e32 v119, v87
	v_cvt_f32_i32_e32 v120, v88
	v_cvt_f32_i32_e32 v121, v89
	v_cvt_f32_i32_e32 v122, v90
	v_cvt_f32_i32_e32 v125, v93
	v_cvt_f32_i32_e32 v128, v96
	v_cvt_f32_i32_e32 v93, v102
	v_cvt_f32_i32_e32 v96, v101
	v_cvt_f32_i32_e32 v85, v104
	v_cvt_f32_i32_e32 v86, v103
	v_cvt_f32_i32_e32 v87, v106
	v_cvt_f32_i32_e32 v88, v105
	v_cvt_f32_i32_e32 v89, v108
	v_cvt_f32_i32_e32 v90, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[101:104], v83, s[12:15], 0 offen
	buffer_load_b128 v[105:108], v82, s[12:15], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v127, v95
	v_cvt_f32_i32_e32 v95, v111
	v_cvt_f32_i32_e32 v123, v91
	v_cvt_f32_i32_e32 v124, v92
	v_cvt_f32_i32_e32 v91, v110
	v_cvt_f32_i32_e32 v92, v109
	v_cvt_f32_i32_e32 v126, v94
	v_cvt_f32_i32_e32 v94, v112
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v112, v62, s6, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v113
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v113, v61, s6, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v114
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v114, v60, s6, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v116
	v_cvt_f32_i32_e32 v100, v115
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v115, v59, s6, 1
	v_add_lshl_u32 v116, v58, s6, 1
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_cndmask_b32 v113, 0x80000000, v113
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v115, 0x80000000, v115 :: v_dual_cndmask_b32 v116, 0x80000000, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v83, s19, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v111, v107, v103, 0x5010400
	v_perm_b32 v107, v107, v103, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v103, v64, s4, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v109, v105, v101, 0x5010400
	v_perm_b32 v105, v105, v101, 0x7030602
	v_perm_b32 v110, v106, v102, 0x5010400
	v_perm_b32 v106, v106, v102, 0x7030602
	v_perm_b32 v102, v108, v104, 0x5010400
	v_perm_b32 v101, v108, v104, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v104, v65, s4, 1
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v108, v63, s6, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s6, s7, 0
	s_mov_b32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	s_clause 0x1
	buffer_load_u16 v143, v103, s[36:39], 0 offen
	buffer_load_u16 v103, v104, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	s_clause 0xf
	buffer_load_u16 v104, v108, s[40:43], 0 offen
	buffer_load_u16 v108, v112, s[40:43], 0 offen
	buffer_load_u16 v112, v113, s[40:43], 0 offen
	buffer_load_u16 v113, v114, s[40:43], 0 offen
	buffer_load_u16 v114, v115, s[40:43], 0 offen
	buffer_load_u16 v115, v116, s[40:43], 0 offen
	buffer_load_u16 v116, v133, s[40:43], 0 offen
	buffer_load_u16 v133, v134, s[40:43], 0 offen
	buffer_load_u16 v134, v135, s[40:43], 0 offen
	buffer_load_u16 v135, v136, s[40:43], 0 offen
	buffer_load_u16 v136, v137, s[40:43], 0 offen
	buffer_load_u16 v137, v138, s[40:43], 0 offen
	buffer_load_u16 v138, v139, s[40:43], 0 offen
	buffer_load_u16 v139, v140, s[40:43], 0 offen
	buffer_load_u16 v140, v141, s[40:43], 0 offen
	buffer_load_u16 v141, v142, s[40:43], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v142, s6, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s6, s7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s30, s6, 0x4000
	ds_store_b128 v142, v[9:12] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v109
	v_and_b16 v9.h, 0xff, v109.l
	v_lshrrev_b32_e32 v10, 24, v109
	v_lshrrev_b32_e32 v11, 24, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s26, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshlrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v109.h
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v105
	v_and_b16 v10.h, 0xff, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v105.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v142, 16, v143
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s1, v69
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v11, v9 offset:64
	v_add_nc_u32_e32 v9, s1, v70
	ds_store_b16 v9, v10
	ds_store_b16_d16_hi v9, v10 offset:64
	v_lshrrev_b32_e32 v9, 8, v110
	v_and_b16 v9.h, 0xff, v110.l
	v_lshrrev_b32_e32 v10, 24, v110
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v110.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v110, 16, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.h, v9.h, v10.l
	v_add_nc_u32_e32 v10, s1, v71
	ds_store_b16 v10, v9
	ds_store_b16_d16_hi v10, v9 offset:64
	v_lshrrev_b32_e32 v9, 8, v106
	v_and_b16 v9.h, 0xff, v106.l
	v_lshrrev_b32_e32 v10, 24, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v106.h
	v_or_b16 v9.h, v9.h, v10.l
	v_add_nc_u32_e32 v10, s1, v72
	ds_store_b16 v10, v9
	ds_store_b16_d16_hi v10, v9 offset:64
	v_lshrrev_b32_e32 v9, 8, v111
	v_and_b16 v9.h, 0xff, v111.l
	v_lshrrev_b32_e32 v10, 24, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v111.h
	v_or_b16 v9.h, v9.h, v10.l
	v_add_nc_u32_e32 v10, s1, v73
	ds_store_b16 v10, v9
	ds_store_b16_d16_hi v10, v9 offset:64
	v_lshrrev_b32_e32 v9, 8, v107
	v_and_b16 v9.h, 0xff, v107.l
	v_lshrrev_b32_e32 v10, 24, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v107.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v107, 16, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v82, s19, v82
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.h, v9.h, v10.l
	ds_store_b16 v11, v9 offset:640
	ds_store_b16_d16_hi v11, v9 offset:704
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v110, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v24, v9, v117 :: v_dual_mul_f32 v9, v107, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v107, v103, v107 :: v_dual_fmac_f32 v48, v9, v118
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v9, 16, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v43, v107, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v93.l, 0xff, v102.l
	v_lshrrev_b32_e32 v107, 24, v102
	v_and_b16 v93.h, 0xff, v102.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v9, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v44, v10, v119
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v10, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v10, v142
	v_mul_f32_e32 v110, v103, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v46, v11, v120 :: v_dual_lshlrev_b32 v11, 16, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v110, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v96, 8, v102
	v_lshrrev_b32_e32 v102, 8, v101
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v11, v142
	v_dual_mul_f32 v9, v103, v9 :: v_dual_add_nc_u32 v84, s35, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v96.l, 8, v96.l
	v_lshlrev_b16 v96.h, 8, v102.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v40, v12, v121
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v12, 16, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v102, 24, v101
	v_or_b16 v93.l, v93.l, v96.l
	v_lshlrev_b16 v96.l, 8, v107.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v41, v9, v86
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v104, v12, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v93.h, v93.h, v96.l
	v_and_b16 v96.l, 0xff, v101.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v42, v104, v122
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v104, 16, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v101.l, 8, v102.l
	v_or_b16 v96.l, v96.l, v96.h
	v_and_b16 v96.h, 0xff, v101.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v105, v104, v142
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v96.h, v96.h, v101.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v36, v105, v123 :: v_dual_lshlrev_b32 v105, 16, v133
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v106, v105, v142 :: v_dual_add_nc_u32 v101, s1, v75
	v_mul_f32_e32 v102, v103, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v38, v106, v124
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v106, 16, v134
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v108, v106, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v32, v108, v125
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v108, 16, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v109, v108, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v105, v103, v108 :: v_dual_fmac_f32 v34, v109, v126
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v109, 16, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v27, v105, v91
	v_fmac_f32_e32 v31, v102, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v111, v109, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v28, v111, v127 :: v_dual_lshlrev_b32 v111, 16, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v111, v142
	v_dual_mul_f32 v107, v103, v111 :: v_dual_fmac_f32 v30, v112, v128
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v112, 16, v138
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v110, s1, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v25, v107, v94
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v113, v112, v142
	v_mul_f32_e32 v111, v103, v112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v110, v93
	ds_store_b16_d16_hi v110, v93 offset:64
	ds_store_b16 v101, v96
	ds_store_b16_d16_hi v101, v96 offset:64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v20, v113, v129 :: v_dual_lshlrev_b32 v113, 16, v139
	v_fmac_f32_e32 v18, v111, v98
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v106, v103, v106
	v_mul_f32_e32 v10, v103, v10
	v_mul_f32_e32 v108, v103, v109
	v_dual_mul_f32 v114, v113, v142 :: v_dual_mul_f32 v109, v103, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v29, v106, v92
	v_fmac_f32_e32 v39, v10, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v103, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v19, v114, v130 :: v_dual_lshlrev_b32 v114, 16, v140
	v_dual_fmac_f32 v17, v109, v97 :: v_dual_fmac_f32 v26, v108, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v11, v88
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v115, v114, v142 :: v_dual_mul_f32 v104, v103, v104
	v_mul_f32_e32 v12, v103, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v15, v115, v131
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v115, 16, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v33, v104, v90
	v_dual_fmac_f32 v35, v12, v87 :: v_dual_mul_f32 v116, v115, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v103, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v103, v103, v114 :: v_dual_fmac_f32 v14, v116, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v13, v112, v99 :: v_dual_fmac_f32 v16, v103, v100
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v78, v67 :: v_dual_mov_b32 v79, v68
	s_addk_i32 s5, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v24, 0
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s30, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v78
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v79
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v1, v2
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v2, 0
	v_xor_b32_e32 v1, v1, v77
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v79, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v111, v1, v76
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v87, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_xor_b32_e32 v112, 16, v111
	v_xor_b32_e32 v114, 32, v111
	v_xor_b32_e32 v116, 48, v111
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_add_nc_u32_e32 v11, s44, v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v76, v11 offset:576
	ds_load_u8 v77, v11 offset:512
	ds_load_u8 v80, v11 offset:704
	ds_load_u8 v81, v11 offset:640
	ds_load_u8 v82, v11 offset:320
	ds_load_u8 v83, v11 offset:256
	ds_load_u8 v84, v11 offset:448
	ds_load_u8 v85, v11 offset:384
	ds_load_u8 v86, v11 offset:64
	ds_load_u8 v87, v11
	ds_load_u8 v88, v11 offset:192
	ds_load_u8 v89, v11 offset:128
	ds_load_u8 v109, v11 offset:992
	ds_load_u8 v110, v11 offset:928
	ds_load_u8 v113, v11 offset:864
	ds_load_u8 v115, v11 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v5, s4, v116
	v_add_nc_u32_e32 v10, s4, v114
	v_add_nc_u32_e32 v78, s4, v112
	v_add_nc_u32_e32 v79, s4, v111
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v81, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v85, v84, 0xc0c0004
	v_lshl_or_b32 v119, v80, 16, v90
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v83, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v84, v89, v88, 0xc0c0004
	v_dual_mov_b32 v95, s15 :: v_dual_mov_b32 v94, s14
	v_mov_b32_e32 v92, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:4096
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[66:69], v10 offset:4096
	ds_load_b128 v[70:73], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v10, v11 offset:832
	ds_load_u8 v12, v11 offset:768
	ds_load_u8 v74, v11 offset:960
	ds_load_u8 v75, v11 offset:896
	v_mov_b32_e32 v93, s13
	ds_load_u8 v86, v11 offset:1984
	ds_load_u8 v87, v11 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[125:128], v78 offset:4096
	ds_load_b128 v[129:132], v78
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v96, v11 offset:1600
	ds_load_u8 v97, v11 offset:1536
	ds_load_u8 v98, v11 offset:1728
	ds_load_u8 v99, v11 offset:1664
	ds_load_u8 v100, v11 offset:1344
	ds_load_u8 v101, v11 offset:1280
	ds_load_u8 v102, v11 offset:1472
	ds_load_u8 v103, v11 offset:1408
	ds_load_u8 v149, v11 offset:2016
	ds_load_u8 v150, v11 offset:1952
	ds_load_u8 v151, v11 offset:1888
	ds_load_u8 v152, v11 offset:1824
	ds_load_u8 v137, v11 offset:736
	ds_load_u8 v138, v11 offset:672
	ds_load_u8 v139, v11 offset:608
	ds_load_u8 v140, v11 offset:544
	ds_load_u8 v141, v11 offset:480
	ds_load_u8 v142, v11 offset:416
	ds_load_u8 v143, v11 offset:352
	ds_load_u8 v144, v11 offset:288
	ds_load_u8 v145, v11 offset:224
	ds_load_u8 v146, v11 offset:160
	ds_load_u8 v147, v11 offset:96
	ds_load_u8 v148, v11 offset:32
	v_mov_b32_e32 v90, s10
	ds_load_u8 v157, v11 offset:1504
	ds_load_u8 v158, v11 offset:1440
	ds_load_u8 v159, v11 offset:1376
	ds_load_u8 v160, v11 offset:1312
	ds_load_u8 v161, v11 offset:1248
	ds_load_u8 v162, v11 offset:1184
	ds_load_u8 v163, v11 offset:1120
	ds_load_u8 v164, v11 offset:1056
	ds_load_u8 v175, v11 offset:2272
	ds_load_u8 v176, v11 offset:2208
	ds_load_u8 v177, v11 offset:2144
	ds_load_u8 v178, v11 offset:2080
	v_lshl_or_b32 v118, v82, 16, v81
	v_lshl_or_b32 v117, v84, 16, v83
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_dual_mov_b32 v91, s11 :: v_dual_mov_b32 v88, s8
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v97, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v98, v101, v100, 0xc0c0004
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v100, v11 offset:2880
	ds_load_u8 v101, v11 offset:2816
	v_perm_b32 v12, v75, v74, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v11 offset:1216
	ds_load_u8 v121, v11 offset:1152
	ds_load_u8 v153, v11 offset:1760
	ds_load_u8 v154, v11 offset:1696
	ds_load_u8 v155, v11 offset:1632
	ds_load_u8 v156, v11 offset:1568
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v99, v103, v102, 0xc0c0004
	ds_load_u8 v102, v11 offset:3008
	ds_load_u8 v103, v11 offset:2944
	v_lshl_or_b32 v120, v12, 16, v10
	ds_load_u8 v10, v11 offset:1856
	ds_load_u8 v12, v11 offset:1792
	v_lshl_or_b32 v123, v97, 16, v96
	v_lshl_or_b32 v122, v99, 16, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[74:77], v79 offset:4096
	ds_load_b128 v[104:107], v79
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v89, s9
	ds_load_u8 v187, v11 offset:3808
	ds_load_u8 v188, v11 offset:3744
	ds_load_u8 v189, v11 offset:3680
	ds_load_u8 v190, v11 offset:3616
	ds_load_u8 v191, v11 offset:3552
	ds_load_u8 v192, v11 offset:3488
	ds_load_u8 v193, v11 offset:3424
	ds_load_u8 v194, v11 offset:3360
	v_perm_b32 v113, v115, v113, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v110, v140, v139, 0xc0c0004
	v_perm_b32 v115, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v87, v121, v87, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_lshl_or_b32 v140, v109, 16, v113
	v_lshl_or_b32 v139, v115, 16, v110
	v_perm_b32 v109, v152, v151, 0xc0c0004
	v_perm_b32 v110, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v11 offset:2240
	ds_load_u8 v133, v11 offset:2176
	ds_load_u8 v169, v11 offset:2784
	ds_load_u8 v170, v11 offset:2720
	ds_load_u8 v171, v11 offset:2656
	ds_load_u8 v172, v11 offset:2592
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v11 offset:1088
	ds_load_u8 v108, v11 offset:1024
	v_perm_b32 v113, v156, v155, 0xc0c0004
	v_lshl_or_b32 v136, v102, 16, v100
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[104:107], v[117:120], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v86, 16, v10
	v_perm_b32 v115, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v133, v103, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v108, v12, 0xc0c0004
	ds_load_u8 v101, v11 offset:2112
	ds_load_u8 v108, v11 offset:2048
	v_lshl_or_b32 v121, v87, 16, v12
	ds_load_u8 v10, v11 offset:2624
	ds_load_u8 v12, v11 offset:2560
	ds_load_u8 v86, v11 offset:2752
	ds_load_u8 v87, v11 offset:2688
	ds_load_u8 v96, v11 offset:2368
	ds_load_u8 v97, v11 offset:2304
	ds_load_u8 v98, v11 offset:2496
	ds_load_u8 v99, v11 offset:2432
	ds_load_u8 v165, v11 offset:3040
	ds_load_u8 v166, v11 offset:2976
	ds_load_u8 v167, v11 offset:2912
	ds_load_u8 v168, v11 offset:2848
	v_wmma_i32_16x16x16_iu8 v[78:85], v[129:132], v[121:124], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v87, v86, 0xc0c0004
	ds_load_u8 v86, v11 offset:2528
	ds_load_u8 v87, v11 offset:2464
	ds_load_u8 v173, v11 offset:2400
	ds_load_u8 v174, v11 offset:2336
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v97, v99, v98, 0xc0c0004
	v_perm_b32 v98, v108, v101, 0xc0c0004
	ds_load_u8 v99, v11 offset:3904
	ds_load_u8 v101, v11 offset:3840
	ds_load_u8 v108, v11 offset:4032
	ds_load_u8 v179, v11 offset:3968
	v_lshl_or_b32 v135, v12, 16, v10
	v_lshl_or_b32 v134, v97, 16, v96
	v_lshl_or_b32 v133, v103, 16, v98
	ds_load_u8 v10, v11 offset:3648
	ds_load_u8 v12, v11 offset:3584
	ds_load_u8 v96, v11 offset:3776
	ds_load_u8 v97, v11 offset:3712
	ds_load_u8 v98, v11 offset:3392
	ds_load_u8 v100, v11 offset:3328
	ds_load_u8 v102, v11 offset:3520
	ds_load_u8 v103, v11 offset:3456
	ds_load_u8 v180, v11 offset:4064
	ds_load_u8 v181, v11 offset:4000
	ds_load_u8 v182, v11 offset:3936
	ds_load_u8 v183, v11 offset:3872
	v_wmma_i32_16x16x16_iu8 v[78:85], v[70:73], v[133:136], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_perm_b32 v87, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v97, v96, 0xc0c0004
	v_perm_b32 v99, v101, v99, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v195, v100, v98, 0xc0c0004
	v_perm_b32 v101, v179, v108, 0xc0c0004
	ds_load_u8 v179, v11 offset:3136
	ds_load_u8 v184, v11 offset:3072
	ds_load_u8 v185, v11 offset:3264
	ds_load_u8 v186, v11 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v196, v103, v102, 0xc0c0004
	ds_load_u8 v197, v11 offset:3296
	ds_load_u8 v198, v11 offset:3232
	ds_load_u8 v199, v11 offset:3168
	ds_load_u8 v11, v11 offset:3104
	v_lshl_or_b32 v108, v101, 16, v99
	v_wmma_i32_16x16x16_iu8 v[96:103], v[74:77], v[117:120], v[88:95] neg_lo:[1,1,0]
	v_perm_b32 v117, v144, v143, 0xc0c0004
	v_perm_b32 v118, v142, v141, 0xc0c0004
	v_perm_b32 v119, v148, v147, 0xc0c0004
	v_perm_b32 v120, v146, v145, 0xc0c0004
	v_perm_b32 v141, v160, v159, 0xc0c0004
	v_perm_b32 v142, v158, v157, 0xc0c0004
	v_lshl_or_b32 v138, v118, 16, v117
	v_perm_b32 v145, v164, v163, 0xc0c0004
	v_lshl_or_b32 v137, v120, 16, v119
	v_perm_b32 v146, v162, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[96:103], v[125:128], v[121:124], v[96:103] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v110, 16, v109
	v_lshl_or_b32 v143, v115, 16, v113
	v_wmma_i32_16x16x16_iu8 v[117:124], v[104:107], v[137:140], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v142, 16, v141
	v_lshl_or_b32 v141, v146, 16, v145
	v_perm_b32 v104, v168, v167, 0xc0c0004
	v_perm_b32 v105, v166, v165, 0xc0c0004
	v_perm_b32 v106, v172, v171, 0xc0c0004
	v_perm_b32 v107, v170, v169, 0xc0c0004
	v_perm_b32 v109, v174, v173, 0xc0c0004
	v_perm_b32 v110, v176, v175, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[129:132], v[141:144], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v105, 16, v104
	v_lshl_or_b32 v131, v107, 16, v106
	v_lshl_or_b32 v130, v86, 16, v109
	v_lshl_or_b32 v129, v110, 16, v87
	v_wmma_i32_16x16x16_iu8 v[88:95], v[74:77], v[137:140], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v179, v184, v179, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v186, v185, 0xc0c0004
	v_lshl_or_b32 v107, v12, 16, v10
	v_wmma_i32_16x16x16_iu8 v[117:124], v[70:73], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_perm_b32 v10, v183, v182, 0xc0c0004
	v_perm_b32 v12, v181, v180, 0xc0c0004
	v_perm_b32 v70, v190, v189, 0xc0c0004
	v_perm_b32 v71, v188, v187, 0xc0c0004
	v_perm_b32 v74, v194, v193, 0xc0c0004
	v_perm_b32 v75, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v199, 0xc0c0004
	v_perm_b32 v76, v198, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[88:95], v[125:128], v[141:144], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v196, 16, v195
	v_lshl_or_b32 v105, v184, 16, v179
	v_wmma_i32_16x16x16_iu8 v[96:103], v[66:69], v[133:136], v[96:103] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v12, 16, v10
	v_lshl_or_b32 v72, v71, 16, v70
	v_lshl_or_b32 v71, v75, 16, v74
	v_lshl_or_b32 v70, v76, 16, v11
	v_wmma_i32_16x16x16_iu8 v[88:95], v[66:69], v[129:132], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[5:8], v[105:108], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[1:4], v[105:108], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[5:8], v[70:73], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[1:4], v[70:73], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v79
	v_cvt_f32_i32_e32 v12, v80
	v_cvt_f32_i32_e32 v69, v81
	v_cvt_f32_i32_e32 v66, v82
	v_cvt_f32_i32_e32 v70, v83
	v_cvt_f32_i32_e32 v67, v84
	v_cvt_f32_i32_e32 v71, v85
	v_cvt_f32_i32_e32 v72, v96
	v_cvt_f32_i32_e32 v74, v97
	v_cvt_f32_i32_e32 v73, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v6, v100
	v_cvt_f32_i32_e32 v5, v101
	v_cvt_f32_i32_e32 v2, v102
	v_cvt_f32_i32_e32 v1, v103
	v_cvt_f32_i32_e32 v77, v117
	v_cvt_f32_i32_e32 v84, v118
	v_cvt_f32_i32_e32 v82, v119
	v_cvt_f32_i32_e32 v87, v120
	v_cvt_f32_i32_e32 v76, v121
	v_cvt_f32_i32_e32 v81, v122
	v_cvt_f32_i32_e32 v79, v123
	v_cvt_f32_i32_e32 v85, v124
	v_cvt_f32_i32_e32 v80, v88
	v_cvt_f32_i32_e32 v86, v89
	v_cvt_f32_i32_e32 v83, v90
	v_cvt_f32_i32_e32 v88, v91
	v_cvt_f32_i32_e32 v8, v92
	v_cvt_f32_i32_e32 v7, v93
	v_cvt_f32_i32_e32 v4, v94
	v_cvt_f32_i32_e32 v3, v95
	v_cvt_f32_i32_e32 v78, v78
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s18, 31
	s_mov_b32 s27, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s4, s18, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v64, s4, 1
	v_add_lshl_u32 v11, v65, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s6, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v89, v63, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v90, v62, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1
	buffer_load_u16 v109, v10, s[24:27], 0 offen
	buffer_load_u16 v110, v11, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v10, v61, s4, 1
	v_cndmask_b32_e32 v11, 0x80000000, v89, vcc_lo
	v_add_lshl_u32 v92, v58, s4, 1
	v_cndmask_b32_e32 v89, 0x80000000, v90, vcc_lo
	v_add_lshl_u32 v90, v60, s4, 1
	v_add_lshl_u32 v91, v59, s4, 1
	v_add_lshl_u32 v93, v57, s4, 1
	v_add_lshl_u32 v94, v56, s4, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v97, v55, s4, 1
	s_and_b32 s17, s17, 0xffff
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v91, 0x80000000, v91
	v_add_lshl_u32 v98, v54, s4, 1
	v_add_lshl_u32 v99, v53, s4, 1
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_cndmask_b32 v93, 0x80000000, v93
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	s_clause 0x7
	buffer_load_u16 v113, v11, s[16:19], 0 offen
	buffer_load_u16 v115, v89, s[16:19], 0 offen
	buffer_load_u16 v106, v10, s[16:19], 0 offen
	buffer_load_u16 v108, v90, s[16:19], 0 offen
	buffer_load_u16 v101, v91, s[16:19], 0 offen
	buffer_load_u16 v102, v92, s[16:19], 0 offen
	buffer_load_u16 v95, v93, s[16:19], 0 offen
	buffer_load_u16 v96, v94, s[16:19], 0 offen
	v_add_lshl_u32 v90, v52, s4, 1
	v_add_lshl_u32 v91, v50, s4, 1
	v_dual_cndmask_b32 v10, 0x80000000, v97 :: v_dual_cndmask_b32 v11, 0x80000000, v98
	v_add_lshl_u32 v92, v51, s4, 1
	v_add_lshl_u32 v93, v22, s4, 1
	v_add_lshl_u32 v94, v23, s4, 1
	v_dual_cndmask_b32 v89, 0x80000000, v99 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v97, 0x80000000, v91 :: v_dual_cndmask_b32 v98, 0x80000000, v92
	v_dual_cndmask_b32 v99, 0x80000000, v93 :: v_dual_cndmask_b32 v100, 0x80000000, v94
	s_clause 0x7
	buffer_load_u16 v93, v10, s[16:19], 0 offen
	buffer_load_u16 v94, v11, s[16:19], 0 offen
	buffer_load_u16 v91, v89, s[16:19], 0 offen
	buffer_load_u16 v92, v90, s[16:19], 0 offen
	buffer_load_u16 v89, v97, s[16:19], 0 offen
	buffer_load_u16 v90, v98, s[16:19], 0 offen
	buffer_load_u16 v11, v99, s[16:19], 0 offen
	buffer_load_u16 v10, v100, s[16:19], 0 offen
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v99, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v146, s15 :: v_dual_add_nc_u32 v9, s1, v116
	v_dual_mov_b32 v145, s14 :: v_dual_add_nc_u32 v104, s30, v47
	v_dual_mov_b32 v144, s13 :: v_dual_add_nc_u32 v103, s1, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v9 offset:4096
	ds_load_b128 v[116:119], v9
	ds_load_b128 v[155:158], v103 offset:4096
	ds_load_b128 v[159:162], v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v140, s9 :: v_dual_add_nc_u32 v103, s1, v111
	v_dual_mov_b32 v142, s11 :: v_dual_add_nc_u32 v9, s1, v112
	ds_load_u8 v105, v104 offset:832
	ds_load_u8 v107, v104 offset:768
	ds_load_u8 v111, v104 offset:960
	ds_load_u8 v112, v104 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[163:166], v103 offset:4096
	ds_load_b128 v[167:170], v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v103, v104 offset:576
	ds_load_u8 v114, v104 offset:512
	ds_load_u8 v120, v104 offset:704
	ds_load_u8 v121, v104 offset:640
	ds_load_u8 v122, v104 offset:320
	ds_load_u8 v123, v104 offset:256
	ds_load_u8 v124, v104 offset:448
	ds_load_u8 v125, v104 offset:384
	ds_load_u8 v126, v104 offset:64
	ds_load_u8 v127, v104
	ds_load_u8 v128, v104 offset:192
	ds_load_u8 v129, v104 offset:128
	ds_load_u8 v137, v104 offset:992
	ds_load_u8 v138, v104 offset:928
	ds_load_u8 v183, v104 offset:864
	ds_load_u8 v184, v104 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v105, v107, v105, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v107, v112, v111, 0xc0c0004
	ds_load_u8 v111, v104 offset:736
	ds_load_u8 v112, v104 offset:672
	ds_load_u8 v185, v104 offset:608
	ds_load_u8 v187, v104 offset:544
	ds_load_u8 v191, v104 offset:224
	ds_load_u8 v192, v104 offset:160
	ds_load_u8 v193, v104 offset:96
	ds_load_u8 v194, v104 offset:32
	ds_load_u8 v203, v104 offset:1504
	ds_load_u8 v204, v104 offset:1440
	ds_load_u8 v205, v104 offset:1376
	ds_load_u8 v206, v104 offset:1312
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v103, v114, v103, 0xc0c0004
	v_lshl_or_b32 v150, v107, 16, v105
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v114, v121, v120, 0xc0c0004
	ds_load_u8 v120, v104 offset:480
	ds_load_u8 v188, v104 offset:416
	ds_load_u8 v189, v104 offset:352
	ds_load_u8 v190, v104 offset:288
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v121, v123, v122, 0xc0c0004
	ds_load_u8 v207, v104 offset:1248
	ds_load_u8 v208, v104 offset:1184
	ds_load_u8 v209, v104 offset:1120
	ds_load_u8 v210, v104 offset:1056
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v122, v125, v124, 0xc0c0004
	v_lshl_or_b32 v149, v114, 16, v103
	ds_load_u8 v103, v104 offset:1856
	ds_load_u8 v105, v104 offset:1792
	ds_load_u8 v107, v104 offset:1984
	ds_load_u8 v114, v104 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[171:174], v9 offset:4096
	ds_load_b128 v[175:178], v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v124, v129, v128, 0xc0c0004
	ds_load_u8 v9, v104 offset:1600
	ds_load_u8 v129, v104 offset:1536
	ds_load_u8 v130, v104 offset:1728
	ds_load_u8 v131, v104 offset:1664
	ds_load_u8 v132, v104 offset:1344
	ds_load_u8 v133, v104 offset:1280
	ds_load_u8 v134, v104 offset:1472
	ds_load_u8 v135, v104 offset:1408
	ds_load_u8 v195, v104 offset:2016
	ds_load_u8 v196, v104 offset:1952
	ds_load_u8 v197, v104 offset:1888
	ds_load_u8 v198, v104 offset:1824
	v_perm_b32 v123, v127, v126, 0xc0c0004
	ds_load_u8 v221, v104 offset:2272
	ds_load_u8 v222, v104 offset:2208
	ds_load_u8 v223, v104 offset:2144
	ds_load_u8 v224, v104 offset:2080
	v_lshl_or_b32 v148, v122, 16, v121
	v_mov_b32_e32 v143, s12
	v_mov_b32_e32 v141, s10
	v_lshl_or_b32 v147, v124, 16, v123
	v_mov_b32_e32 v139, s8
	ds_load_u8 v232, v104 offset:3808
	ds_load_u8 v233, v104 offset:3744
	ds_load_u8 v234, v104 offset:3680
	ds_load_u8 v235, v104 offset:3616
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v129, v9, 0xc0c0004
	v_perm_b32 v138, v187, v185, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v129, v131, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[121:128], v[167:170], v[147:150], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v130, v133, v132, 0xc0c0004
	ds_load_u8 v132, v104 offset:2880
	ds_load_u8 v133, v104 offset:2816
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v104 offset:1088
	ds_load_u8 v136, v104 offset:1024
	v_perm_b32 v107, v114, v107, 0xc0c0004
	ds_load_u8 v114, v104 offset:1216
	ds_load_u8 v151, v104 offset:1152
	ds_load_u8 v199, v104 offset:1760
	ds_load_u8 v200, v104 offset:1696
	ds_load_u8 v201, v104 offset:1632
	ds_load_u8 v202, v104 offset:1568
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v131, v135, v134, 0xc0c0004
	ds_load_u8 v134, v104 offset:3008
	ds_load_u8 v135, v104 offset:2944
	v_lshl_or_b32 v153, v129, 16, v9
	v_lshl_or_b32 v154, v107, 16, v103
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_lshl_or_b32 v152, v131, 16, v130
	v_perm_b32 v112, v190, v189, 0xc0c0004
	v_perm_b32 v120, v188, v120, 0xc0c0004
	v_perm_b32 v185, v208, v207, 0xc0c0004
	v_lshl_or_b32 v189, v111, 16, v138
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v111, v198, v197, 0xc0c0004
	v_perm_b32 v138, v206, v205, 0xc0c0004
	v_lshl_or_b32 v188, v120, 16, v112
	v_perm_b32 v112, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v114, v151, v114, 0xc0c0004
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v105, v136, v105, 0xc0c0004
	ds_load_u8 v133, v104 offset:2112
	ds_load_u8 v136, v104 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v120, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_lshl_or_b32 v151, v114, 16, v105
	ds_load_u8 v9, v104 offset:2624
	ds_load_u8 v103, v104 offset:2560
	ds_load_u8 v105, v104 offset:2752
	ds_load_u8 v107, v104 offset:2688
	ds_load_u8 v114, v104 offset:2368
	ds_load_u8 v129, v104 offset:2304
	ds_load_u8 v130, v104 offset:2496
	ds_load_u8 v131, v104 offset:2432
	ds_load_u8 v211, v104 offset:3040
	ds_load_u8 v212, v104 offset:2976
	ds_load_u8 v213, v104 offset:2912
	ds_load_u8 v214, v104 offset:2848
	ds_load_u8 v135, v104 offset:2240
	ds_load_u8 v179, v104 offset:2176
	ds_load_u8 v215, v104 offset:2784
	ds_load_u8 v216, v104 offset:2720
	ds_load_u8 v217, v104 offset:2656
	ds_load_u8 v218, v104 offset:2592
	v_lshl_or_b32 v182, v134, 16, v132
	v_wmma_i32_16x16x16_iu8 v[121:128], v[175:178], v[151:154], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v103, v9, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v103, v107, v105, 0xc0c0004
	ds_load_u8 v105, v104 offset:2528
	ds_load_u8 v107, v104 offset:2464
	ds_load_u8 v219, v104 offset:2400
	ds_load_u8 v220, v104 offset:2336
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v114, v129, v114, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v129, v131, v130, 0xc0c0004
	v_perm_b32 v130, v136, v133, 0xc0c0004
	ds_load_u8 v131, v104 offset:3904
	ds_load_u8 v133, v104 offset:3840
	ds_load_u8 v136, v104 offset:4032
	ds_load_u8 v186, v104 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v179, v135, 0xc0c0004
	v_lshl_or_b32 v181, v103, 16, v9
	v_lshl_or_b32 v180, v129, 16, v114
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v179, v135, 16, v130
	ds_load_u8 v9, v104 offset:3648
	ds_load_u8 v103, v104 offset:3584
	ds_load_u8 v114, v104 offset:3776
	ds_load_u8 v129, v104 offset:3712
	ds_load_u8 v130, v104 offset:3392
	ds_load_u8 v132, v104 offset:3328
	ds_load_u8 v134, v104 offset:3520
	ds_load_u8 v135, v104 offset:3456
	ds_load_u8 v225, v104 offset:4064
	ds_load_u8 v226, v104 offset:4000
	ds_load_u8 v227, v104 offset:3936
	ds_load_u8 v228, v104 offset:3872
	v_wmma_i32_16x16x16_iu8 v[121:128], v[159:162], v[179:182], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v105, v107, v105, 0xc0c0004
	v_perm_b32 v107, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v103, v9, 0xc0c0004
	v_perm_b32 v131, v133, v131, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v103, v129, v114, 0xc0c0004
	v_perm_b32 v133, v186, v136, 0xc0c0004
	ds_load_u8 v136, v104 offset:3136
	ds_load_u8 v229, v104 offset:3072
	ds_load_u8 v230, v104 offset:3264
	ds_load_u8 v231, v104 offset:3200
	ds_load_u8 v114, v104 offset:3552
	ds_load_u8 v236, v104 offset:3488
	ds_load_u8 v237, v104 offset:3424
	ds_load_u8 v238, v104 offset:3360
	ds_load_u8 v241, v104 offset:3296
	ds_load_u8 v242, v104 offset:3232
	ds_load_u8 v243, v104 offset:3168
	ds_load_u8 v104, v104 offset:3104
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v239, v132, v130, 0xc0c0004
	v_lshl_or_b32 v186, v133, 16, v131
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v240, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v229, v229, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[129:136], v[163:166], v[147:150], v[139:146] neg_lo:[1,1,0]
	v_perm_b32 v147, v184, v183, 0xc0c0004
	v_perm_b32 v148, v194, v193, 0xc0c0004
	v_perm_b32 v149, v192, v191, 0xc0c0004
	v_perm_b32 v183, v204, v203, 0xc0c0004
	v_perm_b32 v184, v210, v209, 0xc0c0004
	v_lshl_or_b32 v190, v137, 16, v147
	v_perm_b32 v137, v200, v199, 0xc0c0004
	v_lshl_or_b32 v187, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[129:136], v[171:174], v[151:154], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v104, v243, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[147:154], v[167:170], v[187:190], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v112, 16, v111
	v_lshl_or_b32 v169, v137, 16, v120
	v_lshl_or_b32 v168, v183, 16, v138
	v_lshl_or_b32 v167, v185, 16, v184
	v_perm_b32 v111, v214, v213, 0xc0c0004
	v_perm_b32 v112, v212, v211, 0xc0c0004
	v_perm_b32 v120, v218, v217, 0xc0c0004
	v_perm_b32 v137, v216, v215, 0xc0c0004
	v_perm_b32 v138, v220, v219, 0xc0c0004
	v_perm_b32 v183, v222, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[163:166], v[187:190], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[175:178], v[167:170], v[147:154] neg_lo:[1,1,0]
	v_lshl_or_b32 v178, v112, 16, v111
	v_lshl_or_b32 v177, v137, 16, v120
	v_lshl_or_b32 v176, v105, 16, v138
	v_lshl_or_b32 v175, v183, 16, v107
	v_lshl_or_b32 v185, v103, 16, v9
	v_perm_b32 v9, v228, v227, 0xc0c0004
	v_perm_b32 v103, v226, v225, 0xc0c0004
	v_perm_b32 v105, v235, v234, 0xc0c0004
	v_perm_b32 v107, v233, v232, 0xc0c0004
	v_perm_b32 v111, v238, v237, 0xc0c0004
	v_perm_b32 v112, v236, v114, 0xc0c0004
	v_perm_b32 v114, v242, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[171:174], v[167:170], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v240, 16, v239
	v_lshl_or_b32 v183, v230, 16, v229
	v_wmma_i32_16x16x16_iu8 v[129:136], v[155:158], v[179:182], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[175:178], v[147:154] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v103, 16, v9
	v_lshl_or_b32 v161, v107, 16, v105
	v_lshl_or_b32 v160, v112, 16, v111
	v_lshl_or_b32 v159, v114, 16, v104
	v_wmma_i32_16x16x16_iu8 v[139:146], v[155:158], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[116:119], v[183:186], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[97:100], v[183:186], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[116:119], v[159:162], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[97:100], v[159:162], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v117, v123
	v_cvt_f32_i32_e32 v123, v124
	v_cvt_f32_i32_e32 v118, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v119, v127
	v_cvt_f32_i32_e32 v125, v128
	v_cvt_f32_i32_e32 v120, v129
	v_cvt_f32_i32_e32 v126, v130
	v_cvt_f32_i32_e32 v121, v131
	v_cvt_f32_i32_e32 v127, v132
	v_cvt_f32_i32_e32 v103, v133
	v_cvt_f32_i32_e32 v104, v134
	v_cvt_f32_i32_e32 v98, v135
	v_cvt_f32_i32_e32 v97, v136
	v_cvt_f32_i32_e32 v129, v147
	v_cvt_f32_i32_e32 v135, v148
	v_cvt_f32_i32_e32 v133, v149
	v_cvt_f32_i32_e32 v138, v150
	v_cvt_f32_i32_e32 v128, v151
	v_cvt_f32_i32_e32 v132, v152
	v_cvt_f32_i32_e32 v130, v153
	v_cvt_f32_i32_e32 v136, v154
	v_cvt_f32_i32_e32 v131, v139
	v_cvt_f32_i32_e32 v137, v140
	v_cvt_f32_i32_e32 v134, v141
	v_cvt_f32_i32_e32 v139, v142
	v_cvt_f32_i32_e32 v105, v143
	v_cvt_f32_i32_e32 v107, v144
	v_cvt_f32_i32_e32 v99, v145
	v_cvt_f32_i32_e32 v100, v146
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s5, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s5, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v94.h, v96.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v96.h, v94.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v64, v64, s1, 1
	v_add_lshl_u32 v65, v65, s1, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s31
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v63, v63, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v62, v62, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v111, 0x80000000, v63, vcc_lo
	v_add_lshl_u32 v61, v61, s0, 1
	v_cndmask_b32_e32 v112, 0x80000000, v62, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v62, v64, s[24:27], 0 offen
	buffer_load_u16 v63, v65, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v60, v60, s0, 1
	v_add_lshl_u32 v59, v59, s0, 1
	v_add_lshl_u32 v58, v58, s0, 1
	v_add_lshl_u32 v57, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_add_lshl_u32 v52, v52, s0, 1
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	s_clause 0xb
	buffer_load_u16 v64, v112, s[16:19], 0 offen
	buffer_load_u16 v65, v111, s[16:19], 0 offen
	buffer_load_u16 v60, v60, s[16:19], 0 offen
	buffer_load_u16 v61, v61, s[16:19], 0 offen
	buffer_load_u16 v58, v58, s[16:19], 0 offen
	buffer_load_u16 v59, v59, s[16:19], 0 offen
	buffer_load_u16 v56, v56, s[16:19], 0 offen
	buffer_load_u16 v57, v57, s[16:19], 0 offen
	buffer_load_u16 v54, v54, s[16:19], 0 offen
	buffer_load_u16 v55, v55, s[16:19], 0 offen
	buffer_load_u16 v111, v52, s[16:19], 0 offen
	buffer_load_u16 v112, v53, s[16:19], 0 offen
	v_add_lshl_u32 v52, v50, s0, 1
	v_add_lshl_u32 v53, v51, s0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v50.l, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v22, v22, s0, 1
	v_add_lshl_u32 v23, v23, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v50.h, v110.l
	v_mov_b16_e32 v51.h, v109.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_and_b32 v109, 56, v21
	s_clause 0x1
	buffer_load_u16 v52, v52, s[16:19], 0 offen
	buffer_load_u16 v53, v53, s[16:19], 0 offen
	v_mov_b16_e32 v94.l, v50.l
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	buffer_load_u16 v152, v22, s[16:19], 0 offen
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v21, s31, v49
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v49.h, v115.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v50, v94
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	s_waitcnt vmcnt(21)
	v_mov_b16_e32 v89.h, v113.l
	v_mov_b16_e32 v91.h, v106.l
	v_mov_b16_e32 v106.h, v91.l
	v_mov_b16_e32 v110.h, v89.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v51.l, v50.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v49.l, v50.l
	v_mov_b16_e32 v89.l, v50.l
	v_mov_b16_e32 v91.l, v50.l
	v_mov_b16_e32 v92.h, v102.l
	v_mov_b16_e32 v93.h, v101.l
	v_mov_b16_e32 v95.h, v95.l
	v_mov_b16_e32 v101.h, v93.l
	v_mov_b16_e32 v102.h, v92.l
	v_mov_b16_e32 v92.l, v50.l
	v_mov_b16_e32 v93.l, v50.l
	v_mov_b16_e32 v95.l, v50.l
	v_mov_b16_e32 v96.l, v50.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v148, v50, v89
	v_mul_f32_e32 v149, v50, v49
	v_mul_f32_e32 v49, v49, v51
	v_mul_f32_e32 v150, v50, v91
	v_dual_mul_f32 v91, v91, v51 :: v_dual_mul_f32 v158, v50, v96
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v102.l, v50.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v89, v89, v51 :: v_dual_mul_f32 v154, v50, v92
	v_mul_f32_e32 v153, v50, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v93, v93, v51 :: v_dual_mul_f32 v160, v50, v102
	v_mul_f32_e32 v155, v50, v95
	v_mul_f32_e32 v95, v95, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v49, v68, v48
	v_fma_f32 v12, v91, v12, v44
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(20)
	v_mov_b16_e32 v90.h, v108.l
	v_mov_b16_e32 v108.h, v90.l
	v_mov_b16_e32 v90.l, v50.l
	v_mov_b16_e32 v101.l, v50.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v92, v92, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v149, v84, v43
	v_fma_f32 v68, v89, v78, v24
	v_fma_f32 v66, v93, v66, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v49, s2
	v_cndmask_b32_e64 v12, v44, v12, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v106.l, v50.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v151, v50, v90 :: v_dual_mul_f32 v96, v96, v51
	v_mul_f32_e32 v94, v94, v51
	v_mul_f32_e32 v157, v50, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v84, s2
	v_cndmask_b32_e64 v24, v24, v68, s2
	v_cndmask_b32_e64 v40, v40, v66, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v110.l, v50.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v159, v50, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v148, v77, v45
	v_fma_f32 v78, v151, v87, v39
	v_fma_f32 v87, v160, v88, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.h, v50.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v90, v90, v51
	v_mul_f32_e32 v161, v110, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v92, v70, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v77, s2
	v_cndmask_b32_e64 v25, v25, v87, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v113.h, v50.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v101, v101, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v70, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v102, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v156, v85, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v114.h, v50.l
	v_mov_b16_e64 v146.h, v50.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v158, v86, v27
	v_fma_f32 v74, v96, v74, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v85, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.h, v50.l
	v_mov_b16_e32 v116.h, v50.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v86, s2
	v_cndmask_b32_e64 v34, v34, v74, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v142.h, v50.l
	v_mov_b16_e32 v115.h, v50.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v78, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v154, v81, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.h, v50.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v108.l, v50.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v147.h, v50.l
	v_mov_b16_e64 v140.h, v50.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v81, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s34, s31
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.h, v50.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s33
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v11.h, v10.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v162, s1, v109
	v_add3_u32 v22, s1, v109, 64
	v_mul_lo_u32 v47, s31, v47
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	v_and_b32_e32 v0, 16, v0
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v44, 16, v62
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v49, 16, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v153, v76, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v76, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v62, 16, v64
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v63, 16, v65
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v60, 16, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v95, v67, v36
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v106, v106, v51
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v66, v63, v44 :: v_dual_lshlrev_b32 v59, 16, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v67, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v67, v62, v44 :: v_dual_mul_f32 v62, v49, v62
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v94, v71, v38
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v66, v9, v24
	v_fma_f32 v62, v62, v135, v43
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v71, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v63, v49, v63 :: v_dual_mul_f32 v70, v59, v44
	v_dual_mul_f32 v71, v58, v44 :: v_dual_mul_f32 v58, v49, v58
	v_mul_f32_e32 v77, v64, v44
	v_mul_f32_e32 v64, v49, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v67, v122, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v24, v9, s3
	v_cndmask_b32_e64 v43, v43, v62, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v90, v69, v46
	v_fma_f32 v63, v63, v129, v45
	v_fma_f32 v64, v64, v139, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v48, v66, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v48, v9, 16, 1
	v_mov_b16_e32 v113.l, v43.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v59, v49, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v150, v82, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v69, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v60, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v73, v106, v73, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v63, s3
	v_cndmask_b32_e64 v25, v25, v64, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v9, v48, 0x7fff
	v_and_b32_e32 v48, 1, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v59, v128, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v82, s2
	v_cndmask_b32_e64 v28, v28, v73, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v68, v61, v44 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v102, v75, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v61, v49, v61 :: v_dual_mul_f32 v74, v55, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v59, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v114.l, v45.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v73, v56, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v146.l, v25.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v49, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v75, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v68, v117, v12
	v_fma_f32 v68, v69, v123, v46
	v_fma_f32 v61, v61, v133, v41
	v_fma_f32 v56, v56, v136, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.l, v37.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v75, v54, v44 :: v_dual_mul_f32 v54, v49, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v155, v79, v33
	v_fma_f32 v72, v101, v72, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v68, s3
	v_cndmask_b32_e64 v41, v41, v61, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v54, v54, v137, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v56, s3
	v_cndmask_b32_e64 v33, v33, v79, s2
	v_cndmask_b32_e64 v32, v32, v72, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v56, v46, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v54, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v54, v24, 16, 1
	v_mov_b16_e32 v116.l, v41.h
	v_mov_b16_e64 v142.l, v31.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v57, v44
	v_mul_f32_e32 v57, v49, v57
	v_mul_f32_e32 v60, v49, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v70, v118, v40
	v_fma_f32 v70, v71, v124, v42
	v_fma_f32 v71, v72, v119, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v24, v24
	v_cmp_o_f32_e64 s6, v46, v46
	v_add3_u32 v24, v24, v54, 0x7fff
	v_and_b32_e32 v54, 1, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v73, v125, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v46, v56, 0x7fff
	v_and_b32_e32 v56, 1, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v57, v130, v33
	v_fma_f32 v60, v60, v138, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v72, s3
	v_cndmask_b32_e64 v36, v36, v71, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v157, v80, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v57, s3
	v_cndmask_b32_e64 v39, v39, v60, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v60, v38, 16, 1
	v_bfe_u32 v59, v36, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v58, v132, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.l, v33.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v70, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s14, v38, v38
	v_add3_u32 v38, v38, v60, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v80, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v60, 1, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v55, v49, v55
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v36, v36, v59, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v76, v65, v44 :: v_dual_and_b32 v59, 1, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v58, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v58, v42, 16, 1
	v_cmp_o_f32_e64 s16, v33, v33
	v_add3_u32 v33, v33, v60, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v55, v55, v131, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v67, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s15, v31, v31
	v_add3_u32 v31, v31, v59, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v73, v74, v120, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s10, v42, v42
	v_add3_u32 v42, v42, v58, 0x7fff
	v_and_b32_e32 v58, 1, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v75, v126, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.l, 0x7fff, v33.h, s16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v33, v108, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v76, v121, v28
	v_fma_f32 v76, v77, v127, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v55, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v55, v12, 16, 1
	v_mov_b16_e32 v115.l, v39.h
	v_cmp_o_f32_e64 s5, v12, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v76, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v45, v45
	v_add3_u32 v12, v12, v55, 0x7fff
	v_and_b32_e32 v55, 1, v115
	v_cmp_o_f32_e64 s7, v39, v39
	v_bfe_u32 v64, v30, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v24.h, s0
	v_add3_u32 v24, v45, v54, 0x7fff
	v_add3_u32 v39, v39, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v30, v30
	v_add3_u32 v30, v30, v64, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v74, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.l, 0x7fff, v24.h, s4
	v_cndmask_b16 v24.h, 0x7fff, v39.h, s7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v50, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s13
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v161, v6, v20
	v_fma_f32 v5, v33, v5, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v53
	v_lshlrev_b32_e32 v38, 16, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v39, v7, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v62, v34, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v159, v83, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s12, v37, v37
	v_add3_u32 v37, v37, v58, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v20, v6, s2
	v_cndmask_b32_e64 v5, v19, v5, s2
	v_cndmask_b32_e64 v7, v17, v7, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v17, v49, v33 :: v_dual_mul_f32 v20, v38, v44
	v_mul_f32_e32 v19, v33, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s18, v34, v34
	v_add3_u32 v34, v34, v62, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v83, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v49, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v69, s3
	v_cndmask_b32_e64 v28, v28, v75, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.l, 0x7fff, v37.h, s12
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v50, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v103, v6
	v_fma_f32 v19, v19, v104, v5
	v_fma_f32 v65, v65, v134, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v73, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v57, v40, 16, 1
	v_mov_b16_e64 v140.l, v35.h
	v_bfe_u32 v63, v28, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v37, v8, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v20, s3
	v_cndmask_b32_e64 v5, v5, v19, s3
	v_cndmask_b32_e64 v26, v26, v65, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v43, v43
	v_cmp_o_f32_e64 s9, v40, v40
	v_bfe_u32 v61, v32, 16, 1
	v_mov_b16_e64 v145.l, v29.h
	v_cmp_o_f32_e64 s21, v28, v28
	v_add3_u32 v40, v40, v57, 0x7fff
	v_and_b32_e32 v57, 1, v140
	v_add3_u32 v28, v28, v63, 0x7fff
	v_add3_u32 v43, v43, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v18, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v49, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v19, v6, 16, 1
	v_bfe_u32 v20, v5, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v17, v107, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.l, v27.h
	v_cmp_o_f32_e64 s11, v35, v35
	v_cmp_o_f32_e64 s17, v32, v32
	v_mov_b16_e64 v147.l, v26.h
	v_add3_u32 v32, v32, v61, 0x7fff
	v_and_b32_e32 v62, 1, v145
	v_and_b32_e32 v63, 1, v146
	v_add3_u32 v35, v35, v57, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s21
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s22
	v_cndmask_b16 v30.h, 0x7fff, v43.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v105, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v6, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v6, v5, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v7, v17, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v61, 1, v144
	v_cmp_o_f32_e64 s20, v29, v29
	v_and_b32_e32 v64, 1, v147
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s17
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s18
	v_add3_u32 v29, v29, v62, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s11
	v_add3_u32 v35, v25, v63, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v8, v18, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v50.l
	v_cmp_o_f32_e64 s19, v27, v27
	v_add3_u32 v27, v27, v61, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v29.h, s20
	v_add3_u32 v29, v26, v64, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_mov_b16_e32 v17.l, v7.h
	v_mov_b16_e32 v17.h, v50.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v18.l, v50.l
	v_mov_b16_e32 v18.h, v11.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v11.l, v50.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v10, 1, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v50, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v5, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v50, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v46.h, s6
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s9
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v17, v4, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v18, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v5, v3, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v11, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v6.l, 0x7fff, v19.h, s0
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v17, v2, v15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v152
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v5, v1, v14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v7, v10, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v13, v3, s2
	v_cndmask_b32_e64 v2, v15, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v11, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v14, v1, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v49, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v98, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v16, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v14, v100, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v5, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v13, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v50.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s8, v41, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v97, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v41, v41, v56, 0x7fff
	v_mov_b16_e32 v10.l, v3.h
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v5, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v5, v2, 16, 1
	v_mov_b16_e32 v7.h, v50.l
	v_cndmask_b16 v24.l, 0x7fff, v41.h, s8
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s15
	v_cmp_o_f32_e64 s0, v1, v1
	v_add3_u32 v5, v2, v5, 0x7fff
	v_and_b32_e32 v2, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v49, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b32_e32 v14, v31, v24, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v99, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_cndmask_b32 v2, v9, v40 :: v_dual_cndmask_b32 v13, v30, v34
	v_cndmask_b32_e32 v15, v24, v31, vcc_lo
	v_cndmask_b32_e32 v16, v8, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v11, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v11, v1, 16, 1
	v_cndmask_b32_e32 v8, v27, v8, vcc_lo
	v_mov_b16_e32 v7.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v1, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v4, v4
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s0
	v_mov_b32_e32 v10, 0x5410
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v1, v4, v7, 0x7fff
	v_cndmask_b32_e32 v4, v36, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_mov_b32_e32 v11, 0x7632
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v5, v12, v36, vcc_lo
	v_cndmask_b32_e32 v1, v40, v9, vcc_lo
	v_dual_cndmask_b32 v17, v0, v25 :: v_dual_cndmask_b32 v0, v25, v0
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_dual_cndmask_b32 v9, v3, v28 :: v_dual_and_b32 v10, 0x540054, v10
	v_dual_cndmask_b32 v3, v28, v3 :: v_dual_cndmask_b32 v12, v34, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v10, v10, 4, v10
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v18, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 0x760076, v11
	v_and_b32_e32 v19, 0x5040504, v10
	v_lshl_or_b32 v11, v11, 4, v11
	v_dual_cndmask_b32 v7, v6, v32 :: v_dual_cndmask_b32 v6, v32, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v2, v1, v19
	v_and_b32_e32 v20, 0x7060706, v11
	v_permlanex16_b32 v11, v15, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v13, v12, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v6, v7, v19
	v_perm_b32 v5, v6, v7, v20
	v_perm_b32 v6, v18, v9, v19
	v_perm_b32 v7, v18, v9, v20
	v_perm_b32 v9, v13, v12, v20
	v_perm_b32 v12, v15, v16, v19
	v_perm_b32 v13, v15, v16, v20
	v_add_lshl_u32 v16, v162, v47, 1
	v_perm_b32 v10, v11, v14, v19
	v_perm_b32 v11, v11, v14, v20
	v_perm_b32 v14, v23, v17, v19
	v_perm_b32 v15, v23, v17, v20
	v_add_lshl_u32 v17, v22, v47, 1
	v_add_lshl_u32 v18, v162, v21, 1
	v_add_lshl_u32 v19, v22, v21, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v17, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v18, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v19, s[28:31], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 244
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 244
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17860
; TotalNumSgprs: 47
; NumVgprs: 244
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 244
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     244
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
