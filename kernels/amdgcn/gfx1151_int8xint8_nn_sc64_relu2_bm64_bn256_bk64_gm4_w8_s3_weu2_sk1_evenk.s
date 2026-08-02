	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v25, 0xf0, v0
	v_and_b32_e32 v254, 15, v0
	v_lshlrev_b32_e32 v2, 4, v0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_and_b32_e32 v106, 32, v0
	v_lshrrev_b32_e32 v6, 2, v25
	v_or_b32_e32 v9, 48, v254
	v_and_b32_e32 v3, 48, v2
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v6
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v21, v254, 4, v4
	v_mad_u64_u32 v[22:23], null, s35, 3, v[21:22]
	v_lshl_add_u32 v102, s35, 1, v21
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
	s_xor_b32 s8, s2, s13
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s12, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s13, s6, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s13
	s_mul_hi_u32 s13, s14, s6
	s_xor_b32 s6, s2, s16
	s_mul_i32 s18, s13, s17
	s_ashr_i32 s19, s6, 31
	s_sub_i32 s14, s14, s18
	s_add_i32 s18, s13, 1
	s_sub_i32 s22, s14, s17
	s_cmp_ge_u32 s14, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s13, s18, s13
	s_cselect_b32 s14, s22, s14
	s_add_i32 s18, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s13, s18, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s13, s13, s19
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s14, s13, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s13, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s2, s14, 31
.Ltmp15:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s34, s12
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s2, 26
.Ltmp17:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v103, v1, v3, s3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s35, s26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s33, s12
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s26, v103
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s12, v21
	v_add_nc_u32_e32 v4, s12, v102
	v_add_nc_u32_e32 v5, s12, v22
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 6
	v_add_nc_u32_e32 v7, s35, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	s_add_i32 s40, s26, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[10:13], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[14:17], v4, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v5, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v3, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s12, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v7, s3
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s40, v103
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s12, v22
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[30:33], v1, s[20:23], 0 offen
	buffer_load_b128 v[34:37], v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v5, s2
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_b128 v[38:41], v3, s[20:23], 0 offen
	buffer_load_b128 v[42:45], v4, s[20:23], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s12, v21
	v_lshlrev_b32_e32 v5, 3, v0
	s_mov_b32 s12, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x1
	buffer_load_b128 v[46:49], v3, s[20:23], 0 offen
	buffer_load_b128 v[50:53], v4, s[20:23], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b128 v[54:57], v1, s[4:7], 0 offen
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	v_lshlrev_b32_e32 v4, 6, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v3, 48, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x420, v1
	v_and_b32_e32 v1, 14, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v107, v2, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v8, v7, v6
	v_lshlrev_b32_e32 v6, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v7, 16, v254
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, 0, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v108, v1, 10, v8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v8, 32, v254
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v109, 0x90, v108
	v_xor_b32_e32 v110, 0x120, v108
	v_xor_b32_e32 v111, 0x1b0, v108
	v_xor_b32_e32 v112, 0x210, v108
	v_add_nc_u32_e32 v3, 0, v108
	v_xor_b32_e32 v113, 0x330, v108
	v_xor_b32_e32 v114, 0x3a0, v108
	v_add_nc_u32_e32 v18, 0, v109
	v_add_nc_u32_e32 v19, 0, v110
	v_add_nc_u32_e32 v20, 0, v111
	v_add_nc_u32_e32 v23, 0, v112
	v_add_nc_u32_e32 v24, 0, v113
	v_add_nc_u32_e32 v58, 0, v114
	v_add_nc_u32_e32 v59, 0x4000, v3
	v_add_nc_u32_e32 v60, 0x4000, v18
	v_add_nc_u32_e32 v61, 0x4000, v19
	v_add_nc_u32_e32 v62, 0x4000, v20
	v_add_nc_u32_e32 v63, 0x4000, v23
	v_add_nc_u32_e32 v64, 0x4000, v24
	v_add_nc_u32_e32 v65, 0x4000, v58
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v2, v[10:13] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v10, v26, v14, 0x4000501
	v_perm_b32 v11, v26, v14, 0x6020703
	v_perm_b32 v12, v27, v15, 0x4000501
	v_perm_b32 v13, v27, v15, 0x6020703
	v_perm_b32 v14, v28, v16, 0x4000501
	v_perm_b32 v15, v28, v16, 0x6020703
	v_perm_b32 v16, v29, v17, 0x4000501
	v_perm_b32 v17, v29, v17, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v26, v34, v30, 0x4000501
	v_perm_b32 v27, v34, v30, 0x6020703
	v_perm_b32 v28, v35, v31, 0x4000501
	v_perm_b32 v29, v35, v31, 0x6020703
	v_perm_b32 v30, v36, v32, 0x4000501
	v_perm_b32 v31, v36, v32, 0x6020703
	v_perm_b32 v32, v37, v33, 0x4000501
	v_perm_b32 v33, v37, v33, 0x6020703
	s_waitcnt vmcnt(3)
	v_perm_b32 v34, v42, v38, 0x4000501
	v_perm_b32 v35, v42, v38, 0x6020703
	v_perm_b32 v42, v10, v26, 0x7060302
	v_perm_b32 v10, v10, v26, 0x5040100
	v_perm_b32 v26, v11, v27, 0x7060302
	v_perm_b32 v11, v11, v27, 0x5040100
	v_perm_b32 v27, v12, v28, 0x7060302
	v_perm_b32 v12, v12, v28, 0x5040100
	v_perm_b32 v28, v13, v29, 0x7060302
	v_perm_b32 v13, v13, v29, 0x5040100
	v_perm_b32 v29, v14, v30, 0x7060302
	v_perm_b32 v14, v14, v30, 0x5040100
	v_perm_b32 v30, v15, v31, 0x7060302
	v_perm_b32 v15, v15, v31, 0x5040100
	v_perm_b32 v31, v16, v32, 0x7060302
	v_perm_b32 v16, v16, v32, 0x5040100
	v_perm_b32 v32, v17, v33, 0x7060302
	v_perm_b32 v17, v17, v33, 0x5040100
	s_waitcnt vmcnt(1)
	v_perm_b32 v33, v50, v46, 0x4000501
	v_perm_b32 v36, v43, v39, 0x4000501
	v_perm_b32 v37, v43, v39, 0x6020703
	v_perm_b32 v43, v50, v46, 0x6020703
	v_perm_b32 v38, v44, v40, 0x4000501
	v_perm_b32 v39, v44, v40, 0x6020703
	v_perm_b32 v44, v51, v47, 0x4000501
	v_perm_b32 v40, v45, v41, 0x4000501
	v_perm_b32 v41, v45, v41, 0x6020703
	v_perm_b32 v45, v51, v47, 0x6020703
	v_perm_b32 v46, v52, v48, 0x4000501
	v_perm_b32 v47, v52, v48, 0x6020703
	v_perm_b32 v48, v53, v49, 0x4000501
	v_perm_b32 v49, v53, v49, 0x6020703
	ds_store_2addr_b32 v3, v42, v10 offset1:16
	ds_store_2addr_b32 v18, v26, v11 offset1:16
	ds_store_2addr_b32 v19, v27, v12 offset1:16
	ds_store_2addr_b32 v20, v28, v13 offset1:16
	ds_store_2addr_b32 v23, v29, v14 offset1:16
	ds_store_2addr_b32 v3, v30, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v24, v31, v16 offset1:16
	ds_store_2addr_b32 v58, v32, v17 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[54:57] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v2, v34, v33, 0x7060302
	v_perm_b32 v3, v34, v33, 0x5040100
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
	v_perm_b32 v23, v40, v48, 0x5040100
	v_perm_b32 v24, v41, v49, 0x7060302
	v_perm_b32 v26, v41, v49, 0x5040100
	ds_store_2addr_b32 v59, v2, v3 offset1:16
	ds_store_2addr_b32 v60, v10, v11 offset1:16
	ds_store_2addr_b32 v61, v12, v13 offset1:16
	ds_store_2addr_b32 v62, v14, v15 offset1:16
	ds_store_2addr_b32 v63, v16, v17 offset1:16
	ds_store_2addr_b32 v59, v18, v19 offset0:160 offset1:176
	ds_store_2addr_b32 v64, v20, v23 offset1:16
	ds_store_2addr_b32 v65, v24, v26 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v104, 48, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 0x1800, v6
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v96, v254, 6, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_or_b32 v105, 0x1c0, v4, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v95, 16, v96
	v_xor_b32_e32 v97, 32, v96
	v_xor_b32_e32 v94, 48, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v3, 8, v0
	v_and_b32_e32 v2, 32, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr105
