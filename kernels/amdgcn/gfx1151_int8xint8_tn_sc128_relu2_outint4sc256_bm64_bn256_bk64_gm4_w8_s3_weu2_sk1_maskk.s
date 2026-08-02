	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 3, v0
	v_and_b32_e32 v62, 0xf0, v0
	v_and_b32_e32 v118, 15, v0
	v_lshrrev_b32_e32 v88, 2, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v122, 4, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v5, 4, v2
	v_lshrrev_b32_e32 v89, 2, v62
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v2, 4, v118
	v_or_b32_e32 v95, 0x3f0, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v46, 0, v122
	scratch_store_b32 off, v5, off          ; 4-byte Folded Spill
	v_or_b32_e32 v96, 0x7f0, v0
	v_or_b32_e32 v92, 0xbf0, v0
	v_or_b32_e32 v93, 0xff0, v0
	v_lshlrev_b32_e32 v94, 6, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[85:86], null, s35, v89, v[2:3]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[86:87], null, s35, 3, v[85:86]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v90, s35, 1, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s14, s13, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s13, s13, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s15, s7, s14
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s15, s15, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s13, s2
	s_abs_i32 s16, s15
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v88
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_cvt_u32_f32 s17, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s17, s18
	s_add_i32 s17, s17, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s13, s17
	s_xor_b32 s17, s2, s15
	s_mul_i32 s18, s12, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s13, s16
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s12, s12, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s12, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s15, s33, s15
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v89
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s15
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 25
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s14
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s31, 63
.Ltmp19:
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s47, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s3, s16
.Ltmp21:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s44, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s47, s12
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s12, v90
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v87, v1, v5, s44
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v86
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v85
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s18, s34, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s3
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v5, s18, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s35, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[6:9], v3, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v4, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v3, 0x80000000, v5, vcc_lo
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s45, s30, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[14:17], v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v1, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v2, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s45, v89
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v2, s12, v85
	v_add_nc_u32_e32 v3, s12, v90
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v86
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s12, s34, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x3
	buffer_load_b128 v[26:29], v2, s[20:23], 0 offen
	buffer_load_b128 v[30:33], v1, s[20:23], 0 offen
	buffer_load_b128 v[34:37], v3, s[20:23], 0 offen
	buffer_load_b128 v[38:41], v4, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s45, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 14, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v118
	v_or_b32_e32 v5, 48, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s18, s12, v87
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b128 v[42:45], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v4, v1, v89
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v97, v2, 10, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 32, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v98, 0x90, v97
	v_xor_b32_e32 v99, 0x120, v97
	v_xor_b32_e32 v100, 0x1b0, v97
	v_xor_b32_e32 v105, 0x210, v97
	v_add_nc_u32_e32 v47, 0, v97
	v_xor_b32_e32 v106, 0x330, v97
	v_xor_b32_e32 v107, 0x3a0, v97
	v_add_nc_u32_e32 v48, 0, v98
	v_add_nc_u32_e32 v49, 0, v99
	v_add_nc_u32_e32 v50, 0, v100
	v_add_nc_u32_e32 v51, 0, v105
	v_add_nc_u32_e32 v52, 0, v106
	v_add_nc_u32_e32 v53, 0, v107
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	v_add_nc_u32_e32 v60, 0x4000, v53
	s_waitcnt vmcnt(8)
	v_perm_b32 v61, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	v_perm_b32 v10, v11, v7, 0x4000501
	v_perm_b32 v7, v11, v7, 0x6020703
	v_perm_b32 v11, v12, v8, 0x4000501
	v_perm_b32 v8, v12, v8, 0x6020703
	v_perm_b32 v12, v13, v9, 0x4000501
	v_perm_b32 v9, v13, v9, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v46, v[14:17] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v13, v22, v18, 0x4000501
	v_perm_b32 v14, v22, v18, 0x6020703
	v_perm_b32 v15, v23, v19, 0x4000501
	v_perm_b32 v16, v23, v19, 0x6020703
	v_perm_b32 v17, v24, v20, 0x4000501
	v_perm_b32 v18, v24, v20, 0x6020703
	v_perm_b32 v19, v25, v21, 0x4000501
	v_perm_b32 v20, v25, v21, 0x6020703
	v_perm_b32 v21, v61, v13, 0x7060302
	v_perm_b32 v13, v61, v13, 0x5040100
	v_perm_b32 v22, v6, v14, 0x7060302
	v_perm_b32 v6, v6, v14, 0x5040100
	v_perm_b32 v14, v10, v15, 0x7060302
	v_perm_b32 v10, v10, v15, 0x5040100
	v_perm_b32 v15, v7, v16, 0x7060302
	v_perm_b32 v7, v7, v16, 0x5040100
	v_perm_b32 v16, v11, v17, 0x7060302
	v_perm_b32 v11, v11, v17, 0x5040100
	v_perm_b32 v17, v8, v18, 0x7060302
	v_perm_b32 v8, v8, v18, 0x5040100
	v_perm_b32 v18, v12, v19, 0x7060302
	v_perm_b32 v12, v12, v19, 0x5040100
	v_perm_b32 v19, v9, v20, 0x7060302
	v_perm_b32 v9, v9, v20, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v20, v30, v26, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v23, v38, v34, 0x4000501
	v_perm_b32 v24, v30, v26, 0x6020703
	v_perm_b32 v25, v38, v34, 0x6020703
	v_perm_b32 v26, v31, v27, 0x4000501
	v_perm_b32 v30, v39, v35, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v39, v35, 0x6020703
	v_perm_b32 v34, v32, v28, 0x4000501
	v_perm_b32 v35, v40, v36, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v40, v36, 0x6020703
	v_perm_b32 v36, v33, v29, 0x4000501
	v_perm_b32 v38, v41, v37, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v41, v37, 0x6020703
	ds_store_2addr_b32 v47, v21, v13 offset1:16
	ds_store_2addr_b32 v48, v22, v6 offset1:16
	ds_store_2addr_b32 v49, v14, v10 offset1:16
	ds_store_2addr_b32 v50, v15, v7 offset1:16
	ds_store_2addr_b32 v51, v16, v11 offset1:16
	ds_store_2addr_b32 v47, v17, v8 offset0:160 offset1:176
	ds_store_2addr_b32 v52, v18, v12 offset1:16
	ds_store_2addr_b32 v53, v19, v9 offset1:16
	v_perm_b32 v6, v23, v20, 0x7060302
	v_perm_b32 v7, v23, v20, 0x5040100
	v_perm_b32 v8, v25, v24, 0x7060302
	v_perm_b32 v9, v25, v24, 0x5040100
	v_perm_b32 v10, v30, v26, 0x7060302
	v_perm_b32 v11, v30, v26, 0x5040100
	v_perm_b32 v12, v31, v27, 0x7060302
	v_perm_b32 v13, v31, v27, 0x5040100
	v_perm_b32 v14, v35, v34, 0x7060302
	v_perm_b32 v15, v35, v34, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[42:45] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v16, v32, v28, 0x7060302
	v_perm_b32 v17, v32, v28, 0x5040100
	v_perm_b32 v18, v38, v36, 0x7060302
	v_perm_b32 v19, v38, v36, 0x5040100
	v_perm_b32 v20, v33, v29, 0x7060302
	v_perm_b32 v21, v33, v29, 0x5040100
	ds_store_2addr_b32 v54, v6, v7 offset1:16
	ds_store_2addr_b32 v55, v8, v9 offset1:16
	ds_store_2addr_b32 v56, v10, v11 offset1:16
	ds_store_2addr_b32 v57, v12, v13 offset1:16
	ds_store_2addr_b32 v58, v14, v15 offset1:16
	ds_store_2addr_b32 v54, v16, v17 offset0:160 offset1:176
	ds_store_2addr_b32 v59, v18, v19 offset1:16
	ds_store_2addr_b32 v60, v20, v21 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v198, 6, v0
	v_and_b32_e32 v6, 0x1800, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v113, 0x3f0, v0
	v_or_b32_e32 v114, 0x7f0, v0
	v_or_b32_e32 v115, 0xbf0, v0
	v_or_b32_e32 v116, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v200, 8, v0
	v_and_b32_e32 v197, 32, v0
	v_and_or_b32 v91, 0x1c0, v198, v6
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr198
                                        ; implicit-def: $vgpr200
                                        ; implicit-def: $vgpr197
                                        ; implicit-def: $vgpr91
