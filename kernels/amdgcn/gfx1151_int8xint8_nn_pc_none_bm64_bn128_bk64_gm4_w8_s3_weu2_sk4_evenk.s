	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v9, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v36, 6, v0
	v_and_b32_e32 v48, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 62, v2
	v_and_b32_e32 v49, 32, v0
	v_and_b32_e32 v3, 48, v9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
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
	v_lshlrev_b32_e32 v1, 4, v4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s7, s5, 0x4f7ffffe
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s5, s[0:1], 0x38
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[6:7], null, s29, v5, v[1:2]
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
	v_mul_lo_u32 v8, s5, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s6, s16, s6
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s6, s8
	s_mov_b64 s[24:25], s[14:15]
	s_cselect_b32 s4, s11, s4
	s_mov_b32 s15, 0x31027000
	s_xor_b32 s8, s4, s7
	s_mov_b32 s14, 0x7ffffffe
	s_sub_i32 s4, s8, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
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
	s_add_i32 s9, s5, 0xff
.Ltmp13:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s19, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v6, s18, s2, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s9, 0xff
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v7, v8, v3, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s29, v6
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s9, 0x1ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v6, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s28, s29, 8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s28, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v11, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v10, s[24:27], 0 offen
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s6, v7
	v_add3_u32 v7, 0x100, s6, v7
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v11, 15, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s29, v6
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_mov_b32 s4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	s_clause 0x1
	buffer_load_b128 v[20:23], v6, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v10, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x1
	buffer_load_b128 v[28:31], v8, s[12:15], 0 offen
	buffer_load_b128 v[32:35], v7, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v6, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 1, v0
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s9, 0x2ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x420, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 48, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v6, v6, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v50, v9, v7
	v_lshlrev_b32_e32 v7, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v51, v36, 10, v6
	v_lshlrev_b32_e32 v6, 3, v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v44, 0, v50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v52, 0x90, v51
	v_xor_b32_e32 v53, 0x120, v51
	v_xor_b32_e32 v54, 0x1b0, v51
	v_xor_b32_e32 v55, 0x210, v51
	v_xor_b32_e32 v56, 0x330, v51
	v_xor_b32_e32 v57, 0x3a0, v51
	v_add_nc_u32_e32 v45, 0, v51
	v_add_nc_u32_e32 v46, 0, v52
	v_add_nc_u32_e32 v47, 0, v53
	v_add_nc_u32_e32 v58, 0, v54
	v_add_nc_u32_e32 v59, 0, v55
	v_add_nc_u32_e32 v60, 0, v56
	v_add_nc_u32_e32 v61, 0, v57
	s_waitcnt vmcnt(4)
	v_perm_b32 v36, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v37, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v38, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v39, v19, v15, 0x5010400
	v_perm_b32 v40, v19, v15, 0x7030602
	v_lshrrev_b32_e32 v41, 8, v36
	v_lshrrev_b32_e32 v42, 24, v36
	v_lshrrev_b32_e32 v62, 24, v16
	v_lshrrev_b32_e32 v43, 8, v16
	v_lshrrev_b32_e32 v63, 8, v37
	v_lshrrev_b32_e32 v64, 24, v37
	v_lshrrev_b32_e32 v65, 8, v17
	v_lshrrev_b32_e32 v66, 24, v17
	v_lshrrev_b32_e32 v67, 8, v38
	v_lshrrev_b32_e32 v68, 24, v38
	v_lshrrev_b32_e32 v69, 8, v18
	v_lshrrev_b32_e32 v70, 24, v18
	v_lshrrev_b32_e32 v71, 8, v39
	v_lshrrev_b32_e32 v72, 24, v39
	v_lshrrev_b32_e32 v73, 8, v40
	v_lshrrev_b32_e32 v74, 24, v40
	v_and_b16 v12.l, 0xff, v36.l
	v_and_b16 v12.h, 0xff, v36.h
	v_and_b16 v14.h, 0xff, v37.h
	v_lshlrev_b16 v36.l, 8, v41.l
	v_lshlrev_b16 v36.h, 8, v42.l
	v_lshlrev_b16 v37.h, 8, v62.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v62, v24, v20, 0x5010400
	v_and_b16 v13.l, 0xff, v16.l
	v_and_b16 v13.h, 0xff, v16.h
	v_and_b16 v14.l, 0xff, v37.l
	v_lshlrev_b16 v37.l, 8, v43.l
	v_and_b16 v16.l, 0xff, v38.l
	v_and_b16 v16.h, 0xff, v38.h
	v_lshlrev_b16 v38.l, 8, v63.l
	v_lshlrev_b16 v38.h, 8, v64.l
	v_perm_b32 v24, v24, v20, 0x7030602
	v_and_b16 v15.l, 0xff, v17.l
	v_and_b16 v15.h, 0xff, v17.h
	v_and_b16 v17.l, 0xff, v18.l
	v_and_b16 v17.h, 0xff, v18.h
	v_and_b16 v18.l, 0xff, v39.l
	v_and_b16 v18.h, 0xff, v39.h
	v_lshlrev_b16 v39.l, 8, v65.l
	v_lshlrev_b16 v39.h, 8, v66.l
	v_and_b16 v19.l, 0xff, v40.l
	v_and_b16 v19.h, 0xff, v40.h
	v_lshlrev_b16 v40.l, 8, v67.l
	v_lshlrev_b16 v40.h, 8, v68.l
	v_lshlrev_b16 v41.l, 8, v69.l
	v_lshlrev_b16 v41.h, 8, v70.l
	v_lshlrev_b16 v42.l, 8, v71.l
	v_lshlrev_b16 v42.h, 8, v72.l
	v_lshlrev_b16 v43.l, 8, v73.l
	v_lshlrev_b16 v43.h, 8, v74.l
	v_perm_b32 v63, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v64, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v65, v27, v23, 0x5010400
	v_perm_b32 v66, v27, v23, 0x7030602
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	v_lshrrev_b32_e32 v36, 8, v62
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	v_lshrrev_b32_e32 v37, 24, v62
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_lshrrev_b32_e32 v38, 8, v24
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_lshrrev_b32_e32 v39, 24, v24
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	v_or_b16 v17.l, v17.l, v41.l
	v_or_b16 v17.h, v17.h, v41.h
	v_or_b16 v18.l, v18.l, v42.l
	v_or_b16 v18.h, v18.h, v42.h
	v_or_b16 v19.l, v19.l, v43.l
	v_or_b16 v19.h, v19.h, v43.h
	v_and_b16 v20.l, 0xff, v62.l
	v_and_b16 v20.h, 0xff, v62.h
	v_and_b16 v21.l, 0xff, v24.l
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.l, 0xff, v63.l
	v_lshrrev_b32_e32 v40, 8, v63
	v_lshrrev_b32_e32 v41, 24, v63
	v_and_b16 v22.h, 0xff, v63.h
	v_and_b16 v23.l, 0xff, v25.l
	v_lshrrev_b32_e32 v42, 8, v25
	v_lshrrev_b32_e32 v43, 24, v25
	v_and_b16 v23.h, 0xff, v25.h
	v_and_b16 v24.l, 0xff, v64.l
	v_lshrrev_b32_e32 v62, 8, v64
	v_lshrrev_b32_e32 v63, 24, v64
	v_and_b16 v24.h, 0xff, v64.h
	v_and_b16 v25.l, 0xff, v26.l
	v_lshrrev_b32_e32 v64, 8, v26
	v_lshrrev_b32_e32 v67, 24, v26
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v65.l
	v_lshrrev_b32_e32 v68, 8, v65
	v_lshrrev_b32_e32 v69, 24, v65
	v_and_b16 v26.h, 0xff, v65.h
	v_lshrrev_b32_e32 v65, 8, v66
	v_lshrrev_b32_e32 v70, 24, v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[28:31] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v45, v12
	ds_store_b16_d16_hi v45, v12 offset:64
	ds_store_b16 v46, v13
	ds_store_b16_d16_hi v46, v13 offset:64
	ds_store_b16 v47, v14
	ds_store_b16_d16_hi v47, v14 offset:64
	ds_store_b16 v58, v15
	ds_store_b16_d16_hi v58, v15 offset:64
	ds_store_b16 v59, v16
	ds_store_b16_d16_hi v59, v16 offset:64
	ds_store_b16 v45, v17 offset:640
	ds_store_b16_d16_hi v45, v17 offset:704
	ds_store_b16 v60, v18
	ds_store_b16_d16_hi v60, v18 offset:64
	ds_store_b16 v61, v19
	ds_store_b16_d16_hi v61, v19 offset:64
	v_lshlrev_b16 v12.l, 8, v36.l
	v_lshlrev_b16 v12.h, 8, v37.l
	v_lshlrev_b16 v13.l, 8, v38.l
	v_lshlrev_b16 v13.h, 8, v39.l
	v_and_b16 v27.l, 0xff, v66.l
	v_and_b16 v27.h, 0xff, v66.h
	v_lshlrev_b16 v14.l, 8, v40.l
	v_lshlrev_b16 v14.h, 8, v41.l
	v_lshlrev_b16 v15.l, 8, v42.l
	v_lshlrev_b16 v15.h, 8, v43.l
	v_lshlrev_b16 v16.l, 8, v62.l
	v_lshlrev_b16 v16.h, 8, v63.l
	v_lshlrev_b16 v17.l, 8, v64.l
	v_lshlrev_b16 v17.h, 8, v67.l
	v_lshlrev_b16 v18.l, 8, v68.l
	v_lshlrev_b16 v18.h, 8, v69.l
	v_lshlrev_b16 v19.l, 8, v65.l
	v_lshlrev_b16 v19.h, 8, v70.l
	v_or_b16 v12.l, v20.l, v12.l
	v_or_b16 v12.h, v20.h, v12.h
	v_or_b16 v13.l, v21.l, v13.l
	v_or_b16 v13.h, v21.h, v13.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v14.l, v22.l, v14.l
	v_or_b16 v14.h, v22.h, v14.h
	v_or_b16 v15.l, v23.l, v15.l
	v_or_b16 v15.h, v23.h, v15.h
	v_or_b16 v16.l, v24.l, v16.l
	v_or_b16 v16.h, v24.h, v16.h
	v_or_b16 v17.l, v25.l, v17.l
	v_or_b16 v17.h, v25.h, v17.h
	v_or_b16 v18.l, v26.l, v18.l
	v_or_b16 v18.h, v26.h, v18.h
	v_or_b16 v19.l, v27.l, v19.l
	v_or_b16 v19.h, v27.h, v19.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[32:35] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v45, v12 offset:8192
	ds_store_b16_d16_hi v45, v12 offset:8256
	ds_store_b16 v46, v13 offset:8192
	ds_store_b16_d16_hi v46, v13 offset:8256
	ds_store_b16 v47, v14 offset:8192
	ds_store_b16_d16_hi v47, v14 offset:8256
	ds_store_b16 v58, v15 offset:8192
	ds_store_b16_d16_hi v58, v15 offset:8256
	ds_store_b16 v59, v16 offset:8192
	ds_store_b16_d16_hi v59, v16 offset:8256
	ds_store_b16 v45, v17 offset:8832
	ds_store_b16_d16_hi v45, v17 offset:8896
	ds_store_b16 v60, v18 offset:8192
	ds_store_b16_d16_hi v60, v18 offset:8256
	ds_store_b16 v61, v19 offset:8192
	ds_store_b16_d16_hi v61, v19 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v12, 0x430, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v60, 8, v0
	v_and_b32_e32 v61, 32, v0
	v_and_b32_e32 v58, 0x800, v7
	v_lshl_or_b32 v59, v4, 6, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v44, v11, 6, v12
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v46, 48, v44
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
.LBB0_3:                                ; %Flow43
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v10
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v12, v0, 5, 1
	v_bfe_i32 v13, v0, 3, 1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v5, s6, v5
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v8, 0x430, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v12, 0x420, v12
	v_and_b32_e32 v58, 0x800, v7
	v_lshl_or_b32 v59, v4, 6, v6
	v_add_nc_u32_e32 v6, 0x201, v5
	v_add_nc_u32_e32 v2, s19, v2
	v_and_or_b32 v4, 0x210, v13, v12
	v_add_nc_u32_e32 v7, 0x200, v5
	v_lshl_or_b32 v44, v11, 6, v8
	v_mul_lo_u32 v6, s29, v6
	s_lshl_b32 s4, s8, 7
	v_xor_b32_e32 v8, v4, v59
	v_mad_u64_u32 v[4:5], null, s5, v2, s[6:7]
	v_mul_lo_u32 v2, s29, v7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s9, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v60, v8, v58
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v5, v6, s4, v1
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_add3_u32 v66, v4, v3, 0x200
	v_xor_b32_e32 v46, 48, v44
	v_add3_u32 v1, v2, s4, v1
	s_lshl_b32 s4, s7, 7
	v_xor_b32_e32 v61, 16, v60
	v_subrev_nc_u32_e32 v64, s4, v5
	v_xor_b32_e32 v62, 32, v60
	v_subrev_nc_u32_e32 v65, s4, v1
	s_mov_b32 s4, 0
	v_xor_b32_e32 v63, 48, v60
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v12, 0
	s_add_i32 s33, s1, -2
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s30, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[99:102], v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[103:106], v65, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v64, s[24:27], 0 offen
	s_mov_b32 s6, s31
	s_mov_b32 s31, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v67, s6, v44
	v_add_nc_u32_e32 v68, s6, v45
	s_mov_b32 s1, s4
	v_add_nc_u32_e32 v69, s6, v47
	v_add_nc_u32_e32 v70, s6, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, s1, v60
	v_add_nc_u32_e32 v72, s1, v61
	v_add_nc_u32_e32 v73, s1, v62
	v_add_nc_u32_e32 v74, s1, v63
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[83:86], v67
	ds_load_b128 v[111:114], v67 offset:2048
	ds_load_b128 v[115:118], v68
	ds_load_b128 v[119:122], v68 offset:2048
	ds_load_b128 v[123:126], v69
	ds_load_b128 v[127:130], v69 offset:2048
	ds_load_b128 v[131:134], v70
	ds_load_b128 v[135:138], v70 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[91:94], v71
	ds_load_b128 v[139:142], v71 offset:4096
	ds_load_b128 v[143:146], v72
	ds_load_b128 v[147:150], v72 offset:4096
	ds_load_b128 v[151:154], v73
	ds_load_b128 v[155:158], v73 offset:4096
	ds_load_b128 v[159:162], v74
	ds_load_b128 v[163:166], v74 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s5, s5, 1
	s_mov_b32 s4, s30
	s_cmp_lt_i32 s5, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s5, s5, 0
	s_add_i32 s33, s33, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s6, s5, 12
	s_barrier
	s_add_i32 s7, s6, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s30, s7, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s7, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[139:142], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[143:146], v[115:118], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[139:142], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[147:150], v[115:118], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[143:146], v[119:122], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[151:154], v[123:126], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[147:150], v[119:122], v[91:98] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s33, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[155:158], v[123:126], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[151:154], v[127:130], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[159:162], v[131:134], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[155:158], v[127:130], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[163:166], v[131:134], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[159:162], v[135:138], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v66, 0x100, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[91:98], v[163:166], v[135:138], v[91:98] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v70
	v_dual_add_f32 v40, v40, v71 :: v_dual_add_nc_u32 v65, s28, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v39, v72 :: v_dual_add_f32 v38, v38, v73
	v_dual_add_f32 v37, v37, v74 :: v_dual_add_f32 v36, v36, v75
	v_dual_add_f32 v35, v35, v76 :: v_dual_add_f32 v34, v34, v77
	v_dual_add_f32 v32, v32, v78 :: v_dual_add_nc_u32 v169, s30, v52
	v_dual_add_f32 v31, v31, v79 :: v_dual_add_nc_u32 v170, s30, v53
	v_dual_add_f32 v30, v30, v80 :: v_dual_add_nc_u32 v167, s7, v50
	v_dual_add_f32 v33, v33, v67 :: v_dual_add_nc_u32 v64, s28, v64
	v_dual_add_f32 v29, v29, v81 :: v_dual_add_nc_u32 v168, s30, v51
	v_dual_add_f32 v26, v26, v84 :: v_dual_add_nc_u32 v171, s30, v54
	v_dual_add_f32 v25, v25, v85 :: v_dual_add_nc_u32 v172, s30, v55
	v_dual_add_f32 v28, v28, v82 :: v_dual_add_nc_u32 v173, s30, v56
	v_dual_add_f32 v27, v27, v83 :: v_dual_add_nc_u32 v174, s30, v57
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v24, v86 :: v_dual_add_f32 v23, v23, v87
	v_dual_add_f32 v22, v22, v88 :: v_dual_add_f32 v21, v21, v89
	v_dual_add_f32 v20, v20, v90 :: v_dual_add_f32 v19, v19, v91
	v_dual_add_f32 v18, v18, v92 :: v_dual_add_f32 v17, v17, v93
	v_dual_add_f32 v16, v16, v94 :: v_dual_add_f32 v15, v15, v95
	v_dual_add_f32 v14, v14, v96 :: v_dual_add_f32 v13, v13, v97
	v_add_f32_e32 v12, v12, v98
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v167, v[99:102] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v107, v103, 0x5010400
	v_perm_b32 v69, v107, v103, 0x7030602
	v_perm_b32 v70, v108, v104, 0x5010400
	v_perm_b32 v71, v108, v104, 0x7030602
	v_perm_b32 v72, v109, v105, 0x5010400
	v_perm_b32 v73, v109, v105, 0x7030602
	v_perm_b32 v74, v110, v106, 0x5010400
	v_perm_b32 v75, v110, v106, 0x7030602
	v_lshrrev_b32_e32 v76, 8, v68
	v_lshrrev_b32_e32 v77, 24, v68
	v_lshrrev_b32_e32 v78, 8, v69
	v_lshrrev_b32_e32 v79, 24, v69
	v_lshrrev_b32_e32 v80, 8, v70
	v_and_b16 v67.l, 0xff, v68.l
	v_and_b16 v68.l, 0xff, v69.l
	v_and_b16 v69.l, 0xff, v70.l
	v_lshrrev_b32_e32 v81, 24, v70
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v82, 8, v71
	v_lshrrev_b32_e32 v83, 24, v71
	v_and_b16 v71.l, 0xff, v72.l
	v_lshrrev_b32_e32 v84, 8, v72
	v_lshrrev_b32_e32 v85, 24, v72
	v_and_b16 v72.l, 0xff, v73.l
	v_lshrrev_b32_e32 v86, 8, v73
	v_lshrrev_b32_e32 v87, 24, v73
	v_and_b16 v73.l, 0xff, v74.l
	v_lshrrev_b32_e32 v88, 8, v74
	v_lshrrev_b32_e32 v89, 24, v74
	v_and_b16 v74.l, 0xff, v75.l
	v_lshrrev_b32_e32 v90, 8, v75
	v_lshrrev_b32_e32 v91, 24, v75
	v_lshlrev_b16 v75.l, 8, v76.l
	v_and_b16 v67.h, 0xff, v68.h
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v71.h
	v_and_b16 v71.h, 0xff, v72.h
	v_and_b16 v72.h, 0xff, v73.h
	v_and_b16 v73.h, 0xff, v74.h
	v_and_b16 v74.h, 0xff, v75.h
	v_lshlrev_b16 v75.h, 8, v77.l
	v_lshlrev_b16 v76.l, 8, v78.l
	v_lshlrev_b16 v76.h, 8, v79.l
	v_lshlrev_b16 v77.l, 8, v80.l
	v_lshlrev_b16 v77.h, 8, v81.l
	v_lshlrev_b16 v78.l, 8, v82.l
	v_lshlrev_b16 v78.h, 8, v83.l
	v_lshlrev_b16 v79.l, 8, v84.l
	v_lshlrev_b16 v79.h, 8, v85.l
	v_lshlrev_b16 v80.l, 8, v86.l
	v_lshlrev_b16 v80.h, 8, v87.l
	v_lshlrev_b16 v81.l, 8, v88.l
	v_lshlrev_b16 v81.h, 8, v89.l
	v_lshlrev_b16 v82.l, 8, v90.l
	v_lshlrev_b16 v82.h, 8, v91.l
	v_or_b16 v67.l, v67.l, v75.l
	v_or_b16 v67.h, v67.h, v75.h
	v_or_b16 v68.l, v68.l, v76.l
	v_or_b16 v68.h, v68.h, v76.h
	v_or_b16 v69.l, v69.l, v77.l
	v_or_b16 v69.h, v69.h, v77.h
	v_or_b16 v70.l, v70.l, v78.l
	v_or_b16 v70.h, v70.h, v78.h
	v_or_b16 v71.l, v71.l, v79.l
	v_or_b16 v71.h, v71.h, v79.h
	v_or_b16 v72.l, v72.l, v80.l
	v_or_b16 v72.h, v72.h, v80.h
	v_or_b16 v73.l, v73.l, v81.l
	v_or_b16 v73.h, v73.h, v81.h
	v_or_b16 v74.l, v74.l, v82.l
	v_or_b16 v74.h, v74.h, v82.h
	ds_store_b16 v168, v67
	ds_store_b16_d16_hi v168, v67 offset:64
	ds_store_b16 v169, v68
	ds_store_b16_d16_hi v169, v68 offset:64
	ds_store_b16 v170, v69
	ds_store_b16_d16_hi v170, v69 offset:64
	ds_store_b16 v171, v70
	ds_store_b16_d16_hi v171, v70 offset:64
	ds_store_b16 v172, v71
	ds_store_b16_d16_hi v172, v71 offset:64
	ds_store_b16 v168, v72 offset:640
	ds_store_b16_d16_hi v168, v72 offset:704
	ds_store_b16 v173, v73
	ds_store_b16_d16_hi v173, v73 offset:64
	ds_store_b16 v174, v74
	ds_store_b16_d16_hi v174, v74 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v60, v48 :: v_dual_mov_b32 v61, v49
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v33, 0
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s30, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v61
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v58
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v3, 48, v1
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
	v_add_nc_u32_e32 v56, s4, v4
	v_add_nc_u32_e32 v48, s4, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v50, s31, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v49, s4, v2
	ds_load_b128 v[5:8], v56
	ds_load_b128 v[80:83], v48 offset:4096
	ds_load_b128 v[84:87], v48
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v48, s31, v45
	ds_load_b128 v[88:91], v50 offset:2048
	ds_load_b128 v[72:75], v50
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v49 offset:4096
	ds_load_b128 v[96:99], v49
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v57, s31, v47
	ds_load_b128 v[100:103], v48 offset:2048
	ds_load_b128 v[104:107], v48
	ds_load_b128 v[108:111], v57
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, s4, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v65, s31, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v55, s15 :: v_dual_mov_b32 v54, s14
	v_dual_mov_b32 v53, s13 :: v_dual_mov_b32 v52, s12
	v_mov_b32_e32 v51, s11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v50, s10 :: v_dual_mov_b32 v49, s9
	v_mov_b32_e32 v48, s8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[116:119], v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[120:123], v56 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[124:127], v57 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[128:131], v64 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[132:135], v65 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[84:87], v[72:75], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[72:75], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[84:87], v[88:91], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[96:99], v[104:107], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[92:95], v[104:107], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[96:99], v[100:103], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[5:8], v[108:111], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[120:123], v[108:111], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[112:115], v[116:119], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[5:8], v[124:127], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[128:131], v[116:119], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v57
	v_cvt_f32_i32_e32 v6, v58
	v_cvt_f32_i32_e32 v7, v61
	v_cvt_f32_i32_e32 v8, v62
	v_cvt_f32_i32_e32 v57, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v60
	v_wmma_i32_16x16x16_iu8 v[48:55], v[80:83], v[88:91], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[112:115], v[132:135], v[72:79] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v40, v40, v6 :: v_dual_add_f32 v37, v37, v57
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v65
	v_wmma_i32_16x16x16_iu8 v[48:55], v[92:95], v[100:103], v[48:55] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v39, v7 :: v_dual_add_f32 v38, v38, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v66
	v_cvt_f32_i32_e32 v8, v67
	v_cvt_f32_i32_e32 v57, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v69
	v_wmma_i32_16x16x16_iu8 v[48:55], v[120:123], v[124:127], v[48:55] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v34, v34, v7 :: v_dual_add_f32 v31, v31, v57
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v71
	v_cvt_f32_i32_e32 v57, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v30, v30, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v72
	v_wmma_i32_16x16x16_iu8 v[48:55], v[128:131], v[132:135], v[48:55] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v29, v29, v6 :: v_dual_add_f32 v26, v26, v57
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v77
	v_cvt_f32_i32_e32 v57, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v5 :: v_dual_add_f32 v22, v22, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v79
	v_cvt_f32_i32_e32 v8, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v24, v6 :: v_dual_add_f32 v23, v23, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v48
	v_cvt_f32_i32_e32 v7, v49
	v_cvt_f32_i32_e32 v48, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v17, v17, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v19, v19, v6 :: v_dual_add_f32 v18, v18, v7
	v_add_f32_e32 v16, v16, v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v53
	v_cvt_f32_i32_e32 v7, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v52
	v_cvt_f32_i32_e32 v48, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v21, v21, v57 :: v_dual_add_f32 v14, v14, v6
	v_add_f32_e32 v13, v13, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v15, v15, v5 :: v_dual_add_f32 v12, v12, v8
	v_add_f32_e32 v33, v33, v48
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
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
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v50, s30, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v44, s1, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v75, s11 :: v_dual_add_nc_u32 v48, s30, v2
	v_dual_mov_b32 v74, s10 :: v_dual_add_nc_u32 v5, s30, v4
	v_dual_mov_b32 v68, s4 :: v_dual_add_nc_u32 v45, s1, v45
	v_mov_b32_e32 v73, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[84:87], v50 offset:4096
	ds_load_b128 v[88:91], v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v71, s7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[92:95], v44 offset:2048
	ds_load_b128 v[60:63], v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v72, s8 :: v_dual_add_nc_u32 v49, s30, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:4096
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[76:79], v48 offset:4096
	ds_load_b128 v[80:83], v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v70, s6 :: v_dual_add_nc_u32 v47, s1, v47
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[104:107], v45 offset:2048
	ds_load_b128 v[108:111], v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v69, s5 :: v_dual_add_nc_u32 v44, s1, v46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[96:99], v47 offset:2048
	ds_load_b128 v[100:103], v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v49
	ds_load_b128 v[120:123], v49 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[124:127], v44 offset:2048
	ds_load_b128 v[112:115], v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[88:91], v[60:63], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[60:63], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[88:91], v[92:95], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[84:87], v[92:95], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[80:83], v[108:111], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[76:79], v[108:111], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[80:83], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[76:79], v[104:107], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[5:8], v[100:103], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[1:4], v[100:103], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[5:8], v[96:99], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[1:4], v[96:99], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[116:119], v[112:115], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[120:123], v[112:115], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[116:119], v[124:127], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[120:123], v[124:127], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v44
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
.LBB0_12:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v43, v6 :: v_dual_and_b32 v1, 0x80, v0
	v_dual_add_f32 v5, v33, v5 :: v_dual_and_b32 v2, 0x60, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v3, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v4, 3, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v44, 1, v2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or3_b32 v4, v4, v11, s19
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or3_b32 v3, v3, v44, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v50, v38, v50 :: v_dual_and_b32 v87, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v7, v42, v7 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_add_f32 v8, v41, v8 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v88, v0, 7, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v11, 64, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v89, 7, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_or_b32_e32 v44, 4, v3
	v_or_b32_e32 v80, 0x80, v3
	v_or_b32_e32 v45, 8, v3
	v_or_b32_e32 v81, 0x84, v3
	v_or_b32_e32 v46, 12, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	v_or_b32_e32 v82, 0x88, v3
	v_or_b32_e32 v47, 16, v3
	v_or_b32_e32 v76, 20, v3
	v_or_b32_e32 v77, 24, v3
	v_or_b32_e32 v78, 28, v3
	v_or_b32_e32 v83, 0x8c, v3
	s_clause 0x7
	buffer_load_u16 v79, v3, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	v_or_b32_e32 v84, 0x90, v3
	v_or_b32_e32 v85, 0x94, v3
	v_or_b32_e32 v86, 0x98, v3
	v_or_b32_e32 v3, 0x9c, v3
	s_clause 0x7
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v75, v12, v75 :: v_dual_and_b32 v90, 14, v0
	v_dual_add_f32 v51, v37, v51 :: v_dual_lshlrev_b32 v0, 2, v0
	v_add_f32_e32 v52, v36, v52
	v_dual_add_f32 v55, v32, v55 :: v_dual_add_f32 v56, v31, v56
	v_dual_add_f32 v65, v22, v65 :: v_dual_add_f32 v66, v21, v66
	v_dual_add_f32 v71, v16, v71 :: v_dual_add_f32 v72, v15, v72
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 0x78, v0
	v_cndmask_b32_e64 v91, 0x840, 0, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v43, v6, s2
	v_cndmask_b32_e64 v37, v37, v51, s2
	v_cndmask_b32_e64 v31, v31, v56, s2
	v_cndmask_b32_e64 v43, v22, v65, s2
	v_cndmask_b32_e64 v51, v16, v71, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v16, 0x840, v88
	v_lshl_or_b32 v0, v2, 3, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v12, v75, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v48, v40, v48 :: v_dual_add_f32 v49, v39, v49
	v_dual_add_f32 v53, v35, v53 :: v_dual_add_f32 v54, v34, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v0, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v18, v69 :: v_dual_add_f32 v70, v17, v70
	v_dual_add_f32 v73, v14, v73 :: v_dual_add_f32 v74, v13, v74
	v_dual_add_f32 v59, v28, v59 :: v_dual_add_f32 v60, v27, v60
	v_dual_add_f32 v61, v26, v61 :: v_dual_add_f32 v62, v25, v62
	v_dual_add_f32 v63, v24, v63 :: v_dual_add_f32 v64, v23, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v49, s2
	v_cndmask_b32_e64 v38, v38, v50, s2
	v_cndmask_b32_e64 v34, v34, v54, s2
	v_cndmask_b32_e64 v49, v18, v69, s2
	v_cndmask_b32_e64 v50, v17, v70, s2
	v_cndmask_b32_e64 v54, v13, v74, s2
	v_cndmask_b32_e64 v36, v36, v52, s2
	v_cndmask_b32_e64 v52, v15, v72, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v15, s29, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v67, v20, v67 :: v_dual_add_f32 v68, v19, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v33, v5, s2
	v_cndmask_b32_e64 v7, v42, v7, s2
	v_cndmask_b32_e64 v8, v41, v8, s2
	v_cndmask_b32_e64 v33, v40, v48, s2
	v_cndmask_b32_e64 v40, v28, v59, s2
	v_cndmask_b32_e64 v41, v26, v61, s2
	v_cndmask_b32_e64 v42, v24, v63, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s19, s19, s29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v55, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s0, s19, s18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v20, v67, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add3_u32 v55, s0, v87, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v53, s2
	v_cndmask_b32_e64 v53, v14, v73, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v30, v57 :: v_dual_add_f32 v58, v29, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v60, s2
	v_cndmask_b32_e64 v19, v19, v68, s2
	v_cndmask_b32_e64 v25, v25, v62, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v30, v30, v57, s2
	v_cndmask_b32_e64 v23, v23, v64, s2
	v_cndmask_b32_e64 v21, v21, v66, s2
	v_cndmask_b32_e64 v29, v29, v58, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s21, s29, 1
	s_lshl_b32 s22, s29, 2
	s_mul_i32 s23, s29, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v58, v55, s21, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s24, s29, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v59, v55, s22, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s25, s29, 10
	s_mul_i32 s26, s29, 12
	s_mul_i32 s27, s29, 14
	s_lshl_b32 s28, s29, 4
	s_mul_i32 s30, s29, 18
	s_mul_i32 s31, s29, 20
	s_mul_i32 s33, s29, 22
	s_mul_i32 s34, s29, 24
	s_mul_i32 s35, s29, 26
	s_mul_i32 s36, s29, 28
	s_mul_i32 s37, s29, 30
	s_lshl_b32 s38, s29, 5
	s_mul_i32 s39, s29, 34
	s_mul_i32 s40, s29, 36
	s_mul_i32 s20, s29, 38
	s_mul_i32 s15, s29, 40
	s_mul_i32 s14, s29, 42
	s_mul_i32 s13, s29, 44
	s_mul_i32 s12, s29, 46
	s_mul_i32 s11, s29, 48
	s_mul_i32 s10, s29, 50
	s_mul_i32 s9, s29, 52
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	v_add_lshl_u32 v60, v55, s23, 2
	v_add_lshl_u32 v61, v55, s24, 2
	v_add_lshl_u32 v62, v55, s25, 2
	v_add_lshl_u32 v63, v55, s26, 2
	v_add_lshl_u32 v64, v55, s27, 2
	v_add_lshl_u32 v65, v55, s28, 2
	v_add_lshl_u32 v66, v55, s30, 2
	v_add_lshl_u32 v67, v55, s31, 2
	v_add_lshl_u32 v68, v55, s33, 2
	v_add_lshl_u32 v69, v55, s34, 2
	v_add_lshl_u32 v70, v55, s35, 2
	v_add_lshl_u32 v71, v55, s36, 2
	v_add_lshl_u32 v72, v55, s37, 2
	v_add_lshl_u32 v73, v55, s38, 2
	v_add_lshl_u32 v74, v55, s39, 2
	v_add_lshl_u32 v75, v55, s40, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s29, 54
	s_mul_i32 s5, s29, 56
	s_mul_i32 s4, s29, 58
	s_mul_i32 s3, s29, 60
	s_mul_i32 s1, s29, 62
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v85
	v_lshlrev_b32_e32 v12, 16, v76
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v10, 6, v10
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v2, v16, v10
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v16, 16, v81
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v10, 11, v90
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v17, 16, v82
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v0, v0, v10, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v1, 16, v11
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v18, 16, v83
	v_lshlrev_b32_e32 v15, 16, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v95, 0, v0
	v_xad_u32 v96, v0, 8, 0
	v_xad_u32 v97, v0, 16, 0
	v_xad_u32 v98, v0, 24, 0
	v_xad_u32 v99, v0, 32, 0
	v_xad_u32 v100, v0, 40, 0
	v_xad_u32 v101, v0, 48, 0
	v_xad_u32 v102, v0, 56, 0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v0, 16, v4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v9, 0x700, v9
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v4, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v28, v0, v4 :: v_dual_lshlrev_b32 v13, 2, v90
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v2, v9, v13, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v13, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v88, 0x1008, v2, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v76, v0, v13
	v_mul_f32_e32 v13, v1, v13
	v_mul_f32_e32 v80, v0, v17
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v20, 16, v84
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v89, 0x2010, v2, 0
	v_xad_u32 v90, 0x3018, v2, 0
	v_xad_u32 v91, 0x4020, v2, 0
	v_xad_u32 v92, 0x5028, v2, 0
	v_xad_u32 v93, 0x6030, v2, 0
	v_xad_u32 v94, 0x7038, v2, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v82, v0, v20 :: v_dual_lshlrev_b32 v11, 16, v47
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v87, 0, v2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v83, v0, v22
	v_mul_f32_e32 v105, v1, v12
	v_mul_f32_e32 v108, v1, v16
	v_mul_f32_e32 v109, v1, v17
	v_mul_f32_e32 v81, v0, v18
	v_dual_mul_f32 v103, v1, v4 :: v_dual_lshlrev_b32 v14, 16, v78
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 16, v79
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	v_lshlrev_b32_e32 v10, 16, v46
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v77, v0, v14
	v_mul_f32_e32 v46, v0, v11
	v_dual_mul_f32 v86, v1, v2 :: v_dual_lshlrev_b32 v9, 16, v45
	v_mul_f32_e32 v78, v0, v15
	v_dual_mul_f32 v26, v0, v2 :: v_dual_mul_f32 v107, v1, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v44, v0, v9 :: v_dual_lshlrev_b32 v57, 2, v55
	v_mul_f32_e32 v79, v0, v16
	v_mul_f32_e32 v9, v1, v9
	v_mul_f32_e32 v11, v1, v11
	v_mul_f32_e32 v85, v0, v3
	v_mul_f32_e32 v45, v0, v10
	v_mul_f32_e32 v104, v1, v10
	v_dual_mul_f32 v110, v1, v18 :: v_dual_mul_f32 v47, v0, v12
	v_mul_f32_e32 v106, v1, v14
	v_mul_f32_e32 v111, v1, v20
	v_mul_f32_e32 v112, v1, v22
	v_mul_f32_e32 v114, v1, v3
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v3, v41, v103 :: v_dual_mul_f32 v84, v0, v24
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v113, v1, v24
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v0, v5, v26 :: v_dual_mul_f32 v17, v19, v107
	v_dual_mul_f32 v16, v36, v78 :: v_dual_mul_f32 v19, v49, v108
	v_dual_mul_f32 v1, v27, v86 :: v_dual_mul_f32 v2, v6, v28
	v_mul_f32_e32 v5, v25, v9
	v_mul_f32_e32 v9, v23, v11
	v_mul_f32_e32 v11, v43, v105
	v_dual_mul_f32 v18, v35, v79 :: v_dual_mul_f32 v27, v53, v112
	v_dual_mul_f32 v4, v7, v44 :: v_dual_mul_f32 v13, v21, v13
	v_mul_f32_e32 v6, v8, v45
	v_dual_mul_f32 v8, v33, v46 :: v_dual_mul_f32 v21, v50, v109
	v_mul_f32_e32 v20, v34, v80
	v_dual_mul_f32 v12, v38, v76 :: v_dual_mul_f32 v23, v51, v110
	v_dual_mul_f32 v22, v32, v81 :: v_dual_mul_f32 v7, v42, v104
	v_dual_mul_f32 v10, v39, v47 :: v_dual_mul_f32 v15, v48, v106
	v_dual_mul_f32 v14, v37, v77 :: v_dual_mul_f32 v25, v52, v111
	v_mul_f32_e32 v24, v31, v82
	v_mul_f32_e32 v26, v30, v83
	v_mul_f32_e32 v28, v29, v84
	v_mul_f32_e32 v30, v40, v85
	v_mul_f32_e32 v29, v54, v113
	v_mul_f32_e32 v31, v56, v114
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v95, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v96, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v97, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v98, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v99, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v100, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v101, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v102, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v87 offset1:16
	ds_load_2addr_b64 v[4:7], v88 offset1:16
	ds_load_2addr_b64 v[8:11], v89 offset1:16
	ds_load_2addr_b64 v[12:15], v90 offset1:16
	ds_load_2addr_b64 v[16:19], v91 offset1:16
	ds_load_2addr_b64 v[20:23], v92 offset1:16
	ds_load_2addr_b64 v[24:27], v93 offset1:16
	ds_load_2addr_b64 v[28:31], v94 offset1:16
	v_add_lshl_u32 v32, v55, s20, 2
	v_add_lshl_u32 v33, v55, s15, 2
	v_add_lshl_u32 v34, v55, s14, 2
	v_add_lshl_u32 v35, v55, s13, 2
	v_add_lshl_u32 v36, v55, s12, 2
	v_add_lshl_u32 v37, v55, s11, 2
	v_add_lshl_u32 v38, v55, s10, 2
	v_add_lshl_u32 v39, v55, s9, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v57, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v58, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v59, s[16:19], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v60, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v16, v61, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v20, v62, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v24, v63, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x13
	buffer_atomic_add_f32 v28, v64, s[16:19], 0 offen
	buffer_atomic_add_f32 v2, v65, s[16:19], 0 offen
	buffer_atomic_add_f32 v6, v66, s[16:19], 0 offen
	buffer_atomic_add_f32 v10, v67, s[16:19], 0 offen
	buffer_atomic_add_f32 v14, v68, s[16:19], 0 offen
	buffer_atomic_add_f32 v18, v69, s[16:19], 0 offen
	buffer_atomic_add_f32 v22, v70, s[16:19], 0 offen
	buffer_atomic_add_f32 v26, v71, s[16:19], 0 offen
	buffer_atomic_add_f32 v30, v72, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v73, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v74, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v75, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v32, s[16:19], 0 offen
	buffer_atomic_add_f32 v17, v33, s[16:19], 0 offen
	buffer_atomic_add_f32 v21, v34, s[16:19], 0 offen
	buffer_atomic_add_f32 v25, v35, s[16:19], 0 offen
	buffer_atomic_add_f32 v29, v36, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v37, s[16:19], 0 offen
	buffer_atomic_add_f32 v7, v38, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v39, s[16:19], 0 offen
	v_add_lshl_u32 v40, v55, s8, 2
	v_add_lshl_u32 v41, v55, s5, 2
	v_add_lshl_u32 v42, v55, s4, 2
	v_add_lshl_u32 v43, v55, s3, 2
	v_add_lshl_u32 v0, v55, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v40, s[16:19], 0 offen
	buffer_atomic_add_f32 v19, v41, s[16:19], 0 offen
	buffer_atomic_add_f32 v23, v42, s[16:19], 0 offen
	buffer_atomic_add_f32 v27, v43, s[16:19], 0 offen
	buffer_atomic_add_f32 v31, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 175
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8168
; TotalNumSgprs: 43
; NumVgprs: 175
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     175
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
