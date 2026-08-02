	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	v_and_b32_e32 v11, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s18, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s7, s6, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s6, s6, s5
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s8, s9, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s5, s2, s6
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s8, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s5
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s2, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s2
	s_mul_hi_u32 s2, s6, s10
	s_xor_b32 s10, s5, s8
	s_mul_i32 s11, s2, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s2, s11, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s10
	s_sub_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s2, s8
	s_sub_i32 s6, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s4, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s6, s6, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	s_mov_b32 s7, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_lshl_b32 s8, s19, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v1, s8 :: v_dual_and_b32 v12, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v10, 15, v0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v9, 0xf0, v0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	s_lshl_b32 s18, s6, 6
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s2, s2, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v0
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s4, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s7, s1, 31
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v2, 3, v0
.Ltmp17:
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	s_mul_i32 s6, s18, s4
	v_mul_lo_u32 v3, s4, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s4, s7, 27
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s5, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s0, s1, s4
	s_mov_b32 s4, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	v_bfe_i32 v6, v0, 4, 1
	v_bfe_i32 v7, v0, 2, 1
	v_bfe_i32 v8, v0, 3, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
.Ltmp23:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v5, 3, v2
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v7, 0x90, v7
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v12, v3, v5, s6
	s_mov_b32 s6, s4
	v_lshlrev_b32_e32 v5, 3, v0
	v_and_b32_e32 v6, 0x90, v6
	v_lshlrev_b32_e32 v13, 4, v0
	v_and_b32_e32 v8, 0x110, v8
	v_lshlrev_b32_e32 v14, 5, v0
	v_and_b32_e32 v5, 0x778, v5
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s28, s0, 5
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v13, 0xe00, v13
	v_xor_b32_e32 v8, v7, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v5, v6, v5
	v_and_or_b32 v6, 0x160, v14, v7
	v_or_b32_e32 v7, s18, v10