.LBB0_3:                                ; %Flow94
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v11, s34, v254
	v_or_b32_e32 v7, s34, v7
	v_or_b32_e32 v8, s34, v8
	v_or_b32_e32 v9, s34, v9
	s_ashr_i32 s41, s13, 6
	v_lshlrev_b32_e32 v100, 2, v25
	v_mul_lo_u32 v60, v11, s41
	v_mul_lo_u32 v46, v8, s41
	v_mul_lo_u32 v48, v9, s41
	v_lshlrev_b32_e32 v98, 1, v1
	v_lshlrev_b32_e32 v99, 1, v25
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v10, 1, v0
	v_or_b32_e32 v57, s33, v0
	v_mul_lo_u32 v0, v7, s41
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v101, 5, v10
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v104, 48, v5
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v2, 0x1800, v6
	v_lshl_or_b32 v96, v254, 6, v104
	v_add3_u32 v9, 0, v100, v101
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v115, s35, v21
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v121, 0, v99
	v_and_or_b32 v105, 0x1c0, v4, v2
	v_xor_b32_e32 v95, 16, v96
	v_xor_b32_e32 v97, 32, v96
	v_xor_b32_e32 v94, 48, v96
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v120, v9, v98
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
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
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v93, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s27, s41, 3
	s_add_i32 s10, s40, 64
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_mov_b32 s11, 1
	s_add_i32 s44, 0, 0x8000
	s_add_i32 s42, 0, 0x9000
	s_add_i32 s43, 0, 0x4000
	s_add_i32 s27, s27, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_waitcnt vmcnt(0)
	v_bfe_i32 v1, v0, 3, 1
	v_bfe_i32 v3, v0, 5, 1
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_and_b32_e32 v1, 0x210, v1
	v_and_b32_e32 v2, 0x420, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v1, v1, v104
	v_or_b32_e32 v1, v105, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v116, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_xor_b32_e32 v117, 16, v116
	v_xor_b32_e32 v118, 32, v116
	v_xor_b32_e32 v119, 48, v116
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s12
	s_mov_b32 s12, s26
	s_mov_b32 s26, s40
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s40, s10, s15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v131, s14, v116
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s40, v103
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v24, s44, v96
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v132, s14, v117
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v130, s44, v95
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[187:190], v131 offset:8192
	ds_load_b128 v[191:194], v132 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v131
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[139:142], v130
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[179:182], v132
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24 offset:1024
	ds_load_b128 v[155:158], v130 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[179:182], v[139:142], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[191:194], v[139:142], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24 offset:2048
	ds_load_b128 v[171:174], v130 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[179:182], v[155:158], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[191:194], v[155:158], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24 offset:3072
	ds_load_b128 v[195:198], v130 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[171:174], v[155:162] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v24, s44, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[163:170], v[191:194], v[171:174], v[163:170] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v130, s14, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[126:129], v[122:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[179:182], v[195:198], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[187:190], v[122:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v130
	ds_load_b128 v[187:190], v130 offset:8192
	v_add_nc_u32_e32 v130, s14, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[179:186], v[191:194], v[195:198], v[179:186] neg_lo:[1,1,0]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s40, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s14, s33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[122:125], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[122:125], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[126:129], v[122:125], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[187:190], v[122:125], v[163:170] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24 offset:3072
	v_add_nc_u32_e32 v24, s44, v94
	s_mov_b32 s44, s42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[126:129], v[122:125], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[187:190], v[122:125], v[179:186] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[126:129], v130
	ds_load_b128 v[187:190], v130 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[126:129], v[122:125], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[122:125], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v24 offset:1024
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
	ds_load_b128 v[122:125], v24 offset:2048
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
	ds_load_b128 v[122:125], v24 offset:3072
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s14, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v127, v17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s14, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v14
	v_cvt_f32_i32_e32 v125, v15
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
	v_perm_b32 v24, v17, v13, 0x4000501
	v_perm_b32 v194, v17, v13, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s14, v102
	v_add_nc_u32_e32 v17, s14, v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v195, v18, v14, 0x4000501
	v_perm_b32 v196, v18, v14, 0x6020703
	v_perm_b32 v197, v19, v15, 0x4000501
	v_perm_b32 v198, v19, v15, 0x6020703
	v_perm_b32 v199, v20, v16, 0x4000501
	v_perm_b32 v200, v20, v16, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s41
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s11, 14
	s_waitcnt vmcnt(0)
	v_perm_b32 v201, v17, v13, 0x4000501
	v_perm_b32 v202, v17, v13, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v13, v57, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v203, v18, v14, 0x4000501
	v_perm_b32 v204, v18, v14, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v14, v0, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v207, v20, v16, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v208, v20, v16, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v16, v48, s12, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v205, v19, v15, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v13, v13, s[36:39], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v206, v19, v15, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v15, v46, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v15, 0x80000000, v15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v120, v13 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v13, v60, s12, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s12, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x3
	buffer_load_u16 v209, v13, s[28:31], 0 offen
	buffer_load_u16 v210, v14, s[28:31], 0 offen
	buffer_load_u16 v211, v15, s[28:31], 0 offen
	buffer_load_u16 v212, v16, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v121 offset:40960
	ds_load_b128 v[17:20], v121 offset:40976
	ds_load_b128 v[186:189], v121 offset:41472
	ds_load_b128 v[190:193], v121 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v213, s14, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s43, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s42, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s27
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v213, v[9:12] offset:32768
	s_mov_b32 s13, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v210
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v212
	v_lshlrev_b32_e32 v9, 16, v209
	v_lshlrev_b32_e32 v11, 16, v211
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v213, v13, v10
	v_mul_f32_e32 v214, v14, v10
	v_dual_mul_f32 v215, v15, v10 :: v_dual_mul_f32 v212, v16, v9
	v_mul_f32_e32 v216, v16, v10
	v_mul_f32_e32 v220, v16, v11
	v_dual_mul_f32 v16, v16, v12 :: v_dual_mul_f32 v209, v13, v9
	v_mul_f32_e32 v210, v14, v9
	v_mul_f32_e32 v211, v15, v9
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v221, v17, v9 :: v_dual_mul_f32 v226, v18, v10
	v_dual_mul_f32 v222, v18, v9 :: v_dual_mul_f32 v217, v13, v11
	v_mul_f32_e32 v218, v14, v11
	v_mul_f32_e32 v219, v15, v11
	v_mul_f32_e32 v13, v13, v12
	v_mul_f32_e32 v14, v14, v12
	v_dual_mul_f32 v15, v15, v12 :: v_dual_mul_f32 v224, v20, v9
	v_dual_mul_f32 v223, v19, v9 :: v_dual_mul_f32 v228, v20, v10
	v_dual_mul_f32 v225, v17, v10 :: v_dual_mul_f32 v230, v18, v11
	v_dual_mul_f32 v227, v19, v10 :: v_dual_mul_f32 v232, v20, v11
	v_dual_mul_f32 v229, v17, v11 :: v_dual_mul_f32 v18, v18, v12
	v_dual_mul_f32 v231, v19, v11 :: v_dual_mul_f32 v20, v20, v12
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v17, v17, v12 :: v_dual_mul_f32 v234, v187, v9
	v_dual_mul_f32 v19, v19, v12 :: v_dual_mul_f32 v236, v189, v9
	v_dual_mul_f32 v233, v186, v9 :: v_dual_mul_f32 v238, v187, v10
	v_dual_mul_f32 v235, v188, v9 :: v_dual_mul_f32 v240, v189, v10
	v_dual_mul_f32 v237, v186, v10 :: v_dual_mul_f32 v242, v187, v11
	v_dual_mul_f32 v239, v188, v10 :: v_dual_mul_f32 v244, v189, v11
	v_mul_f32_e32 v241, v186, v11
	v_dual_mul_f32 v243, v188, v11 :: v_dual_mul_f32 v186, v186, v12
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v187, v187, v12 :: v_dual_mul_f32 v248, v190, v10
	v_mul_f32_e32 v188, v188, v12
	v_dual_mul_f32 v189, v189, v12 :: v_dual_mul_f32 v246, v191, v9
	v_dual_mul_f32 v245, v190, v9 :: v_dual_mul_f32 v250, v192, v10
	v_mul_f32_e32 v247, v192, v9
	v_dual_mul_f32 v9, v193, v9 :: v_dual_mul_f32 v252, v191, v11
	v_mul_f32_e32 v249, v191, v10
	v_dual_mul_f32 v10, v193, v10 :: v_dual_mul_f32 v251, v190, v11
	v_mul_f32_e32 v253, v192, v11
	v_dual_mul_f32 v11, v193, v11 :: v_dual_mul_f32 v190, v190, v12
	v_mul_f32_e32 v191, v191, v12
	v_mul_f32_e32 v192, v192, v12
	v_mul_f32_e32 v12, v193, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v193, v201, v24, 0x7060302
	v_perm_b32 v24, v201, v24, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v28, v212, v126 :: v_dual_add_nc_u32 v201, s43, v108
	v_fmac_f32_e32 v27, v211, v125
	v_dual_fmac_f32 v23, v209, v123 :: v_dual_fmac_f32 v26, v210, v124
	v_fmac_f32_e32 v29, v221, v127
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v201, v193, v24 offset1:16
	v_perm_b32 v24, v202, v194, 0x7060302
	v_perm_b32 v193, v202, v194, 0x5040100
	v_add_nc_u32_e32 v194, s43, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v30, v222, v128 :: v_dual_fmac_f32 v31, v223, v129
	v_dual_fmac_f32 v32, v224, v130 :: v_dual_fmac_f32 v33, v233, v131
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v194, v24, v193 offset1:16
	v_perm_b32 v24, v203, v195, 0x7060302
	v_perm_b32 v193, v203, v195, 0x5040100
	v_add_nc_u32_e32 v194, s43, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v34, v234, v132 :: v_dual_fmac_f32 v35, v235, v133
	v_dual_fmac_f32 v36, v236, v134 :: v_dual_fmac_f32 v37, v245, v135
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v194, v24, v193 offset1:16
	v_perm_b32 v24, v204, v196, 0x7060302
	v_perm_b32 v193, v204, v196, 0x5040100
	v_add_nc_u32_e32 v194, s43, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v38, v246, v136 :: v_dual_fmac_f32 v39, v247, v137
	v_dual_fmac_f32 v40, v9, v138 :: v_dual_fmac_f32 v43, v215, v141
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v194, v24, v193 offset1:16
	v_perm_b32 v24, v205, v197, 0x7060302
	v_perm_b32 v193, v205, v197, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v41, v213, v139 :: v_dual_add_nc_u32 v194, s43, v112
	v_fmac_f32_e32 v42, v214, v140
	v_dual_fmac_f32 v44, v216, v142 :: v_dual_fmac_f32 v45, v225, v143
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v194, v24, v193 offset1:16
	v_perm_b32 v24, v206, v198, 0x7060302
	v_perm_b32 v193, v206, v198, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v49, v226, v144 :: v_dual_fmac_f32 v50, v227, v145
	v_dual_fmac_f32 v51, v228, v146 :: v_dual_fmac_f32 v52, v237, v147
	v_dual_fmac_f32 v53, v238, v148 :: v_dual_fmac_f32 v54, v239, v149
	v_dual_fmac_f32 v55, v240, v150 :: v_dual_fmac_f32 v58, v249, v152
	v_dual_fmac_f32 v56, v248, v151 :: v_dual_fmac_f32 v59, v250, v153
	v_dual_fmac_f32 v61, v10, v154 :: v_dual_fmac_f32 v62, v217, v155
	v_dual_fmac_f32 v63, v218, v156 :: v_dual_fmac_f32 v64, v219, v157
	v_dual_fmac_f32 v65, v220, v158 :: v_dual_fmac_f32 v66, v229, v159
	v_dual_fmac_f32 v67, v230, v160 :: v_dual_fmac_f32 v68, v231, v161
	v_dual_fmac_f32 v69, v232, v162 :: v_dual_fmac_f32 v70, v241, v163
	v_dual_fmac_f32 v71, v242, v164 :: v_dual_fmac_f32 v72, v243, v165
	v_dual_fmac_f32 v73, v244, v166 :: v_dual_fmac_f32 v74, v251, v167
	v_dual_fmac_f32 v75, v252, v168 :: v_dual_fmac_f32 v76, v253, v169
	v_dual_fmac_f32 v77, v11, v170 :: v_dual_fmac_f32 v78, v13, v171
	v_dual_fmac_f32 v79, v14, v172 :: v_dual_fmac_f32 v80, v15, v173
	v_dual_fmac_f32 v81, v16, v174 :: v_dual_fmac_f32 v82, v17, v175
	v_dual_fmac_f32 v83, v18, v176 :: v_dual_fmac_f32 v84, v19, v177
	v_dual_fmac_f32 v85, v20, v178 :: v_dual_fmac_f32 v88, v187, v180
	v_dual_fmac_f32 v87, v186, v179 :: v_dual_fmac_f32 v90, v189, v182
	v_dual_fmac_f32 v89, v188, v181 :: v_dual_fmac_f32 v92, v191, v184
	v_dual_fmac_f32 v91, v190, v183 :: v_dual_fmac_f32 v86, v12, v122
	v_dual_fmac_f32 v93, v192, v185 :: v_dual_add_nc_u32 v10, s43, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s43, v113
	v_perm_b32 v11, v207, v199, 0x7060302
	v_perm_b32 v12, v207, v199, 0x5040100
	v_perm_b32 v13, v208, v200, 0x7060302
	v_perm_b32 v14, v208, v200, 0x5040100
	ds_store_2addr_b32 v201, v24, v193 offset0:160 offset1:176
	ds_store_2addr_b32 v9, v11, v12 offset1:16
	ds_store_2addr_b32 v10, v13, v14 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v2, v106 :: v_dual_and_b32 v3, 8, v0
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
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
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v23, 0
	s_add_i32 s44, 0, 0x8000
	s_add_i32 s42, 0, 0x9000
	s_add_i32 s43, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v232, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v236, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v104
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v240, 0
	v_or_b32_e32 v1, v105, v1
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v244, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v20, v1, v2
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v22, 0
	v_xor_b32_e32 v47, 16, v20
	v_xor_b32_e32 v103, 32, v20
	v_xor_b32_e32 v229, 48, v20
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v149, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s12, v20
	v_add_nc_u32_e32 v1, s12, v103
	v_add_nc_u32_e32 v3, s12, v229
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v9, s44, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s12, v47
	ds_load_b128 v[170:173], v4 offset:8192
	ds_load_b128 v[174:177], v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v18, s44, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[154:157], v1 offset:8192
	ds_load_b128 v[158:161], v1
	ds_load_b128 v[162:165], v2 offset:8192
	ds_load_b128 v[166:169], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v21, s44, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[186:189], v3 offset:8192
	ds_load_b128 v[190:193], v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[130:133], v9 offset:1024
	ds_load_b128 v[113:116], v9
	ds_load_b128 v[178:181], v18 offset:1024
	ds_load_b128 v[122:125], v18
	ds_load_b128 v[182:185], v21 offset:1024
	ds_load_b128 v[126:129], v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v19, s44, v94
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_mov_b32_e32 v7, s22
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[194:197], v19 offset:1024
	ds_load_b128 v[134:137], v19
	ds_load_b128 v[198:201], v9 offset:3072
	ds_load_b128 v[146:149], v9 offset:2048
	ds_load_b128 v[202:205], v21 offset:3072
	ds_load_b128 v[206:209], v21 offset:2048
	ds_load_b128 v[210:213], v18 offset:3072
	ds_load_b128 v[214:217], v18 offset:2048
	ds_load_b128 v[218:221], v19 offset:3072
	ds_load_b128 v[222:225], v19 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[174:177], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[170:173], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[174:177], v[130:133], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[166:169], v[126:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[162:165], v[126:129], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[166:169], v[182:185], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[158:161], v[122:125], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[154:157], v[122:125], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[170:173], v[130:133], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[170:173], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[190:193], v[134:137], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[186:189], v[134:137], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[174:177], v[198:201], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[170:173], v[198:201], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[182:185], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[166:169], v[206:209], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[206:209], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[166:169], v[202:205], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[162:165], v[202:205], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[158:161], v[178:181], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[154:157], v[178:181], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[158:161], v[214:217], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[154:157], v[214:217], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[158:161], v[210:213], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[154:157], v[210:213], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[190:193], v[194:197], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[186:189], v[194:197], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[190:193], v[222:225], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[186:189], v[222:225], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[190:193], v[218:221], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[186:189], v[218:221], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v230, v10
	v_cvt_f32_i32_e32 v231, v11
	v_cvt_f32_i32_e32 v232, v12
	v_cvt_f32_i32_e32 v233, v13
	v_cvt_f32_i32_e32 v234, v14
	v_cvt_f32_i32_e32 v235, v15
	v_cvt_f32_i32_e32 v236, v16
	v_cvt_f32_i32_e32 v237, v105
	v_cvt_f32_i32_e32 v238, v106
	v_cvt_f32_i32_e32 v239, v107
	v_cvt_f32_i32_e32 v240, v108
	v_cvt_f32_i32_e32 v241, v109
	v_cvt_f32_i32_e32 v242, v110
	v_cvt_f32_i32_e32 v243, v111
	v_cvt_f32_i32_e32 v244, v112
	v_cvt_f32_i32_e32 v245, v114
	v_cvt_f32_i32_e32 v246, v115
	v_cvt_f32_i32_e32 v21, v116
	v_cvt_f32_i32_e32 v22, v117
	v_cvt_f32_i32_e32 v247, v118
	v_cvt_f32_i32_e32 v227, v119
	v_cvt_f32_i32_e32 v162, v120
	v_cvt_f32_i32_e32 v160, v121
	v_cvt_f32_i32_e32 v161, v122
	v_cvt_f32_i32_e32 v188, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v154, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v123, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v121, v137
	v_cvt_f32_i32_e32 v255, v138
	v_cvt_f32_i32_e32 v122, v139
	v_cvt_f32_i32_e32 v155, v140
	v_cvt_f32_i32_e32 v156, v141
	v_cvt_f32_i32_e32 v157, v142
	v_cvt_f32_i32_e32 v158, v143
	v_cvt_f32_i32_e32 v159, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v112, v146
	v_cvt_f32_i32_e32 v113, v147
	v_cvt_f32_i32_e32 v114, v148
	v_cvt_f32_i32_e32 v115, v149
	v_cvt_f32_i32_e32 v116, v150
	v_cvt_f32_i32_e32 v117, v151
	v_cvt_f32_i32_e32 v118, v152
	v_cvt_f32_i32_e32 v24, v153
	v_cvt_f32_i32_e32 v119, v1
	v_cvt_f32_i32_e32 v228, v2
	v_cvt_f32_i32_e32 v217, v3
	v_cvt_f32_i32_e32 v151, v4
	v_cvt_f32_i32_e32 v149, v5
	v_cvt_f32_i32_e32 v146, v6
	v_cvt_f32_i32_e32 v0, v7
	v_cvt_f32_i32_e32 v148, v8
	v_cvt_f32_i32_e32 v163, v9
.LBB0_10:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v60, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v57, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v46, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v48, s4, 1
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v99, 0, v99
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v226, 0
	v_mov_b32_e32 v221, 0
	v_mov_b32_e32 v223, 0
	v_dual_mov_b32 v225, 0 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_mov_b32_e32 v166, 0
	v_mov_b32_e32 v214, 0
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v3, v3, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_u16 v168, v1, s[8:11], 0 offen
	buffer_load_u16 v135, v3, s[8:11], 0 offen
	buffer_load_u16 v152, v4, s[8:11], 0 offen
	buffer_load_u16 v102, v5, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v100, v101
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v100, 0
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
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s43, v47
	v_add_nc_u32_e32 v18, s43, v20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v96, s42, v96
	v_dual_mov_b32 v137, v243 :: v_dual_add_nc_u32 v186, s43, v103
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v153.l, v168.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v139.l, v135.l
	v_mov_b32_e32 v168, v145
	v_mov_b32_e32 v145, v129
	v_mov_b32_e32 v135, v244
	v_dual_mov_b32 v129, v0 :: v_dual_mov_b32 v130, v245
	v_dual_mov_b32 v147, v246 :: v_dual_mov_b32 v150, v123
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[243:246], v17 offset:8192
	v_dual_mov_b32 v138, v247 :: v_dual_add_nc_u32 v187, s42, v97
	ds_load_b128 v[247:250], v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v254, off offset:12
	scratch_store_b32 off, v25, off offset:8
	ds_load_b128 v[251:254], v18 offset:8192
	ds_load_b128 v[17:20], v18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[189:192], v96
	v_add_nc_u32_e32 v95, s42, v95
	s_mov_b32 s12, 0
	v_dual_mov_b32 v144, v128 :: v_dual_add_nc_u32 v185, s43, v229
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v128.l, v102.l
	ds_load_b128 v[100:103], v96 offset:3072
	ds_load_b128 v[205:208], v96 offset:1024
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v154, off offset:56
	scratch_store_b32 off, v228, off offset:64
	v_mov_b32_e32 v154, v235
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v121, off offset:24
	scratch_store_b32 off, v160, off offset:48
	scratch_store_b32 off, v217, off offset:40
	scratch_store_b32 off, v255, off offset:20
	scratch_store_b32 off, v161, off offset:44
	scratch_store_b32 off, v151, off offset:28
	scratch_store_b32 off, v237, off offset:60
	scratch_store_b32 off, v122, off offset:16
	scratch_store_b32 off, v188, off offset:36
	scratch_store_b32 off, v149, off offset:32
	scratch_store_b32 off, v238, off offset:52
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v217, v236 :: v_dual_mov_b32 v226, s19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[235:238], v96 offset:2048
	ds_load_b128 v[108:111], v95
	ds_load_b128 v[104:107], v95 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v219, s12 :: v_dual_mov_b32 v160, v112
	v_dual_mov_b32 v161, v113 :: v_dual_mov_b32 v188, v114
	v_dual_mov_b32 v0, v98 :: v_dual_mov_b32 v123, v60
	v_dual_mov_b32 v98, v115 :: v_dual_mov_b32 v121, v57
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v95 offset:2048
	v_dual_mov_b32 v122, v48 :: v_dual_mov_b32 v57, v117
	v_dual_mov_b32 v120, v46 :: v_dual_mov_b32 v25, v231
	v_dual_mov_b32 v60, v116 :: v_dual_mov_b32 v149, v134
	v_dual_mov_b32 v48, v24 :: v_dual_mov_b32 v255, v233
	v_dual_mov_b32 v46, v118 :: v_dual_mov_b32 v151, v136
	v_dual_mov_b32 v24, v119 :: v_dual_mov_b32 v47, v234
	ds_load_b128 v[116:119], v95 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v225, s18 :: v_dual_mov_b32 v224, s17
	v_dual_mov_b32 v223, s16 :: v_dual_mov_b32 v222, s15
	v_dual_mov_b32 v221, s14 :: v_dual_mov_b32 v220, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[164:167], v185 offset:8192
	ds_load_b128 v[213:216], v186
	v_dual_mov_b32 v218, v230 :: v_dual_mov_b32 v141, v125
	v_dual_mov_b32 v134, v22 :: v_dual_mov_b32 v125, v240
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[17:20], v[189:192], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[251:254], v[189:192], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[17:20], v[205:208], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[251:254], v[205:208], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[205:212], v[17:20], v[235:238], v[219:226] neg_lo:[1,1,0]
	v_dual_mov_b32 v22, v232 :: v_dual_mov_b32 v143, v127
	v_mov_b32_e32 v136, v162
	v_dual_mov_b32 v162, v227 :: v_dual_mov_b32 v127, v242
	v_wmma_i32_16x16x16_iu8 v[227:234], v[251:254], v[235:238], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[247:250], v[108:111], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[243:246], v[108:111], v[177:184] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[108:111], v185
	v_dual_mov_b32 v142, v126 :: v_dual_add_nc_u32 v185, s42, v94
	v_mov_b32_e32 v126, v241
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[247:250], v[116:119], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[243:246], v[116:119], v[197:204] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[205:212], v[247:250], v[112:115], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[243:246], v[112:115], v[227:234] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v185
	ds_load_b128 v[116:119], v185 offset:1024
	v_mov_b32_e32 v140, v124
	v_mov_b32_e32 v124, v239
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[235:242], v[17:20], v[100:103], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[251:254], v[100:103], v[219:226] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[17:20], v187
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[100:103], v186 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[94:97], v187 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[235:242], v[247:250], v[104:107], v[235:242] neg_lo:[1,1,0]
	scratch_load_b32 v254, off, off offset:12 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[219:226], v[243:246], v[104:107], v[219:226] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[104:107], v187 offset:2048
	ds_load_b128 v[243:246], v187 offset:3072
	ds_load_b128 v[247:250], v185 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[213:216], v[17:20], v[169:176] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[100:103], v[17:20], v[177:184] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[17:20], v185 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[213:216], v[94:97], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[100:103], v[94:97], v[197:204] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[205:212], v[213:216], v[104:107], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[100:103], v[104:107], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[213:216], v[243:246], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[108:111], v[112:115], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[164:167], v[112:115], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[189:196], v[108:111], v[116:119], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[100:103], v[243:246], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[164:167], v[116:119], v[197:204] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[205:212], v[108:111], v[247:250], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[164:167], v[247:250], v[227:234] neg_lo:[1,1,0]
	v_dual_mov_b32 v115, v98 :: v_dual_mov_b32 v98, v0
	v_dual_mov_b32 v243, v137 :: v_dual_mov_b32 v114, v188
	v_mov_b32_e32 v117, v57
	v_mov_b32_e32 v113, v161
	v_mov_b32_e32 v245, v130
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[108:111], v[17:20], v[235:242] neg_lo:[1,1,0]
	v_dual_mov_b32 v0, v129 :: v_dual_mov_b32 v119, v24
	v_mov_b32_e32 v24, v48
	v_mov_b32_e32 v116, v60
	v_mov_b32_e32 v48, v122
	v_wmma_i32_16x16x16_iu8 v[219:226], v[164:167], v[17:20], v[219:226] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v101, v171
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v171, v178
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v178, v189
	v_cvt_f32_i32_e32 v182, v193
	v_cvt_f32_i32_e32 v187, v198
	v_cvt_f32_i32_e32 v189, v199
	v_cvt_f32_i32_e32 v193, v203
	v_cvt_f32_i32_e32 v198, v208
	v_cvt_f32_i32_e32 v199, v209
	v_cvt_f32_i32_e32 v203, v227
	v_cvt_f32_i32_e32 v208, v232
	v_mov_b32_e32 v232, v22
	v_mov_b32_e32 v22, v134
	v_mov_b32_e32 v134, v149
	v_cvt_f32_i32_e32 v209, v233
	v_mov_b32_e32 v233, v255
	v_dual_mov_b32 v227, v162 :: v_dual_mov_b32 v162, v136
	v_mov_b32_e32 v136, v151
	v_cvt_f32_i32_e32 v213, v237
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v237, off, off offset:60
	scratch_load_b32 v151, off, off offset:28
	scratch_load_b32 v161, off, off offset:44
	scratch_load_b32 v255, off, off offset:20
	v_cvt_f32_i32_e32 v214, v238
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v238, off, off offset:52
	scratch_load_b32 v149, off, off offset:32
	scratch_load_b32 v188, off, off offset:36
	scratch_load_b32 v122, off, off offset:16
	v_dual_mov_b32 v112, v160 :: v_dual_mov_b32 v57, v121
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v174, v181
	v_cvt_f32_i32_e32 v181, v192
	v_cvt_f32_i32_e32 v192, v202
	v_cvt_f32_i32_e32 v202, v212
	v_cvt_f32_i32_e32 v212, v236
	v_mov_b32_e32 v236, v217
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v217, off, off offset:40
	scratch_load_b32 v160, off, off offset:48
	scratch_load_b32 v121, off, off offset:24
	v_mov_b32_e32 v118, v46
	v_mov_b32_e32 v46, v120
	v_cvt_f32_i32_e32 v17, v169
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v169, v176
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v176, v183
	v_cvt_f32_i32_e32 v180, v191
	v_cvt_f32_i32_e32 v183, v194
	v_cvt_f32_i32_e32 v186, v197
	v_cvt_f32_i32_e32 v191, v201
	v_cvt_f32_i32_e32 v194, v204
	v_cvt_f32_i32_e32 v197, v207
	v_cvt_f32_i32_e32 v201, v211
	v_cvt_f32_i32_e32 v204, v228
	v_cvt_f32_i32_e32 v207, v231
	v_mov_b32_e32 v231, v25
	scratch_load_b32 v25, off, off offset:8 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v211, v235
	v_mov_b32_e32 v235, v154
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v228, off, off offset:64
	scratch_load_b32 v154, off, off offset:56
	v_mov_b16_e64 v102.l, v128.l
	v_mov_b32_e32 v246, v147
	v_dual_mov_b32 v244, v135 :: v_dual_mov_b32 v247, v138
	v_mov_b32_e32 v129, v145
	v_mov_b32_e32 v145, v168
	v_mov_b16_e64 v135.l, v139.l
	v_mov_b16_e64 v168.l, v153.l
	v_mov_b32_e32 v128, v144
	v_dual_mov_b32 v60, v123 :: v_dual_mov_b32 v123, v150
	v_cvt_f32_i32_e32 v100, v170
	v_cvt_f32_i32_e32 v164, v172
	v_cvt_f32_i32_e32 v170, v177
	v_cvt_f32_i32_e32 v172, v179
	v_cvt_f32_i32_e32 v177, v184
	v_cvt_f32_i32_e32 v179, v190
	v_cvt_f32_i32_e32 v184, v195
	v_cvt_f32_i32_e32 v185, v196
	v_cvt_f32_i32_e32 v190, v200
	v_cvt_f32_i32_e32 v195, v205
	v_cvt_f32_i32_e32 v196, v206
	v_cvt_f32_i32_e32 v200, v210
	v_cvt_f32_i32_e32 v205, v229
	v_cvt_f32_i32_e32 v206, v230
	v_mov_b32_e32 v230, v218
	v_cvt_f32_i32_e32 v210, v234
	v_mov_b32_e32 v234, v47
	v_cvt_f32_i32_e32 v215, v239
	v_mov_b32_e32 v239, v124
	v_mov_b32_e32 v124, v140
	v_cvt_f32_i32_e32 v216, v240
	v_mov_b32_e32 v240, v125
	v_mov_b32_e32 v125, v141
	v_cvt_f32_i32_e32 v139, v241
	v_mov_b32_e32 v241, v126
	v_mov_b32_e32 v126, v142
	v_cvt_f32_i32_e32 v218, v242
	v_mov_b32_e32 v242, v127
	v_mov_b32_e32 v127, v143
	v_cvt_f32_i32_e32 v219, v219
	v_cvt_f32_i32_e32 v220, v220
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
.LBB0_12:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v20, off, off          ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s40, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s40, s4
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v25, 1, v25
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s41
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v18, v60, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v19, v57, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v46, v46, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v47, v48, s4, 1
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v20, v20, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x3
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v48, v20, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v20.h, v102.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v57, v16, v20
	v_mul_f32_e32 v60, v15, v20
	v_mul_f32_e32 v94, v14, v20
	v_mul_f32_e32 v95, v13, v20
	v_mul_f32_e32 v97, v11, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v57, v148, v86
	v_fma_f32 v60, v60, v0, v93
	v_fma_f32 v94, v94, v146, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v97, v97, v217, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v86, v57, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v60, v93, v60, s3
	v_cndmask_b32_e64 v86, v92, v94, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v89, v89, v97, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v96, v12, v20
	v_mul_f32_e32 v102, v10, v20
	v_mul_f32_e32 v103, v9, v20
	v_mul_f32_e32 v104, v8, v20
	v_mul_f32_e32 v105, v7, v20
	v_mul_f32_e32 v106, v6, v20
	v_mul_f32_e32 v107, v5, v20
	v_mul_f32_e32 v108, v4, v20
	v_mul_f32_e32 v109, v3, v20
	v_mul_f32_e32 v110, v2, v20
	v_mul_f32_e32 v111, v1, v20
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v20.h, v152.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v95, v95, v149, v91
	v_fma_f32 v96, v96, v151, v90
	v_fma_f32 v102, v102, v228, v88
	v_fma_f32 v103, v103, v119, v87
	v_fma_f32 v105, v105, v118, v84
	v_fma_f32 v106, v106, v117, v83
	v_fma_f32 v107, v107, v116, v82
	v_fma_f32 v108, v108, v115, v81
	v_fma_f32 v109, v109, v114, v80
	v_fma_f32 v110, v110, v113, v79
	v_fma_f32 v111, v111, v112, v78
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v16, v20
	v_mul_f32_e32 v113, v15, v20
	v_mul_f32_e32 v114, v14, v20
	v_mul_f32_e32 v115, v13, v20
	v_mul_f32_e32 v116, v12, v20
	v_mul_f32_e32 v117, v11, v20
	v_mul_f32_e32 v118, v10, v20
	v_mul_f32_e32 v119, v9, v20
	v_mul_f32_e32 v146, v8, v20
	v_mul_f32_e32 v147, v7, v20
	v_mul_f32_e32 v148, v6, v20
	v_mul_f32_e32 v149, v5, v20
	v_mul_f32_e32 v150, v4, v20
	v_mul_f32_e32 v151, v3, v20
	v_mul_f32_e32 v152, v2, v20
	v_mul_f32_e32 v153, v1, v20
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v20.h, v135.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v91, v95, s3
	v_cndmask_b32_e64 v90, v90, v96, s3
	v_cndmask_b32_e64 v88, v88, v102, s3
	v_cndmask_b32_e64 v87, v87, v103, s3
	v_cndmask_b32_e64 v84, v84, v105, s3
	v_cndmask_b32_e64 v82, v82, v107, s3
	v_cndmask_b32_e64 v81, v81, v108, s3
	v_cndmask_b32_e64 v80, v80, v109, s3
	v_cndmask_b32_e64 v79, v79, v110, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v112, v145, v77
	v_fma_f32 v93, v113, v159, v76
	v_fma_f32 v94, v114, v158, v75
	v_fma_f32 v95, v115, v157, v74
	v_fma_f32 v96, v116, v156, v73
	v_fma_f32 v97, v117, v155, v72
	v_fma_f32 v102, v118, v122, v71
	v_fma_f32 v103, v119, v255, v70
	v_fma_f32 v105, v147, v136, v68
	v_fma_f32 v107, v149, v134, v66
	v_fma_f32 v108, v150, v133, v65
	v_fma_f32 v109, v151, v132, v64
	v_fma_f32 v110, v152, v131, v63
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v112, v16, v20
	v_mul_f32_e32 v113, v15, v20
	v_mul_f32_e32 v114, v14, v20
	v_mul_f32_e32 v115, v13, v20
	v_mul_f32_e32 v116, v12, v20
	v_mul_f32_e32 v117, v11, v20
	v_mul_f32_e32 v118, v10, v20
	v_mul_f32_e32 v119, v9, v20
	v_mul_f32_e32 v130, v8, v20
	v_mul_f32_e32 v131, v7, v20
	v_mul_f32_e32 v132, v6, v20
	v_mul_f32_e32 v133, v5, v20
	v_mul_f32_e32 v134, v4, v20
	v_mul_f32_e32 v135, v3, v20
	v_mul_f32_e32 v136, v2, v20
	v_mul_f32_e32 v137, v1, v20
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v20.h, v168.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v96, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v96, v116, v125, v55
	v_fma_f32 v21, v135, v21, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v83, v106, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v12, v20
	v_mul_f32_e32 v11, v11, v20
	v_mul_f32_e32 v10, v10, v20
	v_mul_f32_e32 v9, v9, v20
	v_mul_f32_e32 v1, v1, v20
	v_mul_f32_e32 v16, v16, v20
	v_mul_f32_e32 v15, v15, v20
	v_mul_f32_e32 v14, v14, v20
	v_mul_f32_e32 v13, v13, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v96, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v240, v36
	v_fma_f32 v11, v11, v239, v35
	v_fma_f32 v10, v10, v238, v34
	v_fma_f32 v9, v9, v237, v33
	v_fma_f32 v96, v1, v163, v23
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v1, 16, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v244, v40
	v_fma_f32 v15, v15, v243, v39
	v_fma_f32 v14, v14, v242, v38
	v_fma_f32 v13, v13, v241, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v98, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v12, s3
	v_cndmask_b32_e64 v35, v35, v11, s3
	v_cndmask_b32_e64 v34, v34, v10, s3
	v_cndmask_b32_e64 v33, v33, v9, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v99 offset:41472
	v_mul_f32_e32 v8, v8, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v40, v16, s3
	v_cndmask_b32_e64 v39, v39, v15, s3
	v_cndmask_b32_e64 v38, v38, v14, s3
	v_cndmask_b32_e64 v37, v37, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v99 offset:41488
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v43, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v8, v236, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v68, v105, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v131, v162, v50
	v_fma_f32 v104, v104, v24, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v77, v92, s3
	v_cndmask_b32_e64 v32, v32, v43, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v93, s3
	v_cndmask_b32_e64 v75, v75, v94, s3
	v_cndmask_b32_e64 v74, v74, v95, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v113, v128, v59
	v_fma_f32 v94, v114, v127, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v131, v12, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v148, v123, v67
	v_fma_f32 v95, v115, v126, v56
	v_fma_f32 v24, v132, v227, v49
	v_fma_f32 v22, v134, v22, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v67, v106, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v133, v247, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v20
	v_mul_f32_e32 v5, v5, v20
	v_mul_f32_e32 v4, v4, v20
	v_mul_f32_e32 v3, v3, v20
	v_mul_f32_e32 v2, v2, v20
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v133, v14, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v112, v129, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v59, v93, s3
	v_cndmask_b32_e64 v58, v58, v94, s3
	v_cndmask_b32_e64 v56, v56, v95, s3
	v_cndmask_b32_e64 v24, v49, v24, s3
	v_cndmask_b32_e64 v61, v61, v92, s3
	v_cndmask_b32_e64 v22, v44, v22, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v7, v235, v31
	v_fma_f32 v49, v6, v234, v30
	v_fma_f32 v92, v5, v233, v29
	v_fma_f32 v93, v4, v232, v28
	v_fma_f32 v94, v3, v231, v27
	v_fma_f32 v95, v2, v230, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[1:4], v99 offset:40960
	ds_load_b128 v[5:8], v99 offset:40976
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v85, v104, s3
	v_cndmask_b32_e64 v72, v72, v97, s3
	v_cndmask_b32_e64 v71, v71, v102, s3
	v_cndmask_b32_e64 v70, v70, v103, s3
	v_cndmask_b32_e64 v65, v65, v108, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v118, v188, v53
	v_fma_f32 v108, v137, v245, v41
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v40, 16, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v132, v13, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v97, v117, v124, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v134, v15, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v103, v119, v161, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v109, s3
	v_cndmask_b32_e64 v53, v53, v102, s3
	v_cndmask_b32_e64 v54, v54, v97, s3
	v_cndmask_b32_e64 v50, v50, v105, s3
	v_cndmask_b32_e64 v52, v52, v103, s3
	v_cndmask_b32_e64 v45, v45, v106, s3
	v_cndmask_b32_e64 v41, v41, v108, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v125, v6, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v146, v121, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v44, s3
	v_cndmask_b32_e64 v30, v30, v49, s3
	v_cndmask_b32_e64 v29, v29, v92, s3
	v_cndmask_b32_e64 v28, v28, v93, s3
	v_cndmask_b32_e64 v69, v69, v104, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v130, v160, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v94, s3
	v_cndmask_b32_e64 v26, v26, v95, s3
	v_cndmask_b32_e64 v23, v23, v96, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v104, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v1, v18
	v_mul_f32_e32 v47, v2, v18
	v_mul_f32_e32 v48, v3, v18
	v_mul_f32_e32 v49, v4, v18
	v_mul_f32_e32 v92, v5, v18
	v_mul_f32_e32 v93, v6, v18
	v_mul_f32_e32 v94, v7, v18
	v_mul_f32_e32 v95, v8, v18
	v_mul_f32_e32 v96, v9, v18
	v_mul_f32_e32 v97, v10, v18
	v_mul_f32_e32 v98, v11, v18
	v_mul_f32_e32 v99, v12, v18
	v_mul_f32_e32 v102, v13, v18
	v_mul_f32_e32 v103, v14, v18
	v_mul_f32_e32 v104, v15, v18
	v_dual_mul_f32 v18, v16, v18 :: v_dual_mul_f32 v105, v1, v40
	v_mul_f32_e32 v109, v5, v40
	v_mul_f32_e32 v113, v9, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v111, s3
	v_cndmask_b32_e64 v66, v66, v107, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v136, v246, v42
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v126, v7, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v153, v154, v62
	v_fma_f32 v17, v46, v17, v23
	v_fma_f32 v46, v48, v101, v27
	v_fma_f32 v18, v18, v177, v19
	v_fma_f32 v101, v105, v178, v41
	v_fma_f32 v105, v109, v182, v45
	v_fma_f32 v109, v113, v186, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v63, v110, s3
	v_cndmask_b32_e64 v62, v62, v111, s3
	v_cndmask_b32_e64 v42, v42, v107, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v107, v3, v40
	v_mul_f32_e32 v108, v4, v40
	v_mul_f32_e32 v110, v6, v40
	v_mul_f32_e32 v111, v7, v40
	v_mul_f32_e32 v112, v8, v40
	v_mul_f32_e32 v114, v10, v40
	v_mul_f32_e32 v116, v12, v40
	v_mul_f32_e32 v117, v13, v40
	v_mul_f32_e32 v118, v14, v40
	v_dual_mul_f32 v119, v15, v40 :: v_dual_mul_f32 v120, v1, v43
	v_mul_f32_e32 v121, v2, v43
	v_mul_f32_e32 v122, v3, v43
	v_mul_f32_e32 v123, v4, v43
	v_mul_f32_e32 v124, v5, v43
	v_mul_f32_e32 v127, v8, v43
	v_mul_f32_e32 v128, v9, v43
	v_mul_f32_e32 v129, v10, v43
	v_mul_f32_e32 v130, v11, v43
	v_mul_f32_e32 v43, v16, v43
	v_mul_f32_e32 v1, v1, v44
	v_mul_f32_e32 v3, v3, v44
	v_mul_f32_e32 v4, v4, v44
	v_mul_f32_e32 v5, v5, v44
	v_mul_f32_e32 v6, v6, v44
	v_mul_f32_e32 v7, v7, v44
	v_mul_f32_e32 v8, v8, v44
	v_mul_f32_e32 v9, v9, v44
	v_mul_f32_e32 v10, v10, v44
	v_mul_f32_e32 v12, v12, v44
	v_mul_f32_e32 v13, v13, v44
	v_mul_f32_e32 v14, v14, v44
	v_mul_f32_e32 v15, v15, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v92, v165, v29
	v_fma_f32 v92, v94, v167, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	v_cndmask_b32_e64 v19, v41, v101, s2
	v_cndmask_b32_e64 v41, v45, v105, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v106, v2, v40
	v_mul_f32_e32 v2, v2, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v52, v109, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v115, v11, v40
	v_mul_f32_e32 v40, v16, v40
	v_mul_f32_e32 v11, v11, v44
	v_mul_f32_e32 v16, v16, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v47, v100, v26
	v_fma_f32 v47, v49, v164, v28
	v_fma_f32 v49, v93, v166, v30
	v_fma_f32 v93, v95, v169, v32
	v_fma_f32 v94, v96, v170, v33
	v_fma_f32 v95, v97, v171, v34
	v_fma_f32 v96, v98, v172, v35
	v_fma_f32 v97, v99, v173, v36
	v_fma_f32 v16, v16, v226, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v23, v17, s2
	v_cndmask_b32_e64 v23, v26, v44, s2
	v_cndmask_b32_e64 v26, v27, v46, s2
	v_cndmask_b32_e64 v27, v28, v47, s2
	v_cndmask_b32_e64 v28, v29, v48, s2
	v_cndmask_b32_e64 v29, v30, v49, s2
	v_cndmask_b32_e64 v30, v31, v92, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v99, v103, v175, v38
	v_fma_f32 v100, v104, v176, v39
	v_fma_f32 v103, v107, v180, v21
	v_fma_f32 v104, v108, v181, v22
	v_fma_f32 v108, v112, v185, v51
	v_fma_f32 v112, v116, v190, v55
	v_fma_f32 v113, v117, v191, v56
	v_fma_f32 v116, v120, v195, v62
	v_fma_f32 v120, v124, v199, v66
	v_fma_f32 v124, v128, v203, v70
	v_fma_f32 v128, v132, v207, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v32, v93, s2
	v_cndmask_b32_e64 v32, v33, v94, s2
	v_cndmask_b32_e64 v33, v34, v95, s2
	v_cndmask_b32_e64 v34, v35, v96, s2
	v_cndmask_b32_e64 v35, v36, v97, s2
	v_cndmask_b32_e64 v57, v57, v16, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v16, v30, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v211, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v103, s2
	v_cndmask_b32_e64 v49, v56, v113, s2
	v_cndmask_b32_e64 v56, v66, v120, s2
	v_cndmask_b32_e64 v66, v74, v128, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v74, 0, v16
	v_max_f32_e32 v16, v35, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v43, v210, v77
	v_fma_f32 v6, v6, v216, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v51, v108, s2
	v_cndmask_b32_e64 v1, v78, v1, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v78, 0, v16
	v_dual_max_f32 v16, v19, v19 :: v_dual_max_f32 v19, v21, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v218, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v77, v43, s2
	v_cndmask_b32_e64 v6, v83, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v98, v102, v174, v37
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v83, 0, v19
	v_max_f32_e32 v19, v44, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v85, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v106, v179, v42
	v_fma_f32 v117, v121, v196, v63
	v_fma_f32 v15, v15, v225, v60
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v85, 0, v19
	v_max_f32_e32 v19, v49, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v110, v183, v24
	v_fma_f32 v107, v111, v184, v50
	v_fma_f32 v111, v115, v189, v54
	v_fma_f32 v115, v119, v193, v59
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v49, 0, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v114, v187, v53
	v_fma_f32 v119, v123, v198, v65
	v_fma_f32 v121, v125, v200, v67
	v_fma_f32 v123, v127, v202, v69
	v_fma_f32 v125, v129, v204, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v53, v110, s2
	v_cndmask_b32_e64 v53, v63, v117, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v222, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v60, v15, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, v23, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v127, v131, v206, v73
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v19, v53, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v114, v118, v192, v58
	v_fma_f32 v129, v133, v208, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v71, v125, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v71, 0, v15
	v_max_f32_e32 v53, 0, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v194, v61
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, v29, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v118, v122, v197, v64
	v_fma_f32 v122, v126, v201, v68
	v_fma_f32 v126, v130, v205, v72
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v61, v40, s2
	v_cndmask_b32_e64 v61, v69, v123, s2
	v_cndmask_b32_e64 v69, v90, v12, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v12, v17, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v37, v98, s2
	v_cndmask_b32_e64 v37, v38, v99, s2
	v_cndmask_b32_e64 v38, v39, v100, s2
	v_cndmask_b32_e64 v39, v42, v102, s2
	v_cndmask_b32_e64 v42, v50, v107, s2
	v_cndmask_b32_e64 v48, v55, v112, s2
	v_cndmask_b32_e64 v50, v58, v114, s2
	v_cndmask_b32_e64 v52, v62, v116, s2
	v_cndmask_b32_e64 v55, v65, v119, s2
	v_cndmask_b32_e64 v58, v67, v121, s2
	v_cndmask_b32_e64 v62, v70, v124, s2
	v_cndmask_b32_e64 v65, v73, v127, s2
	v_cndmask_b32_e64 v67, v75, v129, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v23, v27, v27 :: v_dual_max_f32 v70, 0, v12
	v_dual_max_f32 v12, v28, v28 :: v_dual_max_f32 v1, v1, v1
	v_max_f32_e32 v73, 0, v15
	v_max_f32_e32 v15, v34, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v54, v111, s2
	v_cndmask_b32_e64 v54, v64, v118, s2
	v_cndmask_b32_e64 v64, v72, v126, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v17, v26, v26 :: v_dual_max_f32 v72, 0, v23
	v_dual_max_f32 v23, v31, v31 :: v_dual_max_f32 v26, v32, v32
	v_max_f32_e32 v32, 0, v12
	v_dual_max_f32 v12, v33, v33 :: v_dual_max_f32 v77, 0, v15
	v_max_f32_e32 v15, v18, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v215, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v104, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v75, 0, v23
	v_max_f32_e32 v23, v36, v36
	v_max_f32_e32 v36, 0, v12
	v_max_f32_e32 v12, v38, v38
	v_max_f32_e32 v18, v39, v39
	v_max_f32_e32 v39, 0, v15
	v_max_f32_e32 v15, v41, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v59, v115, s2
	v_cndmask_b32_e64 v59, v68, v122, s2
	v_cndmask_b32_e64 v5, v82, v5, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v38, 0, v12
	v_max_f32_e32 v82, 0, v18
	v_max_f32_e32 v12, v22, v22
	v_max_f32_e32 v18, v42, v42
	v_dual_max_f32 v42, 0, v15 :: v_dual_max_f32 v15, v46, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v106, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v41, 0, v12 :: v_dual_max_f32 v12, v45, v45
	v_max_f32_e32 v19, v59, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v214, v81
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v46, 0, v15
	v_max_f32_e32 v15, v51, v51
	v_dual_max_f32 v45, 0, v12 :: v_dual_max_f32 v12, v50, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v81, v4, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v81, 0, v16
	v_max_f32_e32 v16, v24, v24
	v_max_f32_e32 v50, 0, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v213, v80
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, v55, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v212, v79
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v44, 0, v16
	v_max_f32_e32 v16, v47, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v80, v3, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v28, 0, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v79, v2, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v59, 0, v19
	v_max_f32_e32 v47, 0, v16
	v_dual_max_f32 v16, v40, v40 :: v_dual_max_f32 v19, v65, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v1, v2, v2 :: v_dual_max_f32 v2, v3, v3
	v_dual_max_f32 v3, v4, v4 :: v_dual_max_f32 v4, v5, v5
	v_dual_max_f32 v5, v6, v6 :: v_dual_max_f32 v6, v57, v57
	v_max_f32_e32 v40, 0, v12
	v_max_f32_e32 v12, v54, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v139, v84
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v29, 0, v1
	v_dual_max_f32 v27, 0, v2 :: v_dual_max_f32 v2, v8, v8
	v_max_f32_e32 v35, 0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v84, v7, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v84, 0, v18
	v_dual_max_f32 v18, v48, v48 :: v_dual_max_f32 v19, 0, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v130, v134, v209, v76
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v55, 0, v15 :: v_dual_max_f32 v48, 0, v18
	v_dual_max_f32 v18, v52, v52 :: v_dual_max_f32 v15, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v76, v130, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v76, 0, v26
	v_max_f32_e32 v26, v37, v37
	v_max_f32_e32 v52, 0, v18
	v_max_f32_e32 v18, v58, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v219, v87
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v62, 0, v15
	v_dual_max_f32 v15, v67, v67 :: v_dual_max_f32 v54, 0, v12
	v_max_f32_e32 v12, v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v87, v9, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v220, v88
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v80, 0, v26
	v_dual_max_f32 v26, 0, v3 :: v_dual_max_f32 v61, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v3, v9, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v88, v10, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v34, 0, v15 :: v_dual_max_f32 v17, 0, v17
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v9, v71, v71
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, 0, v3
	v_max_f32_e32 v51, 0, v16
	v_max_f32_e32 v16, v56, v56
	v_max_f32_e32 v58, 0, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v221, v89
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v9.h
	v_mov_b16_e32 v21.h, v20.l
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v56, 0, v16 :: v_dual_mul_f32 v17, v17, v17
	v_max_f32_e32 v16, v63, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v223, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v89, v11, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v18, v64, v64 :: v_dual_and_b32 v21, 1, v21
	v_max_f32_e32 v79, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v91, v13, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v12, v66, v66
	v_max_f32_e32 v37, 0, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v224, v86
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v23, 0, v5
	v_dual_max_f32 v2, v13, v13 :: v_dual_mul_f32 v13, v70, v70
	v_max_f32_e32 v5, v11, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.h, v20.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v86, v14, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v18, v43, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v13.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v33, 0, v12 :: v_dual_max_f32 v12, 0, v5
	v_max_f32_e32 v1, v7, v7
	v_max_f32_e32 v63, 0, v16
	v_max_f32_e32 v16, v68, v68
	v_max_f32_e32 v5, v60, v60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e32 v43.l, v17.h
	v_mov_b16_e32 v43.h, v20.l
	v_add3_u32 v9, v9, v21, 0x7fff
	v_mov_b16_e32 v21.h, v20.l
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v22, 0, v4
	v_max_f32_e32 v4, v10, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v13, v24, 0x7fff
	v_and_b32_e32 v24, 1, v43
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v43, v73, v73
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v31, 0, v16
	v_max_f32_e32 v16, 0, v4
	v_max_f32_e32 v4, v14, v14
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v32, v32, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v13.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v30, 0, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v18, 0, v1 :: v_dual_max_f32 v11, 0, v4
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v4, s34, s33, v25
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v25, v72, v72
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v1, v69, v69
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v17, v24, 0x7fff
	v_mov_b16_e32 v24.l, v32.h
	v_mov_b16_e32 v24.h, v20.l
	v_mov_b16_e32 v21.l, v25.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v14, 0, v1
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v36, v36, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.h, v20.l
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, 0, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v21
	v_mov_b16_e32 v21.l, v43.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v41, v41, v41
	v_mul_f32_e32 v60, v77, v77
	v_mul_f32_e32 v64, v79, v79
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v25, v13, 0x7fff
	v_mov_b16_e32 v13.l, v17.h
	v_and_b32_e32 v17, 1, v24
	v_and_b32_e32 v21, 1, v21
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v25, v74, v74
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v3, s35, v254
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v38, v38, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v32, v32, v17, 0x7fff
	v_add3_u32 v17, v43, v21, 0x7fff
	v_mov_b16_e32 v57.l, v25.h
	v_mov_b16_e32 v32.l, v36.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v10, 0, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v32.h
	v_mov_b16_e32 v32.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v24, v75, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.h, v20.l
	v_and_b32_e32 v43, 1, v57
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v57, v76, v76
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[1:2], null, s35, 48, v[3:4]
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v25, v43, 0x7fff
	v_mov_b16_e32 v43.l, v57.h
	v_mov_b16_e32 v43.h, v20.l
	.loc	1 444 15 is_stmt 1              ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v39, v39, v39 :: v_dual_add_nc_u32 v2, 0x80, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v21, 1, v21
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v45, v45, v45
	v_mul_f32_e32 v47, v47, v47
	v_mul_f32_e32 v49, v49, v49
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v7, 0, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v24, v21, 0x7fff
	v_and_b32_e32 v24, 1, v43
	v_mov_b16_e32 v21.l, v25.h
	v_and_b32_e32 v25, 1, v32
	v_mov_b16_e32 v43.l, v60.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v37, v37, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v57, v57, v24, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v35, v35, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v36, v25, 0x7fff
	v_mov_b16_e32 v25.h, v20.l
	v_and_b32_e32 v36, 1, v43
	v_mov_b16_e32 v24.l, v57.h
	v_mov_b16_e32 v57.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v32, v78, v78 :: v_dual_mul_f32 v43, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v60, v36, 0x7fff
	v_mov_b16_e32 v60.l, v64.h
	v_mov_b16_e32 v60.h, v20.l
	v_mov_b16_e32 v25.l, v32.h
	v_mov_b16_e32 v57.l, v43.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v34, v34, v34
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v26, v26, v26 :: v_dual_and_b32 v25, 1, v25
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v22, v22, v22
	v_mul_f32_e32 v28, v28, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v32, v25, 0x7fff
	v_mov_b16_e32 v25.l, v36.h
	v_and_b32_e32 v32, 1, v60
	v_and_b32_e32 v36, 1, v57
	v_mov_b16_e32 v57.l, v38.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v18, v18
	v_mul_f32_e32 v14, v14, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v60, v64, v32, 0x7fff
	v_add3_u32 v32, v43, v36, 0x7fff
	v_mov_b16_e32 v36.l, v39.h
	v_mov_b16_e32 v36.h, v20.l
	v_and_b32_e32 v43, 1, v57
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v57, v82, v82 :: v_dual_mul_f32 v64, v81, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v60.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v38, v38, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v43.l, v57.h
	v_mov_b16_e32 v60.l, v64.h
	v_mov_b16_e32 v60.h, v20.l
	v_mov_b16_e32 v43.h, v20.l
	v_add3_u32 v36, v39, v36, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v39, v83, v83 :: v_dual_and_b32 v38, 1, v60
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v43, 1, v43
	v_mul_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.l, v39.h
	v_add3_u32 v38, v64, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v43, v57, v43, 0x7fff
	v_mov_b16_e32 v57.l, v41.h
	v_mov_b16_e32 v57.h, v20.l
	v_and_b32_e32 v60, 1, v60
	v_mov_b16_e32 v43.l, v38.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v44, v44, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v64.h, v20.l
	v_and_b32_e32 v38, 1, v57
	v_add3_u32 v39, v39, v60, 0x7fff
	v_mov_b16_e32 v60.h, v20.l
	v_mov_b16_e32 v57.l, v44.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v12, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v38, v41, v38, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v41, v84, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v39.h
	v_and_b32_e32 v57, 1, v57
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v27, v27, v27
	v_mul_f32_e32 v7, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v64.l, v41.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v42, v42, v42 :: v_dual_mul_f32 v23, v23, v23
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v19, v19, v19
	s_mov_b32 s2, 0x76543210
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.l, v42.h
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v6, s35, 4, v3
	v_lshl_add_u32 v5, s35, 5, v3
	v_add_lshl_u32 v3, v4, v3, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s3, s11
	v_and_b32_e32 v39, 1, v60
	.loc	1 444 15 is_stmt 1              ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v60, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v39, v42, v39, 0x7fff
	v_add3_u32 v42, v44, v57, 0x7fff
	v_mov_b16_e32 v44.l, v60.h
	v_mov_b16_e32 v44.h, v20.l
	v_and_b32_e32 v57, 1, v64
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v39, 1, v44
	v_add3_u32 v41, v41, v57, 0x7fff
	v_mov_b16_e32 v57.l, v45.h
	v_mov_b16_e32 v57.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v46, v46, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v39, v60, v39, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v41, 1, v57
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v57.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v45, v41, 0x7fff
	v_mov_b16_e32 v45.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v48, v48, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v45.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v46, v44, 0x7fff
	v_and_b32_e32 v46, 1, v57
	v_mov_b16_e32 v44.l, v41.h
	v_and_b32_e32 v41, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v45, v47, v46, 0x7fff
	v_mov_b16_e32 v47.l, v49.h
	v_mov_b16_e32 v47.h, v20.l
	v_add3_u32 v41, v48, v41, 0x7fff
	v_mov_b16_e32 v46.h, v20.l
	v_mov_b16_e32 v41.l, v45.h
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v45, 1, v47
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v47, v51, v51
	v_mul_f32_e32 v51, v52, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v48, v50, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v50.h, v20.l
	v_add3_u32 v45, v49, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v50.l, v48.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v40, v40, v40 :: v_dual_and_b32 v49, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, v40.h
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v40, v40, v46, 0x7fff
	v_mov_b16_e32 v46.l, v47.h
	v_mov_b16_e32 v46.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v50, v53, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v45.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v53, v56, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v46
	v_add3_u32 v46, v48, v49, 0x7fff
	v_mov_b16_e32 v48.l, v50.h
	v_mov_b16_e32 v49.l, v51.h
	v_mov_b16_e32 v49.h, v20.l
	v_mov_b16_e32 v48.h, v20.l
	v_add3_u32 v45, v47, v45, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v47, v54, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v46.h
	v_and_b32_e32 v46, 1, v49
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v49, v55, v55 :: v_dual_and_b32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.l, v47.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v55, v62, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v51, v46, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v48, v50, v48, 0x7fff
	v_mov_b16_e32 v50.l, v49.h
	v_mov_b16_e32 v50.h, v20.l
	v_and_b32_e32 v51, 1, v52
	v_mov_b16_e32 v48.l, v46.h
	v_mov_b16_e32 v54.h, v20.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v46, 1, v50
	v_add3_u32 v47, v47, v51, 0x7fff
	v_mov_b16_e32 v51.l, v53.h
	v_mov_b16_e32 v51.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v52, v58, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v49, v46, 0x7fff
	v_mov_b16_e32 v46.l, v47.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v49, v59, v59
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v51
	v_mov_b16_e32 v50.l, v52.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v51, v61, v61 :: v_dual_and_b32 v0, 16, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v54.l, v49.h
	v_add3_u32 v47, v53, v47, 0x7fff
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v53, 1, v54
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v54, v63, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v50, v52, v50, 0x7fff
	v_mov_b16_e32 v52.l, v51.h
	v_mov_b16_e32 v52.h, v20.l
	v_mov_b16_e32 v50.l, v47.h
	v_add3_u32 v49, v49, v53, 0x7fff
	v_mov_b16_e32 v53.l, v55.h
	v_mov_b16_e32 v53.h, v20.l
	v_and_b32_e32 v47, 1, v52
	v_mov_b16_e32 v52.l, v54.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v51, v47, 0x7fff
	v_mov_b16_e32 v47.l, v49.h
	v_and_b32_e32 v49, 1, v53
	v_and_b32_e32 v51, 1, v52
	v_mov_b16_e32 v52.l, v37.h
	v_mov_b16_e32 v53.l, v35.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v49, v55, v49, 0x7fff
	v_add3_u32 v51, v54, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v52, 1, v52
	v_mov_b16_e32 v51.l, v49.h
	v_and_b32_e32 v49, 1, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v37, v37, v52, 0x7fff
	v_mov_b16_e32 v53.l, v33.h
	v_mov_b16_e32 v52.l, v34.h
	v_mov_b16_e32 v52.h, v20.l
	v_add3_u32 v35, v35, v49, 0x7fff
	v_mov_b16_e32 v35.l, v37.h
	v_and_b32_e32 v37, 1, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v49, 1, v52
	v_mov_b16_e32 v52.l, v31.h
	v_add3_u32 v33, v33, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v20.l
	v_add3_u32 v34, v34, v49, 0x7fff
	v_and_b32_e32 v49, 1, v52
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v33, 1, v37
	v_add3_u32 v31, v31, v49, 0x7fff
	v_mov_b16_e32 v49.l, v28.h
	v_mov_b16_e32 v49.h, v20.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v30, v30, v33, 0x7fff
	v_mov_b16_e32 v30.l, v31.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v49
	v_add3_u32 v28, v28, v31, 0x7fff
	v_mov_b16_e32 v31.l, v26.h
	v_mov_b16_e32 v31.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v29, v29, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v29.h
	v_and_b32_e32 v33, 1, v37
	v_mov_b16_e32 v37.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v29, v33, 0x7fff
	v_and_b32_e32 v33, 1, v37
	v_mov_b16_e32 v29.l, v28.h
	v_and_b32_e32 v28, 1, v31
	v_mov_b16_e32 v31.l, v23.h
	v_mov_b16_e32 v37.l, v18.h
	v_add3_u32 v27, v27, v33, 0x7fff
	v_mov_b16_e32 v33.l, v22.h
	v_mov_b16_e32 v33.h, v20.l
	v_add3_u32 v26, v26, v28, 0x7fff
	v_and_b32_e32 v28, 1, v31
	v_mov_b16_e32 v26.l, v27.h
	v_and_b32_e32 v27, 1, v37
	v_and_b32_e32 v31, 1, v33
	v_mov_b16_e32 v33.l, v19.h
	v_add3_u32 v23, v23, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v18, v18, v27, 0x7fff
	v_add3_u32 v22, v22, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v28, 1, v33
	v_mov_b16_e32 v31.l, v14.h
	v_mov_b16_e32 v31.h, v20.l
	v_mov_b16_e32 v27.h, v20.l
	v_mov_b16_e32 v23.l, v22.h
	v_add3_u32 v19, v19, v28, 0x7fff
	v_mov_b16_e32 v19.l, v18.h
	v_and_b32_e32 v18, 1, v31
	v_mov_b16_e32 v28.l, v12.h
	v_mov_b16_e32 v28.h, v20.l
	v_mov_b16_e32 v22.l, v16.h
	v_mov_b16_e32 v22.h, v20.l
	v_add3_u32 v14, v14, v18, 0x7fff
	v_mov_b16_e32 v18.l, v8.h
	v_mov_b16_e32 v18.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v28, 1, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b32_e32 v33, v47, v46, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v27.l, v15.h
	v_add3_u32 v12, v12, v28, 0x7fff
	v_add3_u32 v16, v16, v22, 0x7fff
	v_mov_b16_e32 v22.l, v7.h
	v_mov_b16_e32 v22.h, v20.l
	v_and_b32_e32 v27, 1, v27
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v12.h, v20.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v11, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v8, v18, 0x7fff
	v_add3_u32 v15, v15, v27, 0x7fff
	v_mov_b16_e32 v15.l, v10.h
	v_cndmask_b32_e32 v27, v45, v41, vcc_lo
	v_mov_b16_e32 v12.l, v11.h
	v_cndmask_b32_e32 v28, v41, v45, vcc_lo
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v15.h, v20.l
	v_cndmask_b32_e32 v31, v50, v48, vcc_lo
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b32_e32 v20, v43, v42, vcc_lo
	v_cndmask_b32_e32 v18, v42, v43, vcc_lo
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v11, v12, 0x7fff
	v_cndmask_b32_e32 v12, v32, v24, vcc_lo
	v_add3_u32 v10, v10, v15, 0x7fff
	v_and_b32_e32 v15, 1, v22
	v_cndmask_b32_e32 v22, v38, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v11.l, v10.h
	v_add3_u32 v0, v7, v15, 0x7fff
	v_mov_b16_e32 v0.l, v8.h
	v_cndmask_b32_e32 v8, v17, v9, vcc_lo
	v_cndmask_b32_e32 v7, v9, v17, vcc_lo
	v_cndmask_b32_e32 v10, v21, v13, vcc_lo
	v_cndmask_b32_e32 v9, v13, v21, vcc_lo
	v_cndmask_b32_e32 v13, v24, v32, vcc_lo
	v_cndmask_b32_e32 v15, v36, v25, vcc_lo
	v_dual_cndmask_b32 v17, v25, v36 :: v_dual_cndmask_b32 v32, v48, v50
	v_dual_cndmask_b32 v21, v39, v38 :: v_dual_cndmask_b32 v24, v40, v44
	v_cndmask_b32_e32 v25, v44, v40, vcc_lo
	v_dual_cndmask_b32 v37, v34, v51 :: v_dual_cndmask_b32 v40, v11, v16
	v_dual_cndmask_b32 v11, v16, v11 :: v_dual_mov_b32 v16, 0x5410
	v_cndmask_b32_e32 v38, v30, v35, vcc_lo
	v_cndmask_b32_e32 v30, v35, v30, vcc_lo
	v_cndmask_b32_e32 v35, v23, v29, vcc_lo
	v_cndmask_b32_e32 v23, v29, v23, vcc_lo
	v_dual_cndmask_b32 v41, v0, v14 :: v_dual_cndmask_b32 v0, v14, v0
	v_permlanex16_b32 v14, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v7, 0x1054, v16 :: v_dual_cndmask_b32 v36, v46, v47
	v_cndmask_b32_e32 v34, v51, v34, vcc_lo
	v_permlanex16_b32 v13, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_permlanex16_b32 v29, v36, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x540054, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v7, 4, v7
	v_cndmask_b32_e32 v39, v19, v26, vcc_lo
	v_dual_cndmask_b32 v19, v26, v19 :: v_dual_mov_b32 v26, 0x7632
	v_and_b32_e32 v42, 0x5040504, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v16, 0x3276, v26, vcc_lo
	v_permlanex16_b32 v26, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v19, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v7, v14, v8, v42
	v_perm_b32 v11, v13, v12, v42
	v_lshl_or_b32 v9, v16, 8, v16
	v_permlanex16_b32 v16, v20, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v22, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v25, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v28, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v9, 0x760076, v9
	v_permlanex16_b32 v28, v32, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v23, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v22, v24, v42
	v_lshl_or_b32 v9, v9, 4, v9
	v_perm_b32 v23, v28, v31, v42
	s_mov_b32 s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v43, 0x7060706, v9
	v_perm_b32 v9, v26, v10, v42
	v_perm_b32 v8, v14, v8, v43
	v_perm_b32 v10, v26, v10, v43
	v_perm_b32 v12, v13, v12, v43
	v_perm_b32 v13, v17, v15, v42
	v_perm_b32 v14, v17, v15, v43
	v_perm_b32 v15, v16, v18, v42
	v_perm_b32 v16, v16, v18, v43
	v_perm_b32 v17, v20, v21, v42
	v_perm_b32 v18, v20, v21, v43
	v_perm_b32 v20, v22, v24, v43
	v_perm_b32 v21, v25, v27, v42
	v_perm_b32 v22, v25, v27, v43
	v_perm_b32 v24, v28, v31, v43
	v_perm_b32 v25, v29, v33, v42
	v_perm_b32 v26, v29, v33, v43
	v_perm_b32 v27, v32, v37, v42
	v_perm_b32 v28, v32, v37, v43
	v_perm_b32 v31, v34, v35, v42
	v_perm_b32 v32, v34, v35, v43
	v_perm_b32 v33, v36, v39, v42
	v_perm_b32 v34, v36, v39, v43
	v_add_lshl_u32 v39, v4, v6, 1
	v_perm_b32 v29, v30, v38, v42
	v_perm_b32 v30, v30, v38, v43
	v_perm_b32 v37, v0, v41, v42
	v_perm_b32 v38, v0, v41, v43
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v3, s[0:3], 0 offen
	buffer_store_b128 v[11:14], v3, s[0:3], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[0:3], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v2, v5, 1
	v_add_lshl_u32 v4, v4, v1, 1
	v_perm_b32 v35, v44, v40, v42
	v_perm_b32 v36, v44, v40, v43
	v_add_lshl_u32 v1, v2, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[0:3], 0 offen
	buffer_store_b128 v[23:26], v3, s[0:3], 0 offen
	buffer_store_b128 v[27:30], v5, s[0:3], 0 offen
	buffer_store_b128 v[31:34], v4, s[0:3], 0 offen
	buffer_store_b128 v[35:38], v1, s[0:3], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 72
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14968
; TotalNumSgprs: 47
; NumVgprs: 256
; ScratchSize: 72
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 72
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
