	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v10, 2, v0
	v_lshlrev_b32_e32 v12, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v21, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v97, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 62, v10
	v_and_b32_e32 v15, 48, v12
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 63
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
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v10, s30, v10
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
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
	s_min_i32 s8, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s10, 0, s7
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s7, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s31, s15, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s31, v13
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s3, s8
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s7, v13
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s31, s7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s14, s3, 7
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 63
.Ltmp13:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s28, s30
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v16, v10, v15, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v17, s7, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s29, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s7, v16
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v9, 7, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v14, v9, 4, v1
	v_add3_u32 v11, s14, s4, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, s31, v11
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v11 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v1, s[24:27], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s15, v11
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v11, s15, 7, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s31, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v18, s15, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v17
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v19, s31, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s7, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v17, s7, v13
	v_or_b32_e32 v55, s7, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[51:54], v10, s[20:23], 0 offen
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s30, v17
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v55
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v55, s7, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s31, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_clause 0x1
	buffer_load_b128 v[35:38], v11, s[24:27], 0 offen
	buffer_load_b128 v[39:42], v17, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v11, 0x80000000, v18, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[55:58], v55, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v10, v0, 0, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v17, 0x80000000, v19, s3
	s_clause 0x1
	buffer_load_b128 v[43:46], v11, s[24:27], 0 offen
	buffer_load_b128 v[47:50], v17, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 0x420, v10
	v_and_b32_e32 v17, 8, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v11, 48, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v18, v10, v13
	v_lshlrev_b32_e32 v10, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v19, v12, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v20, v21, 10, v18
	v_and_b32_e32 v18, 32, v0
	v_lshlrev_b32_e32 v12, 3, v21
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v70, 0, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v21, 0x90, v20
	v_xor_b32_e32 v22, 0x120, v20
	v_add_nc_u32_e32 v71, 0, v20
	v_xor_b32_e32 v23, 0x1b0, v20
	v_xor_b32_e32 v24, 0x210, v20
	v_add_nc_u32_e32 v72, 0, v21
	v_xor_b32_e32 v25, 0x330, v20
	v_add_nc_u32_e32 v73, 0, v22
	v_xor_b32_e32 v26, 0x3a0, v20
	v_add_nc_u32_e32 v74, 0, v23
	v_add_nc_u32_e32 v75, 0, v24
	v_add_nc_u32_e32 v76, 0, v25
	v_lshlrev_b32_e32 v11, 5, v0
	v_add_nc_u32_e32 v77, 0, v26
	s_waitcnt vmcnt(8)
	v_perm_b32 v59, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v60, v32, v28, 0x5010400
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v61, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v62, v34, v30, 0x5010400
	v_perm_b32 v63, v34, v30, 0x7030602
	v_and_b16 v27.l, 0xff, v59.l
	v_lshrrev_b32_e32 v64, 8, v59
	v_lshrrev_b32_e32 v65, 24, v59
	v_and_b16 v27.h, 0xff, v59.h
	v_and_b16 v28.l, 0xff, v31.l
	v_lshrrev_b32_e32 v59, 8, v31
	v_lshrrev_b32_e32 v66, 24, v31
	v_and_b16 v28.h, 0xff, v31.h
	v_and_b16 v29.l, 0xff, v60.l
	v_lshrrev_b32_e32 v67, 8, v60
	v_lshrrev_b32_e32 v68, 24, v60
	v_and_b16 v29.h, 0xff, v60.h
	v_and_b16 v30.l, 0xff, v32.l
	v_lshrrev_b32_e32 v60, 8, v32
	v_lshrrev_b32_e32 v69, 24, v32
	v_and_b16 v30.h, 0xff, v32.h
	v_and_b16 v31.l, 0xff, v61.l
	v_lshrrev_b32_e32 v78, 8, v61
	v_lshrrev_b32_e32 v79, 24, v61
	v_and_b16 v31.h, 0xff, v61.h
	v_and_b16 v32.l, 0xff, v33.l
	v_lshrrev_b32_e32 v61, 8, v33
	v_lshrrev_b32_e32 v80, 24, v33
	v_and_b16 v32.h, 0xff, v33.h
	v_and_b16 v33.l, 0xff, v62.l
	v_lshrrev_b32_e32 v81, 8, v62
	v_lshrrev_b32_e32 v82, 24, v62
	v_and_b16 v33.h, 0xff, v62.h
	v_and_b16 v34.l, 0xff, v63.l
	v_lshrrev_b32_e32 v62, 8, v63
	v_lshrrev_b32_e32 v83, 24, v63
	v_and_b16 v34.h, 0xff, v63.h
	s_waitcnt vmcnt(5)
	v_perm_b32 v92, v40, v36, 0x5010400
	v_perm_b32 v40, v40, v36, 0x7030602
	v_perm_b32 v93, v41, v37, 0x5010400
	v_perm_b32 v41, v41, v37, 0x7030602
	v_perm_b32 v94, v42, v38, 0x5010400
	v_perm_b32 v95, v42, v38, 0x7030602
	v_and_b16 v37.l, 0xff, v92.l
	v_and_b16 v37.h, 0xff, v92.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v96, v47, v43, 0x5010400
	v_perm_b32 v47, v47, v43, 0x7030602
	v_perm_b32 v98, v48, v44, 0x5010400
	v_perm_b32 v48, v48, v44, 0x7030602
	v_perm_b32 v99, v49, v45, 0x5010400
	v_perm_b32 v49, v49, v45, 0x7030602
	v_perm_b32 v100, v50, v46, 0x5010400
	v_perm_b32 v101, v50, v46, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v38.l, 0xff, v40.l
	v_and_b16 v38.h, 0xff, v40.h
	v_and_b16 v42.l, 0xff, v95.l
	v_and_b16 v42.h, 0xff, v95.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v43.l, 0xff, v96.l
	v_and_b16 v43.h, 0xff, v96.h
	v_and_b16 v44.l, 0xff, v47.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v63, v5, v1, 0x5010400
	v_perm_b32 v84, v5, v1, 0x7030602
	v_perm_b32 v85, v6, v2, 0x5010400
	v_perm_b32 v86, v6, v2, 0x7030602
	v_perm_b32 v87, v7, v3, 0x5010400
	v_perm_b32 v88, v7, v3, 0x7030602
	v_perm_b32 v89, v8, v4, 0x5010400
	v_perm_b32 v90, v8, v4, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v1.l, 8, v64.l
	v_lshlrev_b16 v1.h, 8, v65.l
	v_lshlrev_b16 v2.l, 8, v59.l
	v_lshlrev_b16 v2.h, 8, v66.l
	v_lshlrev_b16 v3.l, 8, v67.l
	v_lshlrev_b16 v3.h, 8, v68.l
	v_lshlrev_b16 v4.l, 8, v60.l
	v_lshlrev_b16 v4.h, 8, v69.l
	v_lshlrev_b16 v5.l, 8, v78.l
	v_lshlrev_b16 v5.h, 8, v79.l
	v_lshlrev_b16 v6.l, 8, v61.l
	v_lshlrev_b16 v6.h, 8, v80.l
	v_lshlrev_b16 v7.l, 8, v81.l
	v_lshlrev_b16 v7.h, 8, v82.l
	v_lshlrev_b16 v8.l, 8, v62.l
	v_lshlrev_b16 v8.h, 8, v83.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v59.l, 0xff, v63.l
	v_lshrrev_b32_e32 v67, 8, v63
	v_lshrrev_b32_e32 v68, 24, v63
	v_and_b16 v59.h, 0xff, v63.h
	v_and_b16 v60.l, 0xff, v84.l
	v_lshrrev_b32_e32 v69, 8, v84
	v_lshrrev_b32_e32 v78, 24, v84
	v_and_b16 v60.h, 0xff, v84.h
	v_and_b16 v61.l, 0xff, v85.l
	v_lshrrev_b32_e32 v79, 8, v85
	v_lshrrev_b32_e32 v80, 24, v85
	v_and_b16 v61.h, 0xff, v85.h
	v_and_b16 v62.l, 0xff, v86.l
	v_lshrrev_b32_e32 v81, 8, v86
	v_lshrrev_b32_e32 v82, 24, v86
	v_and_b16 v62.h, 0xff, v86.h
	v_and_b16 v63.l, 0xff, v87.l
	v_lshrrev_b32_e32 v83, 8, v87
	v_lshrrev_b32_e32 v84, 24, v87
	v_and_b16 v63.h, 0xff, v87.h
	v_and_b16 v64.l, 0xff, v88.l
	v_lshrrev_b32_e32 v85, 8, v88
	v_lshrrev_b32_e32 v86, 24, v88
	v_and_b16 v64.h, 0xff, v88.h
	v_and_b16 v65.l, 0xff, v89.l
	v_lshrrev_b32_e32 v87, 8, v89
	v_lshrrev_b32_e32 v88, 24, v89
	v_and_b16 v65.h, 0xff, v89.h
	v_and_b16 v66.l, 0xff, v90.l
	v_lshrrev_b32_e32 v89, 8, v90
	v_lshrrev_b32_e32 v91, 24, v90
	v_and_b16 v66.h, 0xff, v90.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v90, v39, v35, 0x5010400
	v_perm_b32 v39, v39, v35, 0x7030602
	v_or_b16 v1.l, v27.l, v1.l
	v_or_b16 v4.l, v30.l, v4.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v27.l, 8, v67.l
	v_lshlrev_b16 v30.l, 8, v81.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v67, 8, v90
	v_or_b16 v1.h, v27.h, v1.h
	v_or_b16 v4.h, v30.h, v4.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v27.h, 8, v68.l
	v_lshlrev_b16 v30.h, 8, v82.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v68, 24, v90
	v_or_b16 v2.l, v28.l, v2.l
	v_or_b16 v5.l, v31.l, v5.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v28.l, 8, v69.l
	v_lshlrev_b16 v31.l, 8, v83.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v69, 8, v39
	v_or_b16 v2.h, v28.h, v2.h
	v_or_b16 v5.h, v31.h, v5.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v28.h, 8, v78.l
	v_lshlrev_b16 v31.h, 8, v84.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v78, 24, v39
	v_or_b16 v3.l, v29.l, v3.l
	v_or_b16 v3.h, v29.h, v3.h
	v_or_b16 v6.l, v32.l, v6.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v29.l, 8, v79.l
	v_lshlrev_b16 v32.l, 8, v85.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v79, 8, v92
	v_or_b16 v6.h, v32.h, v6.h
	v_or_b16 v7.l, v33.l, v7.l
	v_or_b16 v7.h, v33.h, v7.h
	v_or_b16 v8.l, v34.l, v8.l
	v_or_b16 v8.h, v34.h, v8.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v29.h, 8, v80.l
	v_lshlrev_b16 v32.h, 8, v86.l
	v_lshlrev_b16 v33.l, 8, v87.l
	v_lshlrev_b16 v33.h, 8, v88.l
	v_lshlrev_b16 v34.l, 8, v89.l
	v_lshlrev_b16 v34.h, 8, v91.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v35.l, 0xff, v90.l
	v_and_b16 v35.h, 0xff, v90.h
	v_and_b16 v36.l, 0xff, v39.l
	v_and_b16 v36.h, 0xff, v39.h
	v_lshrrev_b32_e32 v80, 24, v92
	v_lshrrev_b32_e32 v81, 8, v40
	v_lshrrev_b32_e32 v82, 24, v40
	v_and_b16 v39.l, 0xff, v93.l
	v_lshrrev_b32_e32 v83, 8, v93
	v_lshrrev_b32_e32 v84, 24, v93
	v_and_b16 v39.h, 0xff, v93.h
	v_and_b16 v40.l, 0xff, v41.l
	v_lshrrev_b32_e32 v85, 8, v41
	v_lshrrev_b32_e32 v86, 24, v41
	v_and_b16 v40.h, 0xff, v41.h
	v_and_b16 v41.l, 0xff, v94.l
	v_lshrrev_b32_e32 v87, 8, v94
	v_lshrrev_b32_e32 v88, 24, v94
	v_and_b16 v41.h, 0xff, v94.h
	v_lshrrev_b32_e32 v89, 8, v95
	v_lshrrev_b32_e32 v90, 24, v95
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v91, 8, v96
	v_lshrrev_b32_e32 v92, 24, v96
	v_lshrrev_b32_e32 v93, 8, v47
	v_lshrrev_b32_e32 v94, 24, v47
	v_and_b16 v44.h, 0xff, v47.h
	v_and_b16 v45.l, 0xff, v98.l
	v_lshrrev_b32_e32 v95, 8, v98
	v_lshrrev_b32_e32 v96, 24, v98
	v_and_b16 v45.h, 0xff, v98.h
	v_and_b16 v46.l, 0xff, v48.l
	v_lshrrev_b32_e32 v98, 8, v48
	v_lshrrev_b32_e32 v102, 24, v48
	v_and_b16 v46.h, 0xff, v48.h
	v_and_b16 v47.l, 0xff, v99.l
	v_lshrrev_b32_e32 v103, 8, v99
	v_lshrrev_b32_e32 v104, 24, v99
	v_and_b16 v47.h, 0xff, v99.h
	v_and_b16 v48.l, 0xff, v49.l
	v_lshrrev_b32_e32 v99, 8, v49
	v_lshrrev_b32_e32 v105, 24, v49
	v_and_b16 v48.h, 0xff, v49.h
	v_and_b16 v49.l, 0xff, v100.l
	v_lshrrev_b32_e32 v106, 8, v100
	v_lshrrev_b32_e32 v107, 24, v100
	v_and_b16 v49.h, 0xff, v100.h
	v_lshrrev_b32_e32 v100, 8, v101
	v_lshrrev_b32_e32 v108, 24, v101
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v1
	ds_store_b16_d16_hi v71, v1 offset:64
	ds_store_b16 v72, v2
	ds_store_b16_d16_hi v72, v2 offset:64
	ds_store_b16 v73, v3
	ds_store_b16_d16_hi v73, v3 offset:64
	ds_store_b16 v74, v4
	ds_store_b16_d16_hi v74, v4 offset:64
	ds_store_b16 v75, v5
	ds_store_b16_d16_hi v75, v5 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.h, v62.l, v30.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v30.l, 8, v67.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v27.l, v59.l, v27.l
	v_or_b16 v4.l, v62.h, v30.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v30.h, 8, v68.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.h, v63.l, v31.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v31.l, 8, v69.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v5.l, v63.h, v31.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v31.h, 8, v78.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.l, v59.h, v27.h
	v_or_b16 v5.h, v64.l, v32.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v32.l, 8, v79.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v50.l, 0xff, v101.l
	v_and_b16 v50.h, 0xff, v101.h
	v_or_b16 v1.h, v60.l, v28.l
	v_or_b16 v2.l, v60.h, v28.h
	v_or_b16 v2.h, v61.l, v29.l
	v_or_b16 v3.l, v61.h, v29.h
	v_or_b16 v27.h, v64.h, v32.h
	v_or_b16 v28.l, v65.l, v33.l
	v_or_b16 v28.h, v65.h, v33.h
	v_or_b16 v29.l, v66.l, v34.l
	v_or_b16 v29.h, v66.h, v34.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v32.h, 8, v80.l
	v_lshlrev_b16 v33.l, 8, v81.l
	v_lshlrev_b16 v33.h, 8, v82.l
	v_lshlrev_b16 v34.l, 8, v83.l
	v_lshlrev_b16 v34.h, 8, v84.l
	v_lshlrev_b16 v59.l, 8, v85.l
	v_lshlrev_b16 v59.h, 8, v86.l
	v_lshlrev_b16 v60.l, 8, v87.l
	v_lshlrev_b16 v60.h, 8, v88.l
	v_lshlrev_b16 v61.l, 8, v89.l
	v_lshlrev_b16 v61.h, 8, v90.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v62.l, 8, v91.l
	v_lshlrev_b16 v62.h, 8, v92.l
	v_lshlrev_b16 v63.l, 8, v93.l
	v_lshlrev_b16 v63.h, 8, v94.l
	v_lshlrev_b16 v64.l, 8, v95.l
	v_lshlrev_b16 v64.h, 8, v96.l
	v_lshlrev_b16 v65.l, 8, v98.l
	v_lshlrev_b16 v65.h, 8, v102.l
	v_lshlrev_b16 v66.l, 8, v103.l
	v_lshlrev_b16 v66.h, 8, v104.l
	v_lshlrev_b16 v67.l, 8, v99.l
	v_lshlrev_b16 v67.h, 8, v105.l
	v_lshlrev_b16 v68.l, 8, v106.l
	v_lshlrev_b16 v68.h, 8, v107.l
	v_lshlrev_b16 v69.l, 8, v100.l
	v_lshlrev_b16 v69.h, 8, v108.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v70, v[51:54] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v71, v27 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v6 offset:640
	ds_store_b16_d16_hi v71, v6 offset:704
	ds_store_b16 v76, v7
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v71, v1 offset:16448
	ds_store_b16_d16_hi v72, v1 offset:16384
	ds_store_b16 v72, v2 offset:16448
	ds_store_b16_d16_hi v73, v2 offset:16384
	ds_store_b16 v73, v3 offset:16448
	ds_store_b16_d16_hi v74, v3 offset:16384
	ds_store_b16 v74, v4 offset:16448
	ds_store_b16_d16_hi v75, v4 offset:16384
	ds_store_b16 v75, v5 offset:16448
	ds_store_b16_d16_hi v71, v5 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v76, v7 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v27 offset:17088
	ds_store_b16 v76, v28 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v28 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v77, v8 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v77, v29 offset:16384
	ds_store_b16_d16_hi v77, v29 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v35.l, v30.l
	v_or_b16 v1.h, v35.h, v30.h
	v_or_b16 v2.l, v36.l, v31.l
	v_or_b16 v2.h, v36.h, v31.h
	v_or_b16 v3.l, v37.l, v32.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.h, v37.h, v32.h
	v_or_b16 v4.l, v38.l, v33.l
	v_or_b16 v4.h, v38.h, v33.h
	v_or_b16 v5.l, v39.l, v34.l
	v_or_b16 v5.h, v39.h, v34.h
	v_or_b16 v6.l, v40.l, v59.l
	v_or_b16 v6.h, v40.h, v59.h
	v_or_b16 v7.l, v41.l, v60.l
	v_or_b16 v7.h, v41.h, v60.h
	v_or_b16 v8.l, v42.l, v61.l
	v_or_b16 v8.h, v42.h, v61.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v27.l, v43.l, v62.l
	v_or_b16 v27.h, v43.h, v62.h
	v_or_b16 v28.l, v44.l, v63.l
	v_or_b16 v28.h, v44.h, v63.h
	v_or_b16 v29.l, v45.l, v64.l
	v_or_b16 v29.h, v45.h, v64.h
	v_or_b16 v30.l, v46.l, v65.l
	v_or_b16 v30.h, v46.h, v65.h
	v_or_b16 v31.l, v47.l, v66.l
	v_or_b16 v31.h, v47.h, v66.h
	v_or_b16 v32.l, v48.l, v67.l
	v_or_b16 v32.h, v48.h, v67.h
	v_or_b16 v33.l, v49.l, v68.l
	v_or_b16 v33.h, v49.h, v68.h
	v_or_b16 v34.l, v50.l, v69.l
	v_or_b16 v34.h, v50.h, v69.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v1 offset:8192
	ds_store_b16_d16_hi v71, v1 offset:8256
	ds_store_b16 v72, v2 offset:8192
	ds_store_b16_d16_hi v72, v2 offset:8256
	ds_store_b16 v73, v3 offset:8192
	ds_store_b16_d16_hi v73, v3 offset:8256
	ds_store_b16 v74, v4 offset:8192
	ds_store_b16_d16_hi v74, v4 offset:8256
	ds_store_b16 v75, v5 offset:8192
	ds_store_b16_d16_hi v75, v5 offset:8256
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v70, v[55:58] offset:36864
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v71, v27 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v71, v6 offset:8832
	ds_store_b16_d16_hi v71, v6 offset:8896
	ds_store_b16 v76, v7 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v27 offset:24640
	ds_store_b16 v72, v28 offset:24576
	ds_store_b16_d16_hi v72, v28 offset:24640
	ds_store_b16 v73, v29 offset:24576
	ds_store_b16_d16_hi v73, v29 offset:24640
	ds_store_b16 v74, v30 offset:24576
	ds_store_b16_d16_hi v74, v30 offset:24640
	ds_store_b16 v75, v31 offset:24576
	ds_store_b16_d16_hi v75, v31 offset:24640
	ds_store_b16 v71, v32 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v76, v7 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v71, v32 offset:25280
	ds_store_b16 v76, v33 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v77, v8 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v33 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v77, v8 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v77, v34 offset:24576
	ds_store_b16_d16_hi v77, v34 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 0x430, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v6, 32, v0
	v_and_b32_e32 v102, 0x800, v11
	v_lshl_or_b32 v103, v9, 6, v12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v98, v97, 6, v1
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v99, 16, v98
	v_xor_b32_e32 v100, 32, v98
	v_xor_b32_e32 v101, 48, v98
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
.LBB0_3:                                ; %Flow320
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v2, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s34, s5, 6
	s_add_i32 s0, s7, 64
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 0x420, v1
	v_lshl_or_b32 v103, v9, 6, v12
	v_and_b32_e32 v3, 0x430, v10
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v102, 0x800, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x210, v2, v1
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v27, s31, v14
	v_lshl_or_b32 v98, v97, 6, v3
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v74, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v103
	v_mov_b32_e32 v86, 0
	v_xor_b32_e32 v99, 16, v98
	v_xor_b32_e32 v100, 32, v98
	v_xor_b32_e32 v101, 48, v98
	v_or_b32_e32 v28, v1, v102
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v29, 16, v28
	v_xor_b32_e32 v30, 32, v28
	v_xor_b32_e32 v31, 48, v28
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v88, 0
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v35, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s36, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s34, s34, -3
	s_mov_b32 s35, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 6
	s_mov_b32 s7, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s0, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v32, s37, v98
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s4, v15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s4, v16
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v124, s37, v99
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v125, s7, v28
	v_add_nc_u32_e32 v126, s7, v29
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[183:186], v32 offset:2048
	ds_load_b128 v[187:190], v124 offset:2048
	ds_load_b128 v[112:115], v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v125
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[120:123], v124
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[135:138], v126
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v32, s36, v28
	v_add_nc_u32_e32 v124, s36, v29
	ds_load_b128 v[191:194], v32 offset:4096
	ds_load_b128 v[195:198], v124 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[116:119], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[116:119], v[183:186], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v125 offset:4096
	ds_load_b128 v[151:154], v126 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[135:138], v[120:123], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[135:138], v[187:190], v[127:134] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[191:194], v[112:115], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[195:198], v[120:123], v[159:166] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[116:119], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[116:119], v[183:186], v[1:8] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[116:119], v32
	ds_load_b128 v[175:178], v124
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[151:154], v[120:123], v[135:142] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v32, s37, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[187:190], v[143:150] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v124, s7, v30
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[116:119], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[116:119], v[183:186], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v124
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[175:178], v[120:123], v[151:158] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[120:123], v32 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v32, s36, v30
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[167:174], v[175:178], v[187:190], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[191:194], v[183:186], v[1:8] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[183:186], v32 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[175:182], v[195:198], v[187:190], v[175:182] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[116:119], v[112:115], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[116:119], v[120:123], v[127:134] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v124 offset:4096
	v_add_nc_u32_e32 v124, s7, v31
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[183:186], v[112:115], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[183:186], v[120:123], v[175:182] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[116:119], v[112:115], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[116:119], v[120:123], v[143:150] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[116:119], v32
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v32, s37, v101
	s_mov_b32 s37, s33
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[116:119], v[112:115], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[116:119], v[120:123], v[167:174] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v124
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[120:123], v32 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v32, s36, v31
	s_mov_b32 s36, s1
	ds_load_b128 v[183:186], v32 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[116:119], v[112:115], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[116:119], v[120:123], v[127:134] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v124 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v109
	v_cvt_f32_i32_e32 v126, v111
	v_cvt_f32_i32_e32 v125, v110
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[183:186], v[112:115], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[183:186], v[120:123], v[175:182] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v124
	v_dual_add_f32 v66, v66, v126 :: v_dual_add_f32 v65, v65, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v111, v159
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v61, v61, v111
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[116:119], v[112:115], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[116:119], v[120:123], v[143:150] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[116:119], v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v159, v143
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v143, v175
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v50, v50, v138
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v59, v59, v159
	v_add_f32_e32 v57, v57, v135
	v_add_f32_e32 v49, v49, v137
	v_add_f32_e32 v41, v41, v139
	v_add_f32_e32 v33, v33, v141
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v63, v63, v143
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[116:119], v[112:115], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[116:119], v[120:123], v[167:174] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v120, v105
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v112, v161
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v161, v145
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v32, v151
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v151, v127
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v127, v167
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v167, s4, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s4, s31
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v105, v155
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v155, v131
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v167
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v167, s4, v14
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v131, v168
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v51, v51, v161 :: v_dual_add_nc_u32 v168, s4, v27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v104
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v167, 0x80000000, v167, vcc_lo
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v104, v153
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v153, v129
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v129, v171
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v171, 0x80000000, v168, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v121, v106
	v_cvt_f32_i32_e32 v122, v107
	v_cvt_f32_i32_e32 v123, v108
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v107, v152
	v_cvt_f32_i32_e32 v108, v154
	v_cvt_f32_i32_e32 v109, v156
	v_cvt_f32_i32_e32 v106, v157
	v_cvt_f32_i32_e32 v110, v158
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v152, v128
	v_cvt_f32_i32_e32 v154, v130
	v_cvt_f32_i32_e32 v156, v132
	v_cvt_f32_i32_e32 v157, v133
	v_cvt_f32_i32_e32 v158, v134
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v128, v169
	v_cvt_f32_i32_e32 v132, v170
	v_cvt_f32_i32_e32 v133, v172
	v_cvt_f32_i32_e32 v130, v173
	v_cvt_f32_i32_e32 v134, v174
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[167:170], v167, s[24:27], 0 offen
	buffer_load_b128 v[171:174], v171, s[24:27], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s4, s4, s15
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v113, v163
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v163, v147
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v147, v176
	v_cvt_f32_i32_e32 v115, v160
	v_cvt_f32_i32_e32 v117, v164
	v_cvt_f32_i32_e32 v114, v165
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v160, v144
	v_cvt_f32_i32_e32 v164, v148
	v_cvt_f32_i32_e32 v165, v149
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v144, v177
	v_cvt_f32_i32_e32 v148, v178
	v_cvt_f32_i32_e32 v116, v162
	v_cvt_f32_i32_e32 v118, v166
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v162, v146
	v_cvt_f32_i32_e32 v166, v150
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v145, v179
	v_cvt_f32_i32_e32 v149, v180
	v_cvt_f32_i32_e32 v146, v181
	v_cvt_f32_i32_e32 v150, v182
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v70, v70, v110 :: v_dual_add_f32 v79, v79, v129
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v68, v68, v158 :: v_dual_add_f32 v81, v81, v104
	v_dual_add_f32 v76, v76, v156 :: v_dual_add_f32 v77, v77, v105
	v_dual_add_f32 v60, v60, v160 :: v_dual_add_f32 v69, v69, v106
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v86, v86, v107 :: v_dual_add_f32 v37, v37, v114
	v_dual_add_f32 v82, v82, v108 :: v_dual_add_f32 v93, v93, v127
	v_dual_add_f32 v78, v78, v109 :: v_dual_add_f32 v89, v89, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v88, v88, v120 :: v_dual_add_f32 v87, v87, v119
	v_dual_add_f32 v84, v84, v122 :: v_dual_add_f32 v83, v83, v121
	v_dual_add_f32 v73, v73, v123 :: v_dual_add_f32 v96, v96, v152
	v_dual_add_f32 v95, v95, v151 :: v_dual_add_f32 v92, v92, v154
	v_add_f32_e32 v43, v43, v163
	v_add_f32_e32 v91, v91, v153
	v_add_f32_e32 v75, v75, v155
	v_dual_add_f32 v67, v67, v157 :: v_dual_add_f32 v52, v52, v162
	v_dual_add_f32 v44, v44, v164 :: v_dual_add_f32 v45, v45, v113
	v_dual_add_f32 v36, v36, v166 :: v_dual_add_f32 v53, v53, v112
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v62, v62, v115 :: v_dual_add_f32 v71, v71, v130
	v_add_f32_e32 v54, v54, v116
	v_dual_add_f32 v46, v46, v117 :: v_dual_add_f32 v55, v55, v144
	v_dual_add_f32 v38, v38, v118 :: v_dual_add_f32 v47, v47, v145
	v_dual_add_f32 v94, v94, v131 :: v_dual_add_f32 v39, v39, v146
	v_add_f32_e32 v48, v48, v149
	v_add_f32_e32 v40, v40, v150
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v58, v58, v136 :: v_dual_add_f32 v35, v35, v165
	v_add_f32_e32 v42, v42, v140
	v_dual_add_f32 v34, v34, v142 :: v_dual_add_f32 v85, v85, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v175, v171, v167, 0x5010400
	v_perm_b32 v176, v171, v167, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v167, s4, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v177, v172, v168, 0x5010400
	v_perm_b32 v178, v172, v168, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v168, s4, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v179, v173, v169, 0x5010400
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v167, 0x80000000, v167, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v180, v173, v169, 0x7030602
	v_perm_b32 v181, v174, v170, 0x5010400
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v171, 0x80000000, v168, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v182, v174, v170, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[167:170], v167, s[24:27], 0 offen
	buffer_load_b128 v[171:174], v171, s[24:27], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s35, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s4, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s35, s4, 0
	s_mov_b32 s4, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s7, s35, 12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v104, 8, v179
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s6, s7, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s3, s6, s7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v90, v90, v132
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v110, s3, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v80, v80, v133
	v_add_f32_e32 v72, v72, v134
	v_add_f32_e32 v64, v64, v147
	v_add_f32_e32 v56, v56, v148
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s33, s6, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s1, s3, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s7
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v183, v171, v167, 0x5010400
	v_perm_b32 v167, v171, v167, 0x7030602
	v_perm_b32 v171, v172, v168, 0x5010400
	v_perm_b32 v168, v172, v168, 0x7030602
	v_perm_b32 v172, v173, v169, 0x5010400
	v_perm_b32 v169, v173, v169, 0x7030602
	v_perm_b32 v173, v174, v170, 0x5010400
	v_perm_b32 v170, v174, v170, 0x7030602
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v174, s6, v19
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v32, 24, v167
	v_lshrrev_b32_e32 v105, 24, v168
	v_lshrrev_b32_e32 v106, 24, v172
	v_lshrrev_b32_e32 v107, 24, v169
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v174, v[9:12] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v175
	v_and_b16 v9.h, 0xff, v175.l
	v_lshrrev_b32_e32 v10, 24, v175
	v_lshrrev_b32_e32 v11, 24, v176
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v12, 24, v183
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v175.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v105.l, 8, v105.l
	v_lshlrev_b16 v106.l, 8, v106.l
	v_lshlrev_b16 v107.l, 8, v107.l
	v_lshrrev_b32_e32 v108, 24, v173
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v176
	v_and_b16 v10.h, 0xff, v176.l
	ds_store_b16 v110, v9
	ds_store_b16_d16_hi v110, v9 offset:64
	v_add_nc_u32_e32 v9, s3, v21
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v108.l, 8, v108.l
	v_lshrrev_b32_e32 v109, 24, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v176.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v109.l, 8, v109.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 8, v183
	v_and_b16 v11.h, 0xff, v183.l
	v_lshlrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v183.h
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v167
	v_and_b16 v12.h, 0xff, v167.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v12.l, 8, v12.l
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v167.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v9, v10
	ds_store_b16_d16_hi v9, v10 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v110, v11 offset:16384
	ds_store_b16_d16_hi v110, v11 offset:16448
	ds_store_b16 v9, v12 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v10, 8, v177
	v_lshrrev_b32_e32 v11, 24, v177
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.h, v12.h, v32.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v32, 24, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v9, v12 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.l, 0xff, v177.l
	v_and_b16 v9.h, 0xff, v177.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v12, 8, v171
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v10.l
	v_lshlrev_b16 v10.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v10.h, 8, v12.l
	v_lshrrev_b32_e32 v11, 24, v171
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v12, 8, v178
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v10.l, 0xff, v171.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v10.l, v10.l, v10.h
	v_and_b16 v10.h, 0xff, v171.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s3, v22
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v11, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v11, v10 offset:16384
	ds_store_b16_d16_hi v11, v10 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.l, 0xff, v178.l
	v_and_b16 v9.h, 0xff, v178.h
	v_and_b16 v10.l, 0xff, v179.l
	v_lshlrev_b16 v10.h, 8, v12.l
	v_lshrrev_b32_e32 v12, 24, v179
	v_lshlrev_b16 v11.l, 8, v32.l
	v_lshlrev_b16 v11.h, 8, v104.l
	v_lshrrev_b32_e32 v32, 8, v180
	v_or_b16 v9.l, v9.l, v10.h
	v_and_b16 v10.h, 0xff, v179.h
	v_or_b16 v9.h, v9.h, v11.l
	v_and_b16 v11.l, 0xff, v180.l
	v_or_b16 v10.l, v10.l, v11.h
	v_lshlrev_b16 v11.h, 8, v12.l
	v_lshrrev_b32_e32 v104, 24, v180
	v_lshlrev_b16 v12.l, 8, v32.l
	v_lshrrev_b32_e32 v32, 8, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v10.h, v10.h, v11.h
	v_and_b16 v11.h, 0xff, v180.h
	v_or_b16 v11.l, v11.l, v12.l
	v_lshlrev_b16 v12.l, 8, v104.l
	v_lshlrev_b16 v12.h, 8, v32.l
	v_lshrrev_b32_e32 v32, 24, v181
	v_lshrrev_b32_e32 v104, 24, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v11.h, v11.h, v12.l
	v_and_b16 v12.l, 0xff, v181.l
	v_lshlrev_b16 v32.l, 8, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v104.l, 8, v104.l
	v_or_b16 v12.l, v12.l, v12.h
	v_and_b16 v12.h, 0xff, v181.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v12.h, v12.h, v32.l
	v_lshrrev_b32_e32 v32, 8, v182
	v_and_b16 v32.h, 0xff, v182.l
	v_lshlrev_b16 v32.l, 8, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v32.l, v32.h, v32.l
	v_and_b16 v32.h, 0xff, v182.h
	v_or_b16 v32.h, v32.h, v104.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v104, 8, v168
	v_and_b16 v104.h, 0xff, v168.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v104.l, 8, v104.l
	v_or_b16 v104.l, v104.h, v104.l
	v_and_b16 v104.h, 0xff, v168.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v104.h, v104.h, v105.l
	v_lshrrev_b32_e32 v105, 8, v172
	v_and_b16 v105.h, 0xff, v172.l
	v_lshlrev_b16 v105.l, 8, v105.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v105.l, v105.h, v105.l
	v_and_b16 v105.h, 0xff, v172.h
	v_or_b16 v105.h, v105.h, v106.l
	v_lshrrev_b32_e32 v106, 8, v169
	v_and_b16 v106.h, 0xff, v169.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v106.l, 8, v106.l
	v_or_b16 v106.l, v106.h, v106.l
	v_and_b16 v106.h, 0xff, v169.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v106.h, v106.h, v107.l
	v_lshrrev_b32_e32 v107, 8, v173
	v_and_b16 v107.h, 0xff, v173.l
	v_lshlrev_b16 v107.l, 8, v107.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v107.l, v107.h, v107.l
	v_and_b16 v107.h, 0xff, v173.h
	v_or_b16 v107.h, v107.h, v108.l
	v_lshrrev_b32_e32 v108, 8, v170
	v_and_b16 v108.h, 0xff, v170.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v108.l, 8, v108.l
	v_or_b16 v108.l, v108.h, v108.l
	v_and_b16 v108.h, 0xff, v170.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v108.h, v108.h, v109.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v109, s3, v23
	ds_store_b16 v109, v9
	ds_store_b16_d16_hi v109, v9 offset:64
	v_add_nc_u32_e32 v9, s3, v24
	ds_store_b16 v9, v10
	ds_store_b16_d16_hi v9, v10 offset:64
	ds_store_b16 v110, v11 offset:640
	ds_store_b16_d16_hi v110, v11 offset:704
	v_add_nc_u32_e32 v10, s3, v25
	v_add_nc_u32_e32 v11, s3, v26
	ds_store_b16 v10, v12
	ds_store_b16_d16_hi v10, v12 offset:64
	ds_store_b16 v11, v32
	ds_store_b16_d16_hi v11, v32 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v109, v104 offset:16384
	ds_store_b16_d16_hi v109, v104 offset:16448
	ds_store_b16 v9, v105 offset:16384
	ds_store_b16_d16_hi v9, v105 offset:16448
	ds_store_b16 v110, v106 offset:17024
	ds_store_b16_d16_hi v110, v106 offset:17088
	ds_store_b16 v10, v107 offset:16384
	ds_store_b16_d16_hi v10, v107 offset:16448
	ds_store_b16 v11, v108 offset:16384
	ds_store_b16_d16_hi v11, v108 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v17 :: v_dual_mov_b32 v6, v18
	s_mov_b32 s6, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v85, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s36, 0, 0x4000
	v_mov_b32_e32 v86, v85
	v_mov_b32_e32 v77, v85
	v_mov_b32_e32 v73, v85
	v_mov_b32_e32 v81, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v83, v85 :: v_dual_mov_b32 v84, v86
	v_dual_mov_b32 v88, v86 :: v_dual_mov_b32 v87, v85
	v_mov_b32_e32 v78, v86
	v_mov_b32_e32 v74, v86
	v_dual_mov_b32 v82, v86 :: v_dual_mov_b32 v69, v85
	v_dual_mov_b32 v70, v86 :: v_dual_mov_b32 v65, v85
	v_dual_mov_b32 v66, v86 :: v_dual_mov_b32 v61, v85
	v_dual_mov_b32 v62, v86 :: v_dual_mov_b32 v57, v85
	v_dual_mov_b32 v58, v86 :: v_dual_mov_b32 v45, v85
	v_dual_mov_b32 v46, v86 :: v_dual_mov_b32 v41, v85
	v_dual_mov_b32 v42, v86 :: v_dual_mov_b32 v53, v85
	v_dual_mov_b32 v54, v86 :: v_dual_mov_b32 v49, v85
	v_dual_mov_b32 v50, v86 :: v_dual_mov_b32 v37, v85
	v_dual_mov_b32 v38, v86 :: v_dual_mov_b32 v33, v85
	v_mov_b32_e32 v34, v86
	v_dual_mov_b32 v94, v86 :: v_dual_mov_b32 v93, v85
	v_dual_mov_b32 v96, v86 :: v_dual_mov_b32 v95, v85
	v_dual_mov_b32 v79, v85 :: v_dual_mov_b32 v80, v86
	v_dual_mov_b32 v75, v85 :: v_dual_mov_b32 v76, v86
	v_dual_mov_b32 v90, v86 :: v_dual_mov_b32 v89, v85
	v_dual_mov_b32 v92, v86 :: v_dual_mov_b32 v91, v85
	v_dual_mov_b32 v71, v85 :: v_dual_mov_b32 v72, v86
	v_dual_mov_b32 v67, v85 :: v_dual_mov_b32 v68, v86
	v_dual_mov_b32 v63, v85 :: v_dual_mov_b32 v64, v86
	v_dual_mov_b32 v59, v85 :: v_dual_mov_b32 v60, v86
	v_dual_mov_b32 v47, v85 :: v_dual_mov_b32 v48, v86
	v_dual_mov_b32 v43, v85 :: v_dual_mov_b32 v44, v86
	v_dual_mov_b32 v55, v85 :: v_dual_mov_b32 v56, v86
	v_dual_mov_b32 v51, v85 :: v_dual_mov_b32 v52, v86
	v_dual_mov_b32 v39, v85 :: v_dual_mov_b32 v40, v86
	v_dual_mov_b32 v35, v85 :: v_dual_mov_b32 v36, v86
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, s37, v99
	v_add_nc_u32_e32 v1, s37, v98
	v_add_nc_u32_e32 v8, s37, v100
	v_add_nc_u32_e32 v104, s37, v101
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v7
	ds_load_b128 v[21:24], v7 offset:2048
	ds_load_b128 v[17:20], v8
	ds_load_b128 v[9:12], v8 offset:2048
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[1:4], v1 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v105, v5, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v104 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v104, 0, 1, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v103, v105, v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v103, v103, v102
	v_xor_b32_e32 v104, 16, v103
	v_xor_b32_e32 v102, 32, v103
	v_xor_b32_e32 v105, 48, v103
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
	v_add_nc_u32_e32 v106, s6, v103
	v_add_nc_u32_e32 v107, s6, v104
	ds_load_b128 v[138:141], v106 offset:4096
	ds_load_b128 v[142:145], v106
	v_add_nc_u32_e32 v106, s6, v102
	ds_load_b128 v[146:149], v107 offset:4096
	ds_load_b128 v[150:153], v107
	ds_load_b128 v[154:157], v106 offset:4096
	ds_load_b128 v[158:161], v106
	v_add_nc_u32_e32 v114, s6, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	v_dual_mov_b32 v113, s11 :: v_dual_mov_b32 v112, s10
	v_dual_mov_b32 v111, s9 :: v_dual_mov_b32 v110, s8
	v_mov_b32_e32 v107, s5
	v_dual_mov_b32 v109, s7 :: v_dual_mov_b32 v108, s6
	v_mov_b32_e32 v106, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[162:165], v114
	ds_load_b128 v[166:169], v114 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[142:145], v[29:32], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[150:153], v[25:28], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[158:161], v[17:20], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[162:165], v[13:16], v[114:121] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v117, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v83, v83, v116
	v_add_f32_e32 v73, v73, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[122:129], v[138:141], v[29:32], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[142:145], v[1:4], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[138:141], v[1:4], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[146:149], v[25:28], v[122:129] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v84, v84, v117 :: v_dual_add_f32 v65, v65, v120
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[130:137], v[150:153], v[21:24], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[146:149], v[21:24], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[154:157], v[17:20], v[122:129] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v121, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[158:161], v[9:12], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[154:157], v[9:12], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[13:16], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[162:165], v[5:8], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[5:8], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v116, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v125
	v_cvt_f32_i32_e32 v118, v124
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v57, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v58, v58, v123
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v66, v66, v121 :: v_dual_add_f32 v49, v49, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v41, v41, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v50, v50, v117
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v129
	v_cvt_f32_i32_e32 v118, v131
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v117
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v133
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v91, v91, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v96, v96, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v118, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v92, v92, v117
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v135
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v95, v95, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v137
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v117 :: v_dual_add_f32 v59, v59, v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v106, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v60, v60, v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v107, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v68, v68, v119 :: v_dual_add_f32 v51, v51, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v109
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v109, v115
	v_cvt_f32_i32_e32 v110, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v107, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v118
	v_add_f32_e32 v67, v67, v116
	v_add_f32_e32 v43, v43, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v35, v35, v108 :: v_dual_add_f32 v36, v36, v107
	v_dual_add_f32 v88, v88, v109 :: v_dual_add_f32 v87, v87, v110
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
	v_add_nc_u32_e32 v106, s36, v103
	v_add_nc_u32_e32 v107, s36, v104
	ds_load_b128 v[138:141], v106 offset:4096
	ds_load_b128 v[142:145], v106
	v_add_nc_u32_e32 v106, s36, v102
	ds_load_b128 v[146:149], v107 offset:4096
	ds_load_b128 v[150:153], v107
	ds_load_b128 v[154:157], v106 offset:4096
	ds_load_b128 v[158:161], v106
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v113, s11 :: v_dual_add_nc_u32 v114, s36, v105
	v_dual_mov_b32 v112, s10 :: v_dual_mov_b32 v111, s9
	v_dual_mov_b32 v110, s8 :: v_dual_mov_b32 v107, s5
	v_dual_mov_b32 v109, s7 :: v_dual_mov_b32 v108, s6
	v_mov_b32_e32 v106, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[162:165], v114
	ds_load_b128 v[166:169], v114 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[142:145], v[29:32], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[138:141], v[29:32], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[142:145], v[1:4], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[150:153], v[25:28], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[146:149], v[25:28], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[138:141], v[1:4], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[150:153], v[21:24], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[158:161], v[17:20], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[154:157], v[17:20], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[146:149], v[21:24], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[158:161], v[9:12], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[162:165], v[13:16], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[13:16], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[154:157], v[9:12], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[162:165], v[5:8], v[130:137] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v116
	v_cvt_f32_i32_e32 v2, v117
	v_cvt_f32_i32_e32 v4, v119
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[5:8], v[106:113] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v81, v81, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v122
	v_cvt_f32_i32_e32 v5, v120
	v_cvt_f32_i32_e32 v7, v123
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v82, v82, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v78, v78, v4 :: v_dual_add_f32 v61, v61, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v125
	v_cvt_f32_i32_e32 v1, v126
	v_cvt_f32_i32_e32 v6, v121
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v77, v77, v3
	v_add_f32_e32 v62, v62, v7
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v124
	v_cvt_f32_i32_e32 v4, v127
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v45, v45, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v128
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v54, v54, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v129
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v70, v70, v6 :: v_dual_add_f32 v53, v53, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v131
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v37, v37, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v132
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v46, v46, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v130
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v38, v38, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v133
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v89, v89, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v136
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v94, v94, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v134
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v90, v90, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v135
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v93, v93, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v137
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v71, v71, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v106
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v80, v80, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v107
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v79, v79, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v109
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v63, v63, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v110
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v72, v72, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v108
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v64, v64, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v111
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v69, v69, v5
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v5, v114
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v56, v56, v3 :: v_dual_add_f32 v55, v55, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v112
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v48, v48, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v113
	v_cvt_f32_i32_e32 v4, v115
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v47, v47, v1
	v_add_f32_e32 v39, v39, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v85, v85, v5 :: v_dual_add_f32 v40, v40, v2
	v_add_f32_e32 v86, v86, v4
