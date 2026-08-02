	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v3, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v19, 6, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 1, v0
	v_and_b32_e32 v190, 8, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 62, v2
	v_and_b32_e32 v4, 48, v3
	v_and_b32_e32 v191, 32, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v10, 48, v10
	s_mov_b32 s47, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s12, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_xor_b32 s13, s2, s16
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s6, s6, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s18, s6
	s_add_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s18
	s_ashr_i32 s18, s13, 31
	s_mul_i32 s14, s6, s17
	s_sub_i32 s13, s7, s14
	s_add_i32 s14, s6, 1
	s_sub_i32 s19, s13, s17
	s_cmp_ge_u32 s13, s17
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s14, s14, s6
	s_cselect_b32 s6, s19, s13
	s_add_i32 s13, s14, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s13, s13, s14
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s23, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s14, s13, s18
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v6, s34, v5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s14, s14, s18
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s14, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s22, s14, 7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v175, v1, 4, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s34, s26
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s33, s12
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s13, 31
.Ltmp15:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v176, v2, v4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s22, s15, v175
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 26
.Ltmp17:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s12, s13, s2
.Ltmp19:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s34, v2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v7, s23, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s7
	v_cndmask_b32_e64 v8, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v9, s34, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	s_clause 0x1
	buffer_load_b128 v[20:23], v8, s[28:31], 0 offen
	buffer_load_b128 v[24:27], v6, s[28:31], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v6, 0x80000000, v7, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v7, 0x80000000, v9, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s23, 7, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s26, 64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[28:31], v6, s[28:31], 0 offen
	buffer_load_b128 v[32:35], v7, s[28:31], 0 offen
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s35, v176
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s34, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s26, v176
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v8, 1, v0
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_bfe_i32 v9, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v56, 0x80000000, v6, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s23, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_clause 0x1
	buffer_load_b128 v[36:39], v6, s[28:31], 0 offen
	buffer_load_b128 v[40:43], v7, s[28:31], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s34, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_b128 v[56:59], v56, s[4:7], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	s_clause 0x1
	buffer_load_b128 v[44:47], v2, s[28:31], 0 offen
	buffer_load_b128 v[48:51], v6, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[52:55], v4, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v4, v7, 1, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v125, v6, 16, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v6, 48, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0x420, v9
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 2, v4
	v_or_b32_e32 v9, 6, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v119, 32, v125
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v178, v3, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v8, v5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 4, v4
	v_or_b32_e32 v10, 8, v4
	v_or_b32_e32 v11, 10, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v75, 0, v178
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v180, v19, 10, v5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 12, v4
	v_or_b32_e32 v13, 14, v4
	v_or_b32_e32 v14, 64, v4
	v_or_b32_e32 v15, 0x42, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v182, 0x90, v180
	v_xor_b32_e32 v183, 0x120, v180
	v_add_nc_u32_e32 v76, 0, v180
	v_xor_b32_e32 v184, 0x1b0, v180
	v_xor_b32_e32 v185, 0x210, v180
	v_add_nc_u32_e32 v77, 0, v182
	v_xor_b32_e32 v186, 0x330, v180
	v_add_nc_u32_e32 v78, 0, v183
	v_xor_b32_e32 v187, 0x3a0, v180
	v_add_nc_u32_e32 v79, 0, v184
	v_add_nc_u32_e32 v80, 0, v185
	v_add_nc_u32_e32 v81, 0, v186
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v16, 0x44, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v82, 0, v187
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v17, 0x46, v4
	v_or_b32_e32 v18, 0x48, v4
	v_or_b32_e32 v3, 0x4a, v4
	v_or_b32_e32 v5, 0x4c, v4
	v_or_b32_e32 v6, 0x4e, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v60, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v61, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v62, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v63, v27, v23, 0x5010400
	v_perm_b32 v64, v27, v23, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v65, v32, v28, 0x5010400
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v66, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v67, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v68, v35, v31, 0x5010400
	v_perm_b32 v69, v35, v31, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v20.l, 0xff, v60.l
	v_lshrrev_b32_e32 v70, 8, v60
	v_lshrrev_b32_e32 v71, 24, v60
	v_and_b16 v20.h, 0xff, v60.h
	v_and_b16 v21.l, 0xff, v24.l
	v_lshrrev_b32_e32 v60, 8, v24
	v_lshrrev_b32_e32 v72, 24, v24
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.l, 0xff, v61.l
	v_lshrrev_b32_e32 v73, 8, v61
	v_lshrrev_b32_e32 v74, 24, v61
	v_and_b16 v22.h, 0xff, v61.h
	v_and_b16 v23.l, 0xff, v25.l
	v_lshrrev_b32_e32 v61, 8, v25
	v_lshrrev_b32_e32 v83, 24, v25
	v_and_b16 v23.h, 0xff, v25.h
	v_and_b16 v24.l, 0xff, v62.l
	v_lshrrev_b32_e32 v84, 8, v62
	v_lshrrev_b32_e32 v85, 24, v62
	v_and_b16 v24.h, 0xff, v62.h
	v_and_b16 v25.l, 0xff, v26.l
	v_lshrrev_b32_e32 v62, 8, v26
	v_lshrrev_b32_e32 v86, 24, v26
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v63.l
	v_lshrrev_b32_e32 v87, 8, v63
	v_lshrrev_b32_e32 v88, 24, v63
	v_and_b16 v26.h, 0xff, v63.h
	v_and_b16 v27.l, 0xff, v64.l
	v_lshrrev_b32_e32 v63, 8, v64
	v_lshrrev_b32_e32 v89, 24, v64
	v_and_b16 v27.h, 0xff, v64.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v64, v40, v36, 0x5010400
	v_perm_b32 v90, v40, v36, 0x7030602
	v_perm_b32 v91, v41, v37, 0x5010400
	v_perm_b32 v92, v41, v37, 0x7030602
	v_perm_b32 v93, v42, v38, 0x5010400
	v_perm_b32 v94, v42, v38, 0x7030602
	v_perm_b32 v95, v43, v39, 0x5010400
	v_perm_b32 v96, v43, v39, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v28.l, 0xff, v65.l
	v_lshrrev_b32_e32 v97, 8, v65
	v_lshrrev_b32_e32 v98, 24, v65
	v_and_b16 v28.h, 0xff, v65.h
	v_and_b16 v29.l, 0xff, v32.l
	v_lshrrev_b32_e32 v65, 8, v32
	v_lshrrev_b32_e32 v99, 24, v32
	v_and_b16 v29.h, 0xff, v32.h
	v_and_b16 v30.l, 0xff, v66.l
	v_lshrrev_b32_e32 v100, 8, v66
	v_lshrrev_b32_e32 v101, 24, v66
	v_and_b16 v30.h, 0xff, v66.h
	v_and_b16 v31.l, 0xff, v33.l
	v_lshrrev_b32_e32 v66, 8, v33
	v_lshrrev_b32_e32 v102, 24, v33
	v_and_b16 v31.h, 0xff, v33.h
	v_and_b16 v32.l, 0xff, v67.l
	v_lshrrev_b32_e32 v103, 8, v67
	v_lshrrev_b32_e32 v104, 24, v67
	v_and_b16 v32.h, 0xff, v67.h
	v_and_b16 v33.l, 0xff, v34.l
	v_lshrrev_b32_e32 v67, 8, v34
	v_lshrrev_b32_e32 v105, 24, v34
	v_and_b16 v33.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v68.l
	v_lshrrev_b32_e32 v106, 8, v68
	v_lshrrev_b32_e32 v107, 24, v68
	v_and_b16 v34.h, 0xff, v68.h
	v_and_b16 v35.l, 0xff, v69.l
	v_lshrrev_b32_e32 v68, 8, v69
	v_lshrrev_b32_e32 v108, 24, v69
	v_and_b16 v35.h, 0xff, v69.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v69, v48, v44, 0x5010400
	v_perm_b32 v109, v48, v44, 0x7030602
	v_perm_b32 v110, v49, v45, 0x5010400
	v_perm_b32 v111, v49, v45, 0x7030602
	v_perm_b32 v112, v50, v46, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v36.l, 8, v70.l
	v_lshlrev_b16 v39.h, 8, v83.l
	v_lshrrev_b32_e32 v83, 8, v64
	v_lshlrev_b16 v36.h, 8, v71.l
	v_lshlrev_b16 v40.l, 8, v84.l
	v_lshrrev_b32_e32 v84, 24, v64
	v_lshlrev_b16 v37.l, 8, v60.l
	v_lshlrev_b16 v40.h, 8, v85.l
	v_lshrrev_b32_e32 v85, 8, v90
	v_lshlrev_b16 v37.h, 8, v72.l
	v_lshlrev_b16 v41.h, 8, v86.l
	v_lshrrev_b32_e32 v86, 24, v90
	v_lshlrev_b16 v38.l, 8, v73.l
	v_lshlrev_b16 v42.l, 8, v87.l
	v_lshrrev_b32_e32 v87, 8, v91
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v113, v50, v46, 0x7030602
	v_perm_b32 v114, v51, v47, 0x5010400
	v_perm_b32 v115, v51, v47, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v38.h, 8, v74.l
	v_lshlrev_b16 v39.l, 8, v61.l
	v_lshlrev_b16 v41.l, 8, v62.l
	v_lshlrev_b16 v42.h, 8, v88.l
	v_lshlrev_b16 v43.l, 8, v63.l
	v_lshlrev_b16 v43.h, 8, v89.l
	v_and_b16 v44.l, 0xff, v64.l
	v_and_b16 v44.h, 0xff, v64.h
	v_and_b16 v45.l, 0xff, v90.l
	v_and_b16 v45.h, 0xff, v90.h
	v_and_b16 v46.l, 0xff, v91.l
	v_lshrrev_b32_e32 v88, 24, v91
	v_and_b16 v46.h, 0xff, v91.h
	v_and_b16 v47.l, 0xff, v92.l
	v_lshrrev_b32_e32 v89, 8, v92
	v_lshrrev_b32_e32 v90, 24, v92
	v_and_b16 v47.h, 0xff, v92.h
	v_and_b16 v48.l, 0xff, v93.l
	v_lshrrev_b32_e32 v91, 8, v93
	v_lshrrev_b32_e32 v92, 24, v93
	v_and_b16 v48.h, 0xff, v93.h
	v_and_b16 v49.l, 0xff, v94.l
	v_lshrrev_b32_e32 v93, 8, v94
	v_lshrrev_b32_e32 v116, 24, v94
	v_and_b16 v49.h, 0xff, v94.h
	v_and_b16 v50.l, 0xff, v95.l
	v_lshrrev_b32_e32 v94, 8, v95
	v_lshrrev_b32_e32 v117, 24, v95
	v_and_b16 v50.h, 0xff, v95.h
	v_and_b16 v51.l, 0xff, v96.l
	v_lshrrev_b32_e32 v95, 8, v96
	v_lshrrev_b32_e32 v118, 24, v96
	v_and_b16 v51.h, 0xff, v96.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v60.l, 8, v97.l
	v_lshlrev_b16 v60.h, 8, v98.l
	v_lshlrev_b16 v61.l, 8, v65.l
	v_lshlrev_b16 v61.h, 8, v99.l
	v_lshlrev_b16 v62.l, 8, v100.l
	v_lshlrev_b16 v62.h, 8, v101.l
	v_lshlrev_b16 v63.l, 8, v66.l
	v_lshlrev_b16 v63.h, 8, v102.l
	v_lshlrev_b16 v64.l, 8, v103.l
	v_lshlrev_b16 v64.h, 8, v104.l
	v_lshlrev_b16 v65.h, 8, v105.l
	v_lshrrev_b32_e32 v96, 8, v69
	v_lshrrev_b32_e32 v97, 24, v69
	v_lshrrev_b32_e32 v98, 8, v109
	v_lshrrev_b32_e32 v99, 24, v109
	v_lshrrev_b32_e32 v100, 8, v110
	v_lshrrev_b32_e32 v101, 24, v110
	v_lshrrev_b32_e32 v102, 8, v111
	v_lshrrev_b32_e32 v103, 24, v111
	v_lshrrev_b32_e32 v104, 8, v112
	v_lshrrev_b32_e32 v105, 24, v112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v20.l, v20.l, v36.l
	v_lshlrev_b16 v36.l, 8, v83.l
	v_or_b16 v20.h, v20.h, v36.h
	v_lshlrev_b16 v36.h, 8, v84.l
	v_or_b16 v21.l, v21.l, v37.l
	v_lshlrev_b16 v37.l, 8, v85.l
	v_or_b16 v21.h, v21.h, v37.h
	v_lshlrev_b16 v37.h, 8, v86.l
	v_or_b16 v22.l, v22.l, v38.l
	v_lshlrev_b16 v38.l, 8, v87.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v65.l, 8, v67.l
	v_lshlrev_b16 v66.l, 8, v106.l
	v_lshlrev_b16 v66.h, 8, v107.l
	v_lshlrev_b16 v67.l, 8, v68.l
	v_lshlrev_b16 v67.h, 8, v108.l
	v_and_b16 v68.l, 0xff, v69.l
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.l, 0xff, v109.l
	v_and_b16 v69.h, 0xff, v109.h
	v_and_b16 v70.l, 0xff, v110.l
	v_and_b16 v70.h, 0xff, v110.h
	v_and_b16 v71.l, 0xff, v111.l
	v_and_b16 v71.h, 0xff, v111.h
	v_and_b16 v72.l, 0xff, v112.l
	v_and_b16 v72.h, 0xff, v112.h
	v_lshrrev_b32_e32 v106, 8, v113
	v_lshrrev_b32_e32 v108, 8, v114
	v_lshrrev_b32_e32 v110, 8, v115
	v_lshrrev_b32_e32 v111, 24, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v22.h, v22.h, v38.h
	v_or_b16 v23.l, v23.l, v39.l
	v_or_b16 v23.h, v23.h, v39.h
	v_or_b16 v24.l, v24.l, v40.l
	v_or_b16 v24.h, v24.h, v40.h
	v_or_b16 v25.l, v25.l, v41.l
	v_or_b16 v25.h, v25.h, v41.h
	v_or_b16 v26.l, v26.l, v42.l
	v_lshlrev_b16 v38.h, 8, v88.l
	v_lshlrev_b16 v39.l, 8, v89.l
	v_lshlrev_b16 v39.h, 8, v90.l
	v_lshlrev_b16 v40.l, 8, v91.l
	v_lshlrev_b16 v40.h, 8, v92.l
	v_lshlrev_b16 v41.l, 8, v93.l
	v_lshlrev_b16 v41.h, 8, v116.l
	v_lshlrev_b16 v42.l, 8, v94.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v28.l, v28.l, v60.l
	v_or_b16 v28.h, v28.h, v60.h
	v_or_b16 v29.l, v29.l, v61.l
	v_or_b16 v29.h, v29.h, v61.h
	v_or_b16 v30.l, v30.l, v62.l
	v_or_b16 v30.h, v30.h, v62.h
	v_or_b16 v31.l, v31.l, v63.l
	v_or_b16 v31.h, v31.h, v63.h
	v_or_b16 v32.l, v32.l, v64.l
	v_or_b16 v32.h, v32.h, v64.h
	v_lshlrev_b16 v60.l, 8, v96.l
	v_lshlrev_b16 v60.h, 8, v97.l
	v_lshlrev_b16 v61.l, 8, v98.l
	v_lshlrev_b16 v61.h, 8, v99.l
	v_lshlrev_b16 v62.l, 8, v100.l
	v_lshlrev_b16 v62.h, 8, v101.l
	v_lshlrev_b16 v63.l, 8, v102.l
	v_lshlrev_b16 v63.h, 8, v103.l
	v_lshlrev_b16 v64.l, 8, v104.l
	v_lshlrev_b16 v64.h, 8, v105.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v76, v20
	ds_store_b16_d16_hi v76, v20 offset:64
	ds_store_b16 v77, v21
	ds_store_b16_d16_hi v77, v21 offset:64
	ds_store_b16 v78, v22
	ds_store_b16_d16_hi v78, v22 offset:64
	ds_store_b16 v79, v23
	ds_store_b16_d16_hi v79, v23 offset:64
	ds_store_b16 v80, v24
	ds_store_b16_d16_hi v80, v24 offset:64
	v_or_b16 v20.l, v44.l, v36.l
	v_or_b16 v20.h, v44.h, v36.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v107, 24, v113
	v_lshrrev_b32_e32 v109, 24, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v21.l, v45.l, v37.l
	v_or_b16 v21.h, v45.h, v37.h
	v_or_b16 v26.h, v26.h, v42.h
	v_or_b16 v27.l, v27.l, v43.l
	v_or_b16 v27.h, v27.h, v43.h
	v_or_b16 v22.l, v46.l, v38.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v73.l, 0xff, v113.l
	v_and_b16 v74.l, 0xff, v114.l
	v_or_b16 v33.l, v33.l, v65.l
	v_or_b16 v33.h, v33.h, v65.h
	v_or_b16 v34.l, v34.l, v66.l
	v_or_b16 v34.h, v34.h, v66.h
	v_or_b16 v35.l, v35.l, v67.l
	v_or_b16 v35.h, v35.h, v67.h
	v_lshlrev_b16 v65.l, 8, v106.l
	v_lshlrev_b16 v66.l, 8, v108.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v22.h, v46.h, v38.h
	v_or_b16 v23.l, v47.l, v39.l
	v_or_b16 v23.h, v47.h, v39.h
	v_or_b16 v24.l, v48.l, v40.l
	v_or_b16 v24.h, v48.h, v40.h
	v_or_b16 v36.l, v49.l, v41.l
	v_or_b16 v36.h, v49.h, v41.h
	v_or_b16 v37.l, v50.l, v42.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v75, v[52:55] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v76, v28 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v76, v25 offset:640
	ds_store_b16_d16_hi v76, v25 offset:704
	ds_store_b16 v81, v26
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v28 offset:16448
	ds_store_b16 v77, v29 offset:16384
	ds_store_b16_d16_hi v77, v29 offset:16448
	ds_store_b16 v78, v30 offset:16384
	ds_store_b16_d16_hi v78, v30 offset:16448
	ds_store_b16 v79, v31 offset:16384
	ds_store_b16_d16_hi v79, v31 offset:16448
	ds_store_b16 v80, v32 offset:16384
	ds_store_b16_d16_hi v80, v32 offset:16448
	ds_store_b16 v76, v33 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v81, v26 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v33 offset:17088
	ds_store_b16 v81, v34 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v82, v27
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v81, v34 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v82, v27 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v82, v35 offset:16384
	ds_store_b16_d16_hi v82, v35 offset:16448
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v25.l, v68.l, v60.l
	v_or_b16 v25.h, v68.h, v60.h
	v_or_b16 v26.l, v69.l, v61.l
	v_or_b16 v26.h, v69.h, v61.h
	v_or_b16 v27.l, v70.l, v62.l
	v_or_b16 v27.h, v70.h, v62.h
	v_or_b16 v28.l, v71.l, v63.l
	v_or_b16 v28.h, v71.h, v63.h
	v_or_b16 v29.l, v72.l, v64.l
	v_or_b16 v29.h, v72.h, v64.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v76, v20 offset:8192
	ds_store_b16_d16_hi v76, v20 offset:8256
	ds_store_b16 v77, v21 offset:8192
	ds_store_b16_d16_hi v77, v21 offset:8256
	ds_store_b16 v78, v22 offset:8192
	ds_store_b16_d16_hi v78, v22 offset:8256
	ds_store_b16 v79, v23 offset:8192
	ds_store_b16_d16_hi v79, v23 offset:8256
	ds_store_b16 v80, v24 offset:8192
	ds_store_b16_d16_hi v80, v24 offset:8256
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v75, v[56:59] offset:36864
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v76, v25 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v76, v36 offset:8832
	ds_store_b16_d16_hi v76, v36 offset:8896
	ds_store_b16 v81, v37 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v25 offset:24640
	ds_store_b16 v77, v26 offset:24576
	ds_store_b16_d16_hi v77, v26 offset:24640
	ds_store_b16 v78, v27 offset:24576
	ds_store_b16_d16_hi v78, v27 offset:24640
	ds_store_b16 v79, v28 offset:24576
	ds_store_b16_d16_hi v79, v28 offset:24640
	ds_store_b16 v80, v29 offset:24576
	ds_store_b16_d16_hi v80, v29 offset:24640
	v_and_b16 v20.l, 0xff, v115.l
	v_lshlrev_b16 v20.h, 8, v110.l
	v_lshlrev_b16 v21.l, 8, v111.l
	v_and_b16 v21.h, 0xff, v115.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v42.h, 8, v117.l
	v_lshlrev_b16 v43.l, 8, v95.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v73.h, 0xff, v113.h
	v_and_b16 v74.h, 0xff, v114.h
	v_lshlrev_b16 v65.h, 8, v107.l
	v_lshlrev_b16 v66.h, 8, v109.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v43.h, 8, v118.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v30.l, v73.l, v65.l
	v_or_b16 v24.l, v74.l, v66.l
	v_or_b16 v20.l, v20.l, v20.h
	v_or_b16 v20.h, v21.h, v21.l
	v_lshlrev_b32_e32 v22, 3, v0
	v_lshlrev_b32_e32 v21, 3, v19
	v_lshlrev_b32_e32 v23, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v37.h, v50.h, v42.h
	v_or_b16 v38.l, v51.l, v43.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v30.h, v73.h, v65.h
	v_or_b16 v24.h, v74.h, v66.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v38.h, v51.h, v43.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v76, v30 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v81, v37 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v76, v30 offset:25280
	ds_store_b16 v81, v24 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v82, v38 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v81, v24 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v82, v38 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v82, v20 offset:24576
	ds_store_b16_d16_hi v82, v20 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v19, 0x430, v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v20, 32, v0
	v_and_b32_e32 v188, 0x800, v23
	v_lshl_or_b32 v189, v1, 6, v21
	s_mov_b32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v159, v2, 6, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v19, 8, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v160, 16, v159
	v_xor_b32_e32 v179, 32, v159
	v_xor_b32_e32 v181, 48, v159
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr179
                                        ; implicit-def: $vgpr181
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr188
                                        ; implicit-def: $vgpr189
