	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 0xf8, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v5, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v26, 6, v0
	v_and_b32_e32 v30, 8, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v4, 2, v4
	v_lshlrev_b32_e32 v2, 3, v5
	v_and_b32_e32 v31, 32, v0
	v_lshlrev_b32_e32 v32, 6, v5
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s18, 31
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	s_sub_i32 s6, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s9, s6, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s6, s6, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s5, s8, s9
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s6
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s10, s5, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s2
	s_abs_i32 s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s7, s5, 0x4f7ffffe
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s5, s[0:1], 0x38
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[6:7], null, s19, v4, v[1:2]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s7
	s_mul_hi_u32 s4, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s4
	s_mul_hi_u32 s4, s6, s7
	s_xor_b32 s7, s2, s10
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s16, s6, s8
	s_cmp_ge_u32 s6, s8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v8, s5, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s6, s16, s6
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s6, s8
	s_mov_b64 s[20:21], s[14:15]
	s_cselect_b32 s4, s11, s4
	s_mov_b32 s15, 0x31027000
	s_xor_b32 s8, s4, s7
	s_mov_b32 s14, 0x7ffffffe
	s_sub_i32 s4, s8, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s14
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s4, s10
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s6
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s6, s3, 6
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s9, s5, 63
.Ltmp13:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s19, s6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s28, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v6, s18, s2, v6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v7, v8, v2, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s9, 63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s19, v6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s6, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s9, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v9, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v16, 0x80000000, v8, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v6, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s29, s19, 6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v7, s6, 64, v7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s29, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[8:11], v8, s[20:23], 0 offen
	buffer_load_b128 v[12:15], v12, s[20:23], 0 offen
	s_mov_b32 s10, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s9, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s19, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x1
	buffer_load_b128 v[18:21], v6, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v17, s[20:23], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_clause 0x1
	buffer_load_b64 v[44:45], v16, s[12:15], 0 offen
	buffer_load_b64 v[46:47], v7, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v6, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v7, 3, v0
	v_and_b32_e32 v16, 48, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v17, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x420, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v33, v7, v16
	v_lshlrev_b32_e32 v7, 3, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v27, v6, v4
	v_lshlrev_b32_e32 v6, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v48, 0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v34, v26, 10, v27
	v_xor_b32_e32 v35, 0x90, v34
	v_xor_b32_e32 v36, 0x120, v34
	v_xor_b32_e32 v37, 0x1b0, v34
	v_xor_b32_e32 v38, 0x210, v34
	v_xor_b32_e32 v39, 0x330, v34
	v_xor_b32_e32 v40, 0x3a0, v34
	v_add_nc_u32_e32 v49, 0, v34
	v_add_nc_u32_e32 v50, 0, v35
	v_add_nc_u32_e32 v51, 0, v36
	v_add_nc_u32_e32 v52, 0, v37
	v_add_nc_u32_e32 v53, 0, v38
	v_add_nc_u32_e32 v54, 0, v39
	v_add_nc_u32_e32 v55, 0, v40
	s_waitcnt vmcnt(4)
	v_perm_b32 v16, v12, v8, 0x5010400
	v_perm_b32 v12, v12, v8, 0x7030602
	v_perm_b32 v26, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v27, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v28, v15, v11, 0x5010400
	v_perm_b32 v29, v15, v11, 0x7030602
	v_lshrrev_b32_e32 v43, 8, v12
	v_lshrrev_b32_e32 v56, 24, v12
	v_lshrrev_b32_e32 v41, 8, v16
	v_lshrrev_b32_e32 v57, 8, v26
	v_lshrrev_b32_e32 v58, 24, v26
	v_lshrrev_b32_e32 v42, 24, v16
	v_lshrrev_b32_e32 v59, 8, v13
	v_lshrrev_b32_e32 v60, 24, v13
	v_lshrrev_b32_e32 v61, 8, v27
	v_lshrrev_b32_e32 v62, 24, v27
	v_lshrrev_b32_e32 v63, 8, v14
	v_lshrrev_b32_e32 v64, 24, v14
	v_lshrrev_b32_e32 v65, 8, v28
	v_lshrrev_b32_e32 v66, 24, v28
	v_lshrrev_b32_e32 v67, 8, v29
	v_lshrrev_b32_e32 v68, 24, v29
	v_and_b16 v9.l, 0xff, v12.l
	v_and_b16 v9.h, 0xff, v12.h
	v_and_b16 v10.l, 0xff, v26.l
	v_and_b16 v10.h, 0xff, v26.h
	v_lshlrev_b16 v26.l, 8, v43.l
	v_lshlrev_b16 v26.h, 8, v56.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v56, v22, v18, 0x5010400
	v_and_b16 v8.l, 0xff, v16.l
	v_and_b16 v12.l, 0xff, v27.l
	v_and_b16 v12.h, 0xff, v27.h
	v_lshlrev_b16 v16.l, 8, v41.l
	v_lshlrev_b16 v27.l, 8, v57.l
	v_lshlrev_b16 v27.h, 8, v58.l
	v_and_b16 v8.h, 0xff, v16.h
	v_and_b16 v11.l, 0xff, v13.l
	v_and_b16 v11.h, 0xff, v13.h
	v_and_b16 v13.l, 0xff, v14.l
	v_and_b16 v13.h, 0xff, v14.h
	v_and_b16 v14.l, 0xff, v28.l
	v_and_b16 v14.h, 0xff, v28.h
	v_lshlrev_b16 v16.h, 8, v42.l
	v_lshlrev_b16 v28.l, 8, v59.l
	v_lshlrev_b16 v28.h, 8, v60.l
	v_perm_b32 v22, v22, v18, 0x7030602
	v_and_b16 v15.l, 0xff, v29.l
	v_and_b16 v15.h, 0xff, v29.h
	v_lshlrev_b16 v29.l, 8, v61.l
	v_lshlrev_b16 v29.h, 8, v62.l
	v_lshlrev_b16 v41.l, 8, v63.l
	v_lshlrev_b16 v41.h, 8, v64.l
	v_lshlrev_b16 v42.l, 8, v65.l
	v_lshlrev_b16 v42.h, 8, v66.l
	v_lshlrev_b16 v43.l, 8, v67.l
	v_lshlrev_b16 v43.h, 8, v68.l
	v_perm_b32 v57, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v58, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v59, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_or_b16 v9.l, v9.l, v26.l
	v_or_b16 v9.h, v9.h, v26.h
	v_lshrrev_b32_e32 v26, 8, v56
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v10.l, v10.l, v27.l
	v_or_b16 v10.h, v10.h, v27.h
	v_lshrrev_b32_e32 v27, 24, v56
	v_or_b16 v8.h, v8.h, v16.h
	v_or_b16 v11.l, v11.l, v28.l
	v_or_b16 v11.h, v11.h, v28.h
	v_lshrrev_b32_e32 v28, 8, v22
	v_or_b16 v12.l, v12.l, v29.l
	v_or_b16 v12.h, v12.h, v29.h
	v_lshrrev_b32_e32 v29, 24, v22
	v_or_b16 v13.l, v13.l, v41.l
	v_or_b16 v13.h, v13.h, v41.h
	v_or_b16 v14.l, v14.l, v42.l
	v_or_b16 v14.h, v14.h, v42.h
	v_or_b16 v15.l, v15.l, v43.l
	v_or_b16 v15.h, v15.h, v43.h
	v_and_b16 v16.l, 0xff, v56.l
	v_and_b16 v16.h, 0xff, v56.h
	v_and_b16 v19.l, 0xff, v57.l
	v_lshrrev_b32_e32 v41, 8, v57
	v_lshrrev_b32_e32 v42, 24, v57
	v_and_b16 v19.h, 0xff, v57.h
	v_and_b16 v20.l, 0xff, v23.l
	v_lshrrev_b32_e32 v43, 8, v23
	v_lshrrev_b32_e32 v56, 24, v23
	v_and_b16 v20.h, 0xff, v23.h
	v_and_b16 v21.l, 0xff, v58.l
	v_lshrrev_b32_e32 v57, 8, v58
	v_lshrrev_b32_e32 v60, 24, v58
	v_and_b16 v21.h, 0xff, v58.h
	v_lshrrev_b32_e32 v58, 8, v24
	v_lshrrev_b32_e32 v61, 24, v24
	v_and_b16 v23.l, 0xff, v59.l
	v_lshrrev_b32_e32 v62, 8, v59
	v_lshrrev_b32_e32 v63, 24, v59
	v_and_b16 v23.h, 0xff, v59.h
	v_lshrrev_b32_e32 v59, 8, v25
	v_lshrrev_b32_e32 v64, 24, v25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v48, v[44:45] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v49, v8
	ds_store_b16_d16_hi v49, v8 offset:64
	ds_store_b16 v50, v9
	ds_store_b16_d16_hi v50, v9 offset:64
	ds_store_b16 v51, v10
	ds_store_b16_d16_hi v51, v10 offset:64
	ds_store_b16 v52, v11
	ds_store_b16_d16_hi v52, v11 offset:64
	ds_store_b16 v53, v12
	ds_store_b16_d16_hi v53, v12 offset:64
	ds_store_b16 v49, v13 offset:640
	ds_store_b16_d16_hi v49, v13 offset:704
	ds_store_b16 v54, v14
	ds_store_b16_d16_hi v54, v14 offset:64
	ds_store_b16 v55, v15
	ds_store_b16_d16_hi v55, v15 offset:64
	v_lshlrev_b16 v8.l, 8, v26.l
	v_lshlrev_b16 v8.h, 8, v27.l
	v_and_b16 v18.l, 0xff, v22.l
	v_lshlrev_b16 v9.l, 8, v28.l
	v_and_b16 v18.h, 0xff, v22.h
	v_lshlrev_b16 v9.h, 8, v29.l
	v_and_b16 v22.l, 0xff, v24.l
	v_and_b16 v22.h, 0xff, v24.h
	v_and_b16 v24.l, 0xff, v25.l
	v_and_b16 v24.h, 0xff, v25.h
	v_lshlrev_b16 v10.l, 8, v41.l
	v_lshlrev_b16 v10.h, 8, v42.l
	v_lshlrev_b16 v11.l, 8, v43.l
	v_lshlrev_b16 v11.h, 8, v56.l
	v_lshlrev_b16 v12.l, 8, v57.l
	v_lshlrev_b16 v12.h, 8, v60.l
	v_lshlrev_b16 v13.l, 8, v58.l
	v_lshlrev_b16 v13.h, 8, v61.l
	v_lshlrev_b16 v14.l, 8, v62.l
	v_lshlrev_b16 v14.h, 8, v63.l
	v_lshlrev_b16 v15.l, 8, v59.l
	v_lshlrev_b16 v15.h, 8, v64.l
	v_or_b16 v8.l, v16.l, v8.l
	v_or_b16 v8.h, v16.h, v8.h
	v_or_b16 v9.l, v18.l, v9.l
	v_or_b16 v9.h, v18.h, v9.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.l, v19.l, v10.l
	v_or_b16 v10.h, v19.h, v10.h
	v_or_b16 v11.l, v20.l, v11.l
	v_or_b16 v11.h, v20.h, v11.h
	v_or_b16 v12.l, v21.l, v12.l
	v_or_b16 v12.h, v21.h, v12.h
	v_or_b16 v13.l, v22.l, v13.l
	v_or_b16 v13.h, v22.h, v13.h
	v_or_b16 v14.l, v23.l, v14.l
	v_or_b16 v14.h, v23.h, v14.h
	v_or_b16 v15.l, v24.l, v15.l
	v_or_b16 v15.h, v24.h, v15.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v48, v[46:47] offset:18432
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v49, v8 offset:8192
	ds_store_b16_d16_hi v49, v8 offset:8256
	ds_store_b16 v50, v9 offset:8192
	ds_store_b16_d16_hi v50, v9 offset:8256
	ds_store_b16 v51, v10 offset:8192
	ds_store_b16_d16_hi v51, v10 offset:8256
	ds_store_b16 v52, v11 offset:8192
	ds_store_b16_d16_hi v52, v11 offset:8256
	ds_store_b16 v53, v12 offset:8192
	ds_store_b16_d16_hi v53, v12 offset:8256
	ds_store_b16 v49, v13 offset:8832
	ds_store_b16_d16_hi v49, v13 offset:8896
	ds_store_b16 v54, v14 offset:8192
	ds_store_b16_d16_hi v54, v14 offset:8256
	ds_store_b16 v55, v15 offset:8192
	ds_store_b16_d16_hi v55, v15 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v26, v17, 6, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v5, 6, v5
	v_and_b32_e32 v8, 8, v0
	v_and_b32_e32 v42, 32, v0
	v_and_or_b32 v41, 0x1800, v6, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v27, 16, v26
	v_xor_b32_e32 v29, 32, v26
	v_xor_b32_e32 v28, 48, v26
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr41
.LBB0_3:                                ; %Flow49
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 5, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s9, 6
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s1, s8, 7
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v4, s6, v4
	v_bfe_i32 v8, v0, 3, 1
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v5, 0x420, v5
	v_and_or_b32 v41, 0x1800, v6, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v6, 0x81, v4
	v_add_nc_u32_e32 v4, 0x80, v4
	v_and_or_b32 v5, 0x210, v8, v5
	v_lshl_or_b32 v26, v17, 6, v7
	v_add_nc_u32_e32 v3, s28, v3
	v_mul_lo_u32 v6, s19, v6
	v_mul_lo_u32 v7, s19, v4
	v_xor_b32_e32 v5, v5, v41
	v_xor_b32_e32 v27, 16, v26
	v_mad_u64_u32 v[3:4], null, s5, v3, s[6:7]
	s_mov_b32 s5, s4
	v_or_b32_e32 v42, v5, v32
	v_add3_u32 v4, v6, s1, v1
	v_add3_u32 v1, v7, s1, v1
	s_lshl_b32 s1, s7, 7
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_subrev_nc_u32_e32 v46, s1, v4
	v_subrev_nc_u32_e32 v47, s1, v1
	v_add3_u32 v48, v3, v2, 0x80
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v29, 32, v26
	v_xor_b32_e32 v28, 48, v26
	v_xor_b32_e32 v43, 16, v42
	v_xor_b32_e32 v44, 32, v42
	v_xor_b32_e32 v45, 48, v42
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v25, 0
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_add_i32 s31, s0, -2
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s30, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[117:118], v48, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[65:68], v47, s[20:23], 0 offen
	buffer_load_b128 v[69:72], v46, s[20:23], 0 offen
	s_mov_b32 s6, s0
	s_mov_b32 s0, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v49, s6, v26
	v_add_nc_u32_e32 v50, s6, v27
	s_mov_b32 s1, s4
	v_add_nc_u32_e32 v51, s6, v29
	v_add_nc_u32_e32 v52, s6, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v53, s1, v42
	v_add_nc_u32_e32 v54, s1, v43
	v_add_nc_u32_e32 v55, s1, v44
	v_add_nc_u32_e32 v56, s1, v45
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[57:60], v49
	ds_load_b128 v[73:76], v49 offset:1024
	ds_load_b128 v[77:80], v50
	ds_load_b128 v[81:84], v50 offset:1024
	ds_load_b128 v[85:88], v51
	ds_load_b128 v[89:92], v51 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[93:96], v53
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[97:100], v52
	ds_load_b128 v[101:104], v52 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[105:108], v54
	ds_load_b128 v[109:112], v55
	ds_load_b128 v[113:116], v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s5, s5, 1
	s_mov_b32 s4, s30
	s_cmp_lt_i32 s5, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s5, 0
	s_add_i32 s31, s31, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s5, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s6, s5, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s7, s1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s30, s6, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s7, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s31, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v124, s30, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v125, s30, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[105:108], v[77:80], v[49:56] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v126, s30, v40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[81:84], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[109:112], v[85:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[89:92], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[113:116], v[97:100], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[101:104], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v48, 64, v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v23, v52 :: v_dual_add_nc_u32 v46, s29, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v10, v58 :: v_dual_add_nc_u32 v119, s7, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v22, v53 :: v_dual_add_f32 v21, v21, v54
	v_dual_add_f32 v20, v20, v55 :: v_dual_add_f32 v19, v19, v56
	v_add_f32_e32 v9, v9, v57
	v_dual_add_f32 v15, v15, v59 :: v_dual_add_f32 v16, v16, v60
	v_dual_add_f32 v11, v11, v61 :: v_dual_add_nc_u32 v120, s30, v34
	v_dual_add_f32 v12, v12, v62 :: v_dual_add_nc_u32 v121, s30, v35
	v_dual_add_f32 v18, v18, v49 :: v_dual_add_nc_u32 v47, s29, v47
	v_dual_add_f32 v13, v13, v63 :: v_dual_add_nc_u32 v122, s30, v36
	v_dual_add_f32 v14, v14, v64 :: v_dual_add_nc_u32 v123, s30, v37
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v119, v[117:118] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v50, v69, v65, 0x5010400
	v_perm_b32 v51, v69, v65, 0x7030602
	v_perm_b32 v52, v70, v66, 0x5010400
	v_perm_b32 v53, v70, v66, 0x7030602
	v_perm_b32 v54, v71, v67, 0x5010400
	v_perm_b32 v55, v71, v67, 0x7030602
	v_perm_b32 v56, v72, v68, 0x5010400
	v_perm_b32 v57, v72, v68, 0x7030602
	v_lshrrev_b32_e32 v58, 8, v50
	v_lshrrev_b32_e32 v59, 24, v50
	v_lshrrev_b32_e32 v60, 8, v51
	v_lshrrev_b32_e32 v61, 24, v51
	v_lshrrev_b32_e32 v62, 8, v52
	v_and_b16 v49.l, 0xff, v50.l
	v_and_b16 v50.l, 0xff, v51.l
	v_and_b16 v51.l, 0xff, v52.l
	v_lshrrev_b32_e32 v63, 24, v52
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v64, 8, v53
	v_lshrrev_b32_e32 v65, 24, v53
	v_and_b16 v53.l, 0xff, v54.l
	v_lshrrev_b32_e32 v66, 8, v54
	v_lshrrev_b32_e32 v67, 24, v54
	v_and_b16 v54.l, 0xff, v55.l
	v_lshrrev_b32_e32 v68, 8, v55
	v_lshrrev_b32_e32 v69, 24, v55
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v70, 8, v56
	v_lshrrev_b32_e32 v71, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v72, 8, v57
	v_lshrrev_b32_e32 v73, 24, v57
	v_lshlrev_b16 v57.l, 8, v58.l
	v_and_b16 v49.h, 0xff, v50.h
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_lshlrev_b16 v57.h, 8, v59.l
	v_lshlrev_b16 v58.l, 8, v60.l
	v_lshlrev_b16 v58.h, 8, v61.l
	v_lshlrev_b16 v59.l, 8, v62.l
	v_lshlrev_b16 v59.h, 8, v63.l
	v_lshlrev_b16 v60.l, 8, v64.l
	v_lshlrev_b16 v60.h, 8, v65.l
	v_lshlrev_b16 v61.l, 8, v66.l
	v_lshlrev_b16 v61.h, 8, v67.l
	v_lshlrev_b16 v62.l, 8, v68.l
	v_lshlrev_b16 v62.h, 8, v69.l
	v_lshlrev_b16 v63.l, 8, v70.l
	v_lshlrev_b16 v63.h, 8, v71.l
	v_lshlrev_b16 v64.l, 8, v72.l
	v_lshlrev_b16 v64.h, 8, v73.l
	v_or_b16 v49.l, v49.l, v57.l
	v_or_b16 v49.h, v49.h, v57.h
	v_or_b16 v50.l, v50.l, v58.l
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_or_b16 v52.l, v52.l, v60.l
	v_or_b16 v52.h, v52.h, v60.h
	v_or_b16 v53.l, v53.l, v61.l
	v_or_b16 v53.h, v53.h, v61.h
	v_or_b16 v54.l, v54.l, v62.l
	v_or_b16 v54.h, v54.h, v62.h
	v_or_b16 v55.l, v55.l, v63.l
	v_or_b16 v55.h, v55.h, v63.h
	v_or_b16 v56.l, v56.l, v64.l
	v_or_b16 v56.h, v56.h, v64.h
	ds_store_b16 v120, v49
	ds_store_b16_d16_hi v120, v49 offset:64
	ds_store_b16 v121, v50
	ds_store_b16_d16_hi v121, v50 offset:64
	ds_store_b16 v122, v51
	ds_store_b16_d16_hi v122, v51 offset:64
	ds_store_b16 v123, v52
	ds_store_b16_d16_hi v123, v52 offset:64
	ds_store_b16 v124, v53
	ds_store_b16_d16_hi v124, v53 offset:64
	ds_store_b16 v120, v54 offset:640
	ds_store_b16_d16_hi v120, v54 offset:704
	ds_store_b16 v125, v55
	ds_store_b16_d16_hi v125, v55 offset:64
	ds_store_b16 v126, v56
	ds_store_b16_d16_hi v126, v56 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v32 :: v_dual_mov_b32 v8, v30
	v_mov_b32_e32 v42, v31
	s_mov_b32 s10, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v9, 0
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s30, 0, 0x2000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v18, v9
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v5
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v3, 32, v1
	v_xor_b32_e32 v4, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v5, s10, v2
	v_add_nc_u32_e32 v30, s10, v1
	v_add_nc_u32_e32 v31, s10, v4
	v_add_nc_u32_e32 v32, s10, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s10, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v33, s0, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[46:49], v30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v30, s0, v29
	v_add_nc_u32_e32 v34, s0, v27
	ds_load_b128 v[50:53], v33 offset:1024
	ds_load_b128 v[54:57], v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[58:61], v31
	ds_load_b128 v[62:65], v32
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[66:69], v30
	ds_load_b128 v[70:73], v34 offset:1024
	ds_load_b128 v[74:77], v34
	v_add_nc_u32_e32 v38, s0, v28
	ds_load_b128 v[78:81], v30 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v37, s11 :: v_dual_mov_b32 v36, s10
	v_dual_mov_b32 v35, s9 :: v_dual_mov_b32 v34, s8
	v_dual_mov_b32 v33, s7 :: v_dual_mov_b32 v32, s6
	v_dual_mov_b32 v31, s5 :: v_dual_mov_b32 v30, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[82:85], v38
	ds_load_b128 v[86:89], v38 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[54:57], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[46:49], v[50:53], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[5:8], v[74:77], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[5:8], v[70:73], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[62:65], v[66:69], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[62:65], v[78:81], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[82:85], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[58:61], v[86:89], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v39
	v_cvt_f32_i32_e32 v6, v40
	v_cvt_f32_i32_e32 v7, v41
	v_cvt_f32_i32_e32 v8, v42
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v40, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v5 :: v_dual_add_f32 v24, v24, v6
	v_add_f32_e32 v23, v23, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v30
	v_cvt_f32_i32_e32 v6, v33
	v_cvt_f32_i32_e32 v7, v32
	v_cvt_f32_i32_e32 v41, v45
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v22, v22, v8
	v_dual_add_f32 v20, v20, v40 :: v_dual_add_f32 v9, v9, v5
	v_dual_add_f32 v16, v16, v6 :: v_dual_add_f32 v15, v15, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v35
	v_cvt_f32_i32_e32 v6, v34
	v_cvt_f32_i32_e32 v7, v37
	v_cvt_f32_i32_e32 v8, v36
	v_cvt_f32_i32_e32 v30, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v21, v21, v39
	v_dual_add_f32 v19, v19, v41 :: v_dual_add_f32 v10, v10, v31
	v_dual_add_f32 v11, v11, v6 :: v_dual_add_f32 v12, v12, v5
	v_dual_add_f32 v13, v13, v8 :: v_dual_add_f32 v14, v14, v7
	v_add_f32_e32 v18, v18, v30
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v30, s30, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v31, s30, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s11 :: v_dual_add_nc_u32 v4, s30, v4
	v_dual_mov_b32 v38, s6 :: v_dual_add_nc_u32 v29, s1, v29
	v_dual_mov_b32 v41, s9 :: v_dual_mov_b32 v40, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[44:47], v30
	ds_load_b128 v[48:51], v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v39, s7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[52:55], v26 offset:1024
	ds_load_b128 v[56:59], v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v36, s4 :: v_dual_add_nc_u32 v27, s1, v27
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[60:63], v29
	ds_load_b128 v[64:67], v27 offset:1024
	ds_load_b128 v[68:71], v27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v42, s10 :: v_dual_add_nc_u32 v5, s30, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v4
	ds_load_b128 v[5:8], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v37, s5 :: v_dual_add_nc_u32 v26, s1, v28
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[72:75], v29 offset:1024
	ds_load_b128 v[76:79], v26
	ds_load_b128 v[80:83], v26 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[48:51], v[56:59], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[48:51], v[52:55], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[44:47], v[68:71], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[64:67], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[5:8], v[60:63], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[5:8], v[72:75], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[1:4], v[76:79], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[1:4], v[80:83], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v7, v28
	v_cvt_f32_i32_e32 v8, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v37, v41
	v_cvt_f32_i32_e32 v40, v42
	v_cvt_f32_i32_e32 v41, v43
.LBB0_12:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s28, v17
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s21, s25, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v24, v7 :: v_dual_and_b32 v4, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v5, v18, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v3, v3, v4, s18
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s20, s24
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v4, 32, v2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, s19, v17
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v25, v6 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s20, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v18, v5, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_or_b32_e32 v27, 4, v3
	v_or_b32_e32 v29, 12, v3
	v_or_b32_e32 v28, 8, v3
	v_or_b32_e32 v43, 20, v3
	v_or_b32_e32 v42, 16, v3
	s_clause 0x1
	buffer_load_u16 v26, v3, s[20:23], 0 offen
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	v_or_b32_e32 v44, 24, v3
	v_or_b32_e32 v3, 28, v3
	s_clause 0x5
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s28, s19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v23, v8 :: v_dual_add_f32 v31, v21, v31
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v22, v30 :: v_dual_add_f32 v33, v19, v33
	v_dual_add_f32 v32, v20, v32 :: v_dual_add_f32 v35, v10, v35
	v_dual_add_f32 v34, v9, v34 :: v_dual_add_f32 v39, v16, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v46, 0x5410
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v25, v6, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_lshl_b32 s0, s19, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v22, v30, s2
	v_cndmask_b32_e64 v21, v21, v31, s2
	v_cndmask_b32_e64 v20, v20, v32, s2
	v_cndmask_b32_e64 v9, v9, v34, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v11, v36 :: v_dual_add_f32 v41, v14, v41
	v_dual_add_f32 v40, v13, v40 :: v_dual_mov_b32 v47, 0x7632
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v11, v11, v36, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v38, v15, v38 :: v_dual_add_f32 v37, v12, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v40, s2
	v_cndmask_b32_e64 v19, v19, v33, s2
	v_cndmask_b32_e64 v16, v16, v39, s2
	v_cndmask_b32_e64 v8, v23, v8, s2
	v_cndmask_b32_e64 v12, v12, v37, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v24, v7, s2
	v_cndmask_b32_e64 v15, v15, v38, s2
	v_cndmask_b32_e64 v14, v14, v41, s2
	s_mov_b32 s15, 0x76543210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v45.h
	v_mov_b16_e32 v23.h, v45.h
	v_mov_b16_e32 v24.h, v45.h
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v25, 16, v26
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 0x78, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v32, 16, v42
	v_lshlrev_b32_e32 v31, 16, v43
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v1, s1, v1, v17
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.h, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v26, 1, v1
	v_add_lshl_u32 v30, v1, s0, 1
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v1, 16, v27
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v27, v25, v2
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v5, v27
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v25, v4, v25
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v44
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v9, v25
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v35, v32, v2
	v_mul_f32_e32 v32, v4, v32
	v_dual_mul_f32 v36, v31, v2 :: v_dual_lshlrev_b32 v29, 16, v29
	v_dual_mul_f32 v34, v1, v2 :: v_dual_mul_f32 v1, v4, v1
	v_mul_f32_e32 v25, v28, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v28, v4, v28 :: v_dual_mul_f32 v27, v29, v2
	v_dual_mul_f32 v29, v4, v29 :: v_dual_mul_f32 v6, v6, v34
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v9.h
	v_cmp_o_f32_e64 s0, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v16, v16, v29 :: v_dual_mul_f32 v37, v33, v2
	v_mul_f32_e32 v8, v8, v27
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v2, v3, v2 :: v_dual_mul_f32 v31, v4, v31
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v15, v15, v28 :: v_dual_mul_f32 v20, v20, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v19, v2 :: v_dual_mul_f32 v1, v10, v1
	v_mul_f32_e32 v12, v12, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v10, v5, 16, 1
	v_bfe_u32 v19, v8, 16, 1
	v_bfe_u32 v28, v20, 16, 1
	v_mov_b16_e32 v22.l, v1.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v3, v4, v3
	v_mul_f32_e32 v4, v4, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v5, v10, 0x7fff
	v_bfe_u32 v10, v6, 16, 1
	v_bfe_u32 v29, v2, 16, 1
	v_cmp_o_f32_e64 s4, v8, v8
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v4, v13, v4 :: v_dual_mul_f32 v7, v7, v25
	v_mul_f32_e32 v18, v18, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v6, v10, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v3, v14, v3 :: v_dual_and_b32 v10, 1, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_mov_b16_e32 v23.l, v15.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v21, v21, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s12, v2, v2
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v7, v7, v14, 0x7fff
	v_add3_u32 v8, v8, v19, 0x7fff
	v_add3_u32 v20, v20, v28, 0x7fff
	v_add3_u32 v2, v2, v29, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v45
	v_mov_b16_e32 v45.l, v16.h
	v_bfe_u32 v25, v18, 16, 1
	v_and_b32_e32 v14, 1, v23
	v_bfe_u32 v27, v21, 16, 1
	v_add3_u32 v9, v9, v13, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s4
	v_cndmask_b16 v2.l, 0x7fff, v20.h, s11
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s12
	v_and_b32_e32 v13, 1, v45
	v_mov_b16_e32 v45.l, v12.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v11, v11, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v1, v1
	v_cmp_o_f32_e64 s6, v15, v15
	v_cmp_o_f32_e64 s7, v18, v18
	v_cmp_o_f32_e64 s8, v21, v21
	v_add3_u32 v18, v18, v25, 0x7fff
	v_add3_u32 v19, v21, v27, 0x7fff
	v_add3_u32 v1, v1, v10, 0x7fff
	v_add3_u32 v7, v15, v14, 0x7fff
	v_and_b32_e32 v10, 1, v45
	v_mov_b16_e32 v24.l, v11.h
	v_cmp_o_f32_e64 s9, v12, v12
	v_cndmask_b16 v1.l, 0x7fff, v9.h, s0
	v_cndmask_b16 v9.l, 0x7fff, v18.h, s7
	v_cndmask_b16 v9.h, 0x7fff, v19.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s6
	v_add3_u32 v7, v12, v10, 0x7fff
	v_cndmask_b32_e32 v12, 0x3276, v47, vcc_lo
	v_cmp_o_f32_e64 s5, v16, v16
	v_mov_b16_e32 v17.l, v4.h
	v_dual_cndmask_b32 v10, v9, v5 :: v_dual_and_b32 v21, 1, v24
	v_cndmask_b32_e32 v5, v5, v9, vcc_lo
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b32_e32 v9, v2, v6, vcc_lo
	v_cndmask_b32_e32 v2, v6, v2, vcc_lo
	v_add3_u32 v8, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s10, v11, v11
	v_cmp_o_f32_e64 s14, v4, v4
	v_add3_u32 v11, v11, v21, 0x7fff
	v_mov_b16_e32 v45.l, v3.h
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s5
	v_and_b32_e32 v17, 1, v17
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 1, v45
	v_cmp_o_f32_e64 s13, v3, v3
	v_add3_u32 v4, v4, v17, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v11.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v3, v8, 0x7fff
	v_and_b32_e32 v8, 0x760076, v12
	v_cndmask_b16 v7.l, 0x7fff, v4.h, s14
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s9
	v_cndmask_b32_e32 v11, 0x1054, v46, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v3.h, s13
	v_lshl_or_b32 v3, v8, 4, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v11, v11, 8, v11
	v_and_b32_e32 v12, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 0x540054, v11
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s15, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v6, 4, v6
	v_dual_cndmask_b32 v6, v4, v1 :: v_dual_cndmask_b32 v1, v1, v4
	v_dual_cndmask_b32 v4, v0, v7 :: v_dual_cndmask_b32 v7, v7, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 0x5040504, v2
	v_perm_b32 v3, v11, v9, v12
	v_permlanex16_b32 v13, v1, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v14, v4, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v5, v10, v12
	v_perm_b32 v0, v5, v10, v8
	v_perm_b32 v2, v11, v9, v8
	v_perm_b32 v4, v13, v6, v8
	v_perm_b32 v5, v13, v6, v12
	v_perm_b32 v6, v14, v7, v8
	v_perm_b32 v7, v14, v7, v12
	s_clause 0x1
	buffer_store_b128 v[0:3], v26, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v30, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 32
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 127
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6748
; TotalNumSgprs: 34
; NumVgprs: 127
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     127
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