.LBB0_12:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(2)
	v_add_nc_u32_e32 v1, s33, v98
	v_mov_b32_e32 v98, 0
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v2, s33, v99
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v3, s33, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v99, 0, 1, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v4, s33, v101
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[21:24], v1 offset:2048
	ds_load_b128 v[17:20], v2
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[5:8], v2 offset:2048
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v99
	v_mov_b32_e32 v99, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v3
	ds_load_b128 v[13:16], v3 offset:2048
	ds_load_b128 v[9:12], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[1:4], v4 offset:2048
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_mov_b32_e32 v144, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v126, s11 :: v_dual_add_nc_u32 v99, s3, v103
	v_dual_mov_b32 v124, s9 :: v_dual_add_nc_u32 v101, s3, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[106:109], v99 offset:4096
	ds_load_b128 v[110:113], v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v122, s7 :: v_dual_add_nc_u32 v99, s3, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[114:117], v101 offset:4096
	ds_load_b128 v[151:154], v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v125, s10 :: v_dual_add_nc_u32 v100, s3, v105
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[155:158], v99 offset:4096
	ds_load_b128 v[159:162], v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v123, s8 :: v_dual_mov_b32 v120, s5
	v_mov_b32_e32 v121, s6
	v_mov_b32_e32 v119, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[163:166], v100
	ds_load_b128 v[167:170], v100 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[106:109], v[29:32], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[110:113], v[29:32], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[110:113], v[21:24], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[106:109], v[21:24], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[17:20], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[114:117], v[17:20], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[5:8], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[114:117], v[5:8], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[159:162], v[25:28], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[155:158], v[25:28], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[159:162], v[13:16], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[155:158], v[13:16], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[163:166], v[9:12], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[9:12], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[163:166], v[1:4], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[1:4], v[119:126] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v100, v129
	v_cvt_f32_i32_e32 v107, v130
	v_cvt_f32_i32_e32 v99, v131
	v_cvt_f32_i32_e32 v101, v132
	v_cvt_f32_i32_e32 v106, v133
	v_cvt_f32_i32_e32 v108, v134
	v_cvt_f32_i32_e32 v109, v135
	v_cvt_f32_i32_e32 v111, v136
	v_cvt_f32_i32_e32 v112, v137
	v_cvt_f32_i32_e32 v117, v138
	v_cvt_f32_i32_e32 v110, v139
	v_cvt_f32_i32_e32 v113, v140
	v_cvt_f32_i32_e32 v114, v141
	v_cvt_f32_i32_e32 v129, v142
	v_cvt_f32_i32_e32 v118, v143
	v_cvt_f32_i32_e32 v131, v144
	v_cvt_f32_i32_e32 v132, v145
	v_cvt_f32_i32_e32 v135, v146
	v_cvt_f32_i32_e32 v130, v147
	v_cvt_f32_i32_e32 v133, v148
	v_cvt_f32_i32_e32 v134, v149
	v_cvt_f32_i32_e32 v137, v150
	v_cvt_f32_i32_e32 v136, v119
	v_cvt_f32_i32_e32 v139, v120
	v_cvt_f32_i32_e32 v140, v121
	v_cvt_f32_i32_e32 v143, v122
	v_cvt_f32_i32_e32 v138, v123
	v_cvt_f32_i32_e32 v141, v124
	v_cvt_f32_i32_e32 v142, v125
	v_cvt_f32_i32_e32 v144, v126
	v_cvt_f32_i32_e32 v115, v127
	v_cvt_f32_i32_e32 v116, v128
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_mov_b32_e32 v175, 0
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
	v_add_nc_u32_e32 v98, s1, v103
	v_add_nc_u32_e32 v119, s1, v104
	ds_load_b128 v[171:174], v98 offset:4096
	ds_load_b128 v[175:178], v98
	v_add_nc_u32_e32 v127, s1, v105
	v_add_nc_u32_e32 v98, s1, v102
	ds_load_b128 v[102:105], v119 offset:4096
	ds_load_b128 v[179:182], v119
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v126, s11 :: v_dual_mov_b32 v123, s8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[183:186], v98 offset:4096
	ds_load_b128 v[187:190], v98
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v125, s10 :: v_dual_mov_b32 v124, s9
	v_dual_mov_b32 v122, s7 :: v_dual_mov_b32 v121, s6
	v_dual_mov_b32 v120, s5 :: v_dual_mov_b32 v119, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[191:194], v127
	ds_load_b128 v[195:198], v127 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[171:174], v[29:32], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[175:178], v[29:32], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[175:178], v[21:24], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[171:174], v[21:24], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[179:182], v[17:20], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[102:105], v[17:20], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[179:182], v[5:8], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[102:105], v[5:8], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[25:28], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[183:186], v[25:28], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[13:16], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[183:186], v[13:16], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[191:194], v[9:12], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[195:198], v[9:12], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[191:194], v[1:4], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[195:198], v[1:4], v[119:126] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v147
	v_cvt_f32_i32_e32 v145, v148
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v146, v151
	v_cvt_f32_i32_e32 v148, v152
	v_cvt_f32_i32_e32 v149, v153
	v_cvt_f32_i32_e32 v152, v154
	v_cvt_f32_i32_e32 v151, v155
	v_cvt_f32_i32_e32 v154, v156
	v_cvt_f32_i32_e32 v155, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v153, v159
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v159, v163
	v_cvt_f32_i32_e32 v162, v164
	v_cvt_f32_i32_e32 v163, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v161, v167
	v_cvt_f32_i32_e32 v164, v168
	v_cvt_f32_i32_e32 v165, v169
	v_cvt_f32_i32_e32 v168, v170
	v_cvt_f32_i32_e32 v167, v119
	v_cvt_f32_i32_e32 v170, v120
	v_cvt_f32_i32_e32 v171, v121
	v_cvt_f32_i32_e32 v174, v122
	v_cvt_f32_i32_e32 v169, v123
	v_cvt_f32_i32_e32 v172, v124
	v_cvt_f32_i32_e32 v173, v125
	v_cvt_f32_i32_e32 v175, v126
