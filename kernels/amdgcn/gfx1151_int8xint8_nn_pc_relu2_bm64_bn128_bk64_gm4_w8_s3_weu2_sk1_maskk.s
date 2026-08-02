	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v29, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v41, 15, v0
	v_and_b32_e32 v50, 8, v0
	v_and_b32_e32 v42, 62, v2
	v_and_b32_e32 v51, 32, v0
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s29, v42
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s30, v2
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
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v43, v1, 4, v3
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s33, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s33, v42
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s29, s33
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v4, s18, s4, v43
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 63
.Ltmp13:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s19, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s29, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s28, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s28
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s19, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v5, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v4, s29, 6, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v3, s[24:27], 0 offen
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v3, 4, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 48, v3
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s33, v48
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v49, v2, v48, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v13
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s33, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s28
	s_cmpk_gt_i32 s5, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s33, s33, 64
	v_or_b32_e32 v13, s33, v42
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[21:24], v2, s[12:15], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s33, v48
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s30, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s29, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s33, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v17, 0x80000000, v13, s3
	s_clause 0x1
	buffer_load_b128 v[13:16], v4, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v4, 1, v0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v4, 48, v4
	buffer_load_b128 v[25:28], v2, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v52, v3, v4
	v_lshlrev_b32_e32 v4, 3, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 0x420, v2
	v_lshlrev_b32_e32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v37, 0, v52
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v30, v2, v42
	v_lshlrev_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v29, 10, v30
	v_xor_b32_e32 v54, 0x90, v53
	v_xor_b32_e32 v55, 0x120, v53
	v_xor_b32_e32 v56, 0x1b0, v53
	v_xor_b32_e32 v57, 0x210, v53
	v_xor_b32_e32 v58, 0x330, v53
	v_xor_b32_e32 v59, 0x3a0, v53
	v_add_nc_u32_e32 v38, 0, v53
	v_add_nc_u32_e32 v39, 0, v54
	v_add_nc_u32_e32 v40, 0, v55
	v_add_nc_u32_e32 v44, 0, v56
	v_add_nc_u32_e32 v45, 0, v57
	v_add_nc_u32_e32 v46, 0, v58
	v_add_nc_u32_e32 v47, 0, v59
	s_waitcnt vmcnt(4)
	v_perm_b32 v29, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	v_perm_b32 v30, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v31, v11, v7, 0x5010400
	v_lshrrev_b32_e32 v34, 8, v29
	v_lshrrev_b32_e32 v35, 24, v29
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v32, v12, v8, 0x5010400
	v_perm_b32 v33, v12, v8, 0x7030602
	v_lshrrev_b32_e32 v36, 8, v9
	v_and_b16 v5.l, 0xff, v29.l
	v_and_b16 v5.h, 0xff, v29.h
	v_lshrrev_b32_e32 v60, 24, v9
	v_lshlrev_b16 v29.l, 8, v34.l
	v_lshlrev_b16 v29.h, 8, v35.l
	v_lshrrev_b32_e32 v61, 8, v30
	v_lshrrev_b32_e32 v62, 24, v30
	v_lshrrev_b32_e32 v63, 8, v10
	v_lshrrev_b32_e32 v64, 24, v10
	v_lshrrev_b32_e32 v65, 8, v31
	v_lshrrev_b32_e32 v66, 24, v31
	v_lshrrev_b32_e32 v67, 8, v11
	v_lshrrev_b32_e32 v68, 24, v11
	v_lshrrev_b32_e32 v69, 8, v32
	v_lshrrev_b32_e32 v70, 24, v32
	v_lshrrev_b32_e32 v71, 8, v33
	v_lshrrev_b32_e32 v72, 24, v33
	v_and_b16 v6.l, 0xff, v9.l
	v_and_b16 v7.l, 0xff, v30.l
	v_lshlrev_b16 v30.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v9.h
	v_and_b16 v7.h, 0xff, v30.h
	v_lshlrev_b16 v30.h, 8, v60.l
	v_or_b16 v5.l, v5.l, v29.l
	v_or_b16 v5.h, v5.h, v29.h
	v_and_b16 v8.l, 0xff, v10.l
	v_and_b16 v8.h, 0xff, v10.h
	v_and_b16 v9.l, 0xff, v31.l
	v_and_b16 v9.h, 0xff, v31.h
	v_and_b16 v10.l, 0xff, v11.l
	v_and_b16 v10.h, 0xff, v11.h
	v_and_b16 v11.l, 0xff, v32.l
	v_and_b16 v11.h, 0xff, v32.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v29, v17, v13, 0x5010400
	v_and_b16 v12.l, 0xff, v33.l
	v_and_b16 v12.h, 0xff, v33.h
	v_lshlrev_b16 v31.l, 8, v61.l
	v_lshlrev_b16 v31.h, 8, v62.l
	v_lshlrev_b16 v32.l, 8, v63.l
	v_lshlrev_b16 v32.h, 8, v64.l
	v_lshlrev_b16 v33.l, 8, v65.l
	v_lshlrev_b16 v33.h, 8, v66.l
	v_lshlrev_b16 v34.l, 8, v67.l
	v_lshlrev_b16 v34.h, 8, v68.l
	v_lshlrev_b16 v35.l, 8, v69.l
	v_lshlrev_b16 v35.h, 8, v70.l
	v_lshlrev_b16 v36.l, 8, v71.l
	v_lshlrev_b16 v36.h, 8, v72.l
	v_perm_b32 v13, v17, v13, 0x7030602
	v_or_b16 v6.l, v6.l, v30.l
	v_perm_b32 v17, v18, v14, 0x5010400
	v_perm_b32 v14, v18, v14, 0x7030602
	v_perm_b32 v18, v19, v15, 0x5010400
	v_perm_b32 v15, v19, v15, 0x7030602
	v_perm_b32 v19, v20, v16, 0x5010400
	v_perm_b32 v16, v20, v16, 0x7030602
	v_or_b16 v6.h, v6.h, v30.h
	v_lshrrev_b32_e32 v20, 8, v29
	v_or_b16 v7.l, v7.l, v31.l
	v_or_b16 v7.h, v7.h, v31.h
	v_or_b16 v8.l, v8.l, v32.l
	v_or_b16 v8.h, v8.h, v32.h
	v_or_b16 v9.l, v9.l, v33.l
	v_or_b16 v9.h, v9.h, v33.h
	v_or_b16 v10.l, v10.l, v34.l
	v_or_b16 v10.h, v10.h, v34.h
	v_or_b16 v11.l, v11.l, v35.l
	v_or_b16 v11.h, v11.h, v35.h
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v37, v[21:24] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v38, v5
	ds_store_b16_d16_hi v38, v5 offset:64
	ds_store_b16 v39, v6
	ds_store_b16_d16_hi v39, v6 offset:64
	ds_store_b16 v40, v7
	ds_store_b16_d16_hi v40, v7 offset:64
	ds_store_b16 v44, v8
	ds_store_b16_d16_hi v44, v8 offset:64
	ds_store_b16 v45, v9
	ds_store_b16_d16_hi v45, v9 offset:64
	ds_store_b16 v38, v10 offset:640
	ds_store_b16_d16_hi v38, v10 offset:704
	ds_store_b16 v46, v11
	ds_store_b16_d16_hi v46, v11 offset:64
	ds_store_b16 v47, v12
	ds_store_b16_d16_hi v47, v12 offset:64
	v_lshrrev_b32_e32 v21, 24, v29
	v_lshrrev_b32_e32 v22, 8, v13
	v_lshrrev_b32_e32 v23, 24, v13
	v_and_b16 v5.l, 0xff, v29.l
	v_and_b16 v5.h, 0xff, v29.h
	v_and_b16 v7.l, 0xff, v17.l
	v_lshrrev_b32_e32 v24, 8, v17
	v_lshrrev_b32_e32 v29, 24, v17
	v_and_b16 v7.h, 0xff, v17.h
	v_lshrrev_b32_e32 v17, 8, v14
	v_lshrrev_b32_e32 v30, 24, v14
	v_and_b16 v9.l, 0xff, v18.l
	v_lshrrev_b32_e32 v31, 8, v18
	v_lshrrev_b32_e32 v32, 24, v18
	v_and_b16 v9.h, 0xff, v18.h
	v_lshrrev_b32_e32 v18, 8, v15
	v_lshrrev_b32_e32 v33, 24, v15
	v_lshrrev_b32_e32 v34, 8, v19
	v_lshrrev_b32_e32 v35, 24, v19
	v_lshrrev_b32_e32 v36, 8, v16
	v_lshrrev_b32_e32 v60, 24, v16
	v_and_b16 v6.l, 0xff, v13.l
	v_lshlrev_b16 v13.l, 8, v20.l
	v_and_b16 v6.h, 0xff, v13.h
	v_lshlrev_b16 v13.h, 8, v21.l
	v_and_b16 v8.l, 0xff, v14.l
	v_lshlrev_b16 v14.l, 8, v22.l
	v_and_b16 v8.h, 0xff, v14.h
	v_lshlrev_b16 v14.h, 8, v23.l
	v_and_b16 v10.l, 0xff, v15.l
	v_and_b16 v10.h, 0xff, v15.h
	v_and_b16 v11.l, 0xff, v19.l
	v_and_b16 v11.h, 0xff, v19.h
	v_and_b16 v12.l, 0xff, v16.l
	v_and_b16 v12.h, 0xff, v16.h
	v_lshlrev_b16 v15.l, 8, v24.l
	v_lshlrev_b16 v15.h, 8, v29.l
	v_lshlrev_b16 v16.l, 8, v17.l
	v_lshlrev_b16 v16.h, 8, v30.l
	v_lshlrev_b16 v17.l, 8, v31.l
	v_lshlrev_b16 v17.h, 8, v32.l
	v_lshlrev_b16 v18.l, 8, v18.l
	v_lshlrev_b16 v18.h, 8, v33.l
	v_lshlrev_b16 v19.l, 8, v34.l
	v_lshlrev_b16 v19.h, 8, v35.l
	v_lshlrev_b16 v20.l, 8, v36.l
	v_lshlrev_b16 v20.h, 8, v60.l
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v5.h, v5.h, v13.h
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v8.h, v8.h, v16.h
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[25:28] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v38, v5 offset:8192
	ds_store_b16_d16_hi v38, v5 offset:8256
	ds_store_b16 v39, v6 offset:8192
	ds_store_b16_d16_hi v39, v6 offset:8256
	ds_store_b16 v40, v7 offset:8192
	ds_store_b16_d16_hi v40, v7 offset:8256
	ds_store_b16 v44, v8 offset:8192
	ds_store_b16_d16_hi v44, v8 offset:8256
	ds_store_b16 v45, v9 offset:8192
	ds_store_b16_d16_hi v45, v9 offset:8256
	ds_store_b16 v38, v10 offset:8832
	ds_store_b16_d16_hi v38, v10 offset:8896
	ds_store_b16 v46, v11 offset:8192
	ds_store_b16_d16_hi v46, v11 offset:8256
	ds_store_b16 v47, v12 offset:8192
	ds_store_b16_d16_hi v47, v12 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v5, 0x430, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 32, v0
	v_and_b32_e32 v60, 0x800, v3
	v_lshl_or_b32 v61, v1, 6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v44, v41, 6, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 8, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v46, 48, v44
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v10, 0
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s3, 0, 0x2000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 5, 1
	v_bfe_i32 v6, v0, 3, 1
	v_lshl_or_b32 v61, v1, 6, v4
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s34, s5, 6
	s_mov_b32 s5, s4
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v5, 0x420, v5
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v1, 0x210, v6, v5
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v2, 0x430, v2
	v_and_b32_e32 v60, 0x800, v3
	v_xor_b32_e32 v1, v1, v61
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v62, s29, v43
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_lshl_or_b32 v44, v41, 6, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b32_e32 v63, v1, v60
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_mov_b32_e32 v7, s10
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v46, 48, v44
	v_xor_b32_e32 v64, 16, v63
	v_xor_b32_e32 v65, 32, v63
	v_xor_b32_e32 v66, 48, v63
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v39, 0
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v12, 0
	s_add_i32 s33, s33, 64
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s34, s34, -3
	s_mov_b32 s35, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s0, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s0, s33, s0
	v_or_b32_e32 v67, s0, v48
	v_or_b32_e32 v68, s0, v42
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s0, s29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v69, s0, v49
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s6, s6, s18
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s0, s30, v67
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v70, s6, v43
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v68
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v71, s6, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v67, 0x80000000, v69, s0
	s_mov_b32 s0, s31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v68, 0x80000000, v70 :: v_dual_cndmask_b32 v69, 0x80000000, v71
	s_mov_b32 s31, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[99:102], v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[103:106], v68, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v69, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v67, s0, v44
	v_add_nc_u32_e32 v68, s0, v45
	s_mov_b32 s1, s4
	v_add_nc_u32_e32 v69, s0, v47
	v_add_nc_u32_e32 v70, s0, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, s1, v63
	v_add_nc_u32_e32 v72, s1, v64
	v_add_nc_u32_e32 v73, s1, v65
	v_add_nc_u32_e32 v74, s1, v66
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
	s_mov_b32 s4, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s3, s35, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s3, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s35, s3, 0
	s_add_i32 s0, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s3, s35, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s3, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s3, s6, s3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[139:142], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[143:146], v[115:118], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[139:142], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[147:150], v[115:118], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[143:146], v[119:122], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[151:154], v[123:126], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[147:150], v[119:122], v[91:98] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s6, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[155:158], v[123:126], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[151:154], v[127:130], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[159:162], v[131:134], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[155:158], v[127:130], v[91:98] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[163:166], v[131:134], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[159:162], v[135:138], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_wmma_i32_16x16x16_iu8 v[91:98], v[163:166], v[135:138], v[91:98] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v70
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
	v_dual_add_f32 v37, v37, v71 :: v_dual_add_f32 v36, v36, v72
	v_dual_add_f32 v35, v35, v73 :: v_dual_add_f32 v34, v34, v74
	v_dual_add_f32 v33, v33, v75 :: v_dual_add_f32 v32, v32, v76
	v_add_f32_e32 v31, v31, v77
	v_dual_add_f32 v30, v30, v78 :: v_dual_add_nc_u32 v167, s6, v52
	v_dual_add_f32 v29, v29, v79 :: v_dual_add_nc_u32 v168, s3, v53
	v_dual_add_f32 v28, v28, v80 :: v_dual_add_nc_u32 v169, s3, v54
	v_dual_add_f32 v27, v27, v81 :: v_dual_add_nc_u32 v170, s3, v55
	v_dual_add_f32 v26, v26, v82 :: v_dual_add_nc_u32 v171, s3, v56
	v_dual_add_f32 v25, v25, v83 :: v_dual_add_nc_u32 v172, s3, v57
	v_dual_add_f32 v24, v24, v84 :: v_dual_add_nc_u32 v173, s3, v58
	v_dual_add_f32 v23, v23, v85 :: v_dual_add_nc_u32 v174, s3, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v10, v10, v67
	v_dual_add_f32 v22, v22, v86 :: v_dual_add_f32 v21, v21, v87
	v_dual_add_f32 v20, v20, v88 :: v_dual_add_f32 v19, v19, v89
	v_dual_add_f32 v18, v18, v90 :: v_dual_add_f32 v17, v17, v91
	v_dual_add_f32 v16, v16, v92 :: v_dual_add_f32 v15, v15, v93
	v_dual_add_f32 v14, v14, v94 :: v_dual_add_f32 v13, v13, v95
	v_dual_add_f32 v12, v12, v96 :: v_dual_add_f32 v11, v11, v97
	v_add_f32_e32 v9, v9, v98
	s_mov_b32 s5, s0
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
	v_dual_mov_b32 v5, v50 :: v_dual_mov_b32 v6, v51
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	v_xor_b32_e32 v1, v1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v1, v60
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v3, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v42, s4, v4
	v_add_nc_u32_e32 v43, s4, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v49, s31, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v48, s4, v2
	ds_load_b128 v[5:8], v42
	ds_load_b128 v[80:83], v43 offset:4096
	ds_load_b128 v[84:87], v43
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v50, s31, v45
	ds_load_b128 v[88:91], v49 offset:2048
	ds_load_b128 v[72:75], v49
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v48 offset:4096
	ds_load_b128 v[96:99], v48
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v43, s31, v47
	ds_load_b128 v[100:103], v50 offset:2048
	ds_load_b128 v[104:107], v50
	ds_load_b128 v[108:111], v43
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, s4, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v65, s31, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v55, s15 :: v_dual_mov_b32 v54, s14
	v_mov_b32_e32 v53, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v52, s12 :: v_dual_mov_b32 v51, s11
	v_dual_mov_b32 v50, s10 :: v_dual_mov_b32 v49, s9
	v_mov_b32_e32 v48, s8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[116:119], v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[120:123], v42 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[124:127], v43 offset:2048
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
	v_wmma_i32_16x16x16_iu8 v[48:55], v[80:83], v[88:91], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[96:99], v[100:103], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[5:8], v[108:111], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[92:95], v[100:103], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[120:123], v[108:111], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[112:115], v[116:119], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[5:8], v[124:127], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[120:123], v[124:127], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[128:131], v[116:119], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v57
	v_cvt_f32_i32_e32 v6, v58
	v_cvt_f32_i32_e32 v7, v61
	v_cvt_f32_i32_e32 v8, v62
	v_cvt_f32_i32_e32 v42, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v40, v40, v5 :: v_dual_add_f32 v39, v39, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v59
	v_cvt_f32_i32_e32 v6, v60
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[112:115], v[132:135], v[72:79] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v36, v7 :: v_dual_add_f32 v35, v35, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v38, v38, v5 :: v_dual_add_f32 v37, v37, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v65
	v_cvt_f32_i32_e32 v7, v66
	v_cvt_f32_i32_e32 v8, v67
	v_cvt_f32_i32_e32 v42, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v33, v33, v5 :: v_dual_add_f32 v32, v32, v6
	v_dual_add_f32 v31, v31, v7 :: v_dual_add_f32 v30, v30, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v29, v29, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v69
	v_cvt_f32_i32_e32 v6, v70
	v_cvt_f32_i32_e32 v7, v71
	v_cvt_f32_i32_e32 v8, v72
	v_cvt_f32_i32_e32 v42, v73
	v_wmma_i32_16x16x16_iu8 v[48:55], v[128:131], v[132:135], v[48:55] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v28, v28, v5 :: v_dual_add_f32 v27, v27, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v26, v26, v7 :: v_dual_add_f32 v25, v25, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v75
	v_cvt_f32_i32_e32 v7, v76
	v_cvt_f32_i32_e32 v8, v77
	v_cvt_f32_i32_e32 v42, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v23, v5 :: v_dual_add_f32 v22, v22, v6
	v_dual_add_f32 v21, v21, v7 :: v_dual_add_f32 v20, v20, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v19, v19, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v79
	v_cvt_f32_i32_e32 v6, v48
	v_cvt_f32_i32_e32 v7, v49
	v_cvt_f32_i32_e32 v8, v50
	v_cvt_f32_i32_e32 v42, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v5 :: v_dual_add_f32 v17, v17, v6
	v_dual_add_f32 v16, v16, v7 :: v_dual_add_f32 v15, v15, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v14, v14, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v53
	v_cvt_f32_i32_e32 v7, v54
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v42, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v13, v13, v5 :: v_dual_add_f32 v12, v12, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v7
	v_dual_add_f32 v9, v9, v8 :: v_dual_add_f32 v10, v10, v42
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
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
	v_add_nc_u32_e32 v4, s3, v4
	v_add_nc_u32_e32 v2, s3, v2
	v_add_nc_u32_e32 v1, s3, v1
	ds_load_b128 v[50:53], v4 offset:4096
	ds_load_b128 v[54:57], v4
	ds_load_b128 v[58:61], v2 offset:4096
	ds_load_b128 v[79:82], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s1, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v42, s3, v3
	ds_load_b128 v[83:86], v1 offset:4096
	ds_load_b128 v[87:90], v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s1, v45
	ds_load_b128 v[91:94], v2 offset:2048
	ds_load_b128 v[71:74], v2
	v_add_nc_u32_e32 v1, s1, v47
	ds_load_b128 v[103:106], v3 offset:2048
	ds_load_b128 v[107:110], v3
	v_add_nc_u32_e32 v43, s1, v46
	ds_load_b128 v[95:98], v1 offset:2048
	ds_load_b128 v[99:102], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v43
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[115:118], v42
	ds_load_b128 v[119:122], v42 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[123:126], v43 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[87:90], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[83:86], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[87:90], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[83:86], v[91:94], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[79:82], v[107:110], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[58:61], v[107:110], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[103:106], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[58:61], v[103:106], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[54:57], v[99:102], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[50:53], v[99:102], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[54:57], v[95:98], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[50:53], v[95:98], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[115:118], v[111:114], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[119:122], v[111:114], v[63:70] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[115:118], v[123:126], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[119:122], v[123:126], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v55, v42
	v_cvt_f32_i32_e32 v56, v43
	v_cvt_f32_i32_e32 v57, v44
	v_cvt_f32_i32_e32 v58, v45
	v_cvt_f32_i32_e32 v59, v46
	v_cvt_f32_i32_e32 v60, v47
	v_cvt_f32_i32_e32 v61, v48
	v_cvt_f32_i32_e32 v62, v49
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
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v1
	v_cvt_f32_i32_e32 v80, v2
	v_cvt_f32_i32_e32 v81, v3
	v_cvt_f32_i32_e32 v82, v4
	v_cvt_f32_i32_e32 v83, v5
	v_cvt_f32_i32_e32 v84, v6
	v_cvt_f32_i32_e32 v85, v7
	v_cvt_f32_i32_e32 v86, v8
