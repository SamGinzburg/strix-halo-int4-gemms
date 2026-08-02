	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
	v_mov_b32_e32 v108, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s33, s[0:1], 0x38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v87, 2, v108
	v_and_b32_e32 v88, 62, v87
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
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s23
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v0
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
	s_lshl_b32 s7, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v0, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v0
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_i32 s10, s4, s6
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s6, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s6, v88
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s33, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s3, s8
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s15, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s3, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s29, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v0, s34, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s34, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s31
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s6, v87
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v89, v1, 4, v0
	v_add3_u32 v0, s28, s4, v89
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s14, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s34, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v3, 0x80000000, v0, vcc_lo
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v90, 4, v108
	v_and_b32_e32 v91, 8, v108
	v_and_b32_e32 v92, 32, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v3, s[24:27], 0 offen
	buffer_load_b128 v[10:13], v2, s[24:27], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s15, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v0, s15, 7, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v56, 0, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s34, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[14:17], v2, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v3, s[24:27], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s14, v87
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 48, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s31
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s15, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s6, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v85, v2, v3, s29
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s6, v88
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s34, v4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v2, s4, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s33, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s34, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_load_b128 v[22:25], v0, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v3, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v0, 0x80000000, v4, s3
	v_cndmask_b32_e64 v3, 0x80000000, v5, s3
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v3, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v0, 0x80000000, v2 :: v_dual_and_b32 v5, 6, v108
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s3, s14, 6
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 15, v108
	v_lshrrev_b32_e32 v3, 3, v108
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[38:41], v0, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v0, v108, 0, 1
	v_lshlrev_b32_e32 v4, 5, v108
	s_mov_b32 s26, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v0, 0x420, v0
	v_xor_b32_e32 v0, v0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v95, v5, 10, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v0, s6, v87
	v_lshlrev_b32_e32 v5, 3, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v96, 0x90, v95
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v0, s4, s3, v85
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v97, 0x120, v95
	v_add_nc_u32_e32 v57, 0, v95
	v_xor_b32_e32 v98, 0x1b0, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v99, 0x210, v95
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, 0, v96
	v_xor_b32_e32 v100, 0x330, v95
	v_add_nc_u32_e32 v59, 0, v97
	v_xor_b32_e32 v101, 0x3a0, v95
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[42:45], v0, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v60, 0, v98
	v_add_nc_u32_e32 v61, 0, v99
	v_add_nc_u32_e32 v62, 0, v100
	v_add_nc_u32_e32 v63, 0, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v46, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v47, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v48, v12, v8, 0x5010400
	v_perm_b32 v12, v12, v8, 0x7030602
	v_perm_b32 v49, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_and_b16 v0.l, 0xff, v46.l
	v_lshrrev_b32_e32 v50, 8, v46
	v_lshrrev_b32_e32 v51, 24, v46
	v_and_b16 v0.h, 0xff, v46.h
	v_lshrrev_b32_e32 v46, 8, v10
	v_lshrrev_b32_e32 v52, 24, v10
	v_and_b16 v7.l, 0xff, v47.l
	v_lshrrev_b32_e32 v53, 8, v47
	v_lshrrev_b32_e32 v54, 24, v47
	v_and_b16 v7.h, 0xff, v47.h
	v_and_b16 v8.l, 0xff, v11.l
	v_lshrrev_b32_e32 v47, 8, v11
	v_lshrrev_b32_e32 v55, 24, v11
	v_and_b16 v8.h, 0xff, v11.h
	v_and_b16 v9.l, 0xff, v48.l
	v_lshrrev_b32_e32 v64, 8, v48
	v_lshrrev_b32_e32 v65, 24, v48
	v_and_b16 v9.h, 0xff, v48.h
	v_lshrrev_b32_e32 v48, 8, v12
	v_lshrrev_b32_e32 v66, 24, v12
	v_and_b16 v11.l, 0xff, v49.l
	v_lshrrev_b32_e32 v67, 8, v49
	v_lshrrev_b32_e32 v68, 24, v49
	v_and_b16 v11.h, 0xff, v49.h
	v_lshrrev_b32_e32 v49, 8, v13
	v_lshrrev_b32_e32 v69, 24, v13
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v70, v18, v14, 0x5010400
	v_perm_b32 v71, v18, v14, 0x7030602
	v_perm_b32 v72, v19, v15, 0x5010400
	v_perm_b32 v73, v19, v15, 0x7030602
	v_perm_b32 v74, v20, v16, 0x5010400
	v_perm_b32 v75, v20, v16, 0x7030602
	v_perm_b32 v76, v21, v17, 0x5010400
	v_perm_b32 v77, v21, v17, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v6.l, 0xff, v10.l
	v_and_b16 v6.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v12.l
	v_and_b16 v10.h, 0xff, v12.h
	v_and_b16 v12.l, 0xff, v13.l
	v_and_b16 v12.h, 0xff, v13.h
	v_lshlrev_b16 v13.l, 8, v50.l
	v_lshlrev_b16 v13.h, 8, v51.l
	v_lshlrev_b16 v14.l, 8, v46.l
	v_lshlrev_b16 v14.h, 8, v52.l
	v_lshlrev_b16 v15.l, 8, v53.l
	v_lshlrev_b16 v15.h, 8, v54.l
	v_lshlrev_b16 v16.l, 8, v47.l
	v_lshlrev_b16 v16.h, 8, v55.l
	v_lshlrev_b16 v17.l, 8, v64.l
	v_lshlrev_b16 v17.h, 8, v65.l
	v_lshlrev_b16 v18.l, 8, v48.l
	v_lshlrev_b16 v18.h, 8, v66.l
	v_lshlrev_b16 v19.l, 8, v67.l
	v_lshlrev_b16 v19.h, 8, v68.l
	v_lshlrev_b16 v20.l, 8, v49.l
	v_lshlrev_b16 v20.h, 8, v69.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v21.l, 0xff, v70.l
	v_lshrrev_b32_e32 v53, 8, v70
	v_lshrrev_b32_e32 v54, 24, v70
	v_and_b16 v21.h, 0xff, v70.h
	v_and_b16 v46.l, 0xff, v71.l
	v_lshrrev_b32_e32 v55, 8, v71
	v_lshrrev_b32_e32 v64, 24, v71
	v_and_b16 v46.h, 0xff, v71.h
	v_and_b16 v47.l, 0xff, v72.l
	v_lshrrev_b32_e32 v65, 8, v72
	v_lshrrev_b32_e32 v66, 24, v72
	v_and_b16 v47.h, 0xff, v72.h
	v_and_b16 v48.l, 0xff, v73.l
	v_lshrrev_b32_e32 v67, 8, v73
	v_lshrrev_b32_e32 v68, 24, v73
	v_and_b16 v48.h, 0xff, v73.h
	v_and_b16 v49.l, 0xff, v74.l
	v_lshrrev_b32_e32 v69, 8, v74
	v_lshrrev_b32_e32 v70, 24, v74
	v_and_b16 v49.h, 0xff, v74.h
	v_and_b16 v50.l, 0xff, v75.l
	v_lshrrev_b32_e32 v71, 8, v75
	v_lshrrev_b32_e32 v72, 24, v75
	v_and_b16 v50.h, 0xff, v75.h
	v_and_b16 v51.l, 0xff, v76.l
	v_lshrrev_b32_e32 v73, 8, v76
	v_lshrrev_b32_e32 v74, 24, v76
	v_and_b16 v51.h, 0xff, v76.h
	v_and_b16 v52.l, 0xff, v77.l
	v_lshrrev_b32_e32 v75, 8, v77
	v_lshrrev_b32_e32 v76, 24, v77
	v_and_b16 v52.h, 0xff, v77.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v77, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v78, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v79, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_perm_b32 v80, v29, v25, 0x5010400
	v_perm_b32 v81, v29, v25, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v82, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v83, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v84, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v86, v37, v33, 0x5010400
	v_perm_b32 v93, v37, v33, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.l, v13.l
	v_or_b16 v8.l, v8.l, v16.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v13.l, 8, v53.l
	v_lshlrev_b16 v16.l, 8, v67.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v53, 8, v77
	v_or_b16 v0.h, v0.h, v13.h
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v13.h, 8, v54.l
	v_lshlrev_b16 v16.h, 8, v68.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v54, 24, v77
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v9.l, v9.l, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.l, 8, v55.l
	v_lshlrev_b16 v17.l, 8, v69.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v55, 8, v26
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v9.h, v9.h, v17.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.h, 8, v64.l
	v_lshlrev_b16 v17.h, 8, v70.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v64, 24, v26
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v10.l, v10.l, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v15.l, 8, v65.l
	v_lshlrev_b16 v18.l, 8, v71.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v65, 8, v78
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v15.h, 8, v66.l
	v_lshlrev_b16 v18.h, 8, v72.l
	v_lshlrev_b16 v19.l, 8, v73.l
	v_lshlrev_b16 v19.h, 8, v74.l
	v_lshlrev_b16 v20.l, 8, v75.l
	v_lshlrev_b16 v20.h, 8, v76.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v22.l, 0xff, v77.l
	v_and_b16 v22.h, 0xff, v77.h
	v_and_b16 v23.l, 0xff, v26.l
	v_and_b16 v23.h, 0xff, v26.h
	v_and_b16 v24.l, 0xff, v78.l
	v_lshrrev_b32_e32 v66, 24, v78
	v_and_b16 v24.h, 0xff, v78.h
	v_and_b16 v25.l, 0xff, v27.l
	v_lshrrev_b32_e32 v67, 8, v27
	v_lshrrev_b32_e32 v68, 24, v27
	v_and_b16 v25.h, 0xff, v27.h
	v_and_b16 v26.l, 0xff, v79.l
	v_lshrrev_b32_e32 v69, 8, v79
	v_lshrrev_b32_e32 v70, 24, v79
	v_and_b16 v26.h, 0xff, v79.h
	v_and_b16 v27.l, 0xff, v28.l
	v_lshrrev_b32_e32 v71, 8, v28
	v_lshrrev_b32_e32 v72, 24, v28
	v_and_b16 v27.h, 0xff, v28.h
	v_and_b16 v28.l, 0xff, v80.l
	v_lshrrev_b32_e32 v73, 8, v80
	v_lshrrev_b32_e32 v74, 24, v80
	v_and_b16 v28.h, 0xff, v80.h
	v_and_b16 v29.l, 0xff, v81.l
	v_lshrrev_b32_e32 v75, 8, v81
	v_lshrrev_b32_e32 v76, 24, v81
	v_and_b16 v29.h, 0xff, v81.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v30.l, 0xff, v82.l
	v_lshrrev_b32_e32 v77, 8, v82
	v_lshrrev_b32_e32 v78, 24, v82
	v_and_b16 v30.h, 0xff, v82.h
	v_and_b16 v31.l, 0xff, v34.l
	v_lshrrev_b32_e32 v79, 8, v34
	v_lshrrev_b32_e32 v80, 24, v34
	v_and_b16 v31.h, 0xff, v34.h
	v_and_b16 v32.l, 0xff, v83.l
	v_lshrrev_b32_e32 v81, 8, v83
	v_lshrrev_b32_e32 v82, 24, v83
	v_and_b16 v32.h, 0xff, v83.h
	v_and_b16 v33.l, 0xff, v35.l
	v_lshrrev_b32_e32 v83, 8, v35
	v_lshrrev_b32_e32 v94, 24, v35
	v_and_b16 v33.h, 0xff, v35.h
	v_and_b16 v34.l, 0xff, v84.l
	v_lshrrev_b32_e32 v102, 8, v84
	v_lshrrev_b32_e32 v103, 24, v84
	v_and_b16 v34.h, 0xff, v84.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v84, 8, v36
	v_lshrrev_b32_e32 v104, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v86.l
	v_lshrrev_b32_e32 v105, 8, v86
	v_lshrrev_b32_e32 v106, 24, v86
	v_and_b16 v36.h, 0xff, v86.h
	v_lshrrev_b32_e32 v86, 8, v93
	v_lshrrev_b32_e32 v107, 24, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v0
	ds_store_b16_d16_hi v57, v0 offset:64
	ds_store_b16 v58, v6
	ds_store_b16_d16_hi v58, v6 offset:64
	ds_store_b16 v59, v7
	ds_store_b16_d16_hi v59, v7 offset:64
	ds_store_b16 v60, v8
	ds_store_b16_d16_hi v60, v8 offset:64
	ds_store_b16 v61, v9
	ds_store_b16_d16_hi v61, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v7.h, v48.l, v16.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.l, 8, v53.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v13.l, v21.l, v13.l
	v_or_b16 v8.l, v48.h, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.h, 8, v54.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v8.h, v49.l, v17.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.l, 8, v55.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v9.l, v49.h, v17.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.h, 8, v64.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v0.l, v21.h, v13.h
	v_or_b16 v9.h, v50.l, v18.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.l, 8, v65.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v37.l, 0xff, v93.l
	v_and_b16 v37.h, 0xff, v93.h
	v_or_b16 v0.h, v46.l, v14.l
	v_or_b16 v6.l, v46.h, v14.h
	v_or_b16 v6.h, v47.l, v15.l
	v_or_b16 v7.l, v47.h, v15.h
	v_or_b16 v13.h, v50.h, v18.h
	v_or_b16 v14.l, v51.l, v19.l
	v_or_b16 v14.h, v51.h, v19.h
	v_or_b16 v15.l, v52.l, v20.l
	v_or_b16 v15.h, v52.h, v20.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.h, 8, v66.l
	v_lshlrev_b16 v19.l, 8, v67.l
	v_lshlrev_b16 v19.h, 8, v68.l
	v_lshlrev_b16 v20.l, 8, v69.l
	v_lshlrev_b16 v20.h, 8, v70.l
	v_lshlrev_b16 v21.l, 8, v71.l
	v_lshlrev_b16 v21.h, 8, v72.l
	v_lshlrev_b16 v46.l, 8, v73.l
	v_lshlrev_b16 v46.h, 8, v74.l
	v_lshlrev_b16 v47.l, 8, v75.l
	v_lshlrev_b16 v47.h, 8, v76.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v48.l, 8, v77.l
	v_lshlrev_b16 v48.h, 8, v78.l
	v_lshlrev_b16 v49.l, 8, v79.l
	v_lshlrev_b16 v49.h, 8, v80.l
	v_lshlrev_b16 v50.l, 8, v81.l
	v_lshlrev_b16 v50.h, 8, v82.l
	v_lshlrev_b16 v51.l, 8, v83.l
	v_lshlrev_b16 v51.h, 8, v94.l
	v_lshlrev_b16 v52.l, 8, v102.l
	v_lshlrev_b16 v52.h, 8, v103.l
	v_lshlrev_b16 v53.l, 8, v84.l
	v_lshlrev_b16 v53.h, 8, v104.l
	v_lshlrev_b16 v54.l, 8, v105.l
	v_lshlrev_b16 v54.h, 8, v106.l
	v_lshlrev_b16 v55.l, 8, v86.l
	v_lshlrev_b16 v55.h, 8, v107.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v56, v[38:41] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v57, v13 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v10 offset:640
	ds_store_b16_d16_hi v57, v10 offset:704
	ds_store_b16 v62, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v57, v0 offset:16448
	ds_store_b16_d16_hi v58, v0 offset:16384
	ds_store_b16 v58, v6 offset:16448
	ds_store_b16_d16_hi v59, v6 offset:16384
	ds_store_b16 v59, v7 offset:16448
	ds_store_b16_d16_hi v60, v7 offset:16384
	ds_store_b16 v60, v8 offset:16448
	ds_store_b16_d16_hi v61, v8 offset:16384
	ds_store_b16 v61, v9 offset:16448
	ds_store_b16_d16_hi v57, v9 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v62, v11 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v57, v13 offset:17088
	ds_store_b16 v62, v14 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v12
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v62, v14 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v63, v12 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v63, v15 offset:16384
	ds_store_b16_d16_hi v63, v15 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v22.l, v16.l
	v_or_b16 v0.h, v22.h, v16.h
	v_or_b16 v6.l, v23.l, v17.l
	v_or_b16 v6.h, v23.h, v17.h
	v_or_b16 v7.l, v24.l, v18.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v7.h, v24.h, v18.h
	v_or_b16 v8.l, v25.l, v19.l
	v_or_b16 v8.h, v25.h, v19.h
	v_or_b16 v9.l, v26.l, v20.l
	v_or_b16 v9.h, v26.h, v20.h
	v_or_b16 v10.l, v27.l, v21.l
	v_or_b16 v10.h, v27.h, v21.h
	v_or_b16 v11.l, v28.l, v46.l
	v_or_b16 v11.h, v28.h, v46.h
	v_or_b16 v12.l, v29.l, v47.l
	v_or_b16 v12.h, v29.h, v47.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v13.l, v30.l, v48.l
	v_or_b16 v13.h, v30.h, v48.h
	v_or_b16 v14.l, v31.l, v49.l
	v_or_b16 v14.h, v31.h, v49.h
	v_or_b16 v15.l, v32.l, v50.l
	v_or_b16 v15.h, v32.h, v50.h
	v_or_b16 v16.l, v33.l, v51.l
	v_or_b16 v16.h, v33.h, v51.h
	v_or_b16 v17.l, v34.l, v52.l
	v_or_b16 v17.h, v34.h, v52.h
	v_or_b16 v18.l, v35.l, v53.l
	v_or_b16 v18.h, v35.h, v53.h
	v_or_b16 v19.l, v36.l, v54.l
	v_or_b16 v19.h, v36.h, v54.h
	v_or_b16 v20.l, v37.l, v55.l
	v_or_b16 v20.h, v37.h, v55.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v0 offset:8192
	ds_store_b16_d16_hi v57, v0 offset:8256
	ds_store_b16 v58, v6 offset:8192
	ds_store_b16_d16_hi v58, v6 offset:8256
	ds_store_b16 v59, v7 offset:8192
	ds_store_b16_d16_hi v59, v7 offset:8256
	ds_store_b16 v60, v8 offset:8192
	ds_store_b16_d16_hi v60, v8 offset:8256
	ds_store_b16 v61, v9 offset:8192
	ds_store_b16_d16_hi v61, v9 offset:8256
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v56, v[42:45] offset:36864
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v57, v13 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v10 offset:8832
	ds_store_b16_d16_hi v57, v10 offset:8896
	ds_store_b16 v62, v11 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v57, v13 offset:24640
	ds_store_b16 v58, v14 offset:24576
	ds_store_b16_d16_hi v58, v14 offset:24640
	ds_store_b16 v59, v15 offset:24576
	ds_store_b16_d16_hi v59, v15 offset:24640
	ds_store_b16 v60, v16 offset:24576
	ds_store_b16_d16_hi v60, v16 offset:24640
	ds_store_b16 v61, v17 offset:24576
	ds_store_b16_d16_hi v61, v17 offset:24640
	ds_store_b16 v57, v18 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v62, v11 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v57, v18 offset:25280
	ds_store_b16 v62, v19 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v12 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v62, v19 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v63, v12 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v63, v20 offset:24576
	ds_store_b16_d16_hi v63, v20 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v122, 8, v108
	v_and_b32_e32 v123, 32, v108
	v_and_b32_e32 v93, 0x800, v4
	v_lshl_or_b32 v94, v1, 6, v5
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
.LBB0_3:                                ; %Flow289
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_and_or_b32 v86, v3, 16, v2
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	scratch_store_b32 off, v108, off        ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v108, 5, 1
	v_bfe_i32 v2, v108, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s36, s5, 6
	s_add_i32 s0, s6, 64
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v0, 0x420, v0
	v_lshl_or_b32 v94, v1, 6, v5
	v_and_b32_e32 v93, 0x800, v4
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v102, s34, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v0, 0x210, v2, v0
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v0, v0, v94
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v103, v0, v93
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v65, 0
	v_xor_b32_e32 v104, 16, v103
	v_xor_b32_e32 v105, 32, v103
	v_xor_b32_e32 v106, 48, v103
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v24, 0
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s35, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_add_i32 s36, s36, -3
	s_mov_b32 s37, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v0, s38, v86
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s0, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v139, s4, v103
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s6, v87
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s6, s14, v[85:86]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v143, s4, v104
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v155, s35, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v156, s35, v104
	s_mov_b32 s38, s30
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v13, v0 offset:832
	ds_load_u8 v14, v0 offset:768
	ds_load_u8 v15, v0 offset:960
	ds_load_u8 v16, v0 offset:896
	ds_load_u8 v17, v0 offset:576
	ds_load_u8 v18, v0 offset:512
	ds_load_u8 v19, v0 offset:704
	ds_load_u8 v20, v0 offset:640
	ds_load_u8 v107, v0 offset:320
	ds_load_u8 v108, v0 offset:256
	ds_load_u8 v111, v0 offset:448
	ds_load_u8 v112, v0 offset:384
	ds_load_u8 v113, v0 offset:64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[115:118], v139
	ds_load_b128 v[119:122], v143
	ds_load_b128 v[139:142], v139 offset:4096
	ds_load_b128 v[143:146], v143 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[171:174], v155
	ds_load_b128 v[175:178], v156
	ds_load_b128 v[179:182], v155 offset:4096
	ds_load_b128 v[183:186], v156 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v0
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v0 offset:192
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	v_lshl_or_b32 v110, v15, 16, v13
	ds_load_u8 v13, v0 offset:128
	ds_load_u8 v15, v0 offset:1856
	ds_load_u8 v20, v0 offset:1984
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v112, v111, 0xc0c0004
	v_lshl_or_b32 v109, v18, 16, v17
	v_perm_b32 v17, v108, v107, 0xc0c0004
	ds_load_u8 v18, v0 offset:1792
	ds_load_u8 v107, v0 offset:1536
	ds_load_u8 v111, v0 offset:1280
	v_lshl_or_b32 v108, v19, 16, v17
	ds_load_u8 v17, v0 offset:1920
	ds_load_u8 v19, v0 offset:1600
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	ds_load_u8 v18, v0 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v20, 0xc0c0004
	ds_load_u8 v20, v0 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v107, v19, 0xc0c0004
	v_lshl_or_b32 v114, v17, 16, v15
	ds_load_u8 v17, v0 offset:1216
	v_perm_b32 v13, v13, v16, 0xc0c0004
	ds_load_u8 v16, v0 offset:1728
	v_perm_b32 v14, v14, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v13, 16, v14
	ds_load_u8 v13, v0 offset:1408
	ds_load_u8 v14, v0 offset:1088
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[107:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	ds_load_u8 v18, v0 offset:1472
	v_lshl_or_b32 v113, v16, 16, v19
	ds_load_u8 v16, v0 offset:1024
	v_perm_b32 v15, v111, v20, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v13, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v13, 16, v15
	ds_load_u8 v13, v0 offset:1152
	ds_load_u8 v15, v0 offset:864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v0 offset:800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v13, v17, 0xc0c0004
	ds_load_u8 v17, v0 offset:992
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v0 offset:544
	v_lshl_or_b32 v111, v13, 16, v14
	ds_load_u8 v13, v0 offset:928
	ds_load_u8 v14, v0 offset:608
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[155:162], v[183:186], v[111:114], v[155:162] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v13, v17, 0xc0c0004
	ds_load_u8 v17, v0 offset:736
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v0 offset:672
	v_lshl_or_b32 v126, v13, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v16, 16, v14
	ds_load_u8 v13, v0 offset:352
	ds_load_u8 v14, v0 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v0 offset:480
	ds_load_u8 v15, v0 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v14, 16, v13
	ds_load_u8 v13, v0 offset:32
	ds_load_u8 v14, v0 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v14, 0xc0c0004
	ds_load_u8 v14, v0 offset:224
	ds_load_u8 v15, v0 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v14, 16, v13
	ds_load_u8 v13, v0 offset:1888
	ds_load_u8 v14, v0 offset:1824
	v_wmma_i32_16x16x16_iu8 v[131:138], v[115:118], v[123:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[139:142], v[123:126], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[163:170], v[171:174], v[123:126], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v0 offset:2016
	ds_load_u8 v15, v0 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v0 offset:1632
	ds_load_u8 v16, v0 offset:1568
	v_lshl_or_b32 v130, v14, 16, v13
	ds_load_u8 v13, v0 offset:1376
	ds_load_u8 v14, v0 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v0 offset:1760
	ds_load_u8 v17, v0 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v16, 16, v15
	ds_load_u8 v14, v0 offset:1504
	ds_load_u8 v15, v0 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_lshl_or_b32 v128, v14, 16, v13
	ds_load_u8 v13, v0 offset:1120
	ds_load_u8 v14, v0 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v0 offset:1248
	ds_load_u8 v15, v0 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v127, v14, 16, v13
	v_wmma_i32_16x16x16_iu8 v[13:20], v[115:118], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[119:122], v[127:130], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[119:122], v[111:114], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[139:142], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[143:146], v[127:130], v[147:154] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[163:170], v[175:178], v[127:130], v[163:170] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[115:122], v[143:146], v[111:114], v[115:122] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[139:146], v[171:174], v[107:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v107, v0 offset:2880
	ds_load_u8 v108, v0 offset:2816
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[139:146], v[175:178], v[111:114], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[179:182], v[123:126], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[183:186], v[127:130], v[171:178] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v127, s4, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v0 offset:3008
	ds_load_u8 v109, v0 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v0 offset:2624
	ds_load_u8 v110, v0 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v0 offset:2752
	ds_load_u8 v111, v0 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v110, 0xc0c0004
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v0 offset:2368
	ds_load_u8 v108, v0 offset:2304
	v_lshl_or_b32 v109, v111, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v0 offset:2496
	ds_load_u8 v111, v0 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v111, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v0 offset:2112
	ds_load_u8 v111, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v111, v107, 0xc0c0004
	ds_load_u8 v111, v0 offset:2240
	ds_load_u8 v112, v0 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v111, 16, v107
	ds_load_u8 v111, v0 offset:2912
	ds_load_u8 v112, v0 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v0 offset:3040
	ds_load_u8 v113, v0 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v0 offset:2656
	ds_load_u8 v114, v0 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v0 offset:2784
	ds_load_u8 v123, v0 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v123, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v0 offset:2400
	ds_load_u8 v112, v0 offset:2336
	v_lshl_or_b32 v113, v123, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v0 offset:2528
	ds_load_u8 v123, v0 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v123, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v0 offset:2144
	ds_load_u8 v123, v0 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v123, v111, 0xc0c0004
	ds_load_u8 v123, v0 offset:2272
	ds_load_u8 v124, v0 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v123, 16, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[123:126], v127
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[123:126], v[107:110], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[123:126], v[111:114], v[131:138] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[123:126], v127 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v127, s35, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[123:126], v[107:110], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[123:126], v[111:114], v[147:154] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[123:126], v127
	ds_load_b128 v[127:130], v127 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[123:126], v[107:110], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[127:130], v[107:110], v[155:162] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v107, v0 offset:3904
	ds_load_u8 v108, v0 offset:3840
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[163:170], v[123:126], v[111:114], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[127:130], v[111:114], v[171:178] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v0 offset:4032
	ds_load_u8 v109, v0 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v0 offset:3648
	ds_load_u8 v110, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v0 offset:3776
	ds_load_u8 v111, v0 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v110, 0xc0c0004
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v0 offset:3392
	ds_load_u8 v108, v0 offset:3328
	v_lshl_or_b32 v109, v111, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v0 offset:3520
	ds_load_u8 v111, v0 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v111, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v0 offset:3136
	ds_load_u8 v111, v0 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v111, v107, 0xc0c0004
	ds_load_u8 v111, v0 offset:3264
	ds_load_u8 v112, v0 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v111, 16, v107
	ds_load_u8 v111, v0 offset:3936
	ds_load_u8 v112, v0 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v0 offset:4064
	ds_load_u8 v113, v0 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v0 offset:3680
	ds_load_u8 v114, v0 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v0 offset:3808
	ds_load_u8 v123, v0 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v123, v114, 0xc0c0004
	v_lshl_or_b32 v114, v112, 16, v111
	ds_load_u8 v111, v0 offset:3424
	ds_load_u8 v112, v0 offset:3360
	v_lshl_or_b32 v113, v123, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v0 offset:3552
	ds_load_u8 v123, v0 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v123, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	ds_load_u8 v111, v0 offset:3168
	ds_load_u8 v123, v0 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v123, v111, 0xc0c0004
	ds_load_u8 v123, v0 offset:3296
	ds_load_u8 v0, v0 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v111, v0, 16, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s4, v106
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s6, s34
	s_add_i32 s4, s4, s28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[123:126], v0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[123:126], v[107:110], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[123:126], v[111:114], v[131:138] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[123:126], v0 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s35, v106
	s_mov_b32 s35, s3
	ds_load_b128 v[127:130], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[123:126], v[107:110], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[123:126], v[111:114], v[147:154] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[123:126], v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v0, s6, v88
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[127:130], v[107:110], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[127:130], v[111:114], v[171:178] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v127, v17
	v_cvt_f32_i32_e32 v128, v18
	v_cvt_f32_i32_e32 v129, v19
	v_cvt_f32_i32_e32 v130, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v61, v61, v127 :: v_dual_add_f32 v62, v62, v128
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v53, v53, v129 :: v_dual_add_f32 v54, v54, v130
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[123:126], v[107:110], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[123:126], v[111:114], v[163:170] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v13
	v_cvt_f32_i32_e32 v124, v14
	v_cvt_f32_i32_e32 v125, v15
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v107, v139
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v139, v115
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v0, s4, v89
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v113, v144
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v144, v120
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s4, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v45, v45, v139 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v30, v144 :: v_dual_cndmask_b32 v17, 0x80000000, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s4, s4, s15
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v109, v143
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v143, v119
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v0, s4, v89
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v111, v140
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v140, v116
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v115, v155
	v_cvt_f32_i32_e32 v119, v156
	v_cvt_f32_i32_e32 v116, v157
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v155, v131
	v_cvt_f32_i32_e32 v156, v132
	v_cvt_f32_i32_e32 v157, v133
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v131, v163
	v_cvt_f32_i32_e32 v133, v167
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v163, v147
	v_cvt_f32_i32_e32 v167, v151
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v147, v171
	v_cvt_f32_i32_e32 v151, v172
	v_cvt_f32_i32_e32 v112, v142
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v142, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v29, v29, v143 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v108, v141
	v_cvt_f32_i32_e32 v110, v145
	v_cvt_f32_i32_e32 v114, v146
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v141, v117
	v_cvt_f32_i32_e32 v145, v121
	v_cvt_f32_i32_e32 v146, v122
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v120, v158
	v_cvt_f32_i32_e32 v117, v159
	v_cvt_f32_i32_e32 v121, v160
	v_cvt_f32_i32_e32 v118, v161
	v_cvt_f32_i32_e32 v122, v162
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v158, v134
	v_cvt_f32_i32_e32 v159, v135
	v_cvt_f32_i32_e32 v160, v136
	v_cvt_f32_i32_e32 v161, v137
	v_cvt_f32_i32_e32 v162, v138
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v135, v164
	v_cvt_f32_i32_e32 v132, v165
	v_cvt_f32_i32_e32 v136, v166
	v_cvt_f32_i32_e32 v137, v168
	v_cvt_f32_i32_e32 v134, v169
	v_cvt_f32_i32_e32 v138, v170
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v164, v148
	v_cvt_f32_i32_e32 v165, v149
	v_cvt_f32_i32_e32 v166, v150
	v_cvt_f32_i32_e32 v168, v152
	v_cvt_f32_i32_e32 v169, v153
	v_cvt_f32_i32_e32 v170, v154
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v148, v173
	v_cvt_f32_i32_e32 v152, v174
	v_cvt_f32_i32_e32 v149, v175
	v_cvt_f32_i32_e32 v153, v176
	v_cvt_f32_i32_e32 v150, v177
	v_cvt_f32_i32_e32 v154, v178
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v73, v73, v107 :: v_dual_add_f32 v70, v70, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v124 :: v_dual_add_f32 v75, v75, v123
	v_dual_add_f32 v72, v72, v126 :: v_dual_add_f32 v71, v71, v125
	v_add_f32_e32 v46, v46, v140
	v_dual_add_f32 v22, v22, v146 :: v_dual_add_f32 v21, v21, v145
	v_dual_add_f32 v83, v83, v155 :: v_dual_add_f32 v80, v80, v158
	v_dual_add_f32 v79, v79, v157 :: v_dual_add_f32 v64, v64, v160
	v_dual_add_f32 v63, v63, v159 :: v_dual_add_f32 v56, v56, v162
	v_dual_add_f32 v55, v55, v161 :: v_dual_add_f32 v48, v48, v164
	v_dual_add_f32 v47, v47, v163 :: v_dual_add_f32 v40, v40, v166
	v_dual_add_f32 v39, v39, v165 :: v_dual_add_f32 v32, v32, v168
	v_dual_add_f32 v31, v31, v167 :: v_dual_add_f32 v24, v24, v170
	v_dual_add_f32 v23, v23, v169 :: v_dual_add_f32 v74, v74, v111
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v69, v69, v108 :: v_dual_add_f32 v66, v66, v113
	v_dual_add_f32 v65, v65, v109 :: v_dual_add_f32 v58, v58, v114
	v_dual_add_f32 v57, v57, v110 :: v_dual_add_f32 v50, v50, v119
	v_dual_add_f32 v49, v49, v115 :: v_dual_add_f32 v42, v42, v120
	v_dual_add_f32 v41, v41, v116 :: v_dual_add_f32 v34, v34, v121
	v_dual_add_f32 v33, v33, v117 :: v_dual_add_f32 v26, v26, v122
	v_dual_add_f32 v25, v25, v118 :: v_dual_add_f32 v82, v82, v135
	v_dual_add_f32 v81, v81, v131 :: v_dual_add_f32 v78, v78, v136
	v_dual_add_f32 v77, v77, v132 :: v_dual_add_f32 v68, v68, v137
	v_dual_add_f32 v67, v67, v133 :: v_dual_add_f32 v60, v60, v138
	v_dual_add_f32 v59, v59, v134 :: v_dual_add_f32 v52, v52, v151
	v_dual_add_f32 v51, v51, v147 :: v_dual_add_f32 v44, v44, v152
	v_dual_add_f32 v43, v43, v148 :: v_dual_add_f32 v36, v36, v153
	v_dual_add_f32 v35, v35, v149 :: v_dual_add_f32 v28, v28, v154
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v84, v84, v156
	v_dual_add_f32 v38, v38, v142 :: v_dual_add_f32 v37, v37, v141
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v171, v17, v13, 0x5010400
	v_perm_b32 v172, v17, v13, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s4, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v173, v18, v14, 0x5010400
	v_perm_b32 v174, v18, v14, 0x7030602
	v_perm_b32 v175, v19, v15, 0x5010400
	v_perm_b32 v176, v19, v15, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v17, 0x80000000, v13, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v177, v20, v16, 0x5010400
	v_perm_b32 v178, v20, v16, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s37, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s4, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s37, s4, 0
	s_mov_b32 s4, s1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s7, s37, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s7, 0
	v_add_nc_u32_e32 v0, s6, v90
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s6, s7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v27, v27, v150
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s5, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s30, s6, 0x8000
	ds_store_b128 v0, v[9:12] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v9, 8, v171
	v_and_b16 v0.l, 0xff, v171.l
	v_lshrrev_b32_e32 v11, 24, v172
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s3, s1, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v0.h, 8, v9.l
	v_lshrrev_b32_e32 v9, 24, v171
	s_mov_b32 s5, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v0.l, v0.l, v0.h
	v_and_b16 v0.h, 0xff, v171.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v0.h, v0.h, v9.l
	v_lshrrev_b32_e32 v9, 8, v172
	v_and_b16 v9.h, 0xff, v172.l
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v9.h, v9.l
	v_and_b16 v9.l, 0xff, v172.h
	v_lshlrev_b16 v9.h, 8, v11.l
	v_or_b16 v10.h, v9.l, v9.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v179, v17, v13, 0x5010400
	v_perm_b32 v13, v17, v13, 0x7030602
	v_perm_b32 v17, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v180, v19, v15, 0x5010400
	v_lshrrev_b32_e32 v9, 8, v179
	v_and_b16 v9.h, 0xff, v179.l
	v_lshrrev_b32_e32 v12, 24, v179
	v_lshrrev_b32_e32 v14, 24, v13
	v_perm_b32 v19, v19, v15, 0x7030602
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v15, 24, v178
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v181, v20, v16, 0x5010400
	v_perm_b32 v182, v20, v16, 0x7030602
	v_lshrrev_b32_e32 v16, 24, v17
	v_or_b16 v11.l, v9.h, v9.l
	v_and_b16 v9.l, 0xff, v179.h
	v_lshlrev_b16 v9.h, 8, v12.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.l, 8, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v16.l, 8, v16.l
	v_lshrrev_b32_e32 v20, 24, v19
	v_lshrrev_b32_e32 v107, 24, v182
	v_or_b16 v11.h, v9.l, v9.h
	v_lshrrev_b32_e32 v9, 8, v13
	v_and_b16 v9.h, 0xff, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v107.l, 8, v107.l
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v12.l, v9.h, v9.l
	v_and_b16 v9.l, 0xff, v13.h
	v_lshlrev_b16 v9.h, 8, v14.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v13, s1, v96
	v_lshrrev_b32_e32 v14, 24, v173
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.h, v9.l, v9.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s1, v95
	ds_store_b16 v9, v0
	ds_store_b16_d16_hi v9, v0 offset:64
	ds_store_b16 v13, v10
	ds_store_b16_d16_hi v13, v10 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v9, v11 offset:16384
	ds_store_b16_d16_hi v9, v11 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v11, 8, v173
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v13, v12 offset:16384
	ds_store_b16_d16_hi v13, v12 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v12, 8, v174
	v_and_b16 v0.l, 0xff, v173.l
	v_and_b16 v0.h, 0xff, v173.h
	v_and_b16 v10.l, 0xff, v174.l
	v_lshlrev_b16 v10.h, 8, v11.l
	v_lshrrev_b32_e32 v13, 24, v174
	v_lshlrev_b16 v11.l, 8, v14.l
	v_lshlrev_b16 v11.h, 8, v12.l
	v_lshrrev_b32_e32 v12, 8, v175
	v_or_b16 v0.l, v0.l, v10.h
	v_and_b16 v10.h, 0xff, v174.h
	v_or_b16 v0.h, v0.h, v11.l
	v_and_b16 v11.l, 0xff, v175.l
	v_or_b16 v10.l, v10.l, v11.h
	v_lshlrev_b16 v11.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 24, v175
	v_lshlrev_b16 v12.l, 8, v12.l
	v_lshrrev_b32_e32 v14, 8, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v10.h, v10.h, v11.h
	v_and_b16 v11.h, 0xff, v175.h
	v_or_b16 v11.l, v11.l, v12.l
	v_lshlrev_b16 v12.l, 8, v13.l
	v_lshlrev_b16 v12.h, 8, v14.l
	v_lshrrev_b32_e32 v13, 24, v176
	v_lshrrev_b32_e32 v14, 24, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v11.h, v11.h, v12.l
	v_and_b16 v12.l, 0xff, v176.l
	v_lshlrev_b16 v13.l, 8, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v14.l, 8, v14.l
	v_or_b16 v12.l, v12.l, v12.h
	v_and_b16 v12.h, 0xff, v176.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v12.h, v12.h, v13.l
	v_lshrrev_b32_e32 v13, 8, v177
	v_and_b16 v13.h, 0xff, v177.l
	v_lshlrev_b16 v13.l, 8, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v177.h
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v178
	v_and_b16 v14.h, 0xff, v178.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v14.l, 8, v14.l
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v178.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v14.h, v14.h, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v15, 8, v17
	v_and_b16 v15.h, 0xff, v17.l
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v17.h
	v_lshrrev_b32_e32 v17, 24, v18
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v18
	v_and_b16 v16.h, 0xff, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v17.l, 8, v17.l
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v18.h
	v_lshrrev_b32_e32 v18, 24, v180
	v_or_b16 v16.h, v16.h, v17.l
	v_lshrrev_b32_e32 v17, 8, v180
	v_and_b16 v17.h, 0xff, v180.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v18.l, 8, v18.l
	v_lshlrev_b16 v17.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v17.l, v17.h, v17.l
	v_and_b16 v17.h, 0xff, v180.h
	v_or_b16 v17.h, v17.h, v18.l
	v_lshrrev_b32_e32 v18, 8, v19
	v_and_b16 v18.h, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v20.l
	v_lshrrev_b32_e32 v20, 24, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v18.l, 8, v18.l
	v_lshlrev_b16 v20.l, 8, v20.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v18.l, v18.h, v18.l
	v_and_b16 v18.h, 0xff, v19.h
	v_or_b16 v18.h, v18.h, v19.l
	v_lshrrev_b32_e32 v19, 8, v181
	v_and_b16 v19.h, 0xff, v181.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v19.l, 8, v19.l
	v_or_b16 v19.l, v19.h, v19.l
	v_and_b16 v19.h, 0xff, v181.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v19.h, v19.h, v20.l
	v_lshrrev_b32_e32 v20, 8, v182
	v_and_b16 v20.h, 0xff, v182.l
	v_lshlrev_b16 v20.l, 8, v20.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v20.l, v20.h, v20.l
	v_and_b16 v20.h, 0xff, v182.h
	v_or_b16 v20.h, v20.h, v107.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v107, s1, v97
	ds_store_b16 v107, v0
	ds_store_b16_d16_hi v107, v0 offset:64
	v_add_nc_u32_e32 v0, s1, v98
	ds_store_b16 v0, v10
	ds_store_b16_d16_hi v0, v10 offset:64
	v_add_nc_u32_e32 v10, s1, v99
	ds_store_b16 v10, v11
	ds_store_b16_d16_hi v10, v11 offset:64
	ds_store_b16 v9, v12 offset:640
	ds_store_b16_d16_hi v9, v12 offset:704
	v_add_nc_u32_e32 v11, s1, v100
	v_add_nc_u32_e32 v12, s1, v101
	ds_store_b16 v11, v13
	ds_store_b16_d16_hi v11, v13 offset:64
	ds_store_b16 v12, v14
	ds_store_b16_d16_hi v12, v14 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v107, v15 offset:16384
	ds_store_b16_d16_hi v107, v15 offset:16448
	ds_store_b16 v0, v16 offset:16384
	ds_store_b16_d16_hi v0, v16 offset:16448
	ds_store_b16 v10, v17 offset:16384
	ds_store_b16_d16_hi v10, v17 offset:16448
	ds_store_b16 v9, v18 offset:17024
	ds_store_b16_d16_hi v9, v18 offset:17088
	ds_store_b16 v11, v19 offset:16384
	ds_store_b16_d16_hi v11, v19 offset:16448
	ds_store_b16 v12, v20 offset:16384
	ds_store_b16_d16_hi v12, v20 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v122, v91 :: v_dual_mov_b32 v123, v92
	s_mov_b32 s26, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v73, 0
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s35, 0, 0x4000
	v_mov_b32_e32 v74, v73
	v_mov_b32_e32 v65, v73
	v_mov_b32_e32 v61, v73
	v_mov_b32_e32 v69, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v71, v73 :: v_dual_mov_b32 v72, v74
	v_dual_mov_b32 v76, v74 :: v_dual_mov_b32 v75, v73
	v_mov_b32_e32 v66, v74
	v_mov_b32_e32 v62, v74
	v_dual_mov_b32 v70, v74 :: v_dual_mov_b32 v57, v73
	v_dual_mov_b32 v58, v74 :: v_dual_mov_b32 v53, v73
	v_dual_mov_b32 v54, v74 :: v_dual_mov_b32 v49, v73
	v_dual_mov_b32 v50, v74 :: v_dual_mov_b32 v45, v73
	v_dual_mov_b32 v46, v74 :: v_dual_mov_b32 v33, v73
	v_dual_mov_b32 v34, v74 :: v_dual_mov_b32 v29, v73
	v_dual_mov_b32 v30, v74 :: v_dual_mov_b32 v41, v73
	v_dual_mov_b32 v42, v74 :: v_dual_mov_b32 v37, v73
	v_dual_mov_b32 v38, v74 :: v_dual_mov_b32 v25, v73
	v_dual_mov_b32 v26, v74 :: v_dual_mov_b32 v21, v73
	v_mov_b32_e32 v22, v74
	v_dual_mov_b32 v82, v74 :: v_dual_mov_b32 v81, v73
	v_dual_mov_b32 v84, v74 :: v_dual_mov_b32 v83, v73
	v_dual_mov_b32 v67, v73 :: v_dual_mov_b32 v68, v74
	v_dual_mov_b32 v63, v73 :: v_dual_mov_b32 v64, v74
	v_dual_mov_b32 v78, v74 :: v_dual_mov_b32 v77, v73
	v_dual_mov_b32 v80, v74 :: v_dual_mov_b32 v79, v73
	v_dual_mov_b32 v59, v73 :: v_dual_mov_b32 v60, v74
	v_dual_mov_b32 v55, v73 :: v_dual_mov_b32 v56, v74
	v_dual_mov_b32 v51, v73 :: v_dual_mov_b32 v52, v74
	v_dual_mov_b32 v47, v73 :: v_dual_mov_b32 v48, v74
	v_dual_mov_b32 v35, v73 :: v_dual_mov_b32 v36, v74
	v_dual_mov_b32 v31, v73 :: v_dual_mov_b32 v32, v74
	v_dual_mov_b32 v43, v73 :: v_dual_mov_b32 v44, v74
	v_dual_mov_b32 v39, v73 :: v_dual_mov_b32 v40, v74
	v_dual_mov_b32 v27, v73 :: v_dual_mov_b32 v28, v74
	v_dual_mov_b32 v23, v73 :: v_dual_mov_b32 v24, v74
	s_add_i32 s3, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v0, s38, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v122
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v138, v0
	ds_load_u8_d16 v5, v0 offset:32
	ds_load_u8_d16 v139, v0 offset:64
	ds_load_u8_d16 v136, v0 offset:128
	ds_load_u8_d16 v137, v0 offset:192
	ds_load_u8_d16 v6, v0 offset:224
	ds_load_u8_d16 v7, v0 offset:160
	ds_load_u8_d16 v10, v0 offset:96
	ds_load_u8_d16 v157, v0 offset:256
	ds_load_u8_d16 v160, v0 offset:320
	ds_load_u8_d16 v156, v0 offset:384
	ds_load_u8_d16 v158, v0 offset:448
	ds_load_u8_d16 v85, v0 offset:480
	ds_load_u8_d16 v88, v0 offset:416
	ds_load_u8_d16 v92, v0 offset:352
	ds_load_u8_d16 v95, v0 offset:288
	ds_load_u8_d16 v173, v0 offset:512
	ds_load_u8_d16 v176, v0 offset:576
	ds_load_u8_d16 v172, v0 offset:640
	ds_load_u8_d16 v174, v0 offset:704
	ds_load_u8_d16 v102, v0 offset:736
	ds_load_u8_d16 v104, v0 offset:672
	ds_load_u8_d16 v106, v0 offset:608
	ds_load_u8_d16 v107, v0 offset:544
	ds_load_u8_d16 v185, v0 offset:768
	ds_load_u8_d16 v188, v0 offset:832
	ds_load_u8_d16 v184, v0 offset:896
	ds_load_u8_d16 v186, v0 offset:960
	ds_load_u8_d16 v114, v0 offset:992
	ds_load_u8_d16 v116, v0 offset:928
	ds_load_u8_d16 v118, v0 offset:864
	ds_load_u8_d16 v119, v0 offset:800
	ds_load_u8_d16 v141, v0 offset:1024
	ds_load_u8_d16 v143, v0 offset:1088
	ds_load_u8_d16 v140, v0 offset:1152
	ds_load_u8_d16 v142, v0 offset:1216
	ds_load_u8_d16 v12, v0 offset:1248
	ds_load_u8_d16 v14, v0 offset:1184
	ds_load_u8_d16 v15, v0 offset:1120
	ds_load_u8_d16 v16, v0 offset:1056
	ds_load_u8_d16 v153, v0 offset:1280
	ds_load_u8_d16 v155, v0 offset:1344
	ds_load_u8_d16 v152, v0 offset:1408
	ds_load_u8_d16 v154, v0 offset:1472
	ds_load_u8_d16 v96, v0 offset:1504
	ds_load_u8_d16 v97, v0 offset:1440
	ds_load_u8_d16 v98, v0 offset:1376
	ds_load_u8_d16 v99, v0 offset:1312
	ds_load_u8_d16 v169, v0 offset:1536
	ds_load_u8_d16 v171, v0 offset:1600
	ds_load_u8_d16 v168, v0 offset:1664
	ds_load_u8_d16 v170, v0 offset:1728
	ds_load_u8_d16 v108, v0 offset:1760
	ds_load_u8_d16 v109, v0 offset:1696
	ds_load_u8_d16 v110, v0 offset:1632
	ds_load_u8_d16 v111, v0 offset:1568
	ds_load_u8_d16 v181, v0 offset:1792
	ds_load_u8_d16 v183, v0 offset:1856
	ds_load_u8_d16 v180, v0 offset:1920
	ds_load_u8_d16 v182, v0 offset:1984
	ds_load_u8_d16 v120, v0 offset:2016
	ds_load_u8_d16 v121, v0 offset:1952
	ds_load_u8_d16 v124, v0 offset:1888
	ds_load_u8_d16 v125, v0 offset:1824
	ds_load_u8_d16 v145, v0 offset:2048
	ds_load_u8_d16 v147, v0 offset:2112
	ds_load_u8_d16 v144, v0 offset:2176
	ds_load_u8_d16 v146, v0 offset:2240
	ds_load_u8_d16 v17, v0 offset:2272
	ds_load_u8_d16 v18, v0 offset:2208
	ds_load_u8_d16 v87, v0 offset:2144
	ds_load_u8_d16 v89, v0 offset:2080
	ds_load_u8_d16 v161, v0 offset:2304
	ds_load_u8_d16 v163, v0 offset:2368
	ds_load_u8_d16 v159, v0 offset:2432
	ds_load_u8_d16 v162, v0 offset:2496
	ds_load_u8_d16 v100, v0 offset:2528
	ds_load_u8_d16 v101, v0 offset:2464
	ds_load_u8_d16 v103, v0 offset:2400
	ds_load_u8_d16 v105, v0 offset:2336
	ds_load_u8_d16 v177, v0 offset:2560
	ds_load_u8_d16 v179, v0 offset:2624
	ds_load_u8_d16 v175, v0 offset:2688
	ds_load_u8_d16 v178, v0 offset:2752
	ds_load_u8_d16 v112, v0 offset:2784
	ds_load_u8_d16 v113, v0 offset:2720
	ds_load_u8_d16 v115, v0 offset:2656
	ds_load_u8_d16 v117, v0 offset:2592
	ds_load_u8_d16 v189, v0 offset:2816
	ds_load_u8_d16 v192, v0 offset:2880
	ds_load_u8_d16 v187, v0 offset:2944
	ds_load_u8_d16 v190, v0 offset:3008
	ds_load_u8_d16 v126, v0 offset:3040
	ds_load_u8_d16 v128, v0 offset:2976
	ds_load_u8_d16 v130, v0 offset:2912
	ds_load_u8_d16 v131, v0 offset:2848
	ds_load_u8_d16 v149, v0 offset:3072
	ds_load_u8_d16 v151, v0 offset:3136
	ds_load_u8_d16 v148, v0 offset:3200
	ds_load_u8_d16 v150, v0 offset:3264
	ds_load_u8_d16 v8, v0 offset:3296
	ds_load_u8_d16 v9, v0 offset:3232
	ds_load_u8_d16 v11, v0 offset:3168
	ds_load_u8_d16 v13, v0 offset:3104
	ds_load_u8_d16 v165, v0 offset:3328
	ds_load_u8_d16 v167, v0 offset:3392
	ds_load_u8_d16 v164, v0 offset:3456
	ds_load_u8_d16 v166, v0 offset:3520
	ds_load_u8_d16 v19, v0 offset:3552
	ds_load_u8_d16 v20, v0 offset:3488
	ds_load_u8_d16 v90, v0 offset:3424
	ds_load_u8_d16 v91, v0 offset:3360
	ds_load_u8_d16 v197, v0 offset:3840
	ds_load_u8_d16 v199, v0 offset:3904
	ds_load_u8_d16 v196, v0 offset:3968
	ds_load_u8_d16 v198, v0 offset:4032
	ds_load_u8_d16 v132, v0 offset:4064
	ds_load_u8_d16 v133, v0 offset:4000
	ds_load_u8_d16 v134, v0 offset:3936
	ds_load_u8_d16 v135, v0 offset:3872
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v123
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v193, v0 offset:3584
	ds_load_u8_d16 v195, v0 offset:3648
	ds_load_u8_d16 v191, v0 offset:3712
	ds_load_u8_d16 v194, v0 offset:3776
	ds_load_u8_d16 v122, v0 offset:3808
	ds_load_u8_d16 v123, v0 offset:3744
	ds_load_u8_d16 v127, v0 offset:3680
	ds_load_u8_d16 v129, v0 offset:3616
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v1, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v0, v93
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v244, 16, v1
	v_xor_b32_e32 v246, 32, v1
	v_xor_b32_e32 v245, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v0, v185, v188, 0xc0c0004
	v_perm_b32 v2, v184, v186, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v227, v2, 16, v0
	v_perm_b32 v0, v157, v160, 0xc0c0004
	v_perm_b32 v2, v156, v158, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v3, v173, v176, 0xc0c0004
	v_lshl_or_b32 v225, v2, 16, v0
	v_perm_b32 v0, v138, v139, 0xc0c0004
	v_perm_b32 v2, v136, v137, 0xc0c0004
	v_perm_b32 v4, v172, v174, 0xc0c0004
	v_dual_mov_b32 v207, s11 :: v_dual_mov_b32 v206, s10
	v_mov_b32_e32 v205, s9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v224, v2, 16, v0
	v_perm_b32 v0, v119, v118, 0xc0c0004
	v_perm_b32 v2, v116, v114, 0xc0c0004
	v_lshl_or_b32 v226, v4, 16, v3
	v_perm_b32 v3, v107, v106, 0xc0c0004
	v_perm_b32 v4, v104, v102, 0xc0c0004
	v_dual_mov_b32 v204, s8 :: v_dual_mov_b32 v203, s7
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v95, v92, 0xc0c0004
	v_perm_b32 v2, v88, v85, 0xc0c0004
	v_lshl_or_b32 v234, v4, 16, v3
	v_dual_mov_b32 v202, s6 :: v_dual_mov_b32 v201, s5
	v_mov_b32_e32 v200, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v233, v2, 16, v0
	v_perm_b32 v0, v5, v10, 0xc0c0004
	v_perm_b32 v2, v7, v6, 0xc0c0004
	v_perm_b32 v3, v169, v171, 0xc0c0004
	v_perm_b32 v4, v168, v170, 0xc0c0004
	v_lshl_or_b32 v232, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s26, v1
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[240:243], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v181, v183, 0xc0c0004
	v_perm_b32 v2, v180, v182, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[236:239], v[224:227], v[200:207] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[216:223], v[240:243], v[224:227], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[236:239], v[232:235], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[240:243], v[232:235], v[200:207] neg_lo:[1,1,0]
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v153, v155, 0xc0c0004
	v_perm_b32 v2, v152, v154, 0xc0c0004
	v_lshl_or_b32 v234, v4, 16, v3
	v_perm_b32 v3, v111, v110, 0xc0c0004
	v_perm_b32 v4, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v233, v2, 16, v0
	v_perm_b32 v0, v141, v143, 0xc0c0004
	v_perm_b32 v2, v140, v142, 0xc0c0004
	v_lshl_or_b32 v232, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s26, v244
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v2, v121, v120, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[240:243], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[236:239], v[232:235], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[216:223], v[240:243], v[232:235], v[216:223] neg_lo:[1,1,0]
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v99, v98, 0xc0c0004
	v_perm_b32 v2, v97, v96, 0xc0c0004
	v_lshl_or_b32 v234, v4, 16, v3
	v_perm_b32 v3, v177, v179, 0xc0c0004
	v_perm_b32 v4, v175, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v233, v2, 16, v0
	v_perm_b32 v0, v16, v15, 0xc0c0004
	v_perm_b32 v2, v14, v12, 0xc0c0004
	v_lshl_or_b32 v232, v2, 16, v0
	v_perm_b32 v0, v189, v192, 0xc0c0004
	v_perm_b32 v2, v187, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[224:231], v[236:239], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[240:243], v[232:235], v[200:207] neg_lo:[1,1,0]
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v161, v163, 0xc0c0004
	v_perm_b32 v2, v159, v162, 0xc0c0004
	v_lshl_or_b32 v234, v4, 16, v3
	v_perm_b32 v3, v117, v115, 0xc0c0004
	v_perm_b32 v4, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v233, v2, 16, v0
	v_perm_b32 v0, v145, v147, 0xc0c0004
	v_perm_b32 v2, v144, v146, 0xc0c0004
	v_lshl_or_b32 v232, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s26, v246
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v2, v128, v126, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[240:243], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[236:239], v[232:235], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[216:223], v[240:243], v[232:235], v[216:223] neg_lo:[1,1,0]
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v105, v103, 0xc0c0004
	v_perm_b32 v2, v101, v100, 0xc0c0004
	v_lshl_or_b32 v234, v4, 16, v3
	v_perm_b32 v3, v193, v195, 0xc0c0004
	v_perm_b32 v4, v191, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v233, v2, 16, v0
	v_perm_b32 v0, v89, v87, 0xc0c0004
	v_perm_b32 v2, v18, v17, 0xc0c0004
	v_lshl_or_b32 v232, v2, 16, v0
	v_perm_b32 v0, v197, v199, 0xc0c0004
	v_perm_b32 v2, v196, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[224:231], v[236:239], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[240:243], v[232:235], v[200:207] neg_lo:[1,1,0]
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v165, v167, 0xc0c0004
	v_perm_b32 v2, v164, v166, 0xc0c0004
	v_lshl_or_b32 v234, v4, 16, v3
	v_perm_b32 v3, v129, v127, 0xc0c0004
	v_perm_b32 v4, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v233, v2, 16, v0
	v_perm_b32 v0, v149, v151, 0xc0c0004
	v_perm_b32 v2, v148, v150, 0xc0c0004
	v_lshl_or_b32 v232, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s26, v245
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v2, v133, v132, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[236:239], v0
	ds_load_b128 v[240:243], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[236:239], v[232:235], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[216:223], v[240:243], v[232:235], v[216:223] neg_lo:[1,1,0]
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v91, v90, 0xc0c0004
	v_perm_b32 v2, v20, v19, 0xc0c0004
	v_lshl_or_b32 v234, v4, 16, v3
	v_cvt_f32_i32_e32 v3, v218
	v_cvt_f32_i32_e32 v4, v219
	v_cvt_f32_i32_e32 v93, v220
	v_lshl_or_b32 v233, v2, 16, v0
	v_perm_b32 v0, v13, v11, 0xc0c0004
	v_perm_b32 v2, v9, v8, 0xc0c0004
	v_cvt_f32_i32_e32 v94, v221
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v212, v212
	v_lshl_or_b32 v232, v2, 16, v0
	v_cvt_f32_i32_e32 v0, v216
	v_cvt_f32_i32_e32 v2, v217
	v_cvt_f32_i32_e32 v216, v222
	v_cvt_f32_i32_e32 v217, v223
	v_wmma_i32_16x16x16_iu8 v[224:231], v[236:239], v[232:235], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[240:243], v[232:235], v[200:207] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v214, v214
	v_cvt_f32_i32_e32 v215, v215
	v_cvt_f32_i32_e32 v218, v224
	v_cvt_f32_i32_e32 v219, v225
	v_cvt_f32_i32_e32 v220, v226
	v_cvt_f32_i32_e32 v221, v227
	v_cvt_f32_i32_e32 v222, v228
	v_cvt_f32_i32_e32 v223, v229
	v_cvt_f32_i32_e32 v224, v230
	v_cvt_f32_i32_e32 v225, v231
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v72, v211 :: v_dual_add_f32 v45, v45, v0
	v_dual_add_f32 v71, v71, v210 :: v_dual_add_f32 v62, v62, v213
	v_add_f32_e32 v21, v21, v216
	v_dual_add_f32 v61, v61, v212 :: v_dual_add_f32 v54, v54, v215
	v_add_f32_e32 v29, v29, v93
	v_add_f32_e32 v53, v53, v214
	v_dual_add_f32 v46, v46, v2 :: v_dual_add_f32 v79, v79, v220
	v_dual_add_f32 v38, v38, v4 :: v_dual_add_f32 v83, v83, v218
	v_dual_add_f32 v37, v37, v3 :: v_dual_add_f32 v30, v30, v94
	v_dual_add_f32 v55, v55, v224 :: v_dual_add_f32 v22, v22, v217
	v_dual_add_f32 v63, v63, v222 :: v_dual_add_f32 v84, v84, v219
	v_dual_add_f32 v47, v47, v200 :: v_dual_add_f32 v80, v80, v221
	v_dual_add_f32 v39, v39, v202 :: v_dual_add_f32 v64, v64, v223
	v_dual_add_f32 v31, v31, v204 :: v_dual_add_f32 v56, v56, v225
	v_dual_add_f32 v23, v23, v206 :: v_dual_add_f32 v48, v48, v201
	v_dual_add_f32 v75, v75, v208 :: v_dual_add_f32 v40, v40, v203
	v_add_f32_e32 v32, v32, v205
	v_add_f32_e32 v24, v24, v207
	v_add_f32_e32 v76, v76, v209
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v207, s11 :: v_dual_add_nc_u32 v0, s35, v245
	v_dual_mov_b32 v205, s9 :: v_dual_add_nc_u32 v2, s35, v246
	v_dual_mov_b32 v206, s10 :: v_dual_add_nc_u32 v3, s35, v244
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[208:211], v0
	ds_load_b128 v[212:215], v2 offset:4096
	ds_load_b128 v[216:219], v2
	ds_load_b128 v[220:223], v3 offset:4096
	ds_load_b128 v[224:227], v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v203, s7 :: v_dual_add_nc_u32 v2, s35, v1
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v3, v185, v188, 0xc0c0004
	v_perm_b32 v4, v184, v186, 0xc0c0004
	v_perm_b32 v93, v173, v176, 0xc0c0004
	v_perm_b32 v94, v172, v174, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[228:231], v2 offset:4096
	ds_load_b128 v[232:235], v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v2, v138, v139, 0xc0c0004
	v_lshl_or_b32 v239, v4, 16, v3
	v_perm_b32 v3, v136, v137, 0xc0c0004
	v_perm_b32 v157, v157, v160, 0xc0c0004
	v_perm_b32 v156, v156, v158, 0xc0c0004
	v_lshl_or_b32 v238, v94, 16, v93
	v_perm_b32 v4, v169, v171, 0xc0c0004
	v_lshl_or_b32 v236, v3, 16, v2
	v_perm_b32 v2, v181, v183, 0xc0c0004
	v_perm_b32 v3, v180, v182, 0xc0c0004
	v_perm_b32 v93, v168, v170, 0xc0c0004
	v_lshl_or_b32 v237, v156, 16, v157
	v_perm_b32 v94, v153, v155, 0xc0c0004
	v_perm_b32 v152, v152, v154, 0xc0c0004
	v_perm_b32 v156, v141, v143, 0xc0c0004
	v_perm_b32 v157, v140, v142, 0xc0c0004
	v_lshl_or_b32 v155, v3, 16, v2
	v_lshl_or_b32 v154, v93, 16, v4
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v2, v189, v192, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v3, v187, v190, 0xc0c0004
	v_perm_b32 v4, v177, v179, 0xc0c0004
	v_perm_b32 v93, v175, v178, 0xc0c0004
	v_lshl_or_b32 v153, v152, 16, v94
	v_lshl_or_b32 v152, v157, 16, v156
	v_perm_b32 v156, v159, v162, 0xc0c0004
	v_lshl_or_b32 v159, v3, 16, v2
	v_lshl_or_b32 v158, v93, 16, v4
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v2, v197, v199, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v3, v196, v198, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v4, v193, v195, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v93, v191, v194, 0xc0c0004
	v_dual_mov_b32 v204, s8 :: v_dual_mov_b32 v201, s5
	v_mov_b32_e32 v202, s6
	v_mov_b32_e32 v200, s4
	v_perm_b32 v94, v161, v163, 0xc0c0004
	v_perm_b32 v145, v145, v147, 0xc0c0004
	v_perm_b32 v144, v144, v146, 0xc0c0004
	v_lshl_or_b32 v163, v3, 16, v2
	v_lshl_or_b32 v162, v93, 16, v4
	v_perm_b32 v2, v119, v118, 0xc0c0004
	v_perm_b32 v3, v116, v114, 0xc0c0004
	v_perm_b32 v4, v107, v106, 0xc0c0004
	v_perm_b32 v93, v104, v102, 0xc0c0004
	v_perm_b32 v92, v95, v92, 0xc0c0004
	v_perm_b32 v85, v88, v85, 0xc0c0004
	v_perm_b32 v10, v5, v10, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v88, v99, v98, 0xc0c0004
	v_perm_b32 v102, v97, v96, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v12, v14, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[232:235], v[236:239], v[200:207] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v156, 16, v94
	v_lshl_or_b32 v156, v144, 16, v145
	v_perm_b32 v94, v165, v167, 0xc0c0004
	v_perm_b32 v144, v164, v166, 0xc0c0004
	v_perm_b32 v145, v149, v151, 0xc0c0004
	v_perm_b32 v146, v148, v150, 0xc0c0004
	v_lshl_or_b32 v5, v3, 16, v2
	v_lshl_or_b32 v4, v93, 16, v4
	v_lshl_or_b32 v3, v85, 16, v92
	v_lshl_or_b32 v2, v6, 16, v10
	v_perm_b32 v6, v125, v124, 0xc0c0004
	v_perm_b32 v7, v121, v120, 0xc0c0004
	v_perm_b32 v10, v111, v110, 0xc0c0004
	v_perm_b32 v85, v109, v108, 0xc0c0004
	v_lshl_or_b32 v107, v102, 16, v88
	v_lshl_or_b32 v106, v12, 16, v15
	v_perm_b32 v14, v105, v103, 0xc0c0004
	v_perm_b32 v15, v101, v100, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[100:103], v0 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[136:143], v[224:227], v[152:155], v[136:143] neg_lo:[1,1,0]
	v_lshl_or_b32 v161, v144, 16, v94
	v_lshl_or_b32 v160, v146, 16, v145
	v_wmma_i32_16x16x16_iu8 v[144:151], v[228:231], v[236:239], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[232:235], v[2:5], v[200:207] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v7, 16, v6
	v_lshl_or_b32 v108, v85, 16, v10
	v_perm_b32 v6, v131, v130, 0xc0c0004
	v_perm_b32 v7, v128, v126, 0xc0c0004
	v_perm_b32 v10, v117, v115, 0xc0c0004
	v_perm_b32 v12, v113, v112, 0xc0c0004
	v_perm_b32 v85, v89, v87, 0xc0c0004
	v_perm_b32 v18, v18, v17, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[200:207], v[228:231], v[2:5], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[216:219], v[156:159], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[220:223], v[152:155], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[224:227], v[106:109], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v7, 16, v6
	v_lshl_or_b32 v16, v12, 16, v10
	v_lshl_or_b32 v15, v15, 16, v14
	v_lshl_or_b32 v14, v18, 16, v85
	v_perm_b32 v0, v135, v134, 0xc0c0004
	v_perm_b32 v6, v133, v132, 0xc0c0004
	v_perm_b32 v7, v129, v127, 0xc0c0004
	v_perm_b32 v10, v123, v122, 0xc0c0004
	v_perm_b32 v2, v91, v90, 0xc0c0004
	v_perm_b32 v3, v20, v19, 0xc0c0004
	v_perm_b32 v11, v13, v11, 0xc0c0004
	v_perm_b32 v8, v9, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[200:207], v[220:223], v[106:109], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[208:211], v[160:163], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[212:215], v[156:159], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[216:219], v[14:17], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v6, 16, v0
	v_lshl_or_b32 v4, v10, 16, v7
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v8, 16, v11
	v_wmma_i32_16x16x16_iu8 v[200:207], v[212:215], v[14:17], v[200:207] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v139
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[100:103], v[160:163], v[144:151] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v138
	v_wmma_i32_16x16x16_iu8 v[92:99], v[208:211], v[2:5], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[100:103], v[2:5], v[200:207] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v140
	v_cvt_f32_i32_e32 v3, v143
	v_cvt_f32_i32_e32 v4, v142
	v_cvt_f32_i32_e32 v5, v136
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v69, v69, v6
	v_add_f32_e32 v65, v65, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v144
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v70, v70, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v141
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v58, v58, v3 :: v_dual_add_f32 v57, v57, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v146
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v49, v49, v2 :: v_dual_add_f32 v66, v66, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v145
	v_cvt_f32_i32_e32 v2, v148
	v_cvt_f32_i32_e32 v4, v149
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v41, v41, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v50, v50, v0 :: v_dual_add_f32 v33, v33, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v147
	v_cvt_f32_i32_e32 v2, v150
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v73, v73, v5 :: v_dual_add_f32 v42, v42, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v25, v25, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v151
	v_cvt_f32_i32_e32 v2, v94
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v34, v34, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v92
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v82, v82, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v96
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v26, v26, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v95
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v77, v77, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v98
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v81, v81, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v99
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v78, v78, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v97
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v67, v67, v3
	v_add_f32_e32 v59, v59, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v200
	v_cvt_f32_i32_e32 v3, v203
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v68, v68, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v201
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v51, v51, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v204
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v60, v60, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v202
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v44, v44, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v206
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v52, v52, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v205
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v43, v43, v4
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v4, v137
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v35, v35, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v27, v27, v3 :: v_dual_add_f32 v36, v36, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v207
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v74, v74, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v28, v28, v0
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(62)
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, s30, v86
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v227, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v138, v0 offset:64
	ds_load_u8_d16 v14, v0 offset:128
	ds_load_u8_d16 v136, v0 offset:192
	ds_load_u8_d16 v238, v0 offset:224
	ds_load_u8_d16 v15, v0 offset:160
	ds_load_u8_d16 v98, v0 offset:96
	ds_load_u8_d16 v156, v0 offset:256
	s_waitcnt lgkmcnt(60)
	ds_load_u8_d16 v159, v0 offset:320
	ds_load_u8_d16 v155, v0 offset:384
	ds_load_u8_d16 v157, v0 offset:448
	ds_load_u8_d16 v110, v0 offset:480
	s_waitcnt lgkmcnt(53)
	ds_load_u8_d16 v113, v0 offset:416
	s_waitcnt lgkmcnt(52)
	ds_load_u8_d16 v117, v0 offset:352
	s_waitcnt lgkmcnt(16)
	ds_load_u8_d16 v122, v0 offset:288
	ds_load_u8_d16 v172, v0 offset:512
	ds_load_u8_d16 v175, v0 offset:576
	ds_load_u8_d16 v171, v0 offset:640
	ds_load_u8_d16 v173, v0 offset:704
	ds_load_u8_d16 v184, v0 offset:736
	ds_load_u8_d16 v185, v0 offset:672
	ds_load_u8_d16 v186, v0 offset:608
	ds_load_u8_d16 v188, v0 offset:544
	ds_load_u8_d16 v89, v0 offset:768
	ds_load_u8_d16 v120, v0 offset:832
	ds_load_u8_d16 v187, v0 offset:896
	ds_load_u8_d16 v114, v0 offset:960
	ds_load_u8_d16 v191, v0 offset:992
	ds_load_u8_d16 v193, v0 offset:928
	ds_load_u8_d16 v197, v0 offset:864
	ds_load_u8_d16 v198, v0 offset:800
	ds_load_u8_d16 v140, v0 offset:1024
	ds_load_u8_d16 v142, v0 offset:1088
	ds_load_u8_d16 v139, v0 offset:1152
	ds_load_u8_d16 v141, v0 offset:1216
	ds_load_u8_d16 v101, v0 offset:1248
	ds_load_u8_d16 v102, v0 offset:1184
	ds_load_u8_d16 v103, v0 offset:1120
	ds_load_u8_d16 v105, v0 offset:1056
	ds_load_u8_d16 v152, v0 offset:1280
	ds_load_u8_d16 v154, v0 offset:1344
	ds_load_u8_d16 v151, v0 offset:1408
	ds_load_u8_d16 v153, v0 offset:1472
	ds_load_u8_d16 v118, v0 offset:1504
	ds_load_u8_d16 v119, v0 offset:1440
	s_waitcnt lgkmcnt(46)
	ds_load_u8_d16 v123, v0 offset:1376
	ds_load_u8_d16 v124, v0 offset:1312
	ds_load_u8_d16 v168, v0 offset:1536
	ds_load_u8_d16 v170, v0 offset:1600
	ds_load_u8_d16 v167, v0 offset:1664
	ds_load_u8_d16 v169, v0 offset:1728
	s_waitcnt lgkmcnt(50)
	ds_load_u8_d16 v129, v0 offset:1760
	ds_load_u8_d16 v130, v0 offset:1696
	ds_load_u8_d16 v131, v0 offset:1632
	ds_load_u8_d16 v134, v0 offset:1568
	ds_load_u8_d16 v100, v0 offset:1792
	ds_load_u8_d16 v104, v0 offset:1856
	ds_load_u8_d16 v183, v0 offset:1920
	ds_load_u8_d16 v85, v0 offset:1984
	ds_load_u8_d16 v199, v0 offset:2016
	ds_load_u8_d16 v200, v0 offset:1952
	ds_load_u8_d16 v201, v0 offset:1888
	ds_load_u8_d16 v239, v0 offset:1824
	ds_load_u8_d16 v144, v0 offset:2048
	ds_load_u8_d16 v146, v0 offset:2112
	ds_load_u8_d16 v243, v0 offset:2176
	ds_load_u8_d16 v143, v0 offset:2240
	ds_load_u8_d16 v106, v0 offset:2272
	ds_load_u8_d16 v107, v0 offset:2208
	ds_load_u8_d16 v111, v0 offset:2144
	ds_load_u8_d16 v115, v0 offset:2080
	ds_load_u8_d16 v160, v0 offset:2304
	ds_load_u8_d16 v162, v0 offset:2368
	ds_load_u8_d16 v158, v0 offset:2432
	ds_load_u8_d16 v161, v0 offset:2496
	ds_load_u8_d16 v125, v0 offset:2528
	ds_load_u8_d16 v126, v0 offset:2464
	ds_load_u8_d16 v127, v0 offset:2400
	ds_load_u8_d16 v128, v0 offset:2336
	ds_load_u8_d16 v176, v0 offset:2560
	ds_load_u8_d16 v178, v0 offset:2624
	ds_load_u8_d16 v174, v0 offset:2688
	ds_load_u8_d16 v177, v0 offset:2752
	ds_load_u8_d16 v132, v0 offset:2784
	ds_load_u8_d16 v133, v0 offset:2720
	ds_load_u8_d16 v192, v0 offset:2656
	ds_load_u8_d16 v194, v0 offset:2592
	ds_load_u8_d16 v93, v0 offset:2816
	ds_load_u8_d16 v94, v0 offset:2880
	ds_load_u8_d16 v92, v0 offset:2944
	ds_load_u8_d16 v97, v0 offset:3008
	ds_load_u8_d16 v90, v0 offset:3040
	ds_load_u8_d16 v17, v0 offset:2976
	ds_load_u8_d16 v19, v0 offset:2912
	ds_load_u8_d16 v240, v0 offset:2848
	ds_load_u8_d16 v148, v0 offset:3072
	ds_load_u8_d16 v150, v0 offset:3136
	ds_load_u8_d16 v147, v0 offset:3200
	ds_load_u8_d16 v149, v0 offset:3264
	ds_load_u8_d16 v16, v0 offset:3296
	ds_load_u8_d16 v88, v0 offset:3232
	ds_load_u8_d16 v91, v0 offset:3168
	ds_load_u8_d16 v99, v0 offset:3104
	ds_load_u8_d16 v164, v0 offset:3328
	ds_load_u8_d16 v166, v0 offset:3392
	ds_load_u8_d16 v163, v0 offset:3456
	ds_load_u8_d16 v165, v0 offset:3520
	ds_load_u8_d16 v108, v0 offset:3552
	ds_load_u8_d16 v109, v0 offset:3488
	ds_load_u8_d16 v112, v0 offset:3424
	ds_load_u8_d16 v116, v0 offset:3360
	ds_load_u8_d16 v180, v0 offset:3584
	ds_load_u8_d16 v182, v0 offset:3648
	ds_load_u8_d16 v179, v0 offset:3712
	ds_load_u8_d16 v145, v0 offset:3776
	ds_load_u8_d16 v189, v0 offset:3808
	ds_load_u8_d16 v190, v0 offset:3744
	ds_load_u8_d16 v195, v0 offset:3680
	ds_load_u8_d16 v196, v0 offset:3616
	ds_load_u8_d16 v137, v0
	ds_load_u8_d16 v2, v0 offset:32
	ds_load_u8_d16 v18, v0 offset:3840
	ds_load_u8_d16 v87, v0 offset:3904
	ds_load_u8_d16 v95, v0 offset:3968
	ds_load_u8_d16 v96, v0 offset:4032
	ds_load_u8_d16 v20, v0 offset:4064
	ds_load_u8_d16 v181, v0 offset:4000
	ds_load_u8_d16 v241, v0 offset:3936
	ds_load_u8_d16 v242, v0 offset:3872
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v215, 0
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v2, off offset:4 ; 4-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v216, 0
	v_mov_b32_e32 v219, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v2
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v223, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_perm_b32 v0, v89, v120, 0xc0c0004
	v_perm_b32 v2, v187, v114, 0xc0c0004
	v_perm_b32 v3, v172, v175, 0xc0c0004
	v_perm_b32 v4, v171, v173, 0xc0c0004
	v_perm_b32 v6, v193, v191, 0xc0c0004
	v_perm_b32 v7, v188, v186, 0xc0c0004
	v_lshl_or_b32 v5, v2, 16, v0
	v_perm_b32 v0, v156, v159, 0xc0c0004
	v_perm_b32 v2, v155, v157, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	v_perm_b32 v8, v185, v184, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v3, v2, 16, v0
	v_perm_b32 v0, v137, v138, 0xc0c0004
	v_perm_b32 v2, v14, v136, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_lshl_or_b32 v2, v2, 16, v0
	v_perm_b32 v0, v198, v197, 0xc0c0004
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v225, s11
	v_lshl_or_b32 v9, v6, 16, v0
	v_perm_b32 v0, v122, v117, 0xc0c0004
	v_perm_b32 v6, v113, v110, 0xc0c0004
	v_dual_mov_b32 v224, s10 :: v_dual_mov_b32 v223, s9
	v_dual_mov_b32 v222, s8 :: v_dual_mov_b32 v221, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v7, v6, 16, v0
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	v_perm_b32 v6, v15, v238, 0xc0c0004
	v_dual_mov_b32 v220, s6 :: v_dual_mov_b32 v219, s5
	v_mov_b32_e32 v218, s4
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s1, v1
	ds_load_b128 v[10:13], v0
	ds_load_b128 v[226:229], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v100, v104, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[10:13], v[2:5], v[218:225] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[226:229], v[2:5], v[218:225] neg_lo:[1,1,0]
	v_perm_b32 v2, v183, v85, 0xc0c0004
	v_perm_b32 v3, v168, v170, 0xc0c0004
	v_perm_b32 v4, v167, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[210:217], v[10:13], v[6:9], v[218:225] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v5, v2, 16, v0
	v_perm_b32 v0, v152, v154, 0xc0c0004
	v_perm_b32 v2, v151, v153, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	v_wmma_i32_16x16x16_iu8 v[218:225], v[226:229], v[6:9], v[218:225] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v2, 16, v0
	v_perm_b32 v0, v140, v142, 0xc0c0004
	v_perm_b32 v2, v139, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s1, v244
	ds_load_b128 v[6:9], v0
	ds_load_b128 v[10:13], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v239, v201, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[6:9], v[2:5], v[230:237] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[10:13], v[2:5], v[202:209] neg_lo:[1,1,0]
	v_perm_b32 v2, v200, v199, 0xc0c0004
	v_perm_b32 v3, v134, v131, 0xc0c0004
	v_perm_b32 v4, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v2, 16, v0
	v_perm_b32 v0, v124, v123, 0xc0c0004
	v_perm_b32 v2, v119, v118, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v2, 16, v0
	v_perm_b32 v0, v105, v103, 0xc0c0004
	v_perm_b32 v2, v102, v101, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v0
	v_perm_b32 v0, v93, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[210:217], v[6:9], v[2:5], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[10:13], v[2:5], v[218:225] neg_lo:[1,1,0]
	v_perm_b32 v2, v92, v97, 0xc0c0004
	v_perm_b32 v3, v176, v178, 0xc0c0004
	v_perm_b32 v4, v174, v177, 0xc0c0004
	v_lshl_or_b32 v5, v2, 16, v0
	v_perm_b32 v0, v160, v162, 0xc0c0004
	v_perm_b32 v2, v158, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v2, 16, v0
	v_perm_b32 v0, v144, v146, 0xc0c0004
	v_perm_b32 v2, v243, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s1, v246
	ds_load_b128 v[6:9], v0
	ds_load_b128 v[10:13], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v240, v19, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[6:9], v[2:5], v[230:237] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[10:13], v[2:5], v[202:209] neg_lo:[1,1,0]
	v_perm_b32 v2, v17, v90, 0xc0c0004
	v_perm_b32 v3, v194, v192, 0xc0c0004
	v_perm_b32 v4, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v2, 16, v0
	v_perm_b32 v0, v128, v127, 0xc0c0004
	v_perm_b32 v2, v126, v125, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v2, 16, v0
	v_perm_b32 v0, v115, v111, 0xc0c0004
	v_perm_b32 v2, v107, v106, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v0
	v_perm_b32 v0, v18, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[210:217], v[6:9], v[2:5], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[10:13], v[2:5], v[218:225] neg_lo:[1,1,0]
	v_perm_b32 v2, v95, v96, 0xc0c0004
	v_perm_b32 v3, v180, v182, 0xc0c0004
	v_perm_b32 v4, v179, v145, 0xc0c0004
	v_lshl_or_b32 v5, v2, 16, v0
	v_perm_b32 v0, v164, v166, 0xc0c0004
	v_perm_b32 v2, v163, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v2, 16, v0
	v_perm_b32 v0, v148, v150, 0xc0c0004
	v_perm_b32 v2, v147, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s1, v245
	ds_load_b128 v[6:9], v0
	ds_load_b128 v[10:13], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v0, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[6:9], v[2:5], v[230:237] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[10:13], v[2:5], v[202:209] neg_lo:[1,1,0]
	v_perm_b32 v2, v181, v20, 0xc0c0004
	v_perm_b32 v3, v196, v195, 0xc0c0004
	v_perm_b32 v4, v190, v189, 0xc0c0004
	v_cvt_f32_i32_e32 v227, v233
	v_cvt_f32_i32_e32 v226, v236
	v_lshl_or_b32 v5, v2, 16, v0
	v_perm_b32 v0, v116, v112, 0xc0c0004
	v_perm_b32 v2, v109, v108, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	v_cvt_f32_i32_e32 v229, v237
	v_cvt_f32_i32_e32 v228, v230
	v_cvt_f32_i32_e32 v230, v231
	v_lshl_or_b32 v3, v2, 16, v0
	v_perm_b32 v0, v99, v91, 0xc0c0004
	v_perm_b32 v2, v88, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 16, v0
	v_cvt_f32_i32_e32 v0, v206
	v_wmma_i32_16x16x16_iu8 v[210:217], v[6:9], v[2:5], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[10:13], v[2:5], v[218:225] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v202
	v_cvt_f32_i32_e32 v2, v203
	v_cvt_f32_i32_e32 v3, v204
	v_cvt_f32_i32_e32 v6, v205
	v_cvt_f32_i32_e32 v4, v207
	v_cvt_f32_i32_e32 v5, v208
	v_cvt_f32_i32_e32 v7, v209
	v_cvt_f32_i32_e32 v207, v210
	v_cvt_f32_i32_e32 v208, v211
	v_cvt_f32_i32_e32 v210, v212
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v209, v214
	v_cvt_f32_i32_e32 v211, v215
	v_cvt_f32_i32_e32 v212, v216
	v_cvt_f32_i32_e32 v215, v217
	v_cvt_f32_i32_e32 v214, v218
	v_cvt_f32_i32_e32 v217, v219
	v_cvt_f32_i32_e32 v218, v220
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v216, v222
	v_cvt_f32_i32_e32 v219, v223
	v_cvt_f32_i32_e32 v220, v224
	v_cvt_f32_i32_e32 v223, v225
	v_cvt_f32_i32_e32 v224, v232
	v_cvt_f32_i32_e32 v222, v234
	v_cvt_f32_i32_e32 v225, v235
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v7, off offset:32
	scratch_store_b32 off, v6, off offset:28
	scratch_store_b32 off, v5, off offset:24
	scratch_store_b32 off, v4, off offset:20
	scratch_store_b32 off, v3, off offset:16
	scratch_store_b32 off, v2, off offset:12
	scratch_store_b32 off, v0, off offset:8
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v206.l, v242.l
	v_mov_b16_e64 v205.l, v241.l
	v_mov_b16_e64 v204.l, v181.l
	v_mov_b16_e64 v181.l, v240.l
	v_mov_b16_e64 v203.l, v20.l
	v_mov_b16_e32 v20.l, v17.l
	v_mov_b16_e32 v17.l, v90.l
	v_mov_b16_e64 v90.l, v239.l
	v_mov_b16_e64 v202.l, v16.l
	v_mov_b16_e64 v16.l, v238.l
	v_dual_mov_b32 v9, v246 :: v_dual_mov_b32 v8, v245
	v_dual_mov_b32 v7, v244 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v0, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s3, v9
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v6, s3, v7
	v_add_nc_u32_e32 v121, s3, v8
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v7, v187, v114, 0xc0c0004
	v_perm_b32 v8, v172, v175, 0xc0c0004
	v_perm_b32 v9, v171, v173, 0xc0c0004
	v_perm_b32 v10, v156, v159, 0xc0c0004
	v_perm_b32 v11, v155, v157, 0xc0c0004
	v_mov_b32_e32 v187, v13
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[2:5], v0 offset:4096
	ds_load_b128 v[231:234], v0
	ds_load_b128 v[235:238], v6
	v_add_nc_u32_e32 v0, s3, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v1, v89, v120, 0xc0c0004
	v_lshl_or_b32 v249, v9, 16, v8
	v_lshl_or_b32 v248, v11, 16, v10
	v_perm_b32 v152, v152, v154, 0xc0c0004
	v_perm_b32 v151, v151, v153, 0xc0c0004
	v_lshl_or_b32 v250, v7, 16, v1
	v_perm_b32 v1, v14, v136, 0xc0c0004
	v_dual_mov_b32 v14, s11 :: v_dual_mov_b32 v11, s8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[239:242], v0 offset:4096
	ds_load_b128 v[251:254], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v0, v137, v138, 0xc0c0004
	v_perm_b32 v157, v140, v142, 0xc0c0004
	v_perm_b32 v159, v139, v141, 0xc0c0004
	v_lshl_or_b32 v152, v151, 16, v152
	v_perm_b32 v155, v168, v170, 0xc0c0004
	v_lshl_or_b32 v247, v1, 16, v0
	v_perm_b32 v0, v100, v104, 0xc0c0004
	v_perm_b32 v1, v183, v85, 0xc0c0004
	v_lshl_or_b32 v151, v159, 16, v157
	v_perm_b32 v157, v160, v162, 0xc0c0004
	v_perm_b32 v156, v167, v169, 0xc0c0004
	v_mov_b32_e32 v13, s10
	v_lshl_or_b32 v154, v1, 16, v0
	v_perm_b32 v0, v93, v94, 0xc0c0004
	v_perm_b32 v1, v92, v97, 0xc0c0004
	v_lshl_or_b32 v153, v156, 16, v155
	v_perm_b32 v155, v176, v178, 0xc0c0004
	v_perm_b32 v156, v174, v177, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[167:170], v6 offset:4096
	ds_load_b128 v[171:174], v121 offset:4096
	ds_load_b128 v[175:178], v121
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v162, v1, 16, v0
	v_perm_b32 v0, v18, v87, 0xc0c0004
	scratch_load_b32 v18, off, off offset:4 ; 4-byte Folded Reload
	v_dual_mov_b32 v12, s9 :: v_dual_mov_b32 v9, s6
	v_dual_mov_b32 v10, s7 :: v_dual_mov_b32 v7, s4
	v_mov_b32_e32 v8, s5
	v_perm_b32 v144, v144, v146, 0xc0c0004
	v_perm_b32 v143, v243, v143, 0xc0c0004
	v_perm_b32 v1, v95, v96, 0xc0c0004
	v_perm_b32 v120, v198, v197, 0xc0c0004
	v_perm_b32 v114, v193, v191, 0xc0c0004
	v_perm_b32 v104, v188, v186, 0xc0c0004
	v_perm_b32 v100, v185, v184, 0xc0c0004
	v_perm_b32 v92, v122, v117, 0xc0c0004
	v_perm_b32 v85, v113, v110, 0xc0c0004
	v_perm_b32 v93, v15, v16, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[251:254], v[247:250], v[7:14] neg_lo:[1,1,0]
	v_perm_b32 v158, v158, v161, 0xc0c0004
	v_lshl_or_b32 v159, v143, 16, v144
	v_lshl_or_b32 v183, v1, 16, v0
	v_perm_b32 v0, v180, v182, 0xc0c0004
	v_perm_b32 v1, v179, v145, 0xc0c0004
	v_perm_b32 v6, v164, v166, 0xc0c0004
	v_perm_b32 v121, v163, v165, 0xc0c0004
	v_perm_b32 v179, v148, v150, 0xc0c0004
	v_perm_b32 v180, v147, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[143:150], v[239:242], v[247:250], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v166, v114, 16, v120
	v_lshl_or_b32 v165, v100, 16, v104
	v_lshl_or_b32 v164, v85, 16, v92
	v_perm_b32 v85, v90, v201, 0xc0c0004
	v_perm_b32 v92, v134, v131, 0xc0c0004
	v_perm_b32 v96, v124, v123, 0xc0c0004
	v_perm_b32 v97, v119, v118, 0xc0c0004
	v_perm_b32 v15, v105, v103, 0xc0c0004
	v_perm_b32 v16, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[235:238], v[151:154], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v161, v156, 16, v155
	v_lshl_or_b32 v160, v158, 16, v157
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[151:154], v[143:150] neg_lo:[1,1,0]
	v_perm_b32 v87, v115, v111, 0xc0c0004
	v_perm_b32 v90, v107, v106, 0xc0c0004
	v_lshl_or_b32 v182, v1, 16, v0
	v_perm_b32 v0, v206, v205, 0xc0c0004
	v_perm_b32 v1, v204, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[231:234], v[159:162], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v180, v180, 16, v179
	v_wmma_i32_16x16x16_iu8 v[143:150], v[2:5], v[159:162], v[143:150] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v89, v18, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v163, v93, 16, v89
	v_perm_b32 v89, v200, v199, 0xc0c0004
	v_perm_b32 v93, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[151:158], v[251:254], v[163:166], v[7:14] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v95, v89, 16, v85
	v_lshl_or_b32 v94, v93, 16, v92
	v_lshl_or_b32 v93, v97, 16, v96
	v_lshl_or_b32 v92, v16, 16, v15
	v_perm_b32 v15, v181, v19, 0xc0c0004
	v_perm_b32 v16, v20, v17, 0xc0c0004
	v_perm_b32 v85, v194, v192, 0xc0c0004
	v_perm_b32 v89, v133, v132, 0xc0c0004
	v_perm_b32 v96, v128, v127, 0xc0c0004
	v_perm_b32 v97, v126, v125, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[239:242], v[163:166], v[7:14] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[235:238], v[92:95], v[151:158] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v16, 16, v15
	v_lshl_or_b32 v17, v89, 16, v85
	v_lshl_or_b32 v16, v97, 16, v96
	v_lshl_or_b32 v15, v90, 16, v87
	v_lshl_or_b32 v181, v121, 16, v6
	v_perm_b32 v6, v196, v195, 0xc0c0004
	v_perm_b32 v85, v190, v189, 0xc0c0004
	v_perm_b32 v87, v116, v112, 0xc0c0004
	v_perm_b32 v19, v109, v108, 0xc0c0004
	v_perm_b32 v20, v99, v91, 0xc0c0004
	v_perm_b32 v91, v88, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[7:14], v[167:170], v[92:95], v[7:14] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[231:234], v[15:18], v[151:158] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v1, 16, v0
	v_lshl_or_b32 v89, v85, 16, v6
	v_lshl_or_b32 v88, v19, 16, v87
	v_lshl_or_b32 v87, v91, 16, v20
	v_wmma_i32_16x16x16_iu8 v[7:14], v[2:5], v[15:18], v[7:14] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[175:178], v[180:183], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[171:174], v[180:183], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[175:178], v[87:90], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[7:14], v[171:174], v[87:90], v[7:14] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v135
	v_cvt_f32_i32_e32 v231, v136
	v_cvt_f32_i32_e32 v233, v137
	v_cvt_f32_i32_e32 v236, v138
	v_cvt_f32_i32_e32 v232, v139
	v_cvt_f32_i32_e32 v234, v140
	v_cvt_f32_i32_e32 v235, v141
	v_cvt_f32_i32_e32 v238, v142
	v_cvt_f32_i32_e32 v237, v143
	v_cvt_f32_i32_e32 v240, v144
	v_cvt_f32_i32_e32 v241, v145
	v_cvt_f32_i32_e32 v244, v146
	v_cvt_f32_i32_e32 v239, v147
	v_cvt_f32_i32_e32 v242, v148
	v_cvt_f32_i32_e32 v135, v149
	v_cvt_f32_i32_e32 v245, v150
	v_cvt_f32_i32_e32 v246, v151
	v_cvt_f32_i32_e32 v247, v152
	v_cvt_f32_i32_e32 v249, v153
	v_cvt_f32_i32_e32 v252, v154
	v_cvt_f32_i32_e32 v248, v155
	v_cvt_f32_i32_e32 v250, v156
	v_cvt_f32_i32_e32 v251, v157
	v_cvt_f32_i32_e32 v254, v158
	v_cvt_f32_i32_e32 v253, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v6, v10
	v_cvt_f32_i32_e32 v255, v11
	v_cvt_f32_i32_e32 v3, v12
	v_cvt_f32_i32_e32 v5, v13
	v_mov_b32_e32 v13, v187
	v_cvt_f32_i32_e32 v0, v14
.LBB0_16:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	scratch_load_b32 v193, off, off         ; 4-byte Folded Reload
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_or_b32_e32 v16, 32, v86
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v8, s29, v86
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s28, s15
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 434 22 is_stmt 0              ; generate_amdgcn.py:434:22
	v_or_b32_e32 v9, s29, v16
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s8, s16
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v142, v80, v213 :: v_dual_add_f32 v143, v79, v210
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v121, v73, v121 :: v_dual_add_f32 v150, v78, v252
	v_dual_add_f32 v145, v70, v236 :: v_dual_add_f32 v148, v81, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v142, v80, v142, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v115, v65, v232 :: v_dual_add_f32 v152, v68, v250
	v_dual_add_f32 v99, v49, v237 :: v_dual_add_f32 v94, v44, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v81, v148, s2
	v_cndmask_b32_e64 v148, v78, v150, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v147, v66, v234 :: v_dual_add_f32 v102, v52, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v113, v64, v211 :: v_dual_add_f32 v146, v69, v233
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v19, v34, v242
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v150, v68, v152, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v141, v84, v208 :: v_dual_add_f32 v114, v63, v209
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v66, v147, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s29, s15
	v_mul_lo_u32 v4, s15, v16
	s_add_i32 s1, s1, s28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v143, v79, v143, s2
	v_cndmask_b32_e64 v70, v70, v145, s2
	v_cndmask_b32_e64 v64, v64, v113, s2
	v_cndmask_b32_e64 v63, v63, v114, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v111, v62, v225 :: v_dual_add_f32 v106, v55, v212
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v107, v57, v235 :: v_dual_add_f32 v110, v60, v254
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v105, v56, v215 :: v_dual_add_f32 v108, v58, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v111, s2
	v_cndmask_b32_e64 v57, v57, v107, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v103, v54, v229 :: v_dual_add_f32 v98, v47, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v58, v108, s2
	v_cndmask_b32_e64 v56, v56, v105, s2
	v_cndmask_b32_e64 v55, v55, v106, s2
	v_cndmask_b32_e64 v54, v54, v103, s2
	v_cndmask_b32_e64 v52, v52, v102, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v97, v48, v217 :: v_dual_add_f32 v100, v50, v240
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v99, s2
	v_cndmask_b32_e64 v47, v47, v98, s2
	v_cndmask_b32_e64 v44, v44, v94, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v48, v48, v97, s2
	v_cndmask_b32_e64 v50, v50, v100, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v89, v40, v221 :: v_dual_add_f32 v92, v42, v244
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v91, v41, v241 :: v_dual_add_f32 v20, v35, v255
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v17, v31, v216 :: v_dual_add_f32 v18, v33, v239
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v92, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v41, v41, v91, s2
	v_cndmask_b32_e64 v20, v35, v20, s2
	v_cndmask_b32_e64 v40, v40, v89, s2
	v_cndmask_b32_e64 v18, v33, v18, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v15, v32, v219
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v136, v75, v228
	v_add_f32_e32 v138, v72, v227
	v_add_f32_e32 v112, v61, v222
	v_add_f32_e32 v104, v53, v226
	v_add_f32_e32 v140, v83, v207
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v136, v75, v136, s2
	v_cndmask_b32_e64 v72, v72, v138, s2
	v_cndmask_b32_e64 v138, v69, v146, s2
	v_cndmask_b32_e64 v61, v61, v112, s2
	v_cndmask_b32_e64 v53, v53, v104, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v96, v45, v13
	v_add_f32_e32 v90, v39, v218
	v_add_f32_e32 v134, v24, v223
	v_add_f32_e32 v194, v23, v220
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v144, v74, v231
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v96, s2
	v_cndmask_b32_e64 v39, v39, v90, s2
	v_cndmask_b32_e64 v24, v24, v134, s2
	v_cndmask_b32_e64 v23, v23, v194, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v14, 1, v193
	v_lshrrev_b32_e32 v1, 4, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 48, v14
	v_and_or_b32 v116, v1, 1, v7
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v1, 1, v8
	v_lshlrev_b32_e32 v7, 1, v9
	s_clause 0x1
	buffer_load_u16 v117, v1, s[8:11], 0 offen
	buffer_load_u16 v118, v7, s[8:11], 0 offen
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v1, s0, v116, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v7, s28, v116
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v9, 2, v116
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 6, v116
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v124, v1, s[8:11], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v1, 1, v7
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v10, 4, v116
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v7, s0, v9, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v119, 10, v116
	v_or_b32_e32 v120, 8, v116
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v9, s28, v9
	v_or_b32_e32 v12, s28, v8
	.loc	1 435 14 is_stmt 0              ; generate_amdgcn.py:435:14
	s_clause 0x1
	buffer_load_u16 v122, v1, s[8:11], 0 offen
	buffer_load_u16 v123, v7, s[8:11], 0 offen
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v1, s0, v8, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v11, s28, v10
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v7, s0, v10, 1
	v_add_lshl_u32 v8, s0, v119, 1
	v_add_lshl_u32 v10, s0, v120, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_clause 0x4
	buffer_load_u16 v129, v1, s[8:11], 0 offen
	buffer_load_u16 v128, v7, s[8:11], 0 offen
	buffer_load_u16 v131, v8, s[8:11], 0 offen
	buffer_load_u16 v130, v10, s[8:11], 0 offen
	buffer_load_u16 v127, v9, s[8:11], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v1, 1, v12
	v_lshlrev_b32_e32 v7, 1, v11
	s_clause 0x1
	buffer_load_u16 v126, v1, s[8:11], 0 offen
	buffer_load_u16 v125, v7, s[8:11], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v1, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v75, 12, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v85, v36, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v83, v140, s2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v78, s28, v120
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v149, v82, v247
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v80, s28, v75
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v151, v77, v249
	v_add_f32_e32 v10, v27, v5
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v152, 1, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v82, v149, s2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v80, 1, v80
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v66, 0x4c, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v7, v25, v135
	v_dual_add_f32 v11, v28, v0 :: v_dual_and_b32 v0, 56, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v68, 0x48, v116
	v_or_b32_e32 v69, 0x46, v116
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v120, s28, v66
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v93, v43, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v84, v141, s2
	v_cndmask_b32_e64 v141, v73, v121, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v73, 0x42, v116
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v16, s1, v0
	v_add3_u32 v14, s1, v0, 64
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v0, 0x4e, v116
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v79, s28, v119
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v75, s0, v75, 1
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v83, s28, v73
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v73, s0, v73, 1
	v_add_lshl_u32 v66, s0, v66, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v79, 1, v79
	v_lshlrev_b32_e32 v160, 1, v120
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v34, v19, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v8, v26, v245
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v32, v15, s2
	v_cndmask_b32_e64 v10, v27, v10, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.h, v9.h
	v_mov_b16_e32 v121.h, v9.h
	v_mov_b16_e64 v146.h, v9.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v25, v7, s2
	v_cndmask_b32_e64 v8, v26, v8, s2
	v_cndmask_b32_e64 v140, v74, v144, s2
	v_cndmask_b32_e64 v144, v77, v151, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v77, 64, v116
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v151, s28, v0
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v0, s0, v0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v74.h, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v82, s28, v77
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v153, v67, v248
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v77, s0, v77, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v154, 1, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v67, v153, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v67, 0x4a, v116
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v119, s28, v67
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v67, s0, v67, 1
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v128, 16, v128
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v159, 1, v119
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v95, v46, v1
	scratch_load_b32 v1, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v95, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v87, v38, v1
	scratch_load_b32 v1, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v87, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v88, v37, v1
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	v_add_f32_e32 v137, v76, v230
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v88, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v30, v1
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v137, v76, v137, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v76, 14, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v30, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v81, s28, v76
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v76, s0, v76, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v153, 1, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v29, v1
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	v_add_f32_e32 v139, v71, v224
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v29, v13, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v132, v22, v1
	scratch_load_b32 v1, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v139, v71, v139, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v71, 0x44, v116
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v116, s28, v68
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v101, v51, v253
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v68, s0, v68, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v132, s2
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v84, s28, v71
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v71, s0, v71, 1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v109, v59, v251 :: v_dual_lshlrev_b32 v158, 1, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v156, 1, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v59, v109, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v133, v21, v1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v1, s15, v86
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v86, s28, v69
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v69, s0, v69, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s15, s11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v133, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v157, 1, v86
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	s_clause 0xd
	buffer_load_u16 v161, v75, s[8:11], 0 offen
	buffer_load_u16 v162, v76, s[8:11], 0 offen
	buffer_load_u16 v86, v77, s[8:11], 0 offen
	buffer_load_u16 v116, v73, s[8:11], 0 offen
	buffer_load_u16 v81, v71, s[8:11], 0 offen
	buffer_load_u16 v82, v69, s[8:11], 0 offen
	buffer_load_u16 v77, v68, s[8:11], 0 offen
	buffer_load_u16 v78, v67, s[8:11], 0 offen
	buffer_load_u16 v71, v66, s[8:11], 0 offen
	buffer_load_u16 v73, v0, s[8:11], 0 offen
	buffer_load_u16 v0, v152, s[8:11], 0 offen
	buffer_load_u16 v152, v79, s[8:11], 0 offen
	buffer_load_u16 v119, v80, s[8:11], 0 offen
	buffer_load_u16 v120, v153, s[8:11], 0 offen
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v67, 16, v117
	v_lshlrev_b32_e32 v66, 16, v118
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v118, 16, v122
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v117, 16, v124
	v_lshlrev_b32_e32 v124, 16, v129
	v_lshlrev_b32_e32 v129, 16, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v131, v66, v118 :: v_dual_lshlrev_b32 v122, 16, v123
	v_dual_mul_f32 v118, v67, v118 :: v_dual_mul_f32 v123, v66, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v85, s2
	v_cndmask_b32_e64 v11, v28, v11, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v153, v66, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v118, v136, v118 :: v_dual_mul_f32 v117, v67, v117
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v155, 1, v83
	v_lshlrev_b32_e32 v151, 1, v151
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v6, v6, v123 :: v_dual_lshlrev_b32 v123, 16, v126
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v126, v66, v128 :: v_dual_mul_f32 v117, v141, v117
	v_mul_f32_e32 v141, v66, v124
	v_mul_f32_e32 v128, v67, v128
	v_mul_f32_e32 v124, v67, v124
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_clause 0x7
	buffer_load_u16 v83, v154, s[8:11], 0 offen
	buffer_load_u16 v84, v155, s[8:11], 0 offen
	buffer_load_u16 v79, v156, s[8:11], 0 offen
	buffer_load_u16 v80, v157, s[8:11], 0 offen
	buffer_load_u16 v75, v158, s[8:11], 0 offen
	buffer_load_u16 v76, v159, s[8:11], 0 offen
	buffer_load_u16 v68, v160, s[8:11], 0 offen
	buffer_load_u16 v69, v151, s[8:11], 0 offen
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v151, v66, v122
	v_mul_f32_e32 v122, v67, v122
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v3, v3, v131 :: v_dual_mul_f32 v70, v70, v124
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v124, v138, v128
	v_mul_f32_e32 v126, v144, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v122, v140, v122
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v154, v66, v129 :: v_dual_mul_f32 v5, v5, v151
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v136, 0xbfb8aa3b, v117 :: v_dual_lshlrev_b32 v127, 16, v127
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v140, v66, v125
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v128, v150, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v151, v66, v123 :: v_dual_mul_f32 v144, 0xbfb8aa3b, v5
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v138, v149, v153 :: v_dual_mul_f32 v155, v66, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v140, v143, v140
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v150, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v141, v148, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v142, v142, v151 :: v_dual_mul_f32 v131, 0xbfb8aa3b, v6
	v_mul_f32_e32 v2, v2, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v127, v67, v127 :: v_dual_mul_f32 v148, 0xbfb8aa3b, v141
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v136
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v131
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v148
	v_cndmask_b32_e64 v136, 0, 0x42800000, s0
	v_cndmask_b32_e64 v131, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	v_cndmask_b32_e64 v148, 0, 0x42800000, s1
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v123, v67, v123 :: v_dual_fmac_f32 v136, 0xbfb8aa3b, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v144, 0, 0x42800000, vcc_lo
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v127, v137, v127
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v137, 0xbfb8aa3b, v122 :: v_dual_fmac_f32 v148, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v136, v136
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v125, v67, v125 :: v_dual_mul_f32 v72, v72, v123
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s0
	v_exp_f32_e32 v148, v148
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v150, 0, 0x42800000, s6
	v_mul_f32_e32 v143, 0xbfb8aa3b, v126
	v_fmac_f32_e32 v131, 0xbfb8aa3b, v6
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v136, v136, v153
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v123, v139, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v144, v144
	v_fmac_f32_e32 v150, 0xbfb8aa3b, v128
	v_ldexp_f32 v148, v148, v156
	v_mul_f32_e32 v149, 0xbfb8aa3b, v138
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v143
	v_exp_f32_e32 v131, v131
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v137
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v148, 1.0, v148
	v_add_f32_e32 v136, 1.0, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v143, 0, 0x42800000, s3
	v_ldexp_f32 v144, v144, v154
	v_mul_f32_e32 v139, 0xbfb8aa3b, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v165, null, v148, v148, v141
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v144, 1.0, v144
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v174, v165
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v131, v131, v151
	v_cndmask_b32_e64 v137, 0, 0x42800000, s0
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v139, 0, 0x42800000, s4
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v166, s4, v141, v148, v141
	v_div_scale_f32 v154, null, v136, v136, v117
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v181, -v165, v174, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v125, 0xbfb8aa3b, v124
	v_fmac_f32_e32 v139, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v149
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v174, v181, v174
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v125
	v_exp_f32_e32 v139, v139
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v131, 1.0, v131
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v149, 0, 0x42800000, s7
	v_exp_f32_e32 v150, v150
	v_cndmask_b32_e64 v125, 0, 0x42800000, s5
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v124
	v_ldexp_f32 v139, v139, v158
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v158, s1, v5, v144, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v125, v125
	v_ldexp_f32 v125, v125, v159
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v159, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v171, null, v125, v125, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v179, -v154, v159, 1.0
	v_rcp_f32_e32 v178, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v159, v179, v159
	v_fma_f32 v184, -v171, v178, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v178, v184, v178 :: v_dual_add_f32 v139, 1.0, v139
	v_mul_f32_e32 v184, v166, v174
	v_div_scale_f32 v151, null, v131, v131, v6
	v_div_scale_f32 v153, vcc_lo, v6, v131, v6
	v_div_scale_f32 v169, null, v139, v139, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v189, -v165, v184, v166
	v_rcp_f32_e32 v156, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v176, v169
	v_fmac_f32_e32 v184, v189, v174
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v177, -v151, v156, 1.0
	v_fma_f32 v183, -v169, v176, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v143, 0xbfb8aa3b, v126 :: v_dual_fmac_f32 v156, v177, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v176, v183, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v143, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v185, v153, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v143, v143, v157
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v157, null, v144, v144, v5
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v143, 1.0, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v172, v157
	v_div_scale_f32 v167, null, v143, v143, v126
	v_div_scale_f32 v168, s5, v126, v143, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v175, v167
	v_fma_f32 v177, -v157, v172, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v137, 0xbfb8aa3b, v122 :: v_dual_fmac_f32 v172, v177, v172
	v_exp_f32_e32 v137, v137
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v182, -v167, v175, 1.0
	v_mul_f32_e32 v181, v158, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v175, v182, v175
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v137, v137, v155
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v155, s0, v117, v136, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v186, v168, v175
	v_mul_f32_e32 v177, v155, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v190, -v167, v186, v168
	v_fma_f32 v182, -v154, v177, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v186, v190, v175
	v_div_scale_f32 v180, s8, v124, v125, v124
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v137, 1.0, v137
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v177, v182, v159 :: v_dual_mul_f32 v188, v180, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v163, null, v137, v137, v122
	v_div_scale_f32 v164, s3, v122, v137, v122
	v_fma_f32 v192, -v171, v188, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v173, v163
	v_fmac_f32_e32 v188, v192, v178
	v_div_scale_f32 v170, s6, v70, v139, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v179, -v163, v173, 1.0
	v_mul_f32_e32 v187, v170, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v173, v179, v173
	v_fma_f32 v179, -v151, v185, v153
	v_fma_f32 v191, -v169, v187, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v183, v164, v173
	v_fmac_f32_e32 v185, v179, v156
	v_fma_f32 v179, -v157, v181, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v187, v191, v176
	v_fma_f32 v182, -v163, v183, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v151, -v151, v185, v153
	v_fmac_f32_e32 v181, v179, v172
	v_fma_f32 v153, -v154, v177, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v183, v182, v173
	v_div_fmas_f32 v151, v151, v156, v185
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v154, -v157, v181, v158
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v156, -v165, v184, v166
	v_fma_f32 v157, -v167, v186, v168
	v_div_fixup_f32 v6, v151, v131, v6
	v_div_fmas_f32 v131, v154, v172, v181
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v158, -v169, v187, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v131, v144, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v151, v153, v159, v177
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v121.l, v2.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v117, v151, v136, v117
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v155, -v163, v183, v164
	v_fma_f32 v163, -v171, v188, v180
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v121, 1, v121
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v117, v118, v117
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v113, 16, v152
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v153, v155, v173, v183
	s_mov_b32 vcc_lo, s4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v136, v66, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v6, v156, v174, v184
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v122, v153, v137, v122
	v_div_fmas_f32 v131, v157, v175, v186
	s_mov_b32 vcc_lo, s6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v117.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v158, v176, v187
	s_mov_b32 vcc_lo, s8
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v122, v127, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v118, v163, v178, v188
	v_div_fixup_f32 v126, v131, v143, v126
	v_div_fixup_f32 v5, v5, v139, v70
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v74.l, v122.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v70, v118, v125, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v121, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v72, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v72, 1, v9
	v_mov_b16_e32 v9.l, v3.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v123, v123, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v70, 1, v74
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v118, v140, v126
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v5, v5
	v_and_b32_e32 v74, 1, v9
	v_mov_b16_e32 v9.l, v5.h
	v_add3_u32 v121, v122, v70, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v2.h, vcc_lo
	v_mov_b16_e64 v146.l, v118.h
	v_cmp_o_f32_e64 s1, v117, v117
	v_and_b32_e32 v2, 1, v9
	v_add3_u32 v72, v117, v72, 0x7fff
	v_add3_u32 v3, v3, v74, 0x7fff
	v_and_b32_e32 v117, 1, v146
	v_cmp_o_f32_e64 s3, v122, v122
	v_add3_u32 v2, v5, v2, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v72.h, s1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v140, v66, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.l, v123.h
	v_cndmask_b16 v72.h, 0x7fff, v121.h, s3
	v_cndmask_b16 v74.h, 0x7fff, v2.h, s4
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v2, v67, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v123, v123
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v0, v67, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v122, 1, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v6, v148, v141
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v2, v147, v2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v64, v64, v140
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v70.l, 0x7fff, v3.h, s0
	v_add3_u32 v5, v123, v122, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v142, v6
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v121, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s7
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v117, v118, v117, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v5.h, s5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v65, v115, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v121
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v65, v67, v130
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v112, v67, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v6.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v115, v150, v160
	v_cndmask_b32_e64 v121, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, vcc_lo
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v5, v5, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v9
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v121, 0xbfb8aa3b, v2 :: v_dual_mul_f32 v62, v62, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v123, 0xbfb8aa3b, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v6, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v121, v121
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v63, v63, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v123
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v0, v61, v0 :: v_dual_lshlrev_b32 v61, 16, v162
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v84, 16, v84
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v123, 0, 0x42800000, s0
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s0
	v_ldexp_f32 v121, v121, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v5
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v114, 1.0, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v121, null, v114, v114, v2
	v_rcp_f32_e32 v129, v121
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v121, v129, 1.0
	v_fmac_f32_e32 v129, v139, v129
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v149, 0xbfb8aa3b, v138
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v115, 1.0, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v65, v149
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v124, null, v115, v115, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v6, v65, v122
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v65.h, 0x7fff, v3.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v123
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v122, v124
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v65.l, 0x7fff, v117.h, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, vcc_lo, v128, v115, v128
	v_div_scale_f32 v139, s1, v2, v114, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v123, null, v6, v6, v138
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v118, -v124, v122, 1.0
	v_div_scale_f32 v130, s0, v138, v6, v138
	v_rcp_f32_e32 v127, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_fmac_f32 v122, v118, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v125, null, v3, v3, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v126, v117, v122
	v_fma_f32 v118, -v123, v127, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v131, -v124, v126, v117
	v_fmac_f32_e32 v127, v118, v127
	v_rcp_f32_e32 v118, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v126, v131, v122 :: v_dual_mul_f32 v137, v130, v127
	v_fma_f32 v117, -v124, v126, v117
	v_mul_f32_e32 v124, v139, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v141, -v123, v137, v130
	v_fma_f32 v131, -v125, v118, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v117, v117, v122, v126
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v137, v141, v127 :: v_dual_fmac_f32 v118, v131, v118
	v_div_scale_f32 v131, s3, v5, v3, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v122, -v123, v137, v130
	v_fma_f32 v123, -v121, v124, v139
	v_mul_f32_e32 v140, v131, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v122, v122, v127, v137
	v_fmac_f32_e32 v124, v123, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v126, -v125, v140, v131
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v6, v122, v6, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v111, -v121, v124, v139
	v_fmac_f32_e32 v140, v126, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v111, v111, v129, v124
	v_fma_f32 v113, -v125, v140, v131
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v111, v114, v2
	v_div_fmas_f32 v113, v113, v118, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v62, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v113, v3, v5
	v_div_fixup_f32 v5, v117, v115, v128
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.h, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v9.l, v2.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v60, v110, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v60, v66, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v62.l, v0.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v3, v3, v60
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v64, v5
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v60, 16, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v62, 1, v62
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v63, v6
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v64, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v61, v67, v61
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v62, v0, v62, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v64
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v58, v58, v61
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v109, v66, v60
	v_mul_f32_e32 v60, v67, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v60, v57, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v59, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v63, 1, v9
	v_add3_u32 v63, v2, v63, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.h, 0x7fff, v63.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v5.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v2, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v109, 1, v9
	v_cndmask_b16 v59.l, 0x7fff, v62.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v109, v5, v109, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.l, v6.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v2, v2, v61
	v_mul_f32_e32 v61, 0xbfb8aa3b, v60
	v_mul_f32_e32 v0, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v57, 0, 0x42800000, s0
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.h, v9.h
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v57, v57
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v0, v0
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v107, null, v2, v2, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v57, v57, v108
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v0, v0, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v63, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v113, 1.0, v57 :: v_dual_add_f32 v0, 1.0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v57, v61, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v110, null, v0, v0, v64
	v_fma_f32 v111, -v107, v63, 1.0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v62, 1, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v118, s1, v64, v0, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v112, v110
	v_fmac_f32_e32 v63, v111, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v61, v6, v62, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v62, null, v113, v113, v58
	v_div_scale_f32 v111, vcc_lo, v3, v2, v3
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v108, 1.0, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v114, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v110, v112, 1.0
	v_mul_f32_e32 v5, v111, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v115, null, v108, v108, v60
	v_fmac_f32_e32 v112, v57, v112
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v57.h, 0x7fff, v109.h, s0
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v121, -v62, v114, 1.0
	v_fma_f32 v6, -v107, v5, v111
	v_rcp_f32_e32 v117, v115
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v57.l, 0x7fff, v61.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v114, v121, v114
	v_div_scale_f32 v121, s3, v58, v113, v58
	v_fmac_f32_e32 v5, v6, v63
	v_mul_f32_e32 v109, v118, v112
	v_dual_mul_f32 v123, v121, v114 :: v_dual_lshlrev_b32 v120, 16, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v122, -v115, v117, 1.0
	v_fma_f32 v107, -v107, v5, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v6, -v110, v109, v118
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v104, v67, v120 :: v_dual_lshlrev_b32 v119, 16, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v117, v122, v117
	v_div_fmas_f32 v5, v107, v63, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v109, v6, v112
	v_fma_f32 v6, -v62, v123, v121
	s_mov_b32 vcc_lo, s1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v54, v54, v104
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v122, s4, v60, v108, v60
	v_fmac_f32_e32 v123, v6, v114
	v_fma_f32 v63, -v110, v109, v118
	v_div_fixup_f32 v2, v5, v2, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v62, v123, v121
	v_div_fmas_f32 v6, v63, v112, v109
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v62, v62, v114, v123
	v_div_fixup_f32 v0, v6, v0, v64
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v58, v62, v113, v58
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v63, v67, v119 :: v_dual_mul_f32 v62, v66, v120
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v54, v54, v58 :: v_dual_mul_f32 v53, v53, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v63, v66, v119 :: v_dual_mul_f32 v56, v56, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.h, v9.h
	v_mov_b16_e32 v9.l, v54.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v55, v55, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v111, v122, v117 :: v_dual_mul_f32 v2, v56, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v6, 1, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v55, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v107, -v115, v111, v122
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v54, v6, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v111, v107, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v115, v111, v122
	v_div_fmas_f32 v103, v103, v117, v111
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v54, 16, v86
	v_lshlrev_b32_e32 v3, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v60, v103, v108, v60
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v55, v66, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v53, v53, v60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v53.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v53, v53
	v_and_b32_e32 v5, 1, v58
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v5, v53, v5, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v53, v52, v55
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v52.h, 0x7fff, v6.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v51, v101, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v66, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v52.l, 0x7fff, v5.h, s0
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v54, v67, v54
	v_mul_f32_e32 v3, v67, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v55.l, v0.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v6, v6, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v55.h, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v3, v50, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v51
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v51, v49, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v49, 0xbfb8aa3b, v3 :: v_dual_and_b32 v54, 1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_mul_f32_e32 v58, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v54, v2, v54, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v58
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s1
	v_ldexp_f32 v50, v50, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v53
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v3
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v56
	v_cndmask_b32_e64 v56, 0, 0x42800000, s1
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v49, v49, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, null, v50, v50, v6
	v_div_scale_f32 v60, null, v5, v5, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v56, v56
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v86, s1, v53, v5, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v61, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v56, v56, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v62, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v60, v61, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v56, 1.0, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v99, -v58, v62, 1.0
	v_dual_fmac_f32 v62, v99, v62 :: v_dual_fmac_f32 v61, v49, v61
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v49.h, 0x7fff, v54.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v54, v86, v61
	v_fma_f32 v98, -v60, v54, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v54, v98, v61 :: v_dual_and_b32 v55, 1, v55
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v55, v0, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v60, v54, v86
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v49.l, 0x7fff, v55.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v55, s0, v6, v50, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v102, v55, v62
	v_div_scale_f32 v63, null, v2, v2, v3
	v_fma_f32 v98, -v58, v102, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v64, v63
	v_fmac_f32_e32 v102, v98, v62
	v_div_fmas_f32 v54, v60, v61, v54
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v55, -v58, v102, v55
	v_fma_f32 v99, -v63, v64, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v62, v102
	v_fmac_f32_e32 v64, v99, v64
	v_div_scale_f32 v0, null, v56, v56, v51
	v_div_scale_f32 v99, s3, v3, v2, v3
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v100, v0
	v_div_fixup_f32 v6, v55, v50, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v0, v100, 1.0
	v_fmac_f32_e32 v100, v101, v100
	v_div_scale_f32 v101, s4, v51, v56, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v104, v101, v100
	v_div_fixup_f32 v5, v54, v5, v53
	v_fma_f32 v98, -v0, v104, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v104, v98, v100 :: v_dual_lshlrev_b32 v83, 16, v83
	v_mul_f32_e32 v103, v99, v64
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v60, v67, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v0, -v0, v104, v101
	v_fma_f32 v86, -v63, v103, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v86, v64
	v_fma_f32 v58, -v63, v103, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v58, v58, v64, v103
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v0, v0, v100, v104
	v_div_fixup_f32 v2, v58, v2, v3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v61, v67, v84
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v45, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v0, v56, v51
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v56, v66, v83
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v46, v46, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v45, v0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v47, v56
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v47, 16, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v46, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.h, v9.h
	v_mov_b16_e32 v46.l, v0.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v51, v66, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v3, v48, v51 :: v_dual_and_b32 v46, 1, v46
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v48, v66, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v6, v45, v6 :: v_dual_and_b32 v45, 1, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v5, v44, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v0, v46, 0x7fff
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v46, 16, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v2, v45, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v43, v93, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v2, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v47, v67, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v50, v66, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v43.h, 0x7fff, v45.h, vcc_lo
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v46, v67, v46
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v2, v48, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v44.l, v6.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v46, v41, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v45, 0xbfb8aa3b, v2 :: v_dual_and_b32 v50, 1, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.h, v9.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v45
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v45, 0, 0x42800000, s0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v42, v42, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v48, 0xbfb8aa3b, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v0, v0, v47
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v41, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v50, v3, v50, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v47
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s0
	v_ldexp_f32 v41, v41, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v42 :: v_dual_add_f32 v0, 1.0, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v6, v44, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v45
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v53, v53, v2
	v_div_scale_f32 v51, null, v0, v0, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v55, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v45, v41
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v56, 1.0, v41
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v47, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, s1, v5, v0, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v54, v55, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v6, 1.0, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v41.h, 0x7fff, v50.h, vcc_lo
	v_cndmask_b16 v41.l, 0x7fff, v44.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v47, v55
	v_div_scale_f32 v50, s0, v2, v53, v2
	v_fma_f32 v3, -v51, v48, 1.0
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v63, v50, v55
	v_div_scale_f32 v60, null, v6, v6, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v60
	v_fma_f32 v64, -v60, v47, 1.0
	v_fmac_f32_e32 v48, v3, v48
	v_div_scale_f32 v3, null, v56, v56, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v47, v64, v47 :: v_dual_mul_f32 v44, v45, v48
	v_rcp_f32_e32 v58, v3
	v_div_scale_f32 v64, s4, v46, v6, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v51, v44, v45
	v_fmac_f32_e32 v44, v62, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v3, v58, 1.0
	v_fma_f32 v62, -v54, v63, v50
	v_fma_f32 v45, -v51, v44, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v61, v58
	v_div_scale_f32 v61, s3, v42, v56, v42
	v_fmac_f32_e32 v63, v62, v55
	v_mul_f32_e32 v62, v64, v47
	v_div_fmas_f32 v44, v45, v48, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v61, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v45, -v54, v63, v50
	v_fma_f32 v48, -v60, v62, v64
	v_div_fixup_f32 v0, v44, v0, v5
	v_fma_f32 v51, -v3, v81, v61
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v45, v55, v63
	v_fmac_f32_e32 v62, v48, v47
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v81, v51, v58
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v51, v66, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v45, v53, v2
	v_fma_f32 v50, -v60, v62, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v81, v61
	v_div_fmas_f32 v3, v3, v58, v81
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v47, v50, v47, v62
	v_div_fixup_f32 v3, v3, v56, v42
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v67, v80
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v42, 16, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v47, v6, v46
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v38, v38, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v38, v3
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v38, v66, v42
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v67, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v3.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v5, v36, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v37, v37, v48
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v54, v66, v80
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v6, v37, v6 :: v_dual_mul_f32 v37, v39, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.h, v9.h
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.l, v6.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v2, v37, v2 :: v_dual_lshlrev_b32 v37, 16, v77
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v33, v67, v37
	v_mul_f32_e32 v34, v67, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v39
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v40, v40, v54 :: v_dual_and_b32 v39, 1, v9
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v35, v66, v37
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v18, v18, v33
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v39, v3, v39, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v19, v19, v34
	v_mul_f32_e32 v3, v20, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v39.h, s0
	v_add3_u32 v36, v6, v36, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v6, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v37
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v40, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.l, 0x7fff, v36.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v0.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	v_exp_f32_e32 v35, v38
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v39, 1, v9
	v_mov_b16_e32 v34.h, v9.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v54, 16, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v39, v0, v39, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v35, v36
	v_exp_f32_e32 v6, v6
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v29, v67, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v35
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v19
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v13, v13, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v33, v33, v5
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v6, v6, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v36, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v0, v37, v45
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, s0, v5, v33, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v38, v36, 1.0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v34.l, v2.h
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v35, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v44, v36
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v34, 1, v34
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v37, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v2, v34, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v31, v17, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v35, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v38, v47, v37
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v39.l, 0x7fff, v34.h, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v17, v36
	v_div_scale_f32 v40, null, v6, v6, v3
	v_div_scale_f32 v50, s1, v3, v6, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v44, null, v35, v35, v19
	v_rcp_f32_e32 v46, v40
	v_fma_f32 v37, -v38, v47, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v42, -v40, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v44, v48, 1.0
	v_fmac_f32_e32 v46, v42, v46
	v_rcp_f32_e32 v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v50, v46
	v_fma_f32 v53, -v40, v31, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v45, v42, 1.0
	v_fmac_f32_e32 v31, v53, v46
	v_div_fmas_f32 v36, v37, v36, v47
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v40, v31, v50
	v_div_fixup_f32 v5, v36, v33, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v37, v46, v31
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v37, v66, v51 :: v_dual_fmac_f32 v42, v17, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, s5, v18, v0, v18
	v_div_fixup_f32 v3, v31, v6, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v15, v15, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.h, v9.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v53, v17, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v15, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v45, v53, v17
	v_fmac_f32_e32 v48, v32, v48
	v_div_scale_f32 v32, s4, v19, v35, v19
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v53, v47, v42 :: v_dual_mul_f32 v38, v32, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v45, v53, v17
	v_fma_f32 v40, -v44, v38, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v40, v48
	v_fma_f32 v30, -v44, v38, v32
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v67, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v30, v30, v48, v38
	s_mov_b32 vcc_lo, s5
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v12, v12, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v42, v53
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v19, v30, v35, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v17, v0, v18
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v17, v66, v54 :: v_dual_mul_f32 v12, v12, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v13, v0 :: v_dual_lshlrev_b32 v13, 16, v73
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v2, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v12.h
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v17, v66, v13
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v2, v2, v3 :: v_dual_mul_f32 v13, v67, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v9
	v_mov_b16_e32 v9.l, v5.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v11, v11, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v3, v12, v3, 0x7fff
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v12, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v15, v66, v12 :: v_dual_and_b32 v6, 1, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v0, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.h, 0x7fff, v3.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v6, v10, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v2.h
	v_mov_b16_e32 v10.h, v9.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v12, v67, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v11
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v7, v7, v12 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v17, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v2, v10, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v17, 1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v13, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v3, v3, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v5, v17, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v13, v13, v18
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v3, v3, v11
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v12, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v29, s0, v11, v3, v11
	v_rcp_f32_e32 v25, v19
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v12, v18
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v7
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v13, v13, v6
	s_mov_b32 vcc_lo, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v15, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v27, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v28, null, v12, v12, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v15, v15, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v19, v25, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v18, v27, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_rcp_f32_e32 v26, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v26, 1.0
	v_dual_fmac_f32 v26, v33, v26 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, v29, v25
	v_div_scale_f32 v33, s3, v8, v12, v8
	v_fmac_f32_e32 v27, v30, v27
	v_div_scale_f32 v5, null, v15, v15, v7
	v_div_scale_f32 v30, s1, v6, v13, v6
	v_fma_f32 v34, -v19, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v31, v5
	v_mul_f32_e32 v38, v33, v26
	v_mul_f32_e32 v36, v30, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v34, v25
	v_fma_f32 v34, -v18, v36, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v19, -v19, v32, v29
	v_fma_f32 v35, -v5, v31, 1.0
	v_fma_f32 v29, -v28, v38, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v34, v27
	v_div_fmas_f32 v19, v19, v25, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v35, v31
	v_div_scale_f32 v35, s4, v7, v15, v7
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v38, v29, v26 :: v_dual_lshlrev_b32 v37, 16, v69
	v_fma_f32 v18, -v18, v36, v30
	v_mul_f32_e32 v40, v35, v31
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v19, v3, v11
	v_fma_f32 v25, -v28, v38, v33
	v_div_fmas_f32 v18, v18, v27, v36
	v_fma_f32 v34, -v5, v40, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v9.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v25, v26, v38
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v26, v66, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v34, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v27, v67, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v25, v12, v8
	v_div_fixup_f32 v6, v18, v13, v6
	v_fma_f32 v5, -v5, v40, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v21, v21, v27 :: v_dual_mul_f32 v28, v67, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v5, v31, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v15, v7
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v7, v66, v42
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v22, v22, v28 :: v_dual_mul_f32 v15, v24, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v17.l, 0x7fff, v10.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v21, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v23, v7 :: v_dual_mul_f32 v8, v22, v8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v15, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v5.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v7, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v7.h, v9.h
	v_cmp_o_f32_e64 s0, v5, v5
	v_and_b32_e32 v3, 1, v11
	v_mov_b16_e32 v7.l, v6.h
	v_and_b32_e32 v11, 1, v9
	v_mov_b16_e32 v9.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_add3_u32 v3, v5, v3, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v10, v8, v11, 0x7fff
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e64 s1, v2, v2
	v_mov_b32_e32 v11, 0x7632
	v_add3_u32 v5, v6, v7, 0x7fff
	v_and_b32_e32 v7, 16, v193
	v_add3_u32 v8, v2, v9, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s0
	v_mov_b32_e32 v9, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_cmp_o_f32_e64 s2, v6, v6
	v_cndmask_b16 v3.h, 0x7fff, v8.h, s1
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v10, v0, v43, vcc_lo
	v_dual_cndmask_b32 v12, v2, v20 :: v_dual_cndmask_b32 v9, 0x1054, v9
	v_dual_cndmask_b32 v11, 0x3276, v11 :: v_dual_cndmask_b32 v2, v20, v2
	v_cndmask_b32_e32 v15, v70, v57, vcc_lo
	v_cndmask_b32_e32 v20, v49, v65, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s2
	v_dual_cndmask_b32 v5, v72, v59 :: v_dual_cndmask_b32 v0, v43, v0
	v_dual_cndmask_b32 v8, v52, v74 :: v_dual_cndmask_b32 v7, v74, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v18, v65, v49 :: v_dual_and_b32 v11, 0x760076, v11
	v_and_b32_e32 v9, 0x540054, v9
	v_permlanex16_b32 v19, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v21, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v13, v57, v70 :: v_dual_cndmask_b32 v24, v3, v39
	v_lshl_or_b32 v5, v9, 4, v9
	v_lshl_or_b32 v7, v11, 4, v11
	v_dual_cndmask_b32 v22, v17, v41 :: v_dual_cndmask_b32 v3, v39, v3
	v_dual_cndmask_b32 v17, v41, v17 :: v_dual_cndmask_b32 v6, v59, v72
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x5040504, v5
	v_and_b32_e32 v25, 0x7060706, v7
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v19, v6, v23
	v_perm_b32 v6, v19, v6, v25
	v_perm_b32 v7, v21, v8, v23
	v_perm_b32 v8, v21, v8, v25
	v_perm_b32 v9, v0, v10, v23
	v_perm_b32 v10, v0, v10, v25
	v_add_lshl_u32 v0, v16, v1, 1
	v_perm_b32 v11, v2, v12, v23
	v_perm_b32 v12, v2, v12, v25
	v_add_lshl_u32 v1, v14, v1, 1
	v_perm_b32 v17, v15, v13, v23
	v_perm_b32 v18, v15, v13, v25
	v_perm_b32 v19, v26, v20, v23
	v_perm_b32 v20, v26, v20, v25
	v_add_lshl_u32 v2, v16, v4, 1
	v_perm_b32 v21, v27, v22, v23
	v_perm_b32 v22, v27, v22, v25
	v_perm_b32 v23, v3, v24, v23
	v_perm_b32 v24, v3, v24, v25
	v_add_lshl_u32 v3, v14, v4, 1
	s_clause 0x3
	buffer_store_b128 v[5:8], v0, s[12:15], 0 offen
	buffer_store_b128 v[9:12], v1, s[12:15], 0 offen
	buffer_store_b128 v[17:20], v2, s[12:15], 0 offen
	buffer_store_b128 v[21:24], v3, s[12:15], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 40
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28640
; TotalNumSgprs: 41
; NumVgprs: 256
; ScratchSize: 40
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 40
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 9
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