.LBB0_3:                                ; %Flow94
	s_load_b128 s[24:27], s[0:1], 0x20
	v_or_b32_e32 v7, s44, v118
	v_or_b32_e32 v3, s44, v3
	v_or_b32_e32 v4, s44, v4
	v_or_b32_e32 v5, s44, v5
	s_ashr_i32 s0, s14, 7
	v_and_b32_e32 v6, 1, v0
	v_mul_lo_u32 v155, v7, s0
	v_mul_lo_u32 v141, v3, s0
	v_mul_lo_u32 v142, v4, s0
	v_mul_lo_u32 v143, v5, s0
	v_or_b32_e32 v152, s47, v0
	v_lshlrev_b32_e32 v103, 2, v62
	v_lshlrev_b32_e32 v101, 1, v2
	v_lshlrev_b32_e32 v104, 5, v6
	v_lshlrev_b32_e32 v102, 1, v62
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	v_bfe_i32 v3, v0, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s48, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x1800, v1
	v_and_b32_e32 v2, 48, v2
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v9, 0, v103, v104
	v_and_or_b32 v91, 0x1c0, v94, v1
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v110, 0, v102
	v_xor_b32_e32 v1, v3, v2
	v_and_b32_e32 v2, 0x420, v4
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v109, v9, v101
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v91, v1
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_xor_b32_e32 v108, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_mov_b32_e32 v184, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s10, s45, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s11, 1
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s48, s48, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s30
	s_mov_b32 s30, s45
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s45, s10, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v111, s49, v118
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s45, v88
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s45, s34, v[87:88]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[73:76], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v111 offset:832
	ds_load_u8 v10, v111 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:960
	ds_load_u8 v11, v111 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:576
	ds_load_u8 v12, v111 offset:512
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v111 offset:320
	ds_load_u8 v10, v111 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:704
	ds_load_u8 v13, v111 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v11
	ds_load_u8 v10, v111 offset:448
	ds_load_u8 v11, v111 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v111 offset:64
	ds_load_u8 v10, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:192
	ds_load_u8 v11, v111 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v111 offset:1856
	ds_load_u8 v10, v111 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:1984
	ds_load_u8 v11, v111 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:1600
	ds_load_u8 v12, v111 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v111 offset:1344
	ds_load_u8 v10, v111 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:1728
	ds_load_u8 v13, v111 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v111 offset:1472
	ds_load_u8 v11, v111 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v111 offset:1088
	ds_load_u8 v10, v111 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:1216
	ds_load_u8 v11, v111 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v29, v10, 16, v9
	v_xor_b32_e32 v10, 16, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s12, v108
	v_add_nc_u32_e32 v10, s12, v10
	ds_load_b128 v[57:60], v9
	ds_load_b128 v[61:64], v10
	ds_load_b128 v[77:80], v9 offset:8192
	ds_load_b128 v[81:84], v10 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v111 offset:848
	ds_load_u8 v26, v111 offset:784
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111 offset:976
	ds_load_u8 v27, v111 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v111 offset:592
	ds_load_u8 v28, v111 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v111 offset:336
	ds_load_u8 v26, v111 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v111 offset:720
	ds_load_u8 v29, v111 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v111 offset:464
	ds_load_u8 v27, v111 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v111 offset:16
	ds_load_u8 v26, v111 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v111 offset:208
	ds_load_u8 v27, v111 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v111 offset:1872
	ds_load_u8 v26, v111 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[57:60], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111 offset:2000
	ds_load_u8 v27, v111 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v111 offset:1616
	ds_load_u8 v28, v111 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v111 offset:1360
	ds_load_u8 v26, v111 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v111 offset:1744
	ds_load_u8 v29, v111 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v111 offset:1488
	ds_load_u8 v27, v111 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v111 offset:1104
	ds_load_u8 v26, v111 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111 offset:1232
	ds_load_u8 v27, v111 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v111 offset:864
	ds_load_u8 v42, v111 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v111 offset:992
	ds_load_u8 v43, v111 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v111 offset:608
	ds_load_u8 v44, v111 offset:544
	v_lshl_or_b32 v68, v42, 16, v41
	ds_load_u8 v41, v111 offset:352
	ds_load_u8 v42, v111 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v111 offset:736
	ds_load_u8 v45, v111 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v44, 16, v43
	ds_load_u8 v42, v111 offset:480
	ds_load_u8 v43, v111 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v66, v42, 16, v41
	ds_load_u8 v41, v111 offset:32
	ds_load_u8 v42, v111 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v111 offset:224
	ds_load_u8 v43, v111 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v42, 16, v41
	ds_load_u8 v41, v111 offset:1888
	ds_load_u8 v42, v111 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v111 offset:2016
	ds_load_u8 v43, v111 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v111 offset:1632
	ds_load_u8 v44, v111 offset:1568
	v_lshl_or_b32 v72, v42, 16, v41
	ds_load_u8 v41, v111 offset:1376
	ds_load_u8 v42, v111 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v111 offset:1760
	ds_load_u8 v45, v111 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v44, 16, v43
	ds_load_u8 v42, v111 offset:1504
	ds_load_u8 v43, v111 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v70, v42, 16, v41
	ds_load_u8 v41, v111 offset:1120
	ds_load_u8 v42, v111 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v111 offset:1248
	ds_load_u8 v43, v111 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[65:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v65, v111 offset:880
	ds_load_u8 v66, v111 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[69:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s49, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v111 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v111 offset:624
	ds_load_u8 v68, v111 offset:560
	v_lshl_or_b32 v115, v66, 16, v65
	ds_load_u8 v65, v111 offset:368
	ds_load_u8 v66, v111 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v111 offset:752
	ds_load_u8 v69, v111 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v68, 16, v67
	ds_load_u8 v66, v111 offset:496
	ds_load_u8 v67, v111 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_lshl_or_b32 v113, v66, 16, v65
	ds_load_u8 v65, v111 offset:48
	ds_load_u8 v66, v111 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v66, 0xc0c0004
	ds_load_u8 v66, v111 offset:240
	ds_load_u8 v67, v111 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v66, 16, v65
	ds_load_u8 v65, v111 offset:1904
	ds_load_u8 v66, v111 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s49, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v111 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v111 offset:1648
	ds_load_u8 v68, v111 offset:1584
	v_lshl_or_b32 v195, v66, 16, v65
	ds_load_u8 v65, v111 offset:1392
	ds_load_u8 v66, v111 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v111 offset:1776
	ds_load_u8 v69, v111 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v194, v68, 16, v67
	ds_load_u8 v66, v111 offset:1520
	ds_load_u8 v67, v111 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_lshl_or_b32 v193, v66, 16, v65
	ds_load_u8 v65, v111 offset:1136
	ds_load_u8 v66, v111 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v111 offset:1264
	ds_load_u8 v67, v111 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v192, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[65:72], v[57:60], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[61:64], v[192:195], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[112:115], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:2880
	ds_load_u8 v78, v111 offset:2816
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[192:195], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:3008
	ds_load_u8 v79, v111 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:2624
	ds_load_u8 v80, v111 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:2752
	ds_load_u8 v81, v111 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:2368
	ds_load_u8 v78, v111 offset:2304
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:2496
	ds_load_u8 v81, v111 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:2112
	ds_load_u8 v81, v111 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v111 offset:2240
	ds_load_u8 v82, v111 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	v_xor_b32_e32 v81, 32, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s12, v81
	ds_load_b128 v[81:84], v112
	ds_load_b128 v[112:115], v112 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[77:80], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[112:115], v[77:80], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:2896
	ds_load_u8 v78, v111 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:3024
	ds_load_u8 v79, v111 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:2640
	ds_load_u8 v80, v111 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:2768
	ds_load_u8 v116, v111 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:2384
	ds_load_u8 v78, v111 offset:2320
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:2512
	ds_load_u8 v116, v111 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:2128
	ds_load_u8 v116, v111 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v111 offset:2256
	ds_load_u8 v117, v111 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[112:115], v[77:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:2912
	ds_load_u8 v78, v111 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:3040
	ds_load_u8 v79, v111 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:2656
	ds_load_u8 v80, v111 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:2784
	ds_load_u8 v116, v111 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:2400
	ds_load_u8 v78, v111 offset:2336
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:2528
	ds_load_u8 v116, v111 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:2144
	ds_load_u8 v116, v111 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v111 offset:2272
	ds_load_u8 v117, v111 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[112:115], v[77:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:2928
	ds_load_u8 v78, v111 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v78, s49, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v111 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:2672
	ds_load_u8 v80, v111 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:2800
	ds_load_u8 v116, v111 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:2416
	ds_load_u8 v78, v111 offset:2352
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:2544
	ds_load_u8 v116, v111 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:2160
	ds_load_u8 v116, v111 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v111 offset:2288
	ds_load_u8 v117, v111 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[112:115], v[77:80], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:3904
	ds_load_u8 v78, v111 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:4032
	ds_load_u8 v79, v111 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:3648
	ds_load_u8 v80, v111 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:3776
	ds_load_u8 v81, v111 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:3392
	ds_load_u8 v78, v111 offset:3328
	v_lshl_or_b32 v79, v81, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:3520
	ds_load_u8 v81, v111 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:3136
	ds_load_u8 v81, v111 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v81, v77, 0xc0c0004
	ds_load_u8 v81, v111 offset:3264
	ds_load_u8 v82, v111 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v81, 16, v77
	v_xor_b32_e32 v81, 48, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s12, v81
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s45, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s12, s12, s47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v112
	ds_load_b128 v[112:115], v112 offset:8192
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[77:80], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[112:115], v[77:80], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:3920
	ds_load_u8 v78, v111 offset:3856
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:4048
	ds_load_u8 v79, v111 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:3664
	ds_load_u8 v80, v111 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:3792
	ds_load_u8 v116, v111 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:3408
	ds_load_u8 v78, v111 offset:3344
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:3536
	ds_load_u8 v116, v111 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:3152
	ds_load_u8 v116, v111 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v111 offset:3280
	ds_load_u8 v117, v111 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[112:115], v[77:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:3936
	ds_load_u8 v78, v111 offset:3872
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:4064
	ds_load_u8 v79, v111 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:3680
	ds_load_u8 v80, v111 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:3808
	ds_load_u8 v116, v111 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:3424
	ds_load_u8 v78, v111 offset:3360
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:3552
	ds_load_u8 v116, v111 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:3168
	ds_load_u8 v116, v111 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v111 offset:3296
	ds_load_u8 v117, v111 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v116, 16, v77
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[112:115], v[77:80], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v77, v111 offset:3952
	ds_load_u8 v78, v111 offset:3888
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v78, s49, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v111 offset:4016
	s_mov_b32 s49, s46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v111 offset:3696
	ds_load_u8 v80, v111 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v111 offset:3824
	ds_load_u8 v116, v111 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v111 offset:3440
	ds_load_u8 v78, v111 offset:3376
	v_lshl_or_b32 v79, v116, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v111 offset:3568
	ds_load_u8 v116, v111 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v116, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v111 offset:3184
	ds_load_u8 v116, v111 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v116, v77, 0xc0c0004
	ds_load_u8 v116, v111 offset:3312
	ds_load_u8 v111, v111 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v111, 16, v77
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[112:115], v[77:80], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v77, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s45, v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v78, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s35, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v81, v13
	v_cvt_f32_i32_e32 v79, v11
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s12, v85
	v_add_nc_u32_e32 v10, s12, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v80, v12
	v_cvt_f32_i32_e32 v82, v14
	v_cvt_f32_i32_e32 v83, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v84, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v115, v13, v9, 0x4000501
	v_perm_b32 v116, v13, v9, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s12, v90
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v117, v14, v10, 0x4000501
	v_perm_b32 v119, v14, v10, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s12, v86
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v120, v15, v11, 0x4000501
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_perm_b32 v121, v15, v11, 0x6020703
	v_perm_b32 v196, v16, v12, 0x4000501
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	v_perm_b32 v197, v16, v12, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s12, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 25
	s_add_i32 s14, s14, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s14, 7
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s0
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	s_add_i32 s15, s13, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v198, v13, v9, 0x4000501
	v_perm_b32 v199, v13, v9, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v152, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v200, v14, v10, 0x4000501
	v_perm_b32 v201, v14, v10, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v141, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v202, v15, v11, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v203, v15, v11, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v11, v142, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v204, v16, v12, 0x4000501
	v_perm_b32 v205, v16, v12, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v12, v143, s12, 1
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_lshlrev_b32 v9, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v109, v9 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v155, s12, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s12, s11, 12
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x3
	buffer_load_u16 v206, v9, s[36:39], 0 offen
	buffer_load_u16 v207, v10, s[36:39], 0 offen
	buffer_load_u16 v208, v11, s[36:39], 0 offen
	buffer_load_u16 v209, v12, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v110 offset:40960
	ds_load_b128 v[13:16], v110 offset:40976
	ds_load_b128 v[111:114], v110 offset:41472
	ds_load_b128 v[192:195], v110 offset:41488
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v210, s14, v122
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s1, s11, 14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s46, s14, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s48
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v210, v[73:76] offset:32768
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v74, 16, v207
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v75, 16, v208
	v_lshlrev_b32_e32 v73, 16, v206
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v209
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v210, v9, v74
	v_mul_f32_e32 v211, v10, v74
	v_mul_f32_e32 v212, v11, v74
	v_dual_mul_f32 v213, v12, v74 :: v_dual_mul_f32 v214, v9, v75
	v_mul_f32_e32 v206, v9, v73
	v_mul_f32_e32 v207, v10, v73
	v_mul_f32_e32 v208, v11, v73
	v_mul_f32_e32 v209, v12, v73
	v_mul_f32_e32 v9, v9, v76
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v218, v13, v73 :: v_dual_mul_f32 v215, v10, v75
	v_mul_f32_e32 v216, v11, v75
	v_dual_mul_f32 v217, v12, v75 :: v_dual_mul_f32 v10, v10, v76
	v_mul_f32_e32 v11, v11, v76
	v_dual_mul_f32 v12, v12, v76 :: v_dual_mul_f32 v219, v14, v73
	v_dual_mul_f32 v220, v15, v73 :: v_dual_mul_f32 v223, v14, v74
	v_dual_mul_f32 v221, v16, v73 :: v_dual_mul_f32 v222, v13, v74
	v_mul_f32_e32 v224, v15, v74
	v_dual_mul_f32 v225, v16, v74 :: v_dual_mul_f32 v226, v13, v75
	v_mul_f32_e32 v227, v14, v75
	v_dual_mul_f32 v228, v15, v75 :: v_dual_mul_f32 v13, v13, v76
	v_dual_mul_f32 v229, v16, v75 :: v_dual_mul_f32 v14, v14, v76
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v15, v15, v76 :: v_dual_mul_f32 v232, v113, v73
	v_dual_mul_f32 v16, v16, v76 :: v_dual_mul_f32 v233, v114, v73
	v_dual_mul_f32 v230, v111, v73 :: v_dual_mul_f32 v235, v112, v74
	v_dual_mul_f32 v231, v112, v73 :: v_dual_mul_f32 v234, v111, v74
	v_dual_mul_f32 v236, v113, v74 :: v_dual_mul_f32 v239, v112, v75
	v_dual_mul_f32 v237, v114, v74 :: v_dual_mul_f32 v238, v111, v75
	v_dual_mul_f32 v240, v113, v75 :: v_dual_mul_f32 v111, v111, v76
	v_dual_mul_f32 v241, v114, v75 :: v_dual_mul_f32 v112, v112, v76
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v113, v113, v76 :: v_dual_mul_f32 v242, v192, v73
	v_dual_mul_f32 v114, v114, v76 :: v_dual_mul_f32 v243, v193, v73
	v_dual_mul_f32 v244, v194, v73 :: v_dual_mul_f32 v245, v192, v74
	v_dual_mul_f32 v73, v195, v73 :: v_dual_mul_f32 v246, v193, v74
	v_dual_mul_f32 v247, v194, v74 :: v_dual_mul_f32 v248, v192, v75
	v_dual_mul_f32 v74, v195, v74 :: v_dual_mul_f32 v249, v193, v75
	v_dual_mul_f32 v250, v194, v75 :: v_dual_mul_f32 v193, v193, v76
	v_dual_mul_f32 v75, v195, v75 :: v_dual_mul_f32 v192, v192, v76
	v_mul_f32_e32 v194, v194, v76
	v_mul_f32_e32 v76, v195, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v195, v198, v115, 0x7060302
	v_perm_b32 v115, v198, v115, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v125, v208, v19 :: v_dual_add_nc_u32 v198, s1, v97
	v_fmac_f32_e32 v124, v207, v18
	v_dual_fmac_f32 v126, v209, v20 :: v_dual_fmac_f32 v123, v206, v17
	v_fmac_f32_e32 v128, v219, v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v198, v195, v115 offset1:16
	v_perm_b32 v115, v199, v116, 0x7060302
	v_perm_b32 v116, v199, v116, 0x5040100
	v_add_nc_u32_e32 v195, s1, v98
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v127, v218, v21 :: v_dual_fmac_f32 v132, v231, v78
	v_dual_fmac_f32 v129, v220, v23 :: v_dual_fmac_f32 v134, v233, v80
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v195, v115, v116 offset1:16
	v_perm_b32 v115, v200, v117, 0x7060302
	v_perm_b32 v116, v200, v117, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v130, v221, v24 :: v_dual_add_nc_u32 v117, s1, v99
	v_dual_fmac_f32 v131, v230, v77 :: v_dual_fmac_f32 v136, v243, v82
	v_dual_fmac_f32 v133, v232, v79 :: v_dual_fmac_f32 v138, v73, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v117, v115, v116 offset1:16
	v_perm_b32 v115, v201, v119, 0x7060302
	v_perm_b32 v116, v201, v119, 0x5040100
	v_add_nc_u32_e32 v117, s1, v100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v135, v242, v81 :: v_dual_fmac_f32 v140, v211, v34
	v_dual_fmac_f32 v137, v244, v83 :: v_dual_fmac_f32 v146, v222, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v117, v115, v116 offset1:16
	v_perm_b32 v115, v202, v120, 0x7060302
	v_perm_b32 v116, v202, v120, 0x5040100
	v_add_nc_u32_e32 v117, s1, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v139, v210, v33 :: v_dual_fmac_f32 v144, v212, v35
	v_dual_fmac_f32 v145, v213, v36 :: v_dual_fmac_f32 v148, v224, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v117, v115, v116 offset1:16
	v_perm_b32 v115, v203, v121, 0x7060302
	v_perm_b32 v116, v203, v121, 0x5040100
	v_add_nc_u32_e32 v117, s1, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v147, v223, v38 :: v_dual_fmac_f32 v150, v234, v25
	v_dual_fmac_f32 v149, v225, v40 :: v_dual_fmac_f32 v158, v247, v31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v198, v115, v116 offset0:160 offset1:176
	v_perm_b32 v115, v204, v196, 0x7060302
	v_perm_b32 v116, v204, v196, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v151, v235, v26 :: v_dual_fmac_f32 v154, v237, v28
	v_dual_fmac_f32 v153, v236, v27 :: v_dual_fmac_f32 v156, v245, v29
	v_dual_fmac_f32 v157, v246, v30 :: v_dual_fmac_f32 v162, v216, v51
	v_dual_fmac_f32 v159, v74, v32 :: v_dual_fmac_f32 v166, v228, v55
	v_dual_fmac_f32 v160, v214, v49 :: v_dual_fmac_f32 v161, v215, v50
	v_dual_fmac_f32 v163, v217, v52 :: v_dual_fmac_f32 v164, v226, v53
	v_dual_fmac_f32 v165, v227, v54 :: v_dual_fmac_f32 v168, v238, v41
	v_dual_fmac_f32 v167, v229, v56 :: v_dual_fmac_f32 v170, v240, v43
	v_dual_fmac_f32 v169, v239, v42 :: v_dual_fmac_f32 v172, v248, v45
	v_dual_fmac_f32 v171, v241, v44 :: v_dual_fmac_f32 v174, v250, v47
	v_dual_fmac_f32 v173, v249, v46 :: v_dual_fmac_f32 v178, v11, v67
	v_dual_fmac_f32 v175, v75, v48 :: v_dual_fmac_f32 v176, v9, v65
	v_dual_fmac_f32 v177, v10, v66 :: v_dual_fmac_f32 v180, v13, v69
	v_dual_fmac_f32 v179, v12, v68 :: v_dual_fmac_f32 v182, v15, v71
	v_dual_fmac_f32 v181, v14, v70 :: v_dual_fmac_f32 v184, v76, v64
	v_dual_fmac_f32 v183, v16, v72 :: v_dual_fmac_f32 v190, v193, v62
	v_dual_fmac_f32 v185, v111, v57 :: v_dual_fmac_f32 v186, v112, v58
	v_dual_fmac_f32 v187, v113, v59 :: v_dual_fmac_f32 v188, v114, v60
	v_fmac_f32_e32 v189, v192, v61
	v_fmac_f32_e32 v191, v194, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v9, v205, v197, 0x7060302
	v_perm_b32 v10, v205, v197, 0x5040100
	v_add_nc_u32_e32 v11, s1, v107
	ds_store_2addr_b32 v117, v115, v116 offset1:16
	ds_store_2addr_b32 v11, v9, v10 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v113, v95 :: v_dual_mov_b32 v114, v96
	v_dual_mov_b32 v115, v92 :: v_dual_and_b32 v200, 8, v0
	v_dual_mov_b32 v116, v93 :: v_dual_and_b32 v197, 32, v0
	v_mov_b32_e32 v198, v94
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v192, 0 :: v_dual_and_b32 v199, 6, v0
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v200
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v196, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v2, 3, v199
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v197
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v204, 0
	v_xor_b32_e32 v1, v1, v2
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v208, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v91, v1
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_xor_b32_e32 v109, v1, v3
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v106, 16, v109
	v_xor_b32_e32 v107, 32, v109
	v_xor_b32_e32 v108, 48, v109
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v252, 0
	v_mov_b32_e32 v251, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s16, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v110, s49, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v110 offset:832
	ds_load_u8 v2, v110 offset:768
	ds_load_u8 v3, v110 offset:960
	ds_load_u8 v4, v110 offset:896
	ds_load_u8 v5, v110 offset:576
	ds_load_u8 v6, v110 offset:512
	ds_load_u8 v7, v110 offset:704
	ds_load_u8 v8, v110 offset:640
	ds_load_u8 v9, v110 offset:320
	ds_load_u8 v10, v110 offset:256
	ds_load_u8 v11, v110 offset:448
	ds_load_u8 v12, v110 offset:384
	ds_load_u8 v13, v110 offset:64
	ds_load_u8 v14, v110
	ds_load_u8 v15, v110 offset:192
	ds_load_u8 v16, v110 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s12, v108
	v_add_nc_u32_e32 v18, s12, v109
	v_add_nc_u32_e32 v19, s12, v107
	v_add_nc_u32_e32 v20, s12, v106
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v117, s49, v113
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v28, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v12, v11, 0xc0c0004
	v_lshl_or_b32 v27, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v16, v15, 0xc0c0004
	v_lshl_or_b32 v26, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v25, v8, 16, v7
	v_mov_b32_e32 v1, s16
	ds_load_u8 v21, v110 offset:1856
	ds_load_u8 v22, v110 offset:1792
	ds_load_u8 v23, v110 offset:1984
	ds_load_u8 v24, v110 offset:1920
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v17 offset:8192
	ds_load_b128 v[93:96], v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v17
	ds_load_b128 v[73:76], v19
	ds_load_b128 v[81:84], v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	ds_load_u8 v60, v110 offset:2384
	ds_load_u8 v61, v110 offset:2320
	ds_load_u8 v62, v110 offset:2512
	ds_load_u8 v63, v110 offset:2448
	ds_load_u8 v64, v110 offset:2128
	ds_load_u8 v97, v110 offset:2064
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	ds_load_u8 v21, v110 offset:1600
	ds_load_u8 v22, v110 offset:1536
	ds_load_u8 v29, v110 offset:1728
	ds_load_u8 v30, v110 offset:1664
	ds_load_u8 v31, v110 offset:1344
	ds_load_u8 v33, v110 offset:1280
	ds_load_u8 v34, v110 offset:1472
	ds_load_u8 v35, v110 offset:1408
	ds_load_u8 v36, v110 offset:1088
	ds_load_u8 v37, v110 offset:1024
	ds_load_u8 v38, v110 offset:1216
	ds_load_u8 v39, v110 offset:1152
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v110 offset:2880
	ds_load_u8 v40, v110 offset:2816
	ds_load_u8 v41, v110 offset:3008
	ds_load_u8 v42, v110 offset:2944
	ds_load_u8 v43, v110 offset:2624
	ds_load_u8 v44, v110 offset:2560
	ds_load_u8 v45, v110 offset:2752
	ds_load_u8 v46, v110 offset:2688
	ds_load_u8 v47, v110 offset:2368
	ds_load_u8 v48, v110 offset:2304
	ds_load_u8 v49, v110 offset:2496
	ds_load_u8 v50, v110 offset:2432
	s_waitcnt lgkmcnt(33)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v23, 16, v17
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v21, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v22, v33, v31, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v35, v34, 0xc0c0004
	v_lshl_or_b32 v31, v21, 16, v17
	ds_load_u8 v17, v110 offset:2240
	ds_load_u8 v21, v110 offset:2176
	ds_load_u8 v34, v110 offset:2112
	ds_load_u8 v35, v110 offset:2048
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v33, v39, v38, 0xc0c0004
	v_lshl_or_b32 v30, v23, 16, v22
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v40, v24, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v23, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v24, v44, v43, 0xc0c0004
	v_lshl_or_b32 v29, v33, 16, v29
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v50, v49, 0xc0c0004
	ds_load_u8 v39, v110 offset:3904
	ds_load_u8 v40, v110 offset:3840
	ds_load_u8 v41, v110 offset:4032
	ds_load_u8 v42, v110 offset:3968
	ds_load_u8 v43, v110 offset:3648
	ds_load_u8 v44, v110 offset:3584
	ds_load_u8 v45, v110 offset:3776
	ds_load_u8 v46, v110 offset:3712
	ds_load_u8 v48, v110 offset:3392
	ds_load_u8 v49, v110 offset:3328
	v_lshl_or_b32 v36, v23, 16, v22
	ds_load_u8 v22, v110 offset:3136
	ds_load_u8 v23, v110 offset:3072
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	ds_load_u8 v21, v110 offset:3520
	ds_load_u8 v50, v110 offset:3456
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v35, v34, 0xc0c0004
	v_lshl_or_b32 v34, v38, 16, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[77:80], v19 offset:8192
	ds_load_b128 v[85:88], v20 offset:8192
	ds_load_b128 v[89:92], v18 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v37, v110 offset:16
	v_lshl_or_b32 v35, v33, 16, v24
	v_lshl_or_b32 v33, v17, 16, v47
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v42, v41, 0xc0c0004
	ds_load_u8 v38, v110 offset:3264
	ds_load_u8 v39, v110 offset:3200
	ds_load_u8 v40, v110 offset:848
	ds_load_u8 v41, v110 offset:784
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v19, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v24, v49, v48, 0xc0c0004
	v_lshl_or_b32 v44, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v23, v22, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v20, 16, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v50, v21, 0xc0c0004
	ds_load_u8 v45, v110 offset:976
	ds_load_u8 v46, v110 offset:912
	ds_load_u8 v47, v110 offset:592
	ds_load_u8 v48, v110 offset:528
	ds_load_u8 v49, v110 offset:720
	ds_load_u8 v50, v110 offset:656
	ds_load_u8 v51, v110 offset:336
	ds_load_u8 v52, v110 offset:272
	ds_load_u8 v53, v110 offset:464
	ds_load_u8 v54, v110 offset:400
	v_lshl_or_b32 v42, v21, 16, v24
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v110 offset:80
	ds_load_u8 v27, v110 offset:208
	ds_load_u8 v28, v110 offset:144
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v25, v39, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v29, v41, v40, 0xc0c0004
	ds_load_u8 v30, v110 offset:1872
	ds_load_u8 v31, v110 offset:1808
	ds_load_u8 v32, v110 offset:2000
	ds_load_u8 v38, v110 offset:1936
	ds_load_u8 v39, v110 offset:1616
	ds_load_u8 v40, v110 offset:1552
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_lshl_or_b32 v41, v25, 16, v55
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v47, v50, v49, 0xc0c0004
	v_lshl_or_b32 v48, v45, 16, v29
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v49, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v47, 16, v46
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[41:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v25, v37, v26, 0xc0c0004
	v_lshl_or_b32 v46, v50, 16, v49
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	ds_load_u8 v27, v110 offset:1744
	ds_load_u8 v28, v110 offset:1680
	ds_load_u8 v29, v110 offset:1360
	ds_load_u8 v33, v110 offset:1296
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v38, v32, 0xc0c0004
	v_cvt_f32_i32_e32 v192, v10
	v_lshl_or_b32 v45, v26, 16, v25
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v40, v39, 0xc0c0004
	ds_load_u8 v25, v110 offset:1488
	ds_load_u8 v26, v110 offset:1424
	ds_load_u8 v37, v110 offset:1104
	ds_load_u8 v38, v110 offset:1040
	ds_load_u8 v39, v110 offset:1232
	ds_load_u8 v40, v110 offset:1168
	ds_load_u8 v49, v110 offset:2896
	ds_load_u8 v53, v110 offset:2832
	ds_load_u8 v54, v110 offset:3024
	ds_load_u8 v55, v110 offset:2960
	ds_load_u8 v56, v110 offset:2640
	ds_load_u8 v57, v110 offset:2576
	ds_load_u8 v58, v110 offset:2768
	ds_load_u8 v59, v110 offset:2704
	v_lshl_or_b32 v52, v35, 16, v34
	v_cvt_f32_i32_e32 v195, v11
	v_cvt_f32_i32_e32 v196, v12
	v_cvt_f32_i32_e32 v201, v13
	v_cvt_f32_i32_e32 v202, v14
	v_cvt_f32_i32_e32 v203, v15
	v_cvt_f32_i32_e32 v204, v16
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v26, v25, 0xc0c0004
	v_cvt_f32_i32_e32 v205, v17
	v_cvt_f32_i32_e32 v206, v18
	v_cvt_f32_i32_e32 v207, v19
	v_perm_b32 v50, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	v_perm_b32 v33, v33, v29, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v53, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v50, 16, v36
	v_lshl_or_b32 v50, v98, 16, v33
	v_perm_b32 v33, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v59, v58, 0xc0c0004
	v_cvt_f32_i32_e32 v208, v20
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v110 offset:2256
	ds_load_u8 v34, v110 offset:2192
	v_lshl_or_b32 v56, v36, 16, v35
	v_lshl_or_b32 v55, v38, 16, v37
	v_perm_b32 v35, v61, v60, 0xc0c0004
	v_perm_b32 v36, v63, v62, 0xc0c0004
	v_perm_b32 v37, v97, v64, 0xc0c0004
	ds_load_u8 v57, v110 offset:3920
	ds_load_u8 v58, v110 offset:864
	ds_load_u8 v59, v110 offset:800
	ds_load_u8 v60, v110 offset:992
	ds_load_u8 v61, v110 offset:928
	ds_load_u8 v62, v110 offset:608
	ds_load_u8 v63, v110 offset:544
	ds_load_u8 v64, v110 offset:736
	ds_load_u8 v97, v110 offset:672
	ds_load_u8 v98, v110 offset:352
	ds_load_u8 v99, v110 offset:288
	ds_load_u8 v100, v110 offset:480
	ds_load_u8 v111, v110 offset:416
	ds_load_u8 v112, v110 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[49:52], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v209, v21
	v_lshl_or_b32 v54, v36, 16, v35
	v_cvt_f32_i32_e32 v210, v22
	v_cvt_f32_i32_e32 v211, v23
	v_cvt_f32_i32_e32 v212, v24
	v_cvt_f32_i32_e32 v213, v9
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v61, v60, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v53, v33, 16, v37
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[45:48], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v110 offset:32
	ds_load_u8 v45, v110 offset:48
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v46, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v47, v97, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[49:52], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v48, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v49, v111, v100, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[53:56], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v111, v112, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[53:56], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v47, 16, v46
	v_lshl_or_b32 v42, v49, 16, v48
	ds_load_u8 v46, v110 offset:96
	ds_load_u8 v47, v110 offset:224
	ds_load_u8 v48, v110 offset:160
	ds_load_u8 v49, v110 offset:880
	ds_load_u8 v50, v110 offset:816
	ds_load_u8 v51, v117
	ds_load_u8 v52, v110 offset:944
	ds_load_u8 v53, v110 offset:624
	ds_load_u8 v54, v110 offset:560
	ds_load_u8 v55, v110 offset:752
	ds_load_u8 v56, v110 offset:688
	ds_load_u8 v57, v110 offset:368
	ds_load_u8 v58, v110 offset:304
	ds_load_u8 v59, v110 offset:496
	ds_load_u8 v60, v110 offset:432
	ds_load_u8 v61, v110 offset:1888
	ds_load_u8 v62, v110 offset:112
	ds_load_u8 v63, v110 offset:240
	ds_load_u8 v64, v110 offset:176
	ds_load_u8 v97, v110 offset:1824
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v98, v52, v51, 0xc0c0004
	v_perm_b32 v41, v41, v46, 0xc0c0004
	v_perm_b32 v46, v48, v47, 0xc0c0004
	ds_load_u8 v47, v110 offset:2016
	ds_load_u8 v48, v110 offset:1952
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v99, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v117, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v41
	v_perm_b32 v46, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v45, v62, 0xc0c0004
	v_lshl_or_b32 v99, v117, 16, v99
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v59, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v112, v97, v61, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v46
	v_lshl_or_b32 v98, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v59, 16, v45
	v_wmma_i32_16x16x16_iu8 v[57:64], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[97:100], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v110 offset:1632
	ds_load_u8 v90, v110 offset:1568
	ds_load_u8 v91, v110 offset:1760
	ds_load_u8 v92, v110 offset:1696
	ds_load_u8 v93, v110 offset:1376
	ds_load_u8 v94, v110 offset:1312
	ds_load_u8 v95, v110 offset:1504
	ds_load_u8 v96, v110 offset:1440
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:4048
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v110 offset:3984
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v110 offset:3664
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v110 offset:3600
	v_lshl_or_b32 v91, v91, 16, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v92, v90, 0xc0c0004
	v_lshl_or_b32 v90, v95, 16, v93
	v_lshl_or_b32 v92, v117, 16, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v96, v94, 0xc0c0004
	ds_load_u8 v89, v110 offset:1120
	ds_load_u8 v93, v110 offset:1056
	ds_load_u8 v94, v110 offset:1248
	ds_load_u8 v95, v110 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v93, v89, 0xc0c0004
	ds_load_u8 v93, v110 offset:3792
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v110 offset:3728
	v_lshl_or_b32 v89, v94, 16, v89
	v_lshl_or_b32 v94, v97, 16, v111
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v111, s49, v116
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[89:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[89:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v110 offset:3472
	ds_load_u8 v90, v110 offset:1904
	ds_load_u8 v91, v110 offset:1840
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v92, s49, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v95, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v96
	ds_load_u8 v95, v110 offset:3408
	ds_load_u8 v96, v110 offset:3344
	ds_load_u8 v97, v110 offset:3536
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v97, 0xc0c0004
	ds_load_u8 v91, v92
	ds_load_u8 v92, v110 offset:1968
	ds_load_u8 v96, v110 offset:1648
	ds_load_u8 v97, v110 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v92, v110 offset:1776
	ds_load_u8 v97, v110 offset:1712
	v_lshl_or_b32 v98, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v97, v92, 0xc0c0004
	v_lshl_or_b32 v92, v89, 16, v95
	ds_load_u8 v89, v110 offset:1392
	ds_load_u8 v90, v110 offset:1328
	v_lshl_or_b32 v97, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:1520
	ds_load_u8 v91, v110 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v90, 16, v89
	ds_load_u8 v89, v110 offset:1136
	ds_load_u8 v90, v110 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:1264
	ds_load_u8 v91, v110 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v110 offset:3152
	ds_load_u8 v95, v110 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	v_lshl_or_b32 v95, v90, 16, v89
	ds_load_u8 v89, v110 offset:3280
	ds_load_u8 v90, v110 offset:3216
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[95:98], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v81, v110 offset:3040
	ds_load_u8 v82, v110 offset:2976
	ds_load_u8 v83, v110 offset:2656
	ds_load_u8 v84, v110 offset:2592
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[95:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v98, s49, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v110 offset:2912
	ds_load_u8 v99, v110 offset:2848
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	ds_load_u8 v83, v110 offset:2784
	ds_load_u8 v84, v110 offset:2720
	v_lshl_or_b32 v91, v89, 16, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[91:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[91:94], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v214, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v215, v26
	v_cvt_f32_i32_e32 v216, v27
	v_cvt_f32_i32_e32 v217, v28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v99, v90, 0xc0c0004
	v_cvt_f32_i32_e32 v218, v29
	v_cvt_f32_i32_e32 v219, v30
	v_cvt_f32_i32_e32 v220, v31
	v_cvt_f32_i32_e32 v221, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_lshl_or_b32 v84, v81, 16, v90
	v_cvt_f32_i32_e32 v222, v33
	v_cvt_f32_i32_e32 v223, v34
	v_cvt_f32_i32_e32 v224, v35
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v81, v110 offset:2400
	ds_load_u8 v82, v110 offset:2336
	v_cvt_f32_i32_e32 v225, v36
	v_cvt_f32_i32_e32 v226, v37
	v_cvt_f32_i32_e32 v227, v38
	v_cvt_f32_i32_e32 v228, v39
	v_cvt_f32_i32_e32 v229, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v110 offset:2528
	ds_load_u8 v89, v110 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v89, v82, 0xc0c0004
	ds_load_u8 v89, v110 offset:2144
	ds_load_u8 v90, v110 offset:2080
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v85, v110 offset:2272
	ds_load_u8 v86, v110 offset:2208
	ds_load_u8 v87, v110 offset:3936
	ds_load_u8 v88, v110 offset:3872
	ds_load_u8 v90, v110 offset:4064
	ds_load_u8 v95, v110 offset:4000
	ds_load_u8 v96, v110 offset:3680
	ds_load_u8 v97, v110 offset:3616
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v95, v90, 0xc0c0004
	v_lshl_or_b32 v81, v85, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v97, v96, 0xc0c0004
	ds_load_u8 v90, v110 offset:3808
	ds_load_u8 v95, v110 offset:3744
	ds_load_u8 v96, v110 offset:3424
	ds_load_u8 v97, v110 offset:3360
	v_lshl_or_b32 v87, v87, 16, v86
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[81:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[81:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v97, v96, 0xc0c0004
	ds_load_u8 v96, v110 offset:3552
	ds_load_u8 v97, v110 offset:3488
	v_lshl_or_b32 v86, v90, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v96, 16, v95
	ds_load_u8 v88, v110 offset:3168
	ds_load_u8 v89, v110 offset:3104
	ds_load_u8 v90, v110 offset:3296
	ds_load_u8 v95, v110 offset:3232
	ds_load_u8 v96, v110 offset:2928
	ds_load_u8 v97, v110 offset:2864
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v95, v90, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v97, v96, 0xc0c0004
	ds_load_u8 v82, v98
	ds_load_u8 v83, v110 offset:2992
	ds_load_u8 v84, v110 offset:2672
	ds_load_u8 v90, v110 offset:2608
	ds_load_u8 v95, v110 offset:2800
	ds_load_u8 v96, v110 offset:2736
	ds_load_u8 v97, v110 offset:2416
	ds_load_u8 v98, v110 offset:2352
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v90, v84, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v98, v97, 0xc0c0004
	ds_load_u8 v84, v110 offset:2544
	ds_load_u8 v96, v110 offset:2480
	ds_load_u8 v97, v110 offset:2160
	ds_load_u8 v98, v110 offset:2096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v96, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v98, v97, 0xc0c0004
	ds_load_u8 v84, v110 offset:2288
	ds_load_u8 v97, v110 offset:2224
	v_lshl_or_b32 v98, v82, 16, v81
	v_lshl_or_b32 v96, v96, 16, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v97, v84, 0xc0c0004
	v_lshl_or_b32 v84, v89, 16, v88
	v_lshl_or_b32 v97, v90, 16, v83
	ds_load_u8 v81, v110 offset:3952
	ds_load_u8 v82, v110 offset:3888
	ds_load_u8 v83, v111
	ds_load_u8 v88, v110 offset:4016
	ds_load_u8 v89, v110 offset:3696
	ds_load_u8 v90, v110 offset:3632
	v_lshl_or_b32 v95, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[84:87], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[84:87], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[95:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[95:98], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v230, v49
	v_cvt_f32_i32_e32 v231, v50
	v_cvt_f32_i32_e32 v232, v51
	v_cvt_f32_i32_e32 v233, v52
	v_cvt_f32_i32_e32 v234, v53
	v_cvt_f32_i32_e32 v235, v54
	v_cvt_f32_i32_e32 v236, v55
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_cvt_f32_i32_e32 v237, v56
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v88, v83, 0xc0c0004
	v_cvt_f32_i32_e32 v238, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v90, v89, 0xc0c0004
	ds_load_u8 v88, v110 offset:3824
	ds_load_u8 v89, v110 offset:3760
	ds_load_u8 v90, v110 offset:3440
	ds_load_u8 v99, v110 offset:3376
	v_cvt_f32_i32_e32 v239, v58
	v_lshl_or_b32 v76, v82, 16, v81
	v_cvt_f32_i32_e32 v240, v59
	v_cvt_f32_i32_e32 v241, v60
	v_cvt_f32_i32_e32 v242, v61
	v_cvt_f32_i32_e32 v243, v62
	v_cvt_f32_i32_e32 v244, v63
	v_cvt_f32_i32_e32 v245, v64
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v99, v90, 0xc0c0004
	ds_load_u8 v90, v110 offset:3568
	ds_load_u8 v99, v110 offset:3504
	v_lshl_or_b32 v75, v88, 16, v83
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v99, v90, 0xc0c0004
	ds_load_u8 v99, v110 offset:3184
	ds_load_u8 v100, v110 offset:3120
	v_lshl_or_b32 v74, v90, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v110 offset:3312
	ds_load_u8 v110, v110 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v110, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[73:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v110, v41
	v_cvt_f32_i32_e32 v111, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v112, v43
	v_cvt_f32_i32_e32 v246, v44
	v_cvt_f32_i32_e32 v247, v45
	v_cvt_f32_i32_e32 v248, v46
	v_cvt_f32_i32_e32 v249, v47
	v_cvt_f32_i32_e32 v250, v48
	v_cvt_f32_i32_e32 v117, v1
	v_cvt_f32_i32_e32 v121, v2
	v_cvt_f32_i32_e32 v194, v3
	v_cvt_f32_i32_e32 v119, v4
	v_cvt_f32_i32_e32 v193, v5
	v_cvt_f32_i32_e32 v120, v6
	v_cvt_f32_i32_e32 v251, v7
	v_cvt_f32_i32_e32 v252, v8
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v155, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v152, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v141, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v142, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x1
	buffer_load_u16 v255, v1, s[8:11], 0 offen
	buffer_load_u16 v1, v3, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v5, v143, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v254, 0, v102
	v_dual_mov_b32 v10, 0 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v95, v5, s[8:11], 0 offen
	v_mov_b32_e32 v61, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v54, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v8, 0
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	buffer_load_u16 v1, v4, s[8:11], 0 offen
	v_mov_b32_e32 v4, 0
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v103, v104
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v253, v1, v101
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v253, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v254 offset:40960
	ds_load_b128 v[69:72], v254 offset:40976
	ds_load_b128 v[73:76], v254 offset:41472
	ds_load_b128 v[77:80], v254 offset:41488
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v110, off offset:16
	scratch_store_b32 off, v111, off offset:20
	scratch_store_b32 off, v112, off offset:24
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s1, v108
	ds_load_b128 v[43:46], v1 offset:8192
	ds_load_b128 v[97:100], v1
	v_add_nc_u32_e32 v1, s1, v107
	ds_load_b128 v[47:50], v1 offset:8192
	ds_load_b128 v[101:104], v1
	v_add_nc_u32_e32 v1, s1, v106
	ds_load_b128 v[9:12], v1 offset:8192
	ds_load_b128 v[105:108], v1
	v_add_nc_u32_e32 v1, s1, v109
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v96, s46, v116
	v_dual_mov_b32 v63, v198 :: v_dual_add_nc_u32 v58, s46, v113
	v_mov_b32_e32 v64, v199
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[21:24], v1 offset:8192
	ds_load_b128 v[109:112], v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s46, v115
	scratch_store_b32 off, v192, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v192, s46, v118
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s46, v114
	s_waitcnt lgkmcnt(5)
	v_dual_mov_b32 v116, v50 :: v_dual_mov_b32 v115, v49
	v_mov_b32_e32 v114, v48
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v192 offset:832
	ds_load_u8 v2, v192 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v192 offset:960
	ds_load_u8 v3, v192 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v192 offset:576
	ds_load_u8 v2, v192 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v192 offset:704
	ds_load_u8 v3, v192 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v192 offset:320
	ds_load_u8 v2, v192 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v192 offset:448
	ds_load_u8 v3, v192 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v192 offset:64
	ds_load_u8 v2, v192
	ds_load_u8 v42, v192 offset:16
	ds_load_u8 v41, v192 offset:32
	ds_load_u8 v57, v192 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v192 offset:192
	ds_load_u8 v3, v192 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_mov_b32_e32 v1, s12
	v_mov_b32_e32 v3, s14
	ds_load_u8 v17, v192 offset:1856
	ds_load_u8 v18, v192 offset:1792
	v_mov_b32_e32 v2, s13
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[109:112], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:1984
	ds_load_u8 v19, v192 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v192 offset:1600
	ds_load_u8 v18, v192 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:1728
	ds_load_u8 v19, v192 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v192 offset:1344
	ds_load_u8 v18, v192 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:1472
	ds_load_u8 v19, v192 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v192 offset:1088
	ds_load_u8 v18, v192 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:1216
	ds_load_u8 v19, v192 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v192 offset:2880
	ds_load_u8 v18, v192 offset:2816
	v_wmma_i32_16x16x16_iu8 v[33:40], v[105:108], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_dual_mov_b32 v88, v40 :: v_dual_mov_b32 v87, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v82, v34
	v_dual_mov_b32 v86, v38 :: v_dual_mov_b32 v85, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v84, v36 :: v_dual_mov_b32 v83, v35
	v_mov_b32_e32 v81, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:3008
	ds_load_u8 v19, v192 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v192 offset:2624
	ds_load_u8 v18, v192 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:2752
	ds_load_u8 v19, v192 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v192 offset:2368
	ds_load_u8 v18, v192 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:2496
	ds_load_u8 v19, v192 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v192 offset:2112
	ds_load_u8 v18, v192 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:2240
	ds_load_u8 v19, v192 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v192 offset:3904
	ds_load_u8 v18, v192 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:4032
	ds_load_u8 v19, v192 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v192 offset:3648
	ds_load_u8 v18, v192 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:3776
	ds_load_u8 v19, v192 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v192 offset:3392
	ds_load_u8 v18, v192 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:3520
	ds_load_u8 v19, v192 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v192 offset:3136
	ds_load_u8 v18, v192 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v192 offset:3264
	ds_load_u8 v19, v192 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	v_mov_b32_e32 v20, v12
	v_mov_b32_e32 v18, v10
	v_wmma_i32_16x16x16_iu8 v[81:88], v[101:104], v[33:36], v[81:88] neg_lo:[1,1,0]
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v19, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[97:100], v[37:40], v[81:88] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[81:84], off offset:28
	scratch_store_b128 off, v[85:88], off offset:44
	v_wmma_i32_16x16x16_iu8 v[87:94], v[21:24], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v84, v46
	v_dual_mov_b32 v82, v44 :: v_dual_mov_b32 v83, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[9:12], v[29:32], v[87:94] neg_lo:[1,1,0]
	v_mov_b32_e32 v81, v43
	v_mov_b32_e32 v113, v47
	ds_load_u8 v25, v192 offset:848
	ds_load_u8 v26, v192 offset:784
	v_mov_b32_e32 v85, v236
	v_wmma_i32_16x16x16_iu8 v[87:94], v[47:50], v[33:36], v[87:94] neg_lo:[1,1,0]
	ds_load_u8 v33, v192 offset:1872
	ds_load_u8 v34, v192 offset:1808
	v_dual_mov_b32 v13, v81 :: v_dual_mov_b32 v14, v82
	v_mov_b32_e32 v9, v113
	v_wmma_i32_16x16x16_iu8 v[87:94], v[43:46], v[37:40], v[87:94] neg_lo:[1,1,0]
	v_dual_mov_b32 v10, v114 :: v_dual_mov_b32 v11, v115
	v_dual_mov_b32 v12, v116 :: v_dual_mov_b32 v15, v83
	v_mov_b32_e32 v236, v230
	v_mov_b32_e32 v16, v84
	v_mov_b32_e32 v230, v224
	v_mov_b16_e64 v86.l, v255.l
	v_mov_b32_e32 v255, v249
	v_mov_b32_e32 v249, v243
	v_dual_mov_b32 v243, v237 :: v_dual_mov_b32 v224, v218
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v192 offset:976
	ds_load_u8 v27, v192 offset:912
	v_mov_b32_e32 v218, v212
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:2000
	ds_load_u8 v35, v192 offset:1936
	v_mov_b32_e32 v212, v206
	v_mov_b32_e32 v206, v196
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v192 offset:592
	ds_load_u8 v26, v192 offset:528
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v192 offset:1616
	ds_load_u8 v34, v192 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v192 offset:720
	ds_load_u8 v27, v192 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:1744
	ds_load_u8 v35, v192 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v192 offset:336
	ds_load_u8 v26, v192 offset:272
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v192 offset:1360
	ds_load_u8 v34, v192 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v192 offset:464
	ds_load_u8 v27, v192 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:1488
	ds_load_u8 v35, v192 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v192 offset:80
	ds_load_u8 v26, v192 offset:208
	ds_load_u8 v27, v192 offset:144
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v192 offset:1104
	ds_load_u8 v34, v192 offset:1040
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:1232
	ds_load_u8 v35, v192 offset:1168
	v_lshl_or_b32 v42, v26, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[109:112], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v192 offset:2896
	ds_load_u8 v34, v192 offset:2832
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[46:49], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:3024
	ds_load_u8 v35, v192 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v192 offset:2640
	ds_load_u8 v34, v192 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:2768
	ds_load_u8 v35, v192 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v192 offset:2384
	ds_load_u8 v34, v192 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:2512
	ds_load_u8 v35, v192 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v192 offset:2128
	ds_load_u8 v34, v192 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:2256
	ds_load_u8 v35, v192 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v192 offset:3920
	ds_load_u8 v34, v192 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[101:104], v[50:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:4048
	ds_load_u8 v35, v192 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v192 offset:3664
	ds_load_u8 v34, v192 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:3792
	ds_load_u8 v35, v192 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v192 offset:3408
	ds_load_u8 v34, v192 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:3536
	ds_load_u8 v35, v192 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v192 offset:3152
	ds_load_u8 v34, v192 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v192 offset:3280
	ds_load_u8 v35, v192 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v192 offset:864
	ds_load_u8 v43, v192 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[17:20], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[113:116], v[50:53], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v192 offset:1888
	ds_load_u8 v50, v192 offset:1824
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[59:62], v[33:40] neg_lo:[1,1,0]
	v_dual_mov_b32 v81, v0 :: v_dual_mov_b32 v0, v253
	v_mov_b32_e32 v253, v247
	v_mov_b32_e32 v247, v241
	v_mov_b32_e32 v241, v235
	v_dual_mov_b32 v235, v229 :: v_dual_mov_b32 v82, v120
	v_dual_mov_b32 v229, v223 :: v_dual_mov_b32 v120, v118
	v_dual_mov_b32 v223, v217 :: v_dual_mov_b32 v118, v122
	v_mov_b32_e32 v217, v211
	v_dual_mov_b32 v211, v205 :: v_dual_mov_b32 v122, v119
	v_mov_b32_e32 v205, v195
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:2016
	ds_load_u8 v51, v192 offset:1952
	v_mov_b32_e32 v195, v197
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v192 offset:992
	ds_load_u8 v44, v192 offset:928
	v_mov_b32_e32 v83, v251
	v_mov_b32_e32 v251, v245
	v_mov_b32_e32 v245, v239
	v_mov_b32_e32 v239, v233
	v_mov_b32_e32 v233, v227
	v_dual_mov_b32 v227, v221 :: v_dual_mov_b32 v84, v252
	v_dual_mov_b32 v221, v215 :: v_dual_mov_b32 v252, v246
	v_dual_mov_b32 v215, v209 :: v_dual_mov_b32 v246, v240
	v_dual_mov_b32 v209, v203 :: v_dual_mov_b32 v240, v234
	v_dual_mov_b32 v119, v194 :: v_dual_mov_b32 v234, v228
	v_mov_b32_e32 v194, v121
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_dual_mov_b32 v121, v117 :: v_dual_mov_b32 v228, v222
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_dual_mov_b32 v117, v250 :: v_dual_mov_b32 v222, v216
	v_lshl_or_b32 v116, v50, 16, v49
	ds_load_u8 v49, v192 offset:1632
	ds_load_u8 v50, v192 offset:1568
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v192 offset:608
	ds_load_u8 v43, v192 offset:544
	v_mov_b32_e32 v250, v244
	v_mov_b32_e32 v244, v238
	v_mov_b32_e32 v238, v232
	v_mov_b32_e32 v232, v226
	v_mov_b32_e32 v226, v220
	v_mov_b32_e32 v220, v214
	v_mov_b32_e32 v214, v208
	v_dual_mov_b32 v208, v202 :: v_dual_mov_b32 v237, v231
	v_mov_b32_e32 v231, v225
	v_mov_b32_e32 v225, v219
	v_mov_b32_e32 v219, v213
	v_mov_b32_e32 v213, v207
	v_dual_mov_b32 v207, v201 :: v_dual_mov_b32 v216, v210
	v_mov_b32_e32 v210, v204
	v_mov_b32_e32 v204, v200
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:1760
	ds_load_u8 v51, v192 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v192 offset:736
	ds_load_u8 v44, v192 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v115, v50, 16, v49
	ds_load_u8 v49, v192 offset:1376
	ds_load_u8 v50, v192 offset:1312
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v192 offset:352
	ds_load_u8 v43, v192 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:1504
	ds_load_u8 v51, v192 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v192 offset:480
	ds_load_u8 v44, v192 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v114, v50, 16, v49
	ds_load_u8 v49, v192 offset:1120
	ds_load_u8 v50, v192 offset:1056
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v192 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:1248
	ds_load_u8 v51, v192 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v192 offset:224
	ds_load_u8 v43, v192 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v50, 16, v49
	ds_load_u8 v49, v192 offset:2912
	ds_load_u8 v50, v192 offset:2848
	v_lshl_or_b32 v59, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[109:112], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[105:108], v[113:116], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:3040
	ds_load_u8 v51, v192 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v50, 16, v49
	ds_load_u8 v49, v192 offset:2656
	ds_load_u8 v50, v192 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:2784
	ds_load_u8 v51, v192 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v50, 16, v49
	ds_load_u8 v49, v192 offset:2400
	ds_load_u8 v50, v192 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:2528
	ds_load_u8 v51, v192 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v50, 16, v49
	ds_load_u8 v49, v192 offset:2144
	ds_load_u8 v50, v192 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:2272
	ds_load_u8 v51, v192 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v50, 16, v49
	ds_load_u8 v49, v192 offset:3936
	ds_load_u8 v50, v192 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[196:199], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:4064
	ds_load_u8 v51, v192 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v203, v50, 16, v49
	ds_load_u8 v49, v192 offset:3680
	ds_load_u8 v50, v192 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:3808
	ds_load_u8 v51, v192 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v202, v50, 16, v49
	ds_load_u8 v49, v192 offset:3424
	ds_load_u8 v50, v192 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:3552
	ds_load_u8 v51, v192 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v201, v50, 16, v49
	ds_load_u8 v49, v192 offset:3168
	ds_load_u8 v50, v192 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v192 offset:3296
	ds_load_u8 v51, v192 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[21:24], v[59:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v59, v192 offset:880
	ds_load_u8 v60, v192 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[200:203], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[17:20], v[113:116], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[9:12], v[196:199], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v199, v64 :: v_dual_mov_b32 v198, v63
	v_wmma_i32_16x16x16_iu8 v[49:56], v[13:16], v[200:203], v[49:56] neg_lo:[1,1,0]
	v_mov_b32_e32 v203, v209
	v_mov_b32_e32 v209, v215
	v_mov_b32_e32 v215, v221
	v_mov_b32_e32 v221, v227
	v_mov_b32_e32 v227, v233
	v_mov_b32_e32 v233, v239
	v_dual_mov_b32 v239, v245 :: v_dual_mov_b32 v202, v208
	v_mov_b32_e32 v208, v214
	v_mov_b32_e32 v214, v220
	v_mov_b32_e32 v220, v226
	v_mov_b32_e32 v226, v232
	v_mov_b32_e32 v232, v238
	v_mov_b32_e32 v238, v244
	v_mov_b32_e32 v244, v250
	v_mov_b32_e32 v250, v117
	v_mov_b32_e32 v117, v121
	v_dual_mov_b32 v121, v194 :: v_dual_mov_b32 v194, v119
	v_mov_b32_e32 v119, v122
	v_mov_b32_e32 v122, v118
	v_mov_b32_e32 v118, v120
	v_mov_b32_e32 v120, v82
	scratch_load_b32 v82, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v58, v58
	ds_load_u8 v60, v192 offset:944
	v_dual_mov_b32 v245, v251 :: v_dual_mov_b32 v200, v204
	v_dual_mov_b32 v251, v83 :: v_dual_mov_b32 v204, v210
	v_mov_b32_e32 v201, v207
	v_mov_b32_e32 v207, v213
	v_mov_b32_e32 v213, v219
	v_mov_b32_e32 v219, v225
	v_mov_b32_e32 v225, v231
	v_mov_b32_e32 v231, v237
	v_mov_b32_e32 v237, v243
	v_mov_b32_e32 v243, v249
	v_mov_b32_e32 v249, v255
	v_mov_b16_e64 v255.l, v86.l
	v_mov_b32_e32 v210, v216
	v_mov_b32_e32 v216, v222
	v_mov_b32_e32 v222, v228
	v_mov_b32_e32 v228, v234
	v_mov_b32_e32 v234, v240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	v_mov_b32_e32 v240, v246
	v_mov_b32_e32 v246, v252
	v_mov_b32_e32 v252, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v116, v58, 16, v59
	ds_load_u8 v58, v192 offset:624
	ds_load_u8 v59, v192 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v192 offset:752
	ds_load_u8 v60, v192 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v59, 16, v58
	ds_load_u8 v58, v192 offset:368
	ds_load_u8 v59, v192 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v192 offset:496
	ds_load_u8 v60, v192 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v59, 16, v58
	ds_load_u8 v58, v192 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v192 offset:240
	ds_load_u8 v59, v192 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v109, v192 offset:1904
	ds_load_u8 v110, v192 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[21:24], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v92
	v_cvt_f32_i32_e32 v22, v93
	v_cvt_f32_i32_e32 v23, v94
	v_cvt_f32_i32_e32 v24, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v38, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_cvt_f32_i32_e32 v39, v40
	s_waitcnt vmcnt(0)
	ds_load_u8 v110, v82
	ds_load_u8 v111, v192 offset:1968
	scratch_load_b32 v82, off, off offset:60 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v110, 16, v109
	ds_load_u8 v109, v192 offset:1648
	ds_load_u8 v110, v192 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v192 offset:1776
	ds_load_u8 v111, v192 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v110, 16, v109
	ds_load_u8 v109, v192 offset:1392
	ds_load_u8 v110, v192 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v192 offset:1520
	ds_load_u8 v196, v192 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v196, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v110, 16, v109
	ds_load_u8 v109, v192 offset:1136
	ds_load_u8 v196, v192 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v196, v109, 0xc0c0004
	ds_load_u8 v196, v192 offset:1264
	ds_load_u8 v197, v192 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v196, 16, v109
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[109:112], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v105, v192 offset:2928
	ds_load_u8 v106, v192 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v112, off, off offset:24
	scratch_load_b32 v111, off, off offset:20
	scratch_load_b32 v110, off, off offset:16
	v_cvt_f32_i32_e32 v17, v88
	v_cvt_f32_i32_e32 v18, v89
	v_cvt_f32_i32_e32 v19, v90
	v_cvt_f32_i32_e32 v20, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt vmcnt(3)
	ds_load_u8 v106, v82
	ds_load_u8 v107, v192 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v192 offset:2672
	ds_load_u8 v106, v192 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v192 offset:2800
	ds_load_u8 v107, v192 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v106, 16, v105
	ds_load_u8 v105, v192 offset:2416
	ds_load_u8 v106, v192 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v192 offset:2544
	ds_load_u8 v196, v192 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v196, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v192 offset:2160
	ds_load_u8 v196, v192 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v196, v105, 0xc0c0004
	ds_load_u8 v196, v192 offset:2288
	ds_load_u8 v197, v192 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	v_mov_b32_e32 v197, v195
	v_mov_b32_e32 v195, v205
	v_mov_b32_e32 v205, v211
	v_mov_b32_e32 v211, v217
	v_lshl_or_b32 v105, v196, 16, v105
	v_mov_b32_e32 v217, v223
	v_mov_b32_e32 v223, v229
	v_mov_b32_e32 v229, v235
	v_mov_b32_e32 v235, v241
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[105:108], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v101, v192 offset:3952
	ds_load_u8 v102, v192 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[9:12], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v241, v247
	v_mov_b32_e32 v247, v253
	v_dual_mov_b32 v253, v0 :: v_dual_mov_b32 v0, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v96
	ds_load_u8 v103, v192 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v192 offset:3696
	ds_load_u8 v102, v192 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v192 offset:3824
	ds_load_u8 v103, v192 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v101
	ds_load_u8 v101, v192 offset:3440
	ds_load_u8 v102, v192 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v192 offset:3568
	ds_load_u8 v196, v192 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v196, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v192 offset:3184
	ds_load_u8 v196, v192 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v196, v101, 0xc0c0004
	ds_load_u8 v196, v192 offset:3312
	ds_load_u8 v192, v192 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v192, v196, 0xc0c0004
	v_mov_b32_e32 v196, v206
	v_mov_b32_e32 v206, v212
	v_mov_b32_e32 v212, v218
	v_mov_b32_e32 v218, v224
	v_lshl_or_b32 v101, v192, 16, v101
	scratch_load_b32 v192, off, off offset:12 ; 4-byte Folded Reload
	v_mov_b32_e32 v224, v230
	v_mov_b32_e32 v230, v236
	v_mov_b32_e32 v236, v85
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:28
	scratch_load_b128 v[13:16], off, off offset:44
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[101:104], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v64, v2
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v105, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v87
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s45, 31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v102, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s45, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v155, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v81, v152, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v141, s1, 1
	v_add_lshl_u32 v83, v142, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v84, v143, s1, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x3
	buffer_load_u16 v85, v2, s[8:11], 0 offen
	buffer_load_u16 v82, v82, s[8:11], 0 offen
	buffer_load_u16 v83, v83, s[8:11], 0 offen
	buffer_load_u16 v84, v84, s[8:11], 0 offen
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, 0
.Ltmp25:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v2.h, v95.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v81, v81, s[28:31], 0 offen
	s_mov_b32 s0, 0x76543210
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s8, s24
.Ltmp27:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v88, v78, v2
	v_mul_f32_e32 v86, v80, v2
	v_mul_f32_e32 v87, v79, v2
	v_mul_f32_e32 v89, v77, v2
	v_mul_f32_e32 v90, v76, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v86, v252, v184
	v_fma_f32 v87, v87, v251, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v184, v86, s3
	v_cndmask_b32_e64 v87, v191, v87, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v88, v120, v190
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v120, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v75, v2
	v_mul_f32_e32 v92, v74, v2
	v_mul_f32_e32 v93, v73, v2
	v_mul_f32_e32 v94, v72, v2
	v_mul_f32_e32 v95, v71, v2
	v_mul_f32_e32 v96, v70, v2
	v_mul_f32_e32 v97, v69, v2
	v_mul_f32_e32 v98, v68, v2
	v_mul_f32_e32 v99, v67, v2
	v_mul_f32_e32 v100, v66, v2
	v_mul_f32_e32 v101, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v2.h, v102.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v93, v117, v185
	v_fma_f32 v94, v94, v250, v183
	v_fma_f32 v95, v95, v249, v182
	v_fma_f32 v96, v96, v248, v181
	v_fma_f32 v97, v97, v247, v180
	v_fma_f32 v98, v98, v246, v179
	v_fma_f32 v99, v99, v112, v178
	v_fma_f32 v100, v100, v111, v177
	v_fma_f32 v101, v101, v110, v176
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v80, v2
	v_mul_f32_e32 v103, v79, v2
	v_mul_f32_e32 v104, v78, v2
	v_mul_f32_e32 v106, v77, v2
	v_mul_f32_e32 v107, v76, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v90, v90, v119, v188
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v108, v75, v2
	v_mul_f32_e32 v109, v74, v2
	v_mul_f32_e32 v110, v73, v2
	v_mul_f32_e32 v111, v72, v2
	v_mul_f32_e32 v112, v71, v2
	v_mul_f32_e32 v113, v70, v2
	v_mul_f32_e32 v114, v69, v2
	v_mul_f32_e32 v115, v68, v2
	v_mul_f32_e32 v116, v67, v2
	v_mul_f32_e32 v117, v66, v2
	v_mul_f32_e32 v119, v65, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v92, v121, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v185, v93, s3
	v_cndmask_b32_e64 v94, v183, v94, s3
	v_cndmask_b32_e64 v95, v182, v95, s3
	v_cndmask_b32_e64 v96, v181, v96, s3
	v_cndmask_b32_e64 v97, v180, v97, s3
	v_cndmask_b32_e64 v98, v179, v98, s3
	v_cndmask_b32_e64 v99, v178, v99, s3
	v_cndmask_b32_e64 v100, v177, v100, s3
	v_cndmask_b32_e64 v101, v176, v101, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v117, v117, v231, v161
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v119, v119, v230, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v117, v161, v117, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v89, v89, v193, v189
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v186, v92, s3
	v_cndmask_b32_e64 v90, v188, v90, s3
	v_cndmask_b32_e64 v119, v160, v119, s3
	v_cndmask_b32_e64 v88, v190, v88, s3
	v_cndmask_b32_e64 v89, v189, v89, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v120.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v121, v80, v2
	v_mul_f32_e32 v141, v79, v2
	v_mul_f32_e32 v142, v78, v2
	v_mul_f32_e32 v143, v77, v2
	v_mul_f32_e32 v152, v76, v2
	v_mul_f32_e32 v155, v75, v2
	v_mul_f32_e32 v176, v74, v2
	v_mul_f32_e32 v177, v73, v2
	v_mul_f32_e32 v178, v72, v2
	v_mul_f32_e32 v179, v71, v2
	v_mul_f32_e32 v180, v70, v2
	v_mul_f32_e32 v181, v69, v2
	v_mul_f32_e32 v182, v68, v2
	v_mul_f32_e32 v183, v67, v2
	v_mul_f32_e32 v184, v66, v2
	v_mul_f32_e32 v185, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v255.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v161, v177, v222, v150
	v_fma_f32 v160, v176, v223, v151
	v_fma_f32 v121, v121, v229, v159
	v_fma_f32 v141, v141, v228, v158
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v76, v2
	v_mul_f32_e32 v75, v75, v2
	v_mul_f32_e32 v74, v74, v2
	v_mul_f32_e32 v73, v73, v2
	v_mul_f32_e32 v65, v65, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v150, v150, v161, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v76, v208, v134
	v_fma_f32 v75, v75, v207, v133
	v_fma_f32 v74, v74, v206, v132
	v_fma_f32 v73, v73, v205, v131
	v_fma_f32 v161, v65, v213, v123
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v65, 16, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v134, v134, v76, s3
	v_cndmask_b32_e64 v133, v133, v75, s3
	v_cndmask_b32_e64 v132, v132, v74, s3
	v_cndmask_b32_e64 v131, v131, v73, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v253, v65 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v254 offset:41472
	v_mul_f32_e32 v80, v80, v2
	v_mul_f32_e32 v79, v79, v2
	v_mul_f32_e32 v78, v78, v2
	v_mul_f32_e32 v77, v77, v2
	v_mul_f32_e32 v66, v66, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v80, v212, v138
	v_fma_f32 v79, v79, v211, v137
	v_fma_f32 v78, v78, v210, v136
	v_fma_f32 v77, v77, v209, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v151, v151, v160, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v160, v66, v192, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v138, v80, s3
	v_cndmask_b32_e64 v137, v137, v79, s3
	v_cndmask_b32_e64 v136, v136, v78, s3
	v_cndmask_b32_e64 v135, v135, v77, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[77:80], v254 offset:41488
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v124, v124, v160, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v68, v68, v2
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v67, v67, v2 :: v_dual_mul_f32 v160, v73, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v121, v159, v121, s3
	v_cndmask_b32_e64 v141, v158, v141, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v158, v68, v196, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v159, v67, v195, v125
	v_fma_f32 v16, v160, v16, v131
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[65:68], v254 offset:40960
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v155, v155, v224, v153
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v72, v2
	v_mul_f32_e32 v70, v70, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v131, v16, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v69, v2
	v_mul_f32_e32 v193, v76, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v142, v142, v227, v157
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v153, v153, v155, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v16, v16, v16 :: v_dual_mul_f32 v71, v71, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v195, v78, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v152, v152, v225, v154
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v196, v79, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v143, v143, v226, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v142, v157, v142, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v69, v201, v127
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v152, v154, v152, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v154, v72, v204, v130
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v143, v156, v143, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v156, v70, v202, v128
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v16, 0, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v155, v71, v203, v129
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[69:72], v254 offset:40976
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v138, v66, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v91, v91, v194, v187
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v123, v123, v161, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v161, v74, v85
	v_mul_f32_e32 v191, v74, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v138, v9, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v187, v91, s3
	v_cndmask_b32_e64 v128, v128, v156, s3
	v_cndmask_b32_e64 v127, v127, v157, s3
	v_cndmask_b32_e64 v130, v130, v154, s3
	v_cndmask_b32_e64 v9, v124, v9, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v67, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v120, v125, v159, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v116, v116, v232, v162
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v129, v129, v155, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, v9, v9 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v126, v126, v158, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v116, v162, v116, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v187, v70, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v112, v112, v236, v166
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v186, v69, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v113, v113, v235, v165
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v176, v74, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v166, v112, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v166, v182, v217, v145
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v113, v165, v113, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v74, v74, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v165, v181, v218, v146
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v182, v65, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v145, v145, v166, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v166, v79, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v107, v241, v171
	v_fma_f32 v109, v109, v239, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v146, v146, v165, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v157, v70, v85
	v_mul_f32_e32 v189, v72, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v171, v107, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v171, v69, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v114, v114, v234, v164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v169, v109, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v169, v185, v214, v139
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v185, v68, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v110, v238, v168
	v_fma_f32 v28, v171, v28, v146
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v114, v164, v114, s3
	v_cndmask_b32_e64 v139, v139, v169, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v157, v13, v128
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v168, v110, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v168, v184, v215, v140
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v184, v67, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v111, v237, v167
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v146, v28, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v169, v67, v82
	v_mul_f32_e32 v67, v67, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v164, v180, v219, v147
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v167, v111, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v167, v183, v216, v144
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v183, v66, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v108, v240, v170
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v147, v164, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v77, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v103, v103, v244, v174
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v188, v71, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v115, v115, v233, v163
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v128, v13, s2
	v_cndmask_b32_e64 v108, v170, v108, s3
	v_cndmask_b32_e64 v103, v174, v103, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v159, v72, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v163, v115, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v170, v68, v82 :: v_dual_max_f32 v13, v13, v13
	v_mul_f32_e32 v174, v72, v82
	v_mul_f32_e32 v72, v72, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v163, v179, v220, v148
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v179, v77, v82
	v_mul_f32_e32 v165, v78, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v102, v245, v175
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v144, v144, v167, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v125, v65, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v179, v36, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v155, v68, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v175, v102, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v167, v65, v82
	v_mul_f32_e32 v65, v65, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v143, v36, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v175, v73, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v162, v178, v221, v149
	v_fma_f32 v15, v159, v15, v130
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v148, v148, v163, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v36, v36, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v175, v32, v150
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v149, v162, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v69, v85
	v_mul_f32_e32 v158, v71, v85
	v_mul_f32_e32 v162, v75, v85
	v_mul_f32_e32 v163, v76, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v104, v243, v173
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v85, v80, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v106, v242, v172
	v_fma_f32 v11, v155, v11, v126
	v_fma_f32 v17, v161, v17, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v130, v15, s2
	v_cndmask_b32_e64 v32, v150, v32, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v28, v28, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v169, v26, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v173, v104, s3
	v_cndmask_b32_e64 v106, v172, v106, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v172, v70, v82 :: v_dual_max_f32 v15, v15, v15
	v_dual_mul_f32 v173, v71, v82 :: v_dual_max_f32 v32, v32, v32
	v_mul_f32_e32 v177, v75, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v163, v19, v134
	v_fma_f32 v21, v165, v21, v136
	v_fma_f32 v27, v170, v27, v145
	v_fma_f32 v41, v183, v41, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v126, v11, s2
	v_cndmask_b32_e64 v17, v132, v17, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v178, v76, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v144, v26, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v13, 0, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v174, v31, v149
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v140, v140, v168, s3
	v_cndmask_b32_e64 v19, v134, v19, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v180, v78, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v136, v21, s2
	v_cndmask_b32_e64 v27, v145, v27, s2
	v_cndmask_b32_e64 v31, v149, v31, s2
	v_cndmask_b32_e64 v41, v117, v41, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v181, v79, v82
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v11, v11, v11 :: v_dual_mul_f32 v168, v66, v82
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v82, v80, v82 :: v_dual_max_f32 v21, v21, v21
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, 0, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v176, v33, v151
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v17, v17, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v35, v178, v35, v152
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_max_f32_e32 v32, 0, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v177, v34, v153
	v_fma_f32 v38, v181, v38, v141
	v_fma_f32 v39, v82, v39, v121
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v151, v33, s2
	v_cndmask_b32_e64 v35, v152, v35, s2
	v_cndmask_b32_e64 v34, v153, v34, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v19, v19, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v180, v37, v142
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v31, v31, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v190, v73, v83
	v_mul_f32_e32 v192, v75, v83
	v_mul_f32_e32 v75, v75, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v185, v43, v115
	v_fma_f32 v45, v187, v45, v113
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v142, v37, s2
	v_cndmask_b32_e64 v38, v141, v38, s2
	v_cndmask_b32_e64 v39, v121, v39, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v194, v77, v83
	v_mul_f32_e32 v83, v80, v83
	v_mul_f32_e32 v76, v76, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v182, v40, v119
	v_fma_f32 v42, v184, v42, v116
	v_fma_f32 v46, v188, v46, v112
	v_fma_f32 v48, v190, v48, v110
	v_fma_f32 v3, v75, v3, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v115, v43, s2
	v_cndmask_b32_e64 v45, v113, v45, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v33, 0, v33
	v_max_f32_e32 v75, 0, v35
	v_max_f32_e32 v35, v37, v37
	v_dual_max_f32 v37, v38, v38 :: v_dual_max_f32 v38, v39, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v186, v44, v114
	v_fma_f32 v51, v193, v51, v107
	v_fma_f32 v53, v195, v53, v104
	v_fma_f32 v55, v83, v55, v102
	v_fma_f32 v4, v76, v4, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v119, v40, s2
	v_cndmask_b32_e64 v42, v116, v42, s2
	v_cndmask_b32_e64 v46, v112, v46, s2
	v_cndmask_b32_e64 v48, v110, v48, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v76, 0, v38
	v_max_f32_e32 v38, v43, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v70, v84
	v_mul_f32_e32 v77, v77, v84
	v_mul_f32_e32 v79, v79, v84
	v_mul_f32_e32 v80, v80, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v191, v49, v109
	v_fma_f32 v50, v192, v50, v108
	v_fma_f32 v56, v65, v56, v101
	v_fma_f32 v58, v67, v58, v99
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v114, v44, s2
	v_cndmask_b32_e64 v51, v107, v51, s2
	v_cndmask_b32_e64 v53, v104, v53, s2
	v_cndmask_b32_e64 v55, v102, v55, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v39, v40, v40 :: v_dual_max_f32 v40, v41, v41
	v_max_f32_e32 v41, 0, v35
	v_max_f32_e32 v43, v46, v46
	v_dual_max_f32 v35, v42, v42 :: v_dual_max_f32 v42, v45, v45
	v_dual_max_f32 v45, 0, v38 :: v_dual_max_f32 v38, v48, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v78, v78, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v189, v47, v111
	v_fma_f32 v54, v196, v54, v103
	v_fma_f32 v61, v70, v61, v96
	v_fma_f32 v63, v72, v63, v94
	v_fma_f32 v5, v77, v5, v89
	v_fma_f32 v7, v79, v7, v87
	v_fma_f32 v8, v80, v8, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v109, v49, s2
	v_cndmask_b32_e64 v50, v108, v50, s2
	v_cndmask_b32_e64 v56, v101, v56, s2
	v_cndmask_b32_e64 v58, v99, v58, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v77, 0, v39
	v_dual_max_f32 v39, v44, v44 :: v_dual_max_f32 v82, 0, v38
	v_max_f32_e32 v38, v53, v53
	v_max_f32_e32 v80, 0, v43
	v_dual_max_f32 v43, v51, v51 :: v_dual_mul_f32 v66, v66, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v68, v68, v84
	v_mul_f32_e32 v69, v69, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v85, v23, v81
	v_fma_f32 v52, v194, v52, v106
	v_fma_f32 v6, v78, v6, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v111, v47, s2
	v_cndmask_b32_e64 v54, v103, v54, s2
	v_cndmask_b32_e64 v61, v96, v61, s2
	v_cndmask_b32_e64 v63, v94, v63, s2
	v_cndmask_b32_e64 v4, v90, v4, s2
	v_cndmask_b32_e64 v7, v87, v7, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v78, 0, v39
	v_max_f32_e32 v87, 0, v38
	v_dual_max_f32 v38, v58, v58 :: v_dual_max_f32 v85, 0, v43
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v43, v56, v56
	v_max_f32_e32 v39, v49, v49
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v71, v84
	v_mul_f32_e32 v73, v73, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v125, v105, v123
	v_fma_f32 v10, v154, v10, v120
	v_fma_f32 v12, v156, v12, v127
	v_fma_f32 v14, v158, v14, v129
	v_fma_f32 v18, v162, v18, v133
	v_fma_f32 v20, v164, v20, v135
	v_fma_f32 v22, v166, v22, v137
	v_fma_f32 v57, v66, v57, v100
	v_fma_f32 v59, v68, v59, v98
	v_fma_f32 v60, v69, v60, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v106, v52, s2
	v_cndmask_b32_e64 v3, v91, v3, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v11, 0, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v168, v25, v140
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v44, 0, v35
	v_max_f32_e32 v35, v47, v47
	v_dual_max_f32 v90, 0, v43 :: v_dual_max_f32 v43, v61, v61
	v_dual_max_f32 v91, 0, v38 :: v_dual_max_f32 v38, v63, v63
	v_max_f32_e32 v83, 0, v39
	v_max_f32_e32 v39, v54, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v167, v24, v139
	v_fma_f32 v29, v172, v29, v147
	v_fma_f32 v62, v71, v62, v95
	v_fma_f32 v1, v73, v1, v93
	v_fma_f32 v64, v74, v64, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v123, v84, s2
	v_cndmask_b32_e64 v10, v120, v10, s2
	v_cndmask_b32_e64 v12, v127, v12, s2
	v_cndmask_b32_e64 v14, v129, v14, s2
	v_cndmask_b32_e64 v18, v133, v18, s2
	v_cndmask_b32_e64 v20, v135, v20, s2
	v_cndmask_b32_e64 v22, v137, v22, s2
	v_cndmask_b32_e64 v23, v81, v23, s2
	v_cndmask_b32_e64 v25, v140, v25, s2
	v_cndmask_b32_e64 v57, v100, v57, s2
	v_cndmask_b32_e64 v59, v98, v59, s2
	v_cndmask_b32_e64 v60, v97, v60, s2
	v_cndmask_b32_e64 v6, v88, v6, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v81, 0, v35
	v_dual_max_f32 v35, v52, v52 :: v_dual_max_f32 v88, 0, v39
	v_max_f32_e32 v79, 0, v42
	v_max_f32_e32 v42, v50, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v173, v30, v148
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v139, v24, s2
	v_cndmask_b32_e64 v29, v147, v29, s2
	v_cndmask_b32_e64 v62, v95, v62, s2
	v_cndmask_b32_e64 v1, v93, v1, s2
	v_cndmask_b32_e64 v64, v92, v64, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v10, v10, v10
	v_max_f32_e32 v17, 0, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v86, v8, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v12, v12, v12
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v25, v25, v25
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v84, 0, v42
	v_max_f32_e32 v42, v55, v55
	v_dual_max_f32 v86, 0, v35 :: v_dual_max_f32 v35, v57, v57
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v39, v59, v59
	v_max_f32_e32 v4, 0, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v148, v30, s2
	v_cndmask_b32_e64 v5, v89, v5, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v65, 0, v65 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v23, v23, v23
	v_max_f32_e32 v18, 0, v18
	v_max_f32_e32 v20, 0, v20
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v29, v29, v29
	v_dual_max_f32 v89, 0, v42 :: v_dual_max_f32 v8, v8, v8
	v_max_f32_e32 v42, v60, v60
	v_max_f32_e32 v58, 0, v35
	v_dual_max_f32 v92, 0, v39 :: v_dual_max_f32 v35, v62, v62
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v39, v64, v64
	v_dual_max_f32 v3, v3, v3 :: v_dual_mul_f32 v46, v14, v14
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v29, 0, v29
	v_max_f32_e32 v36, 0, v36
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v93, 0, v42
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v98, v65, v65
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v94, 0, v43
	v_dual_max_f32 v96, 0, v38 :: v_dual_max_f32 v1, 0, v1
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v54, v18, v18 :: v_dual_max_f32 v3, 0, v3
	v_mul_f32_e32 v68, v25, v25
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_mul_f32 v64, v23, v23
	v_dual_max_f32 v7, v7, v7 :: v_dual_mul_f32 v74, v28, v28
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v38, v10, v10 :: v_dual_max_f32 v97, 0, v39
	v_dual_mul_f32 v60, v21, v21 :: v_dual_mul_f32 v39, v11, v11
	v_mul_f32_e32 v56, v36, v36
	v_dual_mul_f32 v42, v12, v12 :: v_dual_max_f32 v95, 0, v35
	v_dual_mul_f32 v50, v16, v16 :: v_dual_mul_f32 v35, v9, v9
	v_dual_mul_f32 v70, v31, v31 :: v_dual_mul_f32 v43, v13, v13
	v_dual_mul_f32 v62, v75, v75 :: v_dual_mul_f32 v51, v17, v17
	v_dual_mul_f32 v44, v44, v44 :: v_dual_mul_f32 v55, v19, v19
	v_dual_mul_f32 v48, v77, v77 :: v_dual_mul_f32 v59, v20, v20
	v_dual_mul_f32 v63, v22, v22 :: v_dual_mul_f32 v36, v80, v80
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v5, 0, v5
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v72, v27, v27
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v66, v33, v33
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v67, v24, v24
	v_dual_mul_f32 v73, v29, v29 :: v_dual_mul_f32 v28, v86, v86
	v_dual_mul_f32 v61, v34, v34 :: v_dual_mul_f32 v20, v93, v93
	v_dual_mul_f32 v57, v41, v41 :: v_dual_mul_f32 v22, v58, v58
	v_dual_mul_f32 v53, v37, v37 :: v_dual_mul_f32 v16, v96, v96
	v_dual_mul_f32 v49, v40, v40 :: v_dual_mul_f32 v18, v97, v97
	v_dual_mul_f32 v45, v45, v45 :: v_dual_mul_f32 v14, v3, v3
	v_dual_mul_f32 v40, v78, v78 :: v_dual_mul_f32 v17, v1, v1
	v_mul_f32_e32 v9, v4, v4
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v98, v35
	v_max3_f32 v3, v39, v42, v43
	v_max3_f32 v4, v51, v54, v55
	v_max3_f32 v12, v59, v60, v63
.Ltmp29:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v47, v15, v15 :: v_dual_mul_f32 v52, v76, v76
	v_mul_f32_e32 v71, v26, v26
	v_dual_mul_f32 v69, v30, v30 :: v_dual_mul_f32 v26, v89, v89
	v_dual_mul_f32 v65, v32, v32 :: v_dual_mul_f32 v24, v90, v90
	v_dual_mul_f32 v41, v79, v79 :: v_dual_mul_f32 v10, v5, v5
	v_dual_mul_f32 v32, v83, v83 :: v_dual_mul_f32 v37, v81, v81
	v_dual_mul_f32 v29, v84, v84 :: v_dual_mul_f32 v30, v85, v85
	v_mul_f32_e32 v27, v87, v87
	v_mul_f32_e32 v25, v88, v88
	v_mul_f32_e32 v11, v6, v6
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v38, v3
	v_max3_f32 v3, v4, v12, v64
	v_max_f32_e32 v4, v67, v68
	v_max3_f32 v6, v72, v74, v73
	v_max3_f32 v12, v66, v61, v62
	v_max3_f32 v13, v56, v57, v53
.Ltmp31:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v33, v82, v82 :: v_dual_max_f32 v34, v48, v49
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v58, v45, v40, v41
	v_max3_f32 v76, v28, v27, v25
	v_max3_f32 v4, v4, v71, v6
	v_max3_f32 v6, v12, v13, v52
.Ltmp33:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v7, v7
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v75, v32, v29, v30
	v_max3_f32 v5, v46, v47, v50
	v_max3_f32 v31, v69, v70, v65
	v_max3_f32 v77, v36, v37, v33
	v_max3_f32 v34, v34, v44, v58
	v_max3_f32 v58, v75, v76, v26
.Ltmp35:
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v19, v94, v94
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v5, v3
	v_max3_f32 v3, v4, v31, v6
.Ltmp37:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v21, v92, v92
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v4, v34, v77, v58
.Ltmp39:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v23, v91, v91
	v_mul_f32_e32 v13, v8, v8
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v24, v22
	v_max3_f32 v6, v21, v20, v19
	v_max3_f32 v8, v18, v14, v9
	v_max3_f32 v31, v10, v11, v12
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v34, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v75, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp42:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v15, v95, v95
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v58, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v5, v23, v6
	v_max3_f32 v6, v8, v31, v13
	v_max_f32_e32 v8, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v34, v75, v75 :: v_dual_max_f32 v31, v58, v58
.Ltmp45:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v82.h, v2.l
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v77, v4, v34 :: v_dual_and_b32 v4, 3, v0
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v8, 0x80, v0
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v15, v16, v17
	v_dual_max_f32 v76, v3, v31 :: v_dual_and_b32 v1, 4, v0
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v3, v4, 9, 0
	v_lshlrev_b32_e32 v4, 5, v4
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v5, v7, v6
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v7, 0x60, v0
	v_lshrrev_b32_e32 v79, 3, v8
	v_lshl_add_u32 v3, v1, 2, v3
	v_and_or_b32 v34, 0x680, v122, v4
	v_permlanex16_b32 v6, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v58, v4, v7
	v_lshl_add_u32 v80, v1, 6, 0
	v_lshl_add_u32 v3, v200, 4, v3
	v_xor_b32_e32 v34, v34, v7
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v31, v6, v6 :: v_dual_lshlrev_b32 v6, 1, v8
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v8, 0, v8
.Ltmp54:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v198, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v78, v5, v31
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v3, v3, v6, v58
	v_add3_u32 v5, v80, v79, v34
	v_lshlrev_b32_e32 v79, 3, v200
	ds_store_b128 v3, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v5
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v76
	v_dual_mov_b32 v3, v75 :: v_dual_max_f32 v58, v76, v76
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v34, v75, v75 :: v_dual_mov_b32 v31, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v31, v31 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, v58, v5
	v_dual_max_f32 v3, v34, v3 :: v_dual_max_f32 v34, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v77, v5 :: v_dual_mov_b32 v76, v3
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v31, v34, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v76, v76, v76
	v_max_f32_e32 v5, v5, v77
	v_max_f32_e32 v75, v78, v78
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v76
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v77, v5 :: v_dual_max_f32 v58, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v76, v3
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v34, v75, v58
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v58, v31
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v75, v34
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v58, v58, v58 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v31, v31, v58 :: v_dual_max_f32 v34, v34, v75
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v58, v31 :: v_dual_max_f32 v75, v76, v76
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v76, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v78, v34
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v75, v3, v75 :: v_dual_max_f32 v76, v5, v76
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v58, v58
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v58, 1, v7
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v78, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v77, v31, v3
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v78, v34, v5
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v8, v58, v79
	ds_store_b128 v5, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v3, v1, v79
	ds_load_b128 v[75:78], v1
.Ltmp81:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v75, v75
	v_dual_max_f32 v31, v77, v77 :: v_dual_max_f32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v31, 0x2b8cbccc, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v58, null, 0x40e00000, 0x40e00000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v5, v3
	v_rcp_f32_e32 v77, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v3, v5, 1.0
	v_fmac_f32_e32 v5, v8, v5
	v_div_scale_f32 v8, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v8, v5
	v_fma_f32 v75, -v3, v34, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v34, v75, v5 :: v_dual_max_f32 v75, 0x2b8cbccc, v76
	v_max_f32_e32 v76, 0x2b8cbccc, v78
	v_fma_f32 v3, -v3, v34, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v78, null, 0x40e00000, 0x40e00000, v75
	v_fma_f32 v8, -v58, v77, 1.0
	v_div_scale_f32 v83, s0, v75, 0x40e00000, v75
	v_div_fmas_f32 v3, v3, v5, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v5, v78
	v_div_scale_f32 v34, null, 0x40e00000, 0x40e00000, v76
	v_fmac_f32_e32 v77, v8, v77
	v_div_scale_f32 v8, vcc_lo, v31, 0x40e00000, v31
	v_rcp_f32_e32 v80, v34
	v_div_fixup_f32 v1, v3, 0x40e00000, v1
	v_div_scale_f32 v84, s1, v76, 0x40e00000, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v79, v8, v77
	v_fma_f32 v3, -v78, v5, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v82.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v81, -v58, v79, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v5, v3, v5
	v_fma_f32 v3, -v34, v80, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v81, v77
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v81, 1, v82
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v82, v83, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v3, v80
	v_fma_f32 v8, -v58, v79, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v81, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v78, v82, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v84, v80
	v_div_fmas_f32 v77, v8, v77, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v1, v5 :: v_dual_and_b32 v79, 0xffff0000, v3
	v_fma_f32 v1, -v34, v58, v84
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v77, 0x40e00000, v31
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v86, null, v79, v79, v39
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v77, -v78, v82, v83
	v_fmac_f32_e32 v58, v1, v80
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v78, null, v79, v79, v98
	v_div_scale_f32 v87, s0, v35, v79, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v77, v5, v82
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v77, v78
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v34, -v34, v58, v84
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v31.h
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v75, v1, 0x40e00000, v75
	v_div_fmas_f32 v1, v34, v80, v58
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v80, null, v79, v79, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v34, -v78, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v58, v1, 0x40e00000, v76
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v76.l, v75.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v81, v80
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v76.h, v2.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v77, v34, v77
	v_div_scale_f32 v34, vcc_lo, v98, v79, v98
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v31, v5, 0x7fff
	v_mov_b16_e32 v5.l, v58.h
	v_mov_b16_e32 v5.h, v2.l
	v_and_b32_e32 v2, 1, v76
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v76, v34, v77
	v_div_scale_f32 v82, null, v79, v79, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v83, 1, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v31, -v80, v81, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v75, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v84, -v78, v76, v34
	v_rcp_f32_e32 v85, v82
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v58, v83, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v81, v31, v81
	v_fmac_f32_e32 v76, v84, v77
	v_div_scale_f32 v90, null, v79, v79, v42
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v75, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v84, v87, v81
	v_fma_f32 v34, -v78, v76, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v82, v85, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v58, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v89, -v86, v83, 1.0
	v_fma_f32 v78, -v80, v84, v87
	v_div_fmas_f32 v34, v34, v77, v76
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s1, v38, v79, v38
	v_fmac_f32_e32 v83, v89, v83
	v_rcp_f32_e32 v77, v90
	v_div_scale_f32 v89, null, v79, v79, v43
	v_fmac_f32_e32 v84, v78, v81
	v_mul_f32_e32 v76, v88, v85
	v_div_scale_f32 v78, s2, v39, v79, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v80, -v80, v84, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v82, v76, v88
	v_mul_f32_e32 v91, v78, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v90, v77, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v80, v80, v81, v84
	v_fmac_f32_e32 v76, v87, v85
	v_fma_f32 v81, -v86, v91, v78
	v_fmac_f32_e32 v77, v93, v77
	v_div_scale_f32 v84, s0, v42, v79, v42
	v_fma_f32 v87, -v89, v92, 1.0
	v_div_fixup_f32 v35, v80, v79, v35
	v_fma_f32 v80, -v82, v76, v88
	v_fmac_f32_e32 v91, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v84, v77 :: v_dual_fmac_f32 v92, v87, v92
	v_div_scale_f32 v87, null, v79, v79, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v82, s3, v43, v79, v43
	v_div_fmas_f32 v76, v80, v85, v76
	v_fma_f32 v80, -v90, v81, v84
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v88, null, v79, v79, v47
	v_fma_f32 v78, -v86, v91, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v82, v92 :: v_dual_fmac_f32 v81, v80, v77
	v_rcp_f32_e32 v80, v88
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v38, v76, v79, v38
	v_div_fmas_f32 v78, v78, v83, v91
	v_fma_f32 v83, -v89, v86, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v87, v85, 1.0
	v_fma_f32 v76, -v90, v81, v84
	v_div_scale_f32 v84, null, v79, v79, v50
	v_div_fixup_f32 v39, v78, v79, v39
	v_fmac_f32_e32 v86, v83, v92
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v78, s1, v46, v79, v46
	v_fma_f32 v83, -v88, v80, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, null, v79, v79, v55
	v_div_fmas_f32 v76, v76, v77, v81
	v_fma_f32 v77, -v89, v86, v82
	v_dual_mul_f32 v81, v78, v85 :: v_dual_fmac_f32 v80, v83, v80
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v83, s0, v47, v79, v47
	v_div_scale_f32 v89, null, v79, v79, v51
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v90, v83, v80
	v_div_fmas_f32 v77, v77, v92, v86
	v_fma_f32 v86, -v87, v81, v78
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v82, 1.0
	v_div_fixup_f32 v42, v76, v79, v42
	v_fma_f32 v76, -v88, v90, v83
	v_fmac_f32_e32 v81, v86, v85
	v_div_fixup_f32 v43, v77, v79, v43
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v77, s2, v50, v79, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v78, -v87, v81, v78
	v_fma_f32 v91, -v89, v92, 1.0
	v_fmac_f32_e32 v90, v76, v80
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v76, v77, v82
	v_div_fmas_f32 v78, v78, v85, v81
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s3, v51, v79, v51
	v_fma_f32 v81, -v88, v90, v83
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v83, -v84, v76, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v91, v92
	v_div_fmas_f32 v80, v81, v80, v90
	v_rcp_f32_e32 v81, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v83, v82
	v_fma_f32 v83, -v89, v85, v91
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v47, v80, v79, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v84, v76, v77
	v_fmac_f32_e32 v85, v83, v92
	v_div_scale_f32 v83, null, v79, v79, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_fmas_f32 v76, v77, v82, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v89, v85, v91
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v77, v77, v92, v85
	v_fma_f32 v90, -v83, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v86, null, v79, v79, v54
	v_div_fixup_f32 v46, v78, v79, v46
	v_div_scale_f32 v89, null, v79, v79, v60
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v84, s1, v55, v79, v55
	v_div_fixup_f32 v50, v76, v79, v50
	v_div_scale_f32 v90, null, v79, v79, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v84, v81
	v_div_fixup_f32 v51, v77, v79, v51
	v_div_fixup_f32 v34, v34, v79, v98
	v_fma_f32 v88, -v86, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v93, v85, v84
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, s0, v54, v79, v54
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v85, v77, v81 :: v_dual_mul_f32 v78, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v86, v78, v88
	v_fmac_f32_e32 v78, v82, v87
	v_rcp_f32_e32 v82, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v86, v78, v88
	v_div_scale_f32 v86, s2, v59, v79, v59
	v_div_fmas_f32 v76, v76, v87, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v89, v82, 1.0
	v_rcp_f32_e32 v78, v90
	v_and_b32_e32 v101, 0xf0, v0
	v_mul_f32_e32 v77, v86, v80
	v_div_scale_f32 v87, s0, v60, v79, v60
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, null, v79, v79, v64
	v_div_fixup_f32 v54, v76, v79, v54
	v_fma_f32 v76, -v93, v85, v84
	v_fma_f32 v84, -v83, v77, v86
	v_mul_f32_e32 v91, v87, v82
	v_rcp_f32_e32 v92, v88
	v_fma_f32 v93, -v90, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v77, v84, v80
	v_div_fmas_f32 v76, v76, v81, v85
	v_fma_f32 v81, -v89, v91, v87
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v84, s1, v63, v79, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v55, v76, v79, v55
	v_fma_f32 v85, -v88, v92, 1.0
	v_fma_f32 v76, -v83, v77, v86
	v_fmac_f32_e32 v91, v81, v82
	v_mul_f32_e32 v81, v84, v78
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v83, s3, v64, v79, v64
	v_div_fmas_f32 v76, v76, v80, v77
	v_fma_f32 v77, -v89, v91, v87
	v_fma_f32 v80, -v90, v81, v84
	v_div_scale_f32 v89, null, v75, v75, v68
	v_mul_f32_e32 v87, v83, v92
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v78
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v77, v77, v82, v91
	v_fma_f32 v82, -v88, v87, v83
	v_div_fixup_f32 v59, v76, v79, v59
	v_fma_f32 v76, -v90, v81, v84
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v60, v77, v79, v60
	v_fmac_f32_e32 v87, v82, v92
	.loc	1 82 15 is_stmt 1               ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v101, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v76, v76, v78, v81
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v78, -v88, v87, v83
	v_div_scale_f32 v83, s1, v68, v75, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v82, v80
	v_div_fixup_f32 v63, v76, v79, v63
	v_div_fmas_f32 v78, v78, v92, v87
.Ltmp82:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v90, v83, v80
	v_div_scale_f32 v85, null, v75, v75, v67
	v_div_scale_f32 v77, s0, v67, v75, v67
	v_div_scale_f32 v84, null, v75, v75, v71
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v88, null, v75, v75, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v84
	v_div_fixup_f32 v64, v78, v79, v64
	v_fma_f32 v76, -v89, v90, v83
	v_rcp_f32_e32 v92, v88
	v_div_scale_f32 v79, null, v75, v75, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v90, v76, v80 :: v_dual_and_b32 v31, 0xffff0000, v2
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_scale_f32 v78, s2, v71, v75, v71
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v91, -v84, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v81, v77, v86
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v75, v75, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v85, v81, v77
	v_mul_f32_e32 v76, v78, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v88, v92, 1.0
	v_fma_f32 v77, -v85, v81, v77
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s3, v72, v75, v72
	v_div_fmas_f32 v77, v77, v86, v81
	v_fma_f32 v81, -v89, v90, v83
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v84, v76, v78
	v_mul_f32_e32 v86, v87, v92
	v_div_fixup_f32 v67, v77, v75, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v79, v85, 1.0
	v_div_fmas_f32 v80, v81, v80, v90
	v_rcp_f32_e32 v81, v91
	v_fmac_f32_e32 v76, v83, v82
	v_fma_f32 v83, -v88, v86, v87
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s0, v74, v75, v74
	v_div_fixup_f32 v68, v80, v75, v68
	v_fma_f32 v77, -v84, v76, v78
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v78, v89, v85
	v_fma_f32 v80, -v91, v81, 1.0
	v_div_scale_f32 v83, null, v75, v75, v69
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v73, v75, v73
	v_div_fmas_f32 v76, v77, v82, v76
	v_fma_f32 v77, -v88, v86, v87
	v_fma_f32 v82, -v79, v78, v89
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v87, null, v75, v75, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v82, v85
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v71, v76, v75, v71
	v_rcp_f32_e32 v82, v87
	v_div_fmas_f32 v77, v77, v92, v86
	v_mul_f32_e32 v86, v84, v81
	v_fma_f32 v76, -v79, v78, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v80, 1.0
	v_div_scale_f32 v89, null, v75, v75, v65
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v72, v77, v75, v72
	v_fma_f32 v77, -v91, v86, v84
	v_fmac_f32_e32 v80, v88, v80
	v_div_scale_f32 v79, s2, v69, v75, v69
	v_fma_f32 v88, -v87, v82, 1.0
	v_div_fmas_f32 v76, v76, v85, v78
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v77, v81 :: v_dual_mul_f32 v77, v79, v80
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v85, s0, v70, v75, v70
	v_div_scale_f32 v88, null, v75, v75, v66
	v_div_fixup_f32 v74, v76, v75, v74
	v_fma_f32 v76, -v91, v86, v84
	v_fma_f32 v84, -v83, v77, v79
	v_mul_f32_e32 v90, v85, v82
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v77, v84, v80
	v_div_fmas_f32 v76, v76, v81, v86
	v_fma_f32 v81, -v87, v90, v85
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s1, v65, v75, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v73, v76, v75, v73
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v76, -v83, v77, v79
	v_fmac_f32_e32 v90, v81, v82
	v_mul_f32_e32 v79, v84, v78
	v_div_scale_f32 v83, null, v75, v75, v61
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v81, s3, v66, v75, v66
	v_div_fmas_f32 v76, v76, v80, v77
	v_fma_f32 v77, -v87, v90, v85
	v_fma_f32 v80, -v89, v79, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v75, v75, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v81, v91 :: v_dual_fmac_f32 v79, v80, v78
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v77, v77, v82, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v88, v86, v81
	v_div_fixup_f32 v69, v76, v75, v69
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v76, -v89, v79, v84
	v_div_fixup_f32 v70, v77, v75, v70
	v_fmac_f32_e32 v86, v82, v91
	v_div_scale_f32 v77, s0, v61, v75, v61
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v82, -v87, v80, 1.0
	v_div_scale_f32 v84, null, v75, v75, v56
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v75, v75, v52
	v_div_fmas_f32 v76, v76, v78, v79
	v_fma_f32 v78, -v88, v86, v81
	v_dual_mul_f32 v79, v77, v85 :: v_dual_fmac_f32 v80, v82, v80
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s1, v62, v75, v62
	v_div_scale_f32 v88, null, v75, v75, v57
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v89, v82, v80
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v79, v77
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v81, 1.0
	v_div_fixup_f32 v65, v76, v75, v65
	v_fma_f32 v76, -v87, v89, v82
	v_fmac_f32_e32 v79, v86, v85
	v_div_fixup_f32 v66, v78, v75, v66
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s2, v56, v75, v56
	v_div_scale_f32 v86, null, v75, v75, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v77, -v83, v79, v77
	v_fmac_f32_e32 v89, v76, v80
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v76, v78, v81
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s3, v57, v75, v57
	v_div_fmas_f32 v77, v77, v85, v79
	v_fma_f32 v79, -v87, v89, v82
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v84, v76, v78
	v_mul_f32_e32 v85, v90, v91
	v_div_fixup_f32 v61, v77, v75, v61
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v76, v82, v81
	v_fma_f32 v82, -v88, v85, v90
	v_div_fixup_f32 v62, v79, v75, v62
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s0, v53, v75, v53
	v_fmac_f32_e32 v85, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v58, v58, v48
	v_fma_f32 v77, -v84, v76, v78
	v_mul_f32_e32 v78, v87, v83
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v84, s1, v52, v75, v52
	v_div_fmas_f32 v76, v77, v81, v76
	v_fma_f32 v77, -v88, v85, v90
	v_fma_f32 v81, -v86, v78, v87
	v_div_scale_f32 v88, null, v58, v58, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v56, v76, v75, v56
	v_fmac_f32_e32 v78, v81, v83
	v_rcp_f32_e32 v81, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_fma_f32 v76, -v86, v78, v87
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v58, v58, v44
	v_div_fixup_f32 v57, v77, v75, v57
	v_fma_f32 v77, -v92, v85, v84
	v_div_scale_f32 v86, s2, v48, v58, v48
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fmas_f32 v76, v76, v83, v78
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v85, v77, v80
	v_mul_f32_e32 v77, v86, v79
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v83, s0, v49, v58, v49
	v_div_scale_f32 v87, null, v58, v58, v45
	v_div_fixup_f32 v53, v76, v75, v53
	v_fma_f32 v76, -v92, v85, v84
	v_fma_f32 v84, -v82, v77, v86
	v_mul_f32_e32 v90, v83, v81
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v77, v84, v79
	v_div_fmas_f32 v76, v76, v80, v85
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s1, v44, v58, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v52, v76, v75, v52
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v75, -v82, v77, v86
	v_fmac_f32_e32 v90, v80, v81
	v_mul_f32_e32 v76, v84, v78
	v_div_scale_f32 v82, null, v58, v58, v40
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v80, s3, v45, v58, v45
	v_div_fmas_f32 v75, v75, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	v_fma_f32 v79, -v89, v76, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v58, v58, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v80, v91 :: v_dual_fmac_f32 v76, v79, v78
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v77, v77, v81, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v48, v75, v58, v48
	v_fma_f32 v88, -v82, v83, 1.0
	v_fma_f32 v75, -v89, v76, v84
	v_div_fixup_f32 v49, v77, v58, v49
	v_fmac_f32_e32 v85, v81, v91
	v_div_scale_f32 v77, s0, v40, v58, v40
	v_fmac_f32_e32 v83, v88, v83
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_scale_f32 v84, null, v58, v58, v36
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v85, v80
	v_mul_f32_e32 v78, v77, v83
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v81, s1, v41, v58, v41
	v_div_scale_f32 v87, null, v58, v58, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v76, v76, v91, v85
	v_fma_f32 v85, -v82, v78, v77
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fixup_f32 v44, v75, v58, v44
	v_fma_f32 v75, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v58, v58, v33
	v_div_fixup_f32 v45, v76, v58, v45
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v76, s2, v36, v58, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v75, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v75, v76, v80 :: v_dual_fmac_f32 v90, v89, v90
	v_div_scale_f32 v89, s3, v37, v58, v37
	v_div_fmas_f32 v77, v77, v83, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v58, v58, v32
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v84, v75, v76
	v_mul_f32_e32 v83, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v75, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v33, v58, v33
	v_div_fixup_f32 v40, v77, v58, v40
	v_div_fixup_f32 v41, v78, v58, v41
	v_fma_f32 v76, -v84, v75, v76
	v_fmac_f32_e32 v83, v81, v90
	v_mul_f32_e32 v77, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v58, v58, v29
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v32, v58, v32
	v_div_fmas_f32 v75, v76, v80, v75
	v_fma_f32 v76, -v87, v83, v89
	v_fma_f32 v80, -v85, v77, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v58, v58, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v80, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v36, v75, v58, v36
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_fma_f32 v75, -v85, v77, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v37, v76, v58, v37
	v_fma_f32 v76, -v91, v83, v84
	v_div_scale_f32 v85, s2, v29, v58, v29
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v58, v58, v28
	v_div_fmas_f32 v75, v75, v82, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v76, v79 :: v_dual_fmac_f32 v80, v86, v80
	v_rcp_f32_e32 v77, v88
	v_div_scale_f32 v86, null, v58, v58, v27
	v_mul_f32_e32 v76, v85, v78
	v_div_scale_f32 v82, s0, v30, v58, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v33, v75, v58, v33
	v_fma_f32 v75, -v91, v83, v84
	v_fma_f32 v84, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v79, v83
	v_fmac_f32_e32 v76, v84, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s1, v28, v58, v28
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v32, v75, v58, v32
	v_fma_f32 v75, -v81, v76, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v77 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v58, v58, v25
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v81, s3, v27, v58, v27
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v58, v58, v26
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v77
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v76, v76, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v29, v75, v58, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v75, -v88, v79, v83
	v_div_fixup_f32 v30, v76, v58, v30
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v76, s0, v25, v58, v25
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v88, null, v31, v31, v22
	v_div_fmas_f32 v75, v75, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	v_mul_f32_e32 v79, v76, v82
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v31, v31, v24
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v81, s1, v26, v58, v26
	v_div_fmas_f32 v77, v77, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v28, v75, v58, v28
	v_div_fixup_f32 v27, v77, v58, v27
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v75, -v87, v86, v81
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, null, v31, v31, v21
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v84, null, v31, v31, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v75, v78 :: v_dual_fmac_f32 v83, v85, v83
	v_div_scale_f32 v75, s2, v24, v31, v24
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v89, -v88, v77, 1.0
	v_div_fmas_f32 v76, v76, v82, v79
	v_fma_f32 v79, -v87, v86, v81
	v_mul_f32_e32 v81, v75, v83
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v77, v89, v77
	v_div_scale_f32 v82, s0, v22, v31, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v80, v81, v75
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_mul_f32_e32 v91, v82, v77
	v_fmac_f32_e32 v81, v89, v83
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s3, v23, v31, v23
	v_div_fixup_f32 v25, v76, v58, v25
	v_div_fixup_f32 v26, v78, v58, v26
	v_fma_f32 v58, -v80, v81, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v87, v85
	v_div_scale_f32 v78, null, v31, v31, v20
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v76, -v90, v92, 1.0
	v_fma_f32 v75, -v84, v86, v87
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v91, v79, v77 :: v_dual_fmac_f32 v92, v76, v92
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v78
	v_div_scale_f32 v76, s1, v21, v31, v21
	v_div_fmas_f32 v58, v58, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_div_scale_f32 v81, null, v31, v31, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v76, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v24, v58, v31, v24
	v_fma_f32 v82, -v78, v75, 1.0
	v_div_fmas_f32 v77, v79, v77, v91
	v_fma_f32 v79, -v84, v86, v87
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v76
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s0, v20, v31, v20
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	v_mul_f32_e32 v58, v82, v75
	v_div_fixup_f32 v22, v77, v31, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v77, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v78, v58, v82
	v_div_fixup_f32 v23, v79, v31, v23
	v_div_scale_f32 v79, null, v31, v31, v15
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s2, v19, v31, v19
	v_div_fmas_f32 v76, v76, v92, v80
	v_fmac_f32_e32 v58, v84, v75
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v77, v83
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v21, v76, v31, v21
	v_fma_f32 v76, -v78, v58, v82
	v_div_scale_f32 v84, null, v31, v31, v16
	v_fma_f32 v78, -v81, v80, v77
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v58, v76, v75, v58
	v_div_scale_f32 v75, null, v31, v31, v17
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v75
	v_div_scale_f32 v76, s0, v15, v31, v15
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v31, v31, v18
	v_div_fixup_f32 v20, v58, v31, v20
	v_fma_f32 v77, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v78, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v86, v58, v86
	v_div_scale_f32 v58, s1, v16, v31, v16
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v31, v31, v14
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v58, v86
	v_div_scale_f32 v89, s2, v17, v31, v17
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v58
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s3, v18, v31, v18
	v_div_fixup_f32 v19, v77, v31, v19
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v58, -v84, v83, v58
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s0, v14, v31, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v75, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	v_div_fmas_f32 v76, v76, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v80, v91
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v81, null, v31, v31, v9
	v_div_fmas_f32 v58, v58, v86, v83
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v76, v31, v15
	v_div_fmas_f32 v75, v75, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_rcp_f32_e32 v83, v81
	v_div_fixup_f32 v16, v58, v31, v16
	v_div_fixup_f32 v17, v75, v31, v17
	v_div_scale_f32 v75, null, v31, v31, v10
	v_fmac_f32_e32 v77, v82, v91
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v85, null, v31, v31, v13
	v_div_fmas_f32 v78, v78, v88, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v58, -v87, v77, v80
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v76, -v81, v83, 1.0
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v18, v78, v31, v18
	v_div_fmas_f32 v58, v58, v91, v77
	v_rcp_f32_e32 v77, v75
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v31, v31, v11
	v_div_scale_f32 v79, vcc_lo, v9, v31, v9
	v_div_fixup_f32 v14, v58, v31, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v80, v76
	v_div_scale_f32 v78, null, v31, v31, v12
	v_fma_f32 v58, -v75, v77, 1.0
	v_mul_f32_e32 v84, v79, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v91, -v85, v87, 1.0
	v_fmac_f32_e32 v77, v58, v77
	v_div_scale_f32 v58, s0, v10, v31, v10
	v_fma_f32 v88, -v81, v84, v79
	v_fma_f32 v86, -v76, v80, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v90, v58, v77
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v88, v83
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s1, v11, v31, v11
	v_fma_f32 v88, -v75, v90, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v89, -v78, v82, 1.0
	v_mul_f32_e32 v92, v86, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v90, v88, v77
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v58, -v75, v90, v58
	v_div_scale_f32 v89, s2, v12, v31, v12
	v_fma_f32 v81, -v76, v92, v86
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v58, v58, v77, v90
	v_mul_f32_e32 v93, v89, v82
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v90, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s3, v13, v31, v13
	v_div_fixup_f32 v10, v58, v31, v10
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v58, v60
	v_rndne_f32_e32 v60, v64
	v_rndne_f32_e32 v64, v68
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v78, v93, v89
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v76, -v76, v92, v86
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v85, v94, v91
	v_div_fmas_f32 v76, v76, v80, v92
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v92, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v88, v82
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v75, v87
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_cvt_i32_f32_e32 v84, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v64
	v_and_b32_e32 v64, 15, v92
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v78, v93, v89
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v79, v31, v9
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v76, v31, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v75, v31, v12
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v75, v36
	v_and_b32_e32 v36, 15, v62
	v_and_b32_e32 v62, 15, v90
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v77, v31, v13
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v34
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v59
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v71, v74
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v73, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v91, v15
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v45
	v_and_b32_e32 v45, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v73, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v78, v32
	v_cvt_i32_f32_e32 v79, v29
	v_cvt_i32_f32_e32 v96, v9
	v_and_b32_e32 v9, 15, v31
	v_and_b32_e32 v29, 15, v71
	v_and_b32_e32 v31, 15, v69
	v_and_b32_e32 v32, 15, v70
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v69, 10, v199
	v_lshlrev_b32_e32 v70, 6, v73
	v_lshlrev_b32_e32 v71, 4, v118
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v80, v30
	v_cvt_i32_f32_e32 v85, v24
	v_cvt_i32_f32_e32 v86, v22
	v_cvt_i32_f32_e32 v87, v23
	v_cvt_i32_f32_e32 v88, v21
	v_and_b32_e32 v30, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v71, v7
	v_add3_u32 v72, 0, v69, v70
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v77, v33
	v_cvt_i32_f32_e32 v93, v17
	v_cvt_i32_f32_e32 v94, v18
	v_cvt_i32_f32_e32 v95, v14
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_cvt_i32_f32_e32 v74, v41
	v_cvt_i32_f32_e32 v81, v28
	v_cvt_i32_f32_e32 v82, v27
	v_cvt_i32_f32_e32 v83, v25
	v_cvt_i32_f32_e32 v97, v10
	v_cvt_i32_f32_e32 v98, v11
	v_cvt_i32_f32_e32 v99, v12
	v_cvt_i32_f32_e32 v100, v13
	v_and_b32_e32 v10, 15, v34
	v_and_b32_e32 v11, 15, v35
	v_and_b32_e32 v12, 15, v38
	v_and_b32_e32 v13, 15, v39
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v16, 15, v46
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v63
	v_and_b32_e32 v27, 15, v67
	v_and_b32_e32 v28, 15, v68
	v_and_b32_e32 v38, 15, v57
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v42, 15, v49
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v6, v72, v7, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v89, v20
	v_and_b32_e32 v17, 15, v47
	v_and_b32_e32 v18, 15, v50
	v_and_b32_e32 v19, 15, v51
	v_and_b32_e32 v20, 15, v54
	v_and_b32_e32 v21, 15, v55
	v_and_b32_e32 v33, 15, v65
	v_and_b32_e32 v34, 15, v66
	v_and_b32_e32 v35, 15, v61
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_cvt_i32_f32_e32 v76, v37
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v6, v[9:12]
	ds_store_b128 v6, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v4
	ds_load_b128 v[17:20], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[25:28]
	ds_store_b128 v6, v[33:36] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[33:36], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[41:44]
	ds_store_b128 v6, v[49:52] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v4
	ds_load_b128 v[49:52], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[57:60]
	ds_store_b128 v6, v[65:68] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v4
	ds_load_b128 v[65:68], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[13:16]
	ds_store_b128 v6, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v4
	ds_load_b128 v[21:24], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v56
	v_and_b32_e32 v39, 15, v53
	v_and_b32_e32 v46, 15, v74
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v48, 15, v76
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[29:32]
	ds_store_b128 v6, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v4
	ds_load_b128 v[37:40], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v63, 15, v91
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[45:48]
	ds_store_b128 v6, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v4
	ds_load_b128 v[53:56], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[61:64]
	ds_store_b128 v6, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v4
	ds_load_b128 v[69:72], v4 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v17, 4, v9
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v118
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	s_mul_i32 s2, s44, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_lshlrev_b16 v6.l, 8, v11.l
	v_and_b16 v6.h, 0xff, v10.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v28, v55, 4, v47
	v_lshl_or_b32 v29, v56, 4, v48
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v8
	v_add3_u32 v41, v8, s1, v38
	v_add3_u32 v42, v8, s2, v38
	v_add3_u32 v38, v8, s0, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v21.l
	v_and_b16 v5.l, 0xff, v20.l
	v_lshlrev_b16 v6.l, 8, v19.l
	v_and_b16 v6.h, 0xff, v18.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v30, v65, 4, v57
	v_lshl_or_b32 v31, v66, 4, v58
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v37, v71, 4, v63
	v_lshl_or_b32 v39, v72, 4, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v40, s[8:11], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v4.l, 0xff, v22.l
	v_lshlrev_b16 v4.h, 8, v29.l
	v_and_b16 v5.l, 0xff, v28.l
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	buffer_store_b64 v[7:8], v41, s[8:11], 0 offen
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v4.l, 0xff, v30.l
	v_lshlrev_b16 v4.h, 8, v39.l
	v_and_b16 v5.l, 0xff, v37.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v34, v69, 4, v61
	v_lshl_or_b32 v35, v70, 4, v62
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_or_b16 v9.l, v4.l, v3.l
	v_or_b16 v10.h, v5.l, v4.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v73
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	buffer_store_b64 v[7:8], v42, s[8:11], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v7, 4, v197
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v36
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v4, v7, v36
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s44
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v38, s[8:11], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
.Ltmp84:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp85:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 72
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 72
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35776
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 72
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x93 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x6d DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x75:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 72
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 17
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
