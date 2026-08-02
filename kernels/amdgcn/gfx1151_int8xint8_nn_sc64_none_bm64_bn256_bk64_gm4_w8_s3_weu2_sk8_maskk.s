	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_mov_b32_e32 v255, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v253, 4, v255
	v_and_b32_e32 v0, 48, v253
	v_and_b32_e32 v2, 0xf0, v255
	v_lshrrev_b32_e32 v4, 2, v255
	v_lshlrev_b32_e32 v108, 5, v255
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v101, 2, v2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s35, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v255
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_min_i32 s6, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v3, s17
	v_readfirstlane_b32 s17, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v3, s27, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v101
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v102, v1, 4, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s10
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s17, s18
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v103, s33, v102
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s27, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s4, s6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp19:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s2, s7
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s27, 0x1ff
.Ltmp21:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s40, s3, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s26, v0
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s45, s4, 8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s4, s40, s27
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s26, v101
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v104, v3, v0, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s45, s18
	s_lshl_b32 s34, s35, 1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s7, v102
	v_add_nc_u32_e32 v105, s34, v102
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s27, v5
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s26, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s35, v3
	v_add_nc_u32_e32 v7, s7, v105
	v_add_nc_u32_e32 v5, s7, v103
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s41, s26, 0x200
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v4, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[13:16], v3, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v6, s[28:31], 0 offen
	buffer_load_b128 v[23:26], v7, s[28:31], 0 offen
	buffer_load_b128 v[27:30], v5, s[28:31], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s41, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s4, s35, 9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s41, v101
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s41, v104
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s7, v102
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v3
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s27, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s7, v105
	v_add_nc_u32_e32 v4, s7, v103
	v_add_nc_u32_e32 v7, s35, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v8, 48, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s16, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[31:34], v5, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[35:38], v6, s[28:31], 0 offen
	buffer_load_b128 v[39:42], v7, s[28:31], 0 offen
	buffer_load_b128 v[43:46], v3, s[28:31], 0 offen
	buffer_load_b128 v[47:50], v4, s[28:31], 0 offen
	v_bfe_i32 v3, v255, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v4, 1, v255
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 14, v255
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v7, 32, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x5ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0x420, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v6, 48, v4
	v_lshlrev_b32_e32 v4, 3, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v101
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v109, v253, v6
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v110, v5, 10, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, 0, v109
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v111, 0x90, v110
	v_xor_b32_e32 v112, 0x120, v110
	v_xor_b32_e32 v113, 0x1b0, v110
	v_xor_b32_e32 v114, 0x210, v110
	v_add_nc_u32_e32 v22, 0, v110
	v_xor_b32_e32 v115, 0x330, v110
	v_xor_b32_e32 v116, 0x3a0, v110
	v_add_nc_u32_e32 v51, 0, v111
	v_add_nc_u32_e32 v52, 0, v112
	v_add_nc_u32_e32 v53, 0, v113
	v_add_nc_u32_e32 v54, 0, v114
	v_add_nc_u32_e32 v55, 0, v115
	v_add_nc_u32_e32 v56, 0, v116
	v_add_nc_u32_e32 v57, 0x4000, v22
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	v_add_nc_u32_e32 v60, 0x4000, v53
	v_add_nc_u32_e32 v61, 0x4000, v54
	v_add_nc_u32_e32 v62, 0x4000, v55
	v_add_nc_u32_e32 v63, 0x4000, v56
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v3, v[9:12] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v9, v17, v13, 0x4000501
	v_perm_b32 v11, v17, v13, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v10, v27, v23, 0x4000501
	v_perm_b32 v12, v27, v23, 0x6020703
	v_perm_b32 v13, v18, v14, 0x4000501
	v_perm_b32 v17, v28, v24, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v28, v24, 0x6020703
	v_perm_b32 v23, v19, v15, 0x4000501
	v_perm_b32 v24, v29, v25, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	v_perm_b32 v19, v29, v25, 0x6020703
	v_perm_b32 v25, v20, v16, 0x4000501
	v_perm_b32 v27, v30, v26, 0x4000501
	v_perm_b32 v16, v20, v16, 0x6020703
	v_perm_b32 v20, v30, v26, 0x6020703
	v_perm_b32 v26, v10, v9, 0x7060302
	v_perm_b32 v9, v10, v9, 0x5040100
	v_perm_b32 v10, v12, v11, 0x7060302
	v_perm_b32 v11, v12, v11, 0x5040100
	v_perm_b32 v12, v17, v13, 0x7060302
	v_perm_b32 v13, v17, v13, 0x5040100
	v_perm_b32 v17, v18, v14, 0x7060302
	v_perm_b32 v14, v18, v14, 0x5040100
	v_perm_b32 v18, v24, v23, 0x7060302
	v_perm_b32 v23, v24, v23, 0x5040100
	v_perm_b32 v24, v19, v15, 0x7060302
	v_perm_b32 v15, v19, v15, 0x5040100
	v_perm_b32 v19, v27, v25, 0x7060302
	v_perm_b32 v25, v27, v25, 0x5040100
	v_perm_b32 v27, v20, v16, 0x7060302
	v_perm_b32 v16, v20, v16, 0x5040100
	ds_store_2addr_b32 v22, v26, v9 offset1:16
	ds_store_2addr_b32 v51, v10, v11 offset1:16
	ds_store_2addr_b32 v52, v12, v13 offset1:16
	ds_store_2addr_b32 v53, v17, v14 offset1:16
	ds_store_2addr_b32 v54, v18, v23 offset1:16
	ds_store_2addr_b32 v22, v24, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v55, v19, v25 offset1:16
	ds_store_2addr_b32 v56, v27, v16 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v3, v[31:34] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v3, v39, v35, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v47, v43, 0x4000501
	v_perm_b32 v10, v39, v35, 0x6020703
	v_perm_b32 v11, v47, v43, 0x6020703
	v_perm_b32 v12, v40, v36, 0x4000501
	v_perm_b32 v13, v48, v44, 0x4000501
	v_perm_b32 v14, v40, v36, 0x6020703
	v_perm_b32 v15, v48, v44, 0x6020703
	v_perm_b32 v16, v41, v37, 0x4000501
	v_perm_b32 v17, v49, v45, 0x4000501
	v_perm_b32 v18, v41, v37, 0x6020703
	v_perm_b32 v19, v49, v45, 0x6020703
	v_perm_b32 v20, v42, v38, 0x4000501
	v_perm_b32 v22, v50, v46, 0x4000501
	v_perm_b32 v23, v42, v38, 0x6020703
	v_perm_b32 v24, v50, v46, 0x6020703
	v_perm_b32 v25, v9, v3, 0x7060302
	v_perm_b32 v3, v9, v3, 0x5040100
	v_perm_b32 v9, v11, v10, 0x7060302
	v_perm_b32 v10, v11, v10, 0x5040100
	v_perm_b32 v11, v13, v12, 0x7060302
	v_perm_b32 v12, v13, v12, 0x5040100
	v_perm_b32 v13, v15, v14, 0x7060302
	v_perm_b32 v14, v15, v14, 0x5040100
	v_perm_b32 v15, v17, v16, 0x7060302
	v_perm_b32 v16, v17, v16, 0x5040100
	v_perm_b32 v17, v19, v18, 0x7060302
	v_perm_b32 v18, v19, v18, 0x5040100
	v_perm_b32 v19, v22, v20, 0x7060302
	v_perm_b32 v20, v22, v20, 0x5040100
	v_perm_b32 v22, v24, v23, 0x7060302
	v_perm_b32 v23, v24, v23, 0x5040100
	ds_store_2addr_b32 v57, v25, v3 offset1:16
	ds_store_2addr_b32 v58, v9, v10 offset1:16
	ds_store_2addr_b32 v59, v11, v12 offset1:16
	ds_store_2addr_b32 v60, v13, v14 offset1:16
	ds_store_2addr_b32 v61, v15, v16 offset1:16
	ds_store_2addr_b32 v57, v17, v18 offset0:160 offset1:176
	ds_store_2addr_b32 v62, v19, v20 offset1:16
	ds_store_2addr_b32 v63, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v106, 48, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v234, 5, v255
	v_and_b32_e32 v3, 8, v255
	v_and_b32_e32 v235, 32, v255
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v94, v1, 6, v106
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v107, 0x1800, v234
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v95, 16, v94
	v_xor_b32_e32 v96, 32, v94
	v_xor_b32_e32 v93, 48, v94
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr235
.LBB0_3:                                ; %Flow90
	v_or_b32_e32 v6, s40, v6
	s_load_b64 s[0:1], s[0:1], 0x20
	s_ashr_i32 s42, s6, 6
	v_or_b32_e32 v10, s40, v1
	v_or_b32_e32 v7, s40, v7
	v_mul_lo_u32 v0, v6, s42
	v_or_b32_e32 v8, s40, v8
	v_and_b32_e32 v9, 1, v255
	v_lshlrev_b32_e32 v11, 6, v255
	v_mul_lo_u32 v45, v10, s42
	v_or_b32_e32 v23, s45, v255
	v_mul_lo_u32 v254, v8, s42
	v_lshlrev_b32_e32 v99, 2, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v11, off offset:4
	v_mul_lo_u32 v0, v7, s42
	v_lshlrev_b32_e32 v225, 1, v5
	v_lshlrev_b32_e32 v100, 5, v9
	v_lshlrev_b32_e32 v98, 1, v2
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v255, 3, 1
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v106, 48, v4
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 0x210, v2
	v_and_b32_e32 v3, 0x1c0, v11
	v_and_b32_e32 v107, 0x1800, v108
	v_bfe_i32 v4, v255, 5, 1
	v_lshl_or_b32 v94, v1, 6, v106
	v_xor_b32_e32 v2, v2, v106
	v_add3_u32 v9, 0, v99, v100
	v_dual_mov_b32 v21, v225 :: v_dual_mov_b32 v26, 0
	v_and_b32_e32 v4, 0x420, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v2, v3, v2, v107
	v_xor_b32_e32 v95, 16, v94
	v_xor_b32_e32 v96, 32, v94
	v_xor_b32_e32 v93, 48, v94
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v120, v9, v225
	v_xor_b32_e32 v117, v2, v4
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v118, 32, v117
	v_xor_b32_e32 v119, 48, v117
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v121, 0, v98
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v92, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s46, s5, 9
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s14, s41, 0x200
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_mov_b32 s15, 1
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s43, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s46, s46, -3
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_and_b32_e32 v9, 48, v253
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 9
	s_mov_b32 s18, s16
	s_mov_b32 s16, s26
	s_mov_b32 s26, s41
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s41, s14, s19
	v_xor_b32_e32 v13, 16, v117
	v_or_b32_e32 v9, s41, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s41, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v130, s18, v117
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v22, s47, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v131, s18, v13
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v24, s47, v95
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[187:190], v130 offset:8192
	ds_load_b128 v[191:194], v131 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v130
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[139:142], v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[179:182], v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:1024
	ds_load_b128 v[155:158], v24 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[179:182], v[139:142], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[191:194], v[139:142], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:2048
	ds_load_b128 v[171:174], v24 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[179:182], v[155:158], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[191:194], v[155:158], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:3072
	ds_load_b128 v[195:198], v24 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[171:174], v[155:162] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v22, s47, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[163:170], v[191:194], v[171:174], v[163:170] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v24, s18, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[179:182], v[195:198], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v24
	ds_load_b128 v[187:190], v24 offset:8192
	v_add_nc_u32_e32 v24, s18, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[179:186], v[191:194], v[195:198], v[179:186] neg_lo:[1,1,0]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s41, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s18, s45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[126:129], v[122:125], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[122:125], v[163:170] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:3072
	v_add_nc_u32_e32 v22, s47, v93
	s_mov_b32 s47, s43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[126:129], v[122:125], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[187:190], v[122:125], v[179:186] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v24
	ds_load_b128 v[187:190], v24 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v130, v20
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[126:129], v[122:125], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[122:125], v[163:170] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v22 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[126:129], v[122:125], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[187:190], v[122:125], v[179:186] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v123, v13
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s41, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v14, s35, v102
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v127, v17
	v_cvt_f32_i32_e32 v125, v15
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s18, v102
	v_add_nc_u32_e32 v14, s18, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v16
	v_cvt_f32_i32_e32 v128, v18
	v_cvt_f32_i32_e32 v129, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	v_cndmask_b32_e32 v17, 0x80000000, v14, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v17, s[28:31], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v122, v186
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v185, v185
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v17, v13, 0x4000501
	v_perm_b32 v24, v17, v13, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s18, v105
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v194, v18, v14, 0x4000501
	v_perm_b32 v195, v18, v14, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v14, s18, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v196, v19, v15, 0x4000501
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	v_perm_b32 v197, v19, v15, 0x6020703
	v_perm_b32 v198, v20, v16, 0x4000501
	v_cndmask_b32_e32 v17, 0x80000000, v14, vcc_lo
	v_perm_b32 v199, v20, v16, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v17, s[28:31], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s16, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s18, s18, 26
	s_add_i32 s16, s16, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s16, s16, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s16, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s42
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s15, 2
	s_cselect_b32 s15, s15, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s15, 14
	s_waitcnt vmcnt(0)
	v_perm_b32 v200, v17, v13, 0x4000501
	v_perm_b32 v201, v17, v13, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v13, v23, s18, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v202, v18, v14, 0x4000501
	v_perm_b32 v203, v18, v14, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v14, off, off          ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v204, v19, v15, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v205, v19, v15, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v15, v0, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v206, v20, v16, 0x4000501
	v_perm_b32 v207, v20, v16, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v13, v13, s[36:39], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v16, v254, s16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v14, v14, s16, 1
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v120, v13 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v13, v45, s16, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s16, s15, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s18, s16, 0
	s_mov_b32 s16, s44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x3
	buffer_load_u16 v208, v13, s[4:7], 0 offen
	buffer_load_u16 v209, v14, s[4:7], 0 offen
	buffer_load_u16 v210, v15, s[4:7], 0 offen
	buffer_load_u16 v211, v16, s[4:7], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v121 offset:40960
	ds_load_b128 v[17:20], v121 offset:40976
	ds_load_b128 v[186:189], v121 offset:41472
	ds_load_b128 v[190:193], v121 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v212, s18, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s44, s19, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s17, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s43, s18, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v212, v[9:12] offset:32768
	s_mov_b32 s17, s19
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v209
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v210
	v_lshlrev_b32_e32 v9, 16, v208
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v211
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v212, v13, v10
	v_mul_f32_e32 v213, v14, v10
	v_mul_f32_e32 v214, v15, v10
	v_dual_mul_f32 v215, v16, v10 :: v_dual_mul_f32 v216, v13, v11
	v_mul_f32_e32 v208, v13, v9
	v_mul_f32_e32 v209, v14, v9
	v_mul_f32_e32 v210, v15, v9
	v_mul_f32_e32 v211, v16, v9
	v_mul_f32_e32 v13, v13, v12
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v220, v17, v9
	v_mul_f32_e32 v221, v18, v9
	v_dual_mul_f32 v222, v19, v9 :: v_dual_mul_f32 v217, v14, v11
	v_mul_f32_e32 v218, v15, v11
	v_dual_mul_f32 v219, v16, v11 :: v_dual_mul_f32 v14, v14, v12
	v_mul_f32_e32 v15, v15, v12
	v_mul_f32_e32 v16, v16, v12
	v_dual_mul_f32 v223, v20, v9 :: v_dual_mul_f32 v224, v17, v10
	v_mul_f32_e32 v225, v18, v10
	v_dual_mul_f32 v226, v19, v10 :: v_dual_mul_f32 v229, v18, v11
	v_dual_mul_f32 v227, v20, v10 :: v_dual_mul_f32 v228, v17, v11
	v_dual_mul_f32 v230, v19, v11 :: v_dual_mul_f32 v17, v17, v12
	v_dual_mul_f32 v231, v20, v11 :: v_dual_mul_f32 v18, v18, v12
	v_mul_f32_e32 v19, v19, v12
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v20, v20, v12 :: v_dual_mul_f32 v233, v187, v9
	v_dual_mul_f32 v232, v186, v9 :: v_dual_mul_f32 v237, v187, v10
	v_dual_mul_f32 v234, v188, v9 :: v_dual_mul_f32 v239, v189, v10
	v_dual_mul_f32 v235, v189, v9 :: v_dual_mul_f32 v236, v186, v10
	v_dual_mul_f32 v238, v188, v10 :: v_dual_mul_f32 v241, v187, v11
	v_dual_mul_f32 v240, v186, v11 :: v_dual_mul_f32 v187, v187, v12
	v_mul_f32_e32 v242, v188, v11
	v_dual_mul_f32 v243, v189, v11 :: v_dual_mul_f32 v186, v186, v12
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v188, v188, v12 :: v_dual_mul_f32 v245, v191, v9
	v_dual_mul_f32 v189, v189, v12 :: v_dual_mul_f32 v244, v190, v9
	v_mul_f32_e32 v249, v192, v10
	v_dual_mul_f32 v246, v192, v9 :: v_dual_mul_f32 v247, v190, v10
	v_dual_mul_f32 v9, v193, v9 :: v_dual_mul_f32 v248, v191, v10
	v_dual_mul_f32 v10, v193, v10 :: v_dual_mul_f32 v251, v191, v11
	v_dual_mul_f32 v250, v190, v11 :: v_dual_mul_f32 v191, v191, v12
	v_mul_f32_e32 v252, v192, v11
	v_dual_mul_f32 v11, v193, v11 :: v_dual_mul_f32 v190, v190, v12
	v_mul_f32_e32 v192, v192, v12
	v_mul_f32_e32 v12, v193, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v193, v200, v22, 0x7060302
	v_perm_b32 v22, v200, v22, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v25, v208, v123 :: v_dual_add_nc_u32 v200, s44, v110
	v_dual_fmac_f32 v26, v209, v124 :: v_dual_fmac_f32 v27, v210, v125
	v_fmac_f32_e32 v28, v211, v126
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v200, v193, v22 offset1:16
	v_perm_b32 v22, v201, v24, 0x7060302
	v_perm_b32 v24, v201, v24, 0x5040100
	v_add_nc_u32_e32 v193, s44, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v29, v220, v127 :: v_dual_fmac_f32 v30, v221, v128
	v_dual_fmac_f32 v31, v222, v129 :: v_dual_fmac_f32 v32, v223, v130
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v193, v22, v24 offset1:16
	v_perm_b32 v22, v202, v194, 0x7060302
	v_perm_b32 v24, v202, v194, 0x5040100
	v_add_nc_u32_e32 v193, s44, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v33, v232, v131 :: v_dual_fmac_f32 v34, v233, v132
	v_dual_fmac_f32 v35, v234, v133 :: v_dual_fmac_f32 v36, v235, v134
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v193, v22, v24 offset1:16
	v_perm_b32 v22, v203, v195, 0x7060302
	v_perm_b32 v24, v203, v195, 0x5040100
	v_add_nc_u32_e32 v193, s44, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v37, v244, v135 :: v_dual_fmac_f32 v38, v245, v136
	v_dual_fmac_f32 v39, v246, v137 :: v_dual_fmac_f32 v40, v9, v138
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v193, v22, v24 offset1:16
	v_perm_b32 v22, v204, v196, 0x7060302
	v_perm_b32 v24, v204, v196, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v44, v212, v139 :: v_dual_add_nc_u32 v193, s44, v114
	v_dual_fmac_f32 v47, v214, v141 :: v_dual_fmac_f32 v46, v213, v140
	v_fmac_f32_e32 v49, v224, v143
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v193, v22, v24 offset1:16
	v_perm_b32 v22, v205, v197, 0x7060302
	v_perm_b32 v24, v205, v197, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v48, v215, v142 :: v_dual_fmac_f32 v51, v226, v145
	v_dual_fmac_f32 v50, v225, v144 :: v_dual_fmac_f32 v53, v236, v147
	v_dual_fmac_f32 v52, v227, v146 :: v_dual_fmac_f32 v55, v238, v149
	v_dual_fmac_f32 v54, v237, v148 :: v_dual_fmac_f32 v57, v247, v151
	v_dual_fmac_f32 v56, v239, v150 :: v_dual_fmac_f32 v59, v249, v153
	v_dual_fmac_f32 v58, v248, v152 :: v_dual_fmac_f32 v63, v218, v157
	v_dual_fmac_f32 v60, v10, v154 :: v_dual_fmac_f32 v61, v216, v155
	v_dual_fmac_f32 v62, v217, v156 :: v_dual_fmac_f32 v65, v228, v159
	v_dual_fmac_f32 v64, v219, v158 :: v_dual_fmac_f32 v67, v230, v161
	v_dual_fmac_f32 v66, v229, v160 :: v_dual_fmac_f32 v69, v240, v163
	v_dual_fmac_f32 v68, v231, v162 :: v_dual_fmac_f32 v71, v242, v165
	v_dual_fmac_f32 v70, v241, v164 :: v_dual_fmac_f32 v73, v250, v167
	v_dual_fmac_f32 v72, v243, v166 :: v_dual_fmac_f32 v75, v252, v169
	v_dual_fmac_f32 v74, v251, v168 :: v_dual_fmac_f32 v77, v13, v171
	v_dual_fmac_f32 v76, v11, v170 :: v_dual_fmac_f32 v81, v17, v175
	v_dual_fmac_f32 v78, v14, v172 :: v_dual_fmac_f32 v79, v15, v173
	v_dual_fmac_f32 v80, v16, v174 :: v_dual_fmac_f32 v83, v19, v177
	v_dual_fmac_f32 v82, v18, v176 :: v_dual_fmac_f32 v89, v189, v182
	v_dual_fmac_f32 v84, v20, v178 :: v_dual_fmac_f32 v87, v187, v180
	v_dual_fmac_f32 v86, v186, v179 :: v_dual_fmac_f32 v91, v191, v184
	v_dual_fmac_f32 v88, v188, v181 :: v_dual_add_nc_u32 v9, s44, v115
	v_dual_fmac_f32 v90, v190, v183 :: v_dual_fmac_f32 v85, v12, v122
	v_fmac_f32_e32 v92, v192, v185
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v11, v206, v198, 0x7060302
	v_perm_b32 v12, v206, v198, 0x5040100
	v_add_nc_u32_e32 v10, s44, v116
	v_perm_b32 v13, v207, v199, 0x7060302
	v_perm_b32 v14, v207, v199, 0x5040100
	ds_store_2addr_b32 v200, v22, v24 offset0:160 offset1:176
	ds_store_2addr_b32 v9, v11, v12 offset1:16
	ds_store_2addr_b32 v10, v13, v14 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v234, v108 :: v_dual_and_b32 v3, 8, v255
	v_and_b32_e32 v235, 32, v255
	v_mov_b32_e32 v225, v21
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v26, 0
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s43, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v237, 0 :: v_dual_and_b32 v236, 7, v255
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v241, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_dual_mov_b32 v239, 0 :: v_dual_lshlrev_b32 v2, 6, v236
	v_cmp_eq_u32_e32 vcc_lo, 0, v235
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v243, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v106
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v245, 0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v247, 0
	v_or3_b32 v1, v2, v107, v1
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v251, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v230, v1, v3
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v233, 0
	v_xor_b32_e32 v42, 16, v230
	v_xor_b32_e32 v41, 32, v230
	v_xor_b32_e32 v24, 48, v230
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v160, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s16, v230
	v_add_nc_u32_e32 v1, s16, v41
	v_add_nc_u32_e32 v3, s16, v24
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v9, s47, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s16, v42
	ds_load_b128 v[169:172], v4 offset:8192
	ds_load_b128 v[173:176], v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v17, s47, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[101:104], v1 offset:8192
	ds_load_b128 v[157:160], v1
	ds_load_b128 v[161:164], v2 offset:8192
	ds_load_b128 v[165:168], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v18, s47, v93
	v_add_nc_u32_e32 v19, s47, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v3 offset:8192
	ds_load_b128 v[189:192], v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[133:136], v9 offset:1024
	ds_load_b128 v[116:119], v9
	ds_load_b128 v[177:180], v17 offset:1024
	ds_load_b128 v[125:128], v17
	ds_load_b128 v[181:184], v19 offset:1024
	ds_load_b128 v[129:132], v19
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v7, s10
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[193:196], v18 offset:1024
	ds_load_b128 v[137:140], v18
	ds_load_b128 v[197:200], v9 offset:3072
	ds_load_b128 v[149:152], v9 offset:2048
	ds_load_b128 v[201:204], v19 offset:3072
	ds_load_b128 v[205:208], v19 offset:2048
	ds_load_b128 v[209:212], v17 offset:3072
	ds_load_b128 v[213:216], v17 offset:2048
	ds_load_b128 v[217:220], v18 offset:3072
	ds_load_b128 v[221:224], v18 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[173:176], v[116:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[169:172], v[116:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[173:176], v[133:136], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[165:168], v[129:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[161:164], v[129:132], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[181:184], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[169:172], v[149:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[157:160], v[125:128], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[101:104], v[125:128], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[169:172], v[133:136], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[161:164], v[205:208], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[189:192], v[137:140], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[185:188], v[137:140], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[173:176], v[149:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[173:176], v[197:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[169:172], v[197:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[181:184], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[165:168], v[205:208], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[165:168], v[201:204], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[157:160], v[177:180], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[161:164], v[201:204], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[101:104], v[177:180], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[157:160], v[213:216], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[101:104], v[213:216], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[157:160], v[209:212], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[101:104], v[209:212], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[189:192], v[193:196], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[185:188], v[193:196], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[189:192], v[221:224], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[185:188], v[221:224], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[189:192], v[217:220], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[185:188], v[217:220], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v237, v10
	v_cvt_f32_i32_e32 v238, v11
	v_cvt_f32_i32_e32 v239, v12
	v_cvt_f32_i32_e32 v240, v13
	v_cvt_f32_i32_e32 v241, v14
	v_cvt_f32_i32_e32 v242, v15
	v_cvt_f32_i32_e32 v243, v16
	v_cvt_f32_i32_e32 v244, v108
	v_cvt_f32_i32_e32 v245, v109
	v_cvt_f32_i32_e32 v246, v110
	v_cvt_f32_i32_e32 v247, v111
	v_cvt_f32_i32_e32 v248, v112
	v_cvt_f32_i32_e32 v249, v113
	v_cvt_f32_i32_e32 v250, v114
	v_cvt_f32_i32_e32 v251, v115
	v_cvt_f32_i32_e32 v252, v117
	v_cvt_f32_i32_e32 v21, v118
	v_cvt_f32_i32_e32 v232, v119
	v_cvt_f32_i32_e32 v233, v120
	v_cvt_f32_i32_e32 v231, v121
	v_cvt_f32_i32_e32 v165, v122
	v_cvt_f32_i32_e32 v10, v123
	v_cvt_f32_i32_e32 v123, v124
	v_cvt_f32_i32_e32 v97, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v166, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v124, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v22, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v157, v142
	v_cvt_f32_i32_e32 v190, v143
	v_cvt_f32_i32_e32 v161, v144
	v_cvt_f32_i32_e32 v162, v145
	v_cvt_f32_i32_e32 v171, v146
	v_cvt_f32_i32_e32 v163, v147
	v_cvt_f32_i32_e32 v164, v148
	v_cvt_f32_i32_e32 v112, v149
	v_cvt_f32_i32_e32 v113, v150
	v_cvt_f32_i32_e32 v114, v151
	v_cvt_f32_i32_e32 v115, v152
	v_cvt_f32_i32_e32 v116, v153
	v_cvt_f32_i32_e32 v117, v154
	v_cvt_f32_i32_e32 v118, v155
	v_cvt_f32_i32_e32 v119, v156
	v_cvt_f32_i32_e32 v120, v1
	v_cvt_f32_i32_e32 v121, v2
	v_cvt_f32_i32_e32 v122, v3
	v_cvt_f32_i32_e32 v125, v4
	v_cvt_f32_i32_e32 v136, v5
	v_cvt_f32_i32_e32 v138, v6
	v_cvt_f32_i32_e32 v142, v7
	v_cvt_f32_i32_e32 v160, v8
	v_cvt_f32_i32_e32 v158, v9
.LBB0_10:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v45, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v23, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v0, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v254, s4, 1
	s_and_b32 s13, s13, 0xffff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v98, 0, v98
	scratch_store_b32 off, v10, off offset:8 ; 4-byte Folded Spill
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v229, 0 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v226, 0
	v_mov_b32_e32 v212, 0
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, v3, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_u16 v143, v1, s[12:15], 0 offen
	buffer_load_u16 v159, v3, s[12:15], 0 offen
	buffer_load_u16 v153, v4, s[12:15], 0 offen
	buffer_load_u16 v101, v5, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v99, v100
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v154, v1, v225
	v_mov_b32_e32 v225, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v154, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v98 offset:40960
	ds_load_b128 v[5:8], v98 offset:40976
	ds_load_b128 v[9:12], v98 offset:41472
	ds_load_b128 v[13:16], v98 offset:41488
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v220, v138 :: v_dual_add_nc_u32 v17, s44, v42
	v_dual_mov_b32 v156, v136 :: v_dual_add_nc_u32 v99, s44, v230
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v94, s43, v94
	v_dual_mov_b32 v148, v246 :: v_dual_add_nc_u32 v189, s44, v41
	scratch_store_b32 off, v142, off offset:80 ; 4-byte Folded Spill
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v143, off offset:76 ; 4-byte Folded Spill
	v_dual_mov_b32 v143, v247 :: v_dual_mov_b32 v142, v132
	v_mov_b32_e32 v151, v250
	v_dual_mov_b32 v149, v248 :: v_dual_mov_b32 v138, v133
	v_dual_mov_b32 v150, v249 :: v_dual_mov_b32 v133, v252
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[246:249], v17 offset:8192
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v253, off offset:16
	scratch_store_b32 off, v236, off offset:20
	v_dual_mov_b32 v152, v251 :: v_dual_add_nc_u32 v219, s43, v96
	ds_load_b128 v[250:253], v17
	ds_load_b128 v[17:20], v99 offset:8192
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v136.l, v101.l
	ds_load_b128 v[99:102], v99
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[191:194], v94
	ds_load_b128 v[103:106], v94 offset:3072
	ds_load_b128 v[207:210], v94 offset:1024
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v22, off offset:44
	scratch_store_b32 off, v21, off offset:68
	scratch_store_b32 off, v255, off offset:56
	scratch_store_b32 off, v238, off offset:72
	scratch_store_b32 off, v124, off offset:28
	scratch_store_b32 off, v158, off offset:64
	scratch_store_b32 off, v239, off offset:60
	scratch_store_b32 off, v157, off offset:40
	scratch_store_b32 off, v123, off offset:32
	scratch_store_b32 off, v240, off offset:52
	scratch_store_b32 off, v190, off offset:36
	scratch_store_b32 off, v97, off offset:24
	scratch_store_b32 off, v241, off offset:48
	ds_load_b128 v[238:241], v94 offset:2048
	s_mov_b32 s4, 0
	v_dual_mov_b32 v155, v130 :: v_dual_add_nc_u32 v188, s44, v24
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v95, s43, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v229, s11 :: v_dual_mov_b32 v226, s8
	v_dual_mov_b32 v228, s10 :: v_dual_mov_b32 v227, s9
	v_dual_mov_b32 v224, s6 :: v_dual_mov_b32 v225, s7
	v_dual_mov_b32 v222, s4 :: v_dual_mov_b32 v223, s5
	v_dual_mov_b32 v190, v112 :: v_dual_mov_b32 v97, v113
	v_mov_b32_e32 v130, v254
	v_dual_mov_b32 v21, v114 :: v_dual_mov_b32 v132, v125
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v95
	ds_load_b128 v[107:110], v95 offset:3072
	v_dual_mov_b32 v123, v115 :: v_dual_mov_b32 v254, v116
	v_dual_mov_b32 v131, v45 :: v_dual_mov_b32 v24, v119
	v_dual_mov_b32 v125, v0 :: v_dual_mov_b32 v42, v117
	v_dual_mov_b32 v41, v118 :: v_dual_mov_b32 v22, v121
	ds_load_b128 v[115:118], v95 offset:2048
	v_dual_mov_b32 v45, v120 :: v_dual_mov_b32 v0, v122
	ds_load_b128 v[119:122], v95 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[167:170], v188 offset:8192
	ds_load_b128 v[215:218], v189
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[99:102], v[191:194], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[17:20], v[191:194], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[99:102], v[207:210], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[17:20], v[207:210], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[99:102], v[238:241], v[222:229] neg_lo:[1,1,0]
	v_dual_mov_b32 v221, v234 :: v_dual_mov_b32 v158, v141
	v_dual_mov_b32 v141, v165 :: v_dual_mov_b32 v124, v231
	v_dual_mov_b32 v165, v232 :: v_dual_mov_b32 v144, v126
	v_dual_mov_b32 v255, v235 :: v_dual_mov_b32 v126, v242
	v_dual_mov_b32 v43, v233 :: v_dual_mov_b32 v146, v128
	v_dual_mov_b32 v157, v237 :: v_dual_mov_b32 v128, v244
	v_wmma_i32_16x16x16_iu8 v[230:237], v[17:20], v[238:241], v[222:229] neg_lo:[1,1,0]
	v_mov_b32_e32 v145, v127
	v_mov_b32_e32 v127, v243
	v_mov_b32_e32 v147, v129
	v_mov_b32_e32 v129, v245
	v_wmma_i32_16x16x16_iu8 v[238:245], v[99:102], v[103:106], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[17:20], v[103:106], v[222:229] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[17:20], v219
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[99:102], v189 offset:8192
	ds_load_b128 v[103:106], v188
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v188, s43, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[250:253], v[111:114], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[246:249], v[111:114], v[180:187] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[93:96], v219 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[250:253], v[119:122], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[246:249], v[119:122], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[246:249], v[115:118], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[250:253], v[107:110], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[246:249], v[107:110], v[222:229] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[107:110], v219 offset:2048
	ds_load_b128 v[119:122], v219 offset:3072
	ds_load_b128 v[246:249], v188 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[207:214], v[250:253], v[115:118], v[207:214] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v188
	ds_load_b128 v[115:118], v188 offset:1024
	v_mov_b32_e32 v251, v152
	scratch_load_b32 v253, off, off offset:16 ; 4-byte Folded Reload
	v_mov_b32_e32 v252, v133
	v_mov_b32_e32 v250, v151
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[215:218], v[17:20], v[172:179] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[99:102], v[17:20], v[180:187] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[17:20], v188 offset:3072
	v_dual_mov_b32 v133, v138 :: v_dual_mov_b32 v138, v220
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[215:218], v[93:96], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[99:102], v[93:96], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[215:218], v[107:110], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[99:102], v[107:110], v[230:237] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[215:218], v[119:122], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[99:102], v[119:122], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[103:106], v[111:114], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[167:170], v[111:114], v[180:187] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[103:106], v[115:118], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[167:170], v[115:118], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[103:106], v[246:249], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[167:170], v[246:249], v[230:237] neg_lo:[1,1,0]
	v_dual_mov_b32 v114, v21 :: v_dual_mov_b32 v121, v22
	v_mov_b32_e32 v120, v45
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[103:106], v[17:20], v[238:245] neg_lo:[1,1,0]
	v_mov_b32_e32 v246, v148
	v_wmma_i32_16x16x16_iu8 v[222:229], v[167:170], v[17:20], v[222:229] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v172
	v_cvt_f32_i32_e32 v168, v176
	v_cvt_f32_i32_e32 v172, v179
	v_cvt_f32_i32_e32 v176, v183
	v_cvt_f32_i32_e32 v179, v186
	v_cvt_f32_i32_e32 v183, v193
	v_cvt_f32_i32_e32 v186, v196
	v_cvt_f32_i32_e32 v193, v202
	v_cvt_f32_i32_e32 v196, v205
	v_cvt_f32_i32_e32 v202, v211
	v_cvt_f32_i32_e32 v205, v214
	v_cvt_f32_i32_e32 v211, v235
	v_mov_b32_e32 v235, v255
	v_cvt_f32_i32_e32 v214, v238
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v238, off, off offset:72
	scratch_load_b32 v255, off, off offset:56
	scratch_load_b32 v21, off, off offset:68
	scratch_load_b32 v22, off, off offset:44
	v_dual_mov_b32 v113, v97 :: v_dual_mov_b32 v122, v0
	v_mov_b32_e32 v112, v190
	v_mov_b32_e32 v116, v254
	v_dual_mov_b32 v254, v130 :: v_dual_mov_b32 v45, v131
	v_dual_mov_b32 v115, v123 :: v_dual_mov_b32 v248, v149
	v_mov_b32_e32 v130, v155
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v178, v185
	v_cvt_f32_i32_e32 v182, v192
	v_cvt_f32_i32_e32 v185, v195
	v_cvt_f32_i32_e32 v188, v198
	v_cvt_f32_i32_e32 v189, v199
	v_cvt_f32_i32_e32 v192, v201
	v_cvt_f32_i32_e32 v195, v204
	v_cvt_f32_i32_e32 v198, v207
	v_cvt_f32_i32_e32 v199, v208
	v_cvt_f32_i32_e32 v201, v210
	v_cvt_f32_i32_e32 v204, v213
	v_cvt_f32_i32_e32 v207, v231
	v_cvt_f32_i32_e32 v208, v232
	v_cvt_f32_i32_e32 v210, v234
	v_mov_b32_e32 v234, v221
	v_mov_b32_e32 v232, v165
	v_mov_b32_e32 v165, v141
	v_mov_b32_e32 v141, v158
	v_cvt_f32_i32_e32 v213, v237
	v_mov_b32_e32 v237, v157
	v_mov_b32_e32 v231, v124
	v_cvt_f32_i32_e32 v215, v239
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v239, off, off offset:60
	scratch_load_b32 v158, off, off offset:64
	scratch_load_b32 v124, off, off offset:28
	v_cvt_f32_i32_e32 v216, v240
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v240, off, off offset:52
	scratch_load_b32 v123, off, off offset:32
	scratch_load_b32 v157, off, off offset:40
	v_cvt_f32_i32_e32 v217, v241
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v241, off, off offset:48
	scratch_load_b32 v97, off, off offset:24
	scratch_load_b32 v190, off, off offset:36
	v_dual_mov_b32 v117, v42 :: v_dual_mov_b32 v0, v125
	v_dual_mov_b32 v125, v132 :: v_dual_mov_b32 v132, v142
	v_mov_b32_e32 v247, v143
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:76
	scratch_load_b32 v142, off, off offset:80
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v177, v184
	v_cvt_f32_i32_e32 v184, v194
	v_cvt_f32_i32_e32 v194, v203
	v_cvt_f32_i32_e32 v203, v212
	v_cvt_f32_i32_e32 v212, v236
	scratch_load_b32 v236, off, off offset:20 ; 4-byte Folded Reload
	v_mov_b16_e64 v101.l, v136.l
	v_dual_mov_b32 v119, v24 :: v_dual_mov_b32 v118, v41
	v_dual_mov_b32 v249, v150 :: v_dual_mov_b32 v136, v156
	v_cvt_f32_i32_e32 v99, v173
	v_cvt_f32_i32_e32 v100, v174
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v174, v181
	v_cvt_f32_i32_e32 v180, v187
	v_cvt_f32_i32_e32 v181, v191
	v_cvt_f32_i32_e32 v187, v197
	v_cvt_f32_i32_e32 v191, v200
	v_cvt_f32_i32_e32 v197, v206
	v_cvt_f32_i32_e32 v200, v209
	v_cvt_f32_i32_e32 v206, v230
	v_cvt_f32_i32_e32 v209, v233
	v_mov_b32_e32 v233, v43
	v_cvt_f32_i32_e32 v218, v242
	v_mov_b32_e32 v242, v126
	v_mov_b32_e32 v126, v144
	v_cvt_f32_i32_e32 v219, v243
	v_mov_b32_e32 v243, v127
	v_mov_b32_e32 v127, v145
	v_cvt_f32_i32_e32 v220, v244
	v_mov_b32_e32 v244, v128
	v_mov_b32_e32 v128, v146
	v_cvt_f32_i32_e32 v221, v245
	v_mov_b32_e32 v245, v129
	v_mov_b32_e32 v129, v147
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v229, v229
.LBB0_12:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s41, 31
	v_mov_b16_e32 v43.l, 0
	s_lshr_b32 s4, s4, 26
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v43.h, v101.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s41, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v17, v45, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v18, v23, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v41, v0, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v45, v16, v43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_mul_f32 v94, v14, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v93, v15, v43
	v_mul_f32_e32 v95, v13, v43
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v96, v12, v43
	v_mul_f32_e32 v101, v11, v43
	v_mul_f32_e32 v102, v10, v43
	v_mul_f32_e32 v103, v9, v43
	v_mul_f32_e32 v104, v8, v43
	v_mul_f32_e32 v105, v7, v43
	v_mul_f32_e32 v106, v6, v43
	v_mul_f32_e32 v107, v5, v43
	v_mul_f32_e32 v108, v4, v43
	v_mul_f32_e32 v109, v3, v43
	v_mul_f32_e32 v110, v2, v43
	v_mul_f32_e32 v111, v1, v43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v43.h, v153.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v102, v121, v87
	v_fma_f32 v105, v105, v118, v83
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v42, v254, s4, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v45, v160, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v121, v7, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v93, v142, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v83, v105, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v94, v94, v138, v91
	v_fma_f32 v95, v95, v136, v90
	v_fma_f32 v105, v121, v139, v67
	v_fma_f32 v96, v96, v125, v89
	v_fma_f32 v101, v101, v122, v88
	v_fma_f32 v103, v103, v120, v86
	v_fma_f32 v104, v104, v119, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v67, v105, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v105, off, off offset:8 ; 4-byte Folded Reload
	v_fma_f32 v106, v106, v117, v82
	v_fma_f32 v107, v107, v116, v81
	v_fma_f32 v108, v108, v115, v80
	v_fma_f32 v109, v109, v114, v79
	v_fma_f32 v110, v110, v113, v78
	v_fma_f32 v111, v111, v112, v77
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v16, v43
	v_mul_f32_e32 v114, v14, v43
	v_mul_f32_e32 v116, v12, v43
	v_mul_f32_e32 v118, v10, v43
	v_mul_f32_e32 v120, v8, v43
	v_mul_f32_e32 v122, v6, v43
	v_mul_f32_e32 v150, v4, v43
	v_mul_f32_e32 v151, v3, v43
	v_mul_f32_e32 v152, v2, v43
	v_mul_f32_e32 v153, v1, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v85, v45, s3
	v_cndmask_b32_e64 v92, v92, v93, s3
	v_cndmask_b32_e64 v91, v91, v94, s3
	v_cndmask_b32_e64 v90, v90, v95, s3
	v_cndmask_b32_e64 v89, v89, v96, s3
	v_cndmask_b32_e64 v88, v88, v101, s3
	v_cndmask_b32_e64 v87, v87, v102, s3
	v_cndmask_b32_e64 v86, v86, v103, s3
	v_cndmask_b32_e64 v84, v84, v104, s3
	v_cndmask_b32_e64 v82, v82, v106, s3
	v_cndmask_b32_e64 v81, v81, v107, s3
	v_cndmask_b32_e64 v79, v79, v109, s3
	v_cndmask_b32_e64 v78, v78, v110, s3
	v_cndmask_b32_e64 v77, v77, v111, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v112, v164, v76
	v_fma_f32 v94, v114, v171, v74
	v_fma_f32 v96, v116, v161, v72
	v_fma_f32 v102, v118, v157, v70
	v_fma_f32 v104, v120, v140, v68
	v_fma_f32 v106, v122, v22, v66
	v_fma_f32 v109, v151, v135, v63
	v_fma_f32 v110, v152, v134, v62
	v_fma_f32 v111, v153, v133, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v72, v96, s3
	v_cndmask_b32_e64 v80, v80, v108, s3
	v_cndmask_b32_e64 v74, v74, v94, s3
	v_cndmask_b32_e64 v76, v76, v45, s3
	v_cndmask_b32_e64 v68, v68, v104, s3
	v_cndmask_b32_e64 v63, v63, v109, s3
	v_cndmask_b32_e64 v70, v70, v102, s3
	v_cndmask_b32_e64 v66, v66, v106, s3
	v_cndmask_b32_e64 v62, v62, v110, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 16, v255
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s37, s40, s35
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s70, s37, s35
	s_add_i32 s69, s37, s34
	s_add_i32 s68, s37, s33
	s_lshl2_add_u32 s67, s35, s37
	s_mul_i32 s5, s35, 9
	s_mul_i32 s6, s35, 10
	s_lshl3_add_u32 s63, s35, s37
	s_mul_i32 s7, s35, 11
	s_add_i32 s62, s37, s5
	s_mul_i32 s8, s35, 12
	s_add_i32 s61, s37, s6
	s_mul_i32 s9, s35, 13
	s_add_i32 s60, s37, s7
	s_mul_i32 s10, s35, 14
	s_add_i32 s59, s37, s8
	s_mul_i32 s11, s35, 15
	s_add_i32 s58, s37, s9
	s_add_i32 s57, s37, s10
	s_add_i32 s56, s37, s11
	s_lshl4_add_u32 s55, s35, s37
	s_mul_i32 s16, s35, 19
	s_mul_i32 s17, s35, 20
	s_mul_i32 s18, s35, 21
	s_add_i32 s52, s37, s16
	s_mul_i32 s19, s35, 22
	s_add_i32 s51, s37, s17
	s_mul_i32 s20, s35, 23
	s_add_i32 s50, s37, s18
	s_mul_i32 s21, s35, 24
	s_add_i32 s49, s37, s19
	s_mul_i32 s22, s35, 25
	s_add_i32 s48, s37, s20
	s_mul_i32 s23, s35, 26
	s_add_i32 s47, s37, s21
	s_mul_i32 s24, s35, 27
	s_add_i32 s46, s37, s22
	s_mul_i32 s25, s35, 28
	s_add_i32 s45, s37, s23
	s_mul_i32 s26, s35, 29
	s_add_i32 s44, s37, s24
	s_mul_i32 s27, s35, 30
	s_add_i32 s43, s37, s25
	s_mul_i32 s28, s35, 31
	s_add_i32 s42, s37, s26
	s_lshl_b32 s29, s35, 5
	s_add_i32 s41, s37, s27
	s_mul_i32 s30, s35, 33
	s_add_i32 s40, s37, s28
	s_mul_i32 s31, s35, 34
	s_add_i32 s39, s37, s29
	s_mul_i32 s36, s35, 35
	s_add_i32 s38, s37, s30
	s_mul_i32 s71, s35, 36
	s_mul_i32 s72, s35, 37
	s_mul_i32 s73, s35, 38
	s_mul_i32 s74, s35, 39
	s_mul_i32 s75, s35, 40
	s_mul_i32 s76, s35, 41
	s_mul_i32 s77, s35, 42
	s_mul_i32 s78, s35, 43
	s_mul_i32 s79, s35, 44
	s_mul_i32 s80, s35, 45
	s_mul_i32 s81, s35, 46
	s_mul_i32 s82, s35, 47
	s_mul_i32 s83, s35, 48
	s_mul_i32 s84, s35, 49
	s_mul_i32 s85, s35, 50
	s_mul_i32 s86, s35, 51
	s_mul_i32 s87, s35, 52
	s_mul_i32 s88, s35, 53
	s_mul_i32 s89, s35, 54
	s_mul_i32 s90, s35, 55
	s_mul_i32 s91, s35, 56
	s_mul_i32 s92, s35, 57
	s_mul_i32 s93, s35, 58
	s_mul_i32 s94, s35, 59
	s_mul_i32 s95, s35, 60
	s_mul_i32 s96, s35, 61
	s_mul_i32 s97, s35, 62
	s_mul_i32 s98, s35, 63
	s_add_i32 s33, s37, s36
	s_add_i32 s30, s37, s72
	s_add_i32 s29, s37, s73
	s_add_i32 s23, s37, s74
	s_add_i32 s22, s37, s75
	s_add_i32 s21, s37, s76
	s_add_i32 s19, s37, s77
	s_add_i32 s17, s37, s78
	s_add_i32 s11, s37, s79
	s_add_i32 s10, s37, s80
	s_add_i32 s8, s37, s81
	s_add_i32 s36, s37, s82
	s_add_i32 s34, s37, s83
	s_add_i32 s26, s37, s84
	s_add_i32 s28, s37, s85
	s_add_i32 s27, s37, s86
	s_add_i32 s25, s37, s87
	s_add_i32 s24, s37, s88
	s_add_i32 s20, s37, s89
	s_add_i32 s18, s37, s90
	s_add_i32 s16, s37, s91
	s_add_i32 s9, s37, s94
	s_add_i32 s7, s37, s95
	s_add_i32 s5, s37, s96
	s_add_i32 s6, s37, s97
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v19, v19, s4, 1
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s64, s37, s4
	s_add_i32 s4, s37, s98
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	buffer_load_u16 v41, v41, s[12:15], 0 offen
	buffer_load_u16 v42, v42, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s12, s35, 17
	s_mul_i32 s13, s35, 18
	s_add_i32 s54, s37, s12
	s_add_i32 s53, s37, s13
	s_add_i32 s12, s37, s92
	s_add_i32 s13, s37, s93
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v113, v15, v43
	v_mul_f32_e32 v115, v13, v43
	v_mul_f32_e32 v117, v11, v43
	v_mul_f32_e32 v119, v9, v43
	v_mul_f32_e32 v149, v5, v43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v43.h, v159.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v113, v163, v75
	v_fma_f32 v95, v115, v162, v73
	v_fma_f32 v101, v117, v190, v71
	v_fma_f32 v103, v119, v141, v69
	v_fma_f32 v107, v149, v137, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v16, v43
	v_mul_f32_e32 v113, v15, v43
	v_mul_f32_e32 v114, v14, v43
	v_mul_f32_e32 v115, v13, v43
	v_mul_f32_e32 v116, v12, v43
	v_mul_f32_e32 v117, v11, v43
	v_mul_f32_e32 v118, v10, v43
	v_mul_f32_e32 v119, v9, v43
	v_mul_f32_e32 v120, v8, v43
	v_mul_f32_e32 v121, v7, v43
	v_mul_f32_e32 v122, v6, v43
	v_mul_f32_e32 v133, v5, v43
	v_mul_f32_e32 v134, v4, v43
	v_mul_f32_e32 v135, v3, v43
	v_mul_f32_e32 v136, v2, v43
	v_mul_f32_e32 v137, v1, v43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v43.h, v143.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v95, s3
	v_cndmask_b32_e64 v69, v69, v103, s3
	v_cndmask_b32_e64 v95, v61, v111, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v113, v166, v59
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v12, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v96, v116, v128, v56
	v_fma_f32 v103, v119, v97, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v16, v43
	v_mul_f32_e32 v14, v14, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v247, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v10, v43
	v_mul_f32_e32 v1, v1, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v59, v61, s3
	v_cndmask_b32_e64 v61, v56, v96, s3
	v_cndmask_b32_e64 v97, v36, v12, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v15, v15, v43 :: v_dual_lshlrev_b32 v36, 16, v42
	v_mul_f32_e32 v13, v13, v43
	v_mul_f32_e32 v11, v11, v43
	v_mul_f32_e32 v9, v9, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v251, v40
	v_fma_f32 v15, v15, v250, v39
	v_fma_f32 v14, v14, v249, v38
	v_fma_f32 v13, v13, v248, v37
	v_fma_f32 v11, v11, v246, v35
	v_fma_f32 v10, v10, v245, v34
	v_fma_f32 v9, v9, v244, v33
	v_fma_f32 v96, v1, v158, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v1, 16, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v40, v16, s3
	v_cndmask_b32_e64 v39, v39, v15, s3
	v_cndmask_b32_e64 v38, v38, v14, s3
	v_cndmask_b32_e64 v37, v37, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v154, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v11, s3
	v_cndmask_b32_e64 v34, v34, v10, s3
	v_cndmask_b32_e64 v33, v33, v9, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v98 offset:41472
	ds_load_b128 v[13:16], v98 offset:41488
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v133, v231, v49
	v_fma_f32 v24, v134, v233, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v43
	v_mul_f32_e32 v6, v6, v43
	v_mul_f32_e32 v2, v2, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v49, v22, s3
	v_cndmask_b32_e64 v49, v48, v24, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v8, v243, v32
	v_fma_f32 v48, v6, v241, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v75, v93, s3
	v_cndmask_b32_e64 v71, v71, v101, s3
	v_cndmask_b32_e64 v93, v65, v107, s3
	v_cndmask_b32_e64 v32, v32, v24, s3
	v_cndmask_b32_e64 v24, v30, v48, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v30, 16, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v112, v132, v60
	v_fma_f32 v65, v115, v129, v57
	v_fma_f32 v104, v120, v123, v52
	v_fma_f32 v109, v137, v252, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v133, v14, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v150, v124, v64
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v43
	v_mul_f32_e32 v5, v5, v43
	v_mul_f32_e32 v4, v4, v43
	v_mul_f32_e32 v3, v3, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v94, v64, v108, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v114, v130, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v132, v13, v30 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v101, v117, v127, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v60, v45, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v58, v58, v64, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v2, v237, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v65, s3
	v_cndmask_b32_e64 v45, v55, v101, s3
	v_cndmask_b32_e64 v53, v53, v103, s3
	v_cndmask_b32_e64 v55, v52, v104, s3
	v_cndmask_b32_e64 v65, v44, v109, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v52, v5, v240, v29
	v_fma_f32 v56, v4, v239, v28
	v_fma_f32 v60, v3, v238, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[1:4], v98 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v64, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v9, v17
	v_mul_f32_e32 v103, v14, v17
	v_mul_f32_e32 v113, v9, v19
	v_mul_f32_e32 v128, v9, v30
	v_mul_f32_e32 v9, v9, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v118, v126, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v118, v14, v19
	v_mul_f32_e32 v14, v14, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v7, v242, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v98 offset:40976
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v136, v21, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v102, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v13, v17
	v_mul_f32_e32 v117, v13, v19
	v_mul_f32_e32 v13, v13, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v122, v165, v50
	v_fma_f32 v105, v121, v105, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v108, s3
	v_cndmask_b32_e64 v31, v31, v44, s3
	v_cndmask_b32_e64 v29, v29, v52, s3
	v_cndmask_b32_e64 v50, v50, v106, s3
	v_cndmask_b32_e64 v28, v28, v56, s3
	v_cndmask_b32_e64 v27, v27, v60, s3
	v_cndmask_b32_e64 v25, v25, v96, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v40, v1, v17
	v_mul_f32_e32 v41, v2, v17
	v_mul_f32_e32 v42, v3, v17
	v_mul_f32_e32 v44, v4, v17
	v_mul_f32_e32 v96, v10, v17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v48, v5, v17
	v_mul_f32_e32 v52, v6, v17
	v_mul_f32_e32 v56, v7, v17
	v_mul_f32_e32 v60, v8, v17
	v_mul_f32_e32 v98, v11, v17
	v_mul_f32_e32 v101, v12, v17
	v_mul_f32_e32 v104, v15, v17
	v_dual_mul_f32 v17, v16, v17 :: v_dual_mul_f32 v106, v2, v19
	v_mul_f32_e32 v109, v5, v19
	v_mul_f32_e32 v112, v8, v19
	v_mul_f32_e32 v115, v11, v19
	v_mul_f32_e32 v121, v2, v30
	v_mul_f32_e32 v124, v5, v30
	v_dual_mul_f32 v127, v8, v30 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v135, v232, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v105, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v105, v1, v19
	v_mul_f32_e32 v108, v4, v19
	v_mul_f32_e32 v110, v6, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v107, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v107, v3, v19
	v_mul_f32_e32 v111, v7, v19
	v_mul_f32_e32 v114, v10, v19
	v_mul_f32_e32 v116, v12, v19
	v_mul_f32_e32 v119, v15, v19
	v_dual_mul_f32 v19, v16, v19 :: v_dual_mul_f32 v120, v1, v30
	v_mul_f32_e32 v122, v3, v30
	v_mul_f32_e32 v123, v4, v30
	v_mul_f32_e32 v125, v6, v30
	v_mul_f32_e32 v126, v7, v30
	v_mul_f32_e32 v129, v10, v30
	v_mul_f32_e32 v130, v11, v30
	v_mul_f32_e32 v131, v12, v30
	v_mul_f32_e32 v134, v15, v30
	v_dual_mul_f32 v30, v16, v30 :: v_dual_mul_f32 v1, v1, v36
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v5, v5, v36
	v_mul_f32_e32 v6, v6, v36
	v_mul_f32_e32 v7, v7, v36
	v_mul_f32_e32 v8, v8, v36
	v_mul_f32_e32 v10, v10, v36
	v_mul_f32_e32 v11, v11, v36
	v_mul_f32_e32 v12, v12, v36
	v_mul_f32_e32 v15, v15, v36
	v_mul_f32_e32 v16, v16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v40, v20, v25
	v_fma_f32 v36, v41, v99, v26
	v_fma_f32 v40, v42, v100, v27
	v_fma_f32 v41, v44, v167, v28
	v_fma_f32 v42, v48, v168, v29
	v_fma_f32 v44, v52, v169, v24
	v_fma_f32 v48, v56, v170, v31
	v_fma_f32 v52, v60, v172, v32
	v_fma_f32 v56, v64, v173, v33
	v_fma_f32 v60, v96, v174, v34
	v_fma_f32 v64, v98, v175, v35
	v_fma_f32 v96, v101, v176, v97
	v_fma_f32 v99, v103, v178, v38
	v_fma_f32 v101, v17, v180, v18
	v_fma_f32 v103, v106, v182, v46
	v_fma_f32 v106, v109, v185, v22
	v_fma_f32 v109, v112, v188, v55
	v_fma_f32 v112, v115, v192, v45
	v_fma_f32 v115, v118, v195, v58
	v_fma_f32 v118, v121, v199, v62
	v_fma_f32 v121, v124, v202, v93
	v_fma_f32 v124, v127, v205, v68
	v_fma_f32 v141, v9, v222, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v27, v40, s2
	v_cndmask_b32_e64 v24, v24, v44, s2
	v_cndmask_b32_e64 v40, v34, v60, s2
	v_cndmask_b32_e64 v44, v35, v64, s2
	v_cndmask_b32_e64 v64, v18, v101, s2
	v_cndmask_b32_e64 v18, v22, v106, s2
	v_cndmask_b32_e64 v34, v68, v124, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v22, 0xcf0, v253
	v_lshl_or_b32 v68, v235, 1, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v98, v102, v177, v37
	v_fma_f32 v127, v130, v208, v71
	v_fma_f32 v130, v133, v211, v74
	v_fma_f32 v133, v1, v214, v77
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v22, v68, v22
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v105, v181, v65
	v_fma_f32 v105, v108, v184, v49
	v_fma_f32 v108, v111, v187, v51
	v_fma_f32 v111, v114, v191, v54
	v_fma_f32 v114, v117, v194, v57
	v_fma_f32 v117, v120, v198, v95
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v22, v236, 13, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v100, v104, v179, v39
	v_fma_f32 v104, v107, v183, v47
	v_fma_f32 v107, v110, v186, v50
	v_fma_f32 v110, v113, v189, v53
	v_fma_f32 v113, v116, v193, v61
	v_fma_f32 v116, v119, v196, v59
	v_fma_f32 v119, v122, v200, v63
	v_fma_f32 v135, v3, v216, v79
	v_fma_f32 v19, v19, v197, v43
	v_fma_f32 v137, v5, v218, v81
	v_fma_f32 v120, v123, v201, v94
	v_fma_f32 v123, v126, v204, v67
	v_fma_f32 v139, v7, v220, v83
	v_fma_f32 v122, v125, v203, v66
	v_fma_f32 v125, v128, v206, v69
	v_fma_f32 v128, v131, v209, v72
	v_fma_f32 v131, v134, v212, v75
	v_fma_f32 v134, v2, v215, v78
	v_fma_f32 v136, v4, v217, v80
	v_fma_f32 v143, v11, v224, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v25, v20, s2
	v_cndmask_b32_e64 v2, v65, v102, s2
	v_cndmask_b32_e64 v3, v95, v117, s2
	v_cndmask_b32_e64 v4, v77, v133, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v68, 0, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v142, v10, v223, v87
	v_fma_f32 v144, v12, v225, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v47, v104, s2
	v_cndmask_b32_e64 v11, v63, v119, s2
	v_cndmask_b32_e64 v12, v79, v135, s2
	v_cndmask_b32_e64 v17, v29, v42, s2
	v_cndmask_b32_e64 v65, v43, v19, s2
	v_cndmask_b32_e64 v19, v93, v121, s2
	v_cndmask_b32_e64 v20, v81, v137, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v126, v129, v207, v70
	v_fma_f32 v129, v132, v210, v73
	v_fma_f32 v132, v30, v213, v76
	v_fma_f32 v145, v13, v226, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v28, v41, s2
	v_cndmask_b32_e64 v28, v31, v48, s2
	v_cndmask_b32_e64 v29, v51, v108, s2
	v_cndmask_b32_e64 v30, v67, v123, s2
	v_cndmask_b32_e64 v31, v83, v139, s2
	v_cndmask_b32_e64 v5, v26, v36, s2
	v_cndmask_b32_e64 v32, v32, v52, s2
	v_cndmask_b32_e64 v36, v33, v56, s2
	v_cndmask_b32_e64 v52, v37, v98, s2
	v_cndmask_b32_e64 v56, v38, v99, s2
	v_cndmask_b32_e64 v60, v39, v100, s2
	v_cndmask_b32_e64 v37, v53, v110, s2
	v_cndmask_b32_e64 v38, v69, v125, s2
	v_cndmask_b32_e64 v39, v86, v141, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v138, v6, v219, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v46, v103, s2
	v_cndmask_b32_e64 v45, v45, v112, s2
	v_cndmask_b32_e64 v46, v71, v127, s2
	v_cndmask_b32_e64 v47, v88, v143, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v68, v[1:4]
	ds_store_b128 v68, v[9:12] offset:256
	ds_store_b128 v68, v[17:20] offset:512
	ds_store_b128 v68, v[28:31] offset:768
	ds_store_b128 v68, v[36:39] offset:4096
	ds_store_b128 v68, v[44:47] offset:4352
	scratch_load_b32 v3, off, off offset:4  ; 4-byte Folded Reload
	v_and_b32_e32 v1, 0x1c00, v234
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v147, v15, v228, v92
	v_fma_f32 v146, v14, v227, v91
	v_fma_f32 v140, v8, v221, v84
	v_fma_f32 v148, v16, v229, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v55, v109, s2
	v_cndmask_b32_e64 v41, v54, v111, s2
	v_cndmask_b32_e64 v53, v57, v114, s2
	v_cndmask_b32_e64 v7, v62, v118, s2
	v_cndmask_b32_e64 v42, v70, v126, s2
	v_cndmask_b32_e64 v54, v73, v129, s2
	v_cndmask_b32_e64 v8, v78, v134, s2
	v_cndmask_b32_e64 v43, v87, v142, s2
	v_cndmask_b32_e64 v55, v90, v145, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v2, v22, 32, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v97, v96, s2
	v_cndmask_b32_e64 v14, v49, v105, s2
	v_cndmask_b32_e64 v25, v50, v107, s2
	v_cndmask_b32_e64 v49, v61, v113, s2
	v_cndmask_b32_e64 v61, v59, v116, s2
	v_cndmask_b32_e64 v15, v94, v120, s2
	v_cndmask_b32_e64 v50, v72, v128, s2
	v_cndmask_b32_e64 v62, v75, v131, s2
	v_cndmask_b32_e64 v16, v80, v136, s2
	v_cndmask_b32_e64 v51, v89, v144, s2
	v_cndmask_b32_e64 v63, v92, v147, s2
	v_cndmask_b32_e64 v57, v58, v115, s2
	v_cndmask_b32_e64 v26, v66, v122, s2
	v_cndmask_b32_e64 v58, v74, v130, s2
	v_cndmask_b32_e64 v27, v82, v138, s2
	v_cndmask_b32_e64 v59, v91, v146, s2
	v_cndmask_b32_e64 v66, v76, v132, s2
	v_cndmask_b32_e64 v35, v84, v140, s2
	v_cndmask_b32_e64 v67, v85, v148, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v68, v[52:55] offset:4608
	ds_store_b128 v68, v[60:63] offset:4864
	ds_store_b128 v2, v[5:8]
	ds_store_b128 v2, v[13:16] offset:256
	ds_store_b128 v2, v[24:27] offset:512
	ds_store_b128 v2, v[32:35] offset:768
	ds_store_b128 v2, v[40:43] offset:4096
	ds_store_b128 v2, v[48:51] offset:4352
	ds_store_b128 v2, v[56:59] offset:4608
	ds_store_b128 v2, v[64:67] offset:4864
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s35, 5
	s_mul_i32 s3, s35, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v68, s69, v23, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s66, s37, s2
	s_add_i32 s65, s37, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s2, s14
	s_mov_b32 s3, s15
	v_add_lshl_u32 v69, s68, v23, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s35, s37, s31
	s_add_i32 s31, s37, s71
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt vmcnt(0)
	v_and_or_b32 v1, 0x300, v3, v1
	scratch_load_b32 v3, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_or3_b32 v20, v1, v0, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v22, 0x6030, v20, 0
	v_add_nc_u32_e32 v4, 0, v20
	v_xad_u32 v12, 0x2010, v20, 0
	v_xad_u32 v21, 0x4020, v20, 0
	ds_load_b128 v[28:31], v22
	ds_load_b128 v[32:35], v22 offset:128
	v_xad_u32 v22, 0xa050, v20, 0
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v21
	ds_load_b128 v[24:27], v21 offset:128
	v_xad_u32 v21, 0x8040, v20, 0
	v_xad_u32 v56, 0xc060, v20, 0
	v_xad_u32 v20, 0xe070, v20, 0
	ds_load_b128 v[44:47], v22
	ds_load_b128 v[48:51], v22 offset:128
	ds_load_b128 v[52:55], v56
	ds_load_b128 v[56:59], v56 offset:128
	ds_load_b128 v[60:63], v20
	ds_load_b128 v[36:39], v21
	ds_load_b128 v[40:43], v21 offset:128
	v_add_lshl_u32 v21, s37, v23, 2
	v_add_lshl_u32 v22, s70, v23, 2
	ds_load_b128 v[64:67], v20 offset:128
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v0, v21, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v22, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	s_clause 0x1
	buffer_atomic_add_f32 v16, v68, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v69, s[0:3], 0 offen
	v_add_lshl_u32 v0, s67, v23, 2
	v_add_lshl_u32 v8, s66, v23, 2
	v_add_lshl_u32 v16, s65, v23, 2
	v_add_lshl_u32 v20, s64, v23, 2
	v_add_lshl_u32 v21, s63, v23, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v36, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v52, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v60, v20, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v21, s[0:3], 0 offen
	v_add_lshl_u32 v0, s62, v23, 2
	v_add_lshl_u32 v4, s61, v23, 2
	v_add_lshl_u32 v8, s60, v23, 2
	v_add_lshl_u32 v16, s59, v23, 2
	v_add_lshl_u32 v20, s58, v23, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v8, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v40, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v48, v20, s[0:3], 0 offen
	v_add_lshl_u32 v0, s57, v23, 2
	v_add_lshl_u32 v4, s56, v23, 2
	v_add_lshl_u32 v8, s55, v23, 2
	v_add_lshl_u32 v12, s54, v23, 2
	v_add_lshl_u32 v16, s53, v23, 2
	buffer_atomic_add_f32 v56, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v64, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, s52, v23, 2
	v_add_lshl_u32 v1, s51, v23, 2
	v_add_lshl_u32 v4, s50, v23, 2
	v_add_lshl_u32 v8, s49, v23, 2
	v_add_lshl_u32 v9, s48, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v29, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v45, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s47, v23, 2
	v_add_lshl_u32 v1, s46, v23, 2
	v_add_lshl_u32 v4, s45, v23, 2
	v_add_lshl_u32 v8, s44, v23, 2
	v_add_lshl_u32 v9, s43, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s42, v23, 2
	v_add_lshl_u32 v1, s41, v23, 2
	v_add_lshl_u32 v4, s40, v23, 2
	v_add_lshl_u32 v5, s39, v23, 2
	v_add_lshl_u32 v8, s38, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v49, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v65, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, s35, v23, 2
	v_add_lshl_u32 v1, s33, v23, 2
	v_add_lshl_u32 v2, s31, v23, 2
	v_add_lshl_u32 v4, s30, v23, 2
	v_add_lshl_u32 v5, s29, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v38, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v54, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s23, v23, 2
	v_add_lshl_u32 v1, s22, v23, 2
	v_add_lshl_u32 v2, s21, v23, 2
	v_add_lshl_u32 v4, s19, v23, 2
	v_add_lshl_u32 v5, s17, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v62, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v34, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s11, v23, 2
	v_add_lshl_u32 v1, s10, v23, 2
	v_add_lshl_u32 v2, s8, v23, 2
	v_add_lshl_u32 v4, s36, v23, 2
	v_add_lshl_u32 v5, s34, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v42, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v58, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v66, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s26, v23, 2
	v_add_lshl_u32 v1, s28, v23, 2
	v_add_lshl_u32 v2, s27, v23, 2
	v_add_lshl_u32 v3, s25, v23, 2
	v_add_lshl_u32 v4, s24, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s20, v23, 2
	v_add_lshl_u32 v1, s18, v23, 2
	v_add_lshl_u32 v2, s16, v23, 2
	v_add_lshl_u32 v3, s12, v23, 2
	v_add_lshl_u32 v4, s13, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v55, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s9, v23, 2
	v_add_lshl_u32 v1, s7, v23, 2
	v_add_lshl_u32 v2, s5, v23, 2
	v_add_lshl_u32 v3, s6, v23, 2
	v_add_lshl_u32 v4, s4, v23, 2
	s_clause 0x4
	buffer_atomic_add_f32 v35, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v51, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v67, v4, s[0:3], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 88
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
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 88
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13576
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 88
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 101
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 88
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 21
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
