	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v104, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v179, 2, v104
	v_and_b32_e32 v180, 62, v179
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 63
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
	v_rcp_iflag_f32_e32 v0, s6
	v_readfirstlane_b32 s6, v0
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
	s_min_i32 s6, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s16
	s_sub_i32 s18, 0, s16
	v_rcp_iflag_f32_e32 v0, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v0
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s17, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_xor_b32 s10, s2, s6
	s_mul_i32 s18, s18, s17
	s_mov_b64 s[28:29], s[14:15]
	s_mul_hi_u32 s4, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_ashr_i32 s17, s10, 31
	s_mul_i32 s11, s4, s16
	s_add_i32 s10, s4, 1
	s_sub_i32 s5, s5, s11
	s_mov_b32 s11, 0x31027000
	s_sub_i32 s18, s5, s16
	s_cmp_ge_u32 s5, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s39, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s18, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s18, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v180
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s4, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 24
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 63
.Ltmp19:
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s35, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s4, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp21:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v0, s35, v180
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s30, v179
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v181, v1, 4, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s26, s30
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v0, s33, s18, v181
	v_add_nc_u32_e32 v2, s35, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v3, 0x80000000, v0, vcc_lo
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v182, 4, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v18, 6, v104
	v_and_b32_e32 v192, 8, v104
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[19:22], v3, s[36:39], 0 offen
	buffer_load_b128 v[23:26], v2, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s27, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v0, s27, 7, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, 0, v182
	v_and_b32_e32 v193, 32, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[36:39], 0 offen
	buffer_load_b128 v[31:34], v3, s[36:39], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s26, v179
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 48, v182
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s27, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s30, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v77, v2, v3, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s44, v180
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v2, s7, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s35, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_load_b128 v[35:38], v0, s[36:39], 0 offen
	buffer_load_b128 v[39:42], v3, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v0, 0x80000000, v4, s4
	v_cndmask_b32_e64 v3, 0x80000000, v5, s4
	s_clause 0x1
	buffer_load_b128 v[43:46], v0, s[36:39], 0 offen
	buffer_load_b128 v[47:50], v3, s[36:39], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 1, v104
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 3, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v4, v104, 0, 1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s26, 6
	scratch_store_b32 off, v5, off offset:20 ; 4-byte Folded Spill
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v5, 48, v5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[51:54], v0, s[8:11], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v0, 15, v104
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 4, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v126, v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v0, 0x420, v4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v3, v3, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v105, 32, v126
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v0, v180
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 2, v3
	v_or_b32_e32 v7, 4, v3
	v_or_b32_e32 v8, 6, v3
	v_or_b32_e32 v9, 8, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v183, v18, 10, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v0, s44, v179
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v10, 10, v3
	v_or_b32_e32 v11, 12, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v184, 0x90, v183
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v0, s7, s4, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v185, 0x120, v183
	v_add_nc_u32_e32 v67, 0, v183
	v_xor_b32_e32 v186, 0x1b0, v183
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v187, 0x210, v183
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v68, 0, v184
	v_xor_b32_e32 v188, 0x330, v183
	v_add_nc_u32_e32 v69, 0, v185
	v_xor_b32_e32 v189, 0x3a0, v183
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[55:58], v0, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v70, 0, v186
	v_add_nc_u32_e32 v71, 0, v187
	v_add_nc_u32_e32 v72, 0, v188
	v_add_nc_u32_e32 v73, 0, v189
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 64, v3
	v_or_b32_e32 v14, 0x42, v3
	v_or_b32_e32 v15, 0x44, v3
	v_or_b32_e32 v16, 0x46, v3
	v_or_b32_e32 v17, 0x48, v3
	v_or_b32_e32 v2, 0x4a, v3
	v_or_b32_e32 v4, 0x4c, v3
	v_or_b32_e32 v5, 0x4e, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v59, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v60, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v61, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v62, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_and_b16 v0.l, 0xff, v59.l
	v_lshrrev_b32_e32 v63, 8, v59
	v_lshrrev_b32_e32 v64, 24, v59
	v_and_b16 v0.h, 0xff, v59.h
	v_lshrrev_b32_e32 v59, 8, v23
	v_lshrrev_b32_e32 v65, 24, v23
	v_and_b16 v20.l, 0xff, v60.l
	v_lshrrev_b32_e32 v74, 8, v60
	v_lshrrev_b32_e32 v75, 24, v60
	v_and_b16 v20.h, 0xff, v60.h
	v_and_b16 v21.l, 0xff, v24.l
	v_lshrrev_b32_e32 v60, 8, v24
	v_lshrrev_b32_e32 v76, 24, v24
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.l, 0xff, v61.l
	v_lshrrev_b32_e32 v78, 8, v61
	v_lshrrev_b32_e32 v79, 24, v61
	v_and_b16 v22.h, 0xff, v61.h
	v_lshrrev_b32_e32 v61, 8, v25
	v_lshrrev_b32_e32 v80, 24, v25
	v_and_b16 v24.l, 0xff, v62.l
	v_lshrrev_b32_e32 v81, 8, v62
	v_lshrrev_b32_e32 v82, 24, v62
	v_and_b16 v24.h, 0xff, v62.h
	v_lshrrev_b32_e32 v62, 8, v26
	v_lshrrev_b32_e32 v83, 24, v26
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v84, v31, v27, 0x5010400
	v_perm_b32 v85, v31, v27, 0x7030602
	v_perm_b32 v86, v32, v28, 0x5010400
	v_perm_b32 v87, v32, v28, 0x7030602
	v_perm_b32 v88, v33, v29, 0x5010400
	v_perm_b32 v89, v33, v29, 0x7030602
	v_perm_b32 v90, v34, v30, 0x5010400
	v_perm_b32 v91, v34, v30, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v19.l, 0xff, v23.l
	v_and_b16 v19.h, 0xff, v23.h
	v_and_b16 v23.l, 0xff, v25.l
	v_and_b16 v23.h, 0xff, v25.h
	v_and_b16 v25.l, 0xff, v26.l
	v_and_b16 v25.h, 0xff, v26.h
	v_lshlrev_b16 v26.l, 8, v63.l
	v_lshlrev_b16 v26.h, 8, v64.l
	v_lshlrev_b16 v27.l, 8, v59.l
	v_lshlrev_b16 v27.h, 8, v65.l
	v_lshlrev_b16 v28.l, 8, v74.l
	v_lshlrev_b16 v28.h, 8, v75.l
	v_lshlrev_b16 v29.l, 8, v60.l
	v_lshlrev_b16 v29.h, 8, v76.l
	v_lshlrev_b16 v30.l, 8, v78.l
	v_lshlrev_b16 v30.h, 8, v79.l
	v_lshlrev_b16 v31.l, 8, v61.l
	v_lshlrev_b16 v31.h, 8, v80.l
	v_lshlrev_b16 v32.l, 8, v81.l
	v_lshlrev_b16 v32.h, 8, v82.l
	v_lshlrev_b16 v33.l, 8, v62.l
	v_lshlrev_b16 v33.h, 8, v83.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v34.l, 0xff, v84.l
	v_lshrrev_b32_e32 v74, 8, v84
	v_lshrrev_b32_e32 v75, 24, v84
	v_and_b16 v34.h, 0xff, v84.h
	v_and_b16 v59.l, 0xff, v85.l
	v_lshrrev_b32_e32 v76, 8, v85
	v_lshrrev_b32_e32 v78, 24, v85
	v_and_b16 v59.h, 0xff, v85.h
	v_and_b16 v60.l, 0xff, v86.l
	v_lshrrev_b32_e32 v79, 8, v86
	v_lshrrev_b32_e32 v80, 24, v86
	v_and_b16 v60.h, 0xff, v86.h
	v_and_b16 v61.l, 0xff, v87.l
	v_lshrrev_b32_e32 v81, 8, v87
	v_lshrrev_b32_e32 v82, 24, v87
	v_and_b16 v61.h, 0xff, v87.h
	v_and_b16 v62.l, 0xff, v88.l
	v_lshrrev_b32_e32 v83, 8, v88
	v_lshrrev_b32_e32 v84, 24, v88
	v_and_b16 v62.h, 0xff, v88.h
	v_and_b16 v63.l, 0xff, v89.l
	v_lshrrev_b32_e32 v85, 8, v89
	v_lshrrev_b32_e32 v86, 24, v89
	v_and_b16 v63.h, 0xff, v89.h
	v_and_b16 v64.l, 0xff, v90.l
	v_lshrrev_b32_e32 v87, 8, v90
	v_lshrrev_b32_e32 v88, 24, v90
	v_and_b16 v64.h, 0xff, v90.h
	v_and_b16 v65.l, 0xff, v91.l
	v_lshrrev_b32_e32 v89, 8, v91
	v_lshrrev_b32_e32 v90, 24, v91
	v_and_b16 v65.h, 0xff, v91.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v91, v39, v35, 0x5010400
	v_perm_b32 v39, v39, v35, 0x7030602
	v_perm_b32 v92, v40, v36, 0x5010400
	v_perm_b32 v40, v40, v36, 0x7030602
	v_perm_b32 v93, v41, v37, 0x5010400
	v_perm_b32 v41, v41, v37, 0x7030602
	v_perm_b32 v94, v42, v38, 0x5010400
	v_perm_b32 v95, v42, v38, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v96, v47, v43, 0x5010400
	v_perm_b32 v47, v47, v43, 0x7030602
	v_perm_b32 v97, v48, v44, 0x5010400
	v_perm_b32 v48, v48, v44, 0x7030602
	v_perm_b32 v98, v49, v45, 0x5010400
	v_perm_b32 v99, v50, v46, 0x5010400
	v_perm_b32 v100, v50, v46, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.l, v26.l
	v_or_b16 v21.l, v21.l, v29.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v29.l, 8, v81.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v50, 8, v91
	v_or_b16 v0.h, v0.h, v26.h
	v_or_b16 v21.h, v21.h, v29.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v26.l, 8, v74.l
	v_lshlrev_b16 v29.h, 8, v82.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v74, 24, v91
	v_or_b16 v19.l, v19.l, v27.l
	v_or_b16 v22.l, v22.l, v30.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v26.h, 8, v75.l
	v_lshlrev_b16 v30.l, 8, v83.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v75, 8, v39
	v_or_b16 v19.h, v19.h, v27.h
	v_or_b16 v22.h, v22.h, v30.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v27.l, 8, v76.l
	v_lshlrev_b16 v30.h, 8, v84.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v76, 24, v39
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	v_or_b16 v23.l, v23.l, v31.l
	v_or_b16 v23.h, v23.h, v31.h
	v_or_b16 v24.l, v24.l, v32.l
	v_or_b16 v24.h, v24.h, v32.h
	v_or_b16 v25.l, v25.l, v33.l
	v_or_b16 v25.h, v25.h, v33.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v27.h, 8, v78.l
	v_lshlrev_b16 v28.l, 8, v79.l
	v_lshlrev_b16 v28.h, 8, v80.l
	v_lshlrev_b16 v31.l, 8, v85.l
	v_lshlrev_b16 v31.h, 8, v86.l
	v_lshlrev_b16 v32.l, 8, v87.l
	v_lshlrev_b16 v32.h, 8, v88.l
	v_lshlrev_b16 v33.l, 8, v89.l
	v_lshlrev_b16 v33.h, 8, v90.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v78, 8, v92
	v_lshrrev_b32_e32 v79, 24, v92
	v_lshrrev_b32_e32 v80, 8, v40
	v_lshrrev_b32_e32 v81, 24, v40
	v_lshrrev_b32_e32 v82, 8, v93
	v_lshrrev_b32_e32 v83, 24, v93
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v49, v49, v45, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v35.l, 0xff, v91.l
	v_and_b16 v35.h, 0xff, v91.h
	v_and_b16 v36.l, 0xff, v39.l
	v_and_b16 v36.h, 0xff, v39.h
	v_and_b16 v37.l, 0xff, v92.l
	v_and_b16 v37.h, 0xff, v92.h
	v_and_b16 v38.l, 0xff, v40.l
	v_and_b16 v38.h, 0xff, v40.h
	v_and_b16 v39.l, 0xff, v93.l
	v_and_b16 v39.h, 0xff, v93.h
	v_and_b16 v40.l, 0xff, v41.l
	v_lshrrev_b32_e32 v84, 8, v41
	v_lshrrev_b32_e32 v85, 24, v41
	v_and_b16 v40.h, 0xff, v41.h
	v_and_b16 v41.l, 0xff, v94.l
	v_lshrrev_b32_e32 v86, 8, v94
	v_lshrrev_b32_e32 v87, 24, v94
	v_and_b16 v41.h, 0xff, v94.h
	v_and_b16 v42.l, 0xff, v95.l
	v_lshrrev_b32_e32 v88, 8, v95
	v_lshrrev_b32_e32 v89, 24, v95
	v_and_b16 v42.h, 0xff, v95.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v43.l, 0xff, v96.l
	v_lshrrev_b32_e32 v90, 8, v96
	v_lshrrev_b32_e32 v91, 24, v96
	v_and_b16 v43.h, 0xff, v96.h
	v_lshrrev_b32_e32 v92, 8, v47
	v_lshrrev_b32_e32 v93, 24, v47
	v_and_b16 v45.l, 0xff, v97.l
	v_lshrrev_b32_e32 v94, 8, v97
	v_lshrrev_b32_e32 v95, 24, v97
	v_and_b16 v45.h, 0xff, v97.h
	v_lshrrev_b32_e32 v96, 8, v48
	v_lshrrev_b32_e32 v97, 24, v48
	v_lshrrev_b32_e32 v101, 8, v98
	v_lshrrev_b32_e32 v102, 24, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v67, v0
	ds_store_b16_d16_hi v67, v0 offset:64
	ds_store_b16 v68, v19
	ds_store_b16_d16_hi v68, v19 offset:64
	ds_store_b16 v69, v20
	ds_store_b16_d16_hi v69, v20 offset:64
	ds_store_b16 v70, v21
	ds_store_b16_d16_hi v70, v21 offset:64
	ds_store_b16 v71, v22
	ds_store_b16_d16_hi v71, v22 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v20.h, v61.l, v29.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v29.l, 8, v50.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v26.l, v34.l, v26.l
	v_or_b16 v21.l, v61.h, v29.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v29.h, 8, v74.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v21.h, v62.l, v30.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v30.l, 8, v75.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v22.l, v62.h, v30.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v30.h, 8, v76.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v0.l, v34.h, v26.h
	v_or_b16 v0.h, v59.l, v27.l
	v_or_b16 v19.l, v59.h, v27.h
	v_or_b16 v19.h, v60.l, v28.l
	v_or_b16 v20.l, v60.h, v28.h
	v_or_b16 v22.h, v63.l, v31.l
	v_or_b16 v26.h, v63.h, v31.h
	v_or_b16 v27.l, v64.l, v32.l
	v_or_b16 v27.h, v64.h, v32.h
	v_or_b16 v28.l, v65.l, v33.l
	v_or_b16 v28.h, v65.h, v33.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v31.l, 8, v78.l
	v_lshlrev_b16 v31.h, 8, v79.l
	v_lshlrev_b16 v32.l, 8, v80.l
	v_lshlrev_b16 v32.h, 8, v81.l
	v_lshlrev_b16 v33.l, 8, v82.l
	v_lshlrev_b16 v33.h, 8, v83.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v44.l, 0xff, v47.l
	v_and_b16 v44.h, 0xff, v47.h
	v_and_b16 v46.l, 0xff, v48.l
	v_and_b16 v46.h, 0xff, v48.h
	v_and_b16 v47.l, 0xff, v98.l
	v_and_b16 v47.h, 0xff, v98.h
	v_and_b16 v48.l, 0xff, v49.l
	v_lshrrev_b32_e32 v98, 8, v49
	v_lshrrev_b32_e32 v103, 24, v49
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v34.l, 8, v84.l
	v_lshlrev_b16 v34.h, 8, v85.l
	v_lshlrev_b16 v49.l, 8, v86.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v59.l, 8, v90.l
	v_lshlrev_b16 v59.h, 8, v91.l
	v_lshlrev_b16 v60.l, 8, v92.l
	v_lshlrev_b16 v60.h, 8, v93.l
	v_lshlrev_b16 v61.l, 8, v94.l
	v_lshlrev_b16 v61.h, 8, v95.l
	v_lshlrev_b16 v62.l, 8, v96.l
	v_lshlrev_b16 v62.h, 8, v97.l
	v_lshlrev_b16 v63.l, 8, v101.l
	v_lshlrev_b16 v63.h, 8, v102.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v66, v[51:54] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v67, v26 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v67, v23 offset:640
	ds_store_b16_d16_hi v67, v23 offset:704
	ds_store_b16 v72, v24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v67, v0 offset:16448
	ds_store_b16_d16_hi v68, v0 offset:16384
	ds_store_b16 v68, v19 offset:16448
	ds_store_b16_d16_hi v69, v19 offset:16384
	ds_store_b16 v69, v20 offset:16448
	ds_store_b16_d16_hi v70, v20 offset:16384
	ds_store_b16 v70, v21 offset:16448
	ds_store_b16_d16_hi v71, v21 offset:16384
	ds_store_b16 v71, v22 offset:16448
	ds_store_b16_d16_hi v67, v22 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v72, v24 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v67, v26 offset:17088
	ds_store_b16 v72, v27 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v73, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v72, v27 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v73, v25 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v73, v28 offset:16384
	ds_store_b16_d16_hi v73, v28 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v35.l, v29.l
	v_or_b16 v0.h, v35.h, v29.h
	v_or_b16 v19.l, v36.l, v30.l
	v_or_b16 v19.h, v36.h, v30.h
	v_or_b16 v20.l, v37.l, v31.l
	v_or_b16 v20.h, v37.h, v31.h
	v_or_b16 v21.l, v38.l, v32.l
	v_or_b16 v21.h, v38.h, v32.h
	v_or_b16 v22.l, v39.l, v33.l
	v_or_b16 v22.h, v39.h, v33.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v64.l, 8, v98.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v23.l, v40.l, v34.l
	v_or_b16 v23.h, v40.h, v34.h
	v_or_b16 v24.l, v41.l, v49.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v26.l, v43.l, v59.l
	v_or_b16 v26.h, v43.h, v59.h
	v_or_b16 v27.l, v44.l, v60.l
	v_or_b16 v27.h, v44.h, v60.h
	v_or_b16 v28.l, v45.l, v61.l
	v_or_b16 v28.h, v45.h, v61.h
	v_or_b16 v29.l, v46.l, v62.l
	v_or_b16 v29.h, v46.h, v62.h
	v_or_b16 v30.l, v47.l, v63.l
	v_or_b16 v30.h, v47.h, v63.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v67, v0 offset:8192
	ds_store_b16_d16_hi v67, v0 offset:8256
	ds_store_b16 v68, v19 offset:8192
	ds_store_b16_d16_hi v68, v19 offset:8256
	ds_store_b16 v69, v20 offset:8192
	ds_store_b16_d16_hi v69, v20 offset:8256
	ds_store_b16 v70, v21 offset:8192
	ds_store_b16_d16_hi v70, v21 offset:8256
	ds_store_b16 v71, v22 offset:8192
	ds_store_b16_d16_hi v71, v22 offset:8256
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v66, v[55:58] offset:36864
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v67, v26 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v67, v23 offset:8832
	ds_store_b16_d16_hi v67, v23 offset:8896
	ds_store_b16 v72, v24 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v67, v26 offset:24640
	ds_store_b16 v68, v27 offset:24576
	ds_store_b16_d16_hi v68, v27 offset:24640
	ds_store_b16 v69, v28 offset:24576
	ds_store_b16_d16_hi v69, v28 offset:24640
	ds_store_b16 v70, v29 offset:24576
	ds_store_b16_d16_hi v70, v29 offset:24640
	ds_store_b16 v71, v30 offset:24576
	ds_store_b16_d16_hi v71, v30 offset:24640
	v_lshrrev_b32_e32 v20, 8, v99
	v_lshrrev_b32_e32 v21, 24, v99
	v_lshrrev_b32_e32 v22, 8, v100
	v_and_b16 v48.h, 0xff, v49.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v49.h, 8, v87.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v64.h, 8, v103.l
	v_or_b16 v0.l, v48.l, v64.l
	v_and_b16 v19.l, 0xff, v99.l
	v_lshlrev_b16 v19.h, 8, v20.l
	v_lshrrev_b32_e32 v23, 24, v100
	v_lshlrev_b16 v20.l, 8, v21.l
	v_and_b16 v20.h, 0xff, v99.h
	v_and_b16 v21.l, 0xff, v100.l
	v_lshlrev_b16 v21.h, 8, v22.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v50.l, 8, v88.l
	v_or_b16 v24.h, v41.h, v49.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v0.h, v48.h, v64.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v50.h, 8, v89.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.l, 8, v23.l
	v_and_b16 v22.h, 0xff, v100.h
	ds_store_b16 v67, v0 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v72, v24 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v67, v0 offset:25280
	v_or_b16 v0.l, v19.l, v19.h
	v_or_b16 v0.h, v20.h, v20.l
	v_or_b16 v20.l, v21.l, v21.h
	v_lshlrev_b32_e32 v19, 3, v18
	v_lshlrev_b32_e32 v21, 5, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v25.l, v42.l, v50.l
	v_or_b16 v25.h, v42.h, v50.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v20.h, v22.h, v22.l
	ds_store_b16 v72, v0 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v73, v25 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v72, v0 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v73, v25 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v73, v20 offset:24576
	ds_store_b16_d16_hi v73, v20 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v18, 8, v104
	v_and_b32_e32 v20, 32, v104
	v_and_b32_e32 v190, 0x800, v21
	v_lshl_or_b32 v191, v1, 6, v19
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr190
                                        ; implicit-def: $vgpr191
