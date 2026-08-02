	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
	s_load_b256 s[20:27], s[0:1], 0x0
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v10, v0, 0, 1
	v_and_b32_e32 v43, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v8, 62, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 48, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 0x420, v10
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v17, 1, v0
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v9, 48, v9
	v_and_b32_e32 v68, 8, v0
	v_and_b32_e32 v69, 32, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v11, 48, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v70, v6, v9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s30, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s6, s5, 31
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
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s5, s5, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s31, v8
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s5
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s4, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v8, v10, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v7, v7, 1, v11
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v57, 0, v70
	s_mov_b64 s[16:17], s[26:27]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v71, v43, 10, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v10, 2, v7
	v_or_b32_e32 v11, 4, v7
	v_or_b32_e32 v12, 6, v7
	v_or_b32_e32 v13, 8, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v72, 0x90, v71
	v_xor_b32_e32 v73, 0x120, v71
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s7, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v74, 0x1b0, v71
	v_xor_b32_e32 v75, 0x210, v71
	v_xor_b32_e32 v76, 0x330, v71
	v_xor_b32_e32 v77, 0x3a0, v71
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, 0, v71
	v_add_nc_u32_e32 v59, 0, v72
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 10, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_u32_f32 s7, s7
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v15, 12, v7
	v_or_b32_e32 v16, 14, v7
	v_or_b32_e32 v18, 64, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_i32 s10, s10, s7
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v19, 0x42, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_hi_u32 s10, s7, s10
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v20, 0x44, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v21, 0x46, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v22, 0x48, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 0x4a, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cselect_b32 s6, s11, s7
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 0x4c, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_xor_b32 s6, s6, s10
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v9, 0x4e, v7
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_sub_i32 s6, s6, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v60, 0, v73
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s7, s6, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s6, s6, s5
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s8, s9, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s6
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s8, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s2
	s_abs_i32 s9, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v61, 0, v74
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v62, 0, v75
	v_add_nc_u32_e32 v63, 0, v76
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	v_rcp_iflag_f32_e32 v1, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, 0, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	v_readfirstlane_b32 s10, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v66, v1, 4, v4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s11
	s_add_i32 s10, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s6, s10
	s_xor_b32 s10, s2, s8
	s_mul_i32 s11, s5, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s5, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s5, s11, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s5, 1
	s_cmp_ge_u32 s6, s9
	s_mov_b64 s[12:13], s[22:23]
	s_cselect_b32 s5, s11, s5
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s18, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s5, s5, s10
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s4, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s5, s5, s10
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s6, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s5, s8
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s30, s5, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s6, s3
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s31, s18
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s4, s33, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v67, v2, v3, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s30, s2, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s31, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s31, 6, v2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s14, s22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_mov_b32 s15, s23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v5, s[12:15], 0 offen
	buffer_load_b128 v[27:30], v4, s[12:15], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s18, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s31, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s18, v67
	v_add_nc_u32_e32 v4, s34, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_mov_b32 s4, 0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[31:34], v2, s[12:15], 0 offen
	buffer_load_b128 v[35:38], v5, s[12:15], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x1
	buffer_load_b128 v[39:42], v3, s[20:23], 0 offen
	buffer_load_b128 v[46:49], v4, s[20:23], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v44, v5, 16, v2
	v_lshlrev_b32_e32 v5, 3, v43
	v_or_b32_e32 v45, 32, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v43, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v50, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_perm_b32 v51, v29, v25, 0x5010400
	v_perm_b32 v29, v29, v25, 0x7030602
	v_perm_b32 v52, v30, v26, 0x5010400
	v_perm_b32 v53, v30, v26, 0x7030602
	v_and_b16 v23.l, 0xff, v43.l
	v_lshrrev_b32_e32 v54, 8, v43
	v_lshrrev_b32_e32 v55, 24, v43
	v_and_b16 v23.h, 0xff, v43.h
	v_and_b16 v24.l, 0xff, v27.l
	v_lshrrev_b32_e32 v43, 8, v27
	v_lshrrev_b32_e32 v56, 24, v27
	v_and_b16 v24.h, 0xff, v27.h
	v_and_b16 v25.l, 0xff, v50.l
	v_lshrrev_b32_e32 v65, 8, v50
	v_lshrrev_b32_e32 v78, 24, v50
	v_and_b16 v25.h, 0xff, v50.h
	v_and_b16 v26.l, 0xff, v28.l
	v_lshrrev_b32_e32 v50, 8, v28
	v_lshrrev_b32_e32 v79, 24, v28
	v_and_b16 v26.h, 0xff, v28.h
	v_and_b16 v27.l, 0xff, v51.l
	v_lshrrev_b32_e32 v80, 8, v51
	v_lshrrev_b32_e32 v81, 24, v51
	v_and_b16 v27.h, 0xff, v51.h
	v_and_b16 v28.l, 0xff, v29.l
	v_lshrrev_b32_e32 v51, 8, v29
	v_lshrrev_b32_e32 v82, 24, v29
	v_and_b16 v28.h, 0xff, v29.h
	v_and_b16 v29.l, 0xff, v52.l
	v_lshrrev_b32_e32 v83, 8, v52
	v_lshrrev_b32_e32 v84, 24, v52
	v_and_b16 v29.h, 0xff, v52.h
	v_and_b16 v30.l, 0xff, v53.l
	v_lshrrev_b32_e32 v52, 8, v53
	v_lshrrev_b32_e32 v85, 24, v53
	v_and_b16 v30.h, 0xff, v53.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v53, v35, v31, 0x5010400
	v_perm_b32 v86, v35, v31, 0x7030602
	v_perm_b32 v87, v36, v32, 0x5010400
	v_perm_b32 v88, v36, v32, 0x7030602
	v_perm_b32 v89, v37, v33, 0x5010400
	v_perm_b32 v90, v37, v33, 0x7030602
	v_perm_b32 v91, v38, v34, 0x5010400
	v_perm_b32 v92, v38, v34, 0x7030602
	v_lshlrev_b16 v31.l, 8, v54.l
	v_lshlrev_b16 v33.l, 8, v65.l
	v_lshrrev_b32_e32 v65, 8, v53
	v_lshlrev_b16 v31.h, 8, v55.l
	v_lshlrev_b16 v33.h, 8, v78.l
	v_lshrrev_b32_e32 v78, 24, v53
	v_lshlrev_b16 v32.l, 8, v43.l
	v_lshlrev_b16 v34.h, 8, v79.l
	v_lshrrev_b32_e32 v79, 8, v86
	v_lshlrev_b16 v32.h, 8, v56.l
	v_lshlrev_b16 v35.l, 8, v80.l
	v_lshrrev_b32_e32 v80, 24, v86
	v_lshlrev_b16 v34.l, 8, v50.l
	v_lshlrev_b16 v35.h, 8, v81.l
	v_lshlrev_b16 v36.l, 8, v51.l
	v_lshlrev_b16 v36.h, 8, v82.l
	v_lshlrev_b16 v37.l, 8, v83.l
	v_lshlrev_b16 v37.h, 8, v84.l
	v_lshlrev_b16 v38.l, 8, v52.l
	v_lshlrev_b16 v38.h, 8, v85.l
	v_and_b16 v43.l, 0xff, v53.l
	v_and_b16 v43.h, 0xff, v53.h
	v_and_b16 v50.l, 0xff, v86.l
	v_and_b16 v50.h, 0xff, v86.h
	v_and_b16 v51.l, 0xff, v87.l
	v_lshrrev_b32_e32 v81, 8, v87
	v_lshrrev_b32_e32 v82, 24, v87
	v_and_b16 v51.h, 0xff, v87.h
	v_and_b16 v52.l, 0xff, v88.l
	v_lshrrev_b32_e32 v83, 8, v88
	v_lshrrev_b32_e32 v84, 24, v88
	v_and_b16 v52.h, 0xff, v88.h
	v_and_b16 v53.l, 0xff, v89.l
	v_lshrrev_b32_e32 v85, 8, v89
	v_lshrrev_b32_e32 v86, 24, v89
	v_and_b16 v53.h, 0xff, v89.h
	v_and_b16 v54.l, 0xff, v90.l
	v_lshrrev_b32_e32 v87, 8, v90
	v_lshrrev_b32_e32 v88, 24, v90
	v_and_b16 v54.h, 0xff, v90.h
	v_and_b16 v55.l, 0xff, v91.l
	v_lshrrev_b32_e32 v89, 8, v91
	v_lshrrev_b32_e32 v90, 24, v91
	v_and_b16 v55.h, 0xff, v91.h
	v_lshrrev_b32_e32 v91, 8, v92
	v_lshrrev_b32_e32 v93, 24, v92
	v_or_b16 v23.l, v23.l, v31.l
	v_lshlrev_b16 v31.l, 8, v65.l
	v_or_b16 v23.h, v23.h, v31.h
	v_lshlrev_b16 v31.h, 8, v78.l
	v_or_b16 v24.l, v24.l, v32.l
	v_lshlrev_b16 v32.l, 8, v79.l
	v_or_b16 v24.h, v24.h, v32.h
	v_lshlrev_b16 v32.h, 8, v80.l
	v_and_b16 v56.l, 0xff, v92.l
	v_and_b16 v56.h, 0xff, v92.h
	v_or_b16 v25.l, v25.l, v33.l
	v_or_b16 v25.h, v25.h, v33.h
	v_or_b16 v26.l, v26.l, v34.l
	v_or_b16 v26.h, v26.h, v34.h
	v_or_b16 v27.l, v27.l, v35.l
	v_or_b16 v27.h, v27.h, v35.h
	v_or_b16 v28.l, v28.l, v36.l
	v_or_b16 v28.h, v28.h, v36.h
	v_or_b16 v29.l, v29.l, v37.l
	v_or_b16 v29.h, v29.h, v37.h
	v_or_b16 v30.l, v30.l, v38.l
	v_or_b16 v30.h, v30.h, v38.h
	v_lshlrev_b16 v33.l, 8, v81.l
	v_lshlrev_b16 v33.h, 8, v82.l
	v_lshlrev_b16 v34.l, 8, v83.l
	v_lshlrev_b16 v34.h, 8, v84.l
	v_lshlrev_b16 v35.l, 8, v85.l
	v_lshlrev_b16 v35.h, 8, v86.l
	v_lshlrev_b16 v36.l, 8, v87.l
	v_lshlrev_b16 v36.h, 8, v88.l
	v_lshlrev_b16 v37.l, 8, v89.l
	v_lshlrev_b16 v37.h, 8, v90.l
	v_lshlrev_b16 v38.l, 8, v91.l
	v_lshlrev_b16 v38.h, 8, v93.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v57, v[39:42] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v23
	ds_store_b16_d16_hi v58, v23 offset:64
	ds_store_b16 v59, v24
	ds_store_b16_d16_hi v59, v24 offset:64
	ds_store_b16 v60, v25
	ds_store_b16_d16_hi v60, v25 offset:64
	ds_store_b16 v61, v26
	ds_store_b16_d16_hi v61, v26 offset:64
	ds_store_b16 v62, v27
	ds_store_b16_d16_hi v62, v27 offset:64
	ds_store_b16 v58, v28 offset:640
	ds_store_b16_d16_hi v58, v28 offset:704
	ds_store_b16 v63, v29
	ds_store_b16_d16_hi v63, v29 offset:64
	ds_store_b16 v64, v30
	ds_store_b16_d16_hi v64, v30 offset:64
	v_or_b16 v23.l, v43.l, v31.l
	v_or_b16 v23.h, v43.h, v31.h
	v_or_b16 v24.l, v50.l, v32.l
	v_or_b16 v24.h, v50.h, v32.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v25.l, v51.l, v33.l
	v_or_b16 v25.h, v51.h, v33.h
	v_or_b16 v26.l, v52.l, v34.l
	v_or_b16 v26.h, v52.h, v34.h
	v_or_b16 v27.l, v53.l, v35.l
	v_or_b16 v27.h, v53.h, v35.h
	v_or_b16 v28.l, v54.l, v36.l
	v_or_b16 v28.h, v54.h, v36.h
	v_or_b16 v29.l, v55.l, v37.l
	v_or_b16 v29.h, v55.h, v37.h
	v_or_b16 v30.l, v56.l, v38.l
	v_or_b16 v30.h, v56.h, v38.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v57, v[46:49] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v58, v23 offset:8192
	ds_store_b16_d16_hi v58, v23 offset:8256
	ds_store_b16 v59, v24 offset:8192
	ds_store_b16_d16_hi v59, v24 offset:8256
	ds_store_b16 v60, v25 offset:8192
	ds_store_b16_d16_hi v60, v25 offset:8256
	ds_store_b16 v61, v26 offset:8192
	ds_store_b16_d16_hi v61, v26 offset:8256
	ds_store_b16 v62, v27 offset:8192
	ds_store_b16_d16_hi v62, v27 offset:8256
	ds_store_b16 v58, v28 offset:8832
	ds_store_b16_d16_hi v58, v28 offset:8896
	ds_store_b16 v63, v29 offset:8192
	ds_store_b16_d16_hi v63, v29 offset:8256
	ds_store_b16 v64, v30 offset:8192
	ds_store_b16_d16_hi v64, v30 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v23, 0x430, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v80, 8, v0
	v_and_b32_e32 v81, 32, v0
	v_and_b32_e32 v78, 0x800, v4
	v_lshl_or_b32 v79, v1, 6, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v62, v2, 6, v23
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_xor_b32_e32 v64, 48, v62
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
.LBB0_3:                                ; %Flow161
	s_load_b64 s[28:29], s[0:1], 0x20
	v_or_b32_e32 v23, s33, v44
	v_or_b32_e32 v24, s33, v45
	s_ashr_i32 s0, s5, 6
	v_or_b32_e32 v59, s30, v7
	v_or_b32_e32 v58, s30, v10
	v_mul_lo_u32 v60, v23, s0
	v_mul_lo_u32 v61, v24, s0
	v_or_b32_e32 v57, s30, v11
	v_or_b32_e32 v56, s30, v12
	v_or_b32_e32 v55, s30, v13
	v_or_b32_e32 v54, s30, v14
	v_or_b32_e32 v53, s30, v15
	v_or_b32_e32 v52, s30, v16
	v_or_b32_e32 v51, s30, v18
	v_or_b32_e32 v50, s30, v19
	v_or_b32_e32 v49, s30, v20
	v_or_b32_e32 v48, s30, v21
	v_or_b32_e32 v46, s30, v22
	v_or_b32_e32 v47, s30, v6
	v_or_b32_e32 v18, s30, v8
	v_or_b32_e32 v19, s30, v9
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v6, v0, 5, 1
	v_bfe_i32 v7, v0, 3, 1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v6, 0x420, v6
	v_lshl_or_b32 v79, v1, 6, v5
	v_dual_mov_b32 v20, 0 :: v_dual_and_b32 v3, 0x430, v3
	v_and_b32_e32 v78, 0x800, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x210, v7, v6
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v80, s31, v66
	v_lshl_or_b32 v62, v2, 6, v3
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v79
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v81, v1, v78
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v64, 48, v62
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v7, s10
	v_xor_b32_e32 v82, 16, v81
	v_xor_b32_e32 v83, 32, v81
	v_xor_b32_e32 v84, 48, v81
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v41, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s27, s0, 3
	s_add_i32 s26, s34, 64
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	s_add_i32 s19, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s27, s27, -3
	s_mov_b32 s44, 1
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s6, s18
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s7, s5, 6
	s_mov_b32 s18, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s26, s7
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s7, s6, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v85, s34, v67
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s7, s7, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s8, s34, s31
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s6, s6, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s8, s8, s30
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s6, s6, 6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[117:120], v85, s[20:23], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s6, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v85, v60, s6, 1
	v_add_lshl_u32 v88, v61, s6, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s6, s6, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v86, s8, v66
	v_add_nc_u32_e32 v87, s8, v80
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v89, v59, s6, 1
	v_add_lshl_u32 v90, v58, s6, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v91, v57, s6, 1
	v_add_lshl_u32 v92, v56, s6, 1
	v_add_lshl_u32 v93, v55, s6, 1
	v_add_lshl_u32 v94, v54, s6, 1
	v_add_lshl_u32 v95, v53, s6, 1
	v_add_lshl_u32 v96, v52, s6, 1
	v_add_lshl_u32 v97, v51, s6, 1
	v_add_lshl_u32 v98, v50, s6, 1
	v_add_lshl_u32 v99, v49, s6, 1
	v_add_lshl_u32 v100, v48, s6, 1
	v_add_lshl_u32 v101, v46, s6, 1
	v_add_lshl_u32 v102, v47, s6, 1
	v_add_lshl_u32 v103, v18, s6, 1
	v_add_lshl_u32 v104, v19, s6, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[121:124], v86, s[12:15], 0 offen
	buffer_load_b128 v[125:128], v87, s[12:15], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v86, 0x80000000, v88 :: v_dual_cndmask_b32 v87, 0x80000000, v89
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v88, 0x80000000, v90 :: v_dual_cndmask_b32 v89, 0x80000000, v91
	v_dual_cndmask_b32 v90, 0x80000000, v92 :: v_dual_cndmask_b32 v91, 0x80000000, v93
	v_dual_cndmask_b32 v92, 0x80000000, v94 :: v_dual_cndmask_b32 v93, 0x80000000, v95
	v_dual_cndmask_b32 v94, 0x80000000, v96 :: v_dual_cndmask_b32 v95, 0x80000000, v97
	v_dual_cndmask_b32 v96, 0x80000000, v98 :: v_dual_cndmask_b32 v97, 0x80000000, v99
	v_dual_cndmask_b32 v98, 0x80000000, v100 :: v_dual_cndmask_b32 v99, 0x80000000, v101
	v_dual_cndmask_b32 v100, 0x80000000, v102 :: v_dual_cndmask_b32 v101, 0x80000000, v103
	v_cndmask_b32_e32 v102, 0x80000000, v104, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v185, v85, s[36:39], 0 offen
	buffer_load_u16 v186, v86, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v187, v88, s[40:43], 0 offen
	buffer_load_u16 v188, v87, s[40:43], 0 offen
	buffer_load_u16 v189, v90, s[40:43], 0 offen
	buffer_load_u16 v190, v89, s[40:43], 0 offen
	buffer_load_u16 v191, v92, s[40:43], 0 offen
	buffer_load_u16 v192, v91, s[40:43], 0 offen
	buffer_load_u16 v193, v94, s[40:43], 0 offen
	buffer_load_u16 v194, v93, s[40:43], 0 offen
	buffer_load_u16 v195, v96, s[40:43], 0 offen
	buffer_load_u16 v196, v95, s[40:43], 0 offen
	buffer_load_u16 v197, v98, s[40:43], 0 offen
	buffer_load_u16 v198, v97, s[40:43], 0 offen
	buffer_load_u16 v199, v100, s[40:43], 0 offen
	buffer_load_u16 v200, v99, s[40:43], 0 offen
	buffer_load_u16 v201, v102, s[40:43], 0 offen
	buffer_load_u16 v202, v101, s[40:43], 0 offen
	s_mov_b32 s6, s19
	s_mov_b32 s19, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v85, s6, v62
	v_add_nc_u32_e32 v86, s6, v63
	s_mov_b32 s1, s4
	v_add_nc_u32_e32 v87, s6, v65
	v_add_nc_u32_e32 v88, s6, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v89, s1, v81
	v_add_nc_u32_e32 v90, s1, v82
	v_add_nc_u32_e32 v91, s1, v83
	v_add_nc_u32_e32 v92, s1, v84
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[101:104], v85
	ds_load_b128 v[129:132], v85 offset:2048
	ds_load_b128 v[133:136], v86
	ds_load_b128 v[137:140], v86 offset:2048
	ds_load_b128 v[141:144], v87
	ds_load_b128 v[145:148], v87 offset:2048
	ds_load_b128 v[149:152], v88
	ds_load_b128 v[153:156], v88 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v89
	ds_load_b128 v[157:160], v89 offset:4096
	ds_load_b128 v[161:164], v90
	ds_load_b128 v[165:168], v90 offset:4096
	ds_load_b128 v[169:172], v91
	ds_load_b128 v[173:176], v91 offset:4096
	ds_load_b128 v[177:180], v92
	ds_load_b128 v[181:184], v92 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s44, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s1, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s44, s1, 0
	s_mov_b32 s4, s35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s7, s44, 12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s8, s7, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s35, s8, s7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s8, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[85:92], v[109:112], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[157:160], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[109:112], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[157:160], v[129:132], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[161:164], v[133:136], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[161:164], v[137:140], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[165:168], v[133:136], v[93:100] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[137:140], v[109:116] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[85:92], v[169:172], v[141:144], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[145:148], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[173:176], v[141:144], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[173:176], v[145:148], v[109:116] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	v_wmma_i32_16x16x16_iu8 v[85:92], v[177:180], v[149:152], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[177:180], v[153:156], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[181:184], v[149:152], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[181:184], v[153:156], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v85
	v_cvt_f32_i32_e32 v132, v88
	v_cvt_f32_i32_e32 v133, v89
	v_cvt_f32_i32_e32 v134, v90
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v131, v87
	v_cvt_f32_i32_e32 v141, v97
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v140, v96
	v_cvt_f32_i32_e32 v130, v86
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v137, v93
	v_cvt_f32_i32_e32 v138, v94
	v_cvt_f32_i32_e32 v144, v100
	v_cvt_f32_i32_e32 v139, v95
	v_cvt_f32_i32_e32 v142, v98
	v_cvt_f32_i32_e32 v143, v99
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(18)
	v_perm_b32 v88, v126, v122, 0x5010400
	v_perm_b32 v89, v126, v122, 0x7030602
	v_perm_b32 v90, v127, v123, 0x5010400
	v_perm_b32 v91, v127, v123, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v127, 16, v186
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v87, v125, v121, 0x7030602
	v_perm_b32 v86, v125, v121, 0x5010400
	v_perm_b32 v92, v128, v124, 0x5010400
	v_perm_b32 v93, v128, v124, 0x7030602
	v_lshrrev_b32_e32 v100, 8, v89
	v_lshrrev_b32_e32 v96, 8, v87
	v_lshrrev_b32_e32 v97, 24, v87
	v_lshrrev_b32_e32 v94, 8, v86
	v_lshrrev_b32_e32 v124, 8, v93
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v155, 16, v198
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v126, 16, v185
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v146, 16, v189
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v158, 16, v201
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v159, 16, v202
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v161, v155, v126 :: v_dual_lshlrev_b32 v154, 16, v197
	v_mul_f32_e32 v155, v127, v155
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v157, 16, v200
	v_lshlrev_b32_e32 v148, 16, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v162, v154, v126 :: v_dual_lshlrev_b32 v145, 16, v188
	v_dual_mul_f32 v163, v157, v126 :: v_dual_lshlrev_b32 v156, 16, v199
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v151, 16, v194
	v_lshlrev_b32_e32 v153, 16, v196
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v94.h, 8, v97.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v156, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v16, v163, v141 :: v_dual_add_nc_u32 v203, s8, v70
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v85.l, 0xff, v86.l
	v_lshrrev_b32_e32 v95, 24, v86
	v_and_b16 v86.l, 0xff, v87.l
	v_and_b16 v87.l, 0xff, v88.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v203, v[117:120] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v117, 24, v89
	v_lshrrev_b32_e32 v118, 8, v90
	v_lshrrev_b32_e32 v98, 8, v88
	v_lshrrev_b32_e32 v99, 24, v88
	v_and_b16 v88.l, 0xff, v89.l
	v_lshlrev_b16 v96.h, 8, v117.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v117, v145, v126
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v97.l, 8, v118.l
	v_and_b16 v89.l, 0xff, v90.l
	v_lshrrev_b32_e32 v119, 24, v90
	v_and_b16 v90.l, 0xff, v91.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v20, v117, v129
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v128, 16, v187
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v120, 8, v91
	v_lshrrev_b32_e32 v121, 24, v91
	v_and_b16 v91.l, 0xff, v92.l
	v_lshrrev_b32_e32 v122, 8, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v128, v126
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v123, 24, v92
	v_and_b16 v92.l, 0xff, v93.l
	v_lshrrev_b32_e32 v125, 24, v93
	v_lshlrev_b16 v93.l, 8, v94.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v43, v118, v130
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v156, v127, v156 :: v_dual_lshlrev_b32 v147, 16, v190
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v94.l, 8, v96.l
	v_lshlrev_b16 v96.l, 8, v100.l
	v_lshlrev_b16 v100.l, 8, v124.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v124, v127, v147 :: v_dual_lshlrev_b32 v149, 16, v192
	v_mul_f32_e32 v154, v127, v154
	v_dual_mul_f32 v157, v127, v157 :: v_dual_lshlrev_b32 v152, 16, v195
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v98.h, 8, v121.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v121, v147, v126 :: v_dual_fmac_f32 v38, v124, v103
	v_dual_mul_f32 v165, v159, v126 :: v_dual_lshlrev_b32 v150, 16, v193
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v204, s35, v71
	v_add_nc_u32_e32 v205, s35, v72
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v147, v151, v126 :: v_dual_add_nc_u32 v206, s35, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v207, s35, v74
	v_add_nc_u32_e32 v208, s35, v75
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v160, v152, v126 :: v_dual_add_nc_u32 v209, s35, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v210, s35, v77
	v_and_b16 v85.h, 0xff, v86.h
	v_and_b16 v86.h, 0xff, v87.h
	v_and_b16 v87.h, 0xff, v88.h
	v_and_b16 v88.h, 0xff, v89.h
	v_and_b16 v89.h, 0xff, v90.h
	v_and_b16 v90.h, 0xff, v91.h
	v_and_b16 v91.h, 0xff, v92.h
	v_and_b16 v92.h, 0xff, v93.h
	v_lshlrev_b16 v93.h, 8, v95.l
	v_lshlrev_b16 v95.l, 8, v98.l
	v_lshlrev_b16 v95.h, 8, v99.l
	v_lshlrev_b16 v97.h, 8, v119.l
	v_lshlrev_b16 v98.l, 8, v120.l
	v_lshlrev_b16 v99.l, 8, v122.l
	v_lshlrev_b16 v99.h, 8, v123.l
	v_lshlrev_b16 v100.h, 8, v125.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v119, v127, v128
	v_mul_f32_e32 v120, v127, v145
	v_mul_f32_e32 v122, v146, v126
	v_mul_f32_e32 v123, v127, v146
	v_mul_f32_e32 v125, v149, v126
	v_dual_mul_f32 v128, v148, v126 :: v_dual_mul_f32 v145, v127, v148
	v_mul_f32_e32 v146, v127, v149
	v_mul_f32_e32 v148, v150, v126
	v_mul_f32_e32 v149, v127, v150
	v_dual_mul_f32 v150, v127, v151 :: v_dual_mul_f32 v151, v153, v126
	v_mul_f32_e32 v152, v127, v152
	v_mul_f32_e32 v153, v127, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v39, v121, v131 :: v_dual_mul_f32 v126, v158, v126
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v158, v127, v158 :: v_dual_fmac_f32 v41, v122, v132
	v_mul_f32_e32 v127, v127, v159
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v85.l, v85.l, v93.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v35, v125, v133 :: v_dual_fmac_f32 v40, v119, v102
	v_dual_fmac_f32 v37, v128, v134 :: v_dual_fmac_f32 v36, v123, v104
	v_dual_fmac_f32 v31, v147, v135 :: v_dual_fmac_f32 v34, v146, v105
	v_dual_fmac_f32 v33, v148, v136 :: v_dual_fmac_f32 v32, v145, v106
	v_dual_fmac_f32 v27, v151, v137 :: v_dual_fmac_f32 v30, v150, v107
	v_dual_fmac_f32 v29, v160, v138 :: v_dual_fmac_f32 v28, v149, v108
	v_dual_fmac_f32 v23, v161, v139 :: v_dual_fmac_f32 v24, v152, v110
	v_dual_fmac_f32 v25, v162, v140 :: v_dual_fmac_f32 v26, v153, v109
	v_dual_fmac_f32 v15, v164, v142 :: v_dual_fmac_f32 v22, v155, v111
	v_dual_fmac_f32 v11, v165, v143 :: v_dual_fmac_f32 v10, v158, v116
	v_dual_fmac_f32 v9, v126, v144 :: v_dual_fmac_f32 v14, v157, v113
	v_dual_fmac_f32 v42, v120, v101 :: v_dual_fmac_f32 v21, v154, v112
	v_dual_fmac_f32 v12, v127, v115 :: v_dual_fmac_f32 v13, v156, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v85.h, v85.h, v93.h
	v_or_b16 v86.l, v86.l, v94.l
	v_or_b16 v86.h, v86.h, v94.h
	v_or_b16 v87.l, v87.l, v95.l
	v_or_b16 v87.h, v87.h, v95.h
	v_or_b16 v88.l, v88.l, v96.l
	v_or_b16 v88.h, v88.h, v96.h
	v_or_b16 v89.l, v89.l, v97.l
	v_or_b16 v89.h, v89.h, v97.h
	v_or_b16 v90.l, v90.l, v98.l
	v_or_b16 v90.h, v90.h, v98.h
	v_or_b16 v91.l, v91.l, v99.l
	v_or_b16 v91.h, v91.h, v99.h
	v_or_b16 v92.l, v92.l, v100.l
	v_or_b16 v92.h, v92.h, v100.h
	ds_store_b16 v204, v85
	ds_store_b16_d16_hi v204, v85 offset:64
	ds_store_b16 v205, v86
	ds_store_b16_d16_hi v205, v86 offset:64
	ds_store_b16 v206, v87
	ds_store_b16_d16_hi v206, v87 offset:64
	ds_store_b16 v207, v88
	ds_store_b16_d16_hi v207, v88 offset:64
	ds_store_b16 v208, v89
	ds_store_b16_d16_hi v208, v89 offset:64
	ds_store_b16 v204, v90 offset:640
	ds_store_b16_d16_hi v204, v90 offset:704
	ds_store_b16 v209, v91
	ds_store_b16_d16_hi v209, v91 offset:64
	ds_store_b16 v210, v92
	ds_store_b16_d16_hi v210, v92 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v80, v68 :: v_dual_mov_b32 v81, v69
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v20, 0
	s_add_i32 s19, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s35, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v80
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v1, v2
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_xor_b32_e32 v1, v1, v79
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v5, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v138, v1, v78
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_xor_b32_e32 v139, 16, v138
	v_xor_b32_e32 v142, 32, v138
	v_xor_b32_e32 v140, 48, v138
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, s4, v138
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v81, s19, v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v99, s15 :: v_dual_add_nc_u32 v80, s4, v139
	v_dual_mov_b32 v97, s13 :: v_dual_add_nc_u32 v82, s19, v65
	v_mov_b32_e32 v94, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[67:70], v71 offset:4096
	ds_load_b128 v[71:74], v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v92, s8 :: v_dual_add_nc_u32 v83, s19, v63
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[75:78], v81 offset:2048
	ds_load_b128 v[88:91], v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v80 offset:4096
	ds_load_b128 v[120:123], v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v98, s14 :: v_dual_add_nc_u32 v5, s4, v142
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[124:127], v82 offset:2048
	ds_load_b128 v[128:131], v82
	ds_load_b128 v[132:135], v83 offset:2048
	ds_load_b128 v[143:146], v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v96, s12 :: v_dual_add_nc_u32 v79, s4, v140
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:4096
	ds_load_b128 v[5:8], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v95, s11 :: v_dual_add_nc_u32 v80, s19, v64
	v_mov_b32_e32 v93, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[151:154], v79
	ds_load_b128 v[155:158], v79 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[159:162], v80 offset:2048
	ds_load_b128 v[147:150], v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[71:74], v[75:78], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[71:74], v[88:91], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[67:70], v[88:91], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[67:70], v[75:78], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[120:123], v[143:146], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[120:123], v[132:135], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[116:119], v[143:146], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[116:119], v[132:135], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[5:8], v[128:131], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[5:8], v[124:127], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[1:4], v[128:131], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[1:4], v[124:127], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[151:154], v[147:150], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[151:154], v[159:162], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[155:158], v[147:150], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[155:158], v[159:162], v[92:99] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v81
	v_cvt_f32_i32_e32 v69, v82
	v_cvt_f32_i32_e32 v73, v83
	v_cvt_f32_i32_e32 v70, v84
	v_cvt_f32_i32_e32 v74, v85
	v_cvt_f32_i32_e32 v71, v86
	v_cvt_f32_i32_e32 v75, v87
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v78, v101
	v_cvt_f32_i32_e32 v77, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v6, v104
	v_cvt_f32_i32_e32 v5, v105
	v_cvt_f32_i32_e32 v2, v106
	v_cvt_f32_i32_e32 v1, v107
	v_cvt_f32_i32_e32 v82, v108
	v_cvt_f32_i32_e32 v88, v109
	v_cvt_f32_i32_e32 v86, v110
	v_cvt_f32_i32_e32 v91, v111
	v_cvt_f32_i32_e32 v81, v112
	v_cvt_f32_i32_e32 v85, v113
	v_cvt_f32_i32_e32 v83, v114
	v_cvt_f32_i32_e32 v89, v115
	v_cvt_f32_i32_e32 v84, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v87, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v8, v96
	v_cvt_f32_i32_e32 v7, v97
	v_cvt_f32_i32_e32 v4, v98
	v_cvt_f32_i32_e32 v3, v99
	v_cvt_f32_i32_e32 v80, v80
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
	v_add_lshl_u32 v67, v60, s4, 1
	v_add_lshl_u32 v68, v61, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v93, v59, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v94, v58, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1
	buffer_load_u16 v136, v67, s[24:27], 0 offen
	buffer_load_u16 v137, v68, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v67, v57, s4, 1
	v_dual_cndmask_b32 v68, 0x80000000, v93 :: v_dual_cndmask_b32 v93, 0x80000000, v94
	v_add_lshl_u32 v94, v56, s4, 1
	v_add_lshl_u32 v95, v55, s4, 1
	v_add_lshl_u32 v96, v54, s4, 1
	v_add_lshl_u32 v97, v53, s4, 1
	v_add_lshl_u32 v98, v52, s4, 1
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_add_lshl_u32 v99, v51, s4, 1
	s_and_b32 s17, s17, 0xffff
	v_add_lshl_u32 v100, v50, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_add_lshl_u32 v101, v49, s4, 1
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	s_clause 0x7
	buffer_load_u16 v141, v68, s[16:19], 0 offen
	buffer_load_u16 v143, v93, s[16:19], 0 offen
	buffer_load_u16 v134, v67, s[16:19], 0 offen
	buffer_load_u16 v135, v94, s[16:19], 0 offen
	buffer_load_u16 v132, v95, s[16:19], 0 offen
	buffer_load_u16 v133, v96, s[16:19], 0 offen
	buffer_load_u16 v130, v97, s[16:19], 0 offen
	buffer_load_u16 v131, v98, s[16:19], 0 offen
	v_add_lshl_u32 v94, v48, s4, 1
	v_add_lshl_u32 v95, v46, s4, 1
	v_dual_cndmask_b32 v67, 0x80000000, v99 :: v_dual_cndmask_b32 v68, 0x80000000, v100
	v_add_lshl_u32 v96, v47, s4, 1
	v_add_lshl_u32 v97, v18, s4, 1
	v_add_lshl_u32 v98, v19, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v101 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	s_clause 0x7
	buffer_load_u16 v128, v67, s[16:19], 0 offen
	buffer_load_u16 v129, v68, s[16:19], 0 offen
	buffer_load_u16 v126, v93, s[16:19], 0 offen
	buffer_load_u16 v127, v94, s[16:19], 0 offen
	buffer_load_u16 v124, v95, s[16:19], 0 offen
	buffer_load_u16 v125, v96, s[16:19], 0 offen
	buffer_load_u16 v68, v97, s[16:19], 0 offen
	buffer_load_u16 v67, v98, s[16:19], 0 offen
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v95, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v151, s11 :: v_dual_add_nc_u32 v66, s35, v142
	v_dual_mov_b32 v148, s8 :: v_dual_add_nc_u32 v95, s35, v138
	v_dual_mov_b32 v147, s7 :: v_dual_add_nc_u32 v62, s1, v62
	v_dual_mov_b32 v150, s10 :: v_dual_add_nc_u32 v93, s35, v139
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	ds_load_b128 v[101:104], v66 offset:4096
	ds_load_b128 v[105:108], v66
	ds_load_b128 v[118:121], v93 offset:4096
	ds_load_b128 v[160:163], v93
	ds_load_b128 v[164:167], v95 offset:4096
	ds_load_b128 v[168:171], v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v146, s6 :: v_dual_add_nc_u32 v93, s1, v63
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[172:175], v62 offset:2048
	ds_load_b128 v[152:155], v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v145, s5 :: v_dual_add_nc_u32 v66, s1, v65
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[180:183], v93 offset:2048
	ds_load_b128 v[184:187], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v149, s9 :: v_dual_add_nc_u32 v94, s35, v140
	v_dual_mov_b32 v144, s4 :: v_dual_add_nc_u32 v95, s1, v64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[62:65], v66 offset:2048
	ds_load_b128 v[176:179], v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[192:195], v94
	ds_load_b128 v[196:199], v94 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[200:203], v95 offset:2048
	ds_load_b128 v[188:191], v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[168:171], v[152:155], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[164:167], v[152:155], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[168:171], v[172:175], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[164:167], v[172:175], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[160:163], v[184:187], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[118:121], v[184:187], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[160:163], v[180:183], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[118:121], v[180:183], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[105:108], v[176:179], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[101:104], v[176:179], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[105:108], v[62:65], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[101:104], v[62:65], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[192:195], v[188:191], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[196:199], v[188:191], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[192:195], v[200:203], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[196:199], v[200:203], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v93
	v_cvt_f32_i32_e32 v106, v94
	v_cvt_f32_i32_e32 v101, v95
	v_cvt_f32_i32_e32 v107, v96
	v_cvt_f32_i32_e32 v102, v97
	v_cvt_f32_i32_e32 v108, v98
	v_cvt_f32_i32_e32 v103, v99
	v_cvt_f32_i32_e32 v109, v100
	v_cvt_f32_i32_e32 v104, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v97, v114
	v_cvt_f32_i32_e32 v98, v115
	v_cvt_f32_i32_e32 v94, v116
	v_cvt_f32_i32_e32 v93, v117
	v_cvt_f32_i32_e32 v113, v152
	v_cvt_f32_i32_e32 v119, v153
	v_cvt_f32_i32_e32 v117, v154
	v_cvt_f32_i32_e32 v122, v155
	v_cvt_f32_i32_e32 v112, v156
	v_cvt_f32_i32_e32 v116, v157
	v_cvt_f32_i32_e32 v114, v158
	v_cvt_f32_i32_e32 v120, v159
	v_cvt_f32_i32_e32 v115, v144
	v_cvt_f32_i32_e32 v121, v145
	v_cvt_f32_i32_e32 v118, v146
	v_cvt_f32_i32_e32 v123, v147
	v_cvt_f32_i32_e32 v99, v148
	v_cvt_f32_i32_e32 v100, v149
	v_cvt_f32_i32_e32 v95, v150
	v_cvt_f32_i32_e32 v96, v151
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s34, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s34, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v125.h, v134.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v134.h, v125.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v60, v60, s1, 1
	v_add_lshl_u32 v61, v61, s1, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s31
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v59, v59, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v58, v58, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v57, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_add_lshl_u32 v52, v52, s0, 1
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v50, v50, s0, 1
	v_dual_cndmask_b32 v62, 0x80000000, v59 :: v_dual_cndmask_b32 v63, 0x80000000, v58
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v58, v60, s[24:27], 0 offen
	buffer_load_u16 v59, v61, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v49, v49, s0, 1
	v_add_lshl_u32 v48, v48, s0, 1
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	s_clause 0xb
	buffer_load_u16 v60, v63, s[16:19], 0 offen
	buffer_load_u16 v61, v62, s[16:19], 0 offen
	buffer_load_u16 v56, v56, s[16:19], 0 offen
	buffer_load_u16 v57, v57, s[16:19], 0 offen
	buffer_load_u16 v54, v54, s[16:19], 0 offen
	buffer_load_u16 v55, v55, s[16:19], 0 offen
	buffer_load_u16 v52, v52, s[16:19], 0 offen
	buffer_load_u16 v53, v53, s[16:19], 0 offen
	buffer_load_u16 v50, v50, s[16:19], 0 offen
	buffer_load_u16 v51, v51, s[16:19], 0 offen
	buffer_load_u16 v62, v48, s[16:19], 0 offen
	buffer_load_u16 v63, v49, s[16:19], 0 offen
	v_add_lshl_u32 v48, v46, s0, 1
	v_add_lshl_u32 v49, v47, s0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v46.h, v137.l
	v_mov_b16_e64 v47.h, v136.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v47.l, v46.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v64, 56, v17
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, s31, v45
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x1
	buffer_load_u16 v48, v48, s[16:19], 0 offen
	buffer_load_u16 v49, v49, s[16:19], 0 offen
	v_mov_b16_e64 v45.h, v143.l
	v_mov_b16_e32 v45.l, v46.l
	v_add_lshl_u32 v18, v18, s0, 1
	v_mov_b16_e32 v125.l, v46.l
	v_add_lshl_u32 v19, v19, s0, 1
	v_mov_b16_e64 v65.h, v141.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v149, v46, v45 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_dual_mul_f32 v150, v46, v125 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v124.h, v135.l
	v_mov_b16_e64 v135.h, v124.l
	buffer_load_u16 v152, v18, s[16:19], 0 offen
	v_mov_b16_e32 v65.l, v46.l
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	v_mov_b16_e32 v124.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v45, v45, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v126.h, v133.l
	v_mov_b16_e64 v127.h, v132.l
	v_mov_b16_e64 v128.h, v131.l
	v_mov_b16_e64 v129.h, v130.l
	v_mov_b16_e64 v130.h, v129.l
	v_mov_b16_e64 v131.h, v128.l
	v_mov_b16_e64 v132.h, v127.l
	v_mov_b16_e64 v133.h, v126.l
	v_mov_b16_e32 v126.l, v46.l
	v_mov_b16_e32 v127.l, v46.l
	v_mov_b16_e64 v128.l, v46.l
	v_mov_b16_e64 v129.l, v46.l
	v_mov_b16_e64 v130.l, v46.l
	v_mov_b16_e64 v131.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v148, v46, v65 :: v_dual_mul_f32 v65, v65, v47
	v_dual_mul_f32 v151, v46, v124 :: v_dual_mul_f32 v124, v124, v47
	v_dual_mul_f32 v125, v125, v47 :: v_dual_mul_f32 v154, v46, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v45, v72, v43
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v133.l, v46.l
	v_mov_b16_e64 v135.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v153, v46, v127
	v_mul_f32_e32 v126, v126, v47
	v_dual_mul_f32 v127, v127, v47 :: v_dual_mul_f32 v156, v46, v128
	v_dual_mul_f32 v155, v46, v129 :: v_dual_mul_f32 v128, v128, v47
	v_dual_mul_f32 v129, v129, v47 :: v_dual_mul_f32 v158, v46, v130
	v_mul_f32_e32 v157, v46, v131
	v_mul_f32_e32 v130, v130, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v80, v20
	v_fma_f32 v72, v151, v91, v36
	v_fma_f32 v69, v125, v69, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v45, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v132.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v159, v46, v133
	v_mul_f32_e32 v133, v133, v47
	v_mul_f32_e32 v161, v135, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v150, v86, v38
	v_fma_f32 v73, v124, v73, v41
	v_fma_f32 v86, v156, v89, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v65, s2
	v_cndmask_b32_e64 v36, v36, v72, s2
	v_cndmask_b32_e64 v39, v39, v69, s2
	v_cndmask_b32_e64 v41, v41, v73, s2
	v_cndmask_b32_e64 v28, v28, v86, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s33, s31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v127, v70, v35
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v129, v71, v31
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v162, s1, v64
	v_add3_u32 v18, s1, v64, 64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v149, v88, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v138.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v154, v85, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v70, s2
	v_cndmask_b32_e64 v31, v31, v71, s2
	v_cndmask_b32_e64 v40, v40, v64, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v131, v131, v47 :: v_dual_mul_f32 v160, v46, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v128, v75, v33
	v_fma_f32 v88, v158, v90, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v85, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v142.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v131, v76, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v75, s2
	v_cndmask_b32_e64 v24, v24, v88, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v148, v82, v42
	v_fma_f32 v83, v155, v83, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v76, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v136.h, v46.l
	v_mov_b16_e64 v140.h, v46.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v82, s2
	v_cndmask_b32_e64 v38, v38, v80, s2
	v_cndmask_b32_e64 v30, v30, v83, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.h, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v132, v132, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v87, v159, v87, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v137.h, v46.l
	v_mov_b16_e64 v139.h, v46.l
	v_mov_b16_e64 v143.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v132, v79, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v134.l, v46.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v87, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v89, v160, v92, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v79, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v147.h, v46.l
	v_mov_b16_e64 v144.h, v46.l
	v_mov_b16_e64 v146.h, v46.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v89, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v44, s31, v44
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	v_and_b32_e32 v0, 16, v0
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v45, 16, v58
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v58, 16, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v126, v74, v37
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v59, 16, v60
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v60, 16, v61
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v56, 16, v56
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v57, 16, v57
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v64, v59, v45 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v74, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v70, v55, v45 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v61, 16, v62
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v62, 16, v63
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v60, v45
	v_dual_mul_f32 v60, v58, v60 :: v_dual_lshlrev_b32 v53, 16, v53
	v_mul_f32_e32 v65, v57, v45
	v_dual_mul_f32 v69, v56, v45 :: v_dual_mul_f32 v56, v58, v56
	v_dual_mul_f32 v73, v52, v45 :: v_dual_mul_f32 v52, v58, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v101, v39
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v53, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v56, v122, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v59, v58, v59 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v52, v52, v120, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v65, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v36, v36, v56, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v63, v66, v20
	v_fma_f32 v78, v130, v78, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v52, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v52, v39, 16, 1
	v_mov_b16_e64 v138.l, v36.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v54, v45
	v_mul_f32_e32 v54, v58, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v69, v107, v41
	v_fma_f32 v69, v70, v102, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v39, v39
	v_add3_u32 v39, v39, v52, 0x7fff
	v_and_b32_e32 v52, 1, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v71, v108, v37
	v_fma_f32 v71, v72, v103, v31
	v_fma_f32 v77, v133, v77, v23
	v_fma_f32 v59, v59, v119, v40
	v_fma_f32 v54, v54, v116, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v142.l, v28.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v75, v50, v45
	v_mul_f32_e32 v50, v58, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v71, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v153, v81, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v78, s2
	v_cndmask_b32_e64 v23, v23, v77, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v55, v58, v55 :: v_dual_mul_f32 v74, v51, v45
	v_mul_f32_e32 v77, v61, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v50, v121, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v63, s3
	v_cndmask_b32_e64 v40, v40, v59, s3
	v_cndmask_b32_e64 v35, v35, v69, s3
	v_cndmask_b32_e64 v32, v32, v54, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v56, v31, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v157, v84, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v81, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v73, v109, v33
	v_fma_f32 v73, v74, v104, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v50, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v50, v20, 16, 1
	v_mov_b16_e64 v136.l, v40.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v58, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v54, v35, 16, 1
	v_mov_b16_e64 v140.l, v32.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v58, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s13, v31, v31
	v_add3_u32 v31, v31, v56, 0x7fff
	v_and_b32_e32 v56, 1, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v75, v110, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v84, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v58, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v64, v106, v43
	v_fma_f32 v60, v60, v113, v42
	v_fma_f32 v55, v55, v112, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v70, s3
	v_cndmask_b32_e64 v27, v27, v73, s3
	v_cndmask_b32_e64 v29, v29, v74, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s9, v35, v35
	v_add3_u32 v20, v20, v50, 0x7fff
	v_and_b32_e32 v50, 1, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v57, v117, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v35, v35, v54, 0x7fff
	v_and_b32_e32 v54, 1, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v53, v53, v114, v30
	v_fma_f32 v51, v51, v115, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v64, s3
	v_cndmask_b32_e64 v42, v42, v60, s3
	v_cndmask_b32_e64 v41, v41, v66, s3
	v_cndmask_b32_e64 v38, v38, v57, s3
	v_cndmask_b32_e64 v34, v34, v55, s3
	v_cndmask_b32_e64 v33, v33, v72, s3
	v_cndmask_b32_e64 v30, v30, v53, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v55, v37, 16, 1
	v_bfe_u32 v59, v27, 16, 1
	v_bfe_u32 v60, v29, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v51, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v51, v43, 16, 1
	v_mov_b16_e64 v137.l, v42.h
	v_bfe_u32 v53, v41, 16, 1
	v_mov_b16_e64 v139.l, v38.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v62, v45
	v_mul_f32_e32 v62, v58, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v36, v36
	v_cmp_o_f32_e64 s10, v37, v37
	v_bfe_u32 v57, v33, 16, 1
	v_mov_b16_e64 v143.l, v30.h
	v_cmp_o_f32_e64 s17, v27, v27
	v_cmp_o_f32_e64 s18, v29, v29
	v_add3_u32 v37, v37, v55, 0x7fff
	v_add3_u32 v27, v27, v59, 0x7fff
	v_add3_u32 v29, v29, v60, 0x7fff
	v_add3_u32 v36, v36, v52, 0x7fff
	v_cmp_o_f32_e64 s0, v43, v43
	v_cmp_o_f32_e64 s6, v41, v41
	v_cmp_o_f32_e64 s14, v33, v33
	v_add3_u32 v43, v43, v51, 0x7fff
	v_and_b32_e32 v51, 1, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v62, v62, v118, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v41, v53, 0x7fff
	v_and_b32_e32 v53, 1, v139
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v76, v105, v23
	v_fma_f32 v76, v77, v111, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v33, v57, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s9
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s10
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s17
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s18
	v_cndmask_b16 v29.h, 0x7fff, v36.h, s7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v161, v6, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v37, v46, v134 :: v_dual_lshlrev_b32 v36, 16, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v57, 1, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v76, s3
	v_cndmask_b32_e64 v22, v22, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.l, v34.h
	v_cmp_o_f32_e64 s16, v30, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v16, v6, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v36, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v30, v57, 0x7fff
	v_cmp_o_f32_e64 s15, v28, v28
	v_add3_u32 v28, v28, v56, 0x7fff
	v_bfe_u32 v62, v25, 16, 1
	v_mov_b16_e64 v147.l, v22.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v58, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v55, 1, v141
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v134, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s12, v34, v34
	v_mov_b16_e64 v144.l, v24.h
	v_cmp_o_f32_e64 s22, v25, v25
	v_add3_u32 v25, v25, v62, 0x7fff
	v_and_b32_e32 v62, 1, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v61, v123, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v34, v55, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v30, v5, v15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v30, 16, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s11, v32, v32
	v_add3_u32 v32, v32, v54, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v75, s3
	v_cndmask_b32_e64 v21, v21, v61, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v59, 1, v144
	v_cndmask_b16 v32.l, 0x7fff, v34.h, s12
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v46, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v15, v5, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v30, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v61, v23, 16, 1
	v_mov_b16_e64 v146.l, v21.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v34, v8, v14
	v_fma_f32 v16, v16, v97, v6
	v_fma_f32 v7, v37, v7, v13
	v_fma_f32 v15, v15, v98, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s21, v23, v23
	v_add3_u32 v23, v23, v61, 0x7fff
	v_and_b32_e32 v61, 1, v146
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v14, v8, s2
	v_cndmask_b32_e64 v6, v6, v16, s3
	v_cndmask_b32_e64 v7, v13, v7, s2
	v_cndmask_b32_e64 v5, v5, v15, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v58, v30
	v_mul_f32_e32 v14, v58, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v40, v40
	v_mov_b16_e64 v145.l, v26.h
	v_add3_u32 v40, v40, v50, 0x7fff
	v_bfe_u32 v15, v6, 16, 1
	v_bfe_u32 v16, v5, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v100, v7
	v_fma_f32 v14, v14, v99, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v60, 1, v145
	v_cndmask_b16 v20.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v43.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s21
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s22
	v_cndmask_b16 v25.h, 0x7fff, v40.h, s1
	v_add3_u32 v15, v6, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v6, v5, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v7, v13, s3
	v_cndmask_b32_e64 v7, v8, v14, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s20, v26, v26
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s13
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s14
	v_add3_u32 v26, v26, v60, 0x7fff
	v_add3_u32 v33, v21, v61, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v46.l
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v13.h, v46.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v14.l, v46.l
	v_mov_b16_e32 v14.h, v68.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s19, v24, v24
	v_add3_u32 v24, v24, v59, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s20
	v_add3_u32 v26, v22, v62, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_cndmask_b16 v6.l, 0x7fff, v15.h, s0
	v_and_b32_e32 v8, 1, v8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v15.l, v46.l
	v_mov_b16_e32 v15.h, v67.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v16, v46, v14 :: v_dual_and_b32 v13, 1, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.l, 0x7fff, v26.h, vcc_lo
	v_add3_u32 v8, v5, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v46, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v16, v4, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_add3_u32 v13, v7, v13, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v5, v3, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v12, v4, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v5, v15, v47 :: v_dual_lshlrev_b32 v12, 16, v152
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v10, v3, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v12, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v5, v1, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v8.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v9, v1, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v58, v5
	v_mul_f32_e32 v5, v5, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v14, v2, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v42, v42
	v_cmp_o_f32_e64 s8, v38, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v9, v96, v3
	v_fma_f32 v5, v5, v93, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v11, v2, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, v46.l
	v_add3_u32 v42, v42, v51, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	v_cndmask_b32_e64 v1, v1, v5, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v94, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.h, v46.l
	v_add3_u32 v38, v38, v53, 0x7fff
	v_mov_b16_e32 v9.l, v3.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v58, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v10, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v10, v1, 16, 1
	v_cmp_o_f32_e64 s1, v3, v3
	v_cmp_o_f32_e64 s0, v1, v1
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s19
	v_bfe_u32 v5, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cndmask_b16 v25.l, 0x7fff, v42.h, s4
	v_cndmask_b16 v29.l, 0x7fff, v38.h, s8
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s11
	v_add3_u32 v5, v2, v5, 0x7fff
	v_and_b32_e32 v2, 1, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v95, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v1, v10, 0x7fff
	v_mov_b32_e32 v10, 0x5410
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s15
	v_add3_u32 v2, v3, v2, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v11, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v11, 0x7632
	v_cndmask_b16 v3.h, 0x7fff, v9.h, s0
	v_mov_b16_e32 v7.l, v4.h
	v_cmp_o_f32_e64 s2, v4, v4
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_dual_cndmask_b32 v9, v3, v23 :: v_dual_cndmask_b32 v14, v28, v29
	v_and_b32_e32 v7, 1, v7
	v_dual_cndmask_b32 v3, v23, v3 :: v_dual_cndmask_b32 v16, v8, v24
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v8, v24, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v4, v7, 0x7fff
	v_cndmask_b32_e32 v4, v31, v39, vcc_lo
	v_cndmask_b32_e32 v7, v6, v27, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	v_dual_cndmask_b32 v13, v25, v32 :: v_dual_and_b32 v10, 0x540054, v10
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v11, 0x760076, v11
	v_dual_cndmask_b32 v1, v35, v20 :: v_dual_cndmask_b32 v2, v20, v35
	v_dual_cndmask_b32 v5, v39, v31 :: v_dual_cndmask_b32 v12, v32, v25
	v_cndmask_b32_e32 v6, v27, v6, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	v_cndmask_b32_e32 v15, v29, v28, vcc_lo
	v_dual_cndmask_b32 v19, v0, v21 :: v_dual_cndmask_b32 v0, v21, v0
	s_mov_b32 s0, 0x76543210
	v_and_b32_e32 v21, 0x5040504, v10
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x7060706, v11
	v_permlanex16_b32 v11, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v21
	v_perm_b32 v1, v2, v1, v22
	v_perm_b32 v2, v5, v4, v21
	v_perm_b32 v3, v5, v4, v22
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v6, v7, v22
	v_perm_b32 v6, v20, v9, v21
	v_perm_b32 v7, v20, v9, v22
	v_perm_b32 v8, v13, v12, v21
	v_perm_b32 v9, v13, v12, v22
	v_perm_b32 v12, v15, v16, v21
	v_perm_b32 v13, v15, v16, v22
	v_add_lshl_u32 v16, v162, v44, 1
	v_perm_b32 v10, v11, v14, v21
	v_perm_b32 v11, v11, v14, v22
	v_perm_b32 v14, v23, v19, v21
	v_perm_b32 v15, v23, v19, v22
	v_add_lshl_u32 v19, v18, v44, 1
	v_add_lshl_u32 v20, v162, v17, 1
	v_add_lshl_u32 v17, v18, v17, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v19, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v20, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v17, s[28:31], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 211
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11296
; TotalNumSgprs: 47
; NumVgprs: 211
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     211
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