.LBB0_16:
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b32_e32 v14, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s14, s15
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s9, s17, 0xffff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v87, v115 :: v_dual_and_b32 v3, 48, v14
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v12, v1, 16, v97
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v17, v2, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s8, s16
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v25, 32, v12
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v1, s28, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v19, v46, v156
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v4, 2, v17
	v_or_b32_e32 v2, 6, v17
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v3, s28, v25
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v5, 4, v17
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v6, s14, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v176, v88, v116 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v178, v83, v100 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v7, s14, v4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v28, 10, v17
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v8, s14, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v177, v84, v107 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v24, v1, s[8:11], 0 offen
	buffer_load_u16 v32, v3, s[8:11], 0 offen
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v1, s14, v2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v29, 8, v17
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v4, s0, v4, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v3, 1, v7
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v7, s0, v17, 1
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v9, s0, v28, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v119, v6, s[8:11], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v115, v74, v101 :: v_dual_lshlrev_b32 v6, 1, v8
	v_dual_add_f32 v116, v73, v99 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v8, s0, v29, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v107, v66, v108 :: v_dual_add_f32 v100, v57, v109
	v_add_f32_e32 v108, v65, v106
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_clause 0x8
	buffer_load_u16 v124, v4, s[8:11], 0 offen
	buffer_load_u16 v123, v7, s[8:11], 0 offen
	buffer_load_u16 v126, v2, s[8:11], 0 offen
	buffer_load_u16 v125, v5, s[8:11], 0 offen
	buffer_load_u16 v128, v9, s[8:11], 0 offen
	buffer_load_u16 v127, v8, s[8:11], 0 offen
	buffer_load_u16 v120, v3, s[8:11], 0 offen
	buffer_load_u16 v122, v1, s[8:11], 0 offen
	buffer_load_u16 v121, v6, s[8:11], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v109, v68, v137 :: v_dual_add_f32 v4, v35, v142
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v142, v89, v163
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v50, v117 :: v_dual_add_f32 v23, v49, v112
	v_dual_add_f32 v10, v42, v113 :: v_dual_add_f32 v11, v41, v110
	v_dual_add_f32 v1, v34, v129 :: v_dual_add_f32 v132, v91, v132
	v_add_f32_e32 v129, v96, v131
	v_dual_add_f32 v131, v95, v118 :: v_dual_add_f32 v26, v52, v143
	v_dual_add_f32 v135, v92, v135 :: v_dual_add_f32 v110, v67, v134
	v_dual_add_f32 v117, v76, v133 :: v_dual_add_f32 v102, v59, v136
	v_dual_add_f32 v118, v75, v130 :: v_dual_add_f32 v101, v60, v139
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v130, v85, v98 :: v_dual_add_f32 v27, v51, v140
	v_add_f32_e32 v134, v82, v150
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v15, v43, v138 :: v_dual_add_f32 v112, v70, v152
	v_dual_add_f32 v3, v36, v144 :: v_dual_add_f32 v138, v77, v146
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v133, v86, v145 :: v_dual_add_f32 v30, v53, v155
	v_dual_add_f32 v137, v78, v148 :: v_dual_add_f32 v18, v45, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v13, v44, v141 :: v_dual_add_f32 v136, v81, v147
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v141, v90, v166 :: v_dual_add_f32 v20, v47, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v88, v176, s2
	v_cndmask_b32_e64 v148, v87, v16, s2
	v_cndmask_b32_e64 v142, v89, v142, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v87, 64, v17
	v_or_b32_e32 v88, 12, v17
	v_or_b32_e32 v89, 14, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v99, v58, v111 :: v_dual_add_f32 v2, v33, v114
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v111, v69, v149 :: v_dual_add_f32 v104, v62, v154
	v_dual_add_f32 v31, v54, v158 :: v_dual_add_f32 v140, v93, v159
	v_dual_add_f32 v139, v94, v162 :: v_dual_add_f32 v144, v79, v161
	v_dual_add_f32 v143, v80, v164 :: v_dual_add_f32 v8, v39, v173
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v145, 56, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v133, v86, v133, s2
	v_cndmask_b32_e64 v130, v85, v130, s2
	v_cndmask_b32_e64 v149, v83, v178, s2
	v_cndmask_b32_e64 v150, v84, v177, s2
	v_cndmask_b32_e64 v134, v82, v134, s2
	v_cndmask_b32_e64 v138, v77, v138, s2
	v_cndmask_b32_e64 v137, v78, v137, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v77, 0x4e, v17
	v_or_b32_e32 v78, 0x4c, v17
	v_or_b32_e32 v82, 0x4a, v17
	v_or_b32_e32 v83, 0x48, v17
	v_or_b32_e32 v84, 0x46, v17
	v_or_b32_e32 v85, 0x44, v17
	v_or_b32_e32 v86, 0x42, v17
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s28, s15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v132, v91, v132, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v141, v90, v141, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, s15, v25
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v25, s14, v29
	v_or_b32_e32 v28, s14, v28
	v_or_b32_e32 v29, s14, v88
	v_or_b32_e32 v90, s14, v89
	v_or_b32_e32 v91, s14, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v95, v131, s2
	v_cndmask_b32_e64 v140, v93, v140, s2
	v_cndmask_b32_e64 v139, v94, v139, s2
	v_cndmask_b32_e64 v135, v92, v135, s2
	v_cndmask_b32_e64 v79, v79, v144, s2
	v_cndmask_b32_e64 v80, v80, v143, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v16, s15, v12
	v_or_b32_e32 v14, s1, v145
	v_add3_u32 v12, s1, v145, 64
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v92, s14, v86
	v_or_b32_e32 v93, s14, v85
	v_or_b32_e32 v94, s14, v84
	v_or_b32_e32 v95, s14, v83
	v_or_b32_e32 v143, s14, v82
	v_or_b32_e32 v144, s14, v78
	v_or_b32_e32 v145, s14, v77
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v88, s0, v88, 1
	v_add_lshl_u32 v89, s0, v89, 1
	v_add_lshl_u32 v87, s0, v87, 1
	v_add_lshl_u32 v86, s0, v86, 1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v97, v55, v171 :: v_dual_lshlrev_b32 v28, 1, v28
	v_dual_add_f32 v21, v48, v172 :: v_dual_lshlrev_b32 v90, 1, v90
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v85, s0, v85, 1
	v_add_lshl_u32 v84, s0, v84, 1
	v_add_lshl_u32 v83, s0, v83, 1
	v_add_lshl_u32 v82, s0, v82, 1
	v_add_lshl_u32 v78, s0, v78, 1
	v_add_lshl_u32 v152, s0, v77, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v29, 1, v29
	v_lshlrev_b32_e32 v91, 1, v91
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v5, v37, v157 :: v_dual_add_f32 v114, v72, v168
	v_dual_add_f32 v9, v40, v175 :: v_dual_lshlrev_b32 v154, 1, v93
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v25, 1, v25
	v_lshlrev_b32_e32 v143, 1, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v103, v61, v151 :: v_dual_add_f32 v6, v38, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v146, v96, v129, s2
	v_cndmask_b32_e64 v81, v81, v136, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v105, v63, v167 :: v_dual_add_f32 v98, v56, v174
	v_dual_add_f32 v113, v71, v165 :: v_dual_add_f32 v106, v64, v170
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v75, v118, s2
	v_cndmask_b32_e64 v76, v76, v117, s2
	v_cndmask_b32_e64 v74, v74, v115, s2
	v_cndmask_b32_e64 v72, v72, v114, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v96.h, v7.h
	v_mov_b16_e64 v136.h, v7.h
	v_mov_b16_e64 v129.h, v7.h
	v_mov_b16_e64 v151.h, v7.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v116, s2
	v_cndmask_b32_e64 v71, v71, v113, s2
	v_cndmask_b32_e64 v70, v70, v112, s2
	v_cndmask_b32_e64 v69, v69, v111, s2
	v_cndmask_b32_e64 v65, v65, v108, s2
	v_cndmask_b32_e64 v66, v66, v107, s2
	v_cndmask_b32_e64 v68, v68, v109, s2
	v_cndmask_b32_e64 v67, v67, v110, s2
	v_cndmask_b32_e64 v64, v64, v106, s2
	v_cndmask_b32_e64 v63, v63, v105, s2
	v_cndmask_b32_e64 v61, v61, v103, s2
	v_cndmask_b32_e64 v62, v62, v104, s2
	v_cndmask_b32_e64 v59, v59, v102, s2
	v_cndmask_b32_e64 v57, v57, v100, s2
	v_cndmask_b32_e64 v58, v58, v99, s2
	v_cndmask_b32_e64 v60, v60, v101, s2
	v_cndmask_b32_e64 v56, v56, v98, s2
	v_cndmask_b32_e64 v31, v54, v31, s2
	v_cndmask_b32_e64 v30, v53, v30, s2
	v_cndmask_b32_e64 v27, v51, v27, s2
	v_cndmask_b32_e64 v26, v52, v26, s2
	v_cndmask_b32_e64 v22, v50, v22, s2
	v_cndmask_b32_e64 v23, v49, v23, s2
	v_cndmask_b32_e64 v21, v48, v21, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.h, v7.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v47, v20, s2
	v_cndmask_b32_e64 v19, v46, v19, s2
	v_cndmask_b32_e64 v18, v45, v18, s2
	v_cndmask_b32_e64 v15, v43, v15, s2
	v_cndmask_b32_e64 v13, v44, v13, s2
	v_cndmask_b32_e64 v11, v41, v11, s2
	v_cndmask_b32_e64 v10, v42, v10, s2
	v_cndmask_b32_e64 v9, v40, v9, s2
	v_cndmask_b32_e64 v6, v38, v6, s2
	v_cndmask_b32_e64 v8, v39, v8, s2
	v_cndmask_b32_e64 v5, v37, v5, s2
	v_cndmask_b32_e64 v2, v33, v2, s2
	v_cndmask_b32_e64 v4, v35, v4, s2
	v_cndmask_b32_e64 v3, v36, v3, s2
	v_cndmask_b32_e64 v1, v34, v1, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	v_and_b32_e32 v0, 16, v0
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v144, 1, v144
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v156, 1, v95
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v153, 1, v92
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v120, 16, v120
	v_lshlrev_b32_e32 v155, 1, v94
	v_lshlrev_b32_e32 v145, 1, v145
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_clause 0x15
	buffer_load_u16 v157, v88, s[8:11], 0 offen
	buffer_load_u16 v158, v89, s[8:11], 0 offen
	buffer_load_u16 v92, v87, s[8:11], 0 offen
	buffer_load_u16 v93, v86, s[8:11], 0 offen
	buffer_load_u16 v88, v85, s[8:11], 0 offen
	buffer_load_u16 v89, v84, s[8:11], 0 offen
	buffer_load_u16 v84, v83, s[8:11], 0 offen
	buffer_load_u16 v85, v82, s[8:11], 0 offen
	buffer_load_u16 v77, v78, s[8:11], 0 offen
	buffer_load_u16 v78, v152, s[8:11], 0 offen
	buffer_load_u16 v152, v25, s[8:11], 0 offen
	buffer_load_u16 v159, v28, s[8:11], 0 offen
	buffer_load_u16 v94, v29, s[8:11], 0 offen
	buffer_load_u16 v95, v90, s[8:11], 0 offen
	buffer_load_u16 v90, v91, s[8:11], 0 offen
	buffer_load_u16 v91, v153, s[8:11], 0 offen
	buffer_load_u16 v86, v154, s[8:11], 0 offen
	buffer_load_u16 v87, v155, s[8:11], 0 offen
	buffer_load_u16 v82, v156, s[8:11], 0 offen
	buffer_load_u16 v83, v143, s[8:11], 0 offen
	buffer_load_u16 v28, v144, s[8:11], 0 offen
	buffer_load_u16 v29, v145, s[8:11], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v25, 16, v24
	v_lshlrev_b32_e32 v24, 16, v32
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v32, 16, v119
	v_lshlrev_b32_e32 v122, 16, v122
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v160, v24, v121
	v_mul_f32_e32 v121, v25, v121
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v119, 16, v124
	v_lshlrev_b32_e32 v124, 16, v126
	v_lshlrev_b32_e32 v126, 16, v128
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v132, v132, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v144, v24, v119
	v_mul_f32_e32 v119, v25, v119
	v_mul_f32_e32 v153, v24, v124
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v128, v24, v32
	v_mul_f32_e32 v32, v25, v32
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v119, v133, v119 :: v_dual_mul_f32 v128, v131, v128
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v143, v24, v123
	v_mul_f32_e32 v123, v25, v123
	v_mul_f32_e32 v124, v25, v124
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v32, v148, v32
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v145, v24, v125
	v_mul_f32_e32 v125, v25, v125
	v_mul_f32_e32 v155, v24, v126
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v156, v24, v120
	v_dual_mul_f32 v120, v25, v120 :: v_dual_mul_f32 v161, v24, v122
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v123, v130, v123 :: v_dual_mul_f32 v130, v141, v153
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v154, v24, v127
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v124, v134, v124
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v122, v25, v122 :: v_dual_mul_f32 v131, v139, v144
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v139, v140, v143 :: v_dual_mul_f32 v134, v79, v154
	v_mul_f32_e32 v81, v81, v125
	v_dual_mul_f32 v125, v80, v155 :: v_dual_mul_f32 v144, 0xbfb8aa3b, v130
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v79, v146, v156
	v_dual_mul_f32 v121, v149, v121 :: v_dual_mul_f32 v146, 0xbfb8aa3b, v124
	v_mul_f32_e32 v80, v147, v120
	v_mul_f32_e32 v120, v135, v161
	v_mul_f32_e32 v122, v150, v122
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v133, v142, v145 :: v_dual_mul_f32 v140, 0xbfb8aa3b, v131
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v142, 0xbfb8aa3b, v123
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v144
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v146
	v_mul_f32_e32 v148, 0xbfb8aa3b, v125
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v142
	v_cndmask_b32_e64 v144, 0, 0x42800000, s4
	v_cndmask_b32_e64 v146, 0, 0x42800000, s6
	v_mul_f32_e32 v135, 0xbfb8aa3b, v139
	v_cndmask_b32_e64 v140, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v142, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v141, 0xbfb8aa3b, v119 :: v_dual_fmac_f32 v146, 0xbfb8aa3b, v124
	v_dual_fmac_f32 v144, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v143, 0xbfb8aa3b, v133
	v_dual_fmac_f32 v140, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v145, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v142, 0xbfb8aa3b, v123
	v_exp_f32_e32 v144, v144
	v_exp_f32_e32 v146, v146
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v140, v140
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v143
	v_exp_f32_e32 v142, v142
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v145
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v135
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v141
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v143, 0, 0x42800000, s5
	v_cndmask_b32_e64 v145, 0, 0x42800000, s7
	v_ldexp_f32 v144, v144, v155
	v_ldexp_f32 v146, v146, v160
	v_cndmask_b32_e64 v135, 0, 0x42800000, s0
	v_cndmask_b32_e64 v141, 0, 0x42800000, s3
	v_ldexp_f32 v140, v140, v149
	v_ldexp_f32 v142, v142, v153
	v_dual_fmac_f32 v143, 0xbfb8aa3b, v133 :: v_dual_add_f32 v144, 1.0, v144
	v_dual_fmac_f32 v145, 0xbfb8aa3b, v81 :: v_dual_add_f32 v146, 1.0, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v135, 0xbfb8aa3b, v139 :: v_dual_add_f32 v140, 1.0, v140
	v_dual_fmac_f32 v141, 0xbfb8aa3b, v119 :: v_dual_add_f32 v142, 1.0, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v145, v145
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v163, null, v144, v144, v130
	v_div_scale_f32 v167, null, v146, v146, v124
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v141, v141
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v149, null, v140, v140, v131
	v_div_scale_f32 v155, null, v142, v142, v123
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v174, v163
	v_rcp_f32_e32 v176, v167
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v170, v149
	v_rcp_f32_e32 v172, v155
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v143, v143, v156
	v_ldexp_f32 v145, v145, v161
	v_ldexp_f32 v135, v135, v150
	v_ldexp_f32 v141, v141, v154
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v183, -v163, v174, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v143, 1.0, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v185, -v167, v176, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v145, 1.0, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v179, -v149, v170, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v181, -v155, v172, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v141, 1.0, v141 :: v_dual_fmac_f32 v174, v183, v174
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v165, null, v143, v143, v133
	v_fmac_f32_e32 v176, v185, v176
	v_div_scale_f32 v169, null, v145, v145, v81
	v_fmac_f32_e32 v170, v179, v170
	v_div_scale_f32 v153, null, v135, v135, v139
	v_fmac_f32_e32 v172, v181, v172
	v_div_scale_f32 v160, null, v141, v141, v119
	v_rcp_f32_e32 v175, v165
	v_rcp_f32_e32 v177, v169
	v_rcp_f32_e32 v171, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v173, v160
	v_div_scale_f32 v150, vcc_lo, v131, v140, v131
	v_div_scale_f32 v164, s4, v130, v144, v130
	v_div_scale_f32 v166, s5, v133, v143, v133
	v_fma_f32 v184, -v165, v175, 1.0
	v_fma_f32 v186, -v169, v177, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v180, -v153, v171, 1.0
	v_fma_f32 v182, -v160, v173, 1.0
	v_div_scale_f32 v178, s7, v81, v145, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v177, v186, v177
	v_fmac_f32_e32 v175, v184, v175
	v_div_scale_f32 v154, s0, v139, v135, v139
	v_div_scale_f32 v161, s3, v119, v141, v119
	v_fmac_f32_e32 v173, v182, v173
	v_fmac_f32_e32 v171, v180, v171
	v_div_scale_f32 v156, s1, v123, v142, v123
	v_mul_f32_e32 v179, v150, v170
	v_dual_mul_f32 v186, v178, v177 :: v_dual_mul_f32 v183, v164, v174
	v_mul_f32_e32 v184, v166, v175
	v_mul_f32_e32 v182, v161, v173
	v_dual_mul_f32 v180, v154, v171 :: v_dual_mul_f32 v181, v156, v172
	v_fma_f32 v187, -v149, v179, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v192, -v165, v184, v166
	v_fma_f32 v194, -v169, v186, v178
	v_fma_f32 v188, -v153, v180, v154
	v_fma_f32 v189, -v155, v181, v156
	v_div_scale_f32 v168, s6, v124, v146, v124
	v_dual_fmac_f32 v184, v192, v175 :: v_dual_fmac_f32 v179, v187, v170
	v_fmac_f32_e32 v186, v194, v177
	v_fma_f32 v190, -v160, v182, v161
	v_dual_fmac_f32 v180, v188, v171 :: v_dual_fmac_f32 v181, v189, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v149, -v149, v179, v150
	v_dual_mul_f32 v185, v168, v176 :: v_dual_fmac_f32 v182, v190, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v150, -v153, v180, v154
	v_fma_f32 v153, -v155, v181, v156
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v149, v149, v170, v179
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v154, -v160, v182, v161
	v_div_fmas_f32 v150, v150, v171, v180
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v191, -v163, v183, v164
	v_div_fmas_f32 v153, v153, v172, v181
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v131, v149, v140, v131
	v_div_fmas_f32 v140, v154, v173, v182
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v193, -v167, v185, v168
	v_div_fixup_f32 v135, v150, v135, v139
	v_fma_f32 v156, -v165, v184, v166
	v_div_fixup_f32 v119, v140, v141, v119
	v_fmac_f32_e32 v183, v191, v174
	v_fma_f32 v161, -v169, v186, v178
	v_div_fixup_f32 v123, v153, v142, v123
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v128, v128, v135
	v_mul_f32_e32 v80, v80, v119
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v155, -v163, v183, v164
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v148
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v123
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v128.h
	v_mov_b16_e32 v96.l, v80.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v139, v155, v174, v183
	s_mov_b32 vcc_lo, s5
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v131, v79, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v79, v156, v175, v184
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v130, v139, v144, v130
	v_fmac_f32_e32 v185, v193, v176
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v32.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v79, v79, v143, v133
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v148, 0, 0x42800000, s8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v120, v120, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v160, -v167, v185, v168
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v147, 0xbfb8aa3b, v134 :: v_dual_and_b32 v96, 1, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v148, 0xbfb8aa3b, v125
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v80, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v135, v160, v176, v185
	s_mov_b32 vcc_lo, s7
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v123, v161, v177, v186
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v80, v80, v96, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v119, v135, v146, v124
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v126, v25, v126
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v147, 0, 0x42800000, s9
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v81, v123, v145, v81
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v119, v122, v119
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v122, 1, v7
	v_mov_b16_e64 v7.l, v131.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v81, v121, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v147, 0xbfb8aa3b, v134
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v32, v32, v122, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v148, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v136.l, v81.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v123, v132, v79
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v81, v81
	v_and_b32_e32 v79, 1, v129
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v124, 1, v136
	v_mov_b16_e64 v151.l, v123.h
	v_cmp_o_f32_e64 s0, v128, v128
	v_add3_u32 v79, v128, v79, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v32.h, s1
	v_add3_u32 v81, v81, v124, 0x7fff
	v_and_b32_e32 v122, 1, v151
	v_cmp_o_f32_e64 s1, v120, v120
	v_cndmask_b16 v32.l, 0x7fff, v79.h, s0
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s3
	v_cndmask_b16 v80.l, 0x7fff, v81.h, s5
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v81, v25, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v121, 1, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v122, v123, v122, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v124, v138, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v121, v131, v121, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v81, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v128, 0xbfb8aa3b, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.h, 0x7fff, v121.h, vcc_lo
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v121, v137, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v128
	v_mul_f32_e32 v126, 0xbfb8aa3b, v121
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v119.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v81, v81, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v119, v119
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v127, 1.0, v81 :: v_dual_and_b32 v96, 1, v7
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v120.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v124
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v96, v119, v96, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v119, 1, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v121
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v80.h, 0x7fff, v96.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v96, v148, v162
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v119, v120, v119, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v126, v126
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v136, s0, v134, v127, v134
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v81.h, 0x7fff, v119.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v119, v128
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v128, null, v127, v127, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v129, null, v96, v96, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v126, v126, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v132, v128
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v81.l, 0x7fff, v122.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v120, v129
	v_div_scale_f32 v122, vcc_lo, v125, v96, v125
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v118, v119, v131
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v119, 1.0, v126
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v131, 16, v152
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v117, 16, v159
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v118, 1.0, v118
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, null, v119, v119, v121
	v_fma_f32 v123, -v129, v120, 1.0
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v138, v24, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v130, null, v118, v118, v124
	v_rcp_f32_e32 v135, v126
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v120, v123, v120
	v_fma_f32 v123, -v128, v132, 1.0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v141, v24, v117
	v_mul_f32_e32 v117, v25, v117
	v_mul_f32_e32 v115, v25, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v133, v122, v120
	v_fmac_f32_e32 v132, v123, v132
	v_rcp_f32_e32 v123, v130
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v74, v74, v117
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v140, -v126, v135, 1.0
	v_fma_f32 v137, -v129, v133, v122
	v_mul_f32_e32 v139, v136, v132
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v117, 16, v158
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v73, v73, v115
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v135, v140, v135
	v_fmac_f32_e32 v133, v137, v120
	v_fma_f32 v142, -v128, v139, v136
	v_fma_f32 v137, -v130, v123, 1.0
	v_div_scale_f32 v140, s1, v121, v119, v121
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v114, v24, v117
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v122, -v129, v133, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v123, v137, v123
	v_fmac_f32_e32 v139, v142, v132
	v_div_scale_f32 v137, s3, v124, v118, v124
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v72, v72, v114
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v129, v140, v135
	v_div_fmas_f32 v120, v122, v120, v133
	v_fma_f32 v122, -v128, v139, v136
	s_mov_b32 vcc_lo, s0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v108, v25, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v128, -v126, v129, v140
	v_div_fixup_f32 v96, v120, v96, v125
	v_div_fmas_f32 v122, v122, v132, v139
	s_mov_b32 vcc_lo, s1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v94, v24, v94 :: v_dual_lshlrev_b32 v95, 16, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v129, v128, v135
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v87, 16, v87
	v_lshlrev_b32_e32 v86, 16, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v116, -v126, v129, v140
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v116, v116, v135, v129
	s_mov_b32 vcc_lo, s3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v33, v25, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v115, v116, v119, v121
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v2, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v74, v74, v115
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v76, v76, v141 :: v_dual_mul_f32 v141, v137, v123
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v115.h, v7.h
	v_mov_b16_e32 v7.l, v74.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v76, v76, v96
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v133, -v130, v141, v137
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v96, 16, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v114, 1, v7
	v_mov_b16_e32 v7.l, v76.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v113, v24, v96
	v_dual_mul_f32 v96, v25, v96 :: v_dual_mul_f32 v75, v75, v138
	v_mul_f32_e32 v112, v25, v117
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v141, v133, v123
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v114, v74, v114, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v96, v69, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v70, v70, v112
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v126, -v130, v141, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v112, 0xbfb8aa3b, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v123, v126, v123, v141
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v116, v123, v118, v124
	v_div_fixup_f32 v118, v122, v127, v134
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v73, v73, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v116, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v75, v75, v118
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v116
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v74, 0, 0x42800000, s0
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v112
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v112.l, v75.h
	v_mov_b16_e32 v112.h, v7.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v113, v71, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.h, 0x7fff, v114.h, vcc_lo
	v_and_b32_e32 v112, 1, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v74, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v112, v75, v112, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v69, v74, v111
	v_cndmask_b32_e64 v74, 0, 0x42800000, s0
	v_mul_f32_e32 v111, 0xbfb8aa3b, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v76, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v74, v74, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v115.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_and_b32_e32 v115, 1, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v115, v73, v115, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.l, 0x7fff, v115.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v115, 1.0, v69
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v111
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v96
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v116
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v116, null, v74, v74, v70
	v_rcp_f32_e32 v122, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v126, -v116, v122, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v113 :: v_dual_fmac_f32 v122, v126, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v73, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, s3, v70, v74, v70
	v_mul_f32_e32 v128, v126, v122
	v_div_scale_f32 v111, null, v115, v115, v72
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v117, 1, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v73, v73, v114
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v121, vcc_lo, v72, v115, v72
	v_rcp_f32_e32 v114, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v117, v76, v117, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v119, -v111, v114, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v114, v119, v114 :: v_dual_add_f32 v119, 1.0, v69
	v_mul_f32_e32 v76, v121, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v123, null, v119, v119, v96
	v_rcp_f32_e32 v124, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v123, v124, 1.0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v73, 1.0, v73 :: v_dual_fmac_f32 v124, v127, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v118, null, v73, v73, v113
	v_div_scale_f32 v127, s4, v96, v119, v96
	v_div_scale_f32 v125, s1, v113, v73, v113
	v_rcp_f32_e32 v120, v118
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v118, v120, 1.0
	v_fmac_f32_e32 v120, v69, v120
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v69.h, 0x7fff, v117.h, s0
	v_cmp_o_f32_e64 s0, v75, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v75, -v111, v76, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v69.l, 0x7fff, v112.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v76, v75, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v111, -v111, v76, v121
	v_mul_f32_e32 v121, v127, v124
	v_div_fmas_f32 v76, v111, v114, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v114, -v123, v121, v127
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v72, v76, v115, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v121, v114, v124 :: v_dual_mul_f32 v114, v25, v95
	v_dual_mul_f32 v117, v125, v120 :: v_dual_mul_f32 v66, v66, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v118, v117, v125
	v_fmac_f32_e32 v117, v75, v120
	v_fma_f32 v75, -v116, v128, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v111, -v118, v117, v125
	v_fmac_f32_e32 v128, v75, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v75, v111, v120, v117
	v_fma_f32 v107, -v116, v128, v126
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v73, v75, v73, v113
	v_div_fmas_f32 v107, v107, v122, v128
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v70, v107, v74, v70
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v74, v24, v95 :: v_dual_mul_f32 v65, v65, v108
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v66, v66, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v68, v68, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v111, -v123, v121, v127
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v67, v67, v94
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v70.h, v7.h
	v_mov_b16_e32 v7.l, v66.h
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v74, 16, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v111, v111, v124, v121
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v75, 1, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v96, v111, v119, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v75, v66, v75, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v66, v68, v72
	v_mul_f32_e32 v65, v65, v96
	v_mul_f32_e32 v67, v67, v73
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v73, v24, v74 :: v_dual_lshlrev_b32 v68, 16, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v66.h
	v_mov_b16_e32 v70.l, v65.h
	v_cmp_o_f32_e64 s0, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v72, v24, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v65, v70, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v65, v64, v73
	v_dual_mul_f32 v63, v63, v72 :: v_dual_mul_f32 v72, v25, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v64.h, 0x7fff, v75.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v64.l, 0x7fff, v70.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v73.l, v67.h
	v_mov_b16_e32 v73.h, v7.h
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v68, v25, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v68, v61, v68 :: v_dual_and_b32 v73, 1, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v73, v67, v73, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v70, v70
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v75
	v_cndmask_b32_e64 v75, 0, 0x42800000, s1
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v70, 1.0, v70 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v92, null, v70, v70, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v75, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v103, s1, v65, v70, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v75, v75, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v62, v62, v72 :: v_dual_add_f32 v75, 1.0, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v74, 0xbfb8aa3b, v63 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v74, 1, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v72, 0, 0x42800000, s0
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v74, v66, v74, 0x7fff
	v_cmp_o_f32_e64 s0, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v63
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v72, v72, v76
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v61, v61, v76
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v76, null, v72, v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v76
	v_fma_f32 v104, -v76, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v104, v94
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v61, v93
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v61.l, 0x7fff, v73.h, s0
	v_cndmask_b16 v61.h, 0x7fff, v74.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, s0, v63, v72, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v103, v93
	v_div_scale_f32 v67, null, v75, v75, v68
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v102, -v92, v73, v103
	v_rcp_f32_e32 v105, v67
	v_fmac_f32_e32 v73, v102, v93
	v_mul_f32_e32 v107, v74, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v92, v73, v103
	v_fma_f32 v102, -v76, v107, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v106, -v67, v105, 1.0
	v_div_fmas_f32 v73, v92, v93, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v107, v102, v94
	v_div_scale_f32 v95, null, v66, v66, v62
	v_fmac_f32_e32 v105, v106, v105
	v_div_scale_f32 v106, s4, v68, v75, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v95
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v93, v25, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v74, -v76, v107, v74
	v_mul_f32_e32 v109, v106, v105
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v65, v73, v70, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v94, v107
	v_fma_f32 v103, -v67, v109, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v104, -v95, v96, 1.0
	v_div_fixup_f32 v63, v74, v72, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v109, v103, v105 :: v_dual_fmac_f32 v96, v104, v96
	v_div_scale_f32 v104, s3, v62, v66, v62
	v_fma_f32 v67, -v67, v109, v106
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v108, v104, v96
	v_fma_f32 v102, -v95, v108, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v102, v96
	v_fma_f32 v76, -v95, v108, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v76, v96, v108
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v67, v67, v105, v109
	v_div_fixup_f32 v62, v76, v66, v62
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v66, 16, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v67, v67, v75, v68
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v75, v24, v90
	v_mul_f32_e32 v92, v25, v90
	v_mul_f32_e32 v68, v24, v91
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v59, v59, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v57, v57, v92 :: v_dual_mul_f32 v58, v58, v93
	v_dual_mul_f32 v60, v60, v68 :: v_dual_mul_f32 v59, v59, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v57, v57, v67 :: v_dual_mul_f32 v58, v58, v62
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v67, v24, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v60, v60, v65 :: v_dual_lshlrev_b32 v65, 16, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.l, v57.h
	v_mov_b16_e32 v7.l, v58.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v56, v56, v67
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.h, v7.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v55, v97, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v68, v24, v65 :: v_dual_and_b32 v63, 1, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v53, v25, v65 :: v_dual_and_b32 v62, 1, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v57, v57
	v_add3_u32 v63, v58, v63, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v62, v57, v62, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v53, v30, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v60.h
	v_cndmask_b16 v55.h, 0x7fff, v63.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v58, v67, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v55.l, 0x7fff, v62.h, s0
	v_mov_b16_e32 v62.l, v59.h
	v_mov_b16_e32 v62.h, v7.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v63, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v56 :: v_dual_and_b32 v62, 1, v62
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v54, v25, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v62, v59, v62, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v31, v31, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, s0
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v60, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v31
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v30, v57, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_exp_f32_e32 v54, v63
	v_mul_f32_e32 v63, 0xbfb8aa3b, v53
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v63
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v54, v54, v65
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v63, null, v67, v67, v56
	v_div_scale_f32 v70, null, v54, v54, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v65, v63
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v72, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v57, v57, v68
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v59, v59
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v30, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v63, v65, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v73, -v70, v72, 1.0
	v_div_scale_f32 v68, s1, v56, v67, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v65, v60, v65 :: v_dual_add_f32 v60, 1.0, v30
	v_div_scale_f32 v59, null, v57, v57, v31
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.l, 0x7fff, v62.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v73, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v68, v65
	v_rcp_f32_e32 v74, v59
	v_div_scale_f32 v73, s0, v58, v54, v58
	v_div_scale_f32 v75, null, v60, v60, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v63, v62, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.h, 0x7fff, v66.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v66, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v59, v74, 1.0
	v_fmac_f32_e32 v62, v51, v65
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, s3, v31, v57, v31
	v_mul_f32_e32 v52, v73, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v63, -v63, v62, v68
	v_fma_f32 v88, -v75, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v76, v74
	v_fma_f32 v51, -v70, v52, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v62, v63, v65, v62
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v66, v88, v66
	v_div_scale_f32 v88, s4, v53, v60, v53
	v_fmac_f32_e32 v52, v51, v72
	v_fma_f32 v51, -v59, v89, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v70, v52, v73
	v_fmac_f32_e32 v89, v51, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v63, v72, v52
	v_fma_f32 v49, -v59, v89, v76
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v59, v25, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v22, v22, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v49, v49, v74, v89
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v31, v49, v57, v31
	v_dual_mul_f32 v68, v88, v66 :: v_dual_lshlrev_b32 v49, 16, v85
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v22, v22, v31 :: v_dual_mul_f32 v31, v24, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v75, v68, v88
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v46, v25, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v21, v21, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v68, v65, v66 :: v_dual_mul_f32 v65, v24, v87
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v25, v86
	v_mul_f32_e32 v63, v24, v86
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v75, v68, v88
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v26, v26, v65 :: v_dual_mul_f32 v23, v23, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v27, v27, v63
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v19, v19, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v52, v52, v66, v68
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v63, 16, v82
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v50, v52, v60, v53
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v41, v25, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v50
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v50, v51, v54, v58
	v_div_fixup_f32 v51, v62, v67, v56
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v11, v11, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v23.h
	v_cmp_o_f32_e64 s1, v23, v23
	v_and_b32_e32 v31, 1, v48
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v27, v27, v50 :: v_dual_lshlrev_b32 v48, 16, v84
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v52, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v23, v31, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v47, v24, v48
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v26, v51
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v45, v25, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v52, v22, v52, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v22, v20, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.l, 0x7fff, v31.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v18, v18, v45 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v52.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v23.h
	v_mov_b16_e32 v46.l, v27.h
	v_cmp_o_f32_e64 s3, v27, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v31, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v47
	v_dual_mul_f32 v26, 0xbfb8aa3b, v22 :: v_dual_add_f32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, null, v31, v31, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v26, v26, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v45, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v49, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v53, v47 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v45, v45, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, null, v26, v26, v22
	v_div_scale_f32 v59, s1, v22, v26, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v56, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v58, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v18
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v51, v56, 1.0
	v_fma_f32 v44, -v53, v58, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v52, v56
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v50, 1, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v58, v44, v58
	v_div_scale_f32 v44, s4, v19, v45, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v59, v56
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v50, v23, v50, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v48, v54
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, s0, v21, v31, v21
	v_fma_f32 v62, -v51, v43, v59
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v60, 16, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v57, v48, v47 :: v_dual_and_b32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v62, v56
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v23, v23, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v27, v46, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v49, v57, v48
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v52, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v50.l, 0x7fff, v46.h, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v27, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v48, -v49, v57, v48
	v_mul_f32_e32 v49, v44, v58
	v_fma_f32 v27, -v54, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v48, v47, v57
	v_fma_f32 v48, -v51, v43, v59
	v_fmac_f32_e32 v52, v27, v52
	v_div_scale_f32 v27, s5, v18, v23, v18
	v_fma_f32 v51, -v53, v49, v44
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v62, v27, v52
	v_div_fmas_f32 v43, v48, v56, v43
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v57, -v54, v62, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v51, v58 :: v_dual_fmac_f32 v62, v57, v52
	v_fma_f32 v42, -v53, v49, v44
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v25, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v54, v62, v27
	v_div_fmas_f32 v42, v42, v58, v49
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v52, v62
	v_div_fixup_f32 v19, v42, v45, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v27, v23, v18
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v24, v60
	v_dual_mul_f32 v23, v24, v63 :: v_dual_mul_f32 v10, v10, v44
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v11, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v18, v47, v31, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v15, v15, v23
	v_dual_mul_f32 v13, v13, v48 :: v_dual_mul_f32 v10, v10, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v19, v43, v26, v22
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v22, 16, v78
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v11.h
	v_mov_b16_e32 v21.h, v7.h
	v_mov_b16_e32 v7.l, v10.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v19
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v23, v24, v22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v13, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v11, v11
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v9, v9, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v19, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v10, v19, 0x7fff
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v19, 16, v77
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v11, v21, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v21, v24, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v8, v8, v21 :: v_dual_mul_f32 v21, v25, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v13.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v6, v6, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v15.h
	v_mov_b16_e32 v18.h, v7.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v8 :: v_dual_and_b32 v18, 1, v18
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v15, v18, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v21, v21, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v22
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v10, 1.0, v10
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v19, v25, v19
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v25, v25, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v10, v10, v9
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v5, v5, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v6
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, s0, v9, v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v31, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v1, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v13, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v5
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v19, v19, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v21, v21, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v27, v31, 1.0
	v_rcp_f32_e32 v38, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v19, v19, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v37, v31
	v_div_scale_f32 v13, null, v22, v22, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v39
	v_fma_f32 v41, -v26, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v40, v31
	v_rcp_f32_e32 v42, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s1, v8, v21, v8
	v_fma_f32 v36, -v27, v35, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v37, 1.0
	v_mul_f32_e32 v45, v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v13, v42, 1.0
	v_fmac_f32_e32 v35, v36, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, s3, v6, v19, v6
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s4, v5, v22, v5
	v_fma_f32 v36, -v26, v45, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v43, v37
	v_fma_f32 v27, -v27, v35, v40
	v_mul_f32_e32 v47, v44, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v36, v38
	v_fma_f32 v36, -v39, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v27, v31, v35
	v_fma_f32 v40, -v13, v47, v44
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v26, -v26, v45, v41
	v_fmac_f32_e32 v46, v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v40, v42
	v_div_fmas_f32 v26, v26, v38, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v39, v46, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v13, -v13, v47, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v37, v46
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v13, v13, v42, v47
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v13, v22, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v18.h, vcc_lo
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v35, v24, v29
	v_dual_mul_f32 v13, v24, v28 :: v_dual_mul_f32 v2, v2, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v31, v19, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v3, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v26, v21, v8
	v_div_fixup_f32 v8, v27, v10, v9
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v4, v4, v13 :: v_dual_mul_f32 v1, v1, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v2.h
	v_mov_b16_e32 v6.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v3, v3, v8 :: v_dual_mul_f32 v4, v4, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v5, 1, v6
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v3, v3
	v_and_b32_e32 v8, 1, v7
	v_mov_b16_e32 v7.l, v3.h
	v_add3_u32 v5, v2, v5, 0x7fff
	v_mov_b32_e32 v9, 0x5410
	v_mov_b32_e32 v10, 0x7632
	v_add3_u32 v8, v1, v8, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v6.l, v4.h
	v_cmp_o_f32_e64 s2, v4, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v2, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v8.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v10, vcc_lo
	v_add3_u32 v1, v4, v6, 0x7fff
	v_dual_cndmask_b32 v2, v79, v71 :: v_dual_cndmask_b32 v5, v80, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v7, v55, v11, vcc_lo
	v_dual_cndmask_b32 v8, v3, v20 :: v_dual_and_b32 v9, 0x540054, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v3, v20, v3 :: v_dual_and_b32 v10, 0x760076, v10
	v_cndmask_b32_e32 v13, v32, v69, vcc_lo
	v_cndmask_b32_e32 v18, v81, v61, vcc_lo
	v_lshl_or_b32 v9, v9, 4, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 4, v10
	v_dual_cndmask_b32 v20, v30, v23 :: v_dual_cndmask_b32 v21, v0, v50
	v_dual_cndmask_b32 v0, v50, v0 :: v_dual_cndmask_b32 v1, v71, v79
	v_cndmask_b32_e32 v4, v64, v80, vcc_lo
	v_dual_cndmask_b32 v6, v11, v55 :: v_dual_cndmask_b32 v11, v69, v32
	v_cndmask_b32_e32 v19, v23, v30, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x5040504, v9
	v_dual_cndmask_b32 v15, v61, v81 :: v_dual_and_b32 v24, 0x7060706, v10
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v23
	v_perm_b32 v1, v2, v1, v24
	v_perm_b32 v2, v5, v4, v23
	v_perm_b32 v3, v5, v4, v24
	v_perm_b32 v4, v7, v6, v23
	v_perm_b32 v5, v7, v6, v24
	v_perm_b32 v6, v22, v8, v23
	v_perm_b32 v7, v22, v8, v24
	v_perm_b32 v8, v13, v11, v23
	v_perm_b32 v9, v13, v11, v24
	v_add_lshl_u32 v13, v14, v16, 1
	v_perm_b32 v10, v18, v15, v23
	v_perm_b32 v11, v18, v15, v24
	v_add_lshl_u32 v15, v12, v16, 1
	v_add_lshl_u32 v14, v14, v17, 1
	v_perm_b32 v18, v20, v19, v23
	v_perm_b32 v19, v20, v19, v24
	v_perm_b32 v20, v25, v21, v23
	v_perm_b32 v21, v25, v21, v24
	v_add_lshl_u32 v12, v12, v17, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v13, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v15, s[12:15], 0 offen
	buffer_store_b128 v[8:11], v14, s[12:15], 0 offen
	buffer_store_b128 v[18:21], v12, s[12:15], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 199
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19924
; TotalNumSgprs: 40
; NumVgprs: 199
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     199
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