.LBB0_3:                                ; %Flow579
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v0, s34, v126
	v_or_b32_e32 v22, s34, v105
	s_ashr_i32 s1, s6, 8
	v_or_b32_e32 v159, s33, v3
	v_or_b32_e32 v156, s33, v6
	v_mul_lo_u32 v161, v0, s1
	v_mul_lo_u32 v160, v22, s1
	v_or_b32_e32 v157, s33, v7
	v_or_b32_e32 v158, s33, v8
	v_or_b32_e32 v144, s33, v9
	v_or_b32_e32 v145, s33, v10
	v_or_b32_e32 v146, s33, v11
	v_or_b32_e32 v147, s33, v12
	v_or_b32_e32 v128, s33, v13
	v_or_b32_e32 v129, s33, v14
	v_or_b32_e32 v130, s33, v15
	v_or_b32_e32 v131, s33, v16
	v_or_b32_e32 v132, s33, v17
	v_or_b32_e32 v133, s33, v2
	v_or_b32_e32 v134, s33, v4
	v_or_b32_e32 v135, s33, v5
	v_add_nc_u32_e32 v155, s27, v3
	v_add_nc_u32_e32 v151, s27, v6
	v_add_nc_u32_e32 v152, s27, v7
	v_add_nc_u32_e32 v153, s27, v8
	v_add_nc_u32_e32 v148, s27, v9
	v_add_nc_u32_e32 v154, s27, v10
	v_add_nc_u32_e32 v149, s27, v11
	v_add_nc_u32_e32 v150, s27, v12
	v_add_nc_u32_e32 v136, s27, v13
	v_add_nc_u32_e32 v137, s27, v14
	v_add_nc_u32_e32 v138, s27, v15
	v_add_nc_u32_e32 v139, s27, v16
	v_add_nc_u32_e32 v140, s27, v17
	v_add_nc_u32_e32 v141, s27, v2
	v_add_nc_u32_e32 v142, s27, v4
	v_add_nc_u32_e32 v143, s27, v5
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v105, off offset:24
	scratch_store_b32 off, v104, off offset:16
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v104, 5, 1
	v_bfe_i32 v2, v104, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v0, 0x420, v0
	v_lshl_or_b32 v191, v1, 6, v19
	v_and_b32_e32 v190, 0x800, v21
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v194, s35, v181
	v_mov_b32_e32 v162, 0
	v_and_or_b32 v0, 0x210, v2, v0
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v2, s17
	v_mov_b32_e32 v173, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v191
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v119, 0
	v_or_b32_e32 v195, v0, v190
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v174, 0
	v_mov_b32_e32 v165, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v196, 16, v195
	v_xor_b32_e32 v197, 32, v195
	v_xor_b32_e32 v198, 48, v195
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v80, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s15, s5, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s0, s44, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x9000
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s48, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 6
	s_mov_b32 s18, s30
	s_mov_b32 s30, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s0, s19
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v125, s49, v126
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v0, s44, v179
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s44, s26, v[77:78]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v21, s16, v196
	s_mov_b32 s49, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[73:76], v0, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v0, v125 offset:832
	ds_load_u8 v9, v125 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:960
	ds_load_u8 v10, v125 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v125 offset:576
	ds_load_u8 v11, v125 offset:512
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v125 offset:320
	ds_load_u8 v9, v125 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v125 offset:704
	ds_load_u8 v12, v125 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v125 offset:448
	ds_load_u8 v10, v125 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v125 offset:64
	ds_load_u8 v9, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:192
	ds_load_u8 v10, v125 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v125 offset:1856
	ds_load_u8 v9, v125 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:1984
	ds_load_u8 v10, v125 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v125 offset:1600
	ds_load_u8 v11, v125 offset:1536
	v_lshl_or_b32 v48, v9, 16, v0
	ds_load_u8 v0, v125 offset:1344
	ds_load_u8 v9, v125 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v125 offset:1728
	ds_load_u8 v12, v125 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	ds_load_u8 v9, v125 offset:1472
	ds_load_u8 v10, v125 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v125 offset:1088
	ds_load_u8 v9, v125 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:1216
	ds_load_u8 v10, v125 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v125 offset:864
	ds_load_u8 v9, v125 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:992
	ds_load_u8 v10, v125 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v125 offset:608
	ds_load_u8 v11, v125 offset:544
	v_lshl_or_b32 v202, v9, 16, v0
	ds_load_u8 v0, v125 offset:352
	ds_load_u8 v9, v125 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v125 offset:736
	ds_load_u8 v12, v125 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v201, v11, 16, v10
	ds_load_u8 v9, v125 offset:480
	ds_load_u8 v10, v125 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v200, v9, 16, v0
	ds_load_u8 v0, v125 offset:96
	ds_load_u8 v9, v125 offset:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:224
	ds_load_u8 v10, v125 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v9, 16, v0
	ds_load_u8 v0, v125 offset:1888
	ds_load_u8 v9, v125 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:2016
	ds_load_u8 v10, v125 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v125 offset:1632
	ds_load_u8 v11, v125 offset:1568
	v_lshl_or_b32 v206, v9, 16, v0
	ds_load_u8 v0, v125 offset:1376
	ds_load_u8 v9, v125 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v125 offset:1760
	ds_load_u8 v12, v125 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v205, v11, 16, v10
	ds_load_u8 v9, v125 offset:1504
	ds_load_u8 v10, v125 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v204, v9, 16, v0
	ds_load_u8 v0, v125 offset:1120
	ds_load_u8 v9, v125 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v125 offset:1248
	ds_load_u8 v10, v125 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v203, v9, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s16, v195
	ds_load_b128 v[9:12], v0
	ds_load_b128 v[13:16], v21
	ds_load_b128 v[17:20], v0 offset:4096
	ds_load_b128 v[21:24], v21 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s14, v195
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[9:12], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[9:12], v[199:202], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[199:202], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[13:16], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[13:16], v[203:206], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[41:44], v[1:8] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v17, s14, v196
	ds_load_b128 v[207:210], v0
	ds_load_b128 v[211:214], v17
	ds_load_b128 v[215:218], v0 offset:4096
	ds_load_b128 v[219:222], v17 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v0, v125 offset:2880
	ds_load_u8 v127, v125 offset:2816
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[45:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[21:24], v[203:206], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[207:210], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[215:218], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[207:210], v[199:202], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[211:214], v[45:48], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[219:222], v[45:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[215:218], v[199:202], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:3008
	ds_load_u8 v199, v125 offset:2944
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[65:72], v[211:214], v[203:206], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[219:222], v[203:206], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v199, v127, 0xc0c0004
	ds_load_u8 v199, v125 offset:2624
	ds_load_u8 v200, v125 offset:2560
	v_lshl_or_b32 v202, v127, 16, v0
	ds_load_u8 v0, v125 offset:2368
	ds_load_u8 v127, v125 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	ds_load_u8 v200, v125 offset:2752
	ds_load_u8 v201, v125 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v201, v200, 16, v199
	ds_load_u8 v127, v125 offset:2496
	ds_load_u8 v199, v125 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v199, v127, 0xc0c0004
	v_lshl_or_b32 v200, v127, 16, v0
	ds_load_u8 v0, v125 offset:2112
	ds_load_u8 v127, v125 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:2240
	ds_load_u8 v199, v125 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v199, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v127, 16, v0
	ds_load_u8 v0, v125 offset:2912
	ds_load_u8 v127, v125 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:3040
	ds_load_u8 v203, v125 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v203, v127, 0xc0c0004
	ds_load_u8 v203, v125 offset:2656
	ds_load_u8 v204, v125 offset:2592
	v_lshl_or_b32 v206, v127, 16, v0
	ds_load_u8 v0, v125 offset:2400
	ds_load_u8 v127, v125 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v125 offset:2784
	ds_load_u8 v205, v125 offset:2720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v205, v204, 16, v203
	ds_load_u8 v127, v125 offset:2528
	ds_load_u8 v203, v125 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v203, v127, 0xc0c0004
	v_lshl_or_b32 v204, v127, 16, v0
	ds_load_u8 v0, v125 offset:2144
	ds_load_u8 v127, v125 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:2272
	ds_load_u8 v203, v125 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v203, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v203, v127, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s16, v197
	ds_load_b128 v[207:210], v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[207:210], v[199:202], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[207:210], v[203:206], v[57:64] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[207:210], v0 offset:4096
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s14, v197
	ds_load_b128 v[211:214], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[207:210], v[199:202], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[207:210], v[203:206], v[25:32] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[207:210], v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v0, v125 offset:3904
	ds_load_u8 v127, v125 offset:3840
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[211:214], v[199:202], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[211:214], v[203:206], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[207:210], v[199:202], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:4032
	ds_load_u8 v199, v125 offset:3968
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[65:72], v[207:210], v[203:206], v[65:72] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v199, v127, 0xc0c0004
	ds_load_u8 v199, v125 offset:3648
	ds_load_u8 v200, v125 offset:3584
	v_lshl_or_b32 v202, v127, 16, v0
	ds_load_u8 v0, v125 offset:3392
	ds_load_u8 v127, v125 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	ds_load_u8 v200, v125 offset:3776
	ds_load_u8 v201, v125 offset:3712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v201, v200, 16, v199
	ds_load_u8 v127, v125 offset:3520
	ds_load_u8 v199, v125 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v199, v127, 0xc0c0004
	v_lshl_or_b32 v200, v127, 16, v0
	ds_load_u8 v0, v125 offset:3136
	ds_load_u8 v127, v125 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:3264
	ds_load_u8 v199, v125 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v199, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v127, 16, v0
	ds_load_u8 v0, v125 offset:3936
	ds_load_u8 v127, v125 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:4064
	ds_load_u8 v203, v125 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v203, v127, 0xc0c0004
	ds_load_u8 v203, v125 offset:3680
	ds_load_u8 v204, v125 offset:3616
	v_lshl_or_b32 v206, v127, 16, v0
	ds_load_u8 v0, v125 offset:3424
	ds_load_u8 v127, v125 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v125 offset:3808
	ds_load_u8 v205, v125 offset:3744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v205, v204, 16, v203
	ds_load_u8 v127, v125 offset:3552
	ds_load_u8 v203, v125 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v203, v127, 0xc0c0004
	v_lshl_or_b32 v204, v127, 16, v0
	ds_load_u8 v0, v125 offset:3168
	ds_load_u8 v127, v125 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v127, v0, 0xc0c0004
	ds_load_u8 v127, v125 offset:3296
	ds_load_u8 v125, v125 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v203, v125, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s16, v198
	ds_load_b128 v[207:210], v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[207:210], v[199:202], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[207:210], v[203:206], v[57:64] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[207:210], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s14, v198
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s44, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v127, v60
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s14, s14, s33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[211:214], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v57
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v38, v38
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[207:210], v[199:202], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[207:210], v[203:206], v[25:32] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[207:210], v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v58
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[211:214], v[199:202], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[211:214], v[203:206], v[41:48] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v211, v22
	v_cvt_f32_i32_e32 v212, v21
	v_cvt_f32_i32_e32 v213, v24
	v_cvt_f32_i32_e32 v214, v23
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[207:210], v[203:206], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[207:210], v[199:202], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v201, v61
	v_cvt_f32_i32_e32 v204, v13
	v_cvt_f32_i32_e32 v199, v59
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v61, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v69, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s44, v180
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v60, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v68, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s14, v194
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v58, v70
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s14, v181
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v59, v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v70, v12
	v_cvt_f32_i32_e32 v71, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v209, v20
	v_cvt_f32_i32_e32 v210, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[19:22], v13, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s14, s14, s27
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v208, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v206, v15
	v_cvt_f32_i32_e32 v200, v62
	v_cvt_f32_i32_e32 v202, v64
	v_cvt_f32_i32_e32 v203, v63
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v62, v66
	v_cvt_f32_i32_e32 v64, v65
	v_cvt_f32_i32_e32 v63, v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v26
	v_cvt_f32_i32_e32 v66, v25
	v_cvt_f32_i32_e32 v67, v27
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v207, v18
	v_cvt_f32_i32_e32 v57, v72
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v72, v14
	v_cvt_f32_i32_e32 v205, v16
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v215, v19, v9, 0x5010400
	v_perm_b32 v216, v19, v9, 0x7030602
	v_perm_b32 v19, v20, v10, 0x5010400
	v_perm_b32 v17, v20, v10, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s14, v181
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v15, v21, v11, 0x5010400
	v_perm_b32 v13, v21, v11, 0x7030602
	v_perm_b32 v11, v22, v12, 0x5010400
	v_perm_b32 v9, v22, v12, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s14, v194
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_lshr_b32 s14, s14, 24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[20:23], v10, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v12, s[36:39], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s18, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s18, 8
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s16, s14, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s19, s16, s33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v218, v144, s16, 1
	v_add_lshl_u32 v219, v145, s16, 1
	v_add_lshl_u32 v220, v146, s16, 1
	v_add_lshl_u32 v221, v147, s16, 1
	v_add_lshl_u32 v222, v128, s16, 1
	v_add_lshl_u32 v223, v129, s16, 1
	v_add_lshl_u32 v224, v130, s16, 1
	v_add_lshl_u32 v225, v131, s16, 1
	v_add_lshl_u32 v226, v132, s16, 1
	v_add_lshl_u32 v227, v133, s16, 1
	v_add_lshl_u32 v228, v134, s16, 1
	v_add_lshl_u32 v229, v135, s16, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v230, v155, s19, 1
	v_add_lshl_u32 v231, v151, s19, 1
	v_add_lshl_u32 v232, v152, s19, 1
	v_add_lshl_u32 v233, v153, s19, 1
	v_add_lshl_u32 v234, v148, s19, 1
	v_add_lshl_u32 v235, v154, s19, 1
	v_add_lshl_u32 v236, v149, s19, 1
	v_add_lshl_u32 v237, v150, s19, 1
	v_add_lshl_u32 v238, v136, s19, 1
	v_add_lshl_u32 v239, v137, s19, 1
	v_add_lshl_u32 v240, v138, s19, 1
	v_add_lshl_u32 v241, v139, s19, 1
	v_add_lshl_u32 v242, v140, s19, 1
	v_add_lshl_u32 v243, v141, s19, 1
	v_add_lshl_u32 v244, v142, s19, 1
	v_add_lshl_u32 v245, v143, s19, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v219, 0x80000000, v219 :: v_dual_cndmask_b32 v220, 0x80000000, v220
	v_dual_cndmask_b32 v221, 0x80000000, v221 :: v_dual_cndmask_b32 v222, 0x80000000, v222
	v_dual_cndmask_b32 v223, 0x80000000, v223 :: v_dual_cndmask_b32 v224, 0x80000000, v224
	v_dual_cndmask_b32 v225, 0x80000000, v225 :: v_dual_cndmask_b32 v226, 0x80000000, v226
	v_dual_cndmask_b32 v227, 0x80000000, v227 :: v_dual_cndmask_b32 v228, 0x80000000, v228
	v_dual_cndmask_b32 v229, 0x80000000, v229 :: v_dual_cndmask_b32 v230, 0x80000000, v230
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v231, 0x80000000, v231 :: v_dual_cndmask_b32 v232, 0x80000000, v232
	v_dual_cndmask_b32 v233, 0x80000000, v233 :: v_dual_cndmask_b32 v234, 0x80000000, v234
	v_dual_cndmask_b32 v235, 0x80000000, v235 :: v_dual_cndmask_b32 v236, 0x80000000, v236
	v_dual_cndmask_b32 v237, 0x80000000, v237 :: v_dual_cndmask_b32 v238, 0x80000000, v238
	v_dual_cndmask_b32 v239, 0x80000000, v239 :: v_dual_cndmask_b32 v240, 0x80000000, v240
	v_dual_cndmask_b32 v241, 0x80000000, v241 :: v_dual_cndmask_b32 v242, 0x80000000, v242
	v_dual_cndmask_b32 v243, 0x80000000, v243 :: v_dual_cndmask_b32 v244, 0x80000000, v244
	v_cndmask_b32_e32 v245, 0x80000000, v245, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s48, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v218, 0x80000000, v218, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s18, 2
	s_cselect_b32 s48, s18, 0
	s_add_i32 s19, s17, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v217, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v20, v25, v21, 0x5010400
	v_perm_b32 v18, v25, v21, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v21, v161, s14, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v16, v26, v22, 0x5010400
	v_perm_b32 v14, v26, v22, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v22, v160, s14, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v12, v27, v23, 0x5010400
	v_perm_b32 v10, v27, v23, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v23, v159, s16, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v25, v156, s16, 1
	v_add_lshl_u32 v26, v157, s16, 1
	v_add_lshl_u32 v27, v158, s16, 1
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v25, v25, s[40:43], 0 offen
	buffer_load_u16 v26, v26, s[40:43], 0 offen
	buffer_load_u16 v27, v27, s[40:43], 0 offen
	buffer_load_u16 v218, v218, s[40:43], 0 offen
	buffer_load_u16 v219, v219, s[40:43], 0 offen
	buffer_load_u16 v220, v220, s[40:43], 0 offen
	buffer_load_u16 v221, v221, s[40:43], 0 offen
	buffer_load_u16 v222, v222, s[40:43], 0 offen
	buffer_load_u16 v223, v223, s[40:43], 0 offen
	buffer_load_u16 v224, v224, s[40:43], 0 offen
	buffer_load_u16 v225, v225, s[40:43], 0 offen
	buffer_load_u16 v226, v226, s[40:43], 0 offen
	buffer_load_u16 v227, v227, s[40:43], 0 offen
	buffer_load_u16 v228, v228, s[40:43], 0 offen
	buffer_load_u16 v229, v229, s[40:43], 0 offen
	buffer_load_u16 v230, v230, s[40:43], 0 offen
	buffer_load_u16 v231, v231, s[40:43], 0 offen
	buffer_load_u16 v232, v232, s[40:43], 0 offen
	buffer_load_u16 v233, v233, s[40:43], 0 offen
	buffer_load_u16 v234, v234, s[40:43], 0 offen
	buffer_load_u16 v235, v235, s[40:43], 0 offen
	buffer_load_u16 v236, v236, s[40:43], 0 offen
	buffer_load_u16 v237, v237, s[40:43], 0 offen
	buffer_load_u16 v238, v238, s[40:43], 0 offen
	buffer_load_u16 v239, v239, s[40:43], 0 offen
	buffer_load_u16 v240, v240, s[40:43], 0 offen
	buffer_load_u16 v241, v241, s[40:43], 0 offen
	buffer_load_u16 v242, v242, s[40:43], 0 offen
	buffer_load_u16 v243, v243, s[40:43], 0 offen
	buffer_load_u16 v244, v244, s[40:43], 0 offen
	buffer_load_u16 v245, v245, s[40:43], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s14, s48, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s14, 0
	s_barrier
	v_add_nc_u32_e32 v246, s18, v182
	s_mov_b32 s16, s46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s18, s14
	s_mov_b32 s14, s45
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s47, s18, 0x8000
	ds_store_b128 v246, v[73:76] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v73, v21, v23 :: v_dual_lshlrev_b32 v22, 16, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v172, v73, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v33, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v173, v33, v34
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v33, v21, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v164, v33, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v33, v21, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v165, v33, v36
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v33, 16, v218
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v21, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v118, v34, v37
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v34, 16, v219
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v22, v23
	v_mul_f32_e32 v35, v21, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v175, v23, v125
	v_fmac_f32_e32 v119, v35, v38
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v35, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v21, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v110, v36, v39
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v36, 16, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v21, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v111, v37, v40
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v37, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v21, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v102, v38, v69
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v38, 16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v21, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v103, v39, v68
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v39, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v40, v21, v39 :: v_dual_mul_f32 v23, v22, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v94, v40, v71
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v40, 16, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v176, v23, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v26
	v_mul_f32_e32 v68, v21, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v168, v0, v199
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v0, v22, v27 :: v_dual_fmac_f32 v95, v68, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(19)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v169, v0, v127 :: v_dual_lshlrev_b32 v68, 16, v226
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v0, v22, v33 :: v_dual_mul_f32 v69, v21, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v120, v0, v201
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(18)
	v_dual_fmac_f32 v86, v69, v204 :: v_dual_lshlrev_b32 v69, 16, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v121, v0, v200 :: v_dual_mul_f32 v0, v22, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v21, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v112, v0, v203 :: v_dual_fmac_f32 v87, v70, v72
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v70, 16, v228
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v0, v22, v36 :: v_dual_mul_f32 v71, v21, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v113, v0, v202 :: v_dual_mul_f32 v0, v22, v37
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v78, v71, v206 :: v_dual_lshlrev_b32 v71, 16, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v0, v66
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v38
	v_dual_mul_f32 v72, v21, v71 :: v_dual_fmac_f32 v105, v0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v0, v22, v39 :: v_dual_fmac_f32 v79, v72, v205
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v96, v0, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v97, v0, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v88, v0, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v89, v0, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v80, v0, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v22, v71
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v81, v0, v32 :: v_dual_lshlrev_b32 v0, 16, v230
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v21, v0
	v_mul_f32_e32 v0, v22, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(14)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v162, v23, v49 :: v_dual_lshlrev_b32 v23, 16, v231
	v_fmac_f32_e32 v177, v0, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v21, v23
	v_mul_f32_e32 v0, v22, v23
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v23, 24, v217
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v174, v25, v50 :: v_dual_lshlrev_b32 v25, 16, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v178, v0, v62
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v23.l, 8, v23.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v21, v25
	v_mul_f32_e32 v0, v22, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v25, 24, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v166, v26, v51
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v26, 16, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v170, v0, v63 :: v_dual_mul_f32 v27, v21, v26
	v_fmac_f32_e32 v167, v27, v52
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v27, 16, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v28, v21, v27
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v122, v28, v53
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v28, 16, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v29, v21, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v123, v29, v54
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v29, 16, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v21, v29
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v114, v30, v55
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v30, 16, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v31, v21, v30
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v115, v31, v56
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v31, 16, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v21, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v106, v32, v208
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v32, 16, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v21, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v107, v33, v207
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v33, 16, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v21, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v98, v34, v210
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v34, 16, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v21, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v99, v35, v209
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v35, 16, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v36, v21, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v90, v36, v212
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v36, 16, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v37, v21, v36 :: v_dual_mul_f32 v0, v22, v26
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v91, v37, v211
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v171, v0, v60 :: v_dual_mul_f32 v0, v22, v27
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v38, v21, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v124, v0, v61
	v_fmac_f32_e32 v82, v38, v214
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v21, v21, v38 :: v_dual_mul_f32 v0, v22, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v83, v21, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v163, v0, v58 :: v_dual_mul_f32 v0, v22, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v21, 24, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v116, v0, v59
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v22, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v21.l, 8, v21.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v117, v0, v57 :: v_dual_mul_f32 v0, v22, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v0, v41
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v22, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v109, v0, v42 :: v_dual_mul_f32 v0, v22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v0, v43
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v22, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v101, v0, v44 :: v_dual_mul_f32 v0, v22, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v0, v45
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v22, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v93, v0, v46 :: v_dual_mul_f32 v0, v22, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v0, v47
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v22, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v22, 24, v216
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v85, v0, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v215
	v_and_b16 v0.h, 0xff, v215.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v22.l, 8, v22.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v215.h
	v_or_b16 v0.h, v0.h, v21.l
	v_lshrrev_b32_e32 v21, 8, v216
	v_and_b16 v21.h, 0xff, v216.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v21.l, 8, v21.l
	v_or_b16 v21.l, v21.h, v21.l
	v_and_b16 v21.h, 0xff, v216.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v21.h, v21.h, v22.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v22, 8, v217
	v_and_b16 v22.h, 0xff, v217.l
	v_lshlrev_b16 v22.l, 8, v22.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v22.l, v22.h, v22.l
	v_and_b16 v22.h, 0xff, v217.h
	v_or_b16 v22.h, v22.h, v23.l
	v_lshrrev_b32_e32 v23, 8, v24
	v_and_b16 v23.h, 0xff, v24.l
	v_lshlrev_b16 v24.l, 8, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v23.l, 8, v23.l
	v_or_b16 v23.l, v23.h, v23.l
	v_and_b16 v23.h, 0xff, v24.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v23.h, v23.h, v24.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v24, s46, v183
	ds_store_b16 v24, v0
	ds_store_b16_d16_hi v24, v0 offset:64
	v_add_nc_u32_e32 v0, s46, v184
	ds_store_b16 v0, v21
	ds_store_b16_d16_hi v0, v21 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v24, v22 offset:16384
	ds_store_b16_d16_hi v24, v22 offset:16448
	ds_store_b16 v0, v23 offset:16384
	ds_store_b16_d16_hi v0, v23 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v19
	v_and_b16 v0.h, 0xff, v19.l
	v_lshrrev_b32_e32 v21, 24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v19.l, 8, v21.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v21, 24, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v19.h
	v_or_b16 v0.h, v0.h, v19.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v19, 8, v20
	v_and_b16 v19.h, 0xff, v20.l
	v_lshlrev_b16 v20.l, 8, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v19.l, 8, v19.l
	v_or_b16 v19.l, v19.h, v19.l
	v_and_b16 v19.h, 0xff, v20.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v19.h, v19.h, v20.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v20, s46, v185
	ds_store_b16 v20, v0
	ds_store_b16_d16_hi v20, v0 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v20, v19 offset:16384
	ds_store_b16_d16_hi v20, v19 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v17
	v_and_b16 v0.h, 0xff, v17.l
	v_lshrrev_b32_e32 v19, 24, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v17.l, 8, v19.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v19, 24, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v17.h
	v_or_b16 v0.h, v0.h, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v17, 8, v18
	v_and_b16 v17.h, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v19.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v17.l, 8, v17.l
	v_or_b16 v17.l, v17.h, v17.l
	v_and_b16 v17.h, 0xff, v18.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v17.h, v17.h, v18.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v18, s46, v186
	ds_store_b16 v18, v0
	ds_store_b16_d16_hi v18, v0 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v18, v17 offset:16384
	ds_store_b16_d16_hi v18, v17 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v15
	v_and_b16 v0.h, 0xff, v15.l
	v_lshrrev_b32_e32 v17, 24, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v15.l, 8, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v17, 24, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v15.h
	v_or_b16 v0.h, v0.h, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v15, 8, v16
	v_and_b16 v15.h, 0xff, v16.l
	v_lshlrev_b16 v16.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v15.l, 8, v15.l
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v16.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v15.h, v15.h, v16.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v16, s46, v187
	ds_store_b16 v16, v0
	ds_store_b16_d16_hi v16, v0 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v16, v15 offset:16384
	ds_store_b16_d16_hi v16, v15 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v13
	v_and_b16 v0.h, 0xff, v13.l
	v_lshrrev_b32_e32 v15, 24, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v13.l, 8, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v15, 24, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v13.h
	v_or_b16 v0.h, v0.h, v13.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v13, 8, v14
	v_and_b16 v13.h, 0xff, v14.l
	v_lshlrev_b16 v14.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v13.l, 8, v13.l
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v14.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v13.h, v13.h, v14.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v24, v0 offset:640
	ds_store_b16_d16_hi v24, v0 offset:704
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v24, v13 offset:17024
	ds_store_b16_d16_hi v24, v13 offset:17088
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v11
	v_and_b16 v0.h, 0xff, v11.l
	v_lshrrev_b32_e32 v13, 24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v11.l, 8, v13.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v13, 24, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v11.h
	v_or_b16 v0.h, v0.h, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 8, v12
	v_and_b16 v11.h, 0xff, v12.l
	v_lshlrev_b16 v12.l, 8, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v11.h, v11.h, v12.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v12, s46, v188
	ds_store_b16 v12, v0
	ds_store_b16_d16_hi v12, v0 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v12, v11 offset:16384
	ds_store_b16_d16_hi v12, v11 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v9
	v_and_b16 v0.h, 0xff, v9.l
	v_lshrrev_b32_e32 v11, 24, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v9.l, 8, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v11, 24, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v9.h
	v_or_b16 v0.h, v0.h, v9.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v9, 8, v10
	v_and_b16 v9.h, 0xff, v10.l
	v_lshlrev_b16 v10.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v10.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v10, s46, v189
	ds_store_b16 v10, v0
	ds_store_b16_d16_hi v10, v0 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v10, v9 offset:16384
	ds_store_b16_d16_hi v10, v9 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v18, v192
	v_mov_b32_e32 v20, v193
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x9000
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v162, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s49, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v18
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v226, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v192, v1
	ds_load_u8_d16 v254, v1 offset:32
	ds_load_u8_d16 v193, v1 offset:64
	ds_load_u8_d16 v188, v1 offset:128
	ds_load_u8_d16 v189, v1 offset:192
	ds_load_u8_d16 v21, v1 offset:224
	ds_load_u8_d16 v22, v1 offset:160
	ds_load_u8_d16 v23, v1 offset:96
	ds_load_u8_d16 v208, v1 offset:256
	ds_load_u8_d16 v209, v1 offset:320
	ds_load_u8_d16 v210, v1 offset:384
	ds_load_u8_d16 v212, v1 offset:448
	ds_load_u8_d16 v27, v1 offset:480
	ds_load_u8_d16 v28, v1 offset:416
	ds_load_u8_d16 v29, v1 offset:352
	ds_load_u8_d16 v30, v1 offset:288
	ds_load_u8_d16 v218, v1 offset:512
	ds_load_u8_d16 v220, v1 offset:576
	ds_load_u8_d16 v217, v1 offset:640
	ds_load_u8_d16 v219, v1 offset:704
	ds_load_u8_d16 v31, v1 offset:736
	ds_load_u8_d16 v33, v1 offset:672
	ds_load_u8_d16 v36, v1 offset:608
	ds_load_u8_d16 v38, v1 offset:544
	ds_load_u8_d16 v235, v1 offset:768
	ds_load_u8_d16 v237, v1 offset:832
	ds_load_u8_d16 v233, v1 offset:896
	ds_load_u8_d16 v236, v1 offset:960
	ds_load_u8_d16 v43, v1 offset:992
	ds_load_u8_d16 v44, v1 offset:928
	ds_load_u8_d16 v47, v1 offset:864
	ds_load_u8_d16 v48, v1 offset:800
	ds_load_u8_d16 v194, v1 offset:1024
	ds_load_u8_d16 v197, v1 offset:1088
	ds_load_u8_d16 v198, v1 offset:1152
	ds_load_u8_d16 v200, v1 offset:1216
	ds_load_u8_d16 v24, v1 offset:1248
	ds_load_u8_d16 v25, v1 offset:1184
	ds_load_u8_d16 v26, v1 offset:1120
	ds_load_u8_d16 v0, v1 offset:1056
	ds_load_u8_d16 v75, v1 offset:3072
	ds_load_u8_d16 v76, v1 offset:3136
	ds_load_u8_d16 v55, v1 offset:3200
	ds_load_u8_d16 v57, v1 offset:3264
	ds_load_u8_d16 v4, v1 offset:3296
	v_mov_b32_e32 v19, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:76 ; 4-byte Folded Spill
	ds_load_u8_d16 v204, v1 offset:1280
	ds_load_u8_d16 v205, v1 offset:1344
	ds_load_u8_d16 v206, v1 offset:1408
	ds_load_u8_d16 v207, v1 offset:1472
	ds_load_u8_d16 v0, v1 offset:1504
	ds_load_u8_d16 v4, v1 offset:3232
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v250, 0
	v_mov_b32_e32 v234, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:1440
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:80 ; 4-byte Folded Spill
	ds_load_u8_d16 v4, v1 offset:3168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:92 ; 4-byte Folded Spill
	ds_load_u8_d16 v4, v1 offset:3104
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	ds_load_u8_d16 v32, v1 offset:1376
	ds_load_u8_d16 v34, v1 offset:1312
	ds_load_u8_d16 v214, v1 offset:1536
	ds_load_u8_d16 v216, v1 offset:1600
	ds_load_u8_d16 v213, v1 offset:1664
	ds_load_u8_d16 v215, v1 offset:1728
	ds_load_u8_d16 v45, v1 offset:1760
	ds_load_u8_d16 v46, v1 offset:1696
	ds_load_u8_d16 v49, v1 offset:1632
	ds_load_u8_d16 v50, v1 offset:1568
	ds_load_u8_d16 v222, v1 offset:1792
	ds_load_u8_d16 v232, v1 offset:1856
	ds_load_u8_d16 v221, v1 offset:1920
	ds_load_u8_d16 v231, v1 offset:1984
	ds_load_u8_d16 v51, v1 offset:2016
	ds_load_u8_d16 v52, v1 offset:1952
	ds_load_u8_d16 v56, v1 offset:1888
	ds_load_u8_d16 v58, v1 offset:1824
	ds_load_u8_d16 v63, v1 offset:2048
	ds_load_u8_d16 v65, v1 offset:2112
	ds_load_u8_d16 v66, v1 offset:2176
	ds_load_u8_d16 v68, v1 offset:2240
	ds_load_u8_d16 v0, v1 offset:2272
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:2208
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:2144
	ds_load_u8_d16 v255, v1 offset:2080
	ds_load_u8_d16 v71, v1 offset:2304
	ds_load_u8_d16 v72, v1 offset:2368
	ds_load_u8_d16 v73, v1 offset:2432
	ds_load_u8_d16 v74, v1 offset:2496
	ds_load_u8_d16 v2, v1 offset:2528
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:56 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:2464
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:2400
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:64 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:2336
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:68 ; 4-byte Folded Spill
	ds_load_u8_d16 v77, v1 offset:2560
	ds_load_u8_d16 v125, v1 offset:2624
	ds_load_u8_d16 v127, v1 offset:2688
	ds_load_u8_d16 v179, v1 offset:2752
	ds_load_u8_d16 v2, v1 offset:2784
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:100 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:2720
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:112 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:2656
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:132 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:2592
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:136 ; 4-byte Folded Spill
	ds_load_u8_d16 v184, v1 offset:2816
	ds_load_u8_d16 v185, v1 offset:2880
	ds_load_u8_d16 v186, v1 offset:2944
	ds_load_u8_d16 v187, v1 offset:3008
	ds_load_u8_d16 v2, v1 offset:3040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:148 ; 4-byte Folded Spill
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v20
	v_mov_b32_e32 v20, 0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v2, v3
	v_mov_b32_e32 v3, 0
	v_xor_b32_e32 v2, v2, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v211, v2, v190
	v_xor_b32_e32 v2, 32, v211
	scratch_store_b32 off, v2, off offset:572 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 48, v211
	scratch_store_b32 off, v2, off offset:568 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v182, v1 offset:3328
	ds_load_u8_d16 v183, v1 offset:3392
	ds_load_u8_d16 v180, v1 offset:3456
	ds_load_u8_d16 v181, v1 offset:3520
	ds_load_u8_d16 v37, v1 offset:3552
	ds_load_u8_d16 v40, v1 offset:3488
	ds_load_u8_d16 v41, v1 offset:3424
	ds_load_u8_d16 v42, v1 offset:3360
	ds_load_u8_d16 v191, v1 offset:3584
	ds_load_u8_d16 v195, v1 offset:3648
	ds_load_u8_d16 v196, v1 offset:3712
	ds_load_u8_d16 v199, v1 offset:3776
	ds_load_u8_d16 v59, v1 offset:3808
	ds_load_u8_d16 v60, v1 offset:3744
	ds_load_u8_d16 v61, v1 offset:3680
	ds_load_u8_d16 v62, v1 offset:3616
	ds_load_u8_d16 v190, v1 offset:3840
	ds_load_u8_d16 v201, v1 offset:3904
	ds_load_u8_d16 v202, v1 offset:3968
	ds_load_u8_d16 v203, v1 offset:4032
	ds_load_u8_d16 v64, v1 offset:4064
	ds_load_u8_d16 v67, v1 offset:4000
	ds_load_u8_d16 v69, v1 offset:3936
	ds_load_u8_d16 v70, v1 offset:3872
	ds_load_u8_d16 v39, v1 offset:2976
	ds_load_u8_d16 v53, v1 offset:2912
	ds_load_u8_d16 v54, v1 offset:2848
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v1, 0, 1, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v2, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
	v_mov_b32_e32 v4, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_perm_b32 v1, v235, v237, 0xc0c0004
	v_perm_b32 v2, v233, v236, 0xc0c0004
	v_perm_b32 v3, v218, v220, 0xc0c0004
	v_perm_b32 v5, v217, v219, 0xc0c0004
	v_perm_b32 v6, v44, v43, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v208, v209, 0xc0c0004
	v_perm_b32 v2, v210, v212, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v188, v189, 0xc0c0004
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v192, v193, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v1, v5, 16, v1
	v_perm_b32 v5, v48, v47, 0xc0c0004
	v_perm_b32 v7, v38, v36, 0xc0c0004
	v_perm_b32 v8, v33, v31, 0xc0c0004
	v_mov_b16_e32 v35.l, v34.l
	v_perm_b32 v234, v46, v45, 0xc0c0004
	v_lshl_or_b32 v12, v6, 16, v5
	v_perm_b32 v5, v30, v29, 0xc0c0004
	v_perm_b32 v6, v28, v27, 0xc0c0004
	v_lshl_or_b32 v11, v8, 16, v7
	v_dual_mov_b32 v230, s11 :: v_dual_mov_b32 v229, s10
	v_mov_b32_e32 v228, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v6, 16, v5
	v_perm_b32 v5, v254, v23, 0xc0c0004
	v_perm_b32 v6, v22, v21, 0xc0c0004
	v_dual_mov_b32 v227, s8 :: v_dual_mov_b32 v226, s7
	v_dual_mov_b32 v225, s6 :: v_dual_mov_b32 v224, s5
	v_lshl_or_b32 v9, v6, 16, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v5, s16, v211
	ds_load_b128 v[13:16], v5
	ds_load_b128 v[17:20], v5 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v223, s4
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[13:16], v[1:4], v[223:230] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[17:20], v[1:4], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[9:12], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[17:20], v[9:12], v[223:230] neg_lo:[1,1,0]
	v_perm_b32 v9, v222, v232, 0xc0c0004
	v_perm_b32 v10, v221, v231, 0xc0c0004
	v_perm_b32 v11, v214, v216, 0xc0c0004
	v_perm_b32 v13, v213, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v204, v205, 0xc0c0004
	v_perm_b32 v10, v206, v207, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	v_perm_b32 v13, v198, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v194, v197, 0xc0c0004
	v_lshl_or_b32 v9, v13, 16, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v13, 16, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v17, s16, v13
	ds_load_b128 v[13:16], v17
	ds_load_b128 v[17:20], v17 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[13:16], v[9:12], v[238:245] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[17:20], v[9:12], v[246:253] neg_lo:[1,1,0]
	v_perm_b32 v9, v58, v56, 0xc0c0004
	v_perm_b32 v10, v52, v51, 0xc0c0004
	v_perm_b32 v11, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v34, v32, 0xc0c0004
	scratch_load_b32 v10, off, off offset:116 ; 4-byte Folded Reload
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v33.l, v32.l
	v_mov_b16_e32 v32.l, v31.l
	scratch_load_b32 v31, off, off offset:120 ; 4-byte Folded Reload
	v_lshl_or_b32 v11, v234, 16, v11
	v_perm_b32 v234, v25, v24, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v31, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	scratch_load_b32 v9, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v26, 0xc0c0004
	v_lshl_or_b32 v9, v234, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[17:20], v[9:12], v[223:230] neg_lo:[1,1,0]
	v_perm_b32 v9, v184, v185, 0xc0c0004
	v_perm_b32 v10, v186, v187, 0xc0c0004
	v_perm_b32 v11, v77, v125, 0xc0c0004
	v_perm_b32 v13, v127, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v71, v72, 0xc0c0004
	v_perm_b32 v10, v73, v74, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	v_perm_b32 v13, v66, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v63, v65, 0xc0c0004
	v_lshl_or_b32 v9, v13, 16, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v13, 32, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v17, s16, v13
	ds_load_b128 v[13:16], v17
	ds_load_b128 v[17:20], v17 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[13:16], v[9:12], v[238:245] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[17:20], v[9:12], v[246:253] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v11, off, off offset:132
	scratch_load_b32 v12, off, off offset:136
	scratch_load_b32 v10, off, off offset:148
	v_perm_b32 v9, v54, v53, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:100
	scratch_load_b32 v31, off, off offset:112
	s_waitcnt vmcnt(2)
	v_perm_b32 v10, v39, v10, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v234, v31, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v12, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:64
	scratch_load_b32 v10, off, off offset:68
	v_mov_b16_e32 v31.l, v30.l
	v_mov_b16_e32 v30.l, v29.l
	v_mov_b16_e32 v29.l, v28.l
	v_mov_b16_e32 v28.l, v27.l
	v_mov_b16_e32 v27.l, v26.l
	v_lshl_or_b32 v11, v234, 16, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v234, off, off offset:12
	scratch_load_b32 v26, off, off offset:60
	s_waitcnt vmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	scratch_load_b32 v10, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v26, v10, 0xc0c0004
	v_mov_b16_e32 v26.l, v25.l
	v_mov_b16_e32 v25.l, v24.l
	v_mov_b16_e32 v24.l, v23.l
	v_mov_b16_e32 v23.l, v22.l
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v255, v0, 0xc0c0004
	v_mov_b16_e32 v22.l, v21.l
	v_mov_b16_e64 v21.l, v255.l
	v_mov_b16_e64 v255.l, v0.l
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v234, v0, v234, 0xc0c0004
	v_mov_b16_e64 v0.l, v255.l
	v_mov_b16_e64 v255.l, v21.l
	v_mov_b16_e32 v21.l, v22.l
	v_mov_b16_e32 v22.l, v23.l
	v_lshl_or_b32 v9, v234, 16, v9
	v_mov_b16_e32 v23.l, v24.l
	v_mov_b16_e32 v24.l, v25.l
	v_mov_b16_e32 v25.l, v26.l
	v_mov_b16_e32 v26.l, v27.l
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[17:20], v[9:12], v[223:230] neg_lo:[1,1,0]
	v_perm_b32 v9, v190, v201, 0xc0c0004
	v_perm_b32 v10, v202, v203, 0xc0c0004
	v_perm_b32 v11, v191, v195, 0xc0c0004
	v_perm_b32 v13, v196, v199, 0xc0c0004
	v_mov_b16_e32 v27.l, v28.l
	v_perm_b32 v234, v60, v59, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v182, v183, 0xc0c0004
	v_perm_b32 v10, v180, v181, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	v_perm_b32 v13, v55, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v75, v76, 0xc0c0004
	v_lshl_or_b32 v9, v13, 16, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v13, 48, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v17, s16, v13
	ds_load_b128 v[13:16], v17
	ds_load_b128 v[17:20], v17 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[13:16], v[9:12], v[238:245] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[17:20], v[9:12], v[246:253] neg_lo:[1,1,0]
	v_perm_b32 v9, v70, v69, 0xc0c0004
	v_perm_b32 v10, v67, v64, 0xc0c0004
	v_perm_b32 v11, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v42, v41, 0xc0c0004
	v_perm_b32 v10, v40, v37, 0xc0c0004
	v_lshl_or_b32 v11, v234, 16, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v10, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:92
	scratch_load_b32 v28, off, off offset:96
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v28, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:76
	scratch_load_b32 v234, off, off offset:80
	s_waitcnt vmcnt(0)
	v_perm_b32 v234, v234, v28, 0xc0c0004
	v_mov_b16_e32 v28.l, v29.l
	v_mov_b16_e32 v29.l, v30.l
	v_mov_b16_e32 v30.l, v31.l
	v_mov_b16_e32 v31.l, v32.l
	v_lshl_or_b32 v9, v234, 16, v9
	v_mov_b16_e32 v32.l, v33.l
	v_mov_b16_e32 v33.l, v34.l
	v_mov_b16_e32 v34.l, v35.l
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v252
	v_wmma_i32_16x16x16_iu8 v[223:230], v[17:20], v[9:12], v[223:230] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v246
	v_cvt_f32_i32_e32 v14, v247
	v_cvt_f32_i32_e32 v11, v248
	scratch_store_b32 off, v15, off         ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v253
	v_cvt_f32_i32_e32 v12, v249
	v_cvt_f32_i32_e32 v9, v250
	v_cvt_f32_i32_e32 v10, v251
	v_cvt_f32_i32_e32 v249, v1
	scratch_store_b32 off, v15, off offset:4 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v250, v2
	v_cvt_f32_i32_e32 v248, v3
	v_cvt_f32_i32_e32 v247, v4
	v_cvt_f32_i32_e32 v234, v5
	v_cvt_f32_i32_e32 v246, v6
	v_cvt_f32_i32_e32 v17, v7
	v_cvt_f32_i32_e32 v18, v8
	v_cvt_f32_i32_e32 v7, v223
	v_cvt_f32_i32_e32 v8, v224
	v_cvt_f32_i32_e32 v5, v225
	v_cvt_f32_i32_e32 v6, v226
	v_cvt_f32_i32_e32 v3, v227
	v_cvt_f32_i32_e32 v4, v228
	v_cvt_f32_i32_e32 v1, v229
	v_cvt_f32_i32_e32 v2, v230
	v_cvt_f32_i32_e32 v223, v240
	v_cvt_f32_i32_e32 v224, v241
	v_cvt_f32_i32_e32 v19, v242
	v_cvt_f32_i32_e32 v20, v243
	v_cvt_f32_i32_e32 v15, v244
	v_cvt_f32_i32_e32 v16, v245
	v_cvt_f32_i32_e32 v225, v238
	v_cvt_f32_i32_e32 v226, v239
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1d                           ; 120-byte Folded Spill
	scratch_store_b32 off, v250, off offset:392
	scratch_store_b32 off, v249, off offset:388
	scratch_store_b32 off, v226, off offset:384
	scratch_store_b32 off, v225, off offset:380
	scratch_store_b32 off, v248, off offset:376
	scratch_store_b32 off, v247, off offset:372
	scratch_store_b32 off, v224, off offset:364
	scratch_store_b32 off, v223, off offset:360
	scratch_store_b32 off, v246, off offset:264
	scratch_store_b32 off, v234, off offset:260
	scratch_store_b32 off, v20, off offset:248
	scratch_store_b32 off, v19, off offset:244
	scratch_store_b32 off, v18, off offset:200
	scratch_store_b32 off, v17, off offset:196
	scratch_store_b32 off, v16, off offset:184
	scratch_store_b32 off, v15, off offset:180
	scratch_store_b32 off, v8, off offset:144
	scratch_store_b32 off, v7, off offset:140
	scratch_store_b32 off, v14, off offset:128
	scratch_store_b32 off, v13, off offset:124
	scratch_store_b32 off, v6, off offset:108
	scratch_store_b32 off, v5, off offset:104
	scratch_store_b32 off, v12, off offset:88
	scratch_store_b32 off, v11, off offset:84
	scratch_store_b32 off, v4, off offset:48
	scratch_store_b32 off, v3, off offset:44
	scratch_store_b32 off, v10, off offset:40
	scratch_store_b32 off, v9, off offset:36
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v1, off offset:28
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_perm_b32 v1, v235, v237, 0xc0c0004
	v_perm_b32 v2, v233, v236, 0xc0c0004
	v_perm_b32 v3, v218, v220, 0xc0c0004
	v_perm_b32 v4, v217, v219, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v12, v2, 16, v1
	v_perm_b32 v1, v208, v209, 0xc0c0004
	v_perm_b32 v2, v210, v212, 0xc0c0004
	v_lshl_or_b32 v11, v4, 16, v3
	v_perm_b32 v3, v214, v216, 0xc0c0004
	v_perm_b32 v4, v213, v215, 0xc0c0004
	s_mov_b32 s7, s4
	v_lshl_or_b32 v10, v2, 16, v1
	v_perm_b32 v1, v192, v193, 0xc0c0004
	v_perm_b32 v2, v188, v189, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v9, v2, 16, v1
	v_perm_b32 v1, v222, v232, 0xc0c0004
	v_perm_b32 v2, v221, v231, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v188, s14, v211
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v15, v4, 16, v3
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v31, v33, v31, 0xc0c0004
	v_lshl_or_b32 v16, v2, 16, v1
	v_perm_b32 v1, v204, v205, 0xc0c0004
	v_perm_b32 v2, v206, v207, 0xc0c0004
	v_perm_b32 v33, v52, v51, 0xc0c0004
	v_perm_b32 v32, v34, v32, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v35, v191, v195, 0xc0c0004
	v_perm_b32 v55, v55, v57, 0xc0c0004
	v_lshl_or_b32 v14, v2, 16, v1
	v_perm_b32 v1, v194, v197, 0xc0c0004
	v_perm_b32 v2, v198, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v2, 16, v1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_xor_b32_e32 v1, 16, v211
	v_add_nc_u32_e32 v189, s14, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[17:20], v188
	ds_load_b128 v[204:207], v189
	ds_load_b128 v[228:231], v188 offset:4096
	ds_load_b128 v[235:238], v189 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[17:20], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[228:231], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v184, v185, 0xc0c0004
	v_perm_b32 v10, v186, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[204:207], v[13:16], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[235:238], v[13:16], v[220:227] neg_lo:[1,1,0]
	v_perm_b32 v11, v77, v125, 0xc0c0004
	v_perm_b32 v13, v127, v179, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v71, v72, 0xc0c0004
	v_perm_b32 v10, v73, v74, 0xc0c0004
	v_perm_b32 v14, v44, v43, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	v_perm_b32 v13, v66, v68, 0xc0c0004
	v_perm_b32 v44, v46, v45, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v63, v65, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_xor_b32_e32 v45, 32, v211
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v15, v38, v36, 0xc0c0004
	v_perm_b32 v43, v50, v49, 0xc0c0004
	v_perm_b32 v66, v54, v53, 0xc0c0004
	v_lshl_or_b32 v9, v13, 16, v9
	v_perm_b32 v13, v48, v47, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v51, s14, v45
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v45, v25, v24, 0xc0c0004
	v_lshl_or_b32 v15, v31, 16, v15
	v_perm_b32 v31, v58, v56, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	v_perm_b32 v14, v28, v27, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:116
	scratch_load_b32 v27, off, off offset:120
	v_perm_b32 v13, v30, v29, 0xc0c0004
	v_lshl_or_b32 v34, v33, 16, v31
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_xor_b32_e32 v31, 48, v211
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v33, v44, 16, v43
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[71:74], v51
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v13, v254, v23, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v58, s14, v31
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v23, v202, v203, 0xc0c0004
	v_perm_b32 v65, v75, v76, 0xc0c0004
	v_perm_b32 v38, v196, v199, 0xc0c0004
	v_lshl_or_b32 v13, v21, 16, v13
	v_perm_b32 v21, v190, v201, 0xc0c0004
	v_perm_b32 v56, v182, v183, 0xc0c0004
	v_perm_b32 v63, v180, v181, 0xc0c0004
	v_lshl_or_b32 v57, v38, 16, v35
	v_lshl_or_b32 v55, v55, 16, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v56, v63, 16, v56
	s_waitcnt vmcnt(0)
	v_perm_b32 v27, v27, v22, 0xc0c0004
	scratch_load_b32 v22, off, off offset:72 ; 4-byte Folded Reload
	v_lshl_or_b32 v32, v27, 16, v32
	s_waitcnt vmcnt(0)
	v_perm_b32 v28, v22, v26, 0xc0c0004
	scratch_load_b32 v22, off, off offset:148 ; 4-byte Folded Reload
	v_lshl_or_b32 v31, v45, 16, v28
	v_wmma_i32_16x16x16_iu8 v[43:50], v[17:20], v[13:16], v[1:8] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[17:20], v51 offset:4096
	ds_load_b128 v[51:54], v58 offset:4096
	ds_load_b128 v[25:28], v58
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[71:74], v[9:12], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v23, 16, v21
	v_perm_b32 v21, v255, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:12
	scratch_load_b32 v75, off, off offset:52
	v_wmma_i32_16x16x16_iu8 v[1:8], v[228:231], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[204:207], v[31:34], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v13, v42, v41, 0xc0c0004
	v_perm_b32 v14, v40, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[235:238], v[31:34], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[17:20], v[9:12], v[220:227] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:92
	scratch_load_b32 v12, off, off offset:96
	v_perm_b32 v9, v70, v69, 0xc0c0004
	v_perm_b32 v10, v67, v64, 0xc0c0004
	v_perm_b32 v11, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[25:28], v[55:58], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[51:54], v[55:58], v[220:227] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v238, v214
	v_cvt_f32_i32_e32 v239, v215
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v230, v216
	v_cvt_f32_i32_e32 v234, v217
	v_cvt_f32_i32_e32 v228, v218
	v_cvt_f32_i32_e32 v229, v219
	s_waitcnt vmcnt(4)
	v_perm_b32 v36, v39, v22, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:132
	scratch_load_b32 v24, off, off offset:136
	v_lshl_or_b32 v182, v36, 16, v66
	s_waitcnt vmcnt(4)
	v_perm_b32 v23, v75, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v23, 16, v21
	v_perm_b32 v21, v60, v59, 0xc0c0004
	v_lshl_or_b32 v11, v21, 16, v11
	s_waitcnt vmcnt(2)
	v_perm_b32 v15, v12, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:76
	scratch_load_b32 v12, off, off offset:80
	s_waitcnt vmcnt(2)
	v_perm_b32 v29, v24, v22, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:100
	scratch_load_b32 v24, off, off offset:112
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_lshl_or_b32 v10, v14, 16, v13
	v_cvt_f32_i32_e32 v13, v222
	v_cvt_f32_i32_e32 v14, v223
	v_lshl_or_b32 v9, v0, 16, v15
	v_cvt_f32_i32_e32 v0, v212
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v24, v22, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:64
	scratch_load_b32 v24, off, off offset:68
	v_lshl_or_b32 v181, v30, 16, v29
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v24, v22, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:56
	scratch_load_b32 v24, off, off offset:60
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v24, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v180, v68, 16, v39
	v_wmma_i32_16x16x16_iu8 v[43:50], v[71:74], v[179:182], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[179:182], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v220
	v_cvt_f32_i32_e32 v18, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[25:28], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[51:54], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v224
	v_cvt_f32_i32_e32 v12, v225
	v_cvt_f32_i32_e32 v9, v226
	v_cvt_f32_i32_e32 v10, v227
	v_cvt_f32_i32_e32 v242, v43
	v_cvt_f32_i32_e32 v241, v44
	v_cvt_f32_i32_e32 v240, v45
	v_cvt_f32_i32_e32 v227, v46
	v_cvt_f32_i32_e32 v226, v47
	v_cvt_f32_i32_e32 v225, v48
	v_cvt_f32_i32_e32 v223, v49
	v_cvt_f32_i32_e32 v224, v50
	v_cvt_f32_i32_e32 v19, v1
	v_cvt_f32_i32_e32 v20, v2
	v_cvt_f32_i32_e32 v15, v3
	v_cvt_f32_i32_e32 v16, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v2, v8
	v_cvt_f32_i32_e32 v5, v213
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	s_clause 0x1c                           ; 116-byte Folded Spill
	scratch_store_b32 off, v5, off offset:436
	scratch_store_b32 off, v240, off offset:432
	scratch_store_b32 off, v227, off offset:428
	scratch_store_b32 off, v238, off offset:424
	scratch_store_b32 off, v226, off offset:420
	scratch_store_b32 off, v225, off offset:416
	scratch_store_b32 off, v239, off offset:412
	scratch_store_b32 off, v234, off offset:316
	scratch_store_b32 off, v230, off offset:308
	scratch_store_b32 off, v224, off offset:296
	scratch_store_b32 off, v223, off offset:292
	scratch_store_b32 off, v229, off offset:280
	scratch_store_b32 off, v228, off offset:276
	scratch_store_b32 off, v20, off offset:240
	scratch_store_b32 off, v19, off offset:232
	scratch_store_b32 off, v18, off offset:224
	scratch_store_b32 off, v17, off offset:220
	scratch_store_b32 off, v16, off offset:176
	scratch_store_b32 off, v15, off offset:168
	scratch_store_b32 off, v14, off offset:152
	scratch_store_b32 off, v13, off offset:148
	scratch_store_b32 off, v4, off offset:100
	scratch_store_b32 off, v3, off offset:92
	scratch_store_b32 off, v12, off offset:80
	scratch_store_b32 off, v11, off offset:76
	scratch_store_b32 off, v2, off offset:64
	scratch_store_b32 off, v1, off offset:60
	scratch_store_b32 off, v10, off offset:56
	scratch_store_b32 off, v9, off offset:52
	s_ashr_i32 s0, s0, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v161, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v127, v242 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, s15
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v24, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	v_mov_b32_e32 v252, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v8, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v253, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v5, 0
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v160, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	.loc	1 422 22 is_stmt 0              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v0, v159, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v156, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v157, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v158, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v144, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v145, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v146, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v147, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v128, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v129, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v130, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v131, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v132, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v133, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v134, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	scratch_store_b32 off, v241, off offset:444 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v135, s0, 1
	.loc	1 426 39 is_stmt 1              ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	.loc	1 426 31 is_stmt 0              ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v0, s0, v155, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v151, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v152, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v153, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v148, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v154, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v149, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v150, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v136, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v137, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v138, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v139, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v140, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v141, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v142, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v143, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s47, v126
	ds_load_u8_d16 v216, v0
	ds_load_u8_d16 v1, v0 offset:32
	ds_load_u8_d16 v234, v0 offset:3872
	ds_load_u8_d16 v240, v0 offset:3936
	ds_load_u8_d16 v232, v0 offset:4000
	ds_load_u8_d16 v238, v0 offset:4064
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	ds_load_u8_d16 v235, v0 offset:64
	ds_load_u8_d16 v209, v0 offset:128
	ds_load_u8_d16 v212, v0 offset:192
	ds_load_u8_d16 v218, v0 offset:256
	ds_load_u8_d16 v57, v0 offset:320
	ds_load_u8_d16 v69, v0 offset:384
	ds_load_u8_d16 v241, v0 offset:448
	ds_load_u8_d16 v243, v0 offset:512
	ds_load_u8_d16 v220, v0 offset:576
	ds_load_u8_d16 v242, v0 offset:640
	ds_load_u8_d16 v219, v0 offset:704
	ds_load_u8_d16 v245, v0 offset:768
	ds_load_u8_d16 v222, v0 offset:832
	ds_load_u8_d16 v244, v0 offset:896
	ds_load_u8_d16 v221, v0 offset:960
	ds_load_u8_d16 v201, v0 offset:1024
	ds_load_u8_d16 v202, v0 offset:1088
	ds_load_u8_d16 v203, v0 offset:1152
	ds_load_u8_d16 v204, v0 offset:1216
	ds_load_u8_d16 v205, v0 offset:1280
	ds_load_u8_d16 v206, v0 offset:1344
	ds_load_u8_d16 v207, v0 offset:1408
	ds_load_u8_d16 v208, v0 offset:1472
	ds_load_u8_d16 v213, v0 offset:1536
	ds_load_u8_d16 v215, v0 offset:1600
	ds_load_u8_d16 v210, v0 offset:1664
	ds_load_u8_d16 v233, v0 offset:1728
	ds_load_u8_d16 v237, v0 offset:1792
	ds_load_u8_d16 v217, v0 offset:1856
	ds_load_u8_d16 v236, v0 offset:1920
	ds_load_u8_d16 v239, v0 offset:1984
	ds_load_u8_d16 v74, v0 offset:2048
	ds_load_u8_d16 v36, v0 offset:2112
	ds_load_u8_d16 v37, v0 offset:2176
	ds_load_u8_d16 v41, v0 offset:2240
	ds_load_u8_d16 v214, v0 offset:2304
	ds_load_u8_d16 v49, v0 offset:2368
	ds_load_u8_d16 v50, v0 offset:2432
	ds_load_u8_d16 v187, v0 offset:2496
	ds_load_u8_d16 v189, v0 offset:2560
	ds_load_u8_d16 v62, v0 offset:2624
	ds_load_u8_d16 v190, v0 offset:2688
	ds_load_u8_d16 v65, v0 offset:2752
	ds_load_u8_d16 v71, v0 offset:2816
	ds_load_u8_d16 v75, v0 offset:2880
	ds_load_u8_d16 v76, v0 offset:2944
	ds_load_u8_d16 v77, v0 offset:3008
	ds_load_u8_d16 v1, v0 offset:3072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:532 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:536 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:524 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	ds_load_u8_d16 v38, v0 offset:3328
	ds_load_u8_d16 v42, v0 offset:3392
	ds_load_u8_d16 v39, v0 offset:3456
	ds_load_u8_d16 v180, v0 offset:3520
	ds_load_u8_d16 v47, v0 offset:3584
	ds_load_u8_d16 v51, v0 offset:3648
	ds_load_u8_d16 v52, v0 offset:3712
	ds_load_u8_d16 v54, v0 offset:3776
	ds_load_u8_d16 v56, v0 offset:3840
	ds_load_u8_d16 v58, v0 offset:3904
	ds_load_u8_d16 v59, v0 offset:3968
	ds_load_u8_d16 v60, v0 offset:4032
	ds_load_u8_d16 v67, v0 offset:96
	ds_load_u8_d16 v68, v0 offset:160
	ds_load_u8_d16 v72, v0 offset:224
	ds_load_u8_d16 v179, v0 offset:288
	ds_load_u8_d16 v181, v0 offset:352
	ds_load_u8_d16 v183, v0 offset:416
	ds_load_u8_d16 v184, v0 offset:480
	ds_load_u8_d16 v192, v0 offset:544
	ds_load_u8_d16 v193, v0 offset:608
	ds_load_u8_d16 v195, v0 offset:672
	ds_load_u8_d16 v196, v0 offset:736
	ds_load_u8_d16 v197, v0 offset:800
	ds_load_u8_d16 v198, v0 offset:864
	ds_load_u8_d16 v199, v0 offset:928
	ds_load_u8_d16 v200, v0 offset:992
	ds_load_u8_d16 v31, v0 offset:1056
	ds_load_u8_d16 v73, v0 offset:1120
	ds_load_u8_d16 v28, v0 offset:1184
	ds_load_u8_d16 v32, v0 offset:1248
	ds_load_u8_d16 v45, v0 offset:1312
	ds_load_u8_d16 v48, v0 offset:1376
	ds_load_u8_d16 v182, v0 offset:1440
	ds_load_u8_d16 v46, v0 offset:1504
	ds_load_u8_d16 v66, v0 offset:1568
	ds_load_u8_d16 v70, v0 offset:1632
	ds_load_u8_d16 v64, v0 offset:1696
	ds_load_u8_d16 v194, v0 offset:1760
	ds_load_u8_d16 v186, v0 offset:1824
	ds_load_u8_d16 v191, v0 offset:1888
	ds_load_u8_d16 v185, v0 offset:1952
	ds_load_u8_d16 v188, v0 offset:2016
	ds_load_u8_d16 v1, v0 offset:2080
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:564 ; 4-byte Folded Spill
	ds_load_u8_d16 v231, v0 offset:2144
	ds_load_u8_d16 v1, v0 offset:2208
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:560 ; 4-byte Folded Spill
	ds_load_u8_d16 v44, v0 offset:2272
	ds_load_u8_d16 v53, v0 offset:2336
	ds_load_u8_d16 v255, v0 offset:2400
	ds_load_u8_d16 v254, v0 offset:2464
	ds_load_u8_d16 v125, v0 offset:2528
	ds_load_u8_d16 v30, v0 offset:2592
	ds_load_u8_d16 v63, v0 offset:2656
	ds_load_u8_d16 v55, v0 offset:2720
	ds_load_u8_d16 v61, v0 offset:2784
	ds_load_u8_d16 v34, v0 offset:2848
	ds_load_u8_d16 v40, v0 offset:2912
	ds_load_u8_d16 v33, v0 offset:2976
	ds_load_u8_d16 v35, v0 offset:3040
	ds_load_u8_d16 v1, v0 offset:3104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:492 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:500 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3296
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3360
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3424
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:512 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:516 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:520 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:548 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:556 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:544 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3808
	v_mov_b32_e32 v0, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v0, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v0
	v_mov_b32_e32 v0, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_perm_b32 v0, v245, v222, 0xc0c0004
	v_perm_b32 v1, v244, v221, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v11, v1, 16, v0
	v_perm_b32 v0, v218, v57, 0xc0c0004
	v_perm_b32 v1, v69, v241, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v2, v243, v220, 0xc0c0004
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v216, v235, 0xc0c0004
	v_perm_b32 v1, v209, v212, 0xc0c0004
	v_dual_mov_b32 v230, s11 :: v_dual_mov_b32 v227, s8
	v_perm_b32 v3, v242, v219, 0xc0c0004
	v_dual_mov_b32 v228, s9 :: v_dual_mov_b32 v225, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v1, 16, v0
	v_perm_b32 v0, v197, v198, 0xc0c0004
	v_perm_b32 v1, v199, v200, 0xc0c0004
	v_lshl_or_b32 v10, v3, 16, v2
	v_perm_b32 v2, v192, v193, 0xc0c0004
	v_perm_b32 v3, v195, v196, 0xc0c0004
	v_dual_mov_b32 v226, s7 :: v_dual_mov_b32 v223, s4
	v_lshl_or_b32 v19, v1, 16, v0
	v_perm_b32 v0, v179, v181, 0xc0c0004
	v_perm_b32 v1, v183, v184, 0xc0c0004
	v_lshl_or_b32 v18, v3, 16, v2
	v_mov_b32_e32 v224, s5
	v_perm_b32 v29, v64, v194, 0xc0c0004
	v_mov_b32_e32 v229, s10
	v_lshl_or_b32 v17, v1, 16, v0
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	v_perm_b32 v1, v68, v72, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v1, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s46, v211
	ds_load_b128 v[20:23], v0
	ds_load_b128 v[24:27], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[20:23], v[8:11], v[223:230] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[24:27], v[8:11], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[20:23], v[16:19], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[24:27], v[16:19], v[223:230] neg_lo:[1,1,0]
	v_perm_b32 v16, v237, v217, 0xc0c0004
	v_perm_b32 v17, v236, v239, 0xc0c0004
	v_perm_b32 v18, v213, v215, 0xc0c0004
	v_perm_b32 v20, v210, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v17, 16, v16
	v_perm_b32 v16, v205, v206, 0xc0c0004
	v_perm_b32 v17, v207, v208, 0xc0c0004
	v_lshl_or_b32 v18, v20, 16, v18
	v_perm_b32 v20, v203, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v17, 16, v16
	v_perm_b32 v16, v201, v202, 0xc0c0004
	v_lshl_or_b32 v16, v20, 16, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v20, 16, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v24, s46, v20
	ds_load_b128 v[20:23], v24
	ds_load_b128 v[24:27], v24 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[20:23], v[16:19], v[246:253] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[24:27], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v16, v186, v191, 0xc0c0004
	v_perm_b32 v17, v185, v188, 0xc0c0004
	v_perm_b32 v18, v66, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v17, 16, v16
	v_perm_b32 v16, v45, v48, 0xc0c0004
	v_perm_b32 v17, v182, v46, 0xc0c0004
	v_lshl_or_b32 v18, v29, 16, v18
	v_perm_b32 v29, v28, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v17, 16, v16
	v_perm_b32 v16, v31, v73, 0xc0c0004
	v_lshl_or_b32 v16, v29, 16, v16
	v_perm_b32 v29, v55, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[20:23], v[16:19], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[24:27], v[16:19], v[223:230] neg_lo:[1,1,0]
	v_perm_b32 v16, v71, v75, 0xc0c0004
	v_perm_b32 v17, v76, v77, 0xc0c0004
	v_perm_b32 v18, v189, v62, 0xc0c0004
	v_perm_b32 v20, v190, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v17, 16, v16
	v_perm_b32 v16, v214, v49, 0xc0c0004
	v_perm_b32 v17, v50, v187, 0xc0c0004
	v_lshl_or_b32 v18, v20, 16, v18
	v_perm_b32 v20, v37, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v17, 16, v16
	v_perm_b32 v16, v74, v36, 0xc0c0004
	v_lshl_or_b32 v16, v20, 16, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v20, 32, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v24, s46, v20
	ds_load_b128 v[20:23], v24
	ds_load_b128 v[24:27], v24 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[20:23], v[16:19], v[246:253] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[24:27], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v16, v34, v40, 0xc0c0004
	v_perm_b32 v17, v33, v35, 0xc0c0004
	v_perm_b32 v18, v30, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v17, 16, v16
	v_perm_b32 v16, v53, v255, 0xc0c0004
	v_perm_b32 v17, v254, v125, 0xc0c0004
	v_lshl_or_b32 v18, v29, 16, v18
	scratch_load_b32 v29, off, off offset:560 ; 4-byte Folded Reload
	v_lshl_or_b32 v17, v17, 16, v16
	scratch_load_b32 v16, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v29, v29, v44, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v16, v16, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v29, 16, v16
	v_wmma_i32_16x16x16_iu8 v[8:15], v[20:23], v[16:19], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[24:27], v[16:19], v[223:230] neg_lo:[1,1,0]
	v_perm_b32 v16, v56, v58, 0xc0c0004
	v_perm_b32 v17, v59, v60, 0xc0c0004
	v_perm_b32 v18, v47, v51, 0xc0c0004
	v_perm_b32 v20, v52, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v17, 16, v16
	v_perm_b32 v16, v38, v42, 0xc0c0004
	v_perm_b32 v17, v39, v180, 0xc0c0004
	v_lshl_or_b32 v18, v20, 16, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v17, 16, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:532
	scratch_load_b32 v20, off, off offset:536
	s_waitcnt vmcnt(0)
	v_perm_b32 v16, v16, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:524
	scratch_load_b32 v21, off, off offset:528
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v20, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v20, 16, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v20, 48, v211
	v_add_nc_u32_e32 v24, s46, v20
	ds_load_b128 v[20:23], v24
	ds_load_b128 v[24:27], v24 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[20:23], v[16:19], v[246:253] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[24:27], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:548
	scratch_load_b32 v19, off, off offset:556
	v_perm_b32 v16, v234, v240, 0xc0c0004
	v_perm_b32 v17, v232, v238, 0xc0c0004
	v_cvt_f32_i32_e32 v252, v252
	v_cvt_f32_i32_e32 v253, v253
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:544
	scratch_load_b32 v29, off, off offset:552
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v19, v29, 0xc0c0004
	v_lshl_or_b32 v19, v17, 16, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:508
	scratch_load_b32 v17, off, off offset:512
	v_lshl_or_b32 v18, v29, 16, v18
	s_waitcnt vmcnt(0)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:516
	scratch_load_b32 v29, off, off offset:520
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v17, 16, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:492
	scratch_load_b32 v29, off, off offset:496
	s_waitcnt vmcnt(0)
	v_perm_b32 v16, v16, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:500
	scratch_load_b32 v43, off, off offset:504
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v43, 0xc0c0004
	v_cvt_f32_i32_e32 v43, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v29, 16, v16
	v_wmma_i32_16x16x16_iu8 v[8:15], v[20:23], v[16:19], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[24:27], v[16:19], v[223:230] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v0
	v_cvt_f32_i32_e32 v19, v1
	v_cvt_f32_i32_e32 v20, v2
	v_cvt_f32_i32_e32 v18, v3
	v_cvt_f32_i32_e32 v16, v4
	v_cvt_f32_i32_e32 v17, v5
	v_cvt_f32_i32_e32 v0, v6
	v_cvt_f32_i32_e32 v4, v7
	v_cvt_f32_i32_e32 v2, v8
	v_cvt_f32_i32_e32 v25, v9
	v_cvt_f32_i32_e32 v3, v10
	v_cvt_f32_i32_e32 v29, v11
	v_cvt_f32_i32_e32 v23, v12
	v_cvt_f32_i32_e32 v26, v13
	v_cvt_f32_i32_e32 v22, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v13, v223
	v_cvt_f32_i32_e32 v14, v224
	v_cvt_f32_i32_e32 v11, v225
	v_cvt_f32_i32_e32 v12, v226
	v_cvt_f32_i32_e32 v9, v227
	v_cvt_f32_i32_e32 v10, v228
	v_cvt_f32_i32_e32 v8, v229
	v_cvt_f32_i32_e32 v5, v230
	v_cvt_f32_i32_e32 v24, v248
	v_cvt_f32_i32_e32 v1, v249
	v_cvt_f32_i32_e32 v27, v251
	v_cvt_f32_i32_e32 v6, v246
	v_cvt_f32_i32_e32 v7, v247
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v43, off offset:408
	scratch_store_b32 off, v27, off offset:404
	scratch_store_b32 off, v26, off offset:400
	scratch_store_b32 off, v23, off offset:396
	scratch_store_b32 off, v15, off offset:368
	scratch_store_b32 off, v22, off offset:356
	scratch_store_b32 off, v21, off offset:352
	scratch_store_b32 off, v19, off offset:348
	scratch_store_b32 off, v14, off offset:344
	scratch_store_b32 off, v13, off offset:336
	scratch_store_b32 off, v20, off offset:332
	scratch_store_b32 off, v18, off offset:328
	scratch_store_b32 off, v12, off offset:272
	scratch_store_b32 off, v11, off offset:268
	scratch_store_b32 off, v10, off offset:216
	scratch_store_b32 off, v9, off offset:212
	scratch_store_b32 off, v17, off offset:208
	scratch_store_b32 off, v16, off offset:204
	scratch_store_b32 off, v8, off offset:172
	scratch_store_b32 off, v5, off offset:164
	scratch_store_b32 off, v4, off offset:160
	scratch_store_b32 off, v0, off offset:156
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v8, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	v_perm_b32 v0, v245, v222, 0xc0c0004
	v_perm_b32 v4, v244, v221, 0xc0c0004
	v_perm_b32 v5, v243, v220, 0xc0c0004
	v_perm_b32 v8, v242, v219, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v19, v4, 16, v0
	v_perm_b32 v0, v218, v57, 0xc0c0004
	v_perm_b32 v4, v69, v241, 0xc0c0004
	v_lshl_or_b32 v18, v8, 16, v5
	v_perm_b32 v5, v213, v215, 0xc0c0004
	v_perm_b32 v8, v210, v233, 0xc0c0004
	s_mov_b32 s7, s4
	v_lshl_or_b32 v17, v4, 16, v0
	v_perm_b32 v0, v216, v235, 0xc0c0004
	v_perm_b32 v4, v209, v212, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v16, v4, 16, v0
	v_perm_b32 v0, v237, v217, 0xc0c0004
	v_perm_b32 v4, v236, v239, 0xc0c0004
	v_lshl_or_b32 v22, v8, 16, v5
	v_perm_b32 v5, v189, v62, 0xc0c0004
	v_perm_b32 v27, v38, v42, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:568
	scratch_load_b32 v43, off, off offset:560
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v23, v4, 16, v0
	v_perm_b32 v0, v205, v206, 0xc0c0004
	v_perm_b32 v4, v207, v208, 0xc0c0004
	v_mov_b32_e32 v15, s11
	v_dual_mov_b32 v13, s9 :: v_dual_mov_b32 v14, s10
	v_mov_b32_e32 v11, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v21, v4, 16, v0
	v_perm_b32 v0, v201, v202, 0xc0c0004
	v_perm_b32 v4, v203, v204, 0xc0c0004
	v_dual_mov_b32 v12, s8 :: v_dual_mov_b32 v9, s5
	v_mov_b32_e32 v10, s6
	v_mov_b32_e32 v8, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v20, v4, 16, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_xor_b32_e32 v0, 16, v211
	v_add_nc_u32_e32 v4, s45, v211
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v26, v52, v54, 0xc0c0004
	v_perm_b32 v54, v64, v194, 0xc0c0004
	v_perm_b32 v57, v182, v46, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s45, v0
	ds_load_b128 v[209:212], v4
	ds_load_b128 v[223:226], v0
	ds_load_b128 v[227:230], v4 offset:4096
	ds_load_b128 v[241:244], v0 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v0, v71, v75, 0xc0c0004
	v_perm_b32 v4, v76, v77, 0xc0c0004
	v_perm_b32 v38, v39, v180, 0xc0c0004
	v_perm_b32 v39, v185, v188, 0xc0c0004
	v_perm_b32 v31, v31, v73, 0xc0c0004
	v_perm_b32 v28, v28, v32, 0xc0c0004
	v_perm_b32 v55, v55, v61, 0xc0c0004
	v_perm_b32 v53, v53, v255, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[201:208], v[209:212], v[16:19], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[227:230], v[16:19], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v4, 16, v0
	v_perm_b32 v0, v214, v49, 0xc0c0004
	v_perm_b32 v4, v50, v187, 0xc0c0004
	v_perm_b32 v16, v190, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[201:208], v[223:226], v[20:23], v[201:208] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[241:244], v[20:23], v[215:222] neg_lo:[1,1,0]
	v_perm_b32 v20, v195, v196, 0xc0c0004
	v_lshl_or_b32 v17, v4, 16, v0
	v_perm_b32 v0, v74, v36, 0xc0c0004
	v_perm_b32 v4, v37, v41, 0xc0c0004
	v_lshl_or_b32 v18, v16, 16, v5
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	scratch_load_b32 v36, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v5, v192, v193, 0xc0c0004
	v_perm_b32 v41, v66, v70, 0xc0c0004
	v_lshl_or_b32 v16, v4, 16, v0
	v_perm_b32 v0, v197, v198, 0xc0c0004
	v_perm_b32 v4, v199, v200, 0xc0c0004
	v_lshl_or_b32 v22, v20, 16, v5
	v_perm_b32 v5, v47, v51, 0xc0c0004
	v_perm_b32 v37, v186, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v4, 16, v0
	v_perm_b32 v0, v179, v181, 0xc0c0004
	v_perm_b32 v4, v183, v184, 0xc0c0004
	v_lshl_or_b32 v21, v4, 16, v0
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	v_perm_b32 v4, v68, v72, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s45, v42
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt vmcnt(2)
	v_perm_b32 v43, v43, v44, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[68:71], v42
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v67, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[64:67], v42 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v42, v30, v63, 0xc0c0004
	v_lshl_or_b32 v20, v4, 16, v0
	v_perm_b32 v0, v56, v58, 0xc0c0004
	v_perm_b32 v4, v59, v60, 0xc0c0004
	v_lshl_or_b32 v58, v54, 16, v41
	v_perm_b32 v56, v45, v48, 0xc0c0004
	v_lshl_or_b32 v59, v39, 16, v37
	v_perm_b32 v39, v34, v40, 0xc0c0004
	v_lshl_or_b32 v41, v4, 16, v0
	scratch_load_b32 v4, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v36, s45, v36
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v40, v33, v35, 0xc0c0004
	v_lshl_or_b32 v57, v57, 16, v56
	v_lshl_or_b32 v56, v28, 16, v31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:524
	scratch_load_b32 v31, off, off offset:528
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[49:52], v36
	ds_load_b128 v[45:48], v36 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v63, v40, 16, v39
	v_lshl_or_b32 v40, v26, 16, v5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:532
	scratch_load_b32 v36, off, off offset:536
	v_perm_b32 v0, v254, v125, 0xc0c0004
	v_lshl_or_b32 v62, v55, 16, v42
	v_lshl_or_b32 v39, v38, 16, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v61, v0, 16, v53
	v_perm_b32 v0, v234, v240, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[201:208], v[49:52], v[16:19], v[201:208] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[45:48], v[16:19], v[215:222] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:548
	scratch_load_b32 v16, off, off offset:556
	s_waitcnt vmcnt(6)
	v_perm_b32 v4, v4, v231, 0xc0c0004
	s_waitcnt vmcnt(4)
	v_perm_b32 v28, v28, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v60, v43, 16, v4
	v_perm_b32 v4, v232, v238, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v54, v32, v36, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[30:37], v[209:212], v[20:23], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[227:230], v[20:23], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v38, v28, 16, v54
	v_wmma_i32_16x16x16_iu8 v[30:37], v[223:226], v[56:59], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[241:244], v[56:59], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[68:71], v[38:41], v[201:208] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[30:37], v[49:52], v[60:63], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[64:67], v[38:41], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[45:48], v[60:63], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v247, v202
	v_cvt_f32_i32_e32 v223, v203
	v_cvt_f32_i32_e32 v224, v204
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v5, v16, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:544
	scratch_load_b32 v17, off, off offset:552
	v_cvt_f32_i32_e32 v249, v205
	v_cvt_f32_i32_e32 v250, v206
	v_cvt_f32_i32_e32 v230, v207
	v_cvt_f32_i32_e32 v23, v216
	s_waitcnt vmcnt(0)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:508
	scratch_load_b32 v18, off, off offset:512
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:516
	scratch_load_b32 v19, off, off offset:520
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v18, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:492
	scratch_load_b32 v19, off, off offset:496
	v_lshl_or_b32 v17, v20, 16, v17
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v18, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:500
	scratch_load_b32 v19, off, off offset:504
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v18, v19, 0xc0c0004
	v_lshl_or_b32 v19, v4, 16, v0
	v_lshl_or_b32 v18, v16, 16, v5
	v_cvt_f32_i32_e32 v0, v201
	v_cvt_f32_i32_e32 v4, v221
	v_lshl_or_b32 v16, v22, 16, v21
	v_cvt_f32_i32_e32 v22, v215
	v_cvt_f32_i32_e32 v5, v222
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v208
	v_wmma_i32_16x16x16_iu8 v[30:37], v[68:71], v[16:19], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[64:67], v[16:19], v[8:15] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v217
	v_cvt_f32_i32_e32 v19, v218
	v_cvt_f32_i32_e32 v16, v219
	v_cvt_f32_i32_e32 v17, v220
	v_cvt_f32_i32_e32 v229, v30
	v_cvt_f32_i32_e32 v226, v31
	v_cvt_f32_i32_e32 v227, v32
	v_cvt_f32_i32_e32 v228, v33
	v_cvt_f32_i32_e32 v251, v34
	v_cvt_f32_i32_e32 v225, v35
	v_cvt_f32_i32_e32 v246, v36
	v_cvt_f32_i32_e32 v248, v37
	v_cvt_f32_i32_e32 v26, v8
	v_cvt_f32_i32_e32 v27, v9
	v_cvt_f32_i32_e32 v20, v10
	v_cvt_f32_i32_e32 v21, v11
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v8, v14
	v_cvt_f32_i32_e32 v9, v15
.LBB0_16:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:464
	scratch_load_b32 v14, off, off offset:388
	v_dual_mov_b32 v182, v9 :: v_dual_mov_b32 v181, v8
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v9, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.l, 0
	v_mov_b32_e32 v184, v10
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v10, off, off offset:460 ; 4-byte Folded Reload
	v_dual_mov_b32 v179, v4 :: v_dual_mov_b32 v180, v5
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v4, off, off offset:488 ; 4-byte Folded Reload
	v_mov_b32_e32 v185, v11
	v_mov_b32_e32 v183, v16
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v69.l, v57.l
	v_dual_mov_b32 v186, v21 :: v_dual_mov_b32 v187, v22
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s44, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s44, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.h, v57.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s10, s0, 8
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v126, s27, v126
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s10, s1
	s_mov_b32 s26, 0x7ffffffe
	s_cselect_b32 s0, -1, 0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s0, s3, s0
	v_mov_b32_e32 v188, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:372 ; 4-byte Folded Reload
	v_mov_b32_e32 v189, v27
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v57.h, v12.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v12, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v9.h, v9.l
	v_mov_b16_e32 v9.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v57, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v12, v178
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v12, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v10.h, v10.l
	v_mov_b16_e32 v10.l, v57.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v178, v8, s2
	v_mov_b32_e32 v178, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v57, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v12, v176
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v12, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v4.h, v4.l
	v_mov_b16_e32 v4.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v57, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v127, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v177, v5, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v5, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v12.h, v12.l
	v_mov_b16_e32 v12.l, v57.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v57, v12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v14, v175
	scratch_load_b32 v14, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v69.h, v5.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v5, off, off offset:8  ; 4-byte Folded Reload
	v_mov_b32_e32 v177, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v176, v11, s2
	v_mov_b32_e32 v176, v19
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v69, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v175, v13, s2
	v_mov_b32_e32 v175, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fma_f32 v8, v4, v5, v162
	scratch_load_b32 v5, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v69, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v4, v5, v174
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v5, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v69, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v12, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v174, v11, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v4, v5, v172
	scratch_load_b32 v5, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v69, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v10, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v13, v4, v5, v173
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v4, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v4.h, v4.l
	v_mov_b16_e32 v4.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v57, v4
	v_mul_f32_e32 v4, v69, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v15, v5, v10, v170
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v5, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v170, v15, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e32 v5.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v57, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v10, v12, v171
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v10, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v171, v20, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v10.h, v10.l
	v_mov_b16_e32 v10.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v57, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v12, v14, v168
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v12, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v168, v21, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v12.h, v12.l
	v_mov_b16_e32 v12.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v57, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v14, v22, v169
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v14, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v169, v23, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v4, v14, v166
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v69, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:412
	scratch_load_b32 v14, off, off offset:416
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v166, v22, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v27, v4, v5, v167
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v5, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v69, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v10, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v167, v27, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v28, v4, v5, v164
	scratch_load_b32 v5, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v69, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v164, v28, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v30, v4, v5, v165
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v4, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v165, v30, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v4.h, v4.l
	v_mov_b16_e32 v4.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v57, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v5, v10, v124
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v5, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v124, v10, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e32 v5.l, v57.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v57, v5
	v_mul_f32_e32 v5, v69, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v12, v14, v163
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v12, v161, s10, 1
	v_add_lshl_u32 v14, v160, s10, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s10, s10, s35
	v_mov_b32_e32 v160, v26
	.loc	1 422 22 is_stmt 0              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v26, v159, s10, 1
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_load_u16 v32, v12, s[12:15], 0 offen
	buffer_load_u16 v33, v14, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v14, v156, s10, 1
	v_cndmask_b32_e64 v12, 0x80000000, v26, s0
	v_add_lshl_u32 v26, v157, s10, 1
	v_add_lshl_u32 v34, v158, s10, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s11, s10, s33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v38, s11, v153, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	s_clause 0x3
	buffer_load_u16 v35, v12, s[28:31], 0 offen
	buffer_load_u16 v36, v14, s[28:31], 0 offen
	buffer_load_u16 v37, v26, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v12, s11, v155, 1
	v_add_lshl_u32 v14, s11, v151, 1
	v_add_lshl_u32 v26, s11, v152, 1
	v_add_lshl_u32 v39, s11, v154, 1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	s_clause 0x4
	buffer_load_u16 v40, v12, s[28:31], 0 offen
	buffer_load_u16 v41, v14, s[28:31], 0 offen
	buffer_load_u16 v42, v26, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	scratch_load_b32 v12, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v11, v144, s10, 1
	v_add_lshl_u32 v44, v146, s10, 1
	v_add_lshl_u32 v45, v147, s10, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v46, s11, v148, 1
	v_add_lshl_u32 v47, s11, v149, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v48, s11, v150, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	v_cndmask_b32_e64 v48, 0x80000000, v48, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v163, v31, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v70, v130, s10, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s12, s34, s27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v71, v131, s10, 1
	v_add_lshl_u32 v72, v132, s10, 1
	v_add_lshl_u32 v75, v135, s10, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v135, s11, v143, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v73, v133, s10, 1
	v_add_lshl_u32 v74, v134, s10, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s12, s12, s33
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v76, s11, v136, 1
	v_add_lshl_u32 v77, s11, v137, 1
	v_add_lshl_u32 v130, s11, v138, 1
	v_add_lshl_u32 v131, s11, v139, 1
	v_add_lshl_u32 v132, s11, v140, 1
	v_add_lshl_u32 v133, s11, v141, 1
	v_add_lshl_u32 v134, s11, v142, 1
	v_cndmask_b32_e64 v136, 0x80000000, v135, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v57.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v127, 16, v32
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v144, 16, v33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v23, 16, v37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v34
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v32, 16, v40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v33, 16, v41
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v22, 16, v36
	v_lshlrev_b32_e32 v20, 16, v35
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v35, 16, v38
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v26, 56, v12
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_load_b32 v12, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v144, v27
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v40, v144, v33
	v_dual_mul_f32 v33, v127, v33 :: v_dual_mul_f32 v36, v144, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v127, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v38, v29, v52
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v33, v33, v247, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v36, v25, v18
	v_fma_f32 v1, v27, v1, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v18, v25, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v125, s27, v12
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v12, v145, s10, 1
	s_mov_b32 s27, 0x31027000
	v_cndmask_b32_e64 v49, 0x80000000, v12, s0
	s_clause 0x3
	buffer_load_u16 v12, v11, s[28:31], 0 offen
	buffer_load_u16 v11, v49, s[28:31], 0 offen
	buffer_load_u16 v147, v44, s[28:31], 0 offen
	buffer_load_u16 v146, v45, s[28:31], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v173, v13, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v13, 16, v39
	v_lshlrev_b32_e32 v34, 16, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v162, v8, s2
	v_cndmask_b32_e64 v49, v172, v9, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_clause 0x2
	buffer_load_u16 v15, v46, s[28:31], 0 offen
	buffer_load_u16 v8, v47, s[28:31], 0 offen
	buffer_load_u16 v9, v48, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v144, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v144, v13
	v_dual_mul_f32 v46, v144, v34 :: v_dual_mul_f32 v23, v127, v23
	v_mul_f32_e32 v13, v127, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v39, v3, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v46, v227, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v23, v24, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v21, v3, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v21, v51, v38, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v42, v144, v35
	v_mul_f32_e32 v35, v127, v35
	v_mul_f32_e32 v41, v144, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v144, v20
	v_mul_f32_e32 v20, v127, v20
	v_mul_f32_e32 v22, v127, v22
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v127, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v36, v41, v229, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v37, v2, v19
	v_fma_f32 v6, v20, v6, v49
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v20, off, off offset:12 ; 4-byte Folded Reload
	v_fma_f32 v35, v35, v224, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v19, v2, s3
	v_cndmask_b32_e64 v19, v52, v29, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v20, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v49, v6, s3
	v_cndmask_b32_e64 v6, v28, v24, s3
	v_cndmask_b32_e64 v28, v43, v33, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v22, v7, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v44, v32, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v45, v7, s3
	v_cndmask_b32_e64 v7, v30, v1, s3
	v_cndmask_b32_e64 v30, v17, v36, s3
	v_cndmask_b32_e64 v17, v53, v35, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, 0xbfb8aa3b, v30
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v42, v228, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v1
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v50, v39, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, s1
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v30
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v37, v40, v226, v16
	v_fma_f32 v40, v47, v225, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v33, v42
	v_mul_f32_e32 v32, 0xbfb8aa3b, v28
	v_exp_f32_e32 v1, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v16, v37, s3
	v_cndmask_b32_e64 v3, v31, v40, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v25
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v33, v33, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v1, v1, v38
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v127, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s5
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v56, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s4
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, s4, v21, v33, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v28
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v66, -v47, v56, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v66, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v31, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v2, 0xbfb8aa3b, v29 :: v_dual_mul_f32 v67, v48, v56
	v_ldexp_f32 v32, v32, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v29
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v2, v2, v37
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v1
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v34, v223, v54
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v37, v37, v30
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v54, v34, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v1, null, v38, v38, v29
	v_div_scale_f32 v2, vcc_lo, v29, v38, v29
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v51, v1
	v_rcp_f32_e32 v52, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v35, 0, 0x42800000, s9
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v1, v51, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v39, v52, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, s9, v30, v37, v30
	v_fmac_f32_e32 v51, v61, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v36
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v36, 0, 0x42800000, s8
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s8
	v_ldexp_f32 v35, v35, v44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, s7, v25, v31, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v35, v35, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s6
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, s5, v16, v35, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v34, v34, v24
	v_div_scale_f32 v46, s6, v24, v34, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v55, v45
	v_fma_f32 v65, -v45, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v55, v65, v55 :: v_dual_add_f32 v32, 1.0, v32
	v_div_scale_f32 v41, null, v32, v32, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v41
	v_fma_f32 v63, -v41, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v63, v53
	v_dual_mul_f32 v63, v2, v51 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v17
	v_fmac_f32_e32 v52, v62, v52
	v_fma_f32 v62, -v50, v60, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v60, v62, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v36, v36, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v31, v31, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v54, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v49, null, v36, v36, v17
	v_div_scale_f32 v59, s1, v17, v36, v17
	v_rcp_f32_e32 v58, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v43, v54, 1.0
	v_fmac_f32_e32 v54, v64, v54
	v_mul_f32_e32 v64, v40, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v61, -v49, v58, 1.0
	v_fma_f32 v65, -v39, v64, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v61, v58
	v_fma_f32 v61, -v1, v63, v2
	v_dual_fmac_f32 v64, v65, v52 :: v_dual_mul_f32 v65, v46, v55
	v_div_scale_f32 v42, s8, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v63, v61, v51
	v_mul_f32_e32 v61, v42, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v1, v63, v2
	v_fma_f32 v2, -v39, v64, v40
	v_div_fmas_f32 v40, v1, v51, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v41, v61, v42
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v29, v40, v38, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v61, v1, v53
	v_div_fmas_f32 v52, v2, v52, v64
	v_fma_f32 v2, -v45, v65, v46
	v_fma_f32 v1, -v47, v67, v48
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v63, v66, v60 :: v_dual_mul_f32 v62, v44, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v2, v55
	v_div_fixup_f32 v30, v52, v37, v30
	v_fma_f32 v41, -v41, v61, v42
	v_fma_f32 v2, -v50, v63, v66
	v_fma_f32 v51, -v43, v62, v44
	s_mov_b32 vcc_lo, s8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v45, v65, v46
	v_fmac_f32_e32 v63, v2, v60
	v_mul_f32_e32 v39, v59, v58
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v129, s10, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v23.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v62, v51, v54
	v_div_fmas_f32 v41, v41, v53, v61
	v_fma_f32 v51, -v49, v39, v59
	s_mov_b32 vcc_lo, s7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v43, v62, v44
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v129, s12, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v39, v51, v58
	v_fmac_f32_e32 v67, v1, v56
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v128, s10, 1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v43, v54, v62
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v49, -v49, v39, v59
	v_fma_f32 v47, -v47, v67, v48
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v45, v55, v65
	s_mov_b32 vcc_lo, s4
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v128, s12, v26, 64
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v26, 0x80000000, v70, s0
	v_cndmask_b32_e64 v59, 0x80000000, v71, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v47, v56, v67
	s_mov_b32 vcc_lo, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v70, 0x80000000, v72, s0
	v_cndmask_b32_e64 v71, 0x80000000, v73, s0
	v_cndmask_b32_e64 v72, 0x80000000, v74, s0
	v_cndmask_b32_e64 v73, 0x80000000, v75, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v74, 0x80000000, v76, s0
	v_cndmask_b32_e64 v75, 0x80000000, v77, s0
	v_cndmask_b32_e64 v76, 0x80000000, v130, s0
	v_cndmask_b32_e64 v77, 0x80000000, v131, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v149, v1, s[28:31], 0 offen
	buffer_load_u16 v148, v2, s[28:31], 0 offen
	buffer_load_u16 v142, v26, s[28:31], 0 offen
	buffer_load_u16 v141, v59, s[28:31], 0 offen
	buffer_load_u16 v138, v70, s[28:31], 0 offen
	buffer_load_u16 v137, v71, s[28:31], 0 offen
	buffer_load_u16 v131, v72, s[28:31], 0 offen
	buffer_load_u16 v130, v73, s[28:31], 0 offen
	buffer_load_u16 v1, v74, s[28:31], 0 offen
	buffer_load_u16 v2, v75, s[28:31], 0 offen
	buffer_load_u16 v143, v76, s[28:31], 0 offen
	buffer_load_u16 v145, v77, s[28:31], 0 offen
	buffer_load_u16 v139, v132, s[28:31], 0 offen
	buffer_load_u16 v140, v133, s[28:31], 0 offen
	buffer_load_u16 v135, v134, s[28:31], 0 offen
	buffer_load_u16 v136, v136, s[28:31], 0 offen
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v50, v63, v66
	v_div_fmas_f32 v30, v49, v58, v39
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.h, v57.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v41, v32, v28
	v_div_fixup_f32 v24, v37, v34, v24
	v_div_fmas_f32 v26, v26, v60, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.l, v27.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v30, v36, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v50, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v19, v19, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v38, v31, v25
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v22, v22, v28 :: v_dual_mul_f32 v7, v7, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v26, v35, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v51
	v_mov_b16_e32 v64.h, v57.l
	v_mov_b16_e32 v42.h, v57.l
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v25
	v_mul_f32_e32 v6, v6, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v16, v27, v24, 0x7fff
	v_mov_b16_e32 v42.l, v7.h
	v_mov_b16_e32 v14.l, v22.h
	v_mov_b16_e32 v64.l, v20.h
	v_cmp_o_f32_e64 s5, v7, v7
	v_cndmask_b16 v132.h, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v16, 1, v42
	v_mov_b16_e32 v44.h, v57.l
	v_and_b32_e32 v17, 1, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v29, v33, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v20, v20
	v_add3_u32 v7, v7, v16, 0x7fff
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v17, v20, v17, 0x7fff
	v_mov_b16_e32 v46.h, v57.l
	v_cmp_o_f32_e64 s1, v22, v22
	v_cndmask_b16 v134.h, 0x7fff, v7.h, s5
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v7, 16, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v6.h
	v_mov_b16_e32 v46.l, v19.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v18, v18, v21 :: v_dual_and_b32 v21, 1, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v14, v22, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v22, 1, v44
	v_cndmask_b16 v133.l, 0x7fff, v17.h, s4
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v144, v7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v17, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v23, v23
	v_add3_u32 v21, v23, v21, 0x7fff
	v_and_b32_e32 v23, 1, v46
	v_cmp_o_f32_e64 s6, v6, v6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v251, v10
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v127, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v6, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v16, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v16, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v134.l, 0x7fff, v6.h, s6
	v_add3_u32 v6, v19, v23, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v19, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v6.l, v57.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v133.h, 0x7fff, v14.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v124.h, 0x7fff, v6.h, vcc_lo
	v_mov_b16_e32 v48.h, v57.l
	v_mov_b16_e32 v48.l, v18.h
	v_cndmask_b16 v132.l, 0x7fff, v21.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v3
	v_exp_f32_e32 v15, v15
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v6.h, v17.l
	v_mov_b16_e32 v17.l, v57.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v57, v6
	v_mul_f32_e32 v6, v69, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v22, v120
	scratch_load_b32 v22, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v16, v123
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v16, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v120, v20, s2
	v_cndmask_b32_e64 v5, v123, v5, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v13, v13, v250, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v13, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v69, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v4, v4, v19, v122
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v122, v4, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v7, v7, v249, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v7, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v17.h, v16.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v15, v15, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v14, v18, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v18, 0xbfb8aa3b, v10 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v5
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v14.l, v57.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v13, null, v15, v15, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v57, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v69, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v124.l, 0x7fff, v14.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v22, v121
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v121, v18, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v23
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v7, v16
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v13
	v_div_scale_f32 v24, vcc_lo, v3, v15, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v4
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v7, v7, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v13, v16, 1.0
	v_div_scale_f32 v26, null, v19, v19, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_fmac_f32 v16, v22, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v29, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v7, v7, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v25, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v26, v29, 1.0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v144, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, null, v21, v21, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v12, v127, v12 :: v_dual_fmac_f32 v29, v33, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, s4, v5, v19, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v22, v25, 1.0
	v_fmac_f32_e32 v25, v28, v25
	v_mul_f32_e32 v23, v24, v16
	v_rcp_f32_e32 v28, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v13, v23, v24
	v_fmac_f32_e32 v23, v27, v16
	v_div_scale_f32 v27, s1, v10, v7, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v23, v24
	v_div_fmas_f32 v13, v13, v16, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v30, v28, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v13, v15, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v23, v28
	v_mul_f32_e32 v24, v27, v25
	v_div_scale_f32 v23, s5, v4, v21, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v144, v11
	v_mul_f32_e32 v11, v127, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v22, v24, v27
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:312
	scratch_load_b32 v35, off, off offset:244
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v34, v23, v28
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v13.l, v57.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v24, v16, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v16, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v22, v24, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v22, v22, v25, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:408
	scratch_load_b32 v25, off, off offset:404
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v7, v22, v7, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v57.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v13.h, v15.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v6, v6, v35, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v30, v34, v23
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v15, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v16, v17, v16, v119
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v17, v33, v29 :: v_dual_fmac_f32 v34, v35, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v118, v6, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v16, v119, v16, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v26, v17, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v30, v34, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v12, v12, v24, v6
	s_waitcnt vmcnt(1)
	v_fma_f32 v11, v11, v25, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v12, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v27, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v16, v11, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:396
	scratch_load_b32 v16, off, off offset:320
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v26, v17, v33
	v_div_fmas_f32 v17, v24, v29, v17
	s_mov_b32 vcc_lo, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v24, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v23, v28, v34
	v_div_fixup_f32 v5, v17, v19, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v17, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v23, v21, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v11, v5 :: v_dual_mul_f32 v4, v6, v4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 1, v10
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v10, v5, v10, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v5, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v58.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b16_e32 v10.h, v57.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v12, v32, v12, v20
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v14.h, v16.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v32, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v20, v12, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v4.h
	v_mov_b16_e32 v12.h, v57.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v6, v6, v7 :: v_dual_mul_f32 v7, v57, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v7, v5, v117
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v7, 16, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v4, v12, 0x7fff
	v_mov_b16_e32 v12.l, v6.h
	v_mov_b16_e32 v12.h, v57.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v117, v5, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v58.l, 0x7fff, v9.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v9, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v31, v24, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 1, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v18, v24, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v6, v4, 0x7fff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v6.l, v57.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v11, v3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v144, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.l, 0x7fff, v4.h, s0
	v_mov_b16_e32 v10.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v248, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v11, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v57, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v3, v10, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v144, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.h, 0x7fff, v10.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v9, v12, v9, v116
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v12, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v116, v9, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v11, v246, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v5
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v11, v69, v14 :: v_dual_mul_f32 v8, v127, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v10, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v10, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v9
	v_mul_f32_e32 v14, 0xbfb8aa3b, v3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v127, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v6.h, v12.l
	v_mov_b16_e32 v12.l, v57.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v11, v10, v115
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v11, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v115, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v7, v0, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v10, v0, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v14, 0xbfb8aa3b, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v12.h, v11.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v69, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v15, v114
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v57, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v9, v9, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v114, v11, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v17, v112
	scratch_load_b32 v17, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v3 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v230, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v112, v15, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v14, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v8, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v57, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v7
	v_ldexp_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v14, v14, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v22
	v_fma_f32 v30, -v22, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v26, v30, v26
	v_div_scale_f32 v30, s4, v0, v14, v0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v69, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v17, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v113, v11, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v8, v17
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v9, v9, v5
	v_div_scale_f32 v19, vcc_lo, v5, v9, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v13, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v10, v13, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_lshlrev_b32 v21, 16, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v13, v17, v13
	v_div_scale_f32 v17, null, v8, v8, v3
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v144, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v16, v16, v7
	v_rcp_f32_e32 v20, v17
	v_mul_f32_e32 v18, v19, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v24, -v10, v18, v19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v146
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v17, v20, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v24, v13
	v_div_scale_f32 v24, s1, v3, v8, v3
	v_fmac_f32_e32 v20, v25, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v10, v18, v19
	v_rcp_f32_e32 v25, v27
	v_mul_f32_e32 v19, v24, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v13, v18
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v13, -v17, v19, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v10, v9, v5
	v_fma_f32 v18, -v27, v25, 1.0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v144, v23
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v10.l, v57.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v19, v13, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v13, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v25, v18, v25
	v_div_scale_f32 v18, s5, v7, v16, v7
	v_fma_f32 v17, -v17, v19, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v6, v69, v6 :: v_dual_mul_f32 v31, v18, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v20, v19
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v32, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v27, v31, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v17, v8, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.h, v57.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v110, v6, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v127, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v32, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v21, v252, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v27, v31, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v19, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v19, 16, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v144, v19
	v_mul_f32_e32 v19, v127, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v13, v111
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v13, v30, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v111, v12, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v22, v13, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v24, v26
	v_fma_f32 v20, -v22, v13, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v13, v20, v26, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v18, v18, v25, v31
	v_div_fixup_f32 v0, v13, v14, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v13, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v127, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v18, v16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v23, v253, v12
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v21, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v21, 16, v148
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v12, v0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v12.l, v57.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v8, v0, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v8.h, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v144, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v28, v20, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v11, v20, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v6.h
	v_mov_b16_e32 v11.h, v57.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v4, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v4, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v11
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v11, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v13, v29, v13, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v6, v9, 0x7fff
	v_mov_b16_e32 v9.h, v57.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v15, v13, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:288
	scratch_load_b32 v15, off, off offset:140
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v41.l, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v7, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v3.h
	v_cmp_o_f32_e64 s0, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 1, v9
	v_add3_u32 v5, v3, v6, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v6, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v3.l, v57.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v42.l, 0x7fff, v5.h, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v10.h, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v57, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v9, v6, v108
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v12.h, v13.l
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v57, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v4, v7, v4, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e32 v7.h, v57.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v109, v4, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v189, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v8, 0xbfb8aa3b, v4 :: v_dual_and_b32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v0, v7, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v108, v6, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v144, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v42.h, 0x7fff, v7.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v6, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v7, v8, v160, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v69, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v12, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v7, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v7, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v6, v6
	v_mul_f32_e32 v11, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v3.h, v9.l
	v_mov_b16_e32 v9.l, v57.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v57, v3
	v_mul_f32_e32 v3, v69, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v15, v104
	scratch_load_b32 v15, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v104, v13, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v7, v8, v7, v107
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v8, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v107, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v9.h, v8.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v69, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v2, v127, v2 :: v_dual_mul_f32 v11, v57, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v12, v106
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v6, v6, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v127, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v188, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v106, v8, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v0
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v15, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v7, v2, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v187, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v7, null, v6, v6, v4
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v12, 0xbfb8aa3b, v2
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v8, v1, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v10, v7
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v69, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
	v_mul_f32_e32 v14, 0xbfb8aa3b, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v105, v11, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v8, v8, v15
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v7, v10, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v10, v15, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v12, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v15, null, v8, v8, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v18, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v12, v16
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, vcc_lo, v4, v6, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v15, v18, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v20, null, v12, v12, v2
	v_fmac_f32_e32 v18, v23, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v1
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v144, v21
	v_mul_f32_e32 v21, v127, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v14, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v20, v24, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v14, v14, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v16, v17, v10
	v_fmac_f32_e32 v24, v28, v24
	v_div_scale_f32 v28, s4, v2, v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v7, v16, v17
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v16, v22, v10
	v_div_scale_f32 v22, s1, v0, v8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v25, null, v14, v14, v1
	v_fma_f32 v7, -v7, v16, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v17, v22, v18
	v_rcp_f32_e32 v23, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v7, v10, v16
	v_fma_f32 v10, -v15, v17, v22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v7, v6, v4
	v_fmac_f32_e32 v17, v10, v18
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v10, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v25, v23, 1.0
	v_fma_f32 v15, -v15, v17, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v16, v23
	v_div_scale_f32 v16, s5, v1, v14, v1
	v_div_fmas_f32 v15, v15, v18, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:352
	scratch_load_b32 v30, off, off offset:124
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v29, v16, v23
	v_div_fixup_f32 v0, v15, v8, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.h, v57.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v9, v9, v10, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v10, v28, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v103, v9, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v20, v10, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v22, v24
	v_fma_f32 v18, -v20, v10, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v10, v18, v24, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v18, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v2, v10, v12, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v12, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v30, v102
	scratch_load_b32 v10, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v25, v29, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v102, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v29, v30, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v19, v17, v3
	scratch_load_b32 v19, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v25, v29, v16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v141
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v17, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v16, v23, v29
	v_div_fixup_f32 v1, v16, v14, v1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v16.l, v57.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v3, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v18, v26, v18, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v11, v18, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v11, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v10, v27, v10, v13
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v4, v5, v4 :: v_dual_lshlrev_b32 v5, 16, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v13, v10, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v10.l, v57.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v19, v21, v19, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v19, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v9, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v57.l
	v_mov_b16_e32 v8.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_and_b32_e32 v6, 1, v9
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v9.l, v57.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v3, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v7, v2, v8, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v2, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.h, v57.l
	v_cndmask_b16 v27.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v144, v5
	v_mul_f32_e32 v5, v127, v5
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v10.h, v11.l
	scratch_load_b32 v11, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v57, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v2, v3, v2, v101
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v1, v6, 0x7fff
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v57.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v101, v2, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v27.l, 0x7fff, v3.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v3, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v7, v7, v186, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v7, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v9.h, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v11, v57, v9 :: v_dual_and_b32 v6, 1, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v6, v4, v6, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v4, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v8
	v_cndmask_b16 v28.h, 0x7fff, v6.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v0, v8, 0x7fff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v0.l, v57.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v8, 16, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.l, 0x7fff, v2.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v144, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v11, v3, v100
	scratch_load_b32 v11, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v100, v3, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v6, v7, v175, v3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v69, v10
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v10, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v6, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v6, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v4, v4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v0.h, v10.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v7, v6, v99
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v7, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v99, v6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v176, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v6, v5, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v16.h, v7.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v69, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v7, v7, v11, v98
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v57, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v127, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v98, v7, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v12, v96
	scratch_load_b32 v12, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v6, v8, v177, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v7, v6, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v10, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v7, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v57, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v69, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v9, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v9, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v10, v12, v97
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v97, v10, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v10, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v96, v11, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v9, v9, v12
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v6
	v_ldexp_f32 v10, v10, v11
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v9, v9, v3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v4, v4, v1
	v_rcp_f32_e32 v21, v19
	v_div_scale_f32 v30, s4, v3, v9, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_div_scale_f32 v24, null, v11, v11, v5
	v_rcp_f32_e32 v26, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v12, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v12, v13
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, vcc_lo, v1, v4, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v23, v20, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v12, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v21, v13, v21 :: v_dual_lshlrev_b32 v22, 16, v142
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v10, -v17, v23, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v144, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v23, v10, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v17, v23, v20
	v_mul_f32_e32 v17, v30, v21
	v_fma_f32 v20, -v24, v26, 1.0
	v_div_scale_f32 v29, null, v12, v12, v6
	v_div_fmas_f32 v10, v10, v18, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v19, v17, v30
	v_fmac_f32_e32 v26, v20, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v15, v29
	v_div_scale_f32 v20, s5, v5, v11, v5
	v_fmac_f32_e32 v17, v18, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v18, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v1, v10, v4, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v57.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v19, -v19, v17, v30
	v_fma_f32 v23, -v29, v15, 1.0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v144, v25
	v_mul_f32_e32 v25, v127, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v19, v21, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:328
	scratch_load_b32 v32, off, off offset:84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v19, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v15, v23, v15
	v_div_scale_f32 v23, s1, v6, v12, v6
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v69, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v17, v9, v3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v9.l, v57.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v31, v23, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v16, v16, v18, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v18, v20, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v95, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v24, v18, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v21, v25, v21, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v18, v30, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v21, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v24, v18, v20
	v_div_fmas_f32 v18, v20, v26, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v5, v18, v11, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v11, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v13, v11, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v13, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v32, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v29, v31, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v127, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v94, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v32, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v22, v19, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v29, v31, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v19, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v15, v22, v15, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v22, 16, v137
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v15, v12, v6
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v12, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v20, v7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v144, v22
	v_mul_f32_e32 v22, v127, v22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v8, v11, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v16, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v7, v14, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.h, v57.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v11, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v6, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v8.h, v57.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v16, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v3.h
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s0, v3, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v7, v2, v7, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v5, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v2.h
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v9.h, v11.l
	v_mov_b16_e32 v11.l, v57.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v6, v57, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v6, v1, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.h, 0x7fff, v7.h, vcc_lo
	v_mov_b16_e32 v7.h, v57.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v6, 16, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v93, v5, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v8.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 1, v8
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v144, v6
	v_mul_f32_e32 v6, v127, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v0, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v185, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 1, v10
	v_cndmask_b16 v1.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v4, v2, v7, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v7, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v11.h, v12.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v8, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v0, v3, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v0.l, v57.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v57, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v2.l, 0x7fff, v0.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v4.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v10, v7, v92
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v10, 16, v139
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v92, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v144, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v4, v8, v184, v3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v69, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v9, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v4, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v4, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v7, v7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v0.h, v9.l
	v_mov_b16_e32 v9.l, v57.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v57, v0
	v_mul_f32_e32 v0, v69, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v16, v88
	scratch_load_b32 v16, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v4, v8, v4, v91
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v8, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v88, v14, s2
	v_cndmask_b32_e64 v4, v91, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v6, v6, v178, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v6, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v9.h, v8.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v69, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v8, v13, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_ldexp_f32 v7, v7, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v57, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v90, v8, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v16, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v69, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v89, v12, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v10, v127, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v13, v13, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v6, v10, v183, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v10, null, v7, v7, v5
	v_rcp_f32_e32 v25, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v8, v6, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v8, v11
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_ldexp_f32 v8, v8, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v10, v11, 1.0
	v_fmac_f32_e32 v25, v31, v25
	v_div_scale_f32 v31, s1, v4, v13, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v8, 1.0, v8 :: v_dual_fmac_f32 v11, v16, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, vcc_lo, v5, v7, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v16, null, v8, v8, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v19, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v15, v15, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v17, v18, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v16, v19, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v10, v17, v18
	v_fmac_f32_e32 v19, v24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v26, null, v15, v15, v6
	v_fmac_f32_e32 v17, v23, v11
	v_div_scale_f32 v23, s0, v3, v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v24, v26
	v_fma_f32 v10, -v10, v17, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v18, v23, v19
	v_div_fmas_f32 v10, v10, v11, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v11, -v16, v18, v23
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v17, -v26, v24, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v5, v10, v7, v5
	v_fmac_f32_e32 v18, v11, v19
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v11, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v24, v17, v24
	v_div_scale_f32 v17, s4, v6, v15, v6
	v_fma_f32 v16, -v16, v18, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v32, v17, v24
	v_div_fmas_f32 v16, v16, v19, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v18, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v16, v8, v3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:72
	scratch_load_b32 v33, off, off offset:36
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v8.l, v57.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v9, v9, v11, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v11, v31, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v87, v9, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v21, v11, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v11, v23, v25 :: v_dual_lshlrev_b32 v20, 16, v138
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v144, v20
	v_mul_f32_e32 v20, v127, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v19, -v21, v11, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v21, 16, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v11, v19, v25, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v19, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v0, v0, v33, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v26, v32, v17
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v11, v13, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:216
	scratch_load_b32 v35, off, off offset:172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v86, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v32, v33, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v13, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v20, v18, v0
	scratch_load_b32 v20, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v26, v32, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v144, v25
	v_mul_f32_e32 v25, v127, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v18, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v18, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v24, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v6, v17, v15, v6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v15.h, v16.l
	scratch_load_b32 v16, off, off offset:68 ; 4-byte Folded Reload
	v_mov_b16_e32 v15.l, v57.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.h, v57.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v11, v29, v11, v12
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v144, v21
	v_mul_f32_e32 v21, v127, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v22, v20, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v9, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v12, v11, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v12, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v9, v5 :: v_dual_and_b32 v6, 1, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v5, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v6, v4, v6, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v4, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v12.h, v57.l
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v8.h, v12.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v57, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v12
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v12, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v30, v13, v14
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v8, v69, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v0, v10, 0x7fff
	v_mov_b16_e32 v0.h, v57.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v14, v13, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v4, v7, v4, v85
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v7, 16, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v6.l, 0x7fff, v9.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v11, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v85, v4, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v144, v7
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v11.l, v57.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v7, v127, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v182, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v10, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v10, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v12.h, v57.l
	v_add3_u32 v0, v3, v0, 0x7fff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v11.h, v12.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v13, v57, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v12, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v11, v69, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v5, v9, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v18, v82
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v5.l, v57.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v82, v11, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v13, v10, v84
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v13, 16, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v84, v10, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v14, v144, v13
	v_mul_f32_e32 v13, v127, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v14, v14, v181, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v14, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v14, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v5.h, v16.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v57, v5
	v_mul_f32_e32 v5, v69, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v17, v20, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v80, v17, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v35, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v14, v83
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v57, v15
	v_mul_f32_e32 v15, v69, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v83, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v19, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v7, v7, v180, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v81, v14, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v12, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v8, v7, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v13, v179, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v11, v8, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v13, null, v12, v12, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v11, v16
	v_mul_f32_e32 v19, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v11, v11, v20
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v13, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v16, v20, v16
	v_div_scale_f32 v20, null, v11, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v20, v24, 1.0
	v_fmac_f32_e32 v24, v31, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v7
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v18, v18, v22
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, vcc_lo, v4, v12, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v22, v23, v16 :: v_dual_add_f32 v19, 1.0, v19
	v_fma_f32 v30, -v13, v22, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v33, null, v19, v19, v8
	v_fmac_f32_e32 v22, v30, v16
	v_div_scale_f32 v30, s1, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v33
	v_fma_f32 v13, -v13, v22, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v23, v30, v24
	v_div_fmas_f32 v13, v13, v16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v16, -v20, v23, v30
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v22, -v33, v31, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v13, v12, v4
	v_fmac_f32_e32 v23, v16, v24
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v16, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v22, v31
	v_div_scale_f32 v22, s5, v8, v19, v8
	v_fma_f32 v20, -v20, v23, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.h, v57.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v13, 0x7632 :: v_dual_mul_f32 v36, v22, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v24, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v23, off, off offset:156
	scratch_load_b32 v24, off, off offset:160
	scratch_load_b32 v37, off, off
	s_waitcnt vmcnt(3)
	v_fma_f32 v15, v15, v16, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v79, v15, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v24, v25, v24, v15
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v5, v37, v78
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v33, v36, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v24, s3
	v_cndmask_b32_e64 v5, v78, v5, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v37, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v23, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v33, v36, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v21, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v18, v18, v7
	v_rcp_f32_e32 v32, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v26, v32, 1.0
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s4, v7, v18, v7
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v16, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v26, v16, v35
	v_fmac_f32_e32 v16, v30, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v26, v16, v35
	v_div_fmas_f32 v16, v23, v32, v16
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v23, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v22, v22, v31, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v22, v19, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v0.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v8
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v16, v18, v7
	v_div_fixup_f32 v8, v20, v11, v10
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v57.l
	v_mov_b16_e32 v11.h, v57.l
	v_mov_b16_e32 v11.l, v5.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v15, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v17, v29, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v10.l, v7.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v15, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v23, v34, v23, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v23, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v3, v14, v4 :: v_dual_and_b32 v4, 1, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v11
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v12.l, v3.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v7, v4, 0x7fff
	scratch_load_b32 v7, off, off offset:16 ; 4-byte Folded Reload
	v_add3_u32 v0, v5, v10, 0x7fff
	v_and_b32_e32 v10, 1, v11
	v_and_b32_e32 v11, 1, v12
	v_cmp_o_f32_e64 s1, v3, v3
	v_mov_b32_e32 v12, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v8, v10, 0x7fff
	v_add3_u32 v10, v3, v11, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v3.l, 0x7fff, v0.h, s0
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s1
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v7, 16, v7
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_cndmask_b32_e32 v12, 0x1054, v12, vcc_lo
	v_cndmask_b32_e32 v13, 0x3276, v13, vcc_lo
	v_cndmask_b32_e32 v11, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_cndmask_b32_e32 v3, v132, v59, vcc_lo
	v_cmp_o_f32_e64 s2, v8, v8
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v13, v13, 8, v13
	v_cndmask_b32_e32 v8, v134, v41, vcc_lo
	v_cndmask_b32_e32 v10, v6, v27, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s2
	v_dual_cndmask_b32 v5, v133, v58 :: v_dual_and_b32 v12, 0x540054, v12
	v_dual_cndmask_b32 v6, v27, v6 :: v_dual_and_b32 v13, 0x760076, v13
	v_dual_cndmask_b32 v16, v124, v42 :: v_dual_cndmask_b32 v17, v9, v28
	v_cndmask_b32_e32 v9, v28, v9, vcc_lo
	v_cndmask_b32_e32 v18, v0, v2, vcc_lo
	v_cndmask_b32_e32 v0, v2, v0, vcc_lo
	v_permlanex16_b32 v2, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_lshl_or_b32 v12, v13, 4, v13
	v_dual_cndmask_b32 v4, v58, v133 :: v_dual_cndmask_b32 v7, v41, v134
	v_cndmask_b32_e32 v15, v42, v124, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 0x5040504, v8
	v_and_b32_e32 v21, 0x7060706, v12
	v_permlanex16_b32 v12, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v14, v59, v132, vcc_lo
	v_permlanex16_b32 v19, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v4, v20
	v_perm_b32 v1, v2, v4, v21
	v_perm_b32 v2, v5, v7, v20
	v_perm_b32 v3, v5, v7, v21
	v_perm_b32 v4, v6, v10, v20
	v_perm_b32 v5, v6, v10, v21
	v_perm_b32 v6, v13, v11, v20
	v_perm_b32 v7, v13, v11, v21
	v_perm_b32 v10, v12, v15, v20
	v_perm_b32 v11, v12, v15, v21
	v_perm_b32 v12, v16, v17, v20
	v_perm_b32 v13, v16, v17, v21
	v_add_lshl_u32 v16, v129, v126, 1
	v_add_lshl_u32 v17, v128, v126, 1
	v_perm_b32 v8, v19, v14, v20
	v_perm_b32 v9, v19, v14, v21
	v_perm_b32 v14, v22, v18, v20
	v_perm_b32 v15, v22, v18, v21
	v_add_lshl_u32 v18, v129, v125, 1
	v_add_lshl_u32 v19, v128, v125, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 580
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
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 580
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 37488
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 580
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 52
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 580
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 166
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