.LBB0_11:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 1, v0
	v_bfe_u32 v5, v0, 4, 1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v2, v1, 16, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v58, v38, v58 :: v_dual_and_b32 v1, 48, v4
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 32, v2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or3_b32 v1, v5, v1, s18
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v5, s19, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v63, v33, v63 :: v_dual_add_f32 v68, v28, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v6, s19, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v56, v40, v56 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v60, v36, v60 :: v_dual_lshlrev_b32 v5, 1, v5
	v_dual_add_f32 v55, v10, v55 :: v_dual_lshlrev_b32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_or_b32_e32 v8, 4, v1
	v_or_b32_e32 v41, 8, v1
	v_or_b32_e32 v42, 12, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	v_or_b32_e32 v47, 0x80, v1
	v_or_b32_e32 v43, 16, v1
	v_or_b32_e32 v44, 20, v1
	v_or_b32_e32 v45, 24, v1
	v_or_b32_e32 v46, 28, v1
	v_or_b32_e32 v48, 0x84, v1
	s_clause 0x7
	buffer_load_u16 v7, v1, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	v_or_b32_e32 v49, 0x88, v1
	v_or_b32_e32 v50, 0x8c, v1
	v_or_b32_e32 v51, 0x90, v1
	v_or_b32_e32 v52, 0x94, v1
	v_or_b32_e32 v53, 0x98, v1
	v_or_b32_e32 v1, 0x9c, v1
	s_clause 0x7
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v1, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v27, v69 :: v_dual_add_f32 v74, v22, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v87, 0x5410 :: v_dual_and_b32 v4, 56, v4
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s19, s29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v68, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v2, s29, v2
	v_mul_lo_u32 v68, s29, v3
	s_add_i32 s1, s1, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v67, v29, v67 :: v_dual_add_f32 v72, v24, v72
	v_dual_add_f32 v73, v23, v73 :: v_dual_add_f32 v78, v18, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v69, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v3, s1, v4
	v_add3_u32 v69, s1, v4, 64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v75, v21, v75 :: v_dual_add_f32 v80, v16, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v72, s2
	v_cndmask_b32_e64 v23, v23, v73, s2
	v_cndmask_b32_e64 v22, v22, v74, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add_lshl_u32 v72, v3, v2, 1
	v_add_lshl_u32 v73, v69, v2, 1
	v_add_lshl_u32 v74, v3, v68, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v71, v25, v71 :: v_dual_add_f32 v76, v20, v76
	v_dual_add_f32 v77, v19, v77 :: v_dual_add_f32 v82, v14, v82
	v_dual_add_f32 v79, v17, v79 :: v_dual_add_f32 v84, v12, v84
	v_dual_add_f32 v81, v15, v81 :: v_dual_add_f32 v86, v9, v86
	v_dual_add_f32 v83, v13, v83 :: v_dual_and_b32 v0, 16, v0
	v_dual_add_f32 v85, v11, v85 :: v_dual_mov_b32 v88, 0x7632
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v75, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v39, v57 :: v_dual_add_f32 v62, v34, v62
	v_dual_add_f32 v59, v37, v59 :: v_dual_add_f32 v64, v32, v64
	v_dual_add_f32 v61, v35, v61 :: v_dual_add_f32 v66, v30, v66
	v_dual_add_f32 v65, v31, v65 :: v_dual_add_f32 v70, v26, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v55, s2
	v_cndmask_b32_e64 v40, v40, v56, s2
	v_cndmask_b32_e64 v38, v38, v58, s2
	v_cndmask_b32_e64 v36, v36, v60, s2
	v_cndmask_b32_e64 v20, v20, v76, s2
	v_cndmask_b32_e64 v19, v19, v77, s2
	v_cndmask_b32_e64 v18, v18, v78, s2
	v_cndmask_b32_e64 v17, v17, v79, s2
	v_cndmask_b32_e64 v16, v16, v80, s2
	v_cndmask_b32_e64 v15, v15, v81, s2
	v_cndmask_b32_e64 v14, v14, v82, s2
	v_cndmask_b32_e64 v13, v13, v83, s2
	v_cndmask_b32_e64 v12, v12, v84, s2
	v_cndmask_b32_e64 v11, v11, v85, s2
	v_cndmask_b32_e64 v9, v9, v86, s2
	v_cndmask_b32_e64 v39, v39, v57, s2
	v_cndmask_b32_e64 v37, v37, v59, s2
	v_cndmask_b32_e64 v34, v34, v62, s2
	v_cndmask_b32_e64 v33, v33, v63, s2
	v_cndmask_b32_e64 v32, v32, v64, s2
	v_cndmask_b32_e64 v30, v30, v66, s2
	v_cndmask_b32_e64 v29, v29, v67, s2
	v_cndmask_b32_e64 v26, v26, v70, s2
	v_cndmask_b32_e64 v25, v25, v71, s2
	v_cndmask_b32_e64 v35, v35, v61, s2
	v_cndmask_b32_e64 v31, v31, v65, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.h, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_mov_b32 s0, 0x76543210
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	v_mov_b16_e32 v55.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v4.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v70.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	s_mov_b32 s19, s7
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v6
	v_lshlrev_b32_e32 v2, 16, v5
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v6, 16, v8
	v_lshlrev_b32_e32 v5, 16, v7
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v8, 16, v42
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v42, 16, v44
	v_lshlrev_b32_e32 v7, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v75, v2, v7
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v7, v3, v7 :: v_dual_lshlrev_b32 v44, 16, v46
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v41, 16, v43
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v46, 16, v48
	v_lshlrev_b32_e32 v43, 16, v45
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v48, 16, v50
	v_lshlrev_b32_e32 v45, 16, v47
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v52
	v_lshlrev_b32_e32 v47, 16, v49
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v54
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v54, v2, v6 :: v_dual_lshlrev_b32 v49, 16, v51
	v_dual_mul_f32 v76, v2, v8 :: v_dual_lshlrev_b32 v51, 16, v53
	v_mul_f32_e32 v53, v2, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v2, v49
	v_mul_f32_e32 v86, v2, v50
	v_mul_f32_e32 v83, v2, v47
	v_mul_f32_e32 v84, v2, v48
	v_mul_f32_e32 v81, v2, v45
	v_mul_f32_e32 v82, v2, v46
	v_mul_f32_e32 v79, v2, v43
	v_mul_f32_e32 v80, v2, v44
	v_mul_f32_e32 v77, v2, v41
	v_dual_mul_f32 v78, v2, v42 :: v_dual_mul_f32 v5, v3, v5
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v40, v40, v54
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v6, v3, v6 :: v_dual_mul_f32 v89, v2, v51
	v_mul_f32_e32 v2, v2, v52
	v_dual_mul_f32 v8, v3, v8 :: v_dual_mul_f32 v37, v37, v77
	v_dual_mul_f32 v41, v3, v41 :: v_dual_mul_f32 v38, v38, v76
	v_dual_mul_f32 v42, v3, v42 :: v_dual_mul_f32 v33, v33, v81
	v_dual_mul_f32 v43, v3, v43 :: v_dual_mul_f32 v10, v10, v53
	v_dual_mul_f32 v44, v3, v44 :: v_dual_mul_f32 v29, v29, v85
	v_dual_mul_f32 v45, v3, v45 :: v_dual_mul_f32 v36, v36, v78
	v_dual_mul_f32 v46, v3, v46 :: v_dual_mul_f32 v5, v25, v5
	v_dual_mul_f32 v47, v3, v47 :: v_dual_mul_f32 v34, v34, v80
	v_dual_mul_f32 v48, v3, v48 :: v_dual_mul_f32 v21, v21, v41
	v_dual_mul_f32 v49, v3, v49 :: v_dual_mul_f32 v32, v32, v82
	v_dual_mul_f32 v50, v3, v50 :: v_dual_mul_f32 v17, v17, v45
	v_dual_mul_f32 v51, v3, v51 :: v_dual_mul_f32 v30, v30, v84
	v_dual_mul_f32 v3, v3, v52 :: v_dual_mul_f32 v28, v28, v86
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v39, v39, v75 :: v_dual_mul_f32 v2, v26, v2
	v_dual_mul_f32 v15, v15, v47 :: v_dual_mul_f32 v14, v14, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v11, v11, v51
	v_mul_f32_e32 v3, v9, v3
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, 0, v10 :: v_dual_max_f32 v10, 0, v40
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v35, v35, v79 :: v_dual_mul_f32 v6, v24, v6
	v_dual_mul_f32 v31, v31, v83 :: v_dual_mul_f32 v8, v22, v8
	v_dual_mul_f32 v7, v23, v7 :: v_dual_mul_f32 v18, v18, v44
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v22, 0, v39 :: v_dual_max_f32 v23, 0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v26, 0, v35
	v_dual_max_f32 v24, 0, v37 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v11, 0, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v9, v9, v9
	v_mul_f32_e32 v24, v24, v24
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v25, 0, v36 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v3, 0, v3 :: v_dual_mul_f32 v22, v22, v22
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v23, v23, v23 :: v_dual_mul_f32 v26, v26, v26
	v_dual_mul_f32 v15, v15, v15 :: v_dual_mul_f32 v14, v14, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v9.h
	v_mov_b16_e32 v55.l, v10.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v11, v11, v11 :: v_dual_and_b32 v36, 1, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.l, v24.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v35, v3, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v4.l, v15.h
	v_and_b32_e32 v3, 1, v55
	v_mov_b16_e32 v1.l, v23.h
	v_and_b32_e32 v38, 1, v57
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v32, 0, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v3, v10, v3, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v25.h
	v_mov_b16_e32 v56.l, v22.h
	v_add3_u32 v15, v15, v4, 0x7fff
	v_add3_u32 v9, v9, v36, 0x7fff
	v_add3_u32 v24, v24, v38, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_and_b32 v4, 1, v1
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v29, 0, v29
	v_max_f32_e32 v28, 0, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v25, v4, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v33, v33, v33 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v26.h
	v_mov_b16_e32 v1.l, v34.h
	v_mov_b16_e32 v3.l, v9.h
	v_mov_b16_e32 v4.l, v24.h
	v_and_b32_e32 v37, 1, v56
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v30, v30, v30
	v_dual_mul_f32 v29, v29, v29 :: v_dual_mul_f32 v28, v28, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v33.h
	v_and_b32_e32 v39, 1, v58
	v_add3_u32 v22, v22, v37, 0x7fff
	v_add3_u32 v9, v23, v10, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v27, v27, v89 :: v_dual_mul_f32 v20, v20, v42
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v61.l, v29.h
	v_and_b32_e32 v40, 1, v59
	v_mov_b16_e32 v9.l, v22.h
	v_add3_u32 v0, v34, v10, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	v_dual_cndmask_b32 v22, v4, v3 :: v_dual_cndmask_b32 v3, v3, v4
	v_cndmask_b32_e32 v4, 0x1054, v87, vcc_lo
	v_add3_u32 v26, v26, v39, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v2, 0, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v63.l, v5.h
	v_dual_cndmask_b32 v23, 0x3276, v88 :: v_dual_and_b32 v42, 1, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v0.l, v26.h
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v28.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v8, 0, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_cndmask_b32 v25, v0, v9 :: v_dual_and_b32 v44, 1, v63
	v_cndmask_b32_e32 v0, v9, v0, vcc_lo
	v_lshl_or_b32 v9, v23, 8, v23
	v_add3_u32 v23, v30, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v20, 0, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.l, v27.h
	v_add3_u32 v33, v33, v40, 0x7fff
	v_add3_u32 v29, v29, v42, 0x7fff
	v_lshl_or_b32 v4, v4, 8, v4
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v32, v10, 0x7fff
	v_add3_u32 v24, v28, v24, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v19, v19, v43 :: v_dual_mul_f32 v16, v16, v46
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v21, v21, v21 :: v_dual_mul_f32 v20, v20, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v33.h
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v9, 0x760076, v9
	v_and_b32_e32 v26, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	v_mov_b16_e32 v24.l, v29.h
	v_and_b32_e32 v43, 1, v62
	v_mov_b16_e32 v64.l, v7.h
	v_mov_b16_e32 v65.l, v21.h
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v9, v9, 4, v9
	v_add3_u32 v27, v27, v43, 0x7fff
	v_add3_u32 v2, v2, v26, 0x7fff
	v_and_b32_e32 v26, 1, v1
	v_mov_b16_e32 v1.l, v8.h
	v_and_b32_e32 v45, 1, v64
	v_and_b32_e32 v46, 1, v65
	v_add3_u32 v5, v5, v44, 0x7fff
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v2.l, v27.h
	v_dual_cndmask_b32 v27, v24, v10 :: v_dual_cndmask_b32 v10, v10, v24
	v_and_b32_e32 v24, 0x5040504, v4
	v_and_b32_e32 v28, 0x7060706, v9
	v_add3_u32 v26, v6, v26, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v60.l, v31.h
	v_add3_u32 v7, v7, v45, 0x7fff
	v_mov_b16_e32 v26.l, v5.h
	v_perm_b32 v4, v0, v25, v24
	v_perm_b32 v5, v0, v25, v28
	v_add3_u32 v0, v8, v6, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v16, 0, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v7.h
	v_and_b32_e32 v41, 1, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v19, v19, v19 :: v_dual_mul_f32 v18, v18, v18
	v_dual_mul_f32 v17, v17, v17 :: v_dual_mul_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v31, v31, v41, 0x7fff
	v_mov_b16_e32 v1.l, v20.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v13, v13, v49 :: v_dual_mul_f32 v12, v12, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v67.l, v17.h
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v23.l, v31.h
	v_and_b32_e32 v29, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v12, 0, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v48, 1, v67
	v_cndmask_b32_e32 v9, v2, v23, vcc_lo
	v_cndmask_b32_e32 v23, v23, v2, vcc_lo
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v22, v24
	v_perm_b32 v3, v3, v22, v28
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v16.h
	v_mov_b16_e32 v66.l, v19.h
	v_add3_u32 v21, v21, v46, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v13, v13, v13 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v6, v10, v27, v24
	v_perm_b32 v7, v10, v27, v28
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v14.h
	v_add3_u32 v20, v20, v29, 0x7fff
	v_mov_b16_e32 v20.l, v21.h
	v_and_b32_e32 v47, 1, v66
	v_mov_b16_e32 v70.l, v13.h
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v12.h
	v_mov_b16_e32 v71.l, v11.h
	v_add3_u32 v19, v19, v47, 0x7fff
	v_add3_u32 v18, v18, v22, 0x7fff
	v_add3_u32 v17, v17, v48, 0x7fff
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v35.h
	v_and_b32_e32 v50, 1, v71
	v_mov_b16_e32 v18.l, v19.h
	v_and_b32_e32 v49, 1, v70
	v_cndmask_b32_e32 v19, v20, v26, vcc_lo
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v11, v11, v50, 0x7fff
	v_add3_u32 v16, v16, v10, 0x7fff
	v_cndmask_b32_e32 v10, v0, v18, vcc_lo
	v_cndmask_b32_e32 v0, v18, v0, vcc_lo
	v_add3_u32 v13, v13, v49, 0x7fff
	v_add3_u32 v14, v14, v21, 0x7fff
	v_add3_u32 v12, v12, v22, 0x7fff
	v_add3_u32 v1, v35, v1, 0x7fff
	v_cndmask_b32_e32 v20, v26, v20, vcc_lo
	v_mov_b16_e32 v16.l, v17.h
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v12.l, v13.h
	v_mov_b16_e32 v1.l, v11.h
	v_permlanex16_b32 v17, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, v16, v12 :: v_dual_cndmask_b32 v18, v14, v1
	v_perm_b32 v10, v17, v19, v24
	v_perm_b32 v11, v17, v19, v28
	v_cndmask_b32_e32 v16, v12, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v1, v1, v14, vcc_lo
	v_permlanex16_b32 v17, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v23, v9, v24
	v_perm_b32 v9, v23, v9, v28
	v_perm_b32 v12, v13, v0, v24
	v_perm_b32 v13, v13, v0, v28
	v_perm_b32 v14, v15, v16, v24
	v_perm_b32 v15, v15, v16, v28
	v_perm_b32 v16, v17, v1, v24
	v_perm_b32 v17, v17, v1, v28
	v_add_lshl_u32 v0, v69, v68, 1
	s_clause 0x3
	buffer_store_b128 v[2:5], v72, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v73, s[16:19], 0 offen
	buffer_store_b128 v[10:13], v74, s[16:19], 0 offen
	buffer_store_b128 v[14:17], v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 175
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8676
; TotalNumSgprs: 38
; NumVgprs: 175
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
