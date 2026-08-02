	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v70, 6, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v6, 62, v3
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
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v3, s12, v4
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
	s_abs_i32 s13, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s7, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v5, 2, v1
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s18
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s14, s13, s6
	s_xor_b32 s6, s2, s16
	s_mul_i32 s18, s14, s17
	s_ashr_i32 s19, s6, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s14, 1
	s_sub_i32 s20, s13, s17
	s_cmp_ge_u32 s13, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s18, s14
	s_cselect_b32 s13, s20, s13
	s_add_i32 s18, s14, 1
	s_cmp_ge_u32 s13, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s18, s14
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s33, s23, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v7, s33, v6
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s13, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s3, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s16, s12, 0x7f
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s22, s3, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v2, 4, v7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s14, s2, 4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s33, s26
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s14, s12
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s13, s16, 31
.Ltmp15:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v10, v3, v5, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s22, s15, v9
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s13, 25
.Ltmp17:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s15, s16, s2
.Ltmp19:
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s33, v3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v8, s23, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v11, 0x80000000, v3, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s33, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v11, s[28:31], 0 offen
	buffer_load_b128 v[23:26], v7, s[28:31], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v7, 0x80000000, v8, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v8, 0x80000000, v12, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s23, 7, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s26, 64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[27:30], v7, s[28:31], 0 offen
	buffer_load_b128 v[31:34], v8, s[28:31], 0 offen
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s34, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s33, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s26, v10
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v53, 0x80000000, v7, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v3, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_clause 0x1
	buffer_load_b128 v[35:38], v7, s[28:31], 0 offen
	buffer_load_b128 v[39:42], v8, s[28:31], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v7, s33, v3
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_b32 v79, v53, s[4:7], 0 offen
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_clause 0x1
	buffer_load_b128 v[43:46], v3, s[28:31], 0 offen
	buffer_load_b128 v[47:50], v7, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v69, v5, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v5, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 0x420, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v11, 48, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v7, 0x70, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v5, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v11, v8, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v3, v4, 1, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v12, v70, 10, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v71, 0, v11
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 2, v3
	v_or_b32_e32 v8, 4, v3
	v_or_b32_e32 v17, 6, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v13, 0x90, v12
	v_xor_b32_e32 v14, 0x120, v12
	v_add_nc_u32_e32 v72, 0, v12
	v_xor_b32_e32 v15, 0x1b0, v12
	v_xor_b32_e32 v16, 0x210, v12
	v_add_nc_u32_e32 v73, 0, v13
	v_xor_b32_e32 v51, 0x330, v12
	v_add_nc_u32_e32 v74, 0, v14
	v_xor_b32_e32 v52, 0x3a0, v12
	v_add_nc_u32_e32 v75, 0, v15
	v_add_nc_u32_e32 v76, 0, v16
	v_add_nc_u32_e32 v77, 0, v51
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v18, 8, v3
	v_or_b32_e32 v4, 10, v3
	v_or_b32_e32 v5, 12, v3
	v_or_b32_e32 v6, 14, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, 0, v52
	s_waitcnt vmcnt(8)
	v_perm_b32 v53, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v54, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v55, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v56, v26, v22, 0x5010400
	v_perm_b32 v57, v26, v22, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v58, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v59, v32, v28, 0x5010400
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v60, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v61, v34, v30, 0x5010400
	v_perm_b32 v62, v34, v30, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v19.l, 0xff, v53.l
	v_lshrrev_b32_e32 v63, 8, v53
	v_lshrrev_b32_e32 v64, 24, v53
	v_and_b16 v19.h, 0xff, v53.h
	v_and_b16 v20.l, 0xff, v23.l
	v_lshrrev_b32_e32 v53, 8, v23
	v_lshrrev_b32_e32 v65, 24, v23
	v_and_b16 v20.h, 0xff, v23.h
	v_and_b16 v21.l, 0xff, v54.l
	v_lshrrev_b32_e32 v66, 8, v54
	v_lshrrev_b32_e32 v67, 24, v54
	v_and_b16 v21.h, 0xff, v54.h
	v_and_b16 v22.l, 0xff, v24.l
	v_lshrrev_b32_e32 v54, 8, v24
	v_lshrrev_b32_e32 v68, 24, v24
	v_and_b16 v22.h, 0xff, v24.h
	v_and_b16 v23.l, 0xff, v55.l
	v_lshrrev_b32_e32 v80, 8, v55
	v_lshrrev_b32_e32 v81, 24, v55
	v_and_b16 v23.h, 0xff, v55.h
	v_and_b16 v24.l, 0xff, v25.l
	v_lshrrev_b32_e32 v55, 8, v25
	v_lshrrev_b32_e32 v82, 24, v25
	v_and_b16 v24.h, 0xff, v25.h
	v_and_b16 v25.l, 0xff, v56.l
	v_lshrrev_b32_e32 v83, 8, v56
	v_lshrrev_b32_e32 v84, 24, v56
	v_and_b16 v25.h, 0xff, v56.h
	v_and_b16 v26.l, 0xff, v57.l
	v_lshrrev_b32_e32 v56, 8, v57
	v_lshrrev_b32_e32 v85, 24, v57
	v_and_b16 v26.h, 0xff, v57.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v57, v39, v35, 0x5010400
	v_perm_b32 v86, v39, v35, 0x7030602
	v_perm_b32 v87, v40, v36, 0x5010400
	v_perm_b32 v88, v40, v36, 0x7030602
	v_perm_b32 v89, v41, v37, 0x5010400
	v_perm_b32 v90, v41, v37, 0x7030602
	v_perm_b32 v91, v42, v38, 0x5010400
	v_perm_b32 v92, v42, v38, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v27.l, 0xff, v58.l
	v_lshrrev_b32_e32 v93, 8, v58
	v_lshrrev_b32_e32 v94, 24, v58
	v_and_b16 v27.h, 0xff, v58.h
	v_and_b16 v28.l, 0xff, v31.l
	v_lshrrev_b32_e32 v58, 8, v31
	v_lshrrev_b32_e32 v95, 24, v31
	v_and_b16 v28.h, 0xff, v31.h
	v_and_b16 v29.l, 0xff, v59.l
	v_lshrrev_b32_e32 v96, 8, v59
	v_lshrrev_b32_e32 v97, 24, v59
	v_and_b16 v29.h, 0xff, v59.h
	v_and_b16 v30.l, 0xff, v32.l
	v_lshrrev_b32_e32 v59, 8, v32
	v_lshrrev_b32_e32 v98, 24, v32
	v_and_b16 v30.h, 0xff, v32.h
	v_and_b16 v31.l, 0xff, v60.l
	v_lshrrev_b32_e32 v99, 8, v60
	v_lshrrev_b32_e32 v100, 24, v60
	v_and_b16 v31.h, 0xff, v60.h
	v_and_b16 v32.l, 0xff, v33.l
	v_lshrrev_b32_e32 v60, 8, v33
	v_lshrrev_b32_e32 v101, 24, v33
	v_and_b16 v32.h, 0xff, v33.h
	v_and_b16 v33.l, 0xff, v61.l
	v_lshrrev_b32_e32 v102, 8, v61
	v_lshrrev_b32_e32 v103, 24, v61
	v_and_b16 v33.h, 0xff, v61.h
	v_and_b16 v34.l, 0xff, v62.l
	v_lshrrev_b32_e32 v61, 8, v62
	v_lshrrev_b32_e32 v104, 24, v62
	v_and_b16 v34.h, 0xff, v62.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v62, v47, v43, 0x5010400
	v_perm_b32 v105, v47, v43, 0x7030602
	v_perm_b32 v106, v48, v44, 0x5010400
	v_perm_b32 v107, v48, v44, 0x7030602
	v_perm_b32 v108, v49, v45, 0x5010400
	v_perm_b32 v109, v49, v45, 0x7030602
	v_perm_b32 v110, v50, v46, 0x5010400
	v_perm_b32 v111, v50, v46, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v35.l, 8, v63.l
	v_lshlrev_b16 v39.l, 8, v80.l
	v_lshrrev_b32_e32 v80, 8, v57
	v_lshlrev_b16 v35.h, 8, v64.l
	v_lshlrev_b16 v39.h, 8, v81.l
	v_lshrrev_b32_e32 v81, 24, v57
	v_lshlrev_b16 v36.l, 8, v53.l
	v_lshlrev_b16 v40.h, 8, v82.l
	v_lshrrev_b32_e32 v82, 8, v86
	v_lshlrev_b16 v36.h, 8, v65.l
	v_lshlrev_b16 v41.l, 8, v83.l
	v_lshrrev_b32_e32 v83, 24, v86
	v_lshlrev_b16 v37.l, 8, v66.l
	v_lshlrev_b16 v41.h, 8, v84.l
	v_lshrrev_b32_e32 v84, 8, v87
	v_lshlrev_b16 v37.h, 8, v67.l
	v_lshlrev_b16 v38.l, 8, v54.l
	v_lshlrev_b16 v38.h, 8, v68.l
	v_lshlrev_b16 v40.l, 8, v55.l
	v_lshlrev_b16 v42.l, 8, v56.l
	v_lshlrev_b16 v42.h, 8, v85.l
	v_and_b16 v43.l, 0xff, v57.l
	v_and_b16 v43.h, 0xff, v57.h
	v_and_b16 v44.l, 0xff, v86.l
	v_and_b16 v44.h, 0xff, v86.h
	v_and_b16 v45.l, 0xff, v87.l
	v_lshrrev_b32_e32 v85, 24, v87
	v_and_b16 v45.h, 0xff, v87.h
	v_and_b16 v46.l, 0xff, v88.l
	v_lshrrev_b32_e32 v86, 8, v88
	v_lshrrev_b32_e32 v87, 24, v88
	v_and_b16 v46.h, 0xff, v88.h
	v_and_b16 v47.l, 0xff, v89.l
	v_lshrrev_b32_e32 v88, 8, v89
	v_lshrrev_b32_e32 v112, 24, v89
	v_and_b16 v47.h, 0xff, v89.h
	v_and_b16 v48.l, 0xff, v90.l
	v_lshrrev_b32_e32 v89, 8, v90
	v_lshrrev_b32_e32 v113, 24, v90
	v_and_b16 v48.h, 0xff, v90.h
	v_and_b16 v49.l, 0xff, v91.l
	v_lshrrev_b32_e32 v90, 8, v91
	v_lshrrev_b32_e32 v114, 24, v91
	v_and_b16 v49.h, 0xff, v91.h
	v_and_b16 v50.l, 0xff, v92.l
	v_lshrrev_b32_e32 v91, 8, v92
	v_lshrrev_b32_e32 v115, 24, v92
	v_and_b16 v50.h, 0xff, v92.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v53.l, 8, v93.l
	v_lshlrev_b16 v53.h, 8, v94.l
	v_lshlrev_b16 v54.l, 8, v58.l
	v_lshlrev_b16 v54.h, 8, v95.l
	v_lshlrev_b16 v55.l, 8, v96.l
	v_lshlrev_b16 v55.h, 8, v97.l
	v_lshlrev_b16 v56.l, 8, v59.l
	v_lshlrev_b16 v56.h, 8, v98.l
	v_lshlrev_b16 v57.l, 8, v99.l
	v_lshlrev_b16 v57.h, 8, v100.l
	v_lshlrev_b16 v58.l, 8, v60.l
	v_lshlrev_b16 v58.h, 8, v101.l
	v_lshlrev_b16 v59.l, 8, v102.l
	v_lshlrev_b16 v59.h, 8, v103.l
	v_lshlrev_b16 v60.l, 8, v61.l
	v_lshlrev_b16 v60.h, 8, v104.l
	v_and_b16 v61.l, 0xff, v62.l
	v_lshrrev_b32_e32 v92, 8, v62
	v_lshrrev_b32_e32 v93, 24, v62
	v_and_b16 v61.h, 0xff, v62.h
	v_and_b16 v62.l, 0xff, v105.l
	v_lshrrev_b32_e32 v94, 8, v105
	v_lshrrev_b32_e32 v95, 24, v105
	v_and_b16 v62.h, 0xff, v105.h
	v_and_b16 v63.l, 0xff, v106.l
	v_lshrrev_b32_e32 v96, 8, v106
	v_lshrrev_b32_e32 v97, 24, v106
	v_and_b16 v63.h, 0xff, v106.h
	v_and_b16 v64.l, 0xff, v107.l
	v_lshrrev_b32_e32 v98, 8, v107
	v_lshrrev_b32_e32 v99, 24, v107
	v_and_b16 v64.h, 0xff, v107.h
	v_lshrrev_b32_e32 v100, 8, v108
	v_lshrrev_b32_e32 v101, 24, v108
	v_lshrrev_b32_e32 v102, 8, v109
	v_lshrrev_b32_e32 v103, 24, v109
	v_lshrrev_b32_e32 v104, 8, v110
	v_lshrrev_b32_e32 v105, 24, v110
	v_lshrrev_b32_e32 v106, 8, v111
	v_lshrrev_b32_e32 v107, 24, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v19.l, v19.l, v35.l
	v_lshlrev_b16 v35.l, 8, v80.l
	v_or_b16 v19.h, v19.h, v35.h
	v_lshlrev_b16 v35.h, 8, v81.l
	v_or_b16 v20.l, v20.l, v36.l
	v_lshlrev_b16 v36.l, 8, v82.l
	v_or_b16 v20.h, v20.h, v36.h
	v_lshlrev_b16 v36.h, 8, v83.l
	v_or_b16 v21.l, v21.l, v37.l
	v_lshlrev_b16 v37.l, 8, v84.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v65.l, 0xff, v108.l
	v_and_b16 v65.h, 0xff, v108.h
	v_and_b16 v66.l, 0xff, v109.l
	v_and_b16 v66.h, 0xff, v109.h
	v_and_b16 v67.l, 0xff, v110.l
	v_and_b16 v67.h, 0xff, v110.h
	v_and_b16 v68.l, 0xff, v111.l
	v_and_b16 v68.h, 0xff, v111.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v21.h, v21.h, v37.h
	v_or_b16 v22.l, v22.l, v38.l
	v_or_b16 v22.h, v22.h, v38.h
	v_or_b16 v23.l, v23.l, v39.l
	v_or_b16 v23.h, v23.h, v39.h
	v_or_b16 v24.l, v24.l, v40.l
	v_or_b16 v24.h, v24.h, v40.h
	v_or_b16 v25.l, v25.l, v41.l
	v_or_b16 v25.h, v25.h, v41.h
	v_lshlrev_b16 v37.h, 8, v85.l
	v_lshlrev_b16 v38.l, 8, v86.l
	v_lshlrev_b16 v38.h, 8, v87.l
	v_lshlrev_b16 v39.l, 8, v88.l
	v_lshlrev_b16 v39.h, 8, v112.l
	v_lshlrev_b16 v40.l, 8, v89.l
	v_lshlrev_b16 v40.h, 8, v113.l
	v_lshlrev_b16 v41.l, 8, v90.l
	v_lshlrev_b16 v41.h, 8, v114.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v27.l, v27.l, v53.l
	v_or_b16 v27.h, v27.h, v53.h
	v_or_b16 v28.l, v28.l, v54.l
	v_or_b16 v28.h, v28.h, v54.h
	v_or_b16 v29.l, v29.l, v55.l
	v_or_b16 v29.h, v29.h, v55.h
	v_or_b16 v30.l, v30.l, v56.l
	v_or_b16 v30.h, v30.h, v56.h
	v_or_b16 v31.l, v31.l, v57.l
	v_or_b16 v31.h, v31.h, v57.h
	v_or_b16 v32.l, v32.l, v58.l
	v_or_b16 v32.h, v32.h, v58.h
	v_or_b16 v33.l, v33.l, v59.l
	v_or_b16 v33.h, v33.h, v59.h
	v_or_b16 v34.l, v34.l, v60.l
	v_or_b16 v34.h, v34.h, v60.h
	v_lshlrev_b16 v53.l, 8, v92.l
	v_lshlrev_b16 v53.h, 8, v93.l
	v_lshlrev_b16 v54.l, 8, v94.l
	v_lshlrev_b16 v54.h, 8, v95.l
	v_lshlrev_b16 v55.l, 8, v96.l
	v_lshlrev_b16 v55.h, 8, v97.l
	v_lshlrev_b16 v56.l, 8, v98.l
	v_lshlrev_b16 v56.h, 8, v99.l
	v_lshlrev_b16 v57.l, 8, v100.l
	v_lshlrev_b16 v57.h, 8, v101.l
	v_lshlrev_b16 v58.l, 8, v102.l
	v_lshlrev_b16 v58.h, 8, v103.l
	v_lshlrev_b16 v59.l, 8, v104.l
	v_lshlrev_b16 v59.h, 8, v105.l
	v_lshlrev_b16 v60.l, 8, v106.l
	v_lshlrev_b16 v60.h, 8, v107.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v72, v19
	ds_store_b16_d16_hi v72, v19 offset:64
	ds_store_b16 v73, v20
	ds_store_b16_d16_hi v73, v20 offset:64
	ds_store_b16 v74, v21
	ds_store_b16_d16_hi v74, v21 offset:64
	ds_store_b16 v75, v22
	ds_store_b16_d16_hi v75, v22 offset:64
	ds_store_b16 v76, v23
	ds_store_b16_d16_hi v76, v23 offset:64
	v_or_b16 v19.l, v43.l, v35.l
	v_or_b16 v26.l, v26.l, v42.l
	v_lshlrev_b16 v42.l, 8, v91.l
	v_or_b16 v19.h, v43.h, v35.h
	v_or_b16 v20.l, v44.l, v36.l
	v_or_b16 v26.h, v26.h, v42.h
	v_lshlrev_b16 v42.h, 8, v115.l
	v_or_b16 v20.h, v44.h, v36.h
	v_or_b16 v21.l, v45.l, v37.l
	v_or_b16 v21.h, v45.h, v37.h
	v_or_b16 v22.l, v46.l, v38.l
	v_or_b16 v22.h, v46.h, v38.h
	v_or_b16 v23.l, v47.l, v39.l
	v_or_b16 v23.h, v47.h, v39.h
	v_or_b16 v35.l, v48.l, v40.l
	v_or_b16 v35.h, v48.h, v40.h
	v_or_b16 v36.l, v49.l, v41.l
	v_or_b16 v36.h, v49.h, v41.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v71, v69 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v72, v27 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v72, v24 offset:640
	ds_store_b16_d16_hi v72, v24 offset:704
	ds_store_b16 v77, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v72, v27 offset:16448
	ds_store_b16 v73, v28 offset:16384
	ds_store_b16_d16_hi v73, v28 offset:16448
	ds_store_b16 v74, v29 offset:16384
	ds_store_b16_d16_hi v74, v29 offset:16448
	ds_store_b16 v75, v30 offset:16384
	ds_store_b16_d16_hi v75, v30 offset:16448
	ds_store_b16 v76, v31 offset:16384
	ds_store_b16_d16_hi v76, v31 offset:16448
	ds_store_b16 v72, v32 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v77, v25 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v72, v32 offset:17088
	ds_store_b16 v77, v33 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v78, v26
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v77, v33 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v78, v26 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v78, v34 offset:16384
	ds_store_b16_d16_hi v78, v34 offset:16448
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v24.l, v61.l, v53.l
	v_or_b16 v24.h, v61.h, v53.h
	v_or_b16 v25.l, v62.l, v54.l
	v_or_b16 v25.h, v62.h, v54.h
	v_or_b16 v26.l, v63.l, v55.l
	v_or_b16 v26.h, v63.h, v55.h
	v_or_b16 v27.l, v64.l, v56.l
	v_or_b16 v27.h, v64.h, v56.h
	v_or_b16 v28.l, v65.l, v57.l
	v_or_b16 v28.h, v65.h, v57.h
	v_or_b16 v29.l, v66.l, v58.l
	v_or_b16 v29.h, v66.h, v58.h
	v_or_b16 v30.l, v67.l, v59.l
	v_or_b16 v30.h, v67.h, v59.h
	v_or_b16 v31.l, v68.l, v60.l
	v_or_b16 v31.h, v68.h, v60.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v72, v19 offset:8192
	ds_store_b16_d16_hi v72, v19 offset:8256
	ds_store_b16 v73, v20 offset:8192
	ds_store_b16_d16_hi v73, v20 offset:8256
	ds_store_b16 v74, v21 offset:8192
	ds_store_b16_d16_hi v74, v21 offset:8256
	ds_store_b16 v75, v22 offset:8192
	ds_store_b16_d16_hi v75, v22 offset:8256
	ds_store_b16 v76, v23 offset:8192
	ds_store_b16_d16_hi v76, v23 offset:8256
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v71, v79 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v72, v24 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v72, v35 offset:8832
	ds_store_b16_d16_hi v72, v35 offset:8896
	ds_store_b16 v77, v36 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v72, v24 offset:24640
	ds_store_b16 v73, v25 offset:24576
	ds_store_b16_d16_hi v73, v25 offset:24640
	ds_store_b16 v74, v26 offset:24576
	ds_store_b16_d16_hi v74, v26 offset:24640
	ds_store_b16 v75, v27 offset:24576
	ds_store_b16_d16_hi v75, v27 offset:24640
	ds_store_b16 v76, v28 offset:24576
	ds_store_b16_d16_hi v76, v28 offset:24640
	ds_store_b16 v72, v29 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v77, v36 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v72, v29 offset:25280
	v_lshlrev_b32_e32 v19, 3, v70
	v_lshlrev_b32_e32 v58, 6, v2
	v_lshlrev_b32_e32 v20, 5, v0
	v_and_b32_e32 v59, 8, v0
	v_and_b32_e32 v60, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v37.l, v50.l, v42.l
	v_or_b16 v37.h, v50.h, v42.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v77, v30 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v78, v37 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v77, v30 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v78, v37 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v78, v31 offset:24576
	ds_store_b16_d16_hi v78, v31 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v53, v1, 6, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v61, 8, v0
	v_and_b32_e32 v62, 32, v0
	v_and_or_b32 v57, 0x1800, v20, v19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v54, 16, v53
	v_xor_b32_e32 v55, 32, v53
	v_xor_b32_e32 v56, 48, v53
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr57
.LBB0_3:                                ; %Flow162
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v33, s14, v1
	s_ashr_i32 s1, s15, 7
	v_or_b32_e32 v48, s22, v3
	v_or_b32_e32 v49, s22, v7
	v_or_b32_e32 v47, s22, v8
	v_mul_lo_u32 v50, v33, s1
	v_or_b32_e32 v46, s22, v17
	v_or_b32_e32 v45, s22, v18
	v_or_b32_e32 v44, s22, v4
	v_or_b32_e32 v43, s22, v5
	v_or_b32_e32 v42, s22, v6
	v_add_nc_u32_e32 v41, s23, v3
	v_add_nc_u32_e32 v40, s23, v7
	v_add_nc_u32_e32 v39, s23, v8
	v_add_nc_u32_e32 v37, s23, v17
	v_add_nc_u32_e32 v35, s23, v18
	v_add_nc_u32_e32 v38, s23, v4
	v_add_nc_u32_e32 v36, s23, v5
	v_add_nc_u32_e32 v34, s23, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 5, 1
	v_bfe_i32 v3, v0, 3, 1
	v_lshl_or_b32 v53, v1, 6, v19
	v_and_or_b32 v57, 0x1800, v20, v19
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s27, s13, 6
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v2, 0x420, v2
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v1, 0x210, v3, v2
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_xor_b32_e32 v1, v1, v57
.Ltmp21:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v61, s33, v9
	v_xor_b32_e32 v54, 16, v53
	v_xor_b32_e32 v55, 32, v53
	v_xor_b32_e32 v56, 48, v53
	v_or_b32_e32 v62, v1, v58
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v6, s17
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v64, 32, v62
	v_xor_b32_e32 v65, 48, v62
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s11, s34, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
	s_add_i32 s27, s27, -3
	s_mov_b32 s46, 1
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s26
	s_mov_b32 s26, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s11, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s15, s14, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s34, s33
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v66, s34, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s22
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s15, s15, 25
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v67, s16, v9
	v_add_nc_u32_e32 v68, s16, v61
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s16, s16, s23
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v142, v66, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v66, s16, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[82:85], v67, s[28:31], 0 offen
	buffer_load_b128 v[86:89], v68, s[28:31], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s14, s14, s15
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v69, s16, v61
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s14, 7
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[90:93], v66, s[28:31], 0 offen
	buffer_load_b128 v[94:97], v69, s[28:31], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v70, v50, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s33
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v71, v48, s14, 1
	v_add_lshl_u32 v72, v49, s14, 1
	v_add_lshl_u32 v73, v47, s14, 1
	v_add_lshl_u32 v74, v46, s14, 1
	v_add_lshl_u32 v75, v45, s14, 1
	v_add_lshl_u32 v76, v44, s14, 1
	v_add_lshl_u32 v77, v43, s14, 1
	v_add_lshl_u32 v78, v42, s14, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s14, s14, s22
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v66, 0x80000000, v70 :: v_dual_cndmask_b32 v69, 0x80000000, v71
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v67, v41, s14, 1
	v_add_lshl_u32 v68, v40, s14, 1
	v_add_lshl_u32 v79, v39, s14, 1
	v_add_lshl_u32 v80, v37, s14, 1
	v_add_lshl_u32 v81, v35, s14, 1
	v_add_lshl_u32 v98, v38, s14, 1
	v_add_lshl_u32 v99, v36, s14, 1
	v_add_lshl_u32 v100, v34, s14, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v70, 0x80000000, v72 :: v_dual_cndmask_b32 v71, 0x80000000, v73
	v_dual_cndmask_b32 v72, 0x80000000, v74 :: v_dual_cndmask_b32 v73, 0x80000000, v75
	v_dual_cndmask_b32 v74, 0x80000000, v76 :: v_dual_cndmask_b32 v75, 0x80000000, v77
	v_dual_cndmask_b32 v76, 0x80000000, v78 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v77, 0x80000000, v79
	v_dual_cndmask_b32 v78, 0x80000000, v80 :: v_dual_cndmask_b32 v79, 0x80000000, v81
	v_dual_cndmask_b32 v80, 0x80000000, v98 :: v_dual_cndmask_b32 v81, 0x80000000, v99
	v_cndmask_b32_e32 v98, 0x80000000, v100, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v143, v66, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v144, v69, s[40:43], 0 offen
	buffer_load_u16 v145, v70, s[40:43], 0 offen
	buffer_load_u16 v146, v71, s[40:43], 0 offen
	buffer_load_u16 v147, v72, s[40:43], 0 offen
	buffer_load_u16 v148, v73, s[40:43], 0 offen
	buffer_load_u16 v149, v74, s[40:43], 0 offen
	buffer_load_u16 v150, v75, s[40:43], 0 offen
	buffer_load_u16 v151, v76, s[40:43], 0 offen
	buffer_load_u16 v152, v67, s[40:43], 0 offen
	buffer_load_u16 v153, v68, s[40:43], 0 offen
	buffer_load_u16 v154, v77, s[40:43], 0 offen
	buffer_load_u16 v155, v78, s[40:43], 0 offen
	buffer_load_u16 v156, v79, s[40:43], 0 offen
	buffer_load_u16 v157, v80, s[40:43], 0 offen
	buffer_load_u16 v158, v81, s[40:43], 0 offen
	buffer_load_u16 v159, v98, s[40:43], 0 offen
	s_mov_b32 s14, s0
	s_mov_b32 s15, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v66, s14, v53
	v_add_nc_u32_e32 v67, s14, v54
	v_add_nc_u32_e32 v68, s14, v55
	s_mov_b32 s16, s10
	v_add_nc_u32_e32 v69, s14, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v70, s15, v62
	v_add_nc_u32_e32 v71, s15, v63
	v_add_nc_u32_e32 v72, s15, v64
	v_add_nc_u32_e32 v73, s15, v65
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v78, s16, v62
	v_add_nc_u32_e32 v79, s16, v63
	v_add_nc_u32_e32 v80, s16, v64
	v_add_nc_u32_e32 v81, s16, v65
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[98:101], v66
	ds_load_b128 v[102:105], v67
	ds_load_b128 v[106:109], v68
	ds_load_b128 v[110:113], v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[74:77], v70
	ds_load_b128 v[114:117], v71
	ds_load_b128 v[118:121], v72
	ds_load_b128 v[122:125], v73
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[126:129], v78
	ds_load_b128 v[130:133], v79
	ds_load_b128 v[134:137], v80
	ds_load_b128 v[138:141], v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s46, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s14, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s46, s14, 0
	s_mov_b32 s12, s44
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s15, s46, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s46, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s15, s15, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s0, s45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[98:101], v[1:8] neg_lo:[1,1,0]
	s_mov_b32 s10, s35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s45, s15, 0x8000
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[74:81], v[126:129], v[98:101], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[114:117], v[102:105], v[66:73] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s35, s44, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s27
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[74:81], v[130:133], v[102:105], v[74:81] neg_lo:[1,1,0]
	s_mov_b32 s13, s14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[118:121], v[106:109], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[74:81], v[134:137], v[106:109], v[74:81] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[122:125], v[110:113], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[74:81], v[138:141], v[110:113], v[74:81] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v102, v69
	v_cvt_f32_i32_e32 v103, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v100, v75
	v_cvt_f32_i32_e32 v101, v74
	v_cvt_f32_i32_e32 v104, v77
	v_cvt_f32_i32_e32 v105, v76
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v71
	v_cvt_f32_i32_e32 v107, v70
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v108, v79
	v_cvt_f32_i32_e32 v109, v78
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v110, v73
	v_cvt_f32_i32_e32 v111, v72
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v112, v81
	v_cvt_f32_i32_e32 v113, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(19)
	v_perm_b32 v67, v86, v82, 0x5010400
	v_perm_b32 v68, v86, v82, 0x7030602
	v_perm_b32 v69, v87, v83, 0x5010400
	v_perm_b32 v70, v87, v83, 0x7030602
	v_perm_b32 v71, v88, v84, 0x5010400
	v_perm_b32 v72, v88, v84, 0x7030602
	v_perm_b32 v73, v89, v85, 0x5010400
	v_perm_b32 v74, v89, v85, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(17)
	v_perm_b32 v75, v94, v90, 0x5010400
	v_perm_b32 v76, v94, v90, 0x7030602
	v_perm_b32 v77, v95, v91, 0x5010400
	v_perm_b32 v78, v95, v91, 0x7030602
	v_perm_b32 v79, v96, v92, 0x5010400
	v_perm_b32 v80, v96, v92, 0x7030602
	v_perm_b32 v81, v97, v93, 0x5010400
	v_perm_b32 v82, v97, v93, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v83, 8, v67
	v_lshrrev_b32_e32 v84, 24, v67
	v_and_b16 v66.l, 0xff, v67.l
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v85, 8, v68
	v_lshrrev_b32_e32 v86, 24, v68
	v_and_b16 v67.h, 0xff, v68.h
	v_and_b16 v68.l, 0xff, v69.l
	v_lshrrev_b32_e32 v87, 8, v69
	v_lshrrev_b32_e32 v88, 24, v69
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.l, 0xff, v70.l
	v_lshrrev_b32_e32 v89, 8, v70
	v_lshrrev_b32_e32 v90, 24, v70
	v_and_b16 v69.h, 0xff, v70.h
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v91, 8, v71
	v_lshrrev_b32_e32 v92, 24, v71
	v_and_b16 v70.h, 0xff, v71.h
	v_and_b16 v71.l, 0xff, v72.l
	v_lshrrev_b32_e32 v93, 8, v72
	v_lshrrev_b32_e32 v94, 24, v72
	v_and_b16 v71.h, 0xff, v72.h
	v_and_b16 v72.l, 0xff, v73.l
	v_lshrrev_b32_e32 v95, 8, v73
	v_lshrrev_b32_e32 v96, 24, v73
	v_and_b16 v72.h, 0xff, v73.h
	v_and_b16 v73.l, 0xff, v74.l
	v_lshrrev_b32_e32 v97, 8, v74
	v_lshrrev_b32_e32 v114, 24, v74
	v_and_b16 v73.h, 0xff, v74.h
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v115, 16, v143
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v74.l, 0xff, v75.l
	v_lshrrev_b32_e32 v116, 8, v75
	v_lshrrev_b32_e32 v117, 24, v75
	v_and_b16 v74.h, 0xff, v75.h
	v_and_b16 v75.l, 0xff, v76.l
	v_lshrrev_b32_e32 v118, 8, v76
	v_lshrrev_b32_e32 v119, 24, v76
	v_and_b16 v75.h, 0xff, v76.h
	v_and_b16 v76.l, 0xff, v77.l
	v_lshrrev_b32_e32 v120, 8, v77
	v_lshrrev_b32_e32 v121, 24, v77
	v_and_b16 v76.h, 0xff, v77.h
	v_and_b16 v77.l, 0xff, v78.l
	v_lshrrev_b32_e32 v122, 8, v78
	v_lshrrev_b32_e32 v123, 24, v78
	v_and_b16 v77.h, 0xff, v78.h
	v_and_b16 v78.l, 0xff, v79.l
	v_lshrrev_b32_e32 v124, 8, v79
	v_lshrrev_b32_e32 v125, 24, v79
	v_and_b16 v78.h, 0xff, v79.h
	v_and_b16 v79.l, 0xff, v80.l
	v_lshrrev_b32_e32 v126, 8, v80
	v_lshrrev_b32_e32 v127, 24, v80
	v_and_b16 v79.h, 0xff, v80.h
	v_and_b16 v80.l, 0xff, v81.l
	v_lshrrev_b32_e32 v128, 8, v81
	v_lshrrev_b32_e32 v129, 24, v81
	v_and_b16 v80.h, 0xff, v81.h
	v_and_b16 v81.l, 0xff, v82.l
	v_lshrrev_b32_e32 v130, 8, v82
	v_lshrrev_b32_e32 v131, 24, v82
	v_and_b16 v81.h, 0xff, v82.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v82.l, 8, v83.l
	v_lshlrev_b16 v82.h, 8, v84.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v140, 16, v153
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v83.l, 8, v85.l
	v_lshlrev_b16 v85.l, 8, v89.l
	v_lshlrev_b16 v89.l, 8, v97.l
	v_lshlrev_b16 v89.h, 8, v114.l
	v_or_b16 v66.l, v66.l, v82.l
	v_or_b16 v66.h, v66.h, v82.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v82, v115, v140 :: v_dual_lshlrev_b32 v133, 16, v145
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v145, 16, v158
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v85.h, 8, v90.l
	v_or_b16 v73.l, v73.l, v89.l
	v_or_b16 v73.h, v73.h, v89.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v89, v115, v145 :: v_dual_lshlrev_b32 v138, 16, v150
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v141, 16, v154
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v69.l, v69.l, v85.l
	v_or_b16 v69.h, v69.h, v85.h
	v_lshlrev_b16 v83.h, 8, v86.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v20, v89, v113
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v85, v115, v141
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v135, 16, v147
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v84.l, 8, v87.l
	v_lshlrev_b16 v86.l, 8, v91.l
	v_lshlrev_b16 v86.h, 8, v92.l
	v_lshlrev_b16 v87.l, 8, v93.l
	v_lshlrev_b16 v87.h, 8, v94.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v143, 16, v156
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v91.l, 8, v118.l
	v_lshlrev_b16 v93.h, 8, v123.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v123, v115, v138 :: v_dual_lshlrev_b32 v132, 16, v144
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v144, 16, v157
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v28, v85, v105
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v115, v135
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v160, s15, v11
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v136, 16, v148
	v_lshlrev_b32_e32 v137, 16, v149
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v84.h, 8, v88.l
	v_lshlrev_b16 v88.l, 8, v95.l
	v_lshlrev_b16 v88.h, 8, v96.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v114, 16, v152
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v70.l, v70.l, v86.l
	v_or_b16 v70.h, v70.h, v86.h
	v_or_b16 v71.l, v71.l, v87.l
	v_or_b16 v71.h, v71.h, v87.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v86, v115, v144
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v134, 16, v146
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v146, 16, v159
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v87, v115, v143
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v139, 16, v151
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v27, v118, v102
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v160, v142 offset:32768
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v142, 16, v155
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v90.l, 8, v116.l
	v_lshlrev_b16 v90.h, 8, v117.l
	v_lshlrev_b16 v91.h, 8, v119.l
	v_lshlrev_b16 v92.l, 8, v120.l
	v_lshlrev_b16 v92.h, 8, v121.l
	v_lshlrev_b16 v93.l, 8, v122.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v115, v137
	v_mul_f32_e32 v121, v115, v136
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v67.l, v67.l, v83.l
	v_or_b16 v67.h, v67.h, v83.h
	v_or_b16 v68.l, v68.l, v84.l
	v_or_b16 v68.h, v68.h, v84.h
	v_or_b16 v72.l, v72.l, v88.l
	v_or_b16 v72.h, v72.h, v88.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v83, v115, v114
	v_mul_f32_e32 v84, v115, v142
	v_mul_f32_e32 v88, v115, v146
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v19, v123, v111
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v117, v115, v132
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v32, v82, v100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v116, v115, v133
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v24, v87, v109
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v122, v115, v139 :: v_dual_fmac_f32 v25, v86, v108
	v_mul_f32_e32 v119, v115, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v30, v117, v99 :: v_dual_add_nc_u32 v161, s44, v12
	v_dual_fmac_f32 v23, v120, v106 :: v_dual_add_nc_u32 v162, s44, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v26, v119, v103 :: v_dual_add_nc_u32 v163, s44, v14
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v17, v83, v101 :: v_dual_add_nc_u32 v164, s44, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v22, v121, v107 :: v_dual_add_nc_u32 v165, s44, v16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v29, v84, v104 :: v_dual_add_nc_u32 v166, s44, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v18, v122, v110 :: v_dual_add_nc_u32 v167, s44, v52
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v94.l, 8, v124.l
	v_lshlrev_b16 v94.h, 8, v125.l
	v_lshlrev_b16 v95.l, 8, v126.l
	v_lshlrev_b16 v95.h, 8, v127.l
	v_lshlrev_b16 v96.l, 8, v128.l
	v_lshlrev_b16 v96.h, 8, v129.l
	v_lshlrev_b16 v97.l, 8, v130.l
	v_lshlrev_b16 v97.h, 8, v131.l
	v_or_b16 v74.l, v74.l, v90.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v31, v116, v98
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v21, v88, v112
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v74.h, v74.h, v90.h
	v_or_b16 v75.l, v75.l, v91.l
	v_or_b16 v75.h, v75.h, v91.h
	v_or_b16 v76.l, v76.l, v92.l
	v_or_b16 v76.h, v76.h, v92.h
	v_or_b16 v77.l, v77.l, v93.l
	v_or_b16 v77.h, v77.h, v93.h
	v_or_b16 v78.l, v78.l, v94.l
	v_or_b16 v78.h, v78.h, v94.h
	v_or_b16 v79.l, v79.l, v95.l
	v_or_b16 v79.h, v79.h, v95.h
	v_or_b16 v80.l, v80.l, v96.l
	v_or_b16 v80.h, v80.h, v96.h
	v_or_b16 v81.l, v81.l, v97.l
	v_or_b16 v81.h, v81.h, v97.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v161, v66
	ds_store_b16_d16_hi v161, v66 offset:64
	ds_store_b16 v162, v67
	ds_store_b16_d16_hi v162, v67 offset:64
	ds_store_b16 v163, v68
	ds_store_b16_d16_hi v163, v68 offset:64
	ds_store_b16 v164, v69
	ds_store_b16_d16_hi v164, v69 offset:64
	ds_store_b16 v165, v70
	ds_store_b16_d16_hi v165, v70 offset:64
	ds_store_b16 v161, v71 offset:640
	ds_store_b16_d16_hi v161, v71 offset:704
	ds_store_b16 v166, v72
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v161, v74 offset:16384
	ds_store_b16_d16_hi v161, v74 offset:16448
	ds_store_b16 v162, v75 offset:16384
	ds_store_b16_d16_hi v162, v75 offset:16448
	ds_store_b16 v163, v76 offset:16384
	ds_store_b16_d16_hi v163, v76 offset:16448
	ds_store_b16 v164, v77 offset:16384
	ds_store_b16_d16_hi v164, v77 offset:16448
	ds_store_b16 v165, v78 offset:16384
	ds_store_b16_d16_hi v165, v78 offset:16448
	ds_store_b16 v161, v79 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v166, v72 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v161, v79 offset:17088
	ds_store_b16 v166, v80 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v167, v73
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v166, v80 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v167, v73 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v167, v81 offset:16384
	ds_store_b16_d16_hi v167, v81 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v58 :: v_dual_mov_b32 v61, v59
	v_mov_b32_e32 v62, v60
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v17, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
.LBB0_8:                                ; %Flow163
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v61
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v9, s0, v55
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v4, s0, v54
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v62
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v51, s0, v56
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v87, 0xf0, v0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v1, v1, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s0, v53
	v_mov_b32_e32 v59, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[5:8], v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v57
	v_mov_b32_e32 v57, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v96, v1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[9:12], v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v51, 0, 1, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v98, 16, v96
	v_xor_b32_e32 v97, 32, v96
	v_xor_b32_e32 v99, 48, v96
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v51
	v_mov_b32_e32 v51, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v51, s12, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v52, s12, v98
	v_add_nc_u32_e32 v63, s12, v97
	ds_load_b128 v[57:60], v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v64, v62 :: v_dual_add_nc_u32 v51, s12, v99
	v_mov_b32_e32 v66, v62
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[70:73], v52
	ds_load_b128 v[74:77], v51
	ds_load_b128 v[78:81], v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v63, v62
	v_mov_b32_e32 v65, v62
	v_mov_b32_e32 v67, v62
	v_mov_b32_e32 v68, v62
	v_mov_b32_e32 v69, v62
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[57:60], v[13:16], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[70:73], v[5:8], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[78:81], v[9:12], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[74:77], v[1:4], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v59, v64
	v_cvt_f32_i32_e32 v60, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v51, v66
	v_cvt_f32_i32_e32 v52, v67
	v_cvt_f32_i32_e32 v57, v68
	v_cvt_f32_i32_e32 v58, v69
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v66, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v61, s10, v96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v68, s10, v98
	v_add_nc_u32_e32 v69, s10, v97
	ds_load_b128 v[64:67], v61
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v72, v70 :: v_dual_add_nc_u32 v61, s10, v99
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v74, v70
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[78:81], v68
	ds_load_b128 v[82:85], v61
	ds_load_b128 v[88:91], v69
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v73, v70
	v_mov_b32_e32 v75, v70
	v_mov_b32_e32 v76, v70
	v_mov_b32_e32 v77, v70
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[64:67], v[13:16], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[5:8], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[88:91], v[9:12], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[82:85], v[1:4], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v68, v72
	v_cvt_f32_i32_e32 v69, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v64, v74
	v_cvt_f32_i32_e32 v65, v75
	v_cvt_f32_i32_e32 v66, v76
	v_cvt_f32_i32_e32 v67, v77
	v_cvt_f32_i32_e32 v61, v70
	v_cvt_f32_i32_e32 v70, v71
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v50, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v48, s0, 1
	v_add_lshl_u32 v3, v49, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v4, v47, s0, 1
	v_add_lshl_u32 v5, v45, s0, 1
	v_add_lshl_u32 v6, v44, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v100, v1, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v3, v46, s0, 1
	v_add_lshl_u32 v7, v43, s0, 1
	v_add_lshl_u32 v8, v42, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v9, s0, v41, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v10, s0, v40, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v11, s0, v39, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v102, v1, s[24:27], 0 offen
	buffer_load_u16 v101, v2, s[24:27], 0 offen
	buffer_load_u16 v93, v4, s[24:27], 0 offen
	buffer_load_u16 v92, v3, s[24:27], 0 offen
	buffer_load_u16 v89, v5, s[24:27], 0 offen
	buffer_load_u16 v88, v6, s[24:27], 0 offen
	buffer_load_u16 v84, v7, s[24:27], 0 offen
	buffer_load_u16 v83, v8, s[24:27], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v4, s0, v37, 1
	v_add_lshl_u32 v5, s0, v35, 1
	v_cndmask_b32_e32 v1, 0x80000000, v9, vcc_lo
	v_add_lshl_u32 v6, s0, v38, 1
	v_add_lshl_u32 v7, s0, v36, 1
	v_add_lshl_u32 v8, s0, v34, 1
	v_dual_cndmask_b32 v2, 0x80000000, v10 :: v_dual_cndmask_b32 v3, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_mov_b32_e32 v74, 0
	s_clause 0x7
	buffer_load_u16 v104, v1, s[24:27], 0 offen
	buffer_load_u16 v103, v2, s[24:27], 0 offen
	buffer_load_u16 v95, v3, s[24:27], 0 offen
	buffer_load_u16 v94, v4, s[24:27], 0 offen
	buffer_load_u16 v91, v5, s[24:27], 0 offen
	buffer_load_u16 v90, v6, s[24:27], 0 offen
	buffer_load_u16 v86, v7, s[24:27], 0 offen
	buffer_load_u16 v85, v8, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s45, v53
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v2, s45, v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v54, 0, 1, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s45, v55
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v4, s45, v56
	v_mov_b32_e32 v56, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v54
	v_mov_b32_e32 v54, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[1:4], v4
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v73, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v55, s44, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v54, s44, v96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v79, v74 :: v_dual_add_nc_u32 v56, s44, v97
	v_mov_b32_e32 v75, v74
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[105:108], v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v77, v74 :: v_dual_add_nc_u32 v54, s44, v99
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v55
	ds_load_b128 v[113:116], v54
	ds_load_b128 v[117:120], v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v76, v74
	v_mov_b32_e32 v78, v74
	v_mov_b32_e32 v80, v74
	v_mov_b32_e32 v81, v74
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[105:108], v[13:16], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[109:112], v[9:12], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[117:120], v[5:8], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[113:116], v[1:4], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v56, v76
	v_cvt_f32_i32_e32 v71, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v78
	v_cvt_f32_i32_e32 v55, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v82, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v80, s35, v98
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v53, s35, v96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v110, v105 :: v_dual_add_nc_u32 v81, s35, v97
	v_mov_b32_e32 v106, v105
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[76:79], v53
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v108, v105 :: v_dual_add_nc_u32 v53, s35, v99
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[96:99], v80
	ds_load_b128 v[113:116], v53
	ds_load_b128 v[117:120], v81
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v107, v105
	v_mov_b32_e32 v109, v105
	v_mov_b32_e32 v111, v105
	v_mov_b32_e32 v112, v105
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[76:79], v[13:16], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[96:99], v[9:12], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[117:120], v[5:8], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[113:116], v[1:4], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v53, v105
	v_cvt_f32_i32_e32 v76, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v79, v107
	v_cvt_f32_i32_e32 v80, v108
	v_cvt_f32_i32_e32 v77, v109
	v_cvt_f32_i32_e32 v78, v110
	v_cvt_f32_i32_e32 v81, v111
	v_cvt_f32_i32_e32 v82, v112
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s34, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s34, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v83.h, v84.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v84.h, v83.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v50, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v48, s0, 1
	v_add_lshl_u32 v3, v49, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v4, v47, s0, 1
	v_add_lshl_u32 v5, v46, s0, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v3, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v3, v1, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v4, v45, s0, 1
	v_add_lshl_u32 v7, v44, s0, 1
	v_add_lshl_u32 v8, v43, s0, 1
	v_cndmask_b32_e32 v9, 0x80000000, v5, vcc_lo
	v_add_lshl_u32 v5, v42, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v10, 0x80000000, v4, vcc_lo
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v14, s0, v41, 1
	v_add_lshl_u32 v15, s0, v40, 1
	v_add_lshl_u32 v16, s0, v39, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v11, 0x80000000, v7 :: v_dual_cndmask_b32 v12, 0x80000000, v8
	v_cndmask_b32_e32 v13, 0x80000000, v5, vcc_lo
	s_clause 0x7
	buffer_load_u16 v4, v2, s[24:27], 0 offen
	buffer_load_u16 v5, v6, s[24:27], 0 offen
	buffer_load_u16 v6, v1, s[24:27], 0 offen
	buffer_load_u16 v7, v9, s[24:27], 0 offen
	buffer_load_u16 v8, v10, s[24:27], 0 offen
	buffer_load_u16 v9, v11, s[24:27], 0 offen
	buffer_load_u16 v10, v12, s[24:27], 0 offen
	buffer_load_u16 v11, v13, s[24:27], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v13, s0, v37, 1
	v_dual_cndmask_b32 v1, 0x80000000, v14 :: v_dual_cndmask_b32 v12, 0x80000000, v16
	v_cndmask_b32_e32 v2, 0x80000000, v15, vcc_lo
	v_add_lshl_u32 v14, s0, v35, 1
	v_add_lshl_u32 v15, s0, v38, 1
	v_add_lshl_u32 v16, s0, v36, 1
	v_add_lshl_u32 v34, s0, v34, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v37.h, v100.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x7
	buffer_load_u16 v35, v1, s[24:27], 0 offen
	buffer_load_u16 v36, v2, s[24:27], 0 offen
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	buffer_load_u16 v13, v13, s[24:27], 0 offen
	buffer_load_u16 v14, v14, s[24:27], 0 offen
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(21)
	v_mov_b16_e32 v42.h, v94.l
	v_mov_b16_e32 v42.l, v37.l
	v_mov_b16_e32 v38.h, v103.l
	v_mov_b16_e32 v38.l, v37.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v84.l, v37.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v41.h, v95.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v42, v37, v42
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(19)
	v_mov_b16_e32 v46.h, v90.l
	v_mov_b16_e32 v41.l, v37.l
	v_mov_b16_e32 v46.l, v37.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v38, v37, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v84, v37, v84
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v1, v33, s23
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v33.h, v104.l
	v_mov_b16_e32 v45.h, v91.l
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v49.h, v86.l
	v_mov_b16_e32 v33.l, v37.l
	v_mov_b16_e32 v45.l, v37.l
	v_mov_b16_e32 v49.l, v37.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v41, v37, v41
	v_mul_f32_e32 v46, v37, v46
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v39.h, v102.l
	v_mov_b16_e32 v40.h, v101.l
	v_mov_b16_e32 v43.h, v93.l
	v_mov_b16_e32 v44.h, v92.l
	v_mov_b16_e32 v47.h, v89.l
	v_mov_b16_e32 v48.h, v88.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v50.h, v85.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v39.l, v37.l
	v_mov_b16_e32 v40.l, v37.l
	v_mov_b16_e32 v43.l, v37.l
	v_mov_b16_e32 v44.l, v37.l
	v_mov_b16_e32 v47.l, v37.l
	v_mov_b16_e32 v48.l, v37.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v50.l, v37.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v83.l, v37.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v37, v33
	v_mul_f32_e32 v45, v37, v45
	v_mul_f32_e32 v49, v37, v49
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v87
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v86, 0x7632 :: v_dual_mul_f32 v39, v37, v39
	v_mov_b16_e32 v87.h, v37.l
	v_mov_b16_e32 v88.h, v37.l
	v_mov_b16_e32 v89.h, v37.l
	v_mov_b16_e32 v90.h, v37.l
	v_mov_b16_e32 v91.h, v37.l
	v_mov_b16_e32 v92.h, v37.l
	v_mov_b16_e32 v93.h, v37.l
	v_mov_b16_e32 v94.h, v37.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v37, v40
	v_mul_f32_e32 v44, v37, v44
	v_mul_f32_e32 v43, v37, v43
	v_mul_f32_e32 v48, v37, v48
	v_mul_f32_e32 v47, v37, v47
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v50, v37, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v37, v83
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v33, v33, v61, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v39, v62, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v85, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v33, s2
	v_cndmask_b32_e64 v30, v30, v39, s2
	s_mov_b32 s23, 0x31027000
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v38, v70, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v38, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v41, v41, v68, v28
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v42, v42, v69, v29
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v45, v64, v24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v46, v46, v65, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v42, s2
	v_cndmask_b32_e64 v28, v28, v41, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v3, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v45, s2
	v_cndmask_b32_e64 v25, v25, v46, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v6, 16, v6
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v35
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v35, 16, v36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v50, v50, v67, v21
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v3, v12
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v3, v13 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v3, v7
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v14, v3, v14
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v12, v12, v79, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v13, v13, v80, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v37, v57, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v50, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v5, v3, v5 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v29, v13, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v15, v3, v15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v14, v14, v77, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v28, v12, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v3, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v43, v59, v26
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v15, v15, v78, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v37, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v3, v6
	v_mul_f32_e32 v9, v3, v9
	v_mul_f32_e32 v11, v3, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v25, v15, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v3, v10
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v3, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v34, v82, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v24, v14, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v3, v8
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v3, v3, v16 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v33, v53, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v51, v22
	v_fma_f32 v51, v84, v58, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v43, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v49, v49, v66, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v17, v16, s3
	v_cndmask_b32_e64 v17, v21, v34, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v72, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v51, s2
	v_cndmask_b32_e64 v20, v20, v49, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v52, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v47, s2
	v_cndmask_b32_e64 v10, v19, v10, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v56, v26
	v_fma_f32 v11, v11, v73, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v81, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v48, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v63, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v26, v6, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v33, v35, v76, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v18, v11, s3
	v_cndmask_b32_e64 v3, v20, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v44, v60, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v40, s2
	v_cndmask_b32_e64 v18, v32, v33, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v74, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v44, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v75, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v55, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v71, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v23, v9, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v54, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v31, v5, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v30, v4, s3
	v_cndmask_b32_e64 v7, v27, v7, s3
	v_cndmask_b32_e64 v8, v22, v8, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v13
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v13 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v12
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v15
	v_ldexp_f32 v20, v20, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v14 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v17
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v3 :: v_dual_add_f32 v20, 1.0, v20
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_ldexp_f32 v19, v19, v28
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v25, v25
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v20, v20, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	v_ldexp_f32 v22, v22, v29
	v_ldexp_f32 v21, v21, v30
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	v_ldexp_f32 v24, v24, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v32
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v29, null, v19, v19, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v26, v33
	v_ldexp_f32 v25, v25, v34
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, null, v22, v22, v13
	v_div_scale_f32 v33, null, v21, v21, v12
	v_rcp_f32_e32 v43, v29
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v24, v24, v15
	v_fma_f32 v51, -v27, v42, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v23, v23, v14
	v_rcp_f32_e32 v44, v31
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v26, v26, v17
	v_rcp_f32_e32 v46, v35
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v41, null, v25, v25, v3
	v_rcp_f32_e32 v47, v37
	v_fma_f32 v52, -v29, v43, 1.0
	v_rcp_f32_e32 v48, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v53, -v31, v44, 1.0
	v_div_scale_f32 v28, vcc_lo, v18, v20, v18
	v_fma_f32 v54, -v33, v45, 1.0
	v_div_scale_f32 v30, s0, v16, v19, v16
	v_dual_fmac_f32 v43, v52, v43 :: v_dual_fmac_f32 v44, v53, v44
	v_fma_f32 v55, -v35, v46, 1.0
	v_div_scale_f32 v32, s1, v13, v22, v13
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, s2, v12, v21, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_dual_mul_f32 v51, v28, v42 :: v_dual_mul_f32 v52, v30, v43
	v_div_scale_f32 v36, s3, v15, v24, v15
	v_fma_f32 v57, -v39, v48, 1.0
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v38, s4, v14, v23, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_fmac_f32 v48, v57, v48
	v_dual_mul_f32 v53, v32, v44 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v59, -v27, v51, v28
	v_fma_f32 v60, -v29, v52, v30
	v_div_scale_f32 v40, s5, v17, v26, v17
	v_div_scale_f32 v50, s6, v3, v25, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v52, v60, v43
	v_dual_mul_f32 v55, v36, v46 :: v_dual_mul_f32 v56, v38, v47
	v_fma_f32 v61, -v31, v53, v32
	v_fma_f32 v62, -v33, v54, v34
	v_fmac_f32_e32 v51, v59, v42
	v_dual_mul_f32 v57, v40, v48 :: v_dual_mul_f32 v58, v50, v49
	v_fma_f32 v63, -v35, v55, v36
	v_fma_f32 v64, -v37, v56, v38
	v_dual_fmac_f32 v53, v61, v44 :: v_dual_fmac_f32 v54, v62, v45
	v_fma_f32 v27, -v27, v51, v28
	v_fma_f32 v28, -v29, v52, v30
	v_fma_f32 v66, -v41, v58, v50
	v_dual_fmac_f32 v55, v63, v46 :: v_dual_fmac_f32 v56, v64, v47
	v_fma_f32 v29, -v31, v53, v32
	v_div_fmas_f32 v27, v27, v42, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v33, v54, v34
	v_div_fmas_f32 v28, v28, v43, v52
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v58, v66, v49
	v_fma_f32 v31, -v35, v55, v36
	v_div_fmas_f32 v29, v29, v44, v53
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v32, -v37, v56, v38
	v_div_fixup_f32 v18, v27, v20, v18
	v_div_fmas_f32 v20, v30, v45, v54
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v28, v19, v16
	v_div_fmas_f32 v19, v31, v46, v55
	s_mov_b32 vcc_lo, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v32, v47, v56
	v_fma_f32 v65, -v39, v57, v40
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v15, v19, v24, v15
	v_fma_f32 v34, -v41, v58, v50
	v_div_fixup_f32 v14, v18, v23, v14
	v_fmac_f32_e32 v57, v65, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v4.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v15
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v13, v29, v22, v13
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v8, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v39, v57, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v88
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v92.l, v8.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v33, v48, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v4, v14, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v12, v20, v21, v12
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v7, v7, v13 :: v_dual_and_b32 v14, 1, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v13, v34, v49, v58
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.l, v5.h
	v_cmp_o_f32_e64 s4, v8, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v8, v14, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v12
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v13, v25, v3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v12, v16, v26, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s4
	v_and_b32_e32 v13, 1, v87
	v_mov_b16_e32 v89.l, v7.h
	v_mov_b16_e32 v90.l, v6.h
	v_mov_b16_e32 v91.l, v9.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v10, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v5, v13, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v11, v11, v12 :: v_dual_and_b32 v12, 1, v89
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v94.l, v3.h
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v91
	v_cmp_o_f32_e64 s1, v7, v7
	v_cmp_o_f32_e64 s3, v9, v9
	v_mov_b16_e32 v93.l, v11.h
	v_add3_u32 v7, v7, v12, 0x7fff
	v_add3_u32 v0, v6, v10, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v86, vcc_lo
	v_add3_u32 v9, v9, v13, 0x7fff
	v_and_b32_e32 v12, 1, v94
	v_cmp_o_f32_e64 s2, v6, v6
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s0
	v_cmp_o_f32_e64 s0, v3, v3
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s3
	v_and_b32_e32 v6, 1, v93
	v_cndmask_b32_e32 v9, 0x1054, v85, vcc_lo
	v_add3_u32 v3, v3, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_cndmask_b32_e32 v3, v5, v4, vcc_lo
	v_add3_u32 v6, v11, v6, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v0.h, s2
	v_cndmask_b32_e32 v8, v4, v5, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v10
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v6, 4, v6
	v_cndmask_b32_e32 v6, v7, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v5, v9, 4, v9
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_or_b32_e32 v7, s22, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 0x5040504, v4
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x7060706, v5
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v2, v3, v8, v4
	v_perm_b32 v4, v6, v0, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v3, v3, v8, v5
	v_perm_b32 v5, v6, v0, v5
	v_add_lshl_u32 v0, v7, v1, 1
	buffer_store_b128 v[2:5], v0, s[20:23], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 168
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12012
; TotalNumSgprs: 49
; NumVgprs: 168
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