.LBB0_3:                                ; %Flow610
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v24, s33, v125
	v_or_b32_e32 v25, s33, v119
	s_ashr_i32 s1, s12, 6
	v_or_b32_e32 v158, s22, v4
	v_or_b32_e32 v155, s22, v7
	v_mul_lo_u32 v162, v24, s1
	v_mul_lo_u32 v161, v25, s1
	v_or_b32_e32 v156, s22, v8
	v_or_b32_e32 v157, s22, v9
	v_or_b32_e32 v143, s22, v10
	v_or_b32_e32 v144, s22, v11
	v_or_b32_e32 v145, s22, v12
	v_or_b32_e32 v146, s22, v13
	v_or_b32_e32 v127, s22, v14
	v_or_b32_e32 v128, s22, v15
	v_or_b32_e32 v129, s22, v16
	v_or_b32_e32 v130, s22, v17
	v_or_b32_e32 v131, s22, v18
	v_or_b32_e32 v132, s22, v3
	v_or_b32_e32 v133, s22, v5
	v_or_b32_e32 v134, s22, v6
	v_add_nc_u32_e32 v154, s23, v4
	v_add_nc_u32_e32 v150, s23, v7
	v_add_nc_u32_e32 v151, s23, v8
	v_add_nc_u32_e32 v152, s23, v9
	v_add_nc_u32_e32 v147, s23, v10
	v_add_nc_u32_e32 v153, s23, v11
	v_add_nc_u32_e32 v148, s23, v12
	v_add_nc_u32_e32 v149, s23, v13
	v_add_nc_u32_e32 v135, s23, v14
	v_add_nc_u32_e32 v136, s23, v15
	v_add_nc_u32_e32 v137, s23, v16
	v_add_nc_u32_e32 v138, s23, v17
	v_add_nc_u32_e32 v139, s23, v18
	v_add_nc_u32_e32 v140, s23, v3
	v_add_nc_u32_e32 v141, s23, v5
	v_add_nc_u32_e32 v142, s23, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	scratch_store_b32 off, v119, off offset:68 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 5, 1
	s_mov_b32 s12, 0
	v_bfe_i32 v4, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v3, 0x420, v3
	v_lshl_or_b32 v189, v1, 6, v21
	v_and_b32_e32 v5, 0x430, v22
	v_and_b32_e32 v188, 0x800, v23
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v192, s34, v175
	v_and_or_b32 v1, 0x210, v4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v159, v2, 6, v5
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v118, 0
	v_xor_b32_e32 v1, v1, v189
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v160, 16, v159
	v_xor_b32_e32 v179, 32, v159
	v_xor_b32_e32 v181, 48, v159
	v_mov_b32_e32 v174, 0
	v_or_b32_e32 v194, v1, v188
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v6, s17
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v198, 16, v194
	v_xor_b32_e32 v199, 32, v194
	v_xor_b32_e32 v200, 48, v194
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v79, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s10, s1, 3
	s_add_i32 s0, s35, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s10, s10, -3
	s_mov_b32 s11, 1
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s47, s12
	s_mov_b32 s27, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s51, s27, 6
	s_mov_b32 s49, s50
	s_mov_b32 s50, s47
	s_mov_b32 s47, s26
	s_mov_b32 s26, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s0, s51
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v56, s19 :: v_dual_add_nc_u32 v9, s35, v176
	v_dual_mov_b32 v52, s15 :: v_dual_add_nc_u32 v17, s50, v194
	v_dual_mov_b32 v55, s18 :: v_dual_add_nc_u32 v18, s48, v194
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[73:76], v9, s[4:7], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v54, s17 :: v_dual_add_nc_u32 v9, s49, v159
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[201:204], v9
	ds_load_b128 v[9:12], v9 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[13:16], v17 offset:4096
	ds_load_b128 v[205:208], v17
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[25:28], v18
	ds_load_b128 v[209:212], v18 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v53, s16 :: v_dual_mov_b32 v50, s13
	v_dual_mov_b32 v51, s14 :: v_dual_add_nc_u32 v124, s49, v160
	v_dual_mov_b32 v49, s12 :: v_dual_add_nc_u32 v126, s50, v198
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[13:16], v[201:204], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[13:16], v[9:12], v[49:56] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[25:28], v[201:204], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[25:28], v[9:12], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[205:208], v[9:12], v[49:56] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[209:212], v[9:12], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[209:212], v[201:204], v[49:56] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[205:208], v[201:204], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[201:204], v124
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[205:208], v126
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[209:212], v124 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v124, s48, v198
	ds_load_b128 v[213:216], v124 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[205:208], v[201:204], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[205:208], v[209:212], v[65:72] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[205:208], v126 offset:4096
	v_add_nc_u32_e32 v126, s50, v199
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[213:216], v[201:204], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[213:216], v[209:212], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[205:208], v[201:204], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[205:208], v[209:212], v[33:40] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[205:208], v124
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v124, s49, v179
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[205:208], v[201:204], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[205:208], v[209:212], v[57:64] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[201:204], v124
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[205:208], v126
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[209:212], v124 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v124, s48, v199
	ds_load_b128 v[213:216], v124 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[205:208], v[201:204], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[205:208], v[209:212], v[65:72] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[205:208], v126 offset:4096
	v_add_nc_u32_e32 v126, s50, v200
	s_mov_b32 s50, s46
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[213:216], v[201:204], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[213:216], v[209:212], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[205:208], v[201:204], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[205:208], v[209:212], v[33:40] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[205:208], v124
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v124, s49, v181
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[205:208], v[201:204], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[205:208], v[209:212], v[57:64] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[201:204], v124
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[205:208], v126
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[209:212], v124 offset:2048
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v124, s48, v200
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s48, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s48, s48, s22
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[213:216], v124 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[205:208], v[201:204], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[205:208], v[209:212], v[65:72] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[205:208], v126 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v126, v65
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[213:216], v[201:204], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[213:216], v[209:212], v[25:32] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v216, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s48, v175
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v220, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s48, v192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v215, v10
	v_cvt_f32_i32_e32 v217, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[205:208], v[201:204], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[205:208], v[209:212], v[33:40] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[205:208], v124
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v218, v11
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s48, s48, s23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v66
	v_cvt_f32_i32_e32 v213, v24
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v222, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v214, v23
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v219, v14
	v_cvt_f32_i32_e32 v221, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[205:208], v[201:204], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[205:208], v[209:212], v[57:64] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v205, v36
	v_cvt_f32_i32_e32 v207, v38
	v_cvt_f32_i32_e32 v208, v37
	v_cvt_f32_i32_e32 v209, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[36:39], v13, s[28:31], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v66, v59
	v_cvt_f32_i32_e32 v59, v63
	v_cvt_f32_i32_e32 v63, v41
	v_cvt_f32_i32_e32 v41, v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v48, v34
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v34, v27
	v_cvt_f32_i32_e32 v27, v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v31, v17
	v_cvt_f32_i32_e32 v210, v19
	v_cvt_f32_i32_e32 v211, v22
	v_cvt_f32_i32_e32 v201, v67
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v65, v58
	v_cvt_f32_i32_e32 v67, v57
	v_cvt_f32_i32_e32 v58, v62
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v62, v42
	v_cvt_f32_i32_e32 v64, v44
	v_cvt_f32_i32_e32 v202, v43
	v_cvt_f32_i32_e32 v203, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v212, v21
	v_cvt_f32_i32_e32 v204, v33
	v_cvt_f32_i32_e32 v206, v35
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v33, v26
	v_cvt_f32_i32_e32 v35, v25
	v_cvt_f32_i32_e32 v26, v30
	v_cvt_f32_i32_e32 v25, v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v30, v18
	v_cvt_f32_i32_e32 v32, v20
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v37, v10, 0x5010400
	v_perm_b32 v17, v37, v10, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s48, v175
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v24, v36, v9, 0x5010400
	v_perm_b32 v22, v36, v9, 0x7030602
	v_perm_b32 v15, v38, v11, 0x5010400
	v_perm_b32 v13, v38, v11, 0x7030602
	v_perm_b32 v11, v39, v12, 0x5010400
	v_perm_b32 v9, v39, v12, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s48, v192
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[36:39], v10, s[28:31], 0 offen
	buffer_load_b128 v[42:45], v12, s[28:31], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s48, s47, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s48, s48, 26
	s_add_i32 s47, s47, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s47, s47, 6
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s47, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s48, s47, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s49, s48, s22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v223, v145, s48, 1
	v_add_lshl_u32 v224, v146, s48, 1
	v_add_lshl_u32 v225, v127, s48, 1
	v_add_lshl_u32 v226, v128, s48, 1
	v_add_lshl_u32 v227, v129, s48, 1
	v_add_lshl_u32 v228, v130, s48, 1
	v_add_lshl_u32 v229, v131, s48, 1
	v_add_lshl_u32 v230, v132, s48, 1
	v_add_lshl_u32 v231, v133, s48, 1
	v_add_lshl_u32 v232, v134, s48, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v233, v154, s49, 1
	v_add_lshl_u32 v234, v150, s49, 1
	v_add_lshl_u32 v235, v151, s49, 1
	v_add_lshl_u32 v236, v152, s49, 1
	v_add_lshl_u32 v237, v147, s49, 1
	v_add_lshl_u32 v238, v153, s49, 1
	v_add_lshl_u32 v239, v148, s49, 1
	v_add_lshl_u32 v240, v149, s49, 1
	v_add_lshl_u32 v241, v135, s49, 1
	v_add_lshl_u32 v242, v136, s49, 1
	v_add_lshl_u32 v243, v137, s49, 1
	v_add_lshl_u32 v244, v138, s49, 1
	v_add_lshl_u32 v245, v139, s49, 1
	v_add_lshl_u32 v246, v140, s49, 1
	v_add_lshl_u32 v247, v141, s49, 1
	v_add_lshl_u32 v248, v142, s49, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v223, 0x80000000, v223 :: v_dual_cndmask_b32 v224, 0x80000000, v224
	v_dual_cndmask_b32 v225, 0x80000000, v225 :: v_dual_cndmask_b32 v226, 0x80000000, v226
	v_dual_cndmask_b32 v227, 0x80000000, v227 :: v_dual_cndmask_b32 v228, 0x80000000, v228
	v_dual_cndmask_b32 v229, 0x80000000, v229 :: v_dual_cndmask_b32 v230, 0x80000000, v230
	v_dual_cndmask_b32 v231, 0x80000000, v231 :: v_dual_cndmask_b32 v232, 0x80000000, v232
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v233, 0x80000000, v233 :: v_dual_cndmask_b32 v234, 0x80000000, v234
	v_dual_cndmask_b32 v235, 0x80000000, v235 :: v_dual_cndmask_b32 v236, 0x80000000, v236
	v_dual_cndmask_b32 v237, 0x80000000, v237 :: v_dual_cndmask_b32 v238, 0x80000000, v238
	v_dual_cndmask_b32 v239, 0x80000000, v239 :: v_dual_cndmask_b32 v240, 0x80000000, v240
	v_dual_cndmask_b32 v241, 0x80000000, v241 :: v_dual_cndmask_b32 v242, 0x80000000, v242
	v_dual_cndmask_b32 v243, 0x80000000, v243 :: v_dual_cndmask_b32 v244, 0x80000000, v244
	v_dual_cndmask_b32 v245, 0x80000000, v245 :: v_dual_cndmask_b32 v246, 0x80000000, v246
	v_dual_cndmask_b32 v247, 0x80000000, v247 :: v_dual_cndmask_b32 v248, 0x80000000, v248
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	s_add_i32 s51, s27, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v23, v42, v36, 0x5010400
	v_perm_b32 v21, v42, v36, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v36, v162, s47, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v20, v43, v37, 0x5010400
	v_perm_b32 v18, v43, v37, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v37, v161, s47, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v16, v44, v38, 0x5010400
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v14, v44, v38, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v38, v158, s48, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	s_clause 0x1
	buffer_load_u16 v36, v36, s[36:39], 0 offen
	buffer_load_u16 v37, v37, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v12, v45, v39, 0x5010400
	v_perm_b32 v10, v45, v39, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v39, v155, s48, 1
	v_add_lshl_u32 v42, v156, s48, 1
	v_add_lshl_u32 v43, v157, s48, 1
	v_add_lshl_u32 v44, v143, s48, 1
	v_add_lshl_u32 v45, v144, s48, 1
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	s_clause 0x1f
	buffer_load_u16 v38, v38, s[40:43], 0 offen
	buffer_load_u16 v39, v39, s[40:43], 0 offen
	buffer_load_u16 v42, v42, s[40:43], 0 offen
	buffer_load_u16 v43, v43, s[40:43], 0 offen
	buffer_load_u16 v44, v44, s[40:43], 0 offen
	buffer_load_u16 v45, v45, s[40:43], 0 offen
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
	buffer_load_u16 v246, v246, s[40:43], 0 offen
	buffer_load_u16 v247, v247, s[40:43], 0 offen
	buffer_load_u16 v248, v248, s[40:43], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s48, s11, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s49, s48, 0
	s_barrier
	v_add_nc_u32_e32 v249, s49, v178
	s_mov_b32 s47, s45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s49, s48
	s_mov_b32 s48, s44
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s46, s49, 0x8000
	ds_store_b128 v249, v[73:76] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s27, s10
	s_mov_b32 s27, s51
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v39, 16, v39
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v73, v36, v38
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v173, v73, v49
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v36, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v174, v49, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v36, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v165, v49, v51
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v36, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v166, v49, v52
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v36, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v117, v49, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v36, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v118, v49, v54 :: v_dual_lshlrev_b32 v49, 16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v50, v36, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v109, v50, v55 :: v_dual_lshlrev_b32 v50, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v36, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(23)
	v_dual_fmac_f32 v110, v51, v56 :: v_dual_lshlrev_b32 v51, 16, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v52, v36, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v101, v52, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v31, 16, v226
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v52, v36, v31 :: v_dual_fmac_f32 v193, v38, v126
	v_mul_f32_e32 v38, v37, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v102, v52, v30
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v195, v38, v124 :: v_dual_lshlrev_b32 v30, 16, v227
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v52, v36, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(20)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v93, v52, v210 :: v_dual_lshlrev_b32 v52, 16, v228
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v53, v36, v52 :: v_dual_mul_f32 v38, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v94, v53, v32
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v32, 16, v229
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v169, v38, v201 :: v_dual_mul_f32 v38, v37, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v36, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v170, v38, v68
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v85, v53, v212
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v53, 16, v230
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v95, v30, v206 :: v_dual_mul_f32 v54, v36, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v54, v211
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v54, 16, v231
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v55, v36, v54 :: v_dual_mul_f32 v30, v37, v52
	v_mul_f32_e32 v31, v37, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v77, v55, v214
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v96, v30, v205 :: v_dual_lshlrev_b32 v55, 16, v232
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v37, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v104, v31, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v56, v36, v55 :: v_dual_fmac_f32 v87, v30, v208
	v_mul_f32_e32 v30, v37, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v88, v30, v207
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v37, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v79, v30, v209 :: v_dual_mul_f32 v30, v37, v55
	v_fmac_f32_e32 v80, v30, v40
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v30, 16, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v38, v37, v44 :: v_dual_mul_f32 v31, v36, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v119, v38, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v38, v37, v45 :: v_dual_fmac_f32 v163, v31, v63
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v31, 16, v234
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v120, v38, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v37, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v78, v56, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v36, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v111, v38, v71 :: v_dual_mul_f32 v38, v37, v50
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v177, v32, v62 :: v_dual_lshlrev_b32 v32, 16, v235
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v112, v38, v72
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v37, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v103, v38, v204
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v38, v36, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(12)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v167, v38, v202 :: v_dual_lshlrev_b32 v38, 16, v236
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v36, v38
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v168, v39, v64 :: v_dual_lshlrev_b32 v39, 16, v237
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v40, v36, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v121, v40, v203 :: v_dual_lshlrev_b32 v40, 16, v238
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v42, v36, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v122, v42, v46
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v42, 16, v239
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v43, v36, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v113, v43, v47
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v43, 16, v240
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v44, v36, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v114, v44, v41
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v41, 16, v241
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v44, v36, v41
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v105, v44, v216 :: v_dual_lshlrev_b32 v44, 16, v242
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v36, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v106, v45, v215
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v45, 16, v243
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v36, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v97, v46, v218
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v37, v30
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v46, 16, v244
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v196, v30, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v30, v37, v31 :: v_dual_mul_f32 v47, v36, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v197, v30, v65 :: v_dual_mul_f32 v30, v37, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v98, v47, v217
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v47, 16, v245
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v171, v30, v66
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v37, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v36, v47
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v172, v30, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v30, v37, v39 :: v_dual_fmac_f32 v89, v48, v220
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v123, v30, v61 :: v_dual_lshlrev_b32 v48, 16, v246
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v49, v36, v48 :: v_dual_fmac_f32 v164, v30, v58
	v_mul_f32_e32 v30, v37, v42
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v90, v49, v219
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v49, 16, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v115, v30, v59
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v37, v43
	v_mul_f32_e32 v50, v36, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v116, v30, v57
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v30, v37, v41 :: v_dual_fmac_f32 v81, v50, v222
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v107, v30, v35 :: v_dual_lshlrev_b32 v50, 16, v248
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v37, v44
	v_mul_f32_e32 v36, v36, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v108, v30, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v37, v45
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v82, v36, v221 :: v_dual_fmac_f32 v99, v30, v34
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v37, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v100, v30, v28
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v28, v37, v47
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v91, v28, v29 :: v_dual_mul_f32 v28, v37, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v28, v26
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v37, v49
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v83, v26, v27 :: v_dual_mul_f32 v26, v37, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v26, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v26, 24, v24
	v_lshrrev_b32_e32 v25, 8, v24
	v_and_b16 v25.h, 0xff, v24.l
	v_and_b16 v24.l, 0xff, v24.h
	v_lshlrev_b16 v24.h, 8, v26.l
	v_lshrrev_b32_e32 v26, 8, v22
	v_lshlrev_b16 v25.l, 8, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v24.l, v24.l, v24.h
	v_lshlrev_b16 v24.h, 8, v26.l
	v_lshrrev_b32_e32 v26, 24, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v25.l, v25.h, v25.l
	v_and_b16 v25.h, 0xff, v22.l
	v_and_b16 v22.l, 0xff, v22.h
	v_lshlrev_b16 v22.h, 8, v26.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v26, 8, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v24.h, v25.h, v24.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v25.h, 0xff, v23.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v22.l, v22.l, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.h, 8, v26.l
	v_lshrrev_b32_e32 v26, 24, v23
	v_and_b16 v23.l, 0xff, v23.h
	v_or_b16 v22.h, v25.h, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v23.h, 8, v26.l
	v_lshrrev_b32_e32 v26, 8, v21
	v_and_b16 v25.h, 0xff, v21.l
	v_or_b16 v23.l, v23.l, v23.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v23.h, 8, v26.l
	v_lshrrev_b32_e32 v26, 24, v21
	v_and_b16 v21.l, 0xff, v21.h
	v_or_b16 v23.h, v25.h, v23.h
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b16 v21.h, 8, v26.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v26, s45, v180
	ds_store_b16 v26, v25
	ds_store_b16 v26, v24 offset:64
	v_add_nc_u32_e32 v25, s45, v182
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v21.l, v21.l, v21.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v25, v24
	ds_store_b16 v25, v22 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v26, v22 offset:16384
	ds_store_b16 v26, v23 offset:16448
	ds_store_b16_d16_hi v25, v23 offset:16384
	ds_store_b16 v25, v21 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v22, 24, v19
	v_lshrrev_b32_e32 v21, 8, v19
	v_and_b16 v21.h, 0xff, v19.l
	v_and_b16 v19.l, 0xff, v19.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v19.h, 8, v22.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v22, 8, v20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v21.l, 8, v21.l
	v_or_b16 v19.l, v19.l, v19.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v19.h, 8, v22.l
	v_lshrrev_b32_e32 v22, 24, v20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v21.l, v21.h, v21.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v21.h, 0xff, v20.l
	v_and_b16 v20.l, 0xff, v20.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v20.h, 8, v22.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v22, s45, v183
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v19.h, v21.h, v19.h
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v20.l, v20.l, v20.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v22, v21
	ds_store_b16 v22, v19 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v22, v19 offset:16384
	ds_store_b16 v22, v20 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v20, 24, v17
	v_lshrrev_b32_e32 v19, 8, v17
	v_and_b16 v19.h, 0xff, v17.l
	v_and_b16 v17.l, 0xff, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v17.h, 8, v20.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v20, 8, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v19.l, 8, v19.l
	v_or_b16 v17.l, v17.l, v17.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v17.h, 8, v20.l
	v_lshrrev_b32_e32 v20, 24, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v19.l, v19.h, v19.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v19.h, 0xff, v18.l
	v_and_b16 v18.l, 0xff, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v18.h, 8, v20.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v20, s45, v184
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.h, v19.h, v17.h
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v18.l, v18.l, v18.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v20, v19
	ds_store_b16 v20, v17 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v20, v17 offset:16384
	ds_store_b16 v20, v18 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v18, 24, v15
	v_lshrrev_b32_e32 v17, 8, v15
	v_and_b16 v17.h, 0xff, v15.l
	v_and_b16 v15.l, 0xff, v15.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v15.h, 8, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v18, 8, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.l, 8, v17.l
	v_or_b16 v15.l, v15.l, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v15.h, 8, v18.l
	v_lshrrev_b32_e32 v18, 24, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v17.l, v17.h, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.h, 0xff, v16.l
	v_and_b16 v16.l, 0xff, v16.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v16.h, 8, v18.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v18, s45, v185
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v15.h, v17.h, v15.h
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v16.l, v16.l, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v18, v17
	ds_store_b16 v18, v15 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v18, v15 offset:16384
	ds_store_b16 v18, v16 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v16, 24, v13
	v_lshrrev_b32_e32 v15, 8, v13
	v_and_b16 v15.h, 0xff, v13.l
	v_and_b16 v13.l, 0xff, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v13.h, 8, v16.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v16, 8, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.l, 8, v15.l
	v_or_b16 v13.l, v13.l, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v13.h, 8, v16.l
	v_lshrrev_b32_e32 v16, 24, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.l, v15.h, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v15.h, 0xff, v14.l
	v_and_b16 v14.l, 0xff, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v14.h, 8, v16.l
	v_or_b16 v13.h, v15.h, v13.h
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v14.l, v14.l, v14.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v26, v15 offset:640
	ds_store_b16 v26, v13 offset:704
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v26, v13 offset:17024
	ds_store_b16 v26, v14 offset:17088
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v14, 24, v11
	v_lshrrev_b32_e32 v13, 8, v11
	v_and_b16 v13.h, 0xff, v11.l
	v_and_b16 v11.l, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v11.h, 8, v14.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v14, 8, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v13.l, 8, v13.l
	v_or_b16 v11.l, v11.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.h, 8, v14.l
	v_lshrrev_b32_e32 v14, 24, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v13.l, v13.h, v13.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v13.h, 0xff, v12.l
	v_and_b16 v12.l, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v12.h, 8, v14.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v14, s45, v186
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v11.h, v13.h, v11.h
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v12.l, v12.l, v12.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v14, v13
	ds_store_b16 v14, v11 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v14, v11 offset:16384
	ds_store_b16 v14, v12 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v12, 24, v9
	v_lshrrev_b32_e32 v11, 8, v9
	v_and_b16 v11.h, 0xff, v9.l
	v_and_b16 v9.l, 0xff, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.h, 8, v12.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v12, 8, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v9.h, 8, v12.l
	v_lshrrev_b32_e32 v12, 24, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v11.l, v11.h, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v11.h, 0xff, v10.l
	v_and_b16 v10.l, 0xff, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v10.h, 8, v12.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v12, s45, v187
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v9.h, v11.h, v9.h
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v10.l, v10.l, v10.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v12, v11
	ds_store_b16 v12, v9 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v12, v9 offset:16384
	ds_store_b16 v12, v10 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v19, v190 :: v_dual_mov_b32 v20, v191
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v174, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v173, 0
	v_mov_b32_e32 v177, 0
	v_mov_b32_e32 v163, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v19
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v3, s50, v159
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[29:32], v3
	ds_load_b128 v[13:16], v3 offset:2048
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v3, s50, v179
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v4, s50, v181
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v33, 0, 1, s2
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v175, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s50, v160
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[25:28], v2
	ds_load_b128 v[17:20], v2 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v189
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v43, v1, v188
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[21:24], v3
	ds_load_b128 v[9:12], v3 offset:2048
	ds_load_b128 v[5:8], v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v4 offset:2048
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_xor_b32_e32 v44, 16, v43
	v_xor_b32_e32 v47, 32, v43
	v_xor_b32_e32 v48, 48, v43
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v33, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v33, s47, v43
	v_add_nc_u32_e32 v34, s47, v44
	ds_load_b128 v[73:76], v33 offset:4096
	ds_load_b128 v[182:185], v33
	v_add_nc_u32_e32 v33, s47, v47
	ds_load_b128 v[186:189], v34 offset:4096
	ds_load_b128 v[198:201], v34
	v_add_nc_u32_e32 v41, s47, v48
	ds_load_b128 v[202:205], v33 offset:4096
	ds_load_b128 v[206:209], v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v40, s19 :: v_dual_mov_b32 v39, s18
	v_dual_mov_b32 v38, s17 :: v_dual_mov_b32 v37, s16
	v_mov_b32_e32 v34, s13
	v_dual_mov_b32 v36, s15 :: v_dual_mov_b32 v35, s14
	v_mov_b32_e32 v33, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[210:213], v41
	ds_load_b128 v[214:217], v41 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[29:32], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[182:185], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[182:185], v[13:16], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[13:16], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[198:201], v[25:28], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[186:189], v[25:28], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[198:201], v[17:20], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[186:189], v[17:20], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[206:209], v[21:24], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[202:205], v[21:24], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[206:209], v[9:12], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[202:205], v[9:12], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[210:213], v[5:8], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[214:217], v[5:8], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[210:213], v[1:4], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[214:217], v[1:4], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v51
	v_cvt_f32_i32_e32 v124, v52
	v_cvt_f32_i32_e32 v74, v53
	v_cvt_f32_i32_e32 v75, v54
	v_cvt_f32_i32_e32 v192, v55
	v_cvt_f32_i32_e32 v73, v56
	v_cvt_f32_i32_e32 v54, v57
	v_cvt_f32_i32_e32 v55, v58
	v_cvt_f32_i32_e32 v46, v59
	v_cvt_f32_i32_e32 v51, v60
	v_cvt_f32_i32_e32 v41, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v229, v63
	v_cvt_f32_i32_e32 v230, v64
	v_cvt_f32_i32_e32 v63, v65
	v_cvt_f32_i32_e32 v64, v66
	v_cvt_f32_i32_e32 v62, v67
	v_cvt_f32_i32_e32 v255, v68
	v_cvt_f32_i32_e32 v60, v69
	v_cvt_f32_i32_e32 v61, v70
	v_cvt_f32_i32_e32 v58, v71
	v_cvt_f32_i32_e32 v59, v72
	v_cvt_f32_i32_e32 v56, v33
	v_cvt_f32_i32_e32 v57, v34
	v_cvt_f32_i32_e32 v52, v35
	v_cvt_f32_i32_e32 v53, v36
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v33, v39
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v38, v50
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v64, off offset:224
	scratch_store_b32 off, v63, off offset:220
	scratch_store_b32 off, v38, off offset:212
	scratch_store_b32 off, v37, off offset:208
	scratch_store_b32 off, v62, off offset:204
	scratch_store_b32 off, v61, off offset:196
	scratch_store_b32 off, v60, off offset:192
	scratch_store_b32 off, v59, off offset:160
	scratch_store_b32 off, v58, off offset:156
	scratch_store_b32 off, v57, off offset:136
	scratch_store_b32 off, v56, off offset:132
	scratch_store_b32 off, v55, off offset:120
	scratch_store_b32 off, v54, off offset:116
	scratch_store_b32 off, v53, off offset:104
	scratch_store_b32 off, v52, off offset:100
	scratch_store_b32 off, v51, off offset:88
	scratch_store_b32 off, v46, off offset:84
	scratch_store_b32 off, v36, off offset:32
	scratch_store_b32 off, v35, off offset:28
	scratch_store_b32 off, v42, off offset:20
	scratch_store_b32 off, v41, off offset:16
	scratch_store_b32 off, v34, off offset:4
	scratch_store_b32 off, v33, off
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v39, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v66, s19 :: v_dual_add_nc_u32 v33, s48, v43
	v_dual_mov_b32 v64, s17 :: v_dual_add_nc_u32 v35, s48, v44
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[49:52], v33 offset:4096
	ds_load_b128 v[53:56], v33
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v62, s15 :: v_dual_add_nc_u32 v33, s48, v47
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[67:70], v35 offset:4096
	ds_load_b128 v[182:185], v35
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v65, s18 :: v_dual_add_nc_u32 v34, s48, v48
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[198:201], v33 offset:4096
	ds_load_b128 v[202:205], v33
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v63, s16 :: v_dual_mov_b32 v60, s13
	v_mov_b32_e32 v61, s14
	v_mov_b32_e32 v59, s12
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[206:209], v34
	ds_load_b128 v[210:213], v34 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[49:52], v[29:32], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[53:56], v[13:16], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[49:52], v[13:16], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[182:185], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[67:70], v[25:28], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[182:185], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[67:70], v[17:20], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[202:205], v[21:24], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[198:201], v[21:24], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[202:205], v[9:12], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[198:201], v[9:12], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[206:209], v[5:8], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[210:213], v[5:8], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[206:209], v[1:4], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[210:213], v[1:4], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v46, v35
	v_cvt_f32_i32_e32 v54, v36
	v_cvt_f32_i32_e32 v249, v37
	v_cvt_f32_i32_e32 v251, v38
	v_cvt_f32_i32_e32 v191, v39
	v_cvt_f32_i32_e32 v194, v40
	v_cvt_f32_i32_e32 v76, v233
	v_cvt_f32_i32_e32 v231, v234
	v_cvt_f32_i32_e32 v53, v235
	v_cvt_f32_i32_e32 v55, v236
	v_cvt_f32_i32_e32 v41, v237
	v_cvt_f32_i32_e32 v49, v238
	v_cvt_f32_i32_e32 v37, v239
	v_cvt_f32_i32_e32 v38, v240
	v_cvt_f32_i32_e32 v50, v241
	v_cvt_f32_i32_e32 v42, v242
	v_cvt_f32_i32_e32 v36, v243
	v_cvt_f32_i32_e32 v35, v244
	v_cvt_f32_i32_e32 v58, v245
	v_cvt_f32_i32_e32 v57, v246
	v_cvt_f32_i32_e32 v68, v247
	v_cvt_f32_i32_e32 v69, v248
	v_cvt_f32_i32_e32 v237, v59
	v_cvt_f32_i32_e32 v126, v60
	v_cvt_f32_i32_e32 v56, v61
	v_cvt_f32_i32_e32 v59, v62
	v_cvt_f32_i32_e32 v51, v63
	v_cvt_f32_i32_e32 v52, v64
	v_cvt_f32_i32_e32 v39, v65
	v_cvt_f32_i32_e32 v40, v66
	v_cvt_f32_i32_e32 v175, v33
	v_cvt_f32_i32_e32 v67, v34
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	s_clause 0x11                           ; 72-byte Folded Spill
	scratch_store_b32 off, v175, off offset:216
	scratch_store_b32 off, v69, off offset:184
	scratch_store_b32 off, v68, off offset:180
	scratch_store_b32 off, v75, off offset:176
	scratch_store_b32 off, v74, off offset:172
	scratch_store_b32 off, v73, off offset:148
	scratch_store_b32 off, v59, off offset:128
	scratch_store_b32 off, v56, off offset:124
	scratch_store_b32 off, v55, off offset:112
	scratch_store_b32 off, v53, off offset:108
	scratch_store_b32 off, v52, off offset:64
	scratch_store_b32 off, v51, off offset:56
	scratch_store_b32 off, v49, off offset:52
	scratch_store_b32 off, v41, off offset:48
	scratch_store_b32 off, v40, off offset:36
	scratch_store_b32 off, v39, off offset:24
	scratch_store_b32 off, v38, off offset:12
	scratch_store_b32 off, v37, off offset:8
	s_ashr_i32 s0, s0, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v162, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v56, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v33, 0, 1, s3
	v_mov_b32_e32 v69, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v49, v1, s[8:11], 0 offen
	v_add_lshl_u32 v1, v161, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s34
	v_mov_b32_e32 v235, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v236, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v189, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v187, 0
	buffer_load_u16 v65, v1, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v158, s0, 1
	v_mov_b32_e32 v217, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v215, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v205, 0
	v_mov_b32_e32 v211, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v226, 0
	buffer_load_u16 v198, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v155, s0, 1
	v_mov_b32_e32 v202, 0
	v_mov_b32_e32 v224, 0
	v_mov_b32_e32 v186, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v216, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_mov_b32_e32 v242, 0
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v208, 0
	v_mov_b32_e32 v180, 0
	buffer_load_u16 v55, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v156, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v188, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	buffer_load_u16 v190, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v157, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v52, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v143, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v254, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v144, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v253, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v145, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v146, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v127, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v128, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v129, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v130, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v131, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v132, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v133, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v134, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	.loc	1 426 31 is_stmt 0              ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, s0, v154, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v6, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v150, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v5, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v151, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v68, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v152, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v71, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v147, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v66, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v153, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v70, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v148, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v250, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v149, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v252, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v135, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v232, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v136, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v137, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v176, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v138, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v175, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v139, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v140, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v141, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v142, 1
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v33
	v_mov_b32_e32 v33, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s46, v159
	ds_load_b128 v[17:20], v1
	ds_load_b128 v[13:16], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v160
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[9:12], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v179
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[29:32], v1 offset:2048
	v_add_nc_u32_e32 v1, s46, v181
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[29:32], off offset:228 ; 16-byte Folded Spill
	ds_load_b128 v[29:32], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[37:40], v1 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:244 ; 16-byte Folded Spill
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v33, s45, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v185, s19 :: v_dual_add_nc_u32 v34, s45, v44
	v_mov_b32_e32 v184, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[37:40], v33 offset:4096
	ds_load_b128 v[59:62], v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v182, s16 :: v_dual_add_nc_u32 v33, s45, v48
	v_dual_mov_b32 v180, s14 :: v_dual_add_nc_u32 v41, s45, v47
	v_dual_mov_b32 v183, s17 :: v_dual_mov_b32 v178, s12
	v_mov_b32_e32 v181, s15
	v_mov_b32_e32 v179, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[223:226], v34 offset:4096
	ds_load_b128 v[238:241], v34
	ds_load_b128 v[242:245], v41 offset:4096
	ds_load_b128 v[72:75], v41
	ds_load_b128 v[233:236], v33
	ds_load_b128 v[186:189], v33 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[37:40], v[17:20], v[178:185] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[199:206], v[59:62], v[17:20], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[59:62], v[13:16], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[37:40], v[13:16], v[178:185] neg_lo:[1,1,0]
	scratch_load_b128 v[37:40], off, off offset:228 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[223:226], v[21:24], v[207:214] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[238:241], v[9:12], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[223:226], v[9:12], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[238:241], v[21:24], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[242:245], v[25:28], v[207:214] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[199:206], v[72:75], v[25:28], v[199:206] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[186:189], v[29:32], v[207:214] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[199:206], v[233:236], v[29:32], v[199:206] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v159, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v224, v209
	v_cvt_f32_i32_e32 v223, v210
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v33, v201
	v_cvt_f32_i32_e32 v34, v202
	v_cvt_f32_i32_e32 v226, v205
	v_cvt_f32_i32_e32 v202, v211
	v_cvt_f32_i32_e32 v69, v199
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[72:75], v[37:40], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[242:245], v[37:40], v[178:185] neg_lo:[1,1,0]
	scratch_load_b128 v[37:40], off, off offset:244 ; 16-byte Folded Reload
	v_cvt_f32_i32_e32 v243, v206
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[233:236], v[37:40], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[186:189], v[37:40], v[178:185] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v236, v203
	v_cvt_f32_i32_e32 v235, v204
	v_cvt_f32_i32_e32 v189, v207
	v_cvt_f32_i32_e32 v203, v212
	v_cvt_f32_i32_e32 v186, v213
	v_cvt_f32_i32_e32 v187, v214
	v_cvt_f32_i32_e32 v38, v215
	v_cvt_f32_i32_e32 v39, v216
	v_cvt_f32_i32_e32 v40, v217
	v_cvt_f32_i32_e32 v41, v218
	v_cvt_f32_i32_e32 v216, v219
	v_cvt_f32_i32_e32 v217, v220
	v_cvt_f32_i32_e32 v242, v221
	v_cvt_f32_i32_e32 v215, v222
	v_cvt_f32_i32_e32 v160, v178
	v_cvt_f32_i32_e32 v178, v179
	v_cvt_f32_i32_e32 v211, v180
	v_cvt_f32_i32_e32 v180, v181
	v_cvt_f32_i32_e32 v205, v182
	v_cvt_f32_i32_e32 v208, v183
	v_cvt_f32_i32_e32 v201, v184
	v_cvt_f32_i32_e32 v188, v185
	v_cvt_f32_i32_e32 v37, v200
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v183, 0
	v_mov_b32_e32 v210, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v63, v188 :: v_dual_add_nc_u32 v48, s44, v48
	v_dual_mov_b32 v56, v187 :: v_dual_add_nc_u32 v47, s44, v47
	v_mov_b32_e32 v53, v45
	v_dual_mov_b32 v45, v235 :: v_dual_add_nc_u32 v44, s44, v44
	v_dual_mov_b32 v248, v208 :: v_dual_add_nc_u32 v43, s44, v43
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	ds_load_b128 v[59:62], v48 offset:4096
	ds_load_b128 v[181:184], v48
	v_mov_b32_e32 v48, v186
	ds_load_b128 v[185:188], v47 offset:4096
	v_mov_b32_e32 v51, v236
	ds_load_b128 v[233:236], v47
	ds_load_b128 v[244:247], v44 offset:4096
	ds_load_b128 v[72:75], v44
	ds_load_b128 v[207:210], v43 offset:4096
	v_dual_mov_b32 v44, v229 :: v_dual_mov_b32 v47, v230
	ds_load_b128 v[227:230], v43
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v239, v194 :: v_dual_mov_b32 v194, v189
	v_dual_mov_b32 v189, v178 :: v_dual_mov_b32 v178, v180
	v_mov_b32_e32 v180, v211
	v_mov_b16_e32 v4.l, v71.l
	v_mov_b32_e32 v71, v50
	v_mov_b16_e32 v50.l, v65.l
	v_dual_mov_b32 v65, v42 :: v_dual_mov_b32 v42, v41
	v_dual_mov_b32 v41, v40 :: v_dual_mov_b32 v40, v39
	v_dual_mov_b32 v39, v38 :: v_dual_mov_b32 v38, v37
	v_mov_b32_e32 v37, v69
	v_mov_b32_e32 v69, v67
	v_dual_mov_b32 v67, v36 :: v_dual_mov_b32 v36, v35
	v_dual_mov_b32 v35, v34 :: v_dual_mov_b32 v34, v33
	v_dual_mov_b32 v33, v58 :: v_dual_mov_b32 v58, v57
	v_dual_mov_b32 v57, v54 :: v_dual_mov_b32 v54, v255
	v_mov_b16_e64 v255.l, v253.l
	v_mov_b32_e32 v253, v251
	v_mov_b32_e32 v251, v249
	v_dual_mov_b32 v249, v215 :: v_dual_mov_b32 v64, v202
	v_dual_mov_b32 v1, v216 :: v_dual_mov_b32 v238, v203
	v_mov_b16_e32 v2.l, v68.l
	v_mov_b32_e32 v68, v217
	v_dual_mov_b32 v218, s19 :: v_dual_mov_b32 v217, s18
	v_dual_mov_b32 v216, s17 :: v_dual_mov_b32 v215, s16
	v_dual_mov_b32 v214, s15 :: v_dual_mov_b32 v213, s14
	v_dual_mov_b32 v212, s13 :: v_dual_mov_b32 v211, s12
	v_mov_b32_e32 v43, v201
	v_mov_b32_e32 v241, v205
	v_mov_b32_e32 v179, v223
	v_mov_b16_e64 v240.l, v232.l
	v_mov_b32_e32 v232, v191
	v_mov_b32_e32 v191, v159
	v_dual_mov_b32 v159, v160 :: v_dual_mov_b32 v160, v126
	v_mov_b16_e64 v126.l, v175.l
	v_mov_b32_e32 v175, v237
	v_dual_mov_b32 v237, v192 :: v_dual_mov_b32 v192, v125
	v_mov_b16_e64 v125.l, v176.l
	v_mov_b32_e32 v176, v231
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[199:206], v[227:230], v[17:20], v[211:218] neg_lo:[1,1,0]
	v_mov_b32_e32 v231, v76
	v_mov_b32_e32 v76, v224
	v_mov_b16_e32 v3.l, v70.l
	v_mov_b16_e64 v70.l, v250.l
	v_mov_b32_e32 v250, v226
	v_wmma_i32_16x16x16_iu8 v[219:226], v[207:210], v[17:20], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[72:75], v[21:24], v[199:206] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[244:247], v[21:24], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[227:230], v[13:16], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[233:236], v[25:28], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[207:210], v[13:16], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[185:188], v[25:28], v[219:226] neg_lo:[1,1,0]
	scratch_load_b128 v[25:28], off, off offset:228 ; 16-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[17:24], v[72:75], v[9:12], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[181:184], v[29:32], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[244:247], v[9:12], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[59:62], v[29:32], v[219:226] neg_lo:[1,1,0]
	scratch_load_b128 v[29:32], off, off offset:244 ; 16-byte Folded Reload
	v_dual_mov_b32 v230, v47 :: v_dual_mov_b32 v229, v44
	v_mov_b32_e32 v208, v248
	v_cvt_f32_i32_e32 v246, v203
	v_mov_b32_e32 v203, v238
	v_cvt_f32_i32_e32 v247, v204
	v_cvt_f32_i32_e32 v238, v205
	v_mov_b32_e32 v205, v241
	v_cvt_f32_i32_e32 v241, v206
	v_cvt_f32_i32_e32 v227, v219
	v_cvt_f32_i32_e32 v228, v220
	v_cvt_f32_i32_e32 v207, v221
	v_cvt_f32_i32_e32 v209, v222
	v_cvt_f32_i32_e32 v204, v225
	v_cvt_f32_i32_e32 v206, v226
	v_mov_b32_e32 v226, v250
	v_mov_b16_e64 v250.l, v70.l
	v_mov_b16_e32 v70.l, v3.l
	s_waitcnt vmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[233:236], v[25:28], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[185:188], v[25:28], v[211:218] neg_lo:[1,1,0]
	v_dual_mov_b32 v236, v51 :: v_dual_mov_b32 v235, v45
	v_mov_b32_e32 v45, v53
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[181:184], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[59:62], v[29:32], v[211:218] neg_lo:[1,1,0]
	v_dual_mov_b32 v188, v63 :: v_dual_mov_b32 v187, v56
	v_mov_b32_e32 v186, v48
	v_cvt_f32_i32_e32 v56, v199
	v_cvt_f32_i32_e32 v184, v200
	v_cvt_f32_i32_e32 v185, v201
	v_mov_b32_e32 v201, v43
	v_cvt_f32_i32_e32 v59, v202
	v_mov_b32_e32 v202, v64
	v_cvt_f32_i32_e32 v199, v223
	v_mov_b32_e32 v223, v179
	v_cvt_f32_i32_e32 v182, v224
	v_mov_b32_e32 v224, v76
	v_dual_mov_b32 v76, v231 :: v_dual_mov_b32 v231, v176
	v_mov_b16_e64 v176.l, v125.l
	v_dual_mov_b32 v125, v192 :: v_dual_mov_b32 v192, v237
	v_mov_b32_e32 v237, v175
	v_mov_b16_e64 v175.l, v126.l
	v_mov_b32_e32 v126, v160
	v_mov_b32_e32 v160, v159
	v_mov_b32_e32 v159, v191
	v_mov_b32_e32 v191, v232
	v_mov_b16_e64 v232.l, v240.l
	v_cvt_f32_i32_e32 v64, v17
	v_cvt_f32_i32_e32 v61, v18
	v_cvt_f32_i32_e32 v62, v19
	v_cvt_f32_i32_e32 v63, v20
	v_cvt_f32_i32_e32 v248, v21
	v_cvt_f32_i32_e32 v60, v22
	v_cvt_f32_i32_e32 v244, v23
	v_cvt_f32_i32_e32 v245, v24
	v_cvt_f32_i32_e32 v233, v211
	v_dual_mov_b32 v211, v180 :: v_dual_mov_b32 v180, v178
	v_dual_mov_b32 v178, v189 :: v_dual_mov_b32 v189, v194
	v_mov_b32_e32 v194, v239
	v_cvt_f32_i32_e32 v234, v212
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v214, v214
	v_cvt_f32_i32_e32 v200, v215
	v_mov_b32_e32 v215, v249
	v_mov_b32_e32 v249, v251
	v_mov_b32_e32 v251, v253
	v_mov_b16_e64 v253.l, v255.l
	v_dual_mov_b32 v255, v54 :: v_dual_mov_b32 v54, v57
	v_dual_mov_b32 v57, v58 :: v_dual_mov_b32 v58, v33
	v_dual_mov_b32 v33, v34 :: v_dual_mov_b32 v34, v35
	v_dual_mov_b32 v35, v36 :: v_dual_mov_b32 v36, v67
	v_mov_b32_e32 v67, v69
	v_mov_b32_e32 v69, v37
	v_dual_mov_b32 v37, v38 :: v_dual_mov_b32 v38, v39
	v_dual_mov_b32 v39, v40 :: v_dual_mov_b32 v40, v41
	v_dual_mov_b32 v41, v42 :: v_dual_mov_b32 v42, v65
	v_mov_b16_e32 v65.l, v50.l
	v_mov_b32_e32 v50, v71
	v_mov_b16_e32 v71.l, v4.l
	v_cvt_f32_i32_e32 v181, v216
	v_mov_b32_e32 v216, v1
	v_cvt_f32_i32_e32 v210, v217
	v_mov_b32_e32 v217, v68
	v_mov_b16_e32 v68.l, v2.l
	v_cvt_f32_i32_e32 v183, v218