.Ltmp25:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v9
	v_or3_b32 v2, v2, v13, v8
	v_or_b32_e32 v49, s2, v0
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v14, 32, v14
	v_or_b32_e32 v8, 16, v7
	v_or_b32_e32 v17, 32, v7
	v_or_b32_e32 v19, 48, v7
	v_mul_lo_u32 v33, v7, s28
	v_lshrrev_b32_e32 v7, 6, v0
	v_mul_lo_u32 v35, v8, s28
	v_mul_lo_u32 v37, v17, s28
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v8, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v7, 2, v7
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v17, 1, v9
	v_mul_lo_u32 v3, s19, v1
	v_lshl_or_b32 v1, v10, 9, v1
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v8, 0x1c0, v8
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v7, 0, v7
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v56, 0, v17
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v4, 4, v10
	v_xor_b32_e32 v15, 0x90, v1
	v_xor_b32_e32 v13, 0x110, v1
	v_xor_b32_e32 v16, 16, v6
	v_xor_b32_e32 v18, 16, v2
	v_mul_lo_u32 v46, v19, s28
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v19, 28, v0
	v_add3_u32 v20, v7, v8, v14
	v_add3_u32 v14, v56, v17, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v8, v3, v4, s2
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v68, 0, v5
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v70, 0, v1
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v74, 0, v6
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v76, 0, v2
	v_mov_b32_e32 v0, s4
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v72, 0, v15
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v73, 0, v13
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v75, 0, v16
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v83, 0, v18
	v_dual_mov_b32 v1, s5 :: v_dual_mov_b32 v2, s6
	v_dual_mov_b32 v3, s7 :: v_dual_mov_b32 v4, s8
	v_dual_mov_b32 v5, s9 :: v_dual_mov_b32 v6, s10
	v_mov_b32_e32 v7, s11
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v91, v20, v19
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v92, v14, v19
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s0, s19, 5
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	v_mad_u64_u32 v[103:104], null, s6, s19, v[8:9]
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v93, s6, v12
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s5, s6, 32
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s6, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s6, s28
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[101:102], v93, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v97, s19, v103
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[93:96], v103, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v97, s[24:27], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v68, v[101:102] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v101, v97, v93, 0x5010400
	v_perm_b32 v102, v98, v94, 0x5010400
	v_perm_b32 v94, v98, v94, 0x7030602
	v_perm_b32 v98, v99, v95, 0x5010400
	v_perm_b32 v95, v99, v95, 0x7030602
	v_perm_b32 v99, v100, v96, 0x5010400
	v_perm_b32 v96, v100, v96, 0x7030602
	v_lshrrev_b32_e32 v100, 8, v101
	v_perm_b32 v97, v97, v93, 0x7030602
	v_and_b16 v93.l, 0xff, v101.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v93.h, 8, v100.l
	v_lshrrev_b32_e32 v100, 8, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93
	v_lshrrev_b32_e32 v93, 24, v101
	v_and_b16 v93.h, 0xff, v101.h
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v100.l
	ds_store_b16 v70, v93 offset:32
	v_and_b16 v93.l, 0xff, v97.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93 offset:64
	v_lshrrev_b32_e32 v93, 24, v97
	v_and_b16 v93.h, 0xff, v97.h
	v_lshrrev_b32_e32 v97, 8, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.h, 8, v97.l
	v_lshrrev_b32_e32 v97, 8, v94
	ds_store_b16 v70, v93 offset:96
	v_and_b16 v93.l, 0xff, v102.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v72, v93
	v_lshrrev_b32_e32 v93, 24, v102
	v_and_b16 v93.h, 0xff, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v97.l
	ds_store_b16 v72, v93 offset:32
	v_and_b16 v93.l, 0xff, v94.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v72, v93 offset:64
	v_lshrrev_b32_e32 v93, 24, v94
	v_and_b16 v93.h, 0xff, v94.h
	v_lshrrev_b32_e32 v94, 8, v98
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	v_lshrrev_b32_e32 v94, 8, v95
	ds_store_b16 v72, v93 offset:96
	v_and_b16 v93.l, 0xff, v98.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v73, v93
	v_lshrrev_b32_e32 v93, 24, v98
	v_and_b16 v93.h, 0xff, v98.h
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	v_lshrrev_b32_e32 v94, 8, v99
	ds_store_b16 v73, v93 offset:32
	v_and_b16 v93.l, 0xff, v95.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v73, v93 offset:64
	v_lshrrev_b32_e32 v93, 24, v95
	v_and_b16 v93.h, 0xff, v95.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	v_lshrrev_b32_e32 v94, 8, v96
	ds_store_b16 v73, v93 offset:96
	v_and_b16 v93.l, 0xff, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93 offset:384
	v_lshrrev_b32_e32 v93, 24, v99
	v_and_b16 v93.h, 0xff, v99.h
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	ds_store_b16 v70, v93 offset:416
	v_and_b16 v93.l, 0xff, v96.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93 offset:448
	v_lshrrev_b32_e32 v93, 24, v96
	v_and_b16 v93.h, 0xff, v96.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	ds_store_b16 v70, v93 offset:480
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v93, s5, v12
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s28
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[101:102], v93, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v93, s0, v103
	v_add_nc_u32_e32 v97, s19, v93
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[93:96], v93, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v97, s[24:27], 0 offen
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v68, v[101:102] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v101, v97, v93, 0x5010400
	v_perm_b32 v102, v98, v94, 0x5010400
	v_perm_b32 v94, v98, v94, 0x7030602
	v_perm_b32 v98, v99, v95, 0x5010400
	v_perm_b32 v95, v99, v95, 0x7030602
	v_perm_b32 v99, v100, v96, 0x5010400
	v_perm_b32 v96, v100, v96, 0x7030602
	v_lshrrev_b32_e32 v100, 8, v101
	v_perm_b32 v97, v97, v93, 0x7030602
	v_and_b16 v93.l, 0xff, v101.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v93.h, 8, v100.l
	v_lshrrev_b32_e32 v100, 8, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93 offset:8192
	v_lshrrev_b32_e32 v93, 24, v101
	v_and_b16 v93.h, 0xff, v101.h
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v100.l
	ds_store_b16 v70, v93 offset:8224
	v_and_b16 v93.l, 0xff, v97.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93 offset:8256
	v_lshrrev_b32_e32 v93, 24, v97
	v_and_b16 v93.h, 0xff, v97.h
	v_lshrrev_b32_e32 v97, 8, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.h, 8, v97.l
	v_lshrrev_b32_e32 v97, 8, v94
	ds_store_b16 v70, v93 offset:8288
	v_and_b16 v93.l, 0xff, v102.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v72, v93 offset:8192
	v_lshrrev_b32_e32 v93, 24, v102
	v_and_b16 v93.h, 0xff, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v97.l
	ds_store_b16 v72, v93 offset:8224
	v_and_b16 v93.l, 0xff, v94.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v72, v93 offset:8256
	v_lshrrev_b32_e32 v93, 24, v94
	v_and_b16 v93.h, 0xff, v94.h
	v_lshrrev_b32_e32 v94, 8, v98
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	v_lshrrev_b32_e32 v94, 8, v95
	ds_store_b16 v72, v93 offset:8288
	v_and_b16 v93.l, 0xff, v98.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v73, v93 offset:8192
	v_lshrrev_b32_e32 v93, 24, v98
	v_and_b16 v93.h, 0xff, v98.h
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	v_lshrrev_b32_e32 v94, 8, v99
	ds_store_b16 v73, v93 offset:8224
	v_and_b16 v93.l, 0xff, v95.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v73, v93 offset:8256
	v_lshrrev_b32_e32 v93, 24, v95
	v_and_b16 v93.h, 0xff, v95.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	v_lshrrev_b32_e32 v94, 8, v96
	ds_store_b16 v73, v93 offset:8288
	v_and_b16 v93.l, 0xff, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93 offset:8576
	v_lshrrev_b32_e32 v93, 24, v99
	v_and_b16 v93.h, 0xff, v99.h
	v_lshlrev_b16 v93.l, 8, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v93.l, v93.h, v93.l
	v_lshlrev_b16 v93.h, 8, v94.l
	ds_store_b16 v70, v93 offset:8608
	v_and_b16 v93.l, 0xff, v96.l
	v_or_b16 v93.l, v93.l, v93.h
	ds_store_b16 v70, v93 offset:8640
	v_lshrrev_b32_e32 v93, 24, v96
	v_and_b16 v93.h, 0xff, v96.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	ds_store_b16 v70, v93 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[109:112], v74 offset:16384
	ds_load_b128 v[125:128], v74 offset:16896
	ds_load_b128 v[141:144], v74 offset:17408
	ds_load_b128 v[157:160], v74 offset:17920
	ds_load_b128 v[113:116], v75 offset:16384
	ds_load_b128 v[129:132], v75 offset:16896
	ds_load_b128 v[145:148], v75 offset:17408
	ds_load_b128 v[161:164], v75 offset:17920
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[149:152], v76
	ds_load_b128 v[165:168], v76 offset:4096
	ds_load_b128 v[153:156], v83
	ds_load_b128 v[169:172], v83 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[149:152], v[109:112], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[165:168], v[109:112], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[125:128], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[153:156], v[113:116], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[113:116], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[149:152], v[125:128], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[169:172], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[165:168], v[141:144], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[129:132], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[149:152], v[141:144], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[169:172], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v112, v112
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[157:160], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v105, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[161:164], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[165:168], v[157:160], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v157, v93
	v_cvt_f32_i32_e32 v158, v94
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v93, v33, s6, 1
	v_add_lshl_u32 v94, v35, s6, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v159, v95
	v_cvt_f32_i32_e32 v160, v96
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v95, v37, s6, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_add_lshl_u32 v96, v46, s6, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s6, s19
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	s_clause 0x1
	buffer_load_u16 v93, v93, s[8:11], 0 offen
	buffer_load_u16 v94, v94, s[8:11], 0 offen
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[149:156], v[169:172], v[161:164], v[149:156] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v95, v95, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v161, v97
	v_cvt_f32_i32_e32 v162, v98
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v96, v96, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v163, v99
	v_cvt_f32_i32_e32 v164, v100
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
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
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v166, 16, v94
	v_lshlrev_b32_e32 v165, 16, v93
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v93, v49, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_mul_f32 v112, v112, v166
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v102, v102, v165 :: v_dual_lshlrev_b32 v167, 16, v95
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v157, v157, v165 :: v_dual_lshlrev_b32 v168, 16, v96
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v93, v93, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v158, v158, v165
	v_mul_f32_e32 v160, v160, v165
	v_mul_f32_e32 v162, v162, v165
	v_mul_f32_e32 v164, v164, v165
	v_mul_f32_e32 v110, v110, v166
	v_dual_mul_f32 v111, v111, v166 :: v_dual_mul_f32 v126, v126, v167
	v_dual_mul_f32 v113, v113, v166 :: v_dual_mul_f32 v128, v128, v167
	v_dual_mul_f32 v115, v115, v166 :: v_dual_mul_f32 v130, v130, v167
	v_dual_mul_f32 v117, v117, v166 :: v_dual_mul_f32 v132, v132, v167
	v_dual_mul_f32 v123, v123, v166 :: v_dual_mul_f32 v138, v138, v167
	v_dual_mul_f32 v124, v124, v166 :: v_dual_mul_f32 v125, v125, v167
	v_dual_mul_f32 v127, v127, v167 :: v_dual_mul_f32 v142, v142, v168
	v_dual_mul_f32 v129, v129, v167 :: v_dual_mul_f32 v144, v144, v168
	v_dual_mul_f32 v131, v131, v167 :: v_dual_mul_f32 v146, v146, v168
	v_dual_mul_f32 v133, v133, v167 :: v_dual_mul_f32 v148, v148, v168
	v_dual_mul_f32 v135, v135, v167 :: v_dual_mul_f32 v150, v150, v168
	v_dual_mul_f32 v137, v137, v167 :: v_dual_mul_f32 v152, v152, v168
	v_dual_mul_f32 v139, v139, v167 :: v_dual_mul_f32 v154, v154, v168
	v_dual_mul_f32 v140, v140, v167 :: v_dual_mul_f32 v141, v141, v168
	v_dual_mul_f32 v119, v119, v166 :: v_dual_mul_f32 v134, v134, v167
	v_dual_mul_f32 v121, v121, v166 :: v_dual_mul_f32 v136, v136, v167
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v159, v159, v165
	v_mul_f32_e32 v161, v161, v165
	v_mul_f32_e32 v103, v103, v165
	v_mul_f32_e32 v105, v105, v165
	v_mul_f32_e32 v108, v108, v165
	v_mul_f32_e32 v114, v114, v166
	v_mul_f32_e32 v118, v118, v166
	v_mul_f32_e32 v104, v104, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v163, v163, v165
	v_mul_f32_e32 v101, v101, v165
	v_mul_f32_e32 v109, v109, v166
	v_mul_f32_e32 v116, v116, v166
	v_mul_f32_e32 v120, v120, v166
	v_mul_f32_e32 v106, v106, v165
	v_dual_mul_f32 v107, v107, v165 :: v_dual_mul_f32 v122, v122, v166
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v91, v93 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[93:96], v56 offset:20480
	ds_load_b128 v[97:100], v56 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v169, 16, v93
	v_lshlrev_b32_e32 v170, 16, v94
	v_lshlrev_b32_e32 v171, 16, v95
	v_lshlrev_b32_e32 v172, 16, v96
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v173, 16, v97
	v_lshlrev_b32_e32 v174, 16, v98
	v_lshlrev_b32_e32 v175, 16, v99
	v_lshlrev_b32_e32 v176, 16, v100
	v_and_b32_e32 v93, 0xffff0000, v93
	v_and_b32_e32 v94, 0xffff0000, v94
	v_and_b32_e32 v95, 0xffff0000, v95
	v_and_b32_e32 v96, 0xffff0000, v96
	v_and_b32_e32 v97, 0xffff0000, v97
	v_and_b32_e32 v98, 0xffff0000, v98
	v_and_b32_e32 v99, 0xffff0000, v99
	v_and_b32_e32 v100, 0xffff0000, v100
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v143, v143, v168 :: v_dual_fmac_f32 v90, v158, v170
	v_dual_mul_f32 v145, v145, v168 :: v_dual_fmac_f32 v86, v162, v174
	v_dual_mul_f32 v147, v147, v168 :: v_dual_fmac_f32 v82, v101, v93
	v_dual_mul_f32 v149, v149, v168 :: v_dual_fmac_f32 v80, v103, v95
	v_dual_mul_f32 v151, v151, v168 :: v_dual_fmac_f32 v78, v105, v97
	v_dual_mul_f32 v153, v153, v168 :: v_dual_fmac_f32 v66, v110, v170
	v_dual_mul_f32 v155, v155, v168 :: v_dual_fmac_f32 v62, v114, v174
	v_dual_mul_f32 v156, v156, v168 :: v_dual_fmac_f32 v59, v157, v169
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v89, v159, v171 :: v_dual_fmac_f32 v88, v160, v172
	v_dual_fmac_f32 v87, v161, v173 :: v_dual_fmac_f32 v84, v164, v176
	v_dual_fmac_f32 v85, v163, v175 :: v_dual_fmac_f32 v64, v112, v172
	v_dual_fmac_f32 v81, v102, v94 :: v_dual_fmac_f32 v60, v116, v176
	v_dual_fmac_f32 v69, v108, v100 :: v_dual_fmac_f32 v48, v125, v169
	v_dual_fmac_f32 v67, v109, v169 :: v_dual_fmac_f32 v50, v124, v100
	v_dual_fmac_f32 v65, v111, v171 :: v_dual_fmac_f32 v44, v128, v172
	v_dual_fmac_f32 v63, v113, v173 :: v_dual_fmac_f32 v42, v130, v174
	v_dual_fmac_f32 v61, v115, v175 :: v_dual_fmac_f32 v40, v132, v176
	v_dual_fmac_f32 v47, v126, v170 :: v_dual_fmac_f32 v30, v139, v99
	v_dual_fmac_f32 v45, v127, v171 :: v_dual_fmac_f32 v28, v141, v169
	v_dual_fmac_f32 v43, v129, v173 :: v_dual_fmac_f32 v26, v143, v171
	v_dual_fmac_f32 v41, v131, v175 :: v_dual_fmac_f32 v24, v145, v173
	v_dual_fmac_f32 v39, v133, v93 :: v_dual_fmac_f32 v22, v147, v175
	v_dual_fmac_f32 v31, v138, v98 :: v_dual_fmac_f32 v20, v149, v93
	v_dual_fmac_f32 v29, v140, v100 :: v_dual_fmac_f32 v18, v151, v95
	v_dual_fmac_f32 v27, v142, v170 :: v_dual_fmac_f32 v16, v153, v97
	v_dual_fmac_f32 v25, v144, v172 :: v_dual_fmac_f32 v14, v155, v99
	v_fmac_f32_e32 v23, v146, v174
	v_fmac_f32_e32 v21, v148, v176
	v_fmac_f32_e32 v19, v150, v94
	v_fmac_f32_e32 v17, v152, v96
	v_fmac_f32_e32 v15, v154, v98
	v_fmac_f32_e32 v13, v156, v100
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	ds_load_b128 v[109:112], v74 offset:18432
	ds_load_b128 v[125:128], v74 offset:18944
	ds_load_b128 v[141:144], v74 offset:19456
	ds_load_b128 v[157:160], v74 offset:19968
	ds_load_b128 v[113:116], v75 offset:18432
	ds_load_b128 v[129:132], v75 offset:18944
	ds_load_b128 v[145:148], v75 offset:19456
	ds_load_b128 v[161:164], v75 offset:19968
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[149:152], v76 offset:8192
	ds_load_b128 v[165:168], v76 offset:12288
	ds_load_b128 v[153:156], v83 offset:8192
	ds_load_b128 v[169:172], v83 offset:12288
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v79, v104, v96 :: v_dual_fmac_f32 v58, v117, v93
	v_dual_fmac_f32 v77, v106, v98 :: v_dual_fmac_f32 v54, v120, v96
	v_dual_fmac_f32 v71, v107, v99 :: v_dual_fmac_f32 v52, v122, v98
	v_dual_fmac_f32 v57, v118, v94 :: v_dual_fmac_f32 v36, v135, v95
	v_dual_fmac_f32 v55, v119, v95 :: v_dual_fmac_f32 v38, v134, v94
	v_dual_fmac_f32 v53, v121, v97 :: v_dual_fmac_f32 v34, v136, v96
	v_dual_fmac_f32 v51, v123, v99 :: v_dual_fmac_f32 v32, v137, v97
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[149:152], v[109:112], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[165:168], v[109:112], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[125:128], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[153:156], v[113:116], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[113:116], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[149:152], v[125:128], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[169:172], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[165:168], v[141:144], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[129:132], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[149:152], v[141:144], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[169:172], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v110, v110
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[157:160], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[161:164], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[165:168], v[157:160], v[0:7] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v157, v33, s5, 1
	v_add_lshl_u32 v158, v35, s5, 1
	v_add_lshl_u32 v159, v37, s5, 1
	v_add_lshl_u32 v160, v46, s5, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s5, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v157, 0x80000000, v157 :: v_dual_cndmask_b32 v158, 0x80000000, v158
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[149:156], v[169:172], v[161:164], v[149:156] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_cndmask_b32 v160, 0x80000000, v160
	s_clause 0x1
	buffer_load_u16 v157, v157, s[8:11], 0 offen
	buffer_load_u16 v158, v158, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v161, v49, s5, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	buffer_load_u16 v160, v160, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
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
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v160, 16, v160
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v114, v114, v158
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v161, v161, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v112, v112, v158 :: v_dual_lshlrev_b32 v159, 16, v159
	v_mul_f32_e32 v168, v99, v157
	v_mul_f32_e32 v162, v93, v157
	v_dual_mul_f32 v163, v94, v157 :: v_dual_mul_f32 v120, v120, v158
	v_mul_f32_e32 v164, v95, v157
	v_dual_mul_f32 v165, v96, v157 :: v_dual_mul_f32 v118, v118, v158
	v_mul_f32_e32 v166, v97, v157
	v_dual_mul_f32 v167, v98, v157 :: v_dual_mul_f32 v124, v124, v158
	v_dual_mul_f32 v169, v100, v157 :: v_dual_mul_f32 v122, v122, v158
	v_dual_mul_f32 v170, v101, v157 :: v_dual_mul_f32 v111, v111, v158
	v_dual_mul_f32 v171, v102, v157 :: v_dual_mul_f32 v128, v128, v159
	v_dual_mul_f32 v172, v103, v157 :: v_dual_mul_f32 v109, v109, v158
	v_dual_mul_f32 v173, v104, v157 :: v_dual_mul_f32 v126, v126, v159
	v_dual_mul_f32 v174, v105, v157 :: v_dual_mul_f32 v115, v115, v158
	v_dual_mul_f32 v175, v106, v157 :: v_dual_mul_f32 v132, v132, v159
	v_dual_mul_f32 v176, v107, v157 :: v_dual_mul_f32 v113, v113, v158
	v_dual_mul_f32 v157, v108, v157 :: v_dual_mul_f32 v130, v130, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v110, v110, v158
	v_dual_mul_f32 v117, v117, v158 :: v_dual_mul_f32 v134, v134, v159
	v_dual_mul_f32 v119, v119, v158 :: v_dual_mul_f32 v136, v136, v159
	v_dual_mul_f32 v121, v121, v158 :: v_dual_mul_f32 v138, v138, v159
	v_dual_mul_f32 v123, v123, v158 :: v_dual_mul_f32 v140, v140, v159
	v_dual_mul_f32 v125, v125, v159 :: v_dual_mul_f32 v142, v142, v160
	v_dual_mul_f32 v127, v127, v159 :: v_dual_mul_f32 v144, v144, v160
	v_dual_mul_f32 v129, v129, v159 :: v_dual_mul_f32 v146, v146, v160
	v_dual_mul_f32 v131, v131, v159 :: v_dual_mul_f32 v148, v148, v160
	v_dual_mul_f32 v133, v133, v159 :: v_dual_mul_f32 v150, v150, v160
	v_dual_mul_f32 v135, v135, v159 :: v_dual_mul_f32 v152, v152, v160
	v_dual_mul_f32 v137, v137, v159 :: v_dual_mul_f32 v154, v154, v160
	v_dual_mul_f32 v139, v139, v159 :: v_dual_mul_f32 v156, v156, v160
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v116, v116, v158 :: v_dual_lshlrev_b32 v161, 16, v161
	ds_store_b32 v92, v161 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[93:96], v56 offset:20480
	ds_load_b128 v[97:100], v56 offset:20496
	ds_load_b128 v[101:104], v56 offset:20992
	ds_load_b128 v[105:108], v56 offset:21008
	v_mul_f32_e32 v141, v141, v160
	v_mul_f32_e32 v143, v143, v160
	v_mul_f32_e32 v145, v145, v160
	v_mul_f32_e32 v147, v147, v160
	v_mul_f32_e32 v149, v149, v160
	v_mul_f32_e32 v151, v151, v160
	v_mul_f32_e32 v153, v153, v160
	v_mul_f32_e32 v155, v155, v160
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v59, v162, v93 :: v_dual_fmac_f32 v88, v165, v96
	v_dual_fmac_f32 v90, v163, v94 :: v_dual_fmac_f32 v89, v164, v95
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v84, v169, v100 :: v_dual_fmac_f32 v87, v166, v97
	v_fmac_f32_e32 v64, v112, v96
	v_dual_fmac_f32 v86, v167, v98 :: v_dual_fmac_f32 v85, v168, v99
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v52, v122, v106
	v_dual_fmac_f32 v82, v170, v101 :: v_dual_fmac_f32 v81, v171, v102
	v_fmac_f32_e32 v60, v116, v100
	v_dual_fmac_f32 v80, v172, v103 :: v_dual_fmac_f32 v79, v173, v104
	v_fmac_f32_e32 v42, v130, v98
	v_dual_fmac_f32 v78, v174, v105 :: v_dual_fmac_f32 v77, v175, v106
	v_fmac_f32_e32 v54, v120, v104
	v_dual_fmac_f32 v71, v176, v107 :: v_dual_fmac_f32 v48, v125, v93
	v_dual_fmac_f32 v69, v157, v108 :: v_dual_fmac_f32 v38, v134, v102
	v_dual_fmac_f32 v67, v109, v93 :: v_dual_fmac_f32 v50, v124, v108
	v_dual_fmac_f32 v66, v110, v94 :: v_dual_fmac_f32 v65, v111, v95
	v_dual_fmac_f32 v44, v128, v96 :: v_dual_fmac_f32 v63, v113, v97
	v_fmac_f32_e32 v40, v132, v100
	v_dual_fmac_f32 v62, v114, v98 :: v_dual_fmac_f32 v61, v115, v99
	v_fmac_f32_e32 v34, v136, v104
	v_dual_fmac_f32 v58, v117, v101 :: v_dual_fmac_f32 v57, v118, v102
	v_fmac_f32_e32 v36, v135, v103
	v_dual_fmac_f32 v55, v119, v103 :: v_dual_fmac_f32 v32, v137, v105
	v_dual_fmac_f32 v53, v121, v105 :: v_dual_fmac_f32 v30, v139, v107
	v_dual_fmac_f32 v51, v123, v107 :: v_dual_fmac_f32 v28, v141, v93
	v_dual_fmac_f32 v47, v126, v94 :: v_dual_fmac_f32 v26, v143, v95
	v_dual_fmac_f32 v45, v127, v95 :: v_dual_fmac_f32 v24, v145, v97
	v_dual_fmac_f32 v43, v129, v97 :: v_dual_fmac_f32 v22, v147, v99
	v_dual_fmac_f32 v41, v131, v99 :: v_dual_fmac_f32 v20, v149, v101
	v_dual_fmac_f32 v39, v133, v101 :: v_dual_fmac_f32 v18, v151, v103
	v_dual_fmac_f32 v31, v138, v106 :: v_dual_fmac_f32 v16, v153, v105
	v_dual_fmac_f32 v29, v140, v108 :: v_dual_fmac_f32 v14, v155, v107
	v_fmac_f32_e32 v27, v142, v94
	v_fmac_f32_e32 v25, v144, v96
	v_fmac_f32_e32 v23, v146, v98
	v_fmac_f32_e32 v21, v148, v100
	v_fmac_f32_e32 v19, v150, v102
	v_fmac_f32_e32 v17, v152, v104
	v_fmac_f32_e32 v15, v154, v106
	v_fmac_f32_e32 v13, v156, v108
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v54, v54, v54
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v48, v48, v48
	v_max_f32_e32 v47, v47, v47
	v_dual_max_f32 v0, v59, v59 :: v_dual_max_f32 v1, v90, v90
	v_dual_max_f32 v2, v89, v89 :: v_dual_max_f32 v3, v88, v88
	v_dual_max_f32 v4, v87, v87 :: v_dual_max_f32 v5, v86, v86
	v_dual_max_f32 v6, v85, v85 :: v_dual_max_f32 v7, v84, v84
	v_max_f32_e32 v8, v82, v82
	v_dual_max_f32 v12, v81, v81 :: v_dual_max_f32 v37, v78, v78
	v_dual_max_f32 v49, v71, v71 :: v_dual_max_f32 v56, v69, v69
	v_dual_max_f32 v59, v67, v67 :: v_dual_max_f32 v66, v66, v66
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v60, v60, v60
	v_dual_max_f32 v81, 0, v57 :: v_dual_max_f32 v50, v50, v50
	v_dual_max_f32 v88, 0, v48 :: v_dual_max_f32 v89, 0, v47
	v_max_f32_e32 v42, v42, v42
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v31, v31, v31
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v29, v29, v29
	v_max_f32_e32 v28, v28, v28
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v21, v21, v21
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v33, v80, v80
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v35, v79, v79
	v_max_f32_e32 v46, v77, v77
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v56, 0, v56
	v_dual_max_f32 v49, 0, v49 :: v_dual_max_f32 v72, 0, v59
	v_dual_max_f32 v59, v64, v64 :: v_dual_max_f32 v62, v62, v62
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v76, 0, v63
	v_dual_max_f32 v79, 0, v60 :: v_dual_max_f32 v58, v58, v58
	v_max_f32_e32 v55, v55, v55
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v52, v52, v52
	v_dual_max_f32 v87, 0, v50 :: v_dual_max_f32 v44, v44, v44
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v45, v45, v45
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v40, v40, v40
	v_dual_max_f32 v93, 0, v42 :: v_dual_max_f32 v36, v36, v36
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v95, 0, v40
	v_dual_max_f32 v101, 0, v31 :: v_dual_max_f32 v102, 0, v30
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v104, 0, v28
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v24, v24, v24
	v_max_f32_e32 v105, 0, v27
	v_dual_max_f32 v111, 0, v21 :: v_dual_max_f32 v112, 0, v20
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v114, 0, v18
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v16, v16, v16
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v115, 0, v17 :: v_dual_max_f32 v0, 0, v0
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v12, 0, v12
	v_max_f32_e32 v33, 0, v33
	v_max_f32_e32 v35, 0, v35
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v46, 0, v46
	v_dual_max_f32 v73, 0, v66 :: v_dual_max_f32 v74, 0, v65
	v_dual_max_f32 v75, 0, v59 :: v_dual_max_f32 v78, 0, v61
	v_max_f32_e32 v80, 0, v58
	v_dual_max_f32 v77, 0, v62 :: v_dual_max_f32 v82, 0, v55
	v_dual_max_f32 v83, 0, v54 :: v_dual_max_f32 v84, 0, v53
	v_dual_max_f32 v85, 0, v52 :: v_dual_max_f32 v86, 0, v51
	v_dual_max_f32 v91, 0, v44 :: v_dual_max_f32 v94, 0, v41
	v_max_f32_e32 v92, 0, v43
	v_max_f32_e32 v90, 0, v45
	v_dual_max_f32 v96, 0, v39 :: v_dual_max_f32 v97, 0, v38
	v_dual_max_f32 v98, 0, v36 :: v_dual_max_f32 v99, 0, v34
	v_dual_max_f32 v100, 0, v32 :: v_dual_max_f32 v103, 0, v29
	v_dual_max_f32 v106, 0, v26 :: v_dual_max_f32 v107, 0, v25
	v_dual_max_f32 v108, 0, v24 :: v_dual_max_f32 v109, 0, v23
	v_dual_max_f32 v110, 0, v22 :: v_dual_max_f32 v113, 0, v19
	v_dual_max_f32 v116, 0, v16 :: v_dual_max_f32 v117, 0, v15
	v_dual_max_f32 v118, 0, v14 :: v_dual_max_f32 v119, 0, v13
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v71, v0, v0 :: v_dual_mul_f32 v70, v1, v1
	v_dual_mul_f32 v69, v2, v2 :: v_dual_mul_f32 v68, v3, v3
	v_dual_mul_f32 v67, v4, v4 :: v_dual_mul_f32 v66, v5, v5
	v_dual_mul_f32 v65, v6, v6 :: v_dual_mul_f32 v64, v7, v7
	v_dual_mul_f32 v63, v8, v8 :: v_dual_mul_f32 v60, v35, v35
	v_dual_mul_f32 v62, v12, v12 :: v_dual_mul_f32 v61, v33, v33
	v_dual_mul_f32 v59, v37, v37 :: v_dual_mul_f32 v58, v46, v46
	v_dual_mul_f32 v57, v49, v49 :: v_dual_mul_f32 v56, v56, v56
	v_dual_mul_f32 v55, v72, v72 :: v_dual_mul_f32 v54, v73, v73
	v_dual_mul_f32 v53, v74, v74 :: v_dual_mul_f32 v52, v75, v75
	v_dual_mul_f32 v51, v76, v76 :: v_dual_mul_f32 v50, v77, v77
	v_dual_mul_f32 v49, v78, v78 :: v_dual_mul_f32 v48, v79, v79
	v_dual_mul_f32 v47, v80, v80 :: v_dual_mul_f32 v46, v81, v81
	v_dual_mul_f32 v45, v82, v82 :: v_dual_mul_f32 v44, v83, v83
	v_dual_mul_f32 v43, v84, v84 :: v_dual_mul_f32 v42, v85, v85
	v_dual_mul_f32 v41, v86, v86 :: v_dual_mul_f32 v40, v87, v87
	v_dual_mul_f32 v39, v88, v88 :: v_dual_mul_f32 v38, v89, v89
	v_dual_mul_f32 v37, v90, v90 :: v_dual_mul_f32 v36, v91, v91
	v_dual_mul_f32 v34, v92, v92 :: v_dual_mul_f32 v33, v93, v93
	v_dual_mul_f32 v32, v94, v94 :: v_dual_mul_f32 v31, v95, v95
	v_dual_mul_f32 v30, v96, v96 :: v_dual_mul_f32 v29, v97, v97
	v_dual_mul_f32 v28, v98, v98 :: v_dual_mul_f32 v27, v99, v99
	v_dual_mul_f32 v26, v100, v100 :: v_dual_mul_f32 v25, v101, v101
	v_dual_mul_f32 v24, v102, v102 :: v_dual_mul_f32 v23, v103, v103
	v_dual_mul_f32 v22, v104, v104 :: v_dual_mul_f32 v21, v105, v105
	v_dual_mul_f32 v20, v106, v106 :: v_dual_mul_f32 v19, v108, v108
	v_dual_mul_f32 v18, v107, v107 :: v_dual_mul_f32 v17, v109, v109
	v_dual_mul_f32 v16, v110, v110 :: v_dual_mul_f32 v15, v111, v111
	v_dual_mul_f32 v14, v112, v112 :: v_dual_mul_f32 v13, v113, v113
	v_dual_mul_f32 v8, v114, v114 :: v_dual_mul_f32 v7, v116, v116
	v_dual_mul_f32 v6, v115, v115 :: v_dual_mul_f32 v5, v117, v117
	v_dual_mul_f32 v4, v118, v118 :: v_dual_mul_f32 v3, v119, v119
	v_dual_mov_b32 v1, s0 :: v_dual_mov_b32 v12, v11
