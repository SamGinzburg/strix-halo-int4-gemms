	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 0xf8, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v16, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v65, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v2, 2, v2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s19
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
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
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s10, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	v_readfirstlane_b32 s9, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v4, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s29, s15, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v5, s29, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s9
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s34, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s3, s29, s34
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s14, s4, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v1, 4, v5
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s28, s10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v10, v3, v4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s14, s3, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s34, v10
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v8, s15, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s29, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	s_mov_b32 s6, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v11, 0x80000000, v4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v3, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s29, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v5, s3
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s15, 7, v3
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v12, s[20:23], 0 offen
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v12, 0x80000000, v13, s3
	s_clause 0x1
	buffer_load_b128 v[26:29], v8, s[20:23], 0 offen
	buffer_load_b128 v[30:33], v12, s[20:23], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s29, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s34, 64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v3, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s15, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	s_clause 0x1
	buffer_load_b128 v[34:37], v13, s[20:23], 0 offen
	buffer_load_b128 v[38:41], v12, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s29, v3
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s34, v10
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v13, 48, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	s_clause 0x1
	buffer_load_b128 v[42:45], v3, s[20:23], 0 offen
	buffer_load_b128 v[46:49], v12, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[66:67], v11, s[16:19], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v12, 3, v0
	v_and_b32_e32 v11, 8, v0
	buffer_load_b64 v[68:69], v8, s[16:19], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0x420, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v14, v12, v13
	v_and_b32_e32 v12, 32, v0
	v_lshlrev_b32_e32 v13, 6, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v2
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v70, 0, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v15, v16, 10, v3
	v_lshlrev_b32_e32 v3, 3, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v16, 0x90, v15
	v_xor_b32_e32 v17, 0x120, v15
	v_add_nc_u32_e32 v71, 0, v15
	v_xor_b32_e32 v18, 0x1b0, v15
	v_xor_b32_e32 v19, 0x210, v15
	v_add_nc_u32_e32 v72, 0, v16
	v_xor_b32_e32 v20, 0x330, v15
	v_add_nc_u32_e32 v73, 0, v17
	v_xor_b32_e32 v21, 0x3a0, v15
	v_add_nc_u32_e32 v74, 0, v18
	v_add_nc_u32_e32 v75, 0, v19
	v_add_nc_u32_e32 v76, 0, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v77, 0, v21
	s_waitcnt vmcnt(8)
	v_perm_b32 v8, v22, v4, 0x5010400
	v_perm_b32 v51, v24, v6, 0x5010400
	v_perm_b32 v24, v24, v6, 0x7030602
	v_perm_b32 v22, v22, v4, 0x7030602
	v_perm_b32 v52, v25, v7, 0x5010400
	v_perm_b32 v50, v23, v5, 0x5010400
	v_perm_b32 v25, v25, v7, 0x7030602
	v_perm_b32 v23, v23, v5, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v53, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_perm_b32 v54, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v55, v32, v28, 0x5010400
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v56, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v57, 8, v8
	v_lshrrev_b32_e32 v78, 24, v51
	s_waitcnt vmcnt(4)
	v_perm_b32 v83, v38, v34, 0x5010400
	v_lshrrev_b32_e32 v58, 24, v8
	v_lshrrev_b32_e32 v79, 24, v24
	v_lshrrev_b32_e32 v59, 8, v22
	v_lshrrev_b32_e32 v80, 8, v52
	v_perm_b32 v84, v38, v34, 0x7030602
	v_lshrrev_b32_e32 v60, 24, v22
	v_lshrrev_b32_e32 v81, 24, v52
	v_lshrrev_b32_e32 v61, 8, v50
	v_lshrrev_b32_e32 v82, 24, v25
	v_perm_b32 v85, v39, v35, 0x5010400
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v5.l, 0xff, v22.l
	v_and_b16 v5.h, 0xff, v22.h
	v_and_b16 v6.l, 0xff, v50.l
	v_lshrrev_b32_e32 v62, 24, v50
	v_and_b16 v6.h, 0xff, v50.h
	v_and_b16 v7.l, 0xff, v23.l
	v_lshrrev_b32_e32 v50, 8, v23
	v_lshrrev_b32_e32 v63, 24, v23
	v_and_b16 v7.h, 0xff, v23.h
	v_and_b16 v8.l, 0xff, v51.l
	v_lshrrev_b32_e32 v64, 8, v51
	v_and_b16 v8.h, 0xff, v51.h
	v_and_b16 v22.l, 0xff, v24.l
	v_lshrrev_b32_e32 v51, 8, v24
	v_and_b16 v22.h, 0xff, v24.h
	v_and_b16 v23.l, 0xff, v52.l
	v_and_b16 v23.h, 0xff, v52.h
	v_and_b16 v24.l, 0xff, v25.l
	v_lshrrev_b32_e32 v52, 8, v25
	v_and_b16 v24.h, 0xff, v25.h
	v_perm_b32 v86, v39, v35, 0x7030602
	v_perm_b32 v87, v40, v36, 0x5010400
	v_perm_b32 v88, v40, v36, 0x7030602
	v_perm_b32 v89, v41, v37, 0x5010400
	v_perm_b32 v90, v41, v37, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v25.l, 0xff, v53.l
	v_lshrrev_b32_e32 v91, 8, v53
	v_lshrrev_b32_e32 v92, 24, v53
	v_and_b16 v25.h, 0xff, v53.h
	v_and_b16 v26.l, 0xff, v30.l
	v_lshrrev_b32_e32 v53, 8, v30
	v_lshrrev_b32_e32 v93, 24, v30
	v_and_b16 v27.l, 0xff, v54.l
	v_lshrrev_b32_e32 v94, 8, v54
	v_lshrrev_b32_e32 v95, 24, v54
	v_and_b16 v27.h, 0xff, v54.h
	v_and_b16 v28.l, 0xff, v31.l
	v_lshrrev_b32_e32 v54, 8, v31
	v_lshrrev_b32_e32 v96, 24, v31
	v_and_b16 v28.h, 0xff, v31.h
	v_and_b16 v29.l, 0xff, v55.l
	v_lshrrev_b32_e32 v97, 8, v55
	v_lshrrev_b32_e32 v98, 24, v55
	v_and_b16 v29.h, 0xff, v55.h
	v_and_b16 v30.l, 0xff, v32.l
	v_lshrrev_b32_e32 v55, 8, v32
	v_lshrrev_b32_e32 v99, 24, v32
	v_and_b16 v31.l, 0xff, v56.l
	v_lshrrev_b32_e32 v100, 8, v56
	v_lshrrev_b32_e32 v101, 24, v56
	v_and_b16 v31.h, 0xff, v56.h
	v_and_b16 v32.l, 0xff, v33.l
	v_lshrrev_b32_e32 v56, 8, v33
	v_lshrrev_b32_e32 v102, 24, v33
	s_waitcnt vmcnt(2)
	v_perm_b32 v103, v46, v42, 0x5010400
	v_perm_b32 v104, v46, v42, 0x7030602
	v_perm_b32 v105, v47, v43, 0x5010400
	v_perm_b32 v106, v47, v43, 0x7030602
	v_perm_b32 v107, v48, v44, 0x5010400
	v_perm_b32 v108, v48, v44, 0x7030602
	v_perm_b32 v109, v49, v45, 0x5010400
	v_perm_b32 v110, v49, v45, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v33.l, 8, v57.l
	v_lshlrev_b16 v37.h, 8, v78.l
	v_lshrrev_b32_e32 v78, 8, v83
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v26.h, 0xff, v30.h
	v_and_b16 v30.h, 0xff, v32.h
	v_and_b16 v32.h, 0xff, v33.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v33.h, 8, v58.l
	v_lshlrev_b16 v38.h, 8, v79.l
	v_lshrrev_b32_e32 v79, 24, v83
	v_lshlrev_b16 v34.l, 8, v59.l
	v_lshlrev_b16 v39.l, 8, v80.l
	v_lshrrev_b32_e32 v80, 8, v84
	v_lshlrev_b16 v34.h, 8, v60.l
	v_lshlrev_b16 v39.h, 8, v81.l
	v_lshrrev_b32_e32 v81, 24, v84
	v_lshlrev_b16 v35.l, 8, v61.l
	v_lshlrev_b16 v40.h, 8, v82.l
	v_lshrrev_b32_e32 v82, 8, v85
	v_lshlrev_b16 v35.h, 8, v62.l
	v_lshlrev_b16 v36.l, 8, v50.l
	v_lshlrev_b16 v36.h, 8, v63.l
	v_lshlrev_b16 v37.l, 8, v64.l
	v_lshlrev_b16 v38.l, 8, v51.l
	v_lshlrev_b16 v40.l, 8, v52.l
	v_and_b16 v41.l, 0xff, v83.l
	v_and_b16 v41.h, 0xff, v83.h
	v_and_b16 v42.l, 0xff, v84.l
	v_and_b16 v42.h, 0xff, v84.h
	v_and_b16 v43.l, 0xff, v85.l
	v_lshrrev_b32_e32 v83, 24, v85
	v_and_b16 v43.h, 0xff, v85.h
	v_and_b16 v44.l, 0xff, v86.l
	v_lshrrev_b32_e32 v84, 8, v86
	v_lshrrev_b32_e32 v85, 24, v86
	v_and_b16 v44.h, 0xff, v86.h
	v_and_b16 v45.l, 0xff, v87.l
	v_lshrrev_b32_e32 v86, 8, v87
	v_lshrrev_b32_e32 v111, 24, v87
	v_and_b16 v45.h, 0xff, v87.h
	v_and_b16 v46.l, 0xff, v88.l
	v_lshrrev_b32_e32 v87, 8, v88
	v_lshrrev_b32_e32 v112, 24, v88
	v_and_b16 v46.h, 0xff, v88.h
	v_and_b16 v47.l, 0xff, v89.l
	v_lshrrev_b32_e32 v88, 8, v89
	v_lshrrev_b32_e32 v113, 24, v89
	v_and_b16 v47.h, 0xff, v89.h
	v_and_b16 v48.l, 0xff, v90.l
	v_lshrrev_b32_e32 v89, 8, v90
	v_lshrrev_b32_e32 v114, 24, v90
	v_and_b16 v48.h, 0xff, v90.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v49.l, 8, v91.l
	v_lshlrev_b16 v49.h, 8, v92.l
	v_lshlrev_b16 v50.l, 8, v53.l
	v_lshlrev_b16 v50.h, 8, v93.l
	v_lshlrev_b16 v51.l, 8, v94.l
	v_lshlrev_b16 v51.h, 8, v95.l
	v_lshlrev_b16 v52.l, 8, v54.l
	v_lshlrev_b16 v52.h, 8, v96.l
	v_lshlrev_b16 v53.l, 8, v97.l
	v_lshlrev_b16 v53.h, 8, v98.l
	v_lshlrev_b16 v54.l, 8, v55.l
	v_lshlrev_b16 v54.h, 8, v99.l
	v_lshlrev_b16 v55.l, 8, v100.l
	v_lshlrev_b16 v55.h, 8, v101.l
	v_lshlrev_b16 v56.l, 8, v56.l
	v_lshlrev_b16 v56.h, 8, v102.l
	v_and_b16 v57.l, 0xff, v103.l
	v_lshrrev_b32_e32 v90, 8, v103
	v_lshrrev_b32_e32 v91, 24, v103
	v_and_b16 v57.h, 0xff, v103.h
	v_and_b16 v58.l, 0xff, v104.l
	v_lshrrev_b32_e32 v92, 8, v104
	v_lshrrev_b32_e32 v93, 24, v104
	v_and_b16 v58.h, 0xff, v104.h
	v_and_b16 v59.l, 0xff, v105.l
	v_lshrrev_b32_e32 v94, 8, v105
	v_lshrrev_b32_e32 v95, 24, v105
	v_and_b16 v59.h, 0xff, v105.h
	v_lshrrev_b32_e32 v96, 8, v106
	v_lshrrev_b32_e32 v97, 24, v106
	v_lshrrev_b32_e32 v98, 8, v107
	v_lshrrev_b32_e32 v99, 24, v107
	v_lshrrev_b32_e32 v100, 8, v108
	v_lshrrev_b32_e32 v101, 24, v108
	v_lshrrev_b32_e32 v102, 8, v109
	v_lshrrev_b32_e32 v103, 24, v109
	v_lshrrev_b32_e32 v104, 8, v110
	v_lshrrev_b32_e32 v105, 24, v110
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v4.l, v33.l
	v_lshlrev_b16 v33.l, 8, v78.l
	v_or_b16 v4.h, v4.h, v33.h
	v_lshlrev_b16 v33.h, 8, v79.l
	v_or_b16 v5.l, v5.l, v34.l
	v_lshlrev_b16 v34.l, 8, v80.l
	v_or_b16 v5.h, v5.h, v34.h
	v_lshlrev_b16 v34.h, 8, v81.l
	v_or_b16 v6.l, v6.l, v35.l
	v_lshlrev_b16 v35.l, 8, v82.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v60.l, 0xff, v106.l
	v_and_b16 v60.h, 0xff, v106.h
	v_and_b16 v61.l, 0xff, v107.l
	v_and_b16 v61.h, 0xff, v107.h
	v_and_b16 v62.l, 0xff, v108.l
	v_and_b16 v62.h, 0xff, v108.h
	v_and_b16 v63.l, 0xff, v109.l
	v_and_b16 v63.h, 0xff, v109.h
	v_and_b16 v64.l, 0xff, v110.l
	v_and_b16 v64.h, 0xff, v110.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.h, v6.h, v35.h
	v_or_b16 v7.l, v7.l, v36.l
	v_or_b16 v7.h, v7.h, v36.h
	v_or_b16 v8.l, v8.l, v37.l
	v_or_b16 v8.h, v8.h, v37.h
	v_or_b16 v22.l, v22.l, v38.l
	v_or_b16 v22.h, v22.h, v38.h
	v_or_b16 v23.l, v23.l, v39.l
	v_or_b16 v23.h, v23.h, v39.h
	v_or_b16 v24.l, v24.l, v40.l
	v_or_b16 v24.h, v24.h, v40.h
	v_lshlrev_b16 v35.h, 8, v83.l
	v_lshlrev_b16 v36.l, 8, v84.l
	v_lshlrev_b16 v36.h, 8, v85.l
	v_lshlrev_b16 v37.l, 8, v86.l
	v_lshlrev_b16 v37.h, 8, v111.l
	v_lshlrev_b16 v38.l, 8, v87.l
	v_lshlrev_b16 v38.h, 8, v112.l
	v_lshlrev_b16 v39.l, 8, v88.l
	v_lshlrev_b16 v39.h, 8, v113.l
	v_lshlrev_b16 v40.l, 8, v89.l
	v_lshlrev_b16 v40.h, 8, v114.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v25.l, v25.l, v49.l
	v_or_b16 v25.h, v25.h, v49.h
	v_or_b16 v26.l, v26.l, v50.l
	v_or_b16 v26.h, v26.h, v50.h
	v_or_b16 v27.l, v27.l, v51.l
	v_or_b16 v27.h, v27.h, v51.h
	v_or_b16 v28.l, v28.l, v52.l
	v_or_b16 v28.h, v28.h, v52.h
	v_or_b16 v29.l, v29.l, v53.l
	v_or_b16 v29.h, v29.h, v53.h
	v_or_b16 v30.l, v30.l, v54.l
	v_or_b16 v30.h, v30.h, v54.h
	v_or_b16 v31.l, v31.l, v55.l
	v_or_b16 v31.h, v31.h, v55.h
	v_or_b16 v32.l, v32.l, v56.l
	v_or_b16 v32.h, v32.h, v56.h
	v_lshlrev_b16 v49.l, 8, v90.l
	v_lshlrev_b16 v49.h, 8, v91.l
	v_lshlrev_b16 v50.l, 8, v92.l
	v_lshlrev_b16 v50.h, 8, v93.l
	v_lshlrev_b16 v51.l, 8, v94.l
	v_lshlrev_b16 v51.h, 8, v95.l
	v_lshlrev_b16 v52.l, 8, v96.l
	v_lshlrev_b16 v52.h, 8, v97.l
	v_lshlrev_b16 v53.l, 8, v98.l
	v_lshlrev_b16 v53.h, 8, v99.l
	v_lshlrev_b16 v54.l, 8, v100.l
	v_lshlrev_b16 v54.h, 8, v101.l
	v_lshlrev_b16 v55.l, 8, v102.l
	v_lshlrev_b16 v55.h, 8, v103.l
	v_lshlrev_b16 v56.l, 8, v104.l
	v_lshlrev_b16 v56.h, 8, v105.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v4
	ds_store_b16_d16_hi v71, v4 offset:64
	ds_store_b16 v72, v5
	ds_store_b16_d16_hi v72, v5 offset:64
	ds_store_b16 v73, v6
	ds_store_b16_d16_hi v73, v6 offset:64
	ds_store_b16 v74, v7
	ds_store_b16_d16_hi v74, v7 offset:64
	ds_store_b16 v75, v8
	ds_store_b16_d16_hi v75, v8 offset:64
	v_or_b16 v4.l, v41.l, v33.l
	v_or_b16 v4.h, v41.h, v33.h
	v_or_b16 v5.l, v42.l, v34.l
	v_or_b16 v5.h, v42.h, v34.h
	v_or_b16 v6.l, v43.l, v35.l
	v_or_b16 v6.h, v43.h, v35.h
	v_or_b16 v7.l, v44.l, v36.l
	v_or_b16 v7.h, v44.h, v36.h
	v_or_b16 v8.l, v45.l, v37.l
	v_or_b16 v8.h, v45.h, v37.h
	v_or_b16 v33.l, v46.l, v38.l
	v_or_b16 v33.h, v46.h, v38.h
	v_or_b16 v34.l, v47.l, v39.l
	v_or_b16 v34.h, v47.h, v39.h
	v_or_b16 v35.l, v48.l, v40.l
	v_or_b16 v35.h, v48.h, v40.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v70, v[66:67] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v71, v25 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v22 offset:640
	ds_store_b16_d16_hi v71, v22 offset:704
	ds_store_b16 v76, v23
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v25 offset:16448
	ds_store_b16 v72, v26 offset:16384
	ds_store_b16_d16_hi v72, v26 offset:16448
	ds_store_b16 v73, v27 offset:16384
	ds_store_b16_d16_hi v73, v27 offset:16448
	ds_store_b16 v74, v28 offset:16384
	ds_store_b16_d16_hi v74, v28 offset:16448
	ds_store_b16 v75, v29 offset:16384
	ds_store_b16_d16_hi v75, v29 offset:16448
	ds_store_b16 v71, v30 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v76, v23 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v30 offset:17088
	ds_store_b16 v76, v31 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v31 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v77, v24 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v77, v32 offset:16384
	ds_store_b16_d16_hi v77, v32 offset:16448
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v22.l, v57.l, v49.l
	v_or_b16 v22.h, v57.h, v49.h
	v_or_b16 v23.l, v58.l, v50.l
	v_or_b16 v23.h, v58.h, v50.h
	v_or_b16 v24.l, v59.l, v51.l
	v_or_b16 v24.h, v59.h, v51.h
	v_or_b16 v25.l, v60.l, v52.l
	v_or_b16 v25.h, v60.h, v52.h
	v_or_b16 v26.l, v61.l, v53.l
	v_or_b16 v26.h, v61.h, v53.h
	v_or_b16 v27.l, v62.l, v54.l
	v_or_b16 v27.h, v62.h, v54.h
	v_or_b16 v28.l, v63.l, v55.l
	v_or_b16 v28.h, v63.h, v55.h
	v_or_b16 v29.l, v64.l, v56.l
	v_or_b16 v29.h, v64.h, v56.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v4 offset:8192
	ds_store_b16_d16_hi v71, v4 offset:8256
	ds_store_b16 v72, v5 offset:8192
	ds_store_b16_d16_hi v72, v5 offset:8256
	ds_store_b16 v73, v6 offset:8192
	ds_store_b16_d16_hi v73, v6 offset:8256
	ds_store_b16 v74, v7 offset:8192
	ds_store_b16_d16_hi v74, v7 offset:8256
	ds_store_b16 v75, v8 offset:8192
	ds_store_b16_d16_hi v75, v8 offset:8256
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v70, v[68:69] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v71, v22 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v33 offset:8832
	ds_store_b16_d16_hi v71, v33 offset:8896
	ds_store_b16 v76, v34 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v22 offset:24640
	ds_store_b16 v72, v23 offset:24576
	ds_store_b16_d16_hi v72, v23 offset:24640
	ds_store_b16 v73, v24 offset:24576
	ds_store_b16_d16_hi v73, v24 offset:24640
	ds_store_b16 v74, v25 offset:24576
	ds_store_b16_d16_hi v74, v25 offset:24640
	ds_store_b16 v75, v26 offset:24576
	ds_store_b16_d16_hi v75, v26 offset:24640
	ds_store_b16 v71, v27 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v76, v34 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v27 offset:25280
	ds_store_b16 v76, v28 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v35 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v28 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v77, v35 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v77, v29 offset:24576
	ds_store_b16_d16_hi v77, v29 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v66, v65, 6, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v71, 6, v1
	v_and_b32_e32 v22, 8, v0
	v_and_b32_e32 v23, 32, v0
	v_and_or_b32 v70, 0x1800, v2, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v67, 16, v66
	v_xor_b32_e32 v68, 32, v66
	v_xor_b32_e32 v69, 48, v66
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr70
.LBB0_3:                                ; %Flow176
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v70, 0x1800, v2, v3
	v_lshl_or_b32 v66, v65, 6, v3
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v22, s29, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x210, v4, v1
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_xor_b32_e32 v67, 16, v66
	v_xor_b32_e32 v68, 32, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v70
	v_xor_b32_e32 v69, 48, v66
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v44, 0
	v_or_b32_e32 v23, v1, v13
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v6, s9
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v24, 16, v23
	v_xor_b32_e32 v25, 32, v23
	v_xor_b32_e32 v26, 48, v23
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_add_i32 s34, s34, 64
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x8800
	s_add_i32 s31, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s30, 0, 0x6000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 6
	s_mov_b32 s8, s1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s34, s6
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v79, s8, v23
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s6, s29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v27, s6, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s6, s7, s14
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v28, s6, v9
	v_add_nc_u32_e32 v71, s6, v22
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s6, s6, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[31:32], v27, s[16:19], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v72, s6, v9
	v_add_nc_u32_e32 v73, s6, v22
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[27:30], v28, s[20:23], 0 offen
	buffer_load_b128 v[103:106], v71, s[20:23], 0 offen
	buffer_load_b128 v[107:110], v72, s[20:23], 0 offen
	buffer_load_b128 v[111:114], v73, s[20:23], 0 offen
	s_mov_b32 s6, s0
	v_add_nc_u32_e32 v75, s7, v23
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v71, s6, v66
	v_add_nc_u32_e32 v72, s6, v67
	v_add_nc_u32_e32 v73, s6, v68
	v_add_nc_u32_e32 v74, s6, v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v76, s7, v24
	v_add_nc_u32_e32 v77, s7, v25
	v_add_nc_u32_e32 v78, s7, v26
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v80, s8, v24
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[95:98], v71
	ds_load_b128 v[115:118], v71 offset:1024
	ds_load_b128 v[119:122], v72
	ds_load_b128 v[123:126], v72 offset:1024
	ds_load_b128 v[127:130], v73
	ds_load_b128 v[131:134], v73 offset:1024
	ds_load_b128 v[135:138], v74
	ds_load_b128 v[139:142], v74 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[87:90], v75
	ds_load_b128 v[143:146], v76
	ds_load_b128 v[147:150], v77
	ds_load_b128 v[151:154], v78
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[155:158], v79
	ds_load_b128 v[159:162], v80
	v_add_nc_u32_e32 v81, s8, v25
	v_add_nc_u32_e32 v82, s8, v26
	ds_load_b128 v[163:166], v81
	ds_load_b128 v[167:170], v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s9, s36, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s9, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s9, 0
	s_mov_b32 s4, s31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s7, s36, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s8, s36, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[71:78], v[87:90], v[95:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[87:90], v[115:118], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[87:94], v[155:158], v[95:98], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[71:78], v[143:146], v[119:122], v[71:78] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[115:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[159:162], v[119:122], v[87:94] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[79:86], v[143:146], v[123:126], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[147:150], v[127:130], v[71:78] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[95:102], v[159:162], v[123:126], v[95:102] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s7, s7, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[87:94], v[163:166], v[127:130], v[87:94] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[79:86], v[147:150], v[131:134], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[151:154], v[135:138], v[71:78] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[95:102], v[163:166], v[131:134], v[95:102] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s31, s8, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[87:94], v[167:170], v[135:138], v[87:94] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[79:86], v[151:154], v[139:142], v[79:86] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[95:102], v[167:170], v[139:142], v[95:102] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v171, s7, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v44, v44, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v57, v71
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v58, v58, v72
	v_dual_add_f32 v52, v52, v74 :: v_dual_add_f32 v51, v51, v73
	v_dual_add_f32 v42, v42, v76 :: v_dual_add_f32 v41, v41, v75
	v_dual_add_f32 v34, v34, v78 :: v_dual_add_f32 v33, v33, v77
	v_dual_add_f32 v64, v64, v80 :: v_dual_add_f32 v63, v63, v79
	v_dual_add_f32 v60, v60, v82 :: v_dual_add_f32 v59, v59, v81
	v_dual_add_f32 v48, v48, v84 :: v_dual_add_f32 v47, v47, v83
	v_dual_add_f32 v35, v35, v85 :: v_dual_add_f32 v36, v36, v86
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v53, v53, v87 :: v_dual_add_nc_u32 v174, s31, v17
	v_add_f32_e32 v54, v54, v88
	v_dual_add_f32 v49, v49, v89 :: v_dual_add_nc_u32 v172, s31, v15
	v_dual_add_f32 v50, v50, v90 :: v_dual_add_nc_u32 v173, s31, v16
	v_dual_add_f32 v62, v62, v96 :: v_dual_add_nc_u32 v175, s31, v18
	v_dual_add_f32 v37, v37, v93 :: v_dual_add_nc_u32 v176, s31, v19
	v_dual_add_f32 v38, v38, v94 :: v_dual_add_nc_u32 v177, s31, v20
	v_dual_add_f32 v43, v43, v91 :: v_dual_add_nc_u32 v178, s31, v21
	v_dual_add_f32 v61, v61, v95 :: v_dual_add_f32 v56, v56, v98
	v_dual_add_f32 v55, v55, v97 :: v_dual_add_f32 v46, v46, v100
	v_dual_add_f32 v45, v45, v99 :: v_dual_add_f32 v40, v40, v102
	v_add_f32_e32 v39, v39, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	s_mov_b32 s0, s33
	s_mov_b32 s1, s30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s33, s7, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s30, s31, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v171, v[31:32] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v31, v103, v27, 0x5010400
	v_perm_b32 v32, v103, v27, 0x7030602
	v_perm_b32 v71, v104, v28, 0x5010400
	v_perm_b32 v72, v104, v28, 0x7030602
	v_perm_b32 v73, v105, v29, 0x5010400
	v_perm_b32 v74, v105, v29, 0x7030602
	v_perm_b32 v75, v106, v30, 0x5010400
	v_perm_b32 v76, v106, v30, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v77, v111, v107, 0x5010400
	v_perm_b32 v78, v111, v107, 0x7030602
	v_perm_b32 v79, v112, v108, 0x5010400
	v_perm_b32 v80, v112, v108, 0x7030602
	v_perm_b32 v81, v113, v109, 0x5010400
	v_perm_b32 v82, v113, v109, 0x7030602
	v_perm_b32 v83, v114, v110, 0x5010400
	v_perm_b32 v84, v114, v110, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v85, 8, v31
	v_lshrrev_b32_e32 v86, 24, v31
	v_lshrrev_b32_e32 v87, 8, v32
	v_lshrrev_b32_e32 v88, 24, v32
	v_lshrrev_b32_e32 v89, 8, v71
	v_and_b16 v27.l, 0xff, v31.l
	v_lshrrev_b32_e32 v90, 24, v71
	v_lshrrev_b32_e32 v91, 8, v72
	v_lshrrev_b32_e32 v92, 24, v72
	v_and_b16 v31.l, 0xff, v73.l
	v_lshrrev_b32_e32 v93, 8, v73
	v_lshrrev_b32_e32 v94, 24, v73
	v_lshrrev_b32_e32 v95, 8, v74
	v_lshrrev_b32_e32 v96, 24, v74
	v_lshrrev_b32_e32 v97, 8, v75
	v_lshrrev_b32_e32 v98, 24, v75
	v_lshrrev_b32_e32 v99, 8, v76
	v_lshrrev_b32_e32 v100, 24, v76
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v73.l, 0xff, v77.l
	v_lshrrev_b32_e32 v101, 8, v77
	v_lshrrev_b32_e32 v102, 24, v77
	v_lshrrev_b32_e32 v103, 8, v78
	v_lshrrev_b32_e32 v104, 24, v78
	v_lshrrev_b32_e32 v105, 8, v79
	v_lshrrev_b32_e32 v106, 24, v79
	v_lshrrev_b32_e32 v107, 8, v80
	v_lshrrev_b32_e32 v108, 24, v80
	v_and_b16 v77.l, 0xff, v81.l
	v_lshrrev_b32_e32 v109, 8, v81
	v_lshrrev_b32_e32 v110, 24, v81
	v_lshrrev_b32_e32 v111, 8, v82
	v_lshrrev_b32_e32 v112, 24, v82
	v_lshrrev_b32_e32 v113, 8, v83
	v_lshrrev_b32_e32 v114, 24, v83
	v_lshrrev_b32_e32 v115, 8, v84
	v_lshrrev_b32_e32 v116, 24, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v81.l, 8, v85.l
	v_and_b16 v27.h, 0xff, v31.h
	v_and_b16 v31.h, 0xff, v73.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v73.h, 0xff, v77.h
	v_and_b16 v77.h, 0xff, v81.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v81.h, 8, v86.l
	v_and_b16 v28.l, 0xff, v32.l
	v_and_b16 v32.l, 0xff, v74.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v74.l, 0xff, v78.l
	v_and_b16 v78.l, 0xff, v82.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v82.l, 8, v87.l
	v_and_b16 v28.h, 0xff, v32.h
	v_and_b16 v32.h, 0xff, v74.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v74.h, 0xff, v78.h
	v_and_b16 v78.h, 0xff, v82.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v82.h, 8, v88.l
	v_and_b16 v29.l, 0xff, v71.l
	v_and_b16 v71.l, 0xff, v75.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v75.l, 0xff, v79.l
	v_and_b16 v79.l, 0xff, v83.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v83.l, 8, v89.l
	v_and_b16 v29.h, 0xff, v71.h
	v_and_b16 v30.l, 0xff, v72.l
	v_and_b16 v30.h, 0xff, v72.h
	v_and_b16 v71.h, 0xff, v75.h
	v_and_b16 v72.l, 0xff, v76.l
	v_and_b16 v72.h, 0xff, v76.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v75.h, 0xff, v79.h
	v_and_b16 v76.l, 0xff, v80.l
	v_and_b16 v76.h, 0xff, v80.h
	v_and_b16 v79.h, 0xff, v83.h
	v_and_b16 v80.l, 0xff, v84.l
	v_and_b16 v80.h, 0xff, v84.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v83.h, 8, v90.l
	v_lshlrev_b16 v84.l, 8, v91.l
	v_lshlrev_b16 v84.h, 8, v92.l
	v_lshlrev_b16 v85.l, 8, v93.l
	v_lshlrev_b16 v85.h, 8, v94.l
	v_lshlrev_b16 v86.l, 8, v95.l
	v_lshlrev_b16 v86.h, 8, v96.l
	v_lshlrev_b16 v87.l, 8, v97.l
	v_lshlrev_b16 v87.h, 8, v98.l
	v_lshlrev_b16 v88.l, 8, v99.l
	v_lshlrev_b16 v88.h, 8, v100.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v89.l, 8, v101.l
	v_lshlrev_b16 v89.h, 8, v102.l
	v_lshlrev_b16 v90.l, 8, v103.l
	v_lshlrev_b16 v90.h, 8, v104.l
	v_lshlrev_b16 v91.l, 8, v105.l
	v_lshlrev_b16 v91.h, 8, v106.l
	v_lshlrev_b16 v92.l, 8, v107.l
	v_lshlrev_b16 v92.h, 8, v108.l
	v_lshlrev_b16 v93.l, 8, v109.l
	v_lshlrev_b16 v93.h, 8, v110.l
	v_lshlrev_b16 v94.l, 8, v111.l
	v_lshlrev_b16 v94.h, 8, v112.l
	v_lshlrev_b16 v95.l, 8, v113.l
	v_lshlrev_b16 v95.h, 8, v114.l
	v_lshlrev_b16 v96.l, 8, v115.l
	v_lshlrev_b16 v96.h, 8, v116.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.l, v27.l, v81.l
	v_or_b16 v27.h, v27.h, v81.h
	v_or_b16 v28.l, v28.l, v82.l
	v_or_b16 v28.h, v28.h, v82.h
	v_or_b16 v29.l, v29.l, v83.l
	v_or_b16 v29.h, v29.h, v83.h
	v_or_b16 v30.l, v30.l, v84.l
	v_or_b16 v30.h, v30.h, v84.h
	v_or_b16 v31.l, v31.l, v85.l
	v_or_b16 v31.h, v31.h, v85.h
	v_or_b16 v32.l, v32.l, v86.l
	v_or_b16 v32.h, v32.h, v86.h
	v_or_b16 v71.l, v71.l, v87.l
	v_or_b16 v71.h, v71.h, v87.h
	v_or_b16 v72.l, v72.l, v88.l
	v_or_b16 v72.h, v72.h, v88.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v73.l, v73.l, v89.l
	v_or_b16 v73.h, v73.h, v89.h
	v_or_b16 v74.l, v74.l, v90.l
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v172, v27
	ds_store_b16_d16_hi v172, v27 offset:64
	ds_store_b16 v173, v28
	ds_store_b16_d16_hi v173, v28 offset:64
	ds_store_b16 v174, v29
	ds_store_b16_d16_hi v174, v29 offset:64
	ds_store_b16 v175, v30
	ds_store_b16_d16_hi v175, v30 offset:64
	ds_store_b16 v176, v31
	ds_store_b16_d16_hi v176, v31 offset:64
	ds_store_b16 v172, v32 offset:640
	ds_store_b16_d16_hi v172, v32 offset:704
	ds_store_b16 v177, v71
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v172, v73 offset:16384
	ds_store_b16_d16_hi v172, v73 offset:16448
	ds_store_b16 v173, v74 offset:16384
	ds_store_b16_d16_hi v173, v74 offset:16448
	ds_store_b16 v174, v75 offset:16384
	ds_store_b16_d16_hi v174, v75 offset:16448
	ds_store_b16 v175, v76 offset:16384
	ds_store_b16_d16_hi v175, v76 offset:16448
	ds_store_b16 v176, v77 offset:16384
	ds_store_b16_d16_hi v176, v77 offset:16448
	ds_store_b16 v172, v78 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v177, v71 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v172, v78 offset:17088
	ds_store_b16 v177, v79 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v178, v72
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v177, v79 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v178, v72 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v178, v80 offset:16384
	ds_store_b16_d16_hi v178, v80 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v71, v13 :: v_dual_mov_b32 v22, v11
	v_mov_b32_e32 v23, v12
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v53, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x8800
	s_add_i32 s31, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v43, v53
	v_mov_b32_e32 v41, v53
	v_mov_b32_e32 v49, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v51, v53 :: v_dual_mov_b32 v52, v54
	v_dual_mov_b32 v58, v54 :: v_dual_mov_b32 v57, v53
	v_mov_b32_e32 v44, v54
	v_mov_b32_e32 v42, v54
	v_dual_mov_b32 v50, v54 :: v_dual_mov_b32 v37, v53
	v_dual_mov_b32 v38, v54 :: v_dual_mov_b32 v33, v53
	v_mov_b32_e32 v34, v54
	v_dual_mov_b32 v62, v54 :: v_dual_mov_b32 v61, v53
	v_dual_mov_b32 v64, v54 :: v_dual_mov_b32 v63, v53
	v_dual_mov_b32 v45, v53 :: v_dual_mov_b32 v46, v54
	v_dual_mov_b32 v47, v53 :: v_dual_mov_b32 v48, v54
	v_dual_mov_b32 v56, v54 :: v_dual_mov_b32 v55, v53
	v_dual_mov_b32 v60, v54 :: v_dual_mov_b32 v59, v53
	v_dual_mov_b32 v39, v53 :: v_dual_mov_b32 v40, v54
	v_dual_mov_b32 v35, v53 :: v_dual_mov_b32 v36, v54
	s_add_i32 s30, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v22
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v9, s0, v67
	v_add_nc_u32_e32 v1, s0, v66
	v_add_nc_u32_e32 v10, s0, v68
	v_add_nc_u32_e32 v13, s0, v69
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v14, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v23
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[17:20], v9 offset:1024
	ds_load_b128 v[21:24], v10
	ds_load_b128 v[9:12], v10 offset:1024
	ds_load_b128 v[5:8], v1
	ds_load_b128 v[1:4], v1 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v15, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v72, v14, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[13:16], v13 offset:1024
	v_xor_b32_e32 v70, v72, v70
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v72, 0, 1, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v71, v70, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v72
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v73, 16, v71
	v_xor_b32_e32 v70, 32, v71
	v_xor_b32_e32 v72, 48, v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v74, s6, v71
	v_add_nc_u32_e32 v75, s6, v73
	ds_load_b128 v[90:93], v74
	ds_load_b128 v[94:97], v75
	v_add_nc_u32_e32 v75, s6, v70
	v_add_nc_u32_e32 v74, s6, v72
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[98:101], v75
	ds_load_b128 v[102:105], v74
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v81, s11 :: v_dual_mov_b32 v76, s6
	v_dual_mov_b32 v80, s10 :: v_dual_mov_b32 v79, s9
	v_dual_mov_b32 v78, s8 :: v_dual_mov_b32 v77, s7
	v_dual_mov_b32 v75, s5 :: v_dual_mov_b32 v74, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[90:93], v[5:8], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[90:93], v[1:4], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[94:97], v[29:32], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[17:20], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[98:101], v[21:24], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[98:101], v[9:12], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[25:28], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[102:105], v[13:16], v[74:81] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v64, v64, v75 :: v_dual_add_f32 v63, v63, v74
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v74, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v52, v52, v85 :: v_dual_add_f32 v51, v51, v84
	v_dual_add_f32 v42, v42, v87 :: v_dual_add_f32 v41, v41, v86
	v_dual_add_f32 v34, v34, v89 :: v_dual_add_f32 v33, v33, v88
	v_dual_add_f32 v60, v60, v77 :: v_dual_add_f32 v59, v59, v76
	v_dual_add_f32 v48, v48, v79 :: v_dual_add_f32 v47, v47, v78
	v_dual_add_f32 v36, v36, v81 :: v_dual_add_f32 v35, v35, v80
	v_dual_add_f32 v58, v58, v83 :: v_dual_add_f32 v57, v57, v74
.LBB0_10:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v74, s1, v71
	v_add_nc_u32_e32 v75, s1, v73
	ds_load_b128 v[90:93], v74
	ds_load_b128 v[94:97], v75
	v_add_nc_u32_e32 v75, s1, v70
	v_add_nc_u32_e32 v74, s1, v72
	ds_load_b128 v[98:101], v75
	ds_load_b128 v[102:105], v74
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v81, s11 :: v_dual_mov_b32 v76, s6
	v_dual_mov_b32 v80, s10 :: v_dual_mov_b32 v79, s9
	v_dual_mov_b32 v78, s8 :: v_dual_mov_b32 v77, s7
	v_dual_mov_b32 v75, s5 :: v_dual_mov_b32 v74, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[90:93], v[5:8], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[90:93], v[1:4], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[94:97], v[29:32], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[17:20], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[98:101], v[21:24], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[98:101], v[9:12], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[25:28], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[102:105], v[13:16], v[74:81] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v85
	v_cvt_f32_i32_e32 v3, v86
	v_cvt_f32_i32_e32 v4, v87
	v_cvt_f32_i32_e32 v5, v88
	v_cvt_f32_i32_e32 v6, v89
	v_cvt_f32_i32_e32 v7, v74
	v_cvt_f32_i32_e32 v8, v75
	v_cvt_f32_i32_e32 v9, v76
	v_cvt_f32_i32_e32 v10, v77
	v_cvt_f32_i32_e32 v11, v78
	v_cvt_f32_i32_e32 v12, v79
	v_cvt_f32_i32_e32 v13, v80
	v_cvt_f32_i32_e32 v14, v81
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v50, v50, v2 :: v_dual_add_f32 v49, v49, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v83
	v_cvt_f32_i32_e32 v2, v82
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v44, v44, v4 :: v_dual_add_f32 v43, v43, v3
	v_dual_add_f32 v38, v38, v6 :: v_dual_add_f32 v37, v37, v5
	v_dual_add_f32 v62, v62, v8 :: v_dual_add_f32 v61, v61, v7
	v_dual_add_f32 v56, v56, v10 :: v_dual_add_f32 v55, v55, v9
	v_dual_add_f32 v46, v46, v12 :: v_dual_add_f32 v45, v45, v11
	v_dual_add_f32 v40, v40, v14 :: v_dual_add_f32 v39, v39, v13
	v_dual_add_f32 v54, v54, v1 :: v_dual_add_f32 v53, v53, v2
.LBB0_12:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(2)
	v_add_nc_u32_e32 v1, s33, v66
	v_mov_b32_e32 v66, 0
	v_add_nc_u32_e32 v2, s33, v67
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v13, s33, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v67, 0, 1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v14, s33, v69
	v_mov_b32_e32 v69, 0
	ds_load_b128 v[25:28], v13
	ds_load_b128 v[17:20], v13 offset:1024
	ds_load_b128 v[21:24], v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[13:16], v14 offset:1024
	v_cmp_ne_u32_e64 s0, 1, v67
	v_mov_b32_e32 v67, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[5:8], v1 offset:1024
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[1:4], v2 offset:1024
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v82, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v67, s31, v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v87, s11 :: v_dual_add_nc_u32 v68, s31, v73
	v_mov_b32_e32 v86, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[74:77], v67
	ds_load_b128 v[96:99], v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v85, s9 :: v_dual_add_nc_u32 v68, s31, v70
	v_dual_mov_b32 v84, s8 :: v_dual_add_nc_u32 v67, s31, v72
	v_dual_mov_b32 v83, s7 :: v_dual_mov_b32 v82, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[100:103], v68
	ds_load_b128 v[104:107], v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v81, s5 :: v_dual_mov_b32 v80, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[74:77], v[29:32], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[74:77], v[5:8], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[96:99], v[9:12], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[96:99], v[1:4], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[100:103], v[25:28], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[100:103], v[17:20], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[104:107], v[21:24], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[104:107], v[13:16], v[80:87] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v68, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v91
	v_cvt_f32_i32_e32 v67, v92
	v_cvt_f32_i32_e32 v69, v93
	v_cvt_f32_i32_e32 v74, v94
	v_cvt_f32_i32_e32 v76, v95
	v_cvt_f32_i32_e32 v77, v80
	v_cvt_f32_i32_e32 v78, v81
	v_cvt_f32_i32_e32 v80, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v79, v84
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v82, v86
	v_cvt_f32_i32_e32 v85, v87
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v86, v89
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v101, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v66, s30, v71
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v104, s11 :: v_dual_add_nc_u32 v71, s30, v73
	v_mov_b32_e32 v103, s10
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[105:108], v66
	ds_load_b128 v[109:112], v71
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v99, s6 :: v_dual_add_nc_u32 v70, s30, v70
	v_dual_mov_b32 v101, s8 :: v_dual_add_nc_u32 v66, s30, v72
	v_dual_mov_b32 v102, s9 :: v_dual_mov_b32 v97, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[70:73], v70
	ds_load_b128 v[113:116], v66
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v100, s7
	v_mov_b32_e32 v98, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[105:108], v[29:32], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[5:8], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[109:112], v[9:12], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[109:112], v[1:4], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[70:73], v[25:28], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[70:73], v[17:20], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[113:116], v[21:24], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[113:116], v[13:16], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v66, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v90
	v_cvt_f32_i32_e32 v89, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v88, v93
	v_cvt_f32_i32_e32 v90, v94
	v_cvt_f32_i32_e32 v91, v95
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v96, v101
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v99, v103
	v_cvt_f32_i32_e32 v101, v104
.LBB0_16:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b32_e32 v11, 1, v0
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s28, v65
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s14, s15
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s17, s25, 0xffff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v14, v57, v84 :: v_dual_and_b32 v3, 0x70, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v29, v52, v75 :: v_dual_lshlrev_b32 v2, 1, v2
	s_mov_b32 s19, 0x31027000
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v12, v1, 1, v3
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v1, 32, v2
	s_mov_b32 s16, s24
	s_clause 0x1
	buffer_load_u16 v13, v2, s[16:19], 0 offen
	buffer_load_u16 v15, v1, s[16:19], 0 offen
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v8, s14, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 2, v12
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v9, s0, v12, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s17, s27, 0xffff
	s_mov_b32 s16, s26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v17, v58, v86 :: v_dual_lshlrev_b32 v8, 1, v8
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v1, s14, v6
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x2
	buffer_load_u16 v18, v8, s[16:19], 0 offen
	buffer_load_u16 v16, v9, s[16:19], 0 offen
	buffer_load_u16 v19, v6, s[16:19], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v5, 6, v12
	v_or_b32_e32 v7, 4, v12
	v_or_b32_e32 v3, 10, v12
	v_or_b32_e32 v4, 8, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v51, v68 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v2, s14, v7
	v_or_b32_e32 v10, s14, v5
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v6, s0, v7, 1
	v_add_lshl_u32 v7, s0, v3, 1
	v_add_lshl_u32 v8, s0, v4, 1
	s_clause 0x4
	buffer_load_u16 v20, v5, s[16:19], 0 offen
	buffer_load_u16 v21, v6, s[16:19], 0 offen
	buffer_load_u16 v22, v7, s[16:19], 0 offen
	buffer_load_u16 v23, v8, s[16:19], 0 offen
	buffer_load_u16 v24, v1, s[16:19], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 435 22 is_stmt 0              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s14, v3
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v41, v67 :: v_dual_lshlrev_b32 v2, 1, v10
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v4, s14, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v10, v42, v69
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x1
	buffer_load_u16 v25, v1, s[16:19], 0 offen
	buffer_load_u16 v26, v2, s[16:19], 0 offen
	v_lshlrev_b32_e32 v1, 1, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v67, v64, v78 :: v_dual_lshlrev_b32 v2, 1, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_clause 0x1
	buffer_load_u16 v27, v1, s[16:19], 0 offen
	buffer_load_u16 v28, v2, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v1, v34, v76 :: v_dual_add_f32 v32, v63, v77
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v66, v53, v66 :: v_dual_add_f32 v73, v50, v92
	v_dual_add_f32 v72, v54, v87 :: v_dual_add_f32 v75, v44, v90
	v_dual_add_f32 v76, v43, v88 :: v_dual_add_f32 v7, v38, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v63, v32, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v63, 12, v12
	v_or_b32_e32 v12, 14, v12
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v65, s15, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v68, v60, v83 :: v_dual_add_f32 v69, v59, v80
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v80, v55, v97 :: v_dual_and_b32 v11, 0x78, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v66, s2
	v_cndmask_b32_e64 v31, v41, v31, s2
	v_cndmask_b32_e64 v41, v43, v76, s2
	v_cndmask_b32_e64 v43, v44, v75, s2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v44, s14, v63
	v_or_b32_e32 v66, s14, v12
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v63, s0, v63, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s28, s15
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v12, s0, v12, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s14
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v8, v39, v99
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v11, s1, v11, v65
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v65, 1, v66
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_clause 0x1
	buffer_load_u16 v63, v63, s[16:19], 0 offen
	buffer_load_u16 v66, v12, s[16:19], 0 offen
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v77, v61, v94 :: v_dual_add_f32 v78, v62, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v67, s2
	v_cndmask_b32_e64 v60, v60, v68, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v2, v33, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v77, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v70, v48, v81 :: v_dual_add_f32 v71, v47, v79
	v_dual_add_f32 v3, v36, v85 :: v_dual_add_f32 v4, v35, v82
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v74, v49, v89 :: v_dual_add_f32 v79, v56, v100
	v_dual_add_f32 v6, v37, v91 :: v_dual_add_f32 v81, v46, v98
	v_dual_add_f32 v82, v45, v96 :: v_dual_add_f32 v9, v40, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v78, s2
	v_cndmask_b32_e64 v57, v57, v14, s2
	v_cndmask_b32_e64 v54, v54, v72, s2
	v_cndmask_b32_e64 v55, v55, v80, s2
	v_cndmask_b32_e64 v58, v58, v17, s2
	v_cndmask_b32_e64 v59, v59, v69, s2
	v_cndmask_b32_e64 v56, v56, v79, s2
	v_cndmask_b32_e64 v49, v49, v74, s2
	v_cndmask_b32_e64 v50, v50, v73, s2
	v_cndmask_b32_e64 v47, v47, v71, s2
	v_cndmask_b32_e64 v48, v48, v70, s2
	v_cndmask_b32_e64 v45, v45, v82, s2
	v_cndmask_b32_e64 v46, v46, v81, s2
	v_cndmask_b32_e64 v30, v51, v30, s2
	v_cndmask_b32_e64 v29, v52, v29, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v42, v10, s2
	v_cndmask_b32_e64 v9, v40, v9, s2
	v_cndmask_b32_e64 v7, v38, v7, s2
	v_cndmask_b32_e64 v8, v39, v8, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v5.h
	v_mov_b16_e32 v17.h, v5.h
	v_mov_b16_e32 v51.h, v5.h
	v_mov_b16_e32 v52.h, v5.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v37, v6, s2
	v_cndmask_b32_e64 v1, v34, v1, s2
	v_cndmask_b32_e64 v3, v36, v3, s2
	v_cndmask_b32_e64 v4, v35, v4, s2
	v_cndmask_b32_e64 v2, v33, v2, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_lshl_b32 s15, s15, 4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s18
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v12, 16, v15
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v19, 16, v19
	v_lshlrev_b32_e32 v67, 16, v16
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v44, 1, v44
	s_clause 0x1
	buffer_load_u16 v15, v44, s[16:19], 0 offen
	buffer_load_u16 v16, v65, s[16:19], 0 offen
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v44, v12, v67
	v_mul_f32_e32 v65, v13, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v44, v61, v44
	v_dual_mul_f32 v53, v53, v65 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v68, v12, v19
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v19, v13, v19 :: v_dual_lshlrev_b32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v67, v12, v18
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v18, v13, v18 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v65, v12, v20 :: v_dual_lshlrev_b32 v26, 16, v26
	v_mul_f32_e32 v61, v12, v21
	v_dual_mul_f32 v70, v12, v22 :: v_dual_lshlrev_b32 v25, 16, v25
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v32, v32, v67 :: v_dual_mul_f32 v67, 0xbfb8aa3b, v44
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v21, v13, v21
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v13, v20 :: v_dual_lshlrev_b32 v27, 16, v27
	v_mul_f32_e32 v22, v13, v22
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v69, v12, v23 :: v_dual_lshlrev_b32 v28, 16, v28
	v_dual_mul_f32 v23, v13, v23 :: v_dual_mul_f32 v62, v62, v68
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v71, v12, v24 :: v_dual_mul_f32 v18, v57, v18
	v_dual_mul_f32 v24, v13, v24 :: v_dual_mul_f32 v19, v54, v19
	v_mul_f32_e32 v57, v12, v25
	v_dual_mul_f32 v68, v12, v26 :: v_dual_mul_f32 v55, v55, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_mul_f32_e32 v54, 0xbfb8aa3b, v53
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v56, v56, v65 :: v_dual_mul_f32 v23, v41, v23
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v25, v13, v25 :: v_dual_mul_f32 v20, v50, v20
	v_mul_f32_e32 v26, v13, v26
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v21, v49, v21 :: v_dual_mul_f32 v50, v12, v27
	v_dual_mul_f32 v46, v46, v70 :: v_dual_mul_f32 v45, v45, v69
	v_dual_mul_f32 v22, v43, v22 :: v_dual_mul_f32 v41, v64, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v24, v58, v24
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v58, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v57, v59, v57
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v60, v60, v68 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v55
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v49, v12, v28
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v54
	v_dual_mul_f32 v64, 0xbfb8aa3b, v56 :: v_dual_mul_f32 v25, v30, v25
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v48, v48, v50 :: v_dual_mul_f32 v67, 0xbfb8aa3b, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v50, 0xbfb8aa3b, v45 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	v_dual_mul_f32 v30, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v64
	v_cndmask_b32_e64 v59, 0, 0x42800000, s3
	v_mul_f32_e32 v68, 0xbfb8aa3b, v22
	v_exp_f32_e32 v61, v61
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v26, v29, v26 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v53 :: v_dual_fmac_f32 v43, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v64, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v65
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v55
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v68
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v58
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v30
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v29
	v_cndmask_b32_e64 v65, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v50
	v_cndmask_b32_e64 v68, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v56 :: v_dual_fmac_f32 v65, 0xbfb8aa3b, v46
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v61, v61, v69
	v_cndmask_b32_e64 v58, 0, 0x42800000, s0
	v_cndmask_b32_e64 v30, 0, 0x42800000, s4
	v_cndmask_b32_e64 v29, 0, 0x42800000, s5
	v_cndmask_b32_e64 v50, 0, 0x42800000, s7
	v_cndmask_b32_e64 v67, 0, 0x42800000, s9
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v22 :: v_dual_add_f32 v61, 1.0, v61
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v54, v54
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v23
	v_ldexp_f32 v43, v43, v71
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v45
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v61, v61, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v64, v64, v73
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v50, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v73, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s9
	v_ldexp_f32 v54, v54, v70
	v_ldexp_f32 v58, v58, v72
	v_ldexp_f32 v59, v59, v74
	v_ldexp_f32 v30, v30, v75
	v_ldexp_f32 v29, v29, v76
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v65, v65, v77
	v_ldexp_f32 v50, v50, v78
	v_ldexp_f32 v68, v68, v79
	v_ldexp_f32 v67, v67, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v102, -v69, v73, 1.0
	v_div_scale_f32 v70, vcc_lo, v44, v61, v44
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_add_f32 v29, 1.0, v29
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v54, v54, v53
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_add_f32 v65, 1.0, v65
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_add_f32 v67, 1.0, v67
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_fmac_f32 v73, v102, v73
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v43, v43, v62
	v_rcp_f32_e32 v76, v71
	v_div_scale_f32 v77, null, v58, v58, v19
	v_div_scale_f32 v79, null, v64, v64, v56
	v_div_scale_f32 v81, null, v59, v59, v55
	v_div_scale_f32 v85, null, v29, v29, v21
	v_div_scale_f32 v87, null, v65, v65, v46
	v_div_scale_f32 v89, null, v50, v50, v45
	v_div_scale_f32 v93, null, v67, v67, v23
	v_rcp_f32_e32 v95, v74
	v_mul_f32_e32 v115, v70, v73
	v_div_scale_f32 v91, null, v68, v68, v22
	v_div_scale_f32 v83, null, v30, v30, v20
	v_rcp_f32_e32 v96, v77
	v_rcp_f32_e32 v97, v79
	v_rcp_f32_e32 v98, v81
	v_rcp_f32_e32 v100, v85
	v_rcp_f32_e32 v101, v87
	v_rcp_f32_e32 v103, v89
	v_rcp_f32_e32 v105, v91
	v_rcp_f32_e32 v106, v93
	v_rcp_f32_e32 v99, v83
	v_fma_f32 v104, -v71, v76, 1.0
	v_fma_f32 v102, -v74, v95, 1.0
	v_div_scale_f32 v72, s0, v53, v54, v53
	v_div_scale_f32 v75, s1, v62, v43, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v76, v104, v76 :: v_dual_fmac_f32 v95, v102, v95
	v_fma_f32 v104, -v77, v96, 1.0
	v_fma_f32 v107, -v79, v97, 1.0
	v_fma_f32 v108, -v81, v98, 1.0
	v_fma_f32 v110, -v85, v100, 1.0
	v_fma_f32 v111, -v87, v101, 1.0
	v_fma_f32 v112, -v89, v103, 1.0
	v_fma_f32 v113, -v91, v105, 1.0
	v_fma_f32 v114, -v93, v106, 1.0
	v_div_scale_f32 v80, s4, v56, v64, v56
	v_div_scale_f32 v82, s5, v55, v59, v55
	v_div_scale_f32 v88, s8, v46, v65, v46
	v_div_scale_f32 v90, s9, v45, v50, v45
	v_div_scale_f32 v92, s10, v22, v68, v22
	v_div_scale_f32 v94, s11, v23, v67, v23
	v_fma_f32 v109, -v83, v99, 1.0
	v_dual_mul_f32 v102, v72, v76 :: v_dual_fmac_f32 v97, v107, v97
	v_fmac_f32_e32 v96, v104, v96
	v_dual_fmac_f32 v98, v108, v98 :: v_dual_fmac_f32 v101, v111, v101
	v_dual_fmac_f32 v100, v110, v100 :: v_dual_fmac_f32 v103, v112, v103
	v_dual_fmac_f32 v105, v113, v105 :: v_dual_fmac_f32 v106, v114, v106
	v_fma_f32 v104, -v69, v115, v70
	v_dual_mul_f32 v107, v75, v95 :: v_dual_mul_f32 v110, v80, v97
	v_fma_f32 v108, -v71, v102, v72
	v_dual_mul_f32 v111, v82, v98 :: v_dual_mul_f32 v114, v88, v101
	v_dual_mul_f32 v116, v90, v103 :: v_dual_mul_f32 v117, v92, v105
	v_dual_mul_f32 v118, v94, v106 :: v_dual_fmac_f32 v115, v104, v73
	v_fma_f32 v104, -v74, v107, v75
	v_div_scale_f32 v78, s3, v19, v58, v19
	v_fma_f32 v123, -v87, v114, v88
	v_fma_f32 v125, -v91, v117, v92
	v_fmac_f32_e32 v102, v108, v76
	v_fma_f32 v69, -v69, v115, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v107, v104, v95 :: v_dual_fmac_f32 v114, v123, v101
	v_div_scale_f32 v84, s6, v20, v30, v20
	v_fmac_f32_e32 v99, v109, v99
	v_mul_f32_e32 v109, v78, v96
	v_fmac_f32_e32 v117, v125, v105
	v_fma_f32 v70, -v71, v102, v72
	v_div_fmas_f32 v69, v69, v73, v115
	v_fma_f32 v71, -v74, v107, v75
	v_div_scale_f32 v86, s7, v21, v29, v21
	v_mul_f32_e32 v112, v84, v99
	v_fma_f32 v108, -v77, v109, v78
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v119, -v79, v110, v80
	v_div_fixup_f32 v44, v69, v61, v44
	v_div_fmas_f32 v61, v71, v95, v107
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v113, v86, v100 :: v_dual_fmac_f32 v110, v119, v97
	v_fma_f32 v120, -v81, v111, v82
	v_div_fmas_f32 v69, v70, v76, v102
	v_fma_f32 v121, -v83, v112, v84
	v_fmac_f32_e32 v109, v108, v96
	v_fma_f32 v122, -v85, v113, v86
	v_fma_f32 v73, -v79, v110, v80
	v_div_fixup_f32 v53, v69, v54, v53
	v_dual_fmac_f32 v111, v120, v98 :: v_dual_fmac_f32 v112, v121, v99
	v_fma_f32 v72, -v77, v109, v78
	v_fma_f32 v124, -v89, v116, v90
	v_fmac_f32_e32 v113, v122, v100
	s_mov_b32 vcc_lo, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v74, -v81, v111, v82
	v_div_fmas_f32 v70, v72, v96, v109
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v126, -v93, v118, v94
	v_fma_f32 v75, -v83, v112, v84
	v_div_fixup_f32 v43, v61, v43, v62
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v73, v97, v110
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v116, v124, v103
	v_fma_f32 v77, -v85, v113, v86
	v_div_fmas_f32 v54, v74, v98, v111
	s_mov_b32 vcc_lo, s6
	v_dual_fmac_f32 v118, v126, v106 :: v_dual_mul_f32 v41, v41, v43
	v_div_fixup_f32 v19, v70, v58, v19
	v_div_fmas_f32 v43, v75, v99, v112
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v54, v54, v59, v55
	v_div_fmas_f32 v53, v77, v100, v113
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v18.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v43, v30, v20
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v24, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v78, -v87, v114, v88
	v_div_fixup_f32 v21, v53, v29, v21
	v_div_fixup_f32 v44, v44, v64, v56
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v29, v57, v54 :: v_dual_mul_f32 v20, v26, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v19.h
	v_and_b32_e32 v26, 1, v5
	v_mov_b16_e32 v5.l, v32.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v79, -v89, v116, v90
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v21, v25, v21 :: v_dual_and_b32 v14, 1, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v41.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v78, v101, v114
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v60, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s9
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v25, 1, v5
	v_mov_b16_e32 v5.l, v20.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v43, v79, v103, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v18, v18, v26, 0x7fff
	v_mov_b16_e32 v51.l, v21.h
	v_cmp_o_f32_e64 s3, v19, v19
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v14, v19, v14, 0x7fff
	v_and_b32_e32 v19, 1, v5
	v_mov_b16_e32 v5.l, v30.h
	v_mov_b16_e32 v52.l, v29.h
	v_cndmask_b16 v14.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v18, v32, v25, 0x7fff
	v_and_b32_e32 v25, 1, v51
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v32, 1, v5
	v_cmp_o_f32_e64 s6, v20, v20
	v_and_b32_e32 v26, 1, v52
	v_add3_u32 v19, v20, v19, 0x7fff
	v_add3_u32 v20, v21, v25, 0x7fff
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v25, v13, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v30, v30
	v_cmp_o_f32_e64 s7, v21, v21
	v_add3_u32 v21, v30, v32, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v10, v10, v25
	v_mul_f32_e32 v25, v47, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v29, v26, 0x7fff
	v_add3_u32 v17, v41, v17, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v91, v117, v92
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v26.h, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v93, v118, v94
	s_mov_b32 vcc_lo, s10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v105, v117
	s_mov_b32 vcc_lo, s11
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v20, v13, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v26, v26, v106, v118
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v41, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v21, v68, v22
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v66
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v20, v31, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v26, v67, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v23
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v24, v65, v46
	v_div_fixup_f32 v24, v43, v50, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v24, v25, v24 :: v_dual_lshlrev_b32 v25, 16, v63
	v_dual_mul_f32 v10, v10, v21 :: v_dual_mul_f32 v21, v12, v22
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v28, v12, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v10.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v9, v9, v21
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v22, v13, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.h, v5.h
	v_cmp_o_f32_e64 s0, v10, v10
	v_and_b32_e32 v27, 1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v9 :: v_dual_mul_f32 v7, v7, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v20.h
	v_cmp_o_f32_e64 s1, v20, v20
	v_add3_u32 v27, v10, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v10, v48, v23 :: v_dual_and_b32 v21, 1, v21
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v8, v8, v28 :: v_dual_mul_f32 v25, v13, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v22, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v6, v6, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v28.l, v24.h
	v_cndmask_b16 v23.l, 0x7fff, v21.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v28.h, v5.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v26, v21
	v_dual_mul_f32 v26, 0xbfb8aa3b, v6 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v10.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v21, v21, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v29, 1, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v26, v26, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v20, v20, v25
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v25, v27
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, vcc_lo, v9, v21, v9
	v_div_scale_f32 v39, null, v26, v26, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v27, v25, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v37, null, v22, v22, v7
	v_fmac_f32_e32 v25, v32, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v40, v37
	v_mul_f32_e32 v10, v31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v27, v10, v31
	v_fma_f32 v42, -v37, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v10, v35, v25
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s0, v7, v22, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v10, v31
	v_mul_f32_e32 v31, v42, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v27, v25, v10
	v_fma_f32 v27, -v37, v31, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v27, v40
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v27, v13, v15
	v_mul_f32_e32 v13, v13, v16
	v_mul_f32_e32 v16, v12, v16
	v_mul_f32_e32 v12, v12, v15
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v2, v27 :: v_dual_mul_f32 v1, v1, v13
	.loc	1 441 34 is_stmt 1              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v3, v16
	v_mul_f32_e32 v4, v4, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, null, v20, v20, v8
	v_div_scale_f32 v41, s1, v8, v20, v8
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v38, v30
	v_fma_f32 v32, -v30, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v32, v38
	v_rcp_f32_e32 v32, v39
	v_mul_f32_e32 v36, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v30, v36, v41
	v_fma_f32 v35, -v39, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v43, v38
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s3, v6, v26, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v30, v36, v41
	v_mul_f32_e32 v43, v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v38, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v39, v43, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_fmac_f32 v43, v30, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v37, v31, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v39, v43, v35
	v_div_fmas_f32 v30, v30, v40, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v31, v33, v32, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v7, v30, v22, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v31, v26, v6
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v10, v21, v9
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v28, 1, v28
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v6
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v25, v20, v8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v8.h, v5.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v2.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v24, v28, 0x7fff
	v_and_b32_e32 v6, 1, v5
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v7, 1, v8
	v_mov_b16_e32 v8.l, v4.h
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v2, v7, 0x7fff
	v_and_b32_e32 v7, 1, v8
	v_cmp_o_f32_e64 s2, v4, v4
	v_and_b32_e32 v5, 1, v5
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v7, 0x7fff
	v_mov_b32_e32 v7, 0x7632
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v3, v3
	v_cndmask_b16 v6.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e64 v4, 0x3276, v7, s0
	v_cndmask_b32_e64 v8, v17, v29, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	v_cndmask_b32_e64 v5, v6, v19, s0
	v_cndmask_b32_e64 v6, v19, v6, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v14, v23, s0
	v_cndmask_b32_e64 v9, v1, v18, s0
	v_cndmask_b32_e64 v1, v18, v1, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v2, 0x760076, v2
	v_cndmask_b32_e64 v3, v23, v14, s0
	v_cndmask_b32_e64 v7, v29, v17, s0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v0
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v3, v10
	v_and_b32_e32 v12, 0x7060706, v2
	v_perm_b32 v2, v6, v5, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v1, v4, v3, v12
	v_perm_b32 v3, v6, v5, v12
	v_perm_b32 v4, v8, v7, v10
	v_perm_b32 v5, v8, v7, v12
	v_lshlrev_b32_e32 v8, 1, v11
	v_perm_b32 v6, v13, v9, v10
	v_perm_b32 v7, v13, v9, v12
	v_add_lshl_u32 v9, v11, s15, 1
	s_mov_b32 s15, s19
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 179
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13260
; TotalNumSgprs: 39
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 39
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
