	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
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
	s_lshl_b32 s13, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s13
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	s_mov_b64 s[28:29], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s13, s6, s13
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s13, s14, s13
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s13, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s22, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s22, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s19, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	v_mov_b32_e32 v214, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_sub_i32 s33, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp13:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v249, 15, v214
	v_lshrrev_b32_e32 v1, 2, v214
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s14, s33, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s33, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v2, 4, v249
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v253, 3, v214
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s12, v1
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s12, 0x7f
	v_mov_b32_e32 v0, v2
.Ltmp15:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v252, 4, v253
	.loc	1 355 14 is_stmt 0              ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
.Ltmp16:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s2, s14, 31
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s34, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	scratch_store_b64 off, v[0:1], off offset:40 ; 8-byte Folded Spill
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v103, v1, v252, s3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s2, 25
.Ltmp19:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s35, s30
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s14, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s30, v103
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v250, 0xf0, v214
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s31, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v250
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 6
	v_mad_u64_u32 v[22:23], null, s35, v3, v[2:3]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s30, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v254, 4, v214
	v_lshlrev_b32_e32 v105, 6, v214
	v_lshlrev_b32_e32 v106, 6, v249
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[23:24], null, s35, 3, v[22:23]
	v_lshl_add_u32 v102, s35, 1, v22
	v_add_nc_u32_e32 v2, s12, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v4, s12, v102
	v_add_nc_u32_e32 v5, s12, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v6, s35, v2
	s_add_i32 s12, s12, s15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[7:10], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[11:14], v4, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v5, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s12, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v6, s3
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s44, v103
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s12, v23
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[29:32], v1, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v5, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_b128 v[37:40], v2, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v4, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s12, v22
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 48, v249
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x1
	buffer_load_b128 v[45:48], v2, s[20:23], 0 offen
	buffer_load_b128 v[49:52], v4, s[20:23], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b128 v[53:56], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v214, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v4, 1, v214
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 14, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v1, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v5, 48, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v107, v254, v5
	v_lshlrev_b32_e32 v3, 5, v214
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v5, 32, v249
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v108, v2, 10, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, 0, v107
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v109, 0x90, v108
	v_xor_b32_e32 v110, 0x120, v108
	v_xor_b32_e32 v111, 0x1b0, v108
	v_xor_b32_e32 v112, 0x210, v108
	v_add_nc_u32_e32 v19, 0, v108
	v_xor_b32_e32 v113, 0x330, v108
	v_xor_b32_e32 v114, 0x3a0, v108
	v_add_nc_u32_e32 v20, 0, v109
	v_add_nc_u32_e32 v21, 0, v110
	v_add_nc_u32_e32 v24, 0, v111
	v_add_nc_u32_e32 v25, 0, v112
	v_add_nc_u32_e32 v26, 0, v113
	v_add_nc_u32_e32 v27, 0, v114
	v_add_nc_u32_e32 v28, 0x4000, v19
	v_add_nc_u32_e32 v57, 0x4000, v20
	v_add_nc_u32_e32 v58, 0x4000, v21
	v_add_nc_u32_e32 v59, 0x4000, v24
	v_add_nc_u32_e32 v60, 0x4000, v25
	v_add_nc_u32_e32 v61, 0x4000, v26
	v_add_nc_u32_e32 v62, 0x4000, v27
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[7:10] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v7, v15, v11, 0x4000501
	v_perm_b32 v8, v15, v11, 0x6020703
	v_perm_b32 v9, v16, v12, 0x4000501
	v_perm_b32 v10, v16, v12, 0x6020703
	v_perm_b32 v11, v17, v13, 0x4000501
	v_perm_b32 v12, v17, v13, 0x6020703
	v_perm_b32 v13, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v15, v33, v29, 0x4000501
	v_perm_b32 v16, v33, v29, 0x6020703
	v_perm_b32 v17, v34, v30, 0x4000501
	v_perm_b32 v18, v34, v30, 0x6020703
	v_perm_b32 v29, v35, v31, 0x4000501
	v_perm_b32 v30, v35, v31, 0x6020703
	v_perm_b32 v31, v36, v32, 0x4000501
	v_perm_b32 v32, v36, v32, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v33, v41, v37, 0x4000501
	v_perm_b32 v34, v41, v37, 0x6020703
	v_perm_b32 v41, v7, v15, 0x7060302
	v_perm_b32 v7, v7, v15, 0x5040100
	v_perm_b32 v15, v8, v16, 0x7060302
	v_perm_b32 v8, v8, v16, 0x5040100
	v_perm_b32 v16, v9, v17, 0x7060302
	v_perm_b32 v9, v9, v17, 0x5040100
	v_perm_b32 v17, v10, v18, 0x7060302
	v_perm_b32 v10, v10, v18, 0x5040100
	v_perm_b32 v18, v11, v29, 0x7060302
	v_perm_b32 v11, v11, v29, 0x5040100
	v_perm_b32 v29, v12, v30, 0x7060302
	v_perm_b32 v12, v12, v30, 0x5040100
	v_perm_b32 v30, v13, v31, 0x7060302
	v_perm_b32 v13, v13, v31, 0x5040100
	v_perm_b32 v31, v14, v32, 0x7060302
	v_perm_b32 v14, v14, v32, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v32, v49, v45, 0x4000501
	v_perm_b32 v35, v42, v38, 0x4000501
	v_perm_b32 v36, v42, v38, 0x6020703
	v_perm_b32 v42, v49, v45, 0x6020703
	v_perm_b32 v37, v43, v39, 0x4000501
	v_perm_b32 v38, v43, v39, 0x6020703
	v_perm_b32 v43, v50, v46, 0x4000501
	v_perm_b32 v39, v44, v40, 0x4000501
	v_perm_b32 v40, v44, v40, 0x6020703
	v_perm_b32 v44, v50, v46, 0x6020703
	v_perm_b32 v45, v51, v47, 0x4000501
	v_perm_b32 v46, v51, v47, 0x6020703
	v_perm_b32 v47, v52, v48, 0x4000501
	v_perm_b32 v48, v52, v48, 0x6020703
	ds_store_2addr_b32 v19, v41, v7 offset1:16
	ds_store_2addr_b32 v20, v15, v8 offset1:16
	ds_store_2addr_b32 v21, v16, v9 offset1:16
	ds_store_2addr_b32 v24, v17, v10 offset1:16
	ds_store_2addr_b32 v25, v18, v11 offset1:16
	ds_store_2addr_b32 v19, v29, v12 offset0:160 offset1:176
	ds_store_2addr_b32 v26, v30, v13 offset1:16
	ds_store_2addr_b32 v27, v31, v14 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[53:56] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v1, v33, v32, 0x7060302
	v_perm_b32 v7, v33, v32, 0x5040100
	v_perm_b32 v8, v34, v42, 0x7060302
	v_perm_b32 v9, v34, v42, 0x5040100
	v_perm_b32 v10, v35, v43, 0x7060302
	v_perm_b32 v11, v35, v43, 0x5040100
	v_perm_b32 v12, v36, v44, 0x7060302
	v_perm_b32 v13, v36, v44, 0x5040100
	v_perm_b32 v14, v37, v45, 0x7060302
	v_perm_b32 v15, v37, v45, 0x5040100
	v_perm_b32 v16, v38, v46, 0x7060302
	v_perm_b32 v17, v38, v46, 0x5040100
	v_perm_b32 v18, v39, v47, 0x7060302
	v_perm_b32 v19, v39, v47, 0x5040100
	v_perm_b32 v20, v40, v48, 0x7060302
	v_perm_b32 v21, v40, v48, 0x5040100
	ds_store_2addr_b32 v28, v1, v7 offset1:16
	ds_store_2addr_b32 v57, v8, v9 offset1:16
	ds_store_2addr_b32 v58, v10, v11 offset1:16
	ds_store_2addr_b32 v59, v12, v13 offset1:16
	ds_store_2addr_b32 v60, v14, v15 offset1:16
	ds_store_2addr_b32 v28, v16, v17 offset0:160 offset1:176
	ds_store_2addr_b32 v61, v18, v19 offset1:16
	ds_store_2addr_b32 v62, v20, v21 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v0, 6, v214
	v_and_b32_e32 v7, 0x1800, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 6, v249
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v241, 8, v214
	v_and_b32_e32 v8, 32, v214
	s_mov_b32 s10, 0
	v_and_or_b32 v104, 0x1c0, v0, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:4
	scratch_store_b32 off, v0, off offset:36
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr0
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr104
.LBB0_3:                                ; %Flow94
	s_load_b128 s[24:27], s[0:1], 0x20
	v_or_b32_e32 v8, s34, v249
	v_or_b32_e32 v4, s34, v4
	v_or_b32_e32 v5, s34, v5
	v_or_b32_e32 v6, s34, v6
	s_ashr_i32 s0, s14, 7
	v_and_b32_e32 v7, 1, v214
	v_mul_lo_u32 v52, v8, s0
	v_mul_lo_u32 v255, v4, s0
	v_mul_lo_u32 v0, v5, s0
	v_mul_lo_u32 v46, v6, s0
	v_or_b32_e32 v49, s31, v214
	v_lshlrev_b32_e32 v100, 2, v250
	v_lshlrev_b32_e32 v98, 1, v2
	v_lshlrev_b32_e32 v101, 5, v7
	v_lshlrev_b32_e32 v99, 1, v250
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v214, 3, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s46, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v1, 3, v214
	v_and_b32_e32 v3, 0x1800, v3
	v_dual_mov_b32 v45, v214 :: v_dual_and_b32 v2, 0x210, v2
	v_bfe_i32 v4, v214, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 48, v1
	v_and_or_b32 v104, 0x1c0, v105, v3
	v_add3_u32 v9, 0, v100, v101
	v_mov_b32_e32 v29, 0
	v_and_b32_e32 v3, 0x420, v4
	v_xor_b32_e32 v2, v2, v1
	v_or_b32_e32 v116, v106, v1
	v_add_nc_u32_e32 v120, v9, v98
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v121, 0, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v2, v104, v2
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v32, 0
	v_xor_b32_e32 v115, v2, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v117, 16, v115
	v_xor_b32_e32 v118, 32, v115
	v_xor_b32_e32 v119, 48, v115
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v36, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v97, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s10, s44, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s11, 1
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s46, s46, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	v_xor_b32_e32 v9, 16, v116
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s12
	s_mov_b32 s12, s30
	s_mov_b32 s30, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s10, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v24, s47, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v25, s14, v115
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s44, v103
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v21, s47, v116
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v26, s14, v117
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[187:190], v25 offset:8192
	ds_load_b128 v[191:194], v26 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[139:142], v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[179:182], v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:1024
	ds_load_b128 v[155:158], v24 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[179:182], v[139:142], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[191:194], v[139:142], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:2048
	ds_load_b128 v[171:174], v24 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[179:182], v[155:158], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[191:194], v[155:158], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:3072
	ds_load_b128 v[195:198], v24 offset:3072
	v_xor_b32_e32 v21, 32, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[171:174], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[191:194], v[171:174], v[163:170] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v24, s14, v118
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v21, s47, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[179:182], v[195:198], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v24
	ds_load_b128 v[187:190], v24 offset:8192
	v_add_nc_u32_e32 v24, s14, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[179:186], v[191:194], v[195:198], v[179:186] neg_lo:[1,1,0]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s44, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s14, s31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[126:129], v[122:125], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[122:125], v[163:170] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:3072
	v_xor_b32_e32 v21, 48, v116
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v21, s47, v21
	s_mov_b32 s47, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[126:129], v[122:125], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[187:190], v[122:125], v[179:186] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v24
	ds_load_b128 v[187:190], v24 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v130, v20
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v21 offset:2048
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
	ds_load_b128 v[122:125], v21 offset:3072
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
	v_cvt_f32_i32_e32 v124, v14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v14, s35, v22
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s14, v22
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v127, v17
	v_cvt_f32_i32_e32 v125, v15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s14, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v16
	v_cvt_f32_i32_e32 v128, v18
	v_cvt_f32_i32_e32 v129, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
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
	v_perm_b32 v21, v17, v13, 0x4000501
	v_perm_b32 v24, v17, v13, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s14, v102
	v_add_nc_u32_e32 v17, s14, v23
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v25, v18, v14, 0x4000501
	v_perm_b32 v26, v18, v14, 0x6020703
	v_perm_b32 v27, v19, v15, 0x4000501
	v_perm_b32 v28, v19, v15, 0x6020703
	v_perm_b32 v194, v20, v16, 0x4000501
	v_perm_b32 v195, v20, v16, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 25
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 7
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s0
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s11, 14
	s_waitcnt vmcnt(0)
	v_perm_b32 v196, v17, v13, 0x4000501
	v_perm_b32 v197, v17, v13, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v13, v49, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v198, v18, v14, 0x4000501
	v_perm_b32 v199, v18, v14, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v14, v255, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v202, v20, v16, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v203, v20, v16, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v16, v46, s12, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v200, v19, v15, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v201, v19, v15, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v15, v0, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v15, 0x80000000, v15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v120, v13 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v13, v52, s12, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s12, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s45
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x3
	buffer_load_u16 v204, v13, s[36:39], 0 offen
	buffer_load_u16 v205, v14, s[36:39], 0 offen
	buffer_load_u16 v206, v15, s[36:39], 0 offen
	buffer_load_u16 v207, v16, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v121 offset:40960
	ds_load_b128 v[17:20], v121 offset:40976
	ds_load_b128 v[186:189], v121 offset:41472
	ds_load_b128 v[190:193], v121 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v208, s14, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v208, v[9:12] offset:32768
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v205
	v_lshlrev_b32_e32 v9, 16, v204
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v207
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v220, v17, v10
	v_dual_mul_f32 v216, v17, v9 :: v_dual_lshlrev_b32 v11, 16, v206
	v_mul_f32_e32 v204, v13, v9
	v_mul_f32_e32 v205, v14, v9
	v_mul_f32_e32 v206, v15, v9
	v_dual_mul_f32 v207, v16, v9 :: v_dual_mul_f32 v208, v13, v10
	v_mul_f32_e32 v209, v14, v10
	v_mul_f32_e32 v210, v15, v10
	v_dual_mul_f32 v211, v16, v10 :: v_dual_mul_f32 v212, v13, v11
	v_dual_mul_f32 v213, v14, v11 :: v_dual_mul_f32 v222, v19, v10
	v_mul_f32_e32 v214, v15, v11
	v_mul_f32_e32 v215, v16, v11
	v_mul_f32_e32 v13, v13, v12
	v_mul_f32_e32 v14, v14, v12
	v_dual_mul_f32 v15, v15, v12 :: v_dual_mul_f32 v224, v17, v11
	v_dual_mul_f32 v16, v16, v12 :: v_dual_mul_f32 v217, v18, v9
	v_mul_f32_e32 v226, v19, v11
	v_mul_f32_e32 v218, v19, v9
	v_mul_f32_e32 v219, v20, v9
	v_mul_f32_e32 v221, v18, v10
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v223, v20, v10 :: v_dual_mul_f32 v228, v186, v9
	v_dual_mul_f32 v225, v18, v11 :: v_dual_mul_f32 v230, v188, v9
	v_dual_mul_f32 v227, v20, v11 :: v_dual_mul_f32 v232, v186, v10
	v_dual_mul_f32 v17, v17, v12 :: v_dual_mul_f32 v234, v188, v10
	v_mul_f32_e32 v18, v18, v12
	v_dual_mul_f32 v19, v19, v12 :: v_dual_mul_f32 v236, v186, v11
	v_dual_mul_f32 v20, v20, v12 :: v_dual_mul_f32 v229, v187, v9
	v_dual_mul_f32 v238, v188, v11 :: v_dual_mul_f32 v231, v189, v9
	v_dual_mul_f32 v186, v186, v12 :: v_dual_mul_f32 v233, v187, v10
	v_dual_mul_f32 v188, v188, v12 :: v_dual_mul_f32 v235, v189, v10
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v240, v190, v9 :: v_dual_mul_f32 v237, v187, v11
	v_dual_mul_f32 v242, v192, v9 :: v_dual_mul_f32 v239, v189, v11
	v_mul_f32_e32 v244, v191, v10
	v_mul_f32_e32 v187, v187, v12
	v_dual_mul_f32 v189, v189, v12 :: v_dual_mul_f32 v246, v190, v11
	v_dual_mul_f32 v241, v191, v9 :: v_dual_mul_f32 v248, v192, v11
	v_mul_f32_e32 v9, v193, v9
	v_mul_f32_e32 v243, v190, v10
	v_mul_f32_e32 v245, v192, v10
	v_dual_mul_f32 v10, v193, v10 :: v_dual_mul_f32 v247, v191, v11
	v_dual_mul_f32 v11, v193, v11 :: v_dual_fmac_f32 v32, v207, v126
	v_mul_f32_e32 v190, v190, v12
	v_dual_mul_f32 v191, v191, v12 :: v_dual_fmac_f32 v44, v9, v138
	v_mul_f32_e32 v192, v192, v12
	v_mul_f32_e32 v12, v193, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v193, v196, v21, 0x7060302
	v_perm_b32 v21, v196, v21, 0x5040100
	v_add_nc_u32_e32 v196, s45, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v30, v205, v124
	v_fmac_f32_e32 v34, v217, v128
	v_dual_fmac_f32 v36, v219, v130 :: v_dual_fmac_f32 v29, v204, v123
	v_fmac_f32_e32 v38, v229, v132
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v196, v193, v21 offset1:16
	v_perm_b32 v21, v197, v24, 0x7060302
	v_perm_b32 v24, v197, v24, 0x5040100
	v_add_nc_u32_e32 v193, s45, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v31, v206, v125 :: v_dual_fmac_f32 v42, v241, v136
	v_dual_fmac_f32 v33, v216, v127 :: v_dual_fmac_f32 v50, v209, v140
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v193, v21, v24 offset1:16
	v_perm_b32 v21, v198, v25, 0x7060302
	v_perm_b32 v24, v198, v25, 0x5040100
	v_add_nc_u32_e32 v25, s45, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v35, v218, v129 :: v_dual_fmac_f32 v48, v208, v139
	v_dual_fmac_f32 v37, v228, v131 :: v_dual_fmac_f32 v56, v222, v145
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v25, v21, v24 offset1:16
	v_perm_b32 v21, v199, v26, 0x7060302
	v_perm_b32 v24, v199, v26, 0x5040100
	v_add_nc_u32_e32 v25, s45, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v39, v230, v133 :: v_dual_fmac_f32 v54, v220, v143
	v_dual_fmac_f32 v40, v231, v134 :: v_dual_fmac_f32 v41, v240, v135
	v_fmac_f32_e32 v60, v234, v149
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v25, v21, v24 offset1:16
	v_perm_b32 v21, v200, v27, 0x7060302
	v_perm_b32 v24, v200, v27, 0x5040100
	v_add_nc_u32_e32 v25, s45, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v43, v242, v137 :: v_dual_fmac_f32 v58, v232, v147
	v_dual_fmac_f32 v51, v210, v141 :: v_dual_fmac_f32 v62, v243, v151
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v25, v21, v24 offset1:16
	v_perm_b32 v21, v201, v28, 0x7060302
	v_perm_b32 v24, v201, v28, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v53, v211, v142 :: v_dual_fmac_f32 v64, v245, v153
	v_dual_fmac_f32 v55, v221, v144 :: v_dual_fmac_f32 v66, v212, v155
	v_dual_fmac_f32 v57, v223, v146 :: v_dual_fmac_f32 v68, v214, v157
	v_dual_fmac_f32 v59, v233, v148 :: v_dual_fmac_f32 v70, v224, v159
	v_dual_fmac_f32 v61, v235, v150 :: v_dual_fmac_f32 v72, v226, v161
	v_dual_fmac_f32 v63, v244, v152 :: v_dual_fmac_f32 v76, v238, v165
	v_dual_fmac_f32 v65, v10, v154 :: v_dual_fmac_f32 v74, v236, v163
	v_dual_fmac_f32 v67, v213, v156 :: v_dual_fmac_f32 v78, v246, v167
	v_dual_fmac_f32 v69, v215, v158 :: v_dual_fmac_f32 v80, v248, v169
	v_dual_fmac_f32 v71, v225, v160 :: v_dual_fmac_f32 v84, v15, v173
	v_dual_fmac_f32 v73, v227, v162 :: v_dual_fmac_f32 v82, v13, v171
	v_dual_fmac_f32 v75, v237, v164 :: v_dual_fmac_f32 v88, v19, v177
	v_dual_fmac_f32 v77, v239, v166 :: v_dual_fmac_f32 v86, v17, v175
	v_dual_fmac_f32 v79, v247, v168 :: v_dual_fmac_f32 v94, v189, v182
	v_fmac_f32_e32 v81, v11, v170
	v_dual_fmac_f32 v83, v14, v172 :: v_dual_fmac_f32 v90, v12, v122
	v_dual_fmac_f32 v85, v16, v174 :: v_dual_fmac_f32 v92, v187, v180
	v_dual_fmac_f32 v87, v18, v176 :: v_dual_add_nc_u32 v10, s45, v114
	v_dual_fmac_f32 v89, v20, v178 :: v_dual_fmac_f32 v96, v191, v184
	v_fmac_f32_e32 v91, v186, v179
	v_fmac_f32_e32 v93, v188, v181
	v_fmac_f32_e32 v95, v190, v183
	v_fmac_f32_e32 v97, v192, v185
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s45, v113
	v_perm_b32 v11, v202, v194, 0x7060302
	v_perm_b32 v12, v202, v194, 0x5040100
	v_perm_b32 v13, v203, v195, 0x7060302
	v_perm_b32 v14, v203, v195, 0x5040100
	ds_store_2addr_b32 v196, v21, v24 offset0:160 offset1:176
	ds_store_2addr_b32 v9, v11, v12 offset1:16
	ds_store_2addr_b32 v10, v13, v14 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v214, v45 :: v_dual_mov_b32 v1, v106
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v3, 32, v214
	v_and_b32_e32 v241, 8, v214
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v105, off offset:36
	scratch_store_b32 off, v3, off offset:4
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
.LBB0_8:                                ; %Flow95
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	scratch_load_b32 v4, off, off offset:4  ; 4-byte Folded Reload
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v251, 6, v214
	v_cmp_eq_u32_e32 vcc_lo, 0, v241
	scratch_store_b32 off, v255, off        ; 4-byte Folded Spill
	v_dual_mov_b32 v242, 0 :: v_dual_lshlrev_b32 v3, 3, v251
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v244, 0
	v_cndmask_b32_e64 v2, 0x210, 0, vcc_lo
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v246, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v233, v1, v3
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v164, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v2, v2, v3
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v248, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v231, 16, v233
	v_xor_b32_e32 v232, 32, v233
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v104, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v24, 48, v233
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v137, 0
	s_mov_b32 s16, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v234, v2, v4
	v_xor_b32_e32 v21, 16, v234
	v_xor_b32_e32 v236, 32, v234
	v_xor_b32_e32 v237, 48, v234
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s12, v234
	v_add_nc_u32_e32 v1, s12, v236
	v_add_nc_u32_e32 v3, s12, v237
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v9, s47, v233
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s12, v21
	ds_load_b128 v[169:172], v4 offset:8192
	ds_load_b128 v[173:176], v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v18, s47, v232
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[102:105], v1 offset:8192
	ds_load_b128 v[157:160], v1
	ds_load_b128 v[161:164], v2 offset:8192
	ds_load_b128 v[165:168], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v20, s47, v231
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v3 offset:8192
	ds_load_b128 v[189:192], v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v7, s22
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[133:136], v9 offset:1024
	ds_load_b128 v[116:119], v9
	ds_load_b128 v[177:180], v18 offset:1024
	ds_load_b128 v[125:128], v18
	ds_load_b128 v[181:184], v20 offset:1024
	ds_load_b128 v[129:132], v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v19, s47, v24
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[193:196], v19 offset:1024
	ds_load_b128 v[137:140], v19
	ds_load_b128 v[197:200], v9 offset:3072
	ds_load_b128 v[149:152], v9 offset:2048
	ds_load_b128 v[201:204], v20 offset:3072
	ds_load_b128 v[205:208], v20 offset:2048
	ds_load_b128 v[209:212], v18 offset:3072
	ds_load_b128 v[215:218], v18 offset:2048
	ds_load_b128 v[219:222], v19 offset:3072
	ds_load_b128 v[223:226], v19 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[173:176], v[116:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[169:172], v[116:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[173:176], v[133:136], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[165:168], v[129:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[161:164], v[129:132], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[181:184], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[157:160], v[125:128], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[102:105], v[125:128], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[169:172], v[133:136], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[169:172], v[149:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[189:192], v[137:140], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[185:188], v[137:140], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[173:176], v[149:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[173:176], v[197:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[169:172], v[197:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[181:184], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[165:168], v[205:208], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[161:164], v[205:208], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[165:168], v[201:204], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[161:164], v[201:204], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[157:160], v[177:180], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[102:105], v[177:180], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[157:160], v[215:218], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[102:105], v[215:218], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[157:160], v[209:212], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[102:105], v[209:212], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[189:192], v[193:196], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[185:188], v[193:196], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[189:192], v[223:226], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[185:188], v[223:226], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[189:192], v[219:222], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[185:188], v[219:222], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v190, v10
	v_cvt_f32_i32_e32 v242, v11
	v_cvt_f32_i32_e32 v243, v12
	v_cvt_f32_i32_e32 v244, v13
	v_cvt_f32_i32_e32 v245, v14
	v_cvt_f32_i32_e32 v246, v15
	v_cvt_f32_i32_e32 v164, v16
	v_cvt_f32_i32_e32 v247, v108
	v_cvt_f32_i32_e32 v248, v109
	v_cvt_f32_i32_e32 v255, v110
	v_cvt_f32_i32_e32 v10, v111
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v12, v113
	v_cvt_f32_i32_e32 v13, v114
	v_cvt_f32_i32_e32 v14, v115
	v_cvt_f32_i32_e32 v235, v117
	v_cvt_f32_i32_e32 v15, v118
	v_cvt_f32_i32_e32 v28, v119
	v_cvt_f32_i32_e32 v16, v120
	v_cvt_f32_i32_e32 v161, v121
	v_cvt_f32_i32_e32 v158, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v162, v124
	v_cvt_f32_i32_e32 v165, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v157, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v166, v137
	v_cvt_f32_i32_e32 v163, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v238, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v112, v149
	v_cvt_f32_i32_e32 v113, v150
	v_cvt_f32_i32_e32 v171, v151
	v_cvt_f32_i32_e32 v115, v152
	v_cvt_f32_i32_e32 v116, v153
	v_cvt_f32_i32_e32 v117, v154
	v_cvt_f32_i32_e32 v118, v155
	v_cvt_f32_i32_e32 v119, v156
	v_cvt_f32_i32_e32 v160, v1
	v_cvt_f32_i32_e32 v239, v2
	v_cvt_f32_i32_e32 v151, v3
	v_cvt_f32_i32_e32 v152, v4
	v_cvt_f32_i32_e32 v120, v5
	v_cvt_f32_i32_e32 v121, v6
	v_cvt_f32_i32_e32 v137, v7
	v_cvt_f32_i32_e32 v138, v8
	v_cvt_f32_i32_e32 v159, v9
.LBB0_10:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
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
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v52, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v49, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v0, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v46, s4, 1
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v99, 0, v99
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v16, off offset:32
	scratch_store_b32 off, v15, off offset:28
	scratch_store_b32 off, v14, off offset:24
	scratch_store_b32 off, v13, off offset:20
	scratch_store_b32 off, v12, off offset:16
	scratch_store_b32 off, v11, off offset:12
	scratch_store_b32 off, v10, off offset:8
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v230, 0
	v_mov_b32_e32 v225, 0
	v_mov_b32_e32 v227, 0
	v_dual_mov_b32 v229, 0 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_mov_b32_e32 v170, 0
	v_mov_b32_e32 v216, 0
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, v3, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_u16 v22, v1, s[8:11], 0 offen
	buffer_load_u16 v146, v3, s[8:11], 0 offen
	buffer_load_u16 v149, v4, s[8:11], 0 offen
	buffer_load_u16 v26, v5, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v100, v101
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v101, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v98, v1, v98
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v98, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v99 offset:40960
	ds_load_b128 v[5:8], v99 offset:40976
	ds_load_b128 v[9:12], v99 offset:41472
	ds_load_b128 v[13:16], v99 offset:41488
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 24 is_stmt 0                ; generate_amdgcn.py:0:24
	v_dual_mov_b32 v122, v164 :: v_dual_add_nc_u32 v17, s45, v21
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v18, s45, v234
	v_dual_mov_b32 v155, v247 :: v_dual_add_nc_u32 v104, s1, v233
	s_mov_b32 s12, 0
	v_dual_mov_b32 v133, v121 :: v_dual_add_nc_u32 v188, s45, v237
	v_dual_mov_b32 v124, v120 :: v_dual_add_nc_u32 v189, s45, v236
	v_dual_mov_b32 v121, v190 :: v_dual_mov_b32 v156, v248
	v_mov_b32_e32 v213, v254
	ds_load_b128 v[247:250], v17 offset:8192
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v252, off offset:48
	scratch_store_b32 off, v238, off offset:64
	v_dual_mov_b32 v120, v214 :: v_dual_add_nc_u32 v211, s1, v232
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v21.l, v26.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[100:103], v104 offset:3072
	ds_load_b128 v[215:218], v104 offset:1024
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v160, off offset:60
	scratch_store_b32 off, v166, off offset:68
	v_dual_mov_b32 v160, v241 :: v_dual_mov_b32 v47, v118
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v162, off offset:76
	scratch_store_b32 off, v239, off offset:52
	scratch_store_b32 off, v163, off offset:56
	scratch_store_b32 off, v242, off offset:72
	ds_load_b128 v[239:242], v104 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b32_e32 v214, v253
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[251:254], v17
	v_mov_b32_e32 v212, v24
	ds_load_b128 v[24:27], v18 offset:8192
	ds_load_b128 v[17:20], v18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[191:194], v104
	v_mov_b32_e32 v164, v116
	v_add_nc_u32_e32 v116, s1, v231
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v230, s19 :: v_dual_mov_b32 v229, s18
	v_dual_mov_b32 v228, s17 :: v_dual_mov_b32 v227, s16
	v_dual_mov_b32 v226, s15 :: v_dual_mov_b32 v125, v243
	v_dual_mov_b32 v225, s14 :: v_dual_mov_b32 v224, s13
	v_mov_b32_e32 v45, v151
	v_mov_b32_e32 v223, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[108:111], v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[167:170], v188 offset:8192
	ds_load_b128 v[207:210], v189
	v_mov_b32_e32 v150, v159
	v_dual_mov_b32 v154, v161 :: v_dual_mov_b32 v163, v115
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[104:107], v116 offset:3072
	v_dual_mov_b32 v161, v112 :: v_dual_mov_b32 v162, v113
	v_mov_b32_e32 v151, v139
	ds_load_b128 v[112:115], v116 offset:2048
	v_dual_mov_b32 v190, v117 :: v_dual_mov_b32 v139, v126
	v_dual_mov_b32 v166, v119 :: v_dual_mov_b32 v153, v141
	ds_load_b128 v[116:119], v116 offset:1024
	v_mov_b32_e32 v159, v147
	v_mov_b32_e32 v147, v134
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[17:20], v[191:194], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[24:27], v[191:194], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[191:198], v[17:20], v[215:218], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[24:27], v[215:218], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[17:20], v[239:242], v[223:230] neg_lo:[1,1,0]
	v_dual_mov_b32 v134, v235 :: v_dual_mov_b32 v141, v246
	v_wmma_i32_16x16x16_iu8 v[231:238], v[24:27], v[239:242], v[223:230] neg_lo:[1,1,0]
	v_mov_b32_e32 v126, v244
	v_mov_b16_e32 v23.l, v22.l
	v_mov_b32_e32 v22, v46
	v_mov_b32_e32 v46, v152
	v_mov_b32_e32 v152, v140
	v_mov_b32_e32 v140, v245
	v_wmma_i32_16x16x16_iu8 v[239:246], v[17:20], v[100:103], v[223:230] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[24:27], v[100:103], v[223:230] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[17:20], v211
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[24:27], v189 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[251:254], v[108:111], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[247:250], v[108:111], v[180:187] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[100:103], v188
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v188, s1, v212
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[251:254], v[116:119], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[247:250], v[116:119], v[199:206] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[108:111], v211 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[215:222], v[251:254], v[112:115], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[231:238], v[247:250], v[112:115], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[239:246], v[251:254], v[104:107], v[239:246] neg_lo:[1,1,0]
	v_dual_mov_b32 v254, v213 :: v_dual_mov_b32 v253, v214
	v_wmma_i32_16x16x16_iu8 v[223:230], v[247:250], v[104:107], v[223:230] neg_lo:[1,1,0]
	scratch_load_b32 v252, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[207:210], v[17:20], v[172:179] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[24:27], v[17:20], v[180:187] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[17:20], v188 offset:3072
	ds_load_b128 v[104:107], v211 offset:2048
	ds_load_b128 v[211:214], v211 offset:3072
	ds_load_b128 v[247:250], v188 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[207:210], v[108:111], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[24:27], v[108:111], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[207:210], v[104:107], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[231:238], v[24:27], v[104:107], v[231:238] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[239:246], v[207:210], v[211:214], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[24:27], v[211:214], v[223:230] neg_lo:[1,1,0]
	v_mov_b32_e32 v214, v120
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[100:103], v[247:250], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[231:238], v[167:170], v[247:250], v[231:238] neg_lo:[1,1,0]
	v_mov_b32_e32 v247, v155
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v188
	ds_load_b128 v[116:119], v188 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[239:246], v[100:103], v[17:20], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[167:170], v[17:20], v[223:230] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v213, v238
	scratch_load_b32 v238, off, off offset:64 ; 4-byte Folded Reload
	v_mov_b16_e32 v26.l, v21.l
	v_mov_b32_e32 v120, v124
	v_cvt_f32_i32_e32 v207, v232
	v_cvt_f32_i32_e32 v208, v233
	v_cvt_f32_i32_e32 v209, v234
	v_cvt_f32_i32_e32 v210, v235
	v_cvt_f32_i32_e32 v211, v236
	v_cvt_f32_i32_e32 v212, v237
	v_dual_mov_b32 v235, v134 :: v_dual_mov_b32 v134, v147
	v_mov_b32_e32 v147, v159
	v_mov_b32_e32 v159, v150
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[100:103], v[112:115], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[167:170], v[112:115], v[180:187] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[191:198], v[100:103], v[116:119], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[167:170], v[116:119], v[199:206] neg_lo:[1,1,0]
	v_mov_b32_e32 v115, v163
	v_mov_b32_e32 v113, v162
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v182, v192
	v_cvt_f32_i32_e32 v188, v198
	v_cvt_f32_i32_e32 v192, v201
	v_cvt_f32_i32_e32 v198, v215
	v_cvt_f32_i32_e32 v201, v218
	v_cvt_f32_i32_e32 v215, v239
	v_cvt_f32_i32_e32 v218, v242
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v242, off, off offset:72
	scratch_load_b32 v163, off, off offset:56
	scratch_load_b32 v239, off, off offset:52
	scratch_load_b32 v162, off, off offset:76
	v_mov_b32_e32 v119, v166
	v_dual_mov_b32 v117, v190 :: v_dual_mov_b32 v190, v121
	v_cvt_f32_i32_e32 v101, v174
	v_cvt_f32_i32_e32 v174, v181
	v_cvt_f32_i32_e32 v181, v191
	v_cvt_f32_i32_e32 v191, v200
	v_cvt_f32_i32_e32 v200, v217
	v_cvt_f32_i32_e32 v217, v241
	v_mov_b32_e32 v241, v160
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v166, off, off offset:68
	scratch_load_b32 v160, off, off offset:60
	v_mov_b32_e32 v112, v161
	v_mov_b32_e32 v118, v47
	v_mov_b32_e32 v116, v164
	v_dual_mov_b32 v164, v122 :: v_dual_mov_b32 v121, v133
	v_dual_mov_b32 v248, v156 :: v_dual_and_b32 v251, 6, v214
	v_dual_mov_b32 v161, v154 :: v_dual_and_b32 v250, 0xf0, v214
	v_and_b32_e32 v249, 15, v214
	v_cvt_f32_i32_e32 v17, v172
	v_cvt_f32_i32_e32 v100, v173
	v_cvt_f32_i32_e32 v168, v176
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v172, v179
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v176, v183
	v_cvt_f32_i32_e32 v177, v184
	v_cvt_f32_i32_e32 v178, v185
	v_cvt_f32_i32_e32 v179, v186
	v_cvt_f32_i32_e32 v180, v187
	v_cvt_f32_i32_e32 v183, v193
	v_cvt_f32_i32_e32 v184, v194
	v_cvt_f32_i32_e32 v185, v195
	v_cvt_f32_i32_e32 v186, v196
	v_cvt_f32_i32_e32 v187, v197
	v_cvt_f32_i32_e32 v189, v199
	v_cvt_f32_i32_e32 v193, v202
	v_cvt_f32_i32_e32 v194, v203
	v_cvt_f32_i32_e32 v195, v204
	v_cvt_f32_i32_e32 v196, v205
	v_cvt_f32_i32_e32 v197, v206
	v_cvt_f32_i32_e32 v199, v216
	v_cvt_f32_i32_e32 v202, v219
	v_cvt_f32_i32_e32 v203, v220
	v_cvt_f32_i32_e32 v204, v221
	v_cvt_f32_i32_e32 v205, v222
	v_cvt_f32_i32_e32 v206, v231
	v_cvt_f32_i32_e32 v216, v240
	v_cvt_f32_i32_e32 v219, v243
	v_mov_b32_e32 v243, v125
	v_cvt_f32_i32_e32 v220, v244
	v_mov_b32_e32 v244, v126
	v_mov_b32_e32 v126, v139
	v_mov_b32_e32 v139, v151
	v_mov_b32_e32 v151, v45
	v_cvt_f32_i32_e32 v221, v245
	v_mov_b32_e32 v245, v140
	v_mov_b32_e32 v140, v152
	v_mov_b32_e32 v152, v46
	v_mov_b32_e32 v46, v22
	v_mov_b16_e32 v22.l, v23.l
	v_cvt_f32_i32_e32 v222, v246
	v_mov_b32_e32 v246, v141
	v_mov_b32_e32 v141, v153
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v229, v229
	v_cvt_f32_i32_e32 v230, v230
.LBB0_12:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v20, off, off          ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s44, 31
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v45.l, 0
.Ltmp25:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 25
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v45.h, v26.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s44, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v18, v52, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v19, v49, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v24, v0, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v25, v46, s1, 1
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_mul_f32 v27, v15, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v14, v45
	v_mul_f32_e32 v47, v13, v45
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v16, v45
	v_mul_f32_e32 v49, v12, v45
	v_mul_f32_e32 v52, v11, v45
	v_mul_f32_e32 v102, v10, v45
	v_mul_f32_e32 v103, v9, v45
	v_mul_f32_e32 v104, v8, v45
	v_mul_f32_e32 v105, v7, v45
	v_mul_f32_e32 v106, v6, v45
	v_mul_f32_e32 v107, v5, v45
	v_mul_f32_e32 v108, v4, v45
	v_mul_f32_e32 v109, v3, v45
	v_mul_f32_e32 v110, v2, v45
	v_mul_f32_e32 v111, v1, v45
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v45.h, v149.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v108, v115, v85
	v_fma_f32 v109, v109, v171, v84
	v_fma_f32 v52, v52, v151, v93
	v_fma_f32 v104, v104, v119, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v153, v4, v45
	v_mul_f32_e32 v154, v3, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v85, v108, s3
	v_cndmask_b32_e64 v84, v84, v109, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v105, v118, v88
	v_fma_f32 v108, v153, v136, v69
	v_fma_f32 v109, v154, v135, v68
	v_fma_f32 v106, v106, v117, v87
	v_fma_f32 v107, v107, v116, v86
	v_fma_f32 v110, v110, v113, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v108, s3
	v_cndmask_b32_e64 v68, v68, v109, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v108, off, off offset:32
	scratch_load_b32 v109, off, off offset:28
	v_fma_f32 v111, v111, v112, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v104, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v138, v90
	v_fma_f32 v27, v27, v137, v97
	v_fma_f32 v46, v46, v121, v96
	v_fma_f32 v102, v102, v239, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v93, v52, s3
	v_cndmask_b32_e64 v26, v90, v26, s3
	v_cndmask_b32_e64 v27, v97, v27, s3
	v_cndmask_b32_e64 v46, v96, v46, s3
	v_cndmask_b32_e64 v90, v92, v102, s3
	v_cndmask_b32_e64 v88, v88, v105, s3
	v_cndmask_b32_e64 v83, v83, v110, s3
	v_cndmask_b32_e64 v87, v87, v106, s3
	v_cndmask_b32_e64 v86, v86, v107, s3
	v_cndmask_b32_e64 v82, v82, v111, s3
	s_mov_b32 s0, 0x76543210
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v20, v20, s1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x3
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s8, s24
.Ltmp27:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v113, v15, v45 :: v_dual_lshlrev_b32 v18, 16, v18
	v_mul_f32_e32 v115, v13, v45
	v_mul_f32_e32 v117, v11, v45
	v_mul_f32_e32 v119, v9, v45
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v151, v6, v45 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v49, v152, v94
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v16, v45
	v_mul_f32_e32 v114, v14, v45
	v_mul_f32_e32 v116, v12, v45
	v_mul_f32_e32 v118, v10, v45
	v_mul_f32_e32 v149, v8, v45
	v_mul_f32_e32 v150, v7, v45
	v_mul_f32_e32 v152, v5, v45
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v155, v2, v45 :: v_dual_lshlrev_b32 v24, 16, v24
	v_mul_f32_e32 v156, v1, v45
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v45.h, v146.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v149, v140, v73
	v_fma_f32 v47, v47, v120, v95
	v_fma_f32 v103, v103, v160, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v94, v49, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v140, v1, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v112, v148, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v95, v47, s3
	v_cndmask_b32_e64 v91, v91, v103, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v113, v147, v80
	v_fma_f32 v21, v140, v235, v48
	v_fma_f32 v94, v114, v238, v79
	v_fma_f32 v95, v115, v145, v78
	v_fma_f32 v96, v116, v144, v77
	v_fma_f32 v97, v117, v143, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v48, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v48, off, off offset:24 ; 4-byte Folded Reload
	v_fma_f32 v102, v118, v142, v75
	v_fma_f32 v103, v119, v141, v74
	v_fma_f32 v105, v150, v139, v72
	v_fma_f32 v110, v155, v134, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v16, v45
	v_mul_f32_e32 v113, v15, v45
	v_mul_f32_e32 v114, v14, v45
	v_mul_f32_e32 v115, v13, v45
	v_mul_f32_e32 v116, v12, v45
	v_mul_f32_e32 v117, v11, v45
	v_mul_f32_e32 v118, v10, v45
	v_mul_f32_e32 v119, v9, v45
	v_mul_f32_e32 v133, v8, v45
	v_mul_f32_e32 v134, v7, v45
	v_mul_f32_e32 v135, v6, v45
	v_mul_f32_e32 v136, v5, v45
	v_mul_f32_e32 v137, v4, v45
	v_mul_f32_e32 v138, v3, v45
	v_mul_f32_e32 v139, v2, v45
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v45.h, v22.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v81, v92, s3
	v_cndmask_b32_e64 v80, v80, v93, s3
	v_cndmask_b32_e64 v79, v79, v94, s3
	v_cndmask_b32_e64 v78, v78, v95, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v16, v45
	v_mul_f32_e32 v15, v15, v45
	v_mul_f32_e32 v14, v14, v45
	v_mul_f32_e32 v13, v13, v45
	v_mul_f32_e32 v12, v12, v45
	v_mul_f32_e32 v11, v11, v45
	v_mul_f32_e32 v10, v10, v45
	v_mul_f32_e32 v9, v9, v45
	v_mul_f32_e32 v1, v1, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v112, v132, v65
	v_fma_f32 v11, v11, v255, v39
	v_fma_f32 v10, v10, v248, v38
	v_fma_f32 v9, v9, v247, v37
	v_fma_f32 v23, v1, v159, v29
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v1, 16, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v11, s3
	v_cndmask_b32_e64 v38, v38, v10, s3
	v_cndmask_b32_e64 v37, v37, v9, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v94, v114, v130, v63
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v98, v1 offset:40960
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v95, v115, v129, v62
	v_fma_f32 v28, v138, v28, v51
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v45
	v_mul_f32_e32 v6, v6, v45
	v_mul_f32_e32 v4, v4, v45
	v_mul_f32_e32 v3, v3, v45
	v_mul_f32_e32 v2, v2, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v65, v92, s3
	v_cndmask_b32_e64 v63, v63, v94, s3
	v_cndmask_b32_e64 v62, v62, v95, s3
	v_cndmask_b32_e64 v28, v51, v28, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v8, v164, v36
	v_fma_f32 v51, v6, v245, v34
	v_fma_f32 v94, v3, v242, v31
	v_fma_f32 v95, v2, v190, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v77, v96, s3
	v_cndmask_b32_e64 v76, v76, v97, s3
	v_cndmask_b32_e64 v75, v75, v102, s3
	v_cndmask_b32_e64 v74, v74, v103, s3
	v_cndmask_b32_e64 v22, v36, v22, s3
	v_cndmask_b32_e64 v34, v34, v51, s3
	v_cndmask_b32_e64 v31, v31, v94, s3
	v_cndmask_b32_e64 v30, v30, v95, s3
	v_cndmask_b32_e64 v23, v29, v23, s3
	v_cndmask_b32_e64 v73, v73, v104, s3
	v_cndmask_b32_e64 v72, v72, v105, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v67, v110, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v48, v44
	scratch_load_b32 v48, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v44, v16, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v15, v15, v48, v43
	scratch_load_b32 v48, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v15, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v14, v14, v48, v42
	scratch_load_b32 v48, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v14, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v13, v13, v48, v41
	scratch_load_b32 v48, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v99 offset:41488
	v_mul_f32_e32 v7, v7, v45
	v_mul_f32_e32 v5, v5, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v5, v244, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v92, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v132, v14, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v48, v40
	v_fma_f32 v48, v7, v246, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v99 offset:40976
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v12, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v99 offset:41472
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v48, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v125, v7, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v96, v116, v128, v61
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v116, v13, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v97, v117, v127, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v112, v9, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v113, v131, v64
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v114, v11, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v103, v119, v165, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v127, v9, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v118, v126, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v93, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v4, v243, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[1:4], v99 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v96, s3
	v_cndmask_b32_e64 v60, v60, v97, s3
	v_cndmask_b32_e64 v59, v59, v102, s3
	v_cndmask_b32_e64 v58, v58, v103, s3
	v_cndmask_b32_e64 v32, v32, v93, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v5, v18
	v_mul_f32_e32 v92, v6, v18
	v_mul_f32_e32 v93, v7, v18
	v_mul_f32_e32 v94, v8, v18
	v_mul_f32_e32 v95, v9, v18
	v_mul_f32_e32 v96, v10, v18
	v_mul_f32_e32 v97, v11, v18
	v_mul_f32_e32 v98, v12, v18
	v_mul_f32_e32 v99, v13, v18
	v_mul_f32_e32 v102, v14, v18
	v_mul_f32_e32 v103, v15, v18
	v_mul_f32_e32 v115, v12, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v152, v166, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v118, v15, v20 :: v_dual_mul_f32 v29, v1, v18
	v_mul_f32_e32 v36, v2, v18
	v_mul_f32_e32 v44, v3, v18
	v_mul_f32_e32 v48, v4, v18
	v_mul_f32_e32 v18, v16, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v151, v163, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v70, v107, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v133, v162, v57
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v2, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v137, v108, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v71, v106, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v135, v158, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v121, v3, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v156, v157, v66
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v122, v4, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v109, v139, v109, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v129, v11, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v136, v161, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v131, v13, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v134, v123, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v66, v111, s3
	v_cndmask_b32_e64 v57, v57, v104, s3
	v_cndmask_b32_e64 v55, v55, v106, s3
	v_cndmask_b32_e64 v54, v54, v107, s3
	v_cndmask_b32_e64 v56, v56, v105, s3
	v_cndmask_b32_e64 v53, v53, v108, s3
	v_cndmask_b32_e64 v50, v50, v109, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v104, v1, v20
	v_mul_f32_e32 v105, v2, v20
	v_mul_f32_e32 v106, v3, v20
	v_mul_f32_e32 v107, v4, v20
	v_mul_f32_e32 v108, v5, v20
	v_mul_f32_e32 v109, v6, v20
	v_mul_f32_e32 v110, v7, v20
	v_mul_f32_e32 v111, v8, v20
	v_mul_f32_e32 v113, v10, v20
	v_mul_f32_e32 v117, v14, v20
	v_mul_f32_e32 v20, v16, v20
	v_mul_f32_e32 v119, v1, v24
	v_mul_f32_e32 v123, v5, v24
	v_mul_f32_e32 v124, v6, v24
	v_mul_f32_e32 v126, v8, v24
	v_mul_f32_e32 v128, v10, v24
	v_mul_f32_e32 v130, v12, v24
	v_mul_f32_e32 v133, v15, v24
	v_dual_mul_f32 v24, v16, v24 :: v_dual_mul_f32 v1, v1, v25
	v_mul_f32_e32 v2, v2, v25
	v_mul_f32_e32 v3, v3, v25
	v_mul_f32_e32 v4, v4, v25
	v_mul_f32_e32 v5, v5, v25
	v_mul_f32_e32 v6, v6, v25
	v_mul_f32_e32 v7, v7, v25
	v_mul_f32_e32 v8, v8, v25
	v_mul_f32_e32 v9, v9, v25
	v_mul_f32_e32 v10, v10, v25
	v_mul_f32_e32 v11, v11, v25
	v_mul_f32_e32 v12, v12, v25
	v_mul_f32_e32 v13, v13, v25
	v_mul_f32_e32 v14, v14, v25
	v_mul_f32_e32 v15, v15, v25
	v_mul_f32_e32 v16, v16, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v29, v17, v23
	v_fma_f32 v25, v36, v100, v30
	v_fma_f32 v29, v44, v101, v31
	v_fma_f32 v36, v48, v167, v32
	v_fma_f32 v18, v18, v180, v19
	v_fma_f32 v44, v51, v168, v33
	v_fma_f32 v48, v92, v169, v34
	v_fma_f32 v51, v93, v170, v35
	v_fma_f32 v92, v94, v172, v22
	v_fma_f32 v93, v95, v173, v37
	v_fma_f32 v94, v96, v174, v38
	v_fma_f32 v95, v97, v175, v39
	v_fma_f32 v96, v98, v176, v40
	v_fma_f32 v97, v99, v177, v41
	v_fma_f32 v98, v102, v178, v42
	v_fma_f32 v99, v103, v179, v43
	v_fma_f32 v100, v104, v181, v21
	v_fma_f32 v102, v106, v183, v28
	v_fma_f32 v103, v107, v184, v53
	v_fma_f32 v104, v108, v185, v54
	v_fma_f32 v106, v110, v187, v56
	v_fma_f32 v108, v112, v189, v58
	v_fma_f32 v15, v15, v229, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v23, v17, s2
	v_cndmask_b32_e64 v23, v30, v25, s2
	v_cndmask_b32_e64 v25, v31, v29, s2
	v_cndmask_b32_e64 v29, v32, v36, s2
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v101, v105, v182, v50
	v_fma_f32 v105, v109, v186, v55
	v_fma_f32 v112, v116, v194, v62
	v_fma_f32 v16, v16, v230, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v33, v44, s2
	v_cndmask_b32_e64 v31, v34, v48, s2
	v_cndmask_b32_e64 v32, v35, v51, s2
	v_cndmask_b32_e64 v33, v37, v93, s2
	v_cndmask_b32_e64 v34, v38, v94, s2
	v_cndmask_b32_e64 v35, v39, v95, s2
	v_cndmask_b32_e64 v36, v40, v96, s2
	v_cndmask_b32_e64 v37, v41, v97, s2
	v_cndmask_b32_e64 v38, v42, v98, s2
	v_cndmask_b32_e64 v39, v43, v99, s2
	v_cndmask_b32_e64 v28, v28, v102, s2
	v_cndmask_b32_e64 v40, v53, v103, s2
	v_cndmask_b32_e64 v41, v54, v104, s2
	v_cndmask_b32_e64 v43, v56, v106, s2
	v_cndmask_b32_e64 v48, v58, v108, s2
	v_cndmask_b32_e64 v15, v27, v15, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v28, v28, v28
	v_max_f32_e32 v27, v29, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v111, v188, v57
	v_fma_f32 v109, v113, v191, v59
	v_fma_f32 v110, v114, v192, v60
	v_fma_f32 v113, v117, v195, v63
	v_fma_f32 v114, v118, v196, v64
	v_fma_f32 v116, v120, v199, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v55, v105, s2
	v_cndmask_b32_e64 v54, v62, v112, s2
	v_cndmask_b32_e64 v16, v26, v16, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v25, 0, v25
	v_max_f32_e32 v29, v31, v31
	v_max_f32_e32 v31, v33, v33
	v_dual_max_f32 v33, v35, v35 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v26, 0, v27 :: v_dual_max_f32 v27, v30, v30
	v_max_f32_e32 v30, v32, v32
	v_max_f32_e32 v32, v34, v34
	v_max_f32_e32 v34, v36, v36
	v_max_f32_e32 v36, v38, v38
	v_dual_max_f32 v38, v40, v40 :: v_dual_max_f32 v35, v37, v37
	v_max_f32_e32 v37, v39, v39
	v_max_f32_e32 v39, v41, v41
	v_max_f32_e32 v41, v43, v43
	v_max_f32_e32 v43, v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v115, v193, v61
	v_fma_f32 v20, v20, v197, v65
	v_fma_f32 v115, v119, v198, v66
	v_fma_f32 v117, v121, v200, v68
	v_fma_f32 v118, v122, v201, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v21, v100, s2
	v_cndmask_b32_e64 v21, v50, v101, s2
	v_cndmask_b32_e64 v44, v57, v107, s2
	v_cndmask_b32_e64 v50, v59, v109, s2
	v_cndmask_b32_e64 v55, v63, v113, s2
	v_cndmask_b32_e64 v56, v64, v114, s2
	v_cndmask_b32_e64 v58, v67, v116, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v32, 0, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v225, v52
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v48, v54, v54 :: v_dual_max_f32 v43, 0, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v226, v49
	v_fma_f32 v119, v123, v202, v70
	v_fma_f32 v120, v124, v203, v71
	v_fma_f32 v121, v125, v204, v72
	v_fma_f32 v24, v24, v213, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v60, v110, s2
	v_cndmask_b32_e64 v20, v65, v20, s2
	v_cndmask_b32_e64 v57, v66, v115, s2
	v_cndmask_b32_e64 v59, v68, v117, s2
	v_cndmask_b32_e64 v60, v69, v118, s2
	v_cndmask_b32_e64 v11, v52, v11, s2
	v_cndmask_b32_e64 v12, v49, v12, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v29, 0, v29
	v_max_f32_e32 v19, v19, v19
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v40, v42, v42
	v_max_f32_e32 v42, v44, v44
	v_max_f32_e32 v44, v50, v50
	v_max_f32_e32 v50, 0, v48
	v_dual_max_f32 v48, v55, v55 :: v_dual_max_f32 v49, v56, v56
	v_max_f32_e32 v52, v58, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v122, v126, v205, v73
	v_fma_f32 v123, v127, v206, v74
	v_fma_f32 v124, v128, v207, v75
	v_fma_f32 v126, v130, v209, v77
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v92, s2
	v_cndmask_b32_e64 v53, v61, v111, s2
	v_cndmask_b32_e64 v61, v70, v119, s2
	v_cndmask_b32_e64 v62, v71, v120, s2
	v_cndmask_b32_e64 v63, v72, v121, s2
	v_cndmask_b32_e64 v24, v81, v24, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v30, 0, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v215, v82
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v19, 0, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v218, v85
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v55, 0, v49
	v_max_f32_e32 v54, 0, v48
	v_dual_max_f32 v48, v59, v59 :: v_dual_max_f32 v49, v60, v60
	v_max_f32_e32 v81, 0, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v125, v129, v208, v76
	v_fma_f32 v129, v133, v212, v80
	v_fma_f32 v5, v5, v219, v86
	v_fma_f32 v6, v6, v220, v87
	v_fma_f32 v9, v9, v223, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v74, v123, s2
	v_cndmask_b32_e64 v66, v75, v124, s2
	v_cndmask_b32_e64 v68, v77, v126, s2
	v_cndmask_b32_e64 v1, v82, v1, s2
	v_cndmask_b32_e64 v4, v85, v4, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v34, 0, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v227, v47
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v39, 0, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v222, v89
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v52, v61, v61 :: v_dual_max_f32 v85, 0, v48
	v_max_f32_e32 v56, v63, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v127, v131, v210, v78
	v_fma_f32 v128, v132, v211, v79
	v_fma_f32 v2, v2, v216, v83
	v_fma_f32 v7, v7, v221, v88
	v_fma_f32 v10, v10, v224, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v73, v122, s2
	v_cndmask_b32_e64 v67, v76, v125, s2
	v_cndmask_b32_e64 v71, v80, v129, s2
	v_cndmask_b32_e64 v5, v86, v5, s2
	v_cndmask_b32_e64 v6, v87, v6, s2
	v_cndmask_b32_e64 v8, v89, v8, s2
	v_cndmask_b32_e64 v9, v91, v9, s2
	v_cndmask_b32_e64 v13, v47, v13, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v22, 0, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v217, v84
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v47, v53, v53 :: v_dual_max_f32 v20, 0, v20
	v_max_f32_e32 v53, v62, v62
	v_dual_max_f32 v87, 0, v52 :: v_dual_max_f32 v86, 0, v49
	v_max_f32_e32 v89, 0, v56
	v_dual_max_f32 v49, v65, v65 :: v_dual_max_f32 v56, v68, v68
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v52, v66, v66
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v5, v5, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v78, v127, s2
	v_cndmask_b32_e64 v70, v79, v128, s2
	v_cndmask_b32_e64 v2, v83, v2, s2
	v_cndmask_b32_e64 v3, v84, v3, s2
	v_cndmask_b32_e64 v7, v88, v7, s2
	v_cndmask_b32_e64 v10, v90, v10, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v23, v23, v23
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v42, 0, v42
	v_max_f32_e32 v47, 0, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v228, v46
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v88, 0, v53 :: v_dual_max_f32 v53, v67, v67
	v_max_f32_e32 v48, v64, v64
	v_dual_max_f32 v93, 0, v56 :: v_dual_max_f32 v90, 0, v49
	v_dual_max_f32 v91, 0, v52 :: v_dual_max_f32 v52, v71, v71
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v6, v6, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v46, v14, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v28, 0, v28
	v_max_f32_e32 v23, 0, v23
	v_max_f32_e32 v27, 0, v27
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v40, 0, v40
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v21, 0, v21
	v_max_f32_e32 v46, v51, v51
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v35, 0, v35
	v_max_f32_e32 v51, v57, v57
	v_dual_max_f32 v92, 0, v53 :: v_dual_max_f32 v3, v3, v3
	v_dual_max_f32 v49, v70, v70 :: v_dual_max_f32 v64, 0, v48
	v_max_f32_e32 v48, v69, v69
	v_dual_max_f32 v96, 0, v52 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v11, v11, v11
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v15, v15, v15
	v_dual_max_f32 v12, v12, v12 :: v_dual_mul_f32 v83, v26, v26
	v_dual_max_f32 v16, v16, v16 :: v_dual_mul_f32 v53, v22, v22
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v41, 0, v41 :: v_dual_max_f32 v44, 0, v44
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v51, 0, v51
	v_dual_max_f32 v95, 0, v49 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v11, 0, v11
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v94, 0, v48
	v_max_f32_e32 v5, 0, v5
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v8, v8, v8
	v_dual_max_f32 v14, v14, v14 :: v_dual_mul_f32 v57, v32, v32
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v61, v34, v34
	v_dual_max_f32 v98, 0, v15 :: v_dual_mul_f32 v69, v37, v37
	v_dual_max_f32 v99, 0, v16 :: v_dual_max_f32 v10, 0, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v49, v29, v29
	v_dual_mul_f32 v100, v17, v17 :: v_dual_mul_f32 v65, v35, v35
	v_dual_mul_f32 v84, v23, v23 :: v_dual_mul_f32 v77, v28, v28
	v_dual_mul_f32 v48, v27, v27 :: v_dual_mul_f32 v79, v40, v40
	v_dual_mul_f32 v60, v33, v33 :: v_dual_mul_f32 v71, v43, v43
	v_dual_mul_f32 v66, v36, v36 :: v_dual_mul_f32 v63, v54, v54
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v97, 0, v14 :: v_dual_mul_f32 v82, v25, v25
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v73, v19, v19 :: v_dual_mul_f32 v52, v30, v30
	v_dual_mul_f32 v75, v41, v41 :: v_dual_mul_f32 v56, v31, v31
	v_mul_f32_e32 v67, v46, v46
	v_dual_mul_f32 v70, v18, v18 :: v_dual_mul_f32 v59, v55, v55
	v_mul_f32_e32 v74, v21, v21
	v_dual_mul_f32 v78, v38, v38 :: v_dual_mul_f32 v55, v81, v81
	v_mul_f32_e32 v80, v39, v39
	v_dual_mul_f32 v72, v44, v44 :: v_dual_mul_f32 v41, v91, v91
	v_dual_mul_f32 v68, v47, v47 :: v_dual_mul_f32 v39, v92, v92
	v_dual_mul_f32 v62, v50, v50 :: v_dual_mul_f32 v37, v95, v95
	v_dual_mul_f32 v58, v20, v20 :: v_dual_mul_f32 v33, v3, v3
	v_dual_mul_f32 v54, v51, v51 :: v_dual_mul_f32 v35, v96, v96
	v_dual_mul_f32 v50, v85, v85 :: v_dual_mul_f32 v31, v4, v4
	v_dual_mul_f32 v51, v86, v86 :: v_dual_mul_f32 v46, v87, v87
	v_mul_f32_e32 v29, v6, v6
	v_dual_mul_f32 v47, v88, v88 :: v_dual_mul_f32 v40, v93, v93
	v_mul_f32_e32 v23, v10, v10
	v_mul_f32_e32 v38, v94, v94
	v_mul_f32_e32 v34, v1, v1
	v_dual_mul_f32 v32, v2, v2 :: v_dual_max_f32 v1, v100, v84
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v83, v48, v49
	v_max3_f32 v3, v57, v60, v61
	v_max3_f32 v4, v65, v66, v69
.Ltmp29:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v76, v42, v42 :: v_dual_mul_f32 v43, v89, v89
	v_dual_mul_f32 v44, v64, v64 :: v_dual_mul_f32 v15, v7, v7
	v_mul_f32_e32 v42, v90, v90
	v_mul_f32_e32 v36, v24, v24
	v_mul_f32_e32 v16, v8, v8
	v_dual_mul_f32 v22, v9, v9 :: v_dual_mul_f32 v9, v12, v12
	v_mul_f32_e32 v10, v13, v13
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v82, v2
	v_max3_f32 v2, v3, v4, v70
	v_max_f32_e32 v3, v73, v74
	v_max3_f32 v4, v78, v80, v79
	v_max3_f32 v7, v72, v67, v68
	v_max3_f32 v8, v62, v63, v59
	v_max_f32_e32 v12, v54, v55
	v_max3_f32 v13, v51, v46, v47
	v_max3_f32 v17, v41, v39, v40
	v_max3_f32 v18, v38, v37, v35
.Ltmp31:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v30, v5, v5
	v_dual_mul_f32 v14, v11, v11 :: v_dual_mul_f32 v11, v97, v97
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v52, v53, v56
	v_max3_f32 v6, v75, v76, v71
	v_max3_f32 v3, v3, v77, v4
	v_max3_f32 v4, v7, v8, v58
	v_max3_f32 v7, v43, v44, v42
	v_max3_f32 v8, v12, v50, v13
	v_max3_f32 v17, v17, v18, v36
	v_max3_f32 v1, v1, v5, v2
	v_max3_f32 v2, v3, v6, v4
.Ltmp33:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v98, v98 :: v_dual_mul_f32 v13, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v3, v8, v7, v17
	v_max_f32_e32 v4, v34, v32
	v_max3_f32 v7, v23, v14, v9
	v_max3_f32 v8, v10, v11, v12
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v17, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v28.h, v45.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	v_max3_f32 v5, v31, v30, v29
	v_max_f32_e32 v19, v3, v19
	v_max3_f32 v6, v15, v16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v4, v4, v33, v5
	v_max3_f32 v5, v7, v8, v13
	v_dual_max_f32 v7, v17, v17 :: v_dual_max_f32 v8, v18, v18
	v_max3_f32 v5, v4, v6, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v17, v1, v7 :: v_dual_max_f32 v18, v2, v8
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 4, v214
	v_lshl_add_u32 v2, v253, 9, 0
	v_lshlrev_b32_e32 v4, 5, v253
	v_permlanex16_b32 v3, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v8, 0x80, v214
	v_and_b32_e32 v7, 0x60, v214
	v_lshl_add_u32 v2, v1, 2, v2
	v_and_or_b32 v20, 0x680, v254, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_lshlrev_b32 v6, 1, v8
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v21, v4, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v2, v241, 4, v2
	v_lshrrev_b32_e32 v24, 3, v8
	v_xor_b32_e32 v25, v20, v7
	v_lshl_add_u32 v26, v1, 6, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v20, v5, v3
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, v2, v6, v21
	v_lshlrev_b32_e32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v26, v24, v25
	ds_store_b128 v2, v[17:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v2, v17 :: v_dual_mov_b32 v3, v18
	v_mov_b32_e32 v5, v19
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v21, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v2, v17, v2 :: v_dual_max_f32 v17, v19, v19
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v19, v2
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v17, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v18, v3 :: v_dual_max_f32 v18, v20, v20
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v20, v3 :: v_dual_max_f32 v17, v21, v18
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v21, v17 :: v_dual_max_f32 v2, v2, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v19, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v18, v5 :: v_dual_max_f32 v3, v3, v20
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v21, v3 :: v_dual_max_f32 v18, v18, v18
	v_mov_b32_e32 v20, v2
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v5, v18
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v24, v17, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v18, v21, v21
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v21, 1, v7
	v_mov_b32_e32 v19, v5
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v17, v20, v20
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v25, v24 :: v_dual_max_f32 v18, v3, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v17, v2, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v19, v19 :: v_dual_max_f32 v3, v25, v25
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v25, 3, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v19, v5, v2 :: v_dual_add_nc_u32 v8, 0, v8
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v2, 0, v252
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v20, v24, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v3, v8, v21, v25
	v_add3_u32 v1, v2, v1, v25
	ds_store_b128 v3, v[17:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v1
.Ltmp67:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v1, v17, v17 :: v_dual_max_f32 v8, v19, v19
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v18, 0x2b8cbccc, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v20, 0x2b8cbccc, v20
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v25, null, 0x40e00000, 0x40e00000, v20
	v_rcp_f32_e32 v3, v2
	v_div_scale_f32 v81, s1, v20, 0x40e00000, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v5, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v5, v3
	v_div_scale_f32 v5, vcc_lo, v1, 0x40e00000, v1
	v_dual_max_f32 v17, 0x2b8cbccc, v8 :: v_dual_mul_f32 v8, v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v2, v8, v5
	v_fmac_f32_e32 v8, v21, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v17
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v18
	v_fma_f32 v2, -v2, v8, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v24, v19
	v_div_fmas_f32 v2, v2, v3, v8
	v_div_scale_f32 v3, vcc_lo, v17, 0x40e00000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v1, v2, 0x40e00000, v1
	v_fma_f32 v5, -v19, v24, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v28.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v24, v5, v24
	v_rcp_f32_e32 v5, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v2, v3, v24
	v_fma_f32 v27, -v19, v2, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v21, v5, 1.0
	v_dual_fmac_f32 v2, v27, v24 :: v_dual_fmac_f32 v5, v8, v5
	v_div_scale_f32 v64, s0, v18, 0x40e00000, v18
	v_fma_f32 v8, -v25, v26, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 1, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v28, v64, v5
	v_fmac_f32_e32 v26, v8, v26
	v_fma_f32 v8, -v19, v2, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v27, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v21, v28, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v19, v81, v26
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v85, 0xffff0000, v3
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v2, v8, v24, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v1, v5
	v_fma_f32 v1, -v25, v19, v81
	s_mov_b32 vcc_lo, s0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v86, null, v85, v85, v83
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v2, 0x40e00000, v17
	v_fma_f32 v17, -v21, v28, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v21, null, v85, v85, v100
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v19, v1, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v90, null, v85, v85, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v17, v5, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v17, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v24, -v25, v19, v81
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v2.h
	v_mov_b16_e32 v5.h, v45.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v18, v1, 0x40e00000, v18
	v_div_fmas_f32 v1, v24, v26, v19
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v19, null, v85, v85, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v24, -v21, v17, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v20, v1, 0x40e00000, v20
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v25.l, v18.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v26, v19
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v25.h, v45.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v17, v24, v17
	v_div_scale_f32 v24, vcc_lo, v100, v85, v100
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v2, v5, 0x7fff
	v_mov_b16_e32 v2.l, v20.h
	v_mov_b16_e32 v2.h, v45.l
	v_and_b32_e32 v5, 1, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v25, v24, v17
	v_div_scale_f32 v28, null, v85, v85, v82
	v_fma_f32 v27, -v19, v26, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v5, v18, v5, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v18, -v21, v25, v24
	v_rcp_f32_e32 v45, v28
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, s0, v84, v85, v84
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v20, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v25, v18, v17
	v_rcp_f32_e32 v18, v86
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v81, 0xffff0000, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v87, v27, v26
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v20, 0xffff0000, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v28, v45, 1.0
	v_fma_f32 v21, -v21, v25, v24
	v_div_scale_f32 v91, null, v85, v85, v49
	v_fma_f32 v24, -v19, v87, v27
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v64, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v89, -v86, v18, 1.0
	v_fmac_f32_e32 v45, v88, v45
	v_div_scale_f32 v88, s1, v82, v85, v82
	v_div_fmas_f32 v17, v21, v17, v25
	v_fmac_f32_e32 v87, v24, v26
	v_fmac_f32_e32 v18, v89, v18
	v_rcp_f32_e32 v25, v90
	v_div_scale_f32 v89, s2, v83, v85, v83
	v_mul_f32_e32 v21, v88, v45
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v24, v17, v85, v100
	v_fma_f32 v17, -v19, v87, v27
	v_mul_f32_e32 v92, v89, v18
	v_fma_f32 v19, -v28, v21, v88
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v27, -v90, v25, 1.0
	v_div_fmas_f32 v17, v17, v26, v87
	v_div_scale_f32 v26, s0, v48, v85, v48
	v_fmac_f32_e32 v21, v19, v45
	v_fma_f32 v19, -v86, v92, v89
	v_fma_f32 v87, -v91, v93, 1.0
	v_fmac_f32_e32 v25, v27, v25
	v_div_fixup_f32 v27, v17, v85, v84
	v_fma_f32 v17, -v28, v21, v88
	v_fmac_f32_e32 v92, v19, v18
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v87, null, v85, v85, v52
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v19, v26, v25
	v_div_fmas_f32 v17, v17, v45, v21
	v_fma_f32 v21, -v86, v92, v89
	v_rcp_f32_e32 v86, v87
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v28, -v90, v19, v26
	v_div_scale_f32 v84, s3, v49, v85, v49
	v_div_fmas_f32 v18, v21, v18, v92
	v_div_scale_f32 v89, null, v85, v85, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v19, v28, v25
	v_div_fixup_f32 v28, v17, v85, v82
	v_fma_f32 v94, -v87, v86, 1.0
	v_div_fixup_f32 v45, v18, v85, v83
	v_div_scale_f32 v18, s1, v52, v85, v52
	v_fma_f32 v17, -v90, v19, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v86, v94, v86
	v_mul_f32_e32 v88, v84, v93
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v21, v89
	v_div_fmas_f32 v17, v17, v25, v19
	v_mul_f32_e32 v25, v18, v86
	v_fma_f32 v92, -v91, v88, v84
	v_div_scale_f32 v82, null, v85, v85, v56
	v_div_scale_f32 v83, s0, v53, v85, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v92, v93
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v26, -v89, v21, 1.0
	v_div_fixup_f32 v48, v17, v85, v48
.Ltmp68:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v250
.Ltmp69:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v19, -v91, v88, v84
	v_div_scale_f32 v84, null, v85, v85, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v93, v88
	v_rcp_f32_e32 v92, v84
	v_fmac_f32_e32 v21, v26, v21
	v_rcp_f32_e32 v26, v82
	v_fma_f32 v88, -v87, v25, v18
	v_div_fixup_f32 v49, v19, v85, v49
	v_div_scale_f32 v19, s2, v56, v85, v56
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v25, v88, v86
	v_div_scale_f32 v88, null, v85, v85, v60
	v_div_scale_f32 v93, null, v85, v85, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v82, v26, 1.0
	v_fma_f32 v18, -v87, v25, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v88
	v_fmac_f32_e32 v26, v91, v26
	v_fma_f32 v91, -v84, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v86, v25
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v92, v91, v92
	v_mul_f32_e32 v90, v83, v21
	v_div_scale_f32 v91, s3, v57, v85, v57
	v_div_fixup_f32 v52, v18, v85, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v89, v90, v83
	v_dual_fmac_f32 v90, v17, v21 :: v_dual_mul_f32 v17, v19, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v89, v90, v83
	v_fma_f32 v83, -v82, v17, v19
	v_fma_f32 v89, -v88, v87, 1.0
	v_mul_f32_e32 v86, v91, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v17, v83, v26
	v_div_fmas_f32 v21, v25, v21, v90
	v_rcp_f32_e32 v25, v93
	v_fmac_f32_e32 v87, v89, v87
	v_fma_f32 v83, -v84, v86, v91
	v_div_scale_f32 v89, s0, v60, v85, v60
	v_div_fixup_f32 v53, v21, v85, v53
	v_fma_f32 v18, -v82, v17, v19
	v_div_scale_f32 v82, null, v85, v85, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v86, v83, v92 :: v_dual_mul_f32 v19, v89, v87
	v_fma_f32 v21, -v93, v25, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s1, v61, v85, v61
	v_div_fmas_f32 v17, v18, v26, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v25, v21, v25
	v_rcp_f32_e32 v21, v82
	v_fma_f32 v18, -v84, v86, v91
	v_fma_f32 v26, -v88, v19, v89
	v_div_scale_f32 v84, null, v85, v85, v66
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v56, v17, v85, v56
	v_fmac_f32_e32 v19, v26, v87
	v_rcp_f32_e32 v26, v84
	v_div_fmas_f32 v18, v18, v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v82, v21, 1.0
	v_mul_f32_e32 v86, v83, v25
	v_fma_f32 v17, -v88, v19, v89
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v57, v18, v85, v57
	v_fmac_f32_e32 v21, v90, v21
	v_div_scale_f32 v90, null, v85, v85, v69
	v_fma_f32 v18, -v93, v86, v83
	v_fma_f32 v89, -v84, v26, 1.0
	v_div_fmas_f32 v17, v17, v87, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v19, v90
	v_div_scale_f32 v88, s2, v65, v85, v65
	v_fmac_f32_e32 v26, v89, v26
	v_div_scale_f32 v87, s0, v66, v85, v66
	v_fmac_f32_e32 v86, v18, v25
	v_div_scale_f32 v89, null, v85, v85, v70
	v_div_fixup_f32 v60, v17, v85, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v87, v26
	v_fma_f32 v17, -v93, v86, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v93, -v90, v19, 1.0
	v_mul_f32_e32 v18, v88, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_and_or_b32 v4, 0x1b00, v0, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v17, v17, v25, v86
	v_fmac_f32_e32 v19, v93, v19
	v_fma_f32 v83, -v82, v18, v88
	v_fma_f32 v25, -v84, v91, v87
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v86, -v89, v92, 1.0
	v_div_fixup_f32 v61, v17, v85, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v18, v83, v21 :: v_dual_fmac_f32 v91, v25, v26
	v_div_scale_f32 v83, s1, v69, v85, v69
	v_fmac_f32_e32 v92, v86, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v82, v18, v88
	v_div_scale_f32 v82, s3, v70, v85, v70
	v_mul_f32_e32 v25, v83, v19
	v_div_scale_f32 v86, null, v81, v81, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v17, v17, v21, v18
	v_fma_f32 v18, -v84, v91, v87
	v_fma_f32 v21, -v90, v25, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v86
	v_mul_f32_e32 v87, v82, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v65, v17, v85, v65
	v_div_fmas_f32 v18, v18, v26, v91
	v_fmac_f32_e32 v25, v21, v19
	v_fma_f32 v26, -v89, v87, v82
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v88, null, v81, v81, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v86, v84, 1.0
	v_fma_f32 v17, -v90, v25, v83
	v_fmac_f32_e32 v87, v26, v92
	v_div_fixup_f32 v66, v18, v85, v66
	v_div_scale_f32 v18, s0, v73, v81, v73
	v_fmac_f32_e32 v84, v91, v84
	v_div_fmas_f32 v17, v17, v19, v25
	v_fma_f32 v19, -v89, v87, v82
	v_div_scale_f32 v89, null, v81, v81, v78
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v21, v88
	v_mul_f32_e32 v25, v18, v84
	v_div_fmas_f32 v19, v19, v92, v87
	v_rcp_f32_e32 v92, v89
	v_div_scale_f32 v83, null, v81, v81, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v86, v25, v18
	v_div_scale_f32 v82, s1, v74, v81, v74
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v88, v21, 1.0
	v_fmac_f32_e32 v25, v87, v84
	v_div_fixup_f32 v69, v17, v85, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v89, v92, 1.0
	v_div_fixup_f32 v70, v19, v85, v70
	v_div_scale_f32 v19, s2, v77, v81, v77
	v_fma_f32 v18, -v86, v25, v18
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s3, v78, v81, v78
	v_fmac_f32_e32 v21, v26, v21
	v_rcp_f32_e32 v26, v83
	v_div_fmas_f32 v18, v18, v84, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v87, v92
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v90, v82, v21
	v_div_scale_f32 v85, null, v81, v81, v80
	v_div_fixup_f32 v73, v18, v81, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v250, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v17, -v88, v90, v82
	v_fma_f32 v91, -v83, v26, 1.0
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v17, v21
	v_fmac_f32_e32 v26, v91, v26
	v_div_scale_f32 v91, null, v81, v81, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v88, v90, v82
	v_mul_f32_e32 v17, v19, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v85, v86, 1.0
	v_div_fmas_f32 v21, v25, v21, v90
	v_rcp_f32_e32 v25, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v83, v17, v19
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v86, v88, v86
	v_div_fixup_f32 v74, v21, v81, v74
	v_div_scale_f32 v88, s0, v80, v81, v80
	v_fma_f32 v21, -v91, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v21, v25
	v_fmac_f32_e32 v17, v82, v26
	v_fma_f32 v82, -v89, v84, v87
	v_fma_f32 v18, -v83, v17, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v82, v92
	v_div_scale_f32 v82, null, v81, v81, v75
	v_div_scale_f32 v83, s1, v79, v81, v79
	v_div_fmas_f32 v17, v18, v26, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v89, v84, v87
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v21, v82
	v_div_scale_f32 v87, null, v81, v81, v76
	v_div_fmas_f32 v18, v18, v92, v84
	v_mul_f32_e32 v84, v83, v25
	v_div_fixup_f32 v77, v17, v81, v77
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v78, v18, v81, v78
	v_fma_f32 v18, -v91, v84, v83
	v_mul_f32_e32 v19, v88, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v82, v21, 1.0
	v_fmac_f32_e32 v84, v18, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v85, v19, v88
	v_fmac_f32_e32 v21, v89, v21
	v_div_scale_f32 v89, null, v81, v81, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v26, v86
	v_rcp_f32_e32 v26, v87
	v_fma_f32 v17, -v85, v19, v88
	v_div_scale_f32 v85, s2, v75, v81, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v17, v17, v86, v19
	v_fma_f32 v88, -v87, v26, 1.0
	v_rcp_f32_e32 v19, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v18, v85, v21
	v_div_scale_f32 v86, s0, v76, v81, v76
	v_fmac_f32_e32 v26, v88, v26
	v_div_scale_f32 v88, null, v81, v81, v72
	v_div_fixup_f32 v80, v17, v81, v80
	v_fma_f32 v17, -v91, v84, v83
	v_fma_f32 v83, -v82, v18, v85
	v_mul_f32_e32 v90, v86, v26
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v19, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v18, v83, v21
	v_div_fmas_f32 v17, v17, v25, v84
	v_fma_f32 v25, -v87, v90, v86
	v_fmac_f32_e32 v19, v92, v19
	v_div_scale_f32 v83, s1, v71, v81, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v79, v17, v81, v79
	v_fma_f32 v84, -v88, v91, 1.0
	v_fma_f32 v17, -v82, v18, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v25, v26 :: v_dual_mul_f32 v25, v83, v19
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v82, s3, v72, v81, v72
	v_div_fmas_f32 v17, v17, v21, v18
	v_fma_f32 v18, -v87, v90, v86
	v_fma_f32 v21, -v89, v25, v83
	v_div_scale_f32 v87, null, v81, v81, v68
	v_div_scale_f32 v84, null, v81, v81, v67
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v21, v19
	v_rcp_f32_e32 v21, v87
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v85, v84
	v_div_fmas_f32 v18, v18, v26, v90
	v_fma_f32 v26, -v88, v86, v82
	v_div_fixup_f32 v75, v17, v81, v75
	v_fma_f32 v17, -v89, v25, v83
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v76, v18, v81, v76
	v_fmac_f32_e32 v86, v26, v91
	v_fma_f32 v26, -v87, v21, 1.0
	v_div_fmas_f32 v17, v17, v19, v25
	v_fma_f32 v90, -v84, v85, 1.0
	v_div_scale_f32 v18, s0, v67, v81, v67
	v_fma_f32 v19, -v88, v86, v82
	v_fmac_f32_e32 v21, v26, v21
	v_div_scale_f32 v82, s1, v68, v81, v68
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v83, null, v81, v81, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v82, v21
	v_div_scale_f32 v88, null, v81, v81, v63
	v_mul_f32_e32 v25, v18, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v26, v83
	v_div_fixup_f32 v71, v17, v81, v71
	v_fma_f32 v17, -v87, v89, v82
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v92, null, v81, v81, v58
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v17, v21
	v_div_fmas_f32 v19, v19, v91, v86
	v_fma_f32 v86, -v84, v25, v18
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v90, -v83, v26, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v72, v19, v81, v72
	v_fmac_f32_e32 v25, v86, v85
	v_div_scale_f32 v19, s2, v62, v81, v62
	v_fmac_f32_e32 v26, v90, v26
	v_div_scale_f32 v86, null, v81, v81, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v18, -v84, v25, v18
	v_mul_f32_e32 v17, v19, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v72, v72
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s3, v63, v81, v63
	v_div_fmas_f32 v18, v18, v85, v25
	v_fma_f32 v25, -v87, v89, v82
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v83, v17, v19
	v_mul_f32_e32 v85, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v86, v84, 1.0
	v_div_fmas_f32 v21, v25, v21, v89
	v_rcp_f32_e32 v25, v92
	v_fmac_f32_e32 v17, v82, v26
	v_fma_f32 v82, -v88, v85, v90
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s0, v59, v81, v59
	v_div_fixup_f32 v68, v21, v81, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v85, v82, v91
	v_div_scale_f32 v82, null, v64, v64, v54
	v_fma_f32 v21, -v92, v25, 1.0
	v_div_fixup_f32 v67, v18, v81, v67
	v_fma_f32 v18, -v83, v17, v19
	v_mul_f32_e32 v19, v87, v84
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v25, v21, v25
	v_rcp_f32_e32 v21, v82
	v_div_fmas_f32 v17, v18, v26, v17
	v_fma_f32 v18, -v88, v85, v90
	v_fma_f32 v26, -v86, v19, v87
	v_div_scale_f32 v88, null, v64, v64, v55
	v_div_scale_f32 v83, s1, v58, v81, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v26, v84
	v_rcp_f32_e32 v26, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v21, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v62, v17, v81, v62
	v_div_fmas_f32 v18, v18, v91, v85
	v_mul_f32_e32 v85, v83, v25
	v_fma_f32 v17, -v86, v19, v87
	v_fmac_f32_e32 v21, v89, v21
	v_div_scale_f32 v89, null, v64, v64, v50
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v63, v18, v81, v63
	v_fma_f32 v18, -v92, v85, v83
	v_div_scale_f32 v86, s2, v54, v64, v54
	v_fma_f32 v87, -v88, v26, 1.0
	v_div_fmas_f32 v17, v17, v84, v19
	v_rcp_f32_e32 v19, v89
	v_fmac_f32_e32 v85, v18, v25
	v_mul_f32_e32 v18, v86, v21
	v_fmac_f32_e32 v26, v87, v26
	v_div_scale_f32 v84, s0, v55, v64, v55
	v_div_scale_f32 v87, null, v64, v64, v51
	v_div_fixup_f32 v59, v17, v81, v59
	v_fma_f32 v17, -v92, v85, v83
	v_fma_f32 v83, -v82, v18, v86
	v_mul_f32_e32 v90, v84, v26
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v19, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v18, v83, v21
	v_div_fmas_f32 v17, v17, v25, v85
	v_fma_f32 v25, -v88, v90, v84
	v_fmac_f32_e32 v19, v92, v19
	v_div_scale_f32 v83, s1, v50, v64, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v58, v17, v81, v58
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v17, -v82, v18, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v90, v25, v26 :: v_dual_mul_f32 v25, v83, v19
	v_div_scale_f32 v82, null, v64, v64, v46
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v81, s3, v51, v64, v51
	v_div_fmas_f32 v17, v17, v21, v18
	v_fma_f32 v18, -v88, v90, v84
	v_fma_f32 v21, -v89, v25, v83
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, null, v64, v64, v47
	v_mul_f32_e32 v85, v81, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v21, v19
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v21, v86
	v_div_fmas_f32 v18, v18, v26, v90
	v_fma_f32 v26, -v87, v85, v81
	v_div_fixup_f32 v54, v17, v64, v54
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v82, v84, 1.0
	v_fma_f32 v17, -v89, v25, v83
	v_div_fixup_f32 v55, v18, v64, v55
	v_fmac_f32_e32 v85, v26, v91
	v_div_scale_f32 v18, s0, v46, v64, v46
	v_fmac_f32_e32 v84, v88, v84
	v_fma_f32 v26, -v86, v21, 1.0
	v_div_scale_f32 v83, null, v64, v64, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v17, v17, v19, v25
	v_fma_f32 v19, -v87, v85, v81
	v_mul_f32_e32 v25, v18, v84
	v_fmac_f32_e32 v21, v26, v21
	v_rcp_f32_e32 v26, v83
	v_div_scale_f32 v87, null, v64, v64, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v81, s1, v47, v64, v47
	v_div_fmas_f32 v19, v19, v91, v85
	v_fma_f32 v85, -v82, v25, v18
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v81, v21
	v_fma_f32 v89, -v83, v26, 1.0
	v_div_fixup_f32 v50, v17, v64, v50
	v_fmac_f32_e32 v25, v85, v84
	v_div_scale_f32 v85, null, v64, v64, v42
	v_div_fixup_f32 v51, v19, v64, v51
	v_fma_f32 v17, -v86, v88, v81
	v_fmac_f32_e32 v26, v89, v26
	v_div_scale_f32 v19, s2, v43, v64, v43
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v18, -v82, v25, v18
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v17, v21 :: v_dual_mul_f32 v17, v19, v26
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s3, v44, v64, v44
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v91, null, v64, v64, v41
	v_div_fmas_f32 v18, v18, v84, v25
	v_fma_f32 v25, -v86, v88, v81
	v_fma_f32 v81, -v83, v17, v19
	v_mul_f32_e32 v84, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v46, v18, v64, v46
	v_div_fmas_f32 v21, v25, v21, v88
	v_fmac_f32_e32 v17, v81, v26
	v_rcp_f32_e32 v25, v91
	v_fma_f32 v81, -v87, v84, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v42, v64, v42
	v_fma_f32 v18, -v83, v17, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v81, v90
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v19, v86, v82
	v_div_fixup_f32 v47, v21, v64, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v21, -v91, v25, 1.0
	v_div_scale_f32 v81, null, v64, v64, v39
	v_div_fmas_f32 v17, v18, v26, v17
	v_fma_f32 v18, -v87, v84, v89
	v_fma_f32 v26, -v85, v19, v86
	v_div_scale_f32 v87, null, v64, v64, v40
	v_fmac_f32_e32 v25, v21, v25
	v_rcp_f32_e32 v21, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v26, v82
	v_rcp_f32_e32 v26, v87
	v_div_scale_f32 v83, s1, v41, v64, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v43, v17, v64, v43
	v_div_fmas_f32 v18, v18, v90, v84
	v_mul_f32_e32 v84, v83, v25
	v_fma_f32 v17, -v85, v19, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v81, v21, 1.0
	v_div_scale_f32 v85, s2, v39, v64, v39
	v_fma_f32 v86, -v87, v26, 1.0
	v_div_fixup_f32 v44, v18, v64, v44
	v_fma_f32 v18, -v91, v84, v83
	v_fmac_f32_e32 v21, v88, v21
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v26, v86, v26
	v_div_scale_f32 v86, null, v64, v64, v37
	v_div_fmas_f32 v17, v17, v82, v19
	v_fmac_f32_e32 v84, v18, v25
	v_mul_f32_e32 v18, v85, v21
	v_div_scale_f32 v82, s0, v40, v64, v40
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v17, v17, v64, v42
	v_fma_f32 v42, -v91, v84, v83
	v_fma_f32 v83, -v81, v18, v85
	v_mul_f32_e32 v89, v82, v26
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v88, null, v64, v64, v38
	v_div_fmas_f32 v25, v42, v25, v84
	v_fmac_f32_e32 v18, v83, v21
	v_fma_f32 v42, -v87, v89, v82
	v_fma_f32 v84, -v86, v90, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v25, v25, v64, v41
	v_fma_f32 v41, -v81, v18, v85
	v_fmac_f32_e32 v89, v42, v26
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v84, null, v64, v64, v35
	v_rcp_f32_e32 v19, v88
	v_div_fmas_f32 v18, v41, v21, v18
	v_fma_f32 v21, -v87, v89, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v84
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v83, s1, v38, v64, v38
	v_div_fmas_f32 v21, v21, v26, v89
	v_div_scale_f32 v81, s3, v37, v64, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v88, v19, 1.0
	v_div_scale_f32 v87, null, v64, v64, v36
	v_fma_f32 v89, -v84, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v81, v90
	v_div_fixup_f32 v18, v18, v64, v39
	v_rcp_f32_e32 v26, v87
	v_div_fixup_f32 v21, v21, v64, v40
	v_dual_fmac_f32 v82, v89, v82 :: v_dual_fmac_f32 v19, v91, v19
	v_div_scale_f32 v40, s0, v35, v64, v35
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v42, v83, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v59, v59
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v88, v42, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v50, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v42, v41, v19
	v_fma_f32 v41, -v86, v85, v81
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v67, v67
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v88, v42, v83
	v_fmac_f32_e32 v85, v41, v90
	v_fma_f32 v41, -v87, v26, 1.0
	v_div_scale_f32 v88, null, v20, v20, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v39, v19, v42
	v_fma_f32 v39, -v86, v85, v81
	v_mul_f32_e32 v42, v40, v82
	v_fmac_f32_e32 v26, v41, v26
	v_div_scale_f32 v41, null, v20, v20, v34
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v81, s1, v36, v64, v36
	v_div_fmas_f32 v39, v39, v90, v85
	v_rcp_f32_e32 v83, v41
	v_fma_f32 v85, -v84, v42, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v26
	v_div_fixup_f32 v19, v19, v64, v38
	v_div_fixup_f32 v37, v39, v64, v37
	v_rcp_f32_e32 v39, v88
	v_fmac_f32_e32 v42, v85, v82
	v_fma_f32 v38, -v87, v86, v81
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, null, v20, v20, v31
	v_fma_f32 v85, -v41, v83, 1.0
	v_fma_f32 v40, -v84, v42, v40
	v_div_scale_f32 v84, null, v20, v20, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v38, v26 :: v_dual_fmac_f32 v83, v85, v83
	v_div_scale_f32 v38, s2, v34, v20, v34
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v89, -v88, v39, 1.0
	v_div_fmas_f32 v40, v40, v82, v42
	v_fma_f32 v42, -v87, v86, v81
	v_mul_f32_e32 v81, v38, v83
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v89, v39
	v_div_scale_f32 v82, s0, v32, v20, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v41, v81, v38
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v26, v42, v26, v86
	v_mul_f32_e32 v91, v82, v39
	v_fmac_f32_e32 v81, v89, v83
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s3, v33, v20, v33
	v_div_fixup_f32 v26, v26, v64, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v41, v81, v38
	v_div_scale_f32 v41, null, v20, v20, v30
	v_mul_f32_e32 v86, v87, v85
	v_fma_f32 v42, -v88, v91, v82
	v_div_fixup_f32 v35, v40, v64, v35
	v_fma_f32 v40, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v38, -v84, v86, v87
	v_fmac_f32_e32 v91, v42, v39
	v_div_fmas_f32 v36, v36, v83, v81
	v_fmac_f32_e32 v92, v40, v92
	v_div_scale_f32 v40, s1, v31, v20, v31
	v_fmac_f32_e32 v86, v38, v85
	v_rcp_f32_e32 v38, v41
	v_fma_f32 v42, -v88, v91, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v64, v40, v92
	v_div_scale_f32 v81, null, v20, v20, v29
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v34, v36, v20, v34
	v_div_fmas_f32 v39, v42, v39, v91
	v_fma_f32 v42, -v84, v86, v87
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v41, v38, 1.0
	v_fma_f32 v84, -v90, v64, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v39, v20, v32
	v_div_fmas_f32 v42, v42, v85, v86
	v_fmac_f32_e32 v38, v82, v38
	v_div_scale_f32 v82, s0, v30, v20, v30
	v_fmac_f32_e32 v64, v84, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v81, v83, 1.0
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v36, v82, v38
	v_div_fixup_f32 v33, v42, v20, v33
	v_fma_f32 v40, -v90, v64, v40
	v_div_scale_f32 v42, null, v20, v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v41, v36, v82
	v_fmac_f32_e32 v83, v39, v83
	v_div_scale_f32 v39, s2, v29, v20, v29
	v_div_fmas_f32 v40, v40, v92, v64
	v_fmac_f32_e32 v36, v84, v38
	v_rcp_f32_e32 v85, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v64, v39, v83
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v40, v20, v31
	v_fma_f32 v40, -v41, v36, v82
	v_div_scale_f32 v84, null, v20, v20, v16
	v_fma_f32 v41, -v81, v64, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v40, v38, v36
	v_div_scale_f32 v38, null, v20, v20, v22
	v_fma_f32 v82, -v42, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v64, v41, v83
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v40, s0, v15, v20, v15
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v20, v20, v23
	v_div_fixup_f32 v30, v36, v20, v30
	v_fma_f32 v39, -v81, v64, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v38, v41, 1.0
	v_mul_f32_e32 v81, v40, v85
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v86, v36, v86
	v_div_scale_f32 v36, s1, v16, v20, v16
	v_fmac_f32_e32 v41, v87, v41
	v_div_scale_f32 v87, null, v20, v20, v14
	v_div_fmas_f32 v39, v39, v83, v64
	v_fma_f32 v64, -v42, v81, v40
	v_mul_f32_e32 v83, v36, v86
	v_div_scale_f32 v89, s2, v22, v20, v22
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v64, v85
	v_fma_f32 v64, -v84, v83, v36
	v_mul_f32_e32 v92, v89, v41
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s3, v23, v20, v23
	v_div_fixup_f32 v29, v39, v20, v29
	v_fma_f32 v39, -v42, v81, v40
	v_fmac_f32_e32 v83, v64, v86
	v_fma_f32 v40, -v38, v92, v89
	v_mul_f32_e32 v42, v90, v88
	v_fma_f32 v64, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v84, v83, v36
	v_fmac_f32_e32 v92, v40, v41
	v_fma_f32 v40, -v82, v42, v90
	v_fmac_f32_e32 v91, v64, v91
	v_div_scale_f32 v64, s0, v14, v20, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v92, v89
	v_fmac_f32_e32 v42, v40, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v40, v64, v91
	v_div_fmas_f32 v39, v39, v85, v81
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v81, null, v20, v20, v9
	v_div_fmas_f32 v36, v36, v86, v83
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v39, v20, v15
	v_div_fmas_f32 v38, v38, v41, v92
	v_fma_f32 v41, -v82, v42, v90
	v_fma_f32 v82, -v87, v40, v64
	v_div_fixup_f32 v16, v36, v20, v16
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v22, v38, v20, v22
	v_div_scale_f32 v38, null, v20, v20, v10
	v_fmac_f32_e32 v40, v82, v91
	v_div_fmas_f32 v41, v41, v88, v42
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v81
	v_div_scale_f32 v85, null, v20, v20, v13
	v_fma_f32 v36, -v87, v40, v64
	v_div_fixup_f32 v23, v41, v20, v23
	v_div_scale_f32 v41, null, v20, v20, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v36, v36, v91, v40
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v39, -v81, v83, 1.0
	v_rcp_f32_e32 v82, v41
	v_div_scale_f32 v42, vcc_lo, v9, v20, v9
	v_div_fixup_f32 v14, v36, v20, v14
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v36, -v38, v40, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v89, -v41, v82, 1.0
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s3, v13, v20, v13
	v_fmac_f32_e32 v40, v36, v40
	v_div_scale_f32 v36, s0, v10, v20, v10
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s2, v12, v20, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v90, v36, v40 :: v_dual_fmac_f32 v83, v39, v83
	v_div_scale_f32 v39, null, v20, v20, v11
	v_mul_f32_e32 v93, v89, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v84, v42, v83
	v_rcp_f32_e32 v64, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v68, v68
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v81, v84, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v88, -v38, v90, v36
	v_fma_f32 v86, -v39, v64, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v42, -v81, v84, v42
	v_fmac_f32_e32 v90, v88, v40
	v_fma_f32 v88, -v41, v93, v89
	v_mul_f32_e32 v94, v91, v87
	v_fmac_f32_e32 v64, v86, v64
	v_div_fmas_f32 v42, v42, v83, v84
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v36, -v38, v90, v36
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v38, -v85, v94, v91
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v38, v87
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v36, v40, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v83, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v85, v94, v91
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v85, v33
	v_and_b32_e32 v33, 15, v71
	v_and_b32_e32 v34, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b64 v[71:72], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v86, s1, v11, v20, v11
	v_fma_f32 v38, -v41, v93, v89
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v9, v42, v20, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v86, v64
	v_div_fixup_f32 v10, v36, v20, v10
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v56
	v_rndne_f32_e32 v56, v70
	v_rndne_f32_e32 v70, v76
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v81, -v39, v92, v86
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v42, v57
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v92, v81, v64
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v73
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v39, v92, v86
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v73, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v48
	v_rndne_f32_e32 v48, v61
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v39, v64, v92
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v77
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v82, v93
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v39, v20, v11
	v_div_fmas_f32 v40, v40, v87, v94
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v38, v20, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v49
	v_rndne_f32_e32 v49, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v40, v20, v13
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v24
	v_rndne_f32_e32 v24, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v45
	v_rndne_f32_e32 v45, v60
	v_rndne_f32_e32 v40, v53
	v_rndne_f32_e32 v53, v69
	v_rndne_f32_e32 v69, v75
	v_rndne_f32_e32 v52, v66
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v74
	v_rndne_f32_e32 v64, v78
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v69, v69, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v80
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v79
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v79, v19
	v_and_b32_e32 v19, 15, v45
	v_and_b32_e32 v45, 15, v46
	v_and_b32_e32 v46, 15, v47
	v_and_b32_e32 v47, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v73, 16, v214
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v84, v32
	v_cvt_i32_f32_e32 v86, v31
	v_and_b32_e32 v31, 15, v69
	v_and_b32_e32 v32, 15, v70
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v69, 10, v251
	v_lshlrev_b32_e32 v70, 6, v73
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v74, v44
	v_cvt_i32_f32_e32 v87, v30
	v_cvt_i32_f32_e32 v88, v29
	v_cvt_i32_f32_e32 v89, v15
	v_cvt_i32_f32_e32 v90, v16
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_add3_u32 v72, 0, v69, v70
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v75, v17
	v_cvt_i32_f32_e32 v76, v25
	v_cvt_i32_f32_e32 v77, v18
	v_cvt_i32_f32_e32 v78, v21
	v_cvt_i32_f32_e32 v80, v37
	v_cvt_i32_f32_e32 v81, v35
	v_cvt_i32_f32_e32 v82, v26
	v_cvt_i32_f32_e32 v91, v22
	v_cvt_i32_f32_e32 v92, v23
	v_cvt_i32_f32_e32 v93, v14
	v_cvt_i32_f32_e32 v94, v9
	v_cvt_i32_f32_e32 v95, v10
	v_cvt_i32_f32_e32 v96, v11
	v_cvt_i32_f32_e32 v97, v12
	v_cvt_i32_f32_e32 v98, v13
	v_and_b32_e32 v9, 15, v20
	v_and_b32_e32 v10, 15, v24
	v_and_b32_e32 v11, 15, v27
	v_and_b32_e32 v12, 15, v28
	v_and_b32_e32 v13, 15, v36
	v_and_b32_e32 v14, 15, v38
	v_and_b32_e32 v15, 15, v39
	v_and_b32_e32 v16, 15, v40
	v_and_b32_e32 v17, 15, v41
	v_and_b32_e32 v18, 15, v42
	v_and_b32_e32 v20, 15, v48
	v_and_b32_e32 v25, 15, v57
	v_and_b32_e32 v26, 15, v60
	v_and_b32_e32 v27, 15, v61
	v_and_b32_e32 v28, 15, v64
	v_and_b32_e32 v29, 15, v65
	v_and_b32_e32 v30, 15, v66
	v_and_b32_e32 v37, 15, v62
	v_and_b32_e32 v38, 15, v63
	v_and_b32_e32 v39, 15, v59
	v_and_b32_e32 v40, 15, v58
	v_and_b32_e32 v41, 15, v54
	v_and_b32_e32 v42, 15, v55
	v_and_b32_e32 v43, 15, v50
	v_and_b32_e32 v44, 15, v51
	v_and_b32_e32 v48, 15, v74
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_and_b32_e32 v61, 15, v87
	v_and_b32_e32 v62, 15, v88
	v_and_b32_e32 v63, 15, v89
	v_and_b32_e32 v64, 15, v90
	v_and_b32_e32 v21, 15, v49
	v_and_b32_e32 v22, 15, v52
	v_and_b32_e32 v23, 15, v53
	v_and_b32_e32 v24, 15, v56
	v_and_b32_e32 v35, 15, v67
	v_and_b32_e32 v36, 15, v68
	v_and_b32_e32 v49, 15, v75
	v_and_b32_e32 v50, 15, v76
	v_and_b32_e32 v51, 15, v77
	v_and_b32_e32 v52, 15, v78
	v_and_b32_e32 v53, 15, v79
	v_and_b32_e32 v54, 15, v80
	v_and_b32_e32 v55, 15, v81
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v65, 15, v91
	v_and_b32_e32 v66, 15, v92
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v70, 15, v96
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s0, s0, 1
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	s_mul_i32 s2, s34, s0
	.loc	1 82 15 is_stmt 1               ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v71, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v71, 15, v97
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v6, v72, v7, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v72, 15, v98
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[29:32]
	ds_store_b128 v6, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v4
	ds_load_b128 v[37:40], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[45:48]
	ds_store_b128 v6, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v4
	ds_load_b128 v[53:56], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[61:64]
	ds_store_b128 v6, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_load_b128 v[61:64], v4
	ds_load_b128 v[69:72], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v17, 4, v9
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v249
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
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v214, 63, s34
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
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v2, v2, s33, 1
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v0, 0xc0, v214
	v_add3_u32 v4, v4, v7, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	ds_load_u16 v1, v4
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
.Ltmp70:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp71:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 84
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21868
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 84
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