.LBB0_7:                                ; %._crit_edge
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.h, 0
	v_mov_b16_e32 v35.l, v70.h
	v_mov_b16_e32 v72.l, v71.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v12
	v_mov_b16_e32 v74.l, v69.h
	v_mov_b16_e32 v72.h, v35.h
	v_and_b32_e32 v73, 1, v35
	v_mov_b16_e32 v35.l, v68.h
	v_mov_b16_e32 v74.h, v35.h
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v2, s19, v10
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 1, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v70, v70, v73, 0x7fff
	v_and_b32_e32 v72, 1, v72
	s_mov_b32 s0, 0x76543210
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_mul_i32 s18, s18, s19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_add3_u32 v71, v71, v72, 0x7fff
	v_and_b32_e32 v72, 1, v35
	v_mov_b16_e32 v35.l, v66.h
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v11, s19, 4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v70.l, v71.h
	v_add3_u32 v68, v68, v72, 0x7fff
	v_and_b32_e32 v73, 1, v74
	v_mov_b16_e32 v74.l, v67.h
	v_and_b32_e32 v71, 1, v35
	v_mov_b16_e32 v35.l, v64.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v69, v69, v73, 0x7fff
	v_and_b32_e32 v72, 1, v74
	v_mov_b16_e32 v73.l, v65.h
	v_mov_b16_e32 v73.h, v35.h
	v_add3_u32 v66, v66, v71, 0x7fff
	v_mov_b16_e32 v68.l, v69.h
	v_add3_u32 v67, v67, v72, 0x7fff
	v_and_b32_e32 v69, 1, v35
	v_and_b32_e32 v71, 1, v73
	v_mov_b16_e32 v35.l, v62.h
	v_mov_b16_e32 v72.l, v63.h
	v_mov_b16_e32 v72.h, v35.h
	v_mov_b16_e32 v66.l, v67.h
	v_add3_u32 v65, v65, v71, 0x7fff
	v_add3_u32 v64, v64, v69, 0x7fff
	v_and_b32_e32 v67, 1, v35
	v_and_b32_e32 v69, 1, v72
	v_mov_b16_e32 v35.l, v60.h
	v_mov_b16_e32 v71.l, v61.h
	v_mov_b16_e32 v71.h, v35.h
	v_mov_b16_e32 v64.l, v65.h
	v_add3_u32 v63, v63, v69, 0x7fff
	v_add3_u32 v62, v62, v67, 0x7fff
	v_and_b32_e32 v65, 1, v35
	v_and_b32_e32 v67, 1, v71
	v_mov_b16_e32 v35.l, v58.h
	v_mov_b16_e32 v69.l, v59.h
	v_mov_b16_e32 v69.h, v35.h
	v_mov_b16_e32 v62.l, v63.h
	v_add3_u32 v61, v61, v67, 0x7fff
	v_add3_u32 v60, v60, v65, 0x7fff
	v_and_b32_e32 v63, 1, v35
	v_and_b32_e32 v65, 1, v69
	v_mov_b16_e32 v35.l, v56.h
	v_mov_b16_e32 v67.l, v57.h
	v_mov_b16_e32 v67.h, v35.h
	v_mov_b16_e32 v60.l, v61.h
	v_add3_u32 v59, v59, v65, 0x7fff
	v_add3_u32 v58, v58, v63, 0x7fff
	v_and_b32_e32 v61, 1, v35
	v_and_b32_e32 v63, 1, v67
	v_mov_b16_e32 v35.l, v54.h
	v_mov_b16_e32 v65.l, v55.h
	v_mov_b16_e32 v65.h, v35.h
	v_mov_b16_e32 v58.l, v59.h
	v_add3_u32 v57, v57, v63, 0x7fff
	v_add3_u32 v56, v56, v61, 0x7fff
	v_and_b32_e32 v59, 1, v35
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v35.l, v52.h
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v63.h, v35.h
	v_mov_b16_e32 v56.l, v57.h
	v_add3_u32 v55, v55, v61, 0x7fff
	v_add3_u32 v54, v54, v59, 0x7fff
	v_and_b32_e32 v57, 1, v35
	v_and_b32_e32 v59, 1, v63
	v_mov_b16_e32 v35.l, v50.h
	v_mov_b16_e32 v61.l, v51.h
	v_mov_b16_e32 v61.h, v35.h
	v_mov_b16_e32 v54.l, v55.h
	v_add3_u32 v53, v53, v59, 0x7fff
	v_add3_u32 v52, v52, v57, 0x7fff
	v_and_b32_e32 v55, 1, v35
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e32 v35.l, v48.h
	v_mov_b16_e32 v59.l, v49.h
	v_mov_b16_e32 v59.h, v35.h
	v_mov_b16_e32 v52.l, v53.h
	v_add3_u32 v51, v51, v57, 0x7fff
	v_add3_u32 v50, v50, v55, 0x7fff
	v_and_b32_e32 v53, 1, v35
	v_and_b32_e32 v55, 1, v59
	v_mov_b16_e32 v35.l, v46.h
	v_mov_b16_e32 v57.l, v47.h
	v_mov_b16_e32 v57.h, v35.h
	v_mov_b16_e32 v50.l, v51.h
	v_add3_u32 v49, v49, v55, 0x7fff
	v_add3_u32 v48, v48, v53, 0x7fff
	v_and_b32_e32 v51, 1, v35
	v_and_b32_e32 v53, 1, v57
	v_mov_b16_e32 v35.l, v44.h
	v_mov_b16_e32 v55.l, v45.h
	v_mov_b16_e32 v55.h, v35.h
	v_mov_b16_e32 v48.l, v49.h
	v_add3_u32 v47, v47, v53, 0x7fff
	v_add3_u32 v46, v46, v51, 0x7fff
	v_and_b32_e32 v49, 1, v35
	v_and_b32_e32 v51, 1, v55
	v_mov_b16_e32 v35.l, v42.h
	v_mov_b16_e32 v53.l, v43.h
	v_mov_b16_e32 v53.h, v35.h
	v_mov_b16_e32 v46.l, v47.h
	v_add3_u32 v45, v45, v51, 0x7fff
	v_add3_u32 v44, v44, v49, 0x7fff
	v_and_b32_e32 v47, 1, v35
	v_and_b32_e32 v49, 1, v53
	v_mov_b16_e32 v35.l, v40.h
	v_mov_b16_e32 v51.l, v41.h
	v_mov_b16_e32 v51.h, v35.h
	v_mov_b16_e32 v44.l, v45.h
	v_add3_u32 v43, v43, v49, 0x7fff
	v_add3_u32 v42, v42, v47, 0x7fff
	v_and_b32_e32 v45, 1, v35
	v_and_b32_e32 v47, 1, v51
	v_mov_b16_e32 v35.l, v38.h
	v_mov_b16_e32 v49.l, v39.h
	v_mov_b16_e32 v49.h, v35.h
	v_mov_b16_e32 v42.l, v43.h
	v_add3_u32 v41, v41, v47, 0x7fff
	v_add3_u32 v40, v40, v45, 0x7fff
	v_and_b32_e32 v43, 1, v35
	v_and_b32_e32 v45, 1, v49
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v47.l, v37.h
	v_mov_b16_e32 v47.h, v35.h
	v_mov_b16_e32 v40.l, v41.h
	v_add3_u32 v39, v39, v45, 0x7fff
	v_add3_u32 v38, v38, v43, 0x7fff
	v_and_b32_e32 v41, 1, v35
	v_and_b32_e32 v43, 1, v47
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e32 v45.h, v35.h
	v_mov_b16_e32 v38.l, v39.h
	v_add3_u32 v37, v37, v43, 0x7fff
	v_add3_u32 v36, v36, v41, 0x7fff
	v_and_b32_e32 v39, 1, v35
	v_and_b32_e32 v41, 1, v45
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v43.l, v32.h
	v_mov_b16_e32 v43.h, v35.h
	v_mov_b16_e32 v36.l, v37.h
	v_add3_u32 v34, v34, v41, 0x7fff
	v_add3_u32 v33, v33, v39, 0x7fff
	v_and_b32_e32 v37, 1, v35
	v_and_b32_e32 v39, 1, v43
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v41.l, v30.h
	v_mov_b16_e32 v41.h, v35.h
	v_mov_b16_e32 v33.l, v34.h
	v_add3_u32 v32, v32, v39, 0x7fff
	v_add3_u32 v31, v31, v37, 0x7fff
	v_and_b32_e32 v34, 1, v35
	v_and_b32_e32 v37, 1, v41
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e32 v39.l, v28.h
	v_mov_b16_e32 v39.h, v35.h
	v_add3_u32 v30, v30, v37, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v35.h
	v_mov_b16_e32 v35.l, v25.h
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v9, v2, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v27, v27, v32, 0x7fff
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[0:1], null, s19, 48, v[2:3]
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v32, 1, v37
	v_cndmask_b32_e32 v37, v33, v38, vcc_lo
	v_add3_u32 v29, v29, v34, 0x7fff
	v_and_b32_e32 v34, 1, v39
	v_mov_b16_e32 v29.l, v30.h
	v_and_b32_e32 v30, 1, v35
	v_mov_b16_e32 v35.l, v23.h
	v_cndmask_b32_e32 v33, v38, v33, vcc_lo
	v_add3_u32 v28, v28, v34, 0x7fff
	v_mov_b16_e32 v34.l, v24.h
	v_mov_b16_e32 v34.h, v35.h
	v_add3_u32 v25, v25, v30, 0x7fff
	v_and_b32_e32 v30, 1, v35
	v_mov_b16_e32 v27.l, v28.h
	v_mov_b16_e32 v35.l, v21.h
	v_dual_cndmask_b32 v38, v31, v36 :: v_dual_cndmask_b32 v31, v36, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v23, v23, v30, 0x7fff
	v_and_b32_e32 v28, 1, v34
	v_add3_u32 v26, v26, v32, 0x7fff
	v_mov_b16_e32 v32.l, v22.h
	v_mov_b16_e32 v32.h, v35.h
	v_cndmask_b32_e32 v30, v42, v46, vcc_lo
	v_add3_u32 v24, v24, v28, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e32 v28.l, v20.h
	v_mov_b16_e32 v28.h, v35.h
	v_cndmask_b32_e32 v12, v68, v64, vcc_lo
	v_mov_b16_e32 v23.l, v24.h
	v_and_b32_e32 v24, 1, v35
	v_mov_b16_e32 v35.l, v18.h
	v_and_b32_e32 v26, 1, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v32, v46, v42 :: v_dual_cndmask_b32 v39, v23, v27
	v_add3_u32 v21, v21, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v24, 1, v35
	v_cndmask_b32_e32 v23, v27, v23, vcc_lo
	v_add3_u32 v22, v22, v26, 0x7fff
	v_mov_b16_e32 v35.l, v17.h
	v_mov_b16_e32 v22.l, v16.h
	v_add3_u32 v18, v18, v24, 0x7fff
	v_and_b32_e32 v26, 1, v28
	v_mov_b16_e32 v28.l, v19.h
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v22.h, v35.h
	v_mov_b16_e32 v24.l, v14.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_and_b32_e32 v26, 1, v28
	v_mov_b16_e32 v24.h, v35.h
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v1, s18, s2, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e32 v28, v52, v48, vcc_lo
	v_mov_b16_e32 v18.l, v20.h
	v_and_b32_e32 v20, 1, v35
	v_mov_b16_e32 v35.l, v15.h
	v_add3_u32 v19, v19, v26, 0x7fff
	v_and_b32_e32 v24, 1, v24
	v_cndmask_b32_e32 v34, v40, v44, vcc_lo
	v_add3_u32 v17, v17, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_and_b32_e32 v22, 1, v35
	v_mov_b16_e32 v35.l, v13.h
	v_mov_b16_e32 v17.l, v19.h
	v_add3_u32 v14, v14, v24, 0x7fff
	v_add3_u32 v16, v16, v20, 0x7fff
	v_mov_b16_e32 v20.l, v8.h
	v_and_b32_e32 v19, 1, v35
	v_mov_b16_e32 v35.l, v6.h
	v_mov_b16_e32 v20.h, v35.h
	v_add3_u32 v15, v15, v22, 0x7fff
	v_mov_b16_e32 v15.l, v16.h
	v_add3_u32 v13, v13, v19, 0x7fff
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v35.h
	v_mov_b16_e32 v13.l, v14.h
	v_and_b32_e32 v14, 1, v35
	v_and_b32_e32 v16, 1, v20
	v_mov_b16_e32 v35.l, v5.h
	v_mov_b16_e32 v20.l, v4.h
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v6, v6, v14, 0x7fff
	v_add3_u32 v8, v8, v16, 0x7fff
	v_and_b32_e32 v16, 1, v35
	v_mov_b16_e32 v35.l, v3.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v6.l, v8.h
	v_add3_u32 v5, v5, v16, 0x7fff
	v_and_b32_e32 v8, 1, v35
	v_add3_u32 v4, v4, v20, 0x7fff
	v_mov_b16_e32 v5.l, v7.h
	v_cndmask_b32_e32 v7, v70, v66, vcc_lo
	v_cndmask_b32_e32 v41, v15, v18, vcc_lo
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_dual_cndmask_b32 v15, v18, v15 :: v_dual_cndmask_b32 v42, v5, v13
	v_cndmask_b32_e32 v5, v13, v5, vcc_lo
	v_mov_b32_e32 v13, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v43, v3, v6
	v_cndmask_b32_e32 v3, v6, v3, vcc_lo
	v_permlanex16_b32 v6, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v13, 0x3276, v18, vcc_lo
	v_cndmask_b32_e32 v16, v62, v58, vcc_lo
	v_cndmask_b32_e32 v20, v60, v56, vcc_lo
	v_cndmask_b32_e32 v24, v54, v50, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v13, v13, 8, v13
	v_dual_cndmask_b32 v35, v44, v40 :: v_dual_cndmask_b32 v36, v25, v29
	v_cndmask_b32_e32 v25, v29, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v13, 0x760076, v13
	v_cndmask_b32_e32 v40, v17, v21, vcc_lo
	v_dual_cndmask_b32 v17, v21, v17 :: v_dual_cndmask_b32 v4, v66, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v13, v13, 4, v13
	v_cndmask_b32_e32 v8, v64, v68, vcc_lo
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v19, v56, v60 :: v_dual_add_nc_u32 v10, 0x80, v1
	v_and_b32_e32 v7, 0x5040504, v7
	v_and_b32_e32 v44, 0x7060706, v13
	v_cndmask_b32_e32 v14, v58, v62, vcc_lo
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v22, v50, v54, vcc_lo
	v_cndmask_b32_e32 v26, v48, v52, vcc_lo
	v_permlanex16_b32 v20, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v6, v4, v7
	v_perm_b32 v4, v6, v4, v44
	v_perm_b32 v5, v12, v8, v7
	v_perm_b32 v6, v12, v8, v44
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v12, v16, v14, v7
	v_perm_b32 v13, v16, v14, v44
	v_perm_b32 v14, v18, v19, v7
	v_perm_b32 v15, v18, v19, v44
	v_perm_b32 v16, v20, v22, v7
	v_perm_b32 v17, v20, v22, v44
	v_perm_b32 v18, v21, v26, v7
	v_perm_b32 v19, v21, v26, v44
	v_perm_b32 v20, v24, v30, v7
	v_perm_b32 v21, v24, v30, v44
	v_perm_b32 v22, v27, v34, v7
	v_perm_b32 v23, v27, v34, v44
	v_perm_b32 v24, v28, v37, v7
	v_perm_b32 v25, v28, v37, v44
	v_perm_b32 v26, v29, v38, v7
	v_perm_b32 v27, v29, v38, v44
	v_perm_b32 v28, v31, v36, v7
	v_perm_b32 v29, v31, v36, v44
	v_perm_b32 v30, v32, v39, v7
	v_perm_b32 v31, v32, v39, v44
	v_perm_b32 v32, v33, v40, v7
	v_perm_b32 v34, v35, v41, v7
	v_perm_b32 v36, v45, v42, v7
	v_perm_b32 v38, v46, v43, v7
	v_add_lshl_u32 v7, v1, v11, 1
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x2
	buffer_store_b128 v[3:6], v2, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v2, s[16:19], 0 offen offset:256
	buffer_store_b128 v[16:19], v7, s[16:19], 0 offen
	v_add_lshl_u32 v2, v10, v11, 1
	v_add_lshl_u32 v3, v1, v9, 1
	v_add_lshl_u32 v4, v10, v9, 1
	v_perm_b32 v33, v33, v40, v44
	v_perm_b32 v35, v35, v41, v44
	v_add_lshl_u32 v1, v1, v0, 1
	v_perm_b32 v37, v45, v42, v44
	v_perm_b32 v39, v46, v43, v44
	v_add_lshl_u32 v0, v10, v0, 1
	s_clause 0x4
	buffer_store_b128 v[20:23], v2, s[16:19], 0 offen
	buffer_store_b128 v[24:27], v3, s[16:19], 0 offen
	buffer_store_b128 v[28:31], v4, s[16:19], 0 offen
	buffer_store_b128 v[32:35], v1, s[16:19], 0 offen
	buffer_store_b128 v[36:39], v0, s[16:19], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 29
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 177
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9148
; TotalNumSgprs: 31
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 31
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
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	366                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