.LBB0_16:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:224
	scratch_load_b32 v8, off, off offset:220
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v1.h, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v4.h, v5.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v11.h, v55.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v3.h, v6.l
	v_mov_b16_e32 v4.l, v1.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v11.l, v1.l
	v_mov_b16_e64 v12.h, v198.l
	v_mov_b16_e32 v12.l, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v1, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v1, v11
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v20.h, v66.l
	v_mov_b16_e32 v20.l, v1.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v2, v1, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v42, v197
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v22.h, v70.l
	v_mov_b16_e32 v22.l, v1.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s35, 31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v2, v2, v50, v196
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s35, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s12, s0, 6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v15, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s0, s3, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v6, v6, v7, v195
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v195, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v7, v8, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v197, v5, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v5, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v196, v2, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v2.h, v49.l
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v193, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v2, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v3, v5, v163
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v2, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v4, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v3, v67, v177
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v2, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v177, v21, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v3, v4, v173
	scratch_load_b32 v4, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v2, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v173, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v12, v3, v4, v174
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v3.h, v68.l
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v174, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v4, v1, v3
	v_mul_f32_e32 v3, v2, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v13, v4, v36, v171
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v4.h, v71.l
	v_mov_b16_e32 v4.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v3, v46, v167
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v1, v4
	v_mul_f32_e32 v3, v2, v4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v161, s12, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v167, v18, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v11, v35, v172
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v11.h, v190.l
	v_mov_b16_e32 v11.l, v1.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v3, v54, v168
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v172, v16, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v1, v11
	v_mul_f32_e32 v3, v2, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v14, v15, v169
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v14.h, v52.l
	v_mov_b16_e32 v14.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v3, v45, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v169, v17, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v2, v14
	v_mul_f32_e32 v15, v1, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v165, v26, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v3, v124, v166
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v1, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v15, v255, v170
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v2, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v14, v3, v58, v123
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v1, v22
	v_mul_f32_e32 v22, v2, v22
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v249, v121
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v28, v3, v57, v164
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v162, s12, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s12, s12, s34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v171, v13, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v11, v158, s12, 1
	v_add_lshl_u32 v15, v157, s12, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	s_clause 0x1
	buffer_load_u16 v29, v3, s[8:11], 0 offen
	buffer_load_u16 v30, v4, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v4, v155, s12, 1
	v_cndmask_b32_e64 v3, 0x80000000, v11, s0
	v_add_lshl_u32 v11, v156, s12, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s10, s12, s22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v23, s10, v153, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	s_clause 0x3
	buffer_load_u16 v32, v3, s[24:27], 0 offen
	buffer_load_u16 v42, v4, s[24:27], 0 offen
	buffer_load_u16 v44, v11, s[24:27], 0 offen
	buffer_load_u16 v46, v15, s[24:27], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v3, s10, v154, 1
	v_add_lshl_u32 v4, s10, v150, 1
	v_add_lshl_u32 v11, s10, v151, 1
	v_add_lshl_u32 v15, s10, v152, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	s_clause 0x4
	buffer_load_u16 v47, v3, s[24:27], 0 offen
	buffer_load_u16 v48, v4, s[24:27], 0 offen
	buffer_load_u16 v49, v11, s[24:27], 0 offen
	buffer_load_u16 v50, v15, s[24:27], 0 offen
	buffer_load_u16 v51, v23, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v23, v143, s12, 1
	v_add_lshl_u32 v24, v144, s12, 1
	v_add_lshl_u32 v31, v145, s12, 1
	v_add_lshl_u32 v35, v146, s12, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v36, s10, v147, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v43, s10, v148, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v45, s10, v149, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	v_cndmask_b32_e64 v52, 0x80000000, v35, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v53, 0x80000000, v36, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x3
	buffer_load_u16 v36, v23, s[24:27], 0 offen
	buffer_load_u16 v35, v24, s[24:27], 0 offen
	buffer_load_u16 v24, v31, s[24:27], 0 offen
	buffer_load_u16 v23, v52, s[24:27], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v163, v5, s2
	v_cndmask_b32_e64 v13, v170, v19, s2
	v_cndmask_b32_e64 v19, v168, v25, s2
	v_cndmask_b32_e64 v25, v166, v27, s2
	v_cndmask_b32_e64 v27, v164, v28, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v54, 0x80000000, v43, s0
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	s_clause 0x2
	buffer_load_u16 v43, v53, s[24:27], 0 offen
	buffer_load_u16 v31, v54, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v4, s23, v125
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.h, v1.l
	v_mov_b16_e64 v153.h, v1.l
	v_mov_b16_e32 v11.h, v1.l
	v_mov_b16_e64 v143.h, v1.l
	v_mov_b16_e64 v145.h, v1.l
	v_mov_b16_e64 v147.h, v1.l
	v_mov_b16_e64 v149.h, v1.l
	.loc	1 426 31 is_stmt 1              ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v124, s10, v139, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s11, s33, s23
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v151.h, v1.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s11, s11, s22
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v251, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v121, v20, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v22, v122, v22, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v5, 16, v29
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v6, 16, v30
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v28, 16, v32
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v30, 16, v44
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v32, 16, v46
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v15, 56, v3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_load_b32 v3, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v44, 16, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v29, 16, v42
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v46, 16, v48
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v47, 16, v49
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v48, 16, v50
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v42, 16, v51
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v50, v6, v28
	v_mul_f32_e32 v28, v5, v28
	v_mul_f32_e32 v51, v6, v32
	v_mul_f32_e32 v53, v6, v30
	v_mul_f32_e32 v30, v5, v30
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v54, v6, v46
	v_mul_f32_e32 v58, v6, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v49, v6, v29 :: v_dual_mul_f32 v46, v5, v46
	v_dual_mul_f32 v29, v5, v29 :: v_dual_mul_f32 v66, v6, v47
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v44, v5, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v50, v38, v10
	v_fma_f32 v28, v28, v69, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v29, v29, v37, v12
	v_fma_f32 v40, v53, v40, v17
	v_fma_f32 v37, v51, v41, v13
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v41, v54, v61, v7
	v_fma_f32 v50, v46, v184, v21
	v_fma_f32 v53, v66, v62, v57
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v6, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v33, v26
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v33, v58, v64, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v10, v38, s3
	v_cndmask_b32_e64 v38, v55, v28, s3
	v_cndmask_b32_e64 v55, v7, v41, s3
	v_cndmask_b32_e64 v50, v21, v50, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v6, v48
	v_mul_f32_e32 v48, v5, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v57, v53, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v5, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v49, v39, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v51, v44, v56, v52
	v_fma_f32 v58, v48, v59, v19
	v_fma_f32 v59, v67, v60, v27
	v_fma_f32 v56, v47, v185, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v8, v33, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v55
	v_mul_f32_e32 v10, 0xbfb8aa3b, v50
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v54, v65, v63, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v9, v39, s3
	v_cndmask_b32_e64 v39, v18, v56, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v16, v54, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v10
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v5, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v52, v51, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v39
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	v_cndmask_b32_e64 v10, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v34, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v17, v40, s3
	v_cndmask_b32_e64 v40, v19, v58, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v9, 0xbfb8aa3b, v48 :: v_dual_fmac_f32 v8, 0xbfb8aa3b, v55
	v_dual_mul_f32 v17, 0xbfb8aa3b, v47 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	v_cndmask_b32_e64 v16, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v18
	v_mul_f32_e32 v19, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v9
	v_exp_f32_e32 v8, v8
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v18, 0, 0x42800000, s9
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v60
	v_exp_f32_e32 v10, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v12, v29, s3
	v_cndmask_b32_e64 v12, v26, v30, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v17
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v39
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v16, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v13, v37, s3
	v_cndmask_b32_e64 v13, v25, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v19
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s7
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v8, v8, v21
	v_ldexp_f32 v10, v10, v26
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v19, 0, 0x42800000, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v47 :: v_dual_add_f32 v52, 1.0, v8
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s9
	v_ldexp_f32 v7, v7, v25
	v_ldexp_f32 v16, v16, v29
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v54, 1.0, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v9
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v27, v59, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s5
	v_ldexp_f32 v18, v18, v32
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v40
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v51, 1.0, v7 :: v_dual_add_f32 v56, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v7, null, v52, v52, v55
	v_div_scale_f32 v16, null, v54, v54, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v9, v9, v27
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v58, 1.0, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v29, v7
	v_rcp_f32_e32 v62, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s8
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v9, null, v51, v51, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v8, vcc_lo, v55, v52, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v30, v9
	v_fma_f32 v68, -v7, v29, 1.0
	v_fma_f32 v70, -v16, v62, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v57, 1.0, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, s8, v50, v54, v50
	v_div_scale_f32 v26, null, v56, v56, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v62, v70, v62 :: v_dual_fmac_f32 v29, v68, v29
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v59, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v9, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v65, v26
	v_div_scale_f32 v21, null, v57, v57, v47
	v_mul_f32_e32 v70, v8, v29
	v_div_scale_f32 v28, null, v59, v59, v40
	v_fmac_f32_e32 v30, v69, v30
	v_div_scale_f32 v18, null, v53, v53, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v66, v28
	v_div_scale_f32 v61, null, v58, v58, v39
	v_rcp_f32_e32 v63, v18
	v_rcp_f32_e32 v64, v21
	v_fma_f32 v73, -v26, v65, 1.0
	v_div_scale_f32 v10, s9, v60, v51, v60
	v_rcp_f32_e32 v67, v61
	v_div_scale_f32 v25, s6, v47, v57, v47
	v_fma_f32 v68, -v28, v66, 1.0
	v_fmac_f32_e32 v65, v73, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v71, -v18, v63, 1.0
	v_fma_f32 v72, -v21, v64, 1.0
	v_div_scale_f32 v27, s4, v41, v56, v41
	v_fmac_f32_e32 v66, v68, v66
	v_fma_f32 v68, -v7, v70, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v63, v71, v63 :: v_dual_fmac_f32 v64, v72, v64
	v_mul_f32_e32 v71, v10, v30
	v_fma_f32 v69, -v61, v67, 1.0
	v_fmac_f32_e32 v70, v68, v29
	v_mul_f32_e32 v68, v17, v62
	v_div_scale_f32 v73, s5, v39, v58, v39
	v_fma_f32 v72, -v9, v71, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v7, v70, v8
	v_dual_fmac_f32 v67, v69, v67 :: v_dual_mul_f32 v74, v27, v65
	v_div_scale_f32 v19, s7, v48, v53, v48
	v_dual_fmac_f32 v71, v72, v30 :: v_dual_mul_f32 v72, v25, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v7, v29, v70
	v_fma_f32 v7, -v16, v68, v17
	v_mul_f32_e32 v125, v73, v67
	v_fma_f32 v8, -v9, v71, v10
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v32, s1, v40, v59, v40
	v_fmac_f32_e32 v68, v7, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v71, v8, v30, v71
	v_fma_f32 v8, -v21, v72, v25
	v_mul_f32_e32 v69, v19, v63
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v146, -v16, v68, v17
	v_fma_f32 v7, -v26, v74, v27
	v_fmac_f32_e32 v72, v8, v64
	v_fma_f32 v9, -v18, v69, v19
	v_mul_f32_e32 v75, v32, v66
	v_div_fmas_f32 v62, v146, v62, v68
	v_fmac_f32_e32 v74, v7, v65
	v_fma_f32 v150, -v21, v72, v25
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v8, -v61, v125, v73
	v_div_fixup_f32 v50, v62, v54, v50
	v_fmac_f32_e32 v69, v9, v63
	v_fma_f32 v9, -v28, v75, v32
	v_fma_f32 v152, -v26, v74, v27
	v_div_fixup_f32 v52, v70, v52, v55
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v44, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v148, -v18, v69, v19
	v_div_fixup_f32 v51, v71, v51, v60
	v_fmac_f32_e32 v75, v9, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v49, v49, v52
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v17, v130, s12, 1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v148, v63, v69
	s_mov_b32 vcc_lo, s6
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v46, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v60, v150, v64, v72
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v48, v55, v53, v48
	v_fmac_f32_e32 v125, v8, v67
	v_div_fmas_f32 v52, v152, v65, v74
	v_fma_f32 v130, -v28, v75, v32
	s_mov_b32 vcc_lo, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v38, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v61, v125, v73
	v_div_fixup_f32 v41, v52, v56, v41
	v_div_fmas_f32 v51, v130, v66, v75
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v47, v60, v57, v47
	v_div_fmas_f32 v50, v61, v67, v125
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v34, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.l, v49.h
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v51, v59, v40
	v_div_fixup_f32 v39, v50, v58, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v153.l, v34.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v37, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v73, 0xbfb8aa3b, v33 :: v_dual_mul_f32 v12, v12, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v44.h
	v_mov_b16_e64 v143.l, v38.h
	v_add3_u32 v39, v49, v47, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v49, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v13, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.l, v46.h
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v40, 1, v143
	v_mov_b16_e64 v149.l, v12.h
	v_mov_b16_e64 v147.l, v13.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v127, s12, 1
	v_add_lshl_u32 v10, v128, s12, 1
	v_add_lshl_u32 v16, v129, s12, 1
	v_add_lshl_u32 v18, v131, s12, 1
	v_add_lshl_u32 v19, v132, s12, 1
	v_add_lshl_u32 v21, v133, s12, 1
	v_add_lshl_u32 v25, v134, s12, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v26, s10, v135, 1
	v_add_lshl_u32 v27, s10, v136, 1
	v_add_lshl_u32 v29, s10, v137, 1
	v_add_lshl_u32 v30, s10, v138, 1
	v_add_lshl_u32 v127, s10, v140, 1
	v_add_lshl_u32 v128, s10, v141, 1
	v_add_lshl_u32 v129, s10, v142, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v44, v44
	v_and_b32_e32 v41, 1, v145
	v_add3_u32 v44, v44, v11, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v39.h, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v42, v5, v42 :: v_dual_and_b32 v39, 1, v147
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v149
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_or_b32_e32 v8, s11, v15
	v_add3_u32 v7, s11, v15, 64
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v15, 0x80000000, v16, s0
	v_cndmask_b32_e64 v16, 0x80000000, v17, s0
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	v_cndmask_b32_e64 v28, 0x80000000, v25, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e64 v32, 0x80000000, v26, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	v_cndmask_b32_e64 v131, 0x80000000, v29, s0
	v_cndmask_b32_e64 v132, 0x80000000, v30, s0
	v_cndmask_b32_e64 v133, 0x80000000, v124, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v46, v46
	v_add3_u32 v41, v46, v41, 0x7fff
	v_cmp_o_f32_e64 s5, v13, v13
	v_cmp_o_f32_e64 s6, v12, v12
	v_and_b32_e32 v48, 1, v153
	v_mov_b16_e64 v151.l, v37.h
	v_add3_u32 v13, v13, v39, 0x7fff
	v_add3_u32 v39, v12, v47, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v44.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v73
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v38, v38
	v_add3_u32 v38, v38, v40, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v41.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v39.h, s6
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v39, 16, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v46, 1, v151
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v42, v42, v247, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v38.h, s4
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v38, v37, v46, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v123, v14, s2
	v_cndmask_b32_e64 v22, v22, v42, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v43, v6, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.h, 0x7fff, v38.h, vcc_lo
	v_add3_u32 v40, v34, v48, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v22
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v43, v248, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v34, v34
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v34.l, v1.l
	v_mov_b16_e64 v34.h, v254.l
	v_mov_b16_e32 v43.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v38, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v46
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v43.h, v253.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v37
	v_ldexp_f32 v38, v41, v38
	v_cndmask_b32_e64 v46, 0, 0x42800000, s1
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.l, 0x7fff, v40.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_mul_f32 v39, v5, v39
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v44, v1, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v38, v38, v33
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v39, v246, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v37
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v40.l, v1.l
	v_mov_b16_e64 v40.h, v252.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v39, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v1, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v48, 0xbfb8aa3b, v20 :: v_dual_lshlrev_b32 v31, 16, v31
	v_ldexp_f32 v46, v46, v50
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v30, v9, s[24:27], 0 offen
	buffer_load_u16 v29, v10, s[24:27], 0 offen
	buffer_load_u16 v26, v15, s[24:27], 0 offen
	buffer_load_u16 v25, v16, s[24:27], 0 offen
	buffer_load_u16 v18, v17, s[24:27], 0 offen
	buffer_load_u16 v17, v19, s[24:27], 0 offen
	buffer_load_u16 v10, v21, s[24:27], 0 offen
	buffer_load_u16 v9, v28, s[24:27], 0 offen
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	buffer_load_u16 v124, v27, s[24:27], 0 offen
	buffer_load_u16 v27, v131, s[24:27], 0 offen
	buffer_load_u16 v28, v132, s[24:27], 0 offen
	buffer_load_u16 v19, v133, s[24:27], 0 offen
	buffer_load_u16 v21, v127, s[24:27], 0 offen
	buffer_load_u16 v15, v128, s[24:27], 0 offen
	buffer_load_u16 v16, v129, s[24:27], 0 offen
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v34, v2, v34 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_mul_f32 v43, v2, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v62, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v46, v46, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v53
	v_fma_f32 v60, -v53, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s4, v22, v46, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(17)
	v_fma_f32 v47, v47, v49, v119
	scratch_load_b32 v49, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v119, v47, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v34, v34, v62, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v117, v34, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v44, v44, v49, v120
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v120, v44, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v39, v49
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, vcc_lo, v33, v38, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v20 :: v_dual_add_f32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v49, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, null, v39, v39, v37
	v_rcp_f32_e32 v52, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v48, v48, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v50, v51, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v42, v50, v51
	v_fma_f32 v55, -v49, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v57, null, v48, v48, v20
	v_fmac_f32_e32 v50, v54, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v55, v52
	v_div_scale_f32 v54, s1, v37, v39, v37
	v_rcp_f32_e32 v55, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v50, v51
	v_div_fmas_f32 v41, v42, v41, v50
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v57, v55, 1.0
	v_div_fixup_f32 v33, v41, v38, v33
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v50, v55
	v_mul_f32_e32 v51, v54, v52
	v_div_scale_f32 v50, s5, v20, v48, v20
	v_fma_f32 v42, -v49, v51, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v61, v50, v55
	v_fmac_f32_e32 v51, v42, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v42, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v57, v61, v50
	v_fma_f32 v49, -v49, v51, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v61, v62, v55
	v_div_fmas_f32 v49, v49, v52, v51
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v50, -v57, v61, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v6, v24
	v_mul_f32_e32 v24, v5, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v43, v42, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v43, v60, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v118, v42, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v53, v43, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v54, v56
	v_fma_f32 v51, -v53, v43, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v51, v56, v43
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v50, v50, v55, v61
	v_div_fixup_f32 v22, v43, v46, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v59, v6, v36
	v_mul_f32_e32 v36, v5, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v50, v48, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v236, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v36, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v59, v216, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v34, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v47, v36, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v49, v39, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v58, v6, v35
	v_mul_f32_e32 v35, v5, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v47, off, off offset:156 ; 4-byte Folded Reload
	v_fma_f32 v35, v35, v235, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v42, v35, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v42.l, v1.l
	v_mov_b16_e64 v42.h, v250.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v35, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v22.h
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v37, 1, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v51, v58, v217, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v22, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v44, v51, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v35, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v33, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v35, 16, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.l, v34.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v20, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v22.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v1, v40
	v_mul_f32_e32 v40, v2, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v38, 1, v39
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v6, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v36.h
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v5, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v20, v33, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_mov_b16_e32 v37.h, v1.l
	v_and_b32_e32 v34, 1, v41
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v41, v1, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v116, v33, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.l, 0x7fff, v38.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v38, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v34, v36, v34, 0x7fff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v39, v245, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v22, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v22.l, 0x7fff, v34.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v39, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v37.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v38, v41, v38, v115
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v41, v6, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v115, v38, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v37, v41, v244, v38
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v41, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v38, v37, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v40, v194, v114
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v40, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v114, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v35, v35, v241, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v38, v35, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v41.l
	v_mov_b16_e32 v41.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v45, v1, v36
	v_mul_f32_e32 v36, v2, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v45, v47, v111
	scratch_load_b32 v47, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v41.h, v40.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v40, v2, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v111, v45, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v40, v40, v191, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v113, v40, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v43, v1, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s1
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v41, v2, v41 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v39, 1.0, v39 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v44, v48
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v31, v5, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v39, v39, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v238, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, null, v44, v44, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v40, v31, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v54, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v51, v54, 1.0
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v43, v47, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v112, v43, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v40, v47
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v38, v42, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, vcc_lo, v33, v39, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v31
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v47, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v40, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v48, v49, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v38, v48, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v47, v50, 1.0
	v_div_scale_f32 v55, null, v46, v46, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v52, v42
	v_fmac_f32_e32 v50, v53, v50
	v_div_scale_f32 v52, s1, v37, v40, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v55
	v_fma_f32 v38, -v38, v48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v38, v38, v42, v48
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v48, -v55, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v33, v38, v39, v33
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v53, v48, v53 :: v_dual_mul_f32 v56, v6, v23
	v_mul_f32_e32 v49, v52, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v5, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, s5, v31, v46, v31
	v_fmac_f32_e32 v54, v58, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v47, v49, v52
	v_div_scale_f32 v58, s4, v35, v44, v35
	v_mul_f32_e32 v59, v48, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v192, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v42, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v42, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v55, v59, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v109, v36, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v47, v49, v52
	v_fmac_f32_e32 v59, v60, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v226, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v47, v50, v49
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v55, v59, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v36, v24, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v57, v242, v45
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, v41, v42, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v42, v58, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v110, v41, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v51, v42, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v243, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v41, v23, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v41, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v52, v54
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v41.h, v232.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v51, v42, v58
	v_div_fmas_f32 v42, v49, v54, v42
	s_mov_b32 vcc_lo, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v56, v215, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v48, v53, v59
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v6, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v42, v44, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v5, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v43, v49, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v48, v46, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v46, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v35
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v47, v40, v37
	.loc	1 426 31 is_stmt 1              ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v40.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v59, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v40.h, v41.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v24, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v45, v36, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v36.l, v23.h
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v41.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v31, v31, v35 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v1, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v37.l, v24.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v31.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v34, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v35, v126, v108
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v35, 16, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v36, v23, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v108, v34, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v38, v6, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v24, v37, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v36.h, vcc_lo
	v_mov_b16_e32 v36.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v38, v234, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v39
	v_mov_b16_e32 v36.l, v33.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v1, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v37.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v38, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v31, v24, 0x7fff
	v_and_b32_e32 v36, 1, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v24, v39, v237, v107
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v34
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v31.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v33, v36, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v107, v24, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.l, 0x7fff, v37.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.h, v1.l
	v_cndmask_b16 v24.h, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v39, v6, v32 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v36, v39, v233, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v36, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v2, v40
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v40, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v36, v39, v231, v106
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v39, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v106, v36, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v31.h, v40.l
	v_mov_b16_e32 v40.l, v1.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v40.h, v39.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v2, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v39, v76, v105
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v38, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v5, v32
	v_mul_f32_e32 v35, v5, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v105, v39, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v35, v35, v228, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, v32, v227, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v36, v35, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v32, v39, v32, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v44, v1, v31
	v_mul_f32_e32 v42, v1, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v38, v38, v34
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v44, v46, v103
	scratch_load_b32 v46, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v35
	v_exp_f32_e32 v39, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v36
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v2, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v103, v44, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v43, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v43, v43, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v57, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, s4, v35, v43, v35
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v46, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v104, v42, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v39, v46
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v36, v41, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, vcc_lo, v34, v38, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v32
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v46, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v39, v39, v33
	v_rcp_f32_e32 v49, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v45, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v47, v48, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v36, v47, v48
	v_fma_f32 v52, -v46, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v54, null, v45, v45, v32
	v_fmac_f32_e32 v47, v51, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v51, s1, v33, v39, v33
	v_rcp_f32_e32 v52, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v36, v47, v48
	v_mul_f32_e32 v48, v51, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v41, v47
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v46, v48, v51
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v2, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v54, v52, 1.0
	v_div_fixup_f32 v34, v36, v38, v34
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v38.l, v1.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v41, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v41, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v52, v47, v52
	v_div_scale_f32 v47, s5, v32, v45, v32
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v46, v48, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v31, v59, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v58, v47, v52
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v38.h, v176.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v55, v6, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v46, v49, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v101, v31, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v54, v58, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v5, v29
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v49, 16, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v189, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v58, v59, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v31, v30, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v54, v58, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v40, v41, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v41, v57, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v102, v40, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v50, v41, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v29, v159, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v51, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v40, v29, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v50, v41, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:100
	scratch_load_b32 v57, off, off offset:84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v48, v53, v41
	s_mov_b32 vcc_lo, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v55, v178, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v47, v52, v58
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v52, 16, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v41, v43, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v43.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v47, v45, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v56, v160, v44
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v30, v31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v44, v32, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v46, v39, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v39.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v30.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v29, v35
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e64 v39.h, v175.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v42, v48, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v31, v31, v32 :: v_dual_and_b32 v36, 1, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.l, v29.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v1, v39
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v35, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v35, v30, v36, 0x7fff
	v_and_b32_e32 v33, 1, v33
	v_mov_b16_e32 v37.l, v31.h
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v42.l, v1.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v29, v33, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v29, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v32, v29, v100
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v32, 16, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v100, v29, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v36, v6, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v37
	v_cndmask_b16 v28.l, 0x7fff, v35.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v35, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v33, 1, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v36, v36, v214, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_add3_u32 v30, v31, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	v_add3_u32 v33, v34, v33, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v36, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v37, v1, v38
	v_mul_f32_e32 v32, v5, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v37, v35, v99
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v37, 16, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v27.h, 0x7fff, v33.h, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v2, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v39, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v99, v35, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v36, v6, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v36, v213, v34
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v36, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v34, v31, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v34, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v29
	v_exp_f32_e32 v35, v35
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v42.h, v36.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v34, v98
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v34, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v35, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v98, v33, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, v34.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v2, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v34, v39, v97
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v32, v209, v33
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v1, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v97, v34, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v38, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v1, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v32, v32, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v37, v5, v37 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v38, v40, v95
	scratch_load_b32 v40, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v44
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v35, v37, v207, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v33
	v_exp_f32_e32 v36, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v2, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v35, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v42, v42, v57, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v44, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v93, v42, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v45, v46, v45
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v33
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v39, v39, v40, v96
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v96, v39, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v36, v40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v40, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v95, v38, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v38, v40, v38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, vcc_lo, v29, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v50, v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v51, null, v38, v38, v33
	v_fma_f32 v25, -v44, v50, v47
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v53, v51
	v_fmac_f32_e32 v50, v25, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v46, null, v37, v37, v31
	v_div_scale_f32 v55, s4, v31, v37, v31
	v_fma_f32 v25, -v44, v50, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v48, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v39, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v51, v53, 1.0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v6, v52
	v_mul_f32_e32 v52, v5, v52
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_fmac_f32 v53, v47, v53
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, s5, v33, v38, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v46, v48, 1.0
	v_div_scale_f32 v54, null, v26, v26, v34
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v180, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v39, v48
	v_rcp_f32_e32 v41, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v55, v48
	v_div_fmas_f32 v25, v25, v45, v50
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v45, -v46, v44, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v54, v41, 1.0
	v_div_fixup_f32 v25, v25, v32, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v44, v45, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v45, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s1, v34, v26, v34
	v_fma_f32 v46, -v46, v44, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v6, v49
	v_mul_f32_e32 v49, v5, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v50, v41
	v_div_fmas_f32 v44, v46, v48, v44
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v49, v224, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v54, v56, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v43, v2, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v44, v37, v31
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v37.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v57, v41
	v_fma_f32 v49, -v54, v56, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v43, v45, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v45, v47, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v94, v43, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v51, v45, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v52, v223, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v45, v55, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v48, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v51, v45, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v45, v47, v53, v45
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v41, v49, v41, v56
	v_div_fixup_f32 v33, v45, v38, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v42, v46, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v41, v26, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v39, v211, v36
	scratch_load_b32 v41, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v38, v26
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v38, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v36, v34, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v43, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v35, v40, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.h, v1.l
	v_mov_b16_e32 v36.l, v26.h
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v34, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v31, 1, v36
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v35, 1, v35
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v33, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.h, v1.l
	v_cmp_o_f32_e64 s0, v29, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, v30, v35, 0x7fff
	v_add3_u32 v30, v26, v31, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v31, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.l, v25.h
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v35.h, v1.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v37.h, v38.l
	scratch_load_b32 v38, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v1, v37
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v31, v32, v31, v92
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v32, 16, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.h, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v33, 1, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v92, v31, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v26, 1, v35
	v_cndmask_b16 v21.l, 0x7fff, v30.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v30, v25, v33, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v25, 16, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v29, v26, 0x7fff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v19.h, 0x7fff, v30.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v19.l, 0x7fff, v26.h, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v38.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v38, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v1, v36
	v_mul_f32_e32 v34, v6, v32
	v_mul_f32_e32 v32, v5, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v34, v181, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v34, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v33, v35, v33, v91
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v35, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v91, v33, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v34, v6, v25 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v30, v34, v200, v29
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v2, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v30, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v30, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v26.h, v35.l
	v_mov_b16_e32 v35.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v1, v26
	v_mul_f32_e32 v26, v2, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v39, v41, v87
	scratch_load_b32 v41, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v87, v39, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v34, v30, v90
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v34, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v90, v30, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v182, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v29
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v34.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v2, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v34, v38, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_ldexp_f32 v33, v33, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v89, v34, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v1, v35
	v_mul_f32_e32 v35, v2, v35
	v_mul_f32_e32 v51, v6, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v5, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v37, v41, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v30
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v199, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v5, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v88, v37, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v34, v25, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v40, 0xbfb8aa3b, v25
	v_ldexp_f32 v38, v38, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_ldexp_f32 v34, v34, v41
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, null, v33, v33, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, vcc_lo, v31, v33, v31
	v_rcp_f32_e32 v36, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v32, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v40, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, null, v34, v34, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v42, v43, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v49, null, v40, v40, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v44, 1.0
	v_fmac_f32_e32 v44, v47, v44
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v50, v6, v17
	v_mul_f32_e32 v17, v5, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v32, v42, v43
	v_rcp_f32_e32 v47, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v46, v36
	v_div_scale_f32 v46, s0, v29, v34, v29
	v_fma_f32 v32, -v32, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v32, v32, v36, v42
	v_fma_f32 v42, -v49, v47, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v32, v33, v31
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v42, s4, v25, v40, v25
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:60
	scratch_load_b32 v54, off, off offset:16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v53, v42, v47 :: v_dual_add_f32 v38, 1.0, v38
	v_mul_f32_e32 v43, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v45, null, v38, v38, v30
	v_fma_f32 v36, -v41, v43, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_fmac_f32_e32 v43, v36, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v36, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v41, v43, v46
	v_fma_f32 v52, -v45, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v44, v43
	v_div_fixup_f32 v29, v41, v34, v29
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v34.l, v1.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v41, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v26, v26, v54, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v49, v53, v42
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s1, v30, v38, v30
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v54, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v85, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v49, v53, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v18, v202, v26
	s_waitcnt vmcnt(1)
	v_fma_f32 v35, v35, v36, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v36, v52, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v26, v18, s3
	v_cndmask_b32_e64 v35, v86, v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v45, v36, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v17, v203, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v46, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v35, v17, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v45, v36, v52
	v_div_fmas_f32 v36, v43, v48, v36
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v35, v42, v47, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v36, v38, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v50, v208, v37
	v_fma_f32 v38, v51, v205, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v35, v40, v25
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	scratch_load_b32 v35, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v37, v36, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v25.h, v1.l
	v_mov_b16_e32 v25.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v26, v31
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v31, v6, v16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	scratch_load_b32 v37, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v39, v38, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v35.h, v1.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:8
	scratch_load_b32 v40, off, off offset:4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v17, v25, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v17, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v30, v29
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v3, s23, v3
	s_mov_b32 s23, 0x31027000
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	.loc	1 426 31 is_stmt 1              ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v34.h, v35.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.l, v18.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v1, v34
	v_mul_f32_e32 v34, v2, v34
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v36.h, v37.l
	scratch_load_b32 v37, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v17, v32, v17, v84
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e32 v32.h, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v84, v17, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v183, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v31, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v31, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v35
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v1, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v2, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v18, v30, 0x7fff
	v_mov_b16_e32 v18.l, v29.h
	v_mov_b16_e32 v18.h, v1.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v39, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.l, 0x7fff, v30.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v81, v32, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v35, v31, v83
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v35, v6, v15 :: v_dual_mul_f32 v16, v5, v16
	v_mul_f32_e32 v15, v5, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v29, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v83, v31, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v15, v15, v204, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, v35, v210, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v32, v15, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v31, v31, v35, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v35, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v35, v82
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v35, v1, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.l, v26.h
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v2, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v82, v34, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v35, v35, v40, v80
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v33, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v206, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v80, v35, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v26, v30, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v34, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v26.h, v37.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v39, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v2, v2, v26 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v229, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v38, v1, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v36, v230, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v77, v2, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.h, 0x7fff, v30.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v38, v41, v79
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v33, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v78, v26, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v79, v38, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v33, v33, v17
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v32, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v39, v39, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, vcc_lo, v17, v33, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v32, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v39, v39, v16
	v_fma_f32 v41, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, v41, v37
	v_fma_f32 v51, -v45, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v51, v49 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v6, v10
	v_mul_f32_e32 v6, v6, v9
	v_mul_f32_e32 v9, v5, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v32, v32, v31
	v_div_scale_f32 v51, s4, v16, v39, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v6, v188, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v187, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v5, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v35, v6, s3
	v_cndmask_b32_e64 v9, v26, v9, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v186, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v5, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v44, v48, v44
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v42, v43, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v34, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v50, null, v40, v40, v15
	v_fmac_f32_e32 v42, v47, v37
	v_div_scale_f32 v47, s1, v31, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v50
	v_fma_f32 v34, -v34, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v43, v47, v44
	v_div_fmas_f32 v34, v34, v37, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v41, v43, v47
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v50, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v37, v44
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s5, v15, v40, v15
	v_mul_f32_e32 v36, v51, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v41, v43, v47
	v_mul_f32_e32 v37, v42, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v45, v36, v51
	v_div_fmas_f32 v10, v41, v44, v43
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v50, v37, v42
	v_fmac_f32_e32 v36, v47, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v10, v32, v31
	v_fmac_f32_e32 v37, v52, v48
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v46, v201, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v45, v36, v51
	v_fma_f32 v42, -v50, v37, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v41, v49, v36
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v37, v42, v48, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v36, v39, v16
	v_div_fixup_f32 v5, v37, v40, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v38, v46, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.h, v1.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v34, v33, v17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.h, v1.l
	v_mov_b16_e32 v16.l, v9.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v15, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.l, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v17.l, v2.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_and_b32 v6, 1, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v17
	v_mov_b16_e32 v17.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v9, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v9, v5, v17, 0x7fff
	v_mov_b32_e32 v17, 0x7632
	v_add3_u32 v15, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v2, v2
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v5.l, 0x7fff, v15.h, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v16, 1, v16
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v6, v12, v20, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v2, v10, v16, 0x7fff
	v_cndmask_b32_e32 v16, v5, v21, vcc_lo
	v_cndmask_b32_e32 v5, v21, v5, vcc_lo
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b32_e32 v9, v13, v23, vcc_lo
	v_cndmask_b32_e32 v17, 0x3276, v17, vcc_lo
	v_dual_cndmask_b32 v10, v28, v25 :: v_dual_cndmask_b32 v15, v25, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e32 v2, v20, v12, vcc_lo
	v_dual_cndmask_b32 v12, v23, v13 :: v_dual_mov_b32 v13, 0x5410
	v_lshl_or_b32 v17, v17, 8, v17
	v_dual_cndmask_b32 v18, v22, v11 :: v_dual_cndmask_b32 v11, v11, v22
	v_cndmask_b32_e32 v20, v24, v14, vcc_lo
	v_cndmask_b32_e32 v14, v14, v24, vcc_lo
	v_dual_cndmask_b32 v22, v1, v27 :: v_dual_cndmask_b32 v1, v27, v1
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v13, 0x1054, v13, vcc_lo
	v_dual_cndmask_b32 v24, v0, v19 :: v_dual_and_b32 v17, 0x760076, v17
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v19, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v13, v13, 8, v13
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v13, 0x540054, v13
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v13, 4, v13
	v_lshl_or_b32 v13, v17, 4, v17
	v_permlanex16_b32 v17, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 0x5040504, v9
	v_and_b32_e32 v25, 0x7060706, v13
	v_permlanex16_b32 v26, v14, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v9, v6, v2, v23
	v_perm_b32 v10, v6, v2, v25
	v_perm_b32 v11, v19, v12, v23
	v_perm_b32 v12, v19, v12, v25
	v_perm_b32 v13, v17, v15, v23
	v_perm_b32 v14, v17, v15, v25
	v_perm_b32 v15, v5, v16, v23
	v_perm_b32 v17, v21, v18, v23
	v_perm_b32 v18, v21, v18, v25
	v_perm_b32 v19, v26, v20, v23
	v_perm_b32 v21, v1, v22, v23
	v_perm_b32 v23, v0, v24, v23
	v_perm_b32 v24, v0, v24, v25
	v_add_lshl_u32 v0, v8, v4, 1
	v_perm_b32 v16, v5, v16, v25
	v_perm_b32 v22, v1, v22, v25
	v_add_lshl_u32 v1, v7, v4, 1
	v_perm_b32 v20, v26, v20, v25
	v_add_lshl_u32 v2, v8, v3, 1
	v_add_lshl_u32 v3, v7, v3, 1
	s_clause 0x3
	buffer_store_b128 v[9:12], v0, s[20:23], 0 offen
	buffer_store_b128 v[13:16], v1, s[20:23], 0 offen
	buffer_store_b128 v[17:20], v2, s[20:23], 0 offen
	buffer_store_b128 v[21:24], v3, s[20:23], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 264
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
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 264
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26472
; TotalNumSgprs: 54
; NumVgprs: 256
; ScratchSize: 264
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 54
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 264
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 65
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
