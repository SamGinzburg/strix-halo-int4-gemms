	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_and_b32_e32 v47, 16, v0
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
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 16, v0
	v_mov_b32_e32 v1, s8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow185
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v40, 15, v0
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v41, 0xf0, v0
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
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
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
	s_add_i32 s1, s1, s4
	s_mov_b32 s4, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	v_bfe_i32 v6, v0, 4, 1
	v_bfe_i32 v7, v0, 2, 1
	v_bfe_i32 v8, v0, 3, 1
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v10, 5, v0
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
	v_and_b32_e32 v2, 3, v0
	v_mov_b32_e32 v68, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s1, s1, 5
	v_mov_b32_e32 v73, 0
.Ltmp25:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v41
	v_lshlrev_b32_e32 v5, 3, v2
	v_lshlrev_b32_e32 v2, 5, v2
	v_mov_b32_e32 v74, 0
	v_or_b32_e32 v81, s2, v0
	v_mov_b32_e32 v61, 0
	v_add3_u32 v76, v3, v5, s6
	s_mov_b32 s6, s4
	v_lshlrev_b32_e32 v5, 3, v0
	v_and_b32_e32 v6, 0x90, v6
	v_and_b32_e32 v7, 0x90, v7
	v_lshlrev_b32_e32 v9, 4, v0
	v_and_b32_e32 v8, 0x110, v8
	v_and_b32_e32 v5, 0x778, v5
	v_mul_lo_u32 v3, s19, v1
	v_lshl_or_b32 v1, v40, 9, v1
	v_and_b32_e32 v9, 0xe00, v9
	v_xor_b32_e32 v8, v7, v8
	v_xor_b32_e32 v5, v6, v5
	v_and_or_b32 v6, 0x160, v10, v7
	v_or_b32_e32 v7, s18, v40
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v10, 32, v10
	v_or3_b32 v2, v2, v9, v8
	v_mov_b32_e32 v72, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v8, 16, v7
	v_or_b32_e32 v13, 32, v7
	v_or_b32_e32 v15, 48, v7
	v_mul_lo_u32 v77, v7, s1
	v_lshrrev_b32_e32 v7, 6, v0
	v_mul_lo_u32 v78, v8, s1
	v_mul_lo_u32 v79, v13, s1
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v8, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 2, v7
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v13, 1, v41
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v8, 0x1c0, v8
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v7, 0, v7
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v82, 0, v13
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v4, 4, v40
	v_xor_b32_e32 v11, 0x90, v1
	v_xor_b32_e32 v9, 0x110, v1
	v_xor_b32_e32 v12, 16, v6
	v_xor_b32_e32 v14, 16, v2
	v_mul_lo_u32 v80, v15, s1
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v15, 28, v0
	v_add3_u32 v16, v7, v8, v10
	v_add3_u32 v10, v82, v13, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v8, v3, v4, s2
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v83, 0, v5
	v_add_nc_u32_e32 v84, 0, v1
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v87, 0, v6
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v89, 0, v2
	v_dual_mov_b32 v0, s4 :: v_dual_add_nc_u32 v85, 0, v11
	v_mov_b32_e32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v86, 0, v9
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v88, 0, v12
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v90, 0, v14
	v_dual_mov_b32 v1, s5 :: v_dual_mov_b32 v2, s6
	v_dual_mov_b32 v3, s7 :: v_dual_mov_b32 v4, s8
	v_dual_mov_b32 v5, s9 :: v_dual_mov_b32 v6, s10
	v_mov_b32_e32 v7, s11
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v91, v16, v15
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v92, v10, v15
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s28, s19, 5
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
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b32 s5, s5, 6
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_mad_u64_u32 v[93:94], null, s5, s19, v[8:9]
	s_or_b32 s6, s5, 32
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v97, s19, v93
	v_add_nc_u32_e32 v101, s28, v93
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[93:96], v93, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v97, s[24:27], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v102, s19, v101
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v103, v97, v93, 0x5010400
	v_perm_b32 v104, v97, v93, 0x7030602
	v_perm_b32 v105, v98, v94, 0x5010400
	v_perm_b32 v106, v98, v94, 0x7030602
	v_perm_b32 v107, v99, v95, 0x5010400
	v_perm_b32 v108, v99, v95, 0x7030602
	v_perm_b32 v109, v100, v96, 0x5010400
	v_perm_b32 v110, v100, v96, 0x7030602
	s_clause 0x1
	buffer_load_b128 v[93:96], v101, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v102, s[24:27], 0 offen
	v_lshrrev_b32_e32 v101, 24, v110
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v101.l, 8, v101.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v102, v97, v93, 0x5010400
	v_perm_b32 v111, v97, v93, 0x7030602
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v93, s5, v76
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v112, v98, v94, 0x5010400
	v_perm_b32 v113, v98, v94, 0x7030602
	v_perm_b32 v114, v99, v95, 0x5010400
	v_perm_b32 v115, v99, v95, 0x7030602
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[93:94], v93, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v95, 24, v104
	v_perm_b32 v116, v100, v96, 0x5010400
	v_perm_b32 v117, v100, v96, 0x7030602
	v_lshrrev_b32_e32 v96, 24, v105
	v_lshrrev_b32_e32 v97, 24, v106
	v_lshlrev_b16 v95.l, 8, v95.l
	v_lshrrev_b32_e32 v98, 24, v107
	v_lshrrev_b32_e32 v99, 24, v108
	v_lshlrev_b16 v96.l, 8, v96.l
	v_lshlrev_b16 v97.l, 8, v97.l
	v_lshrrev_b32_e32 v100, 24, v109
	v_lshlrev_b16 v98.l, 8, v98.l
	v_lshlrev_b16 v99.l, 8, v99.l
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v100.l, 8, v100.l
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s7, s5, s19
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v83, v[93:94] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v94, 8, v103
	v_and_b16 v93.l, 0xff, v103.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v93.h, 8, v94.l
	v_lshrrev_b32_e32 v94, 24, v103
	v_or_b16 v93.l, v93.l, v93.h
	v_and_b16 v93.h, 0xff, v103.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v94.l, 8, v94.l
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v103, s6, v76
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v93.h, v93.h, v94.l
	v_lshrrev_b32_e32 v94, 8, v104
	v_and_b16 v94.h, 0xff, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v94.l, 8, v94.l
	v_or_b16 v94.l, v94.h, v94.l
	v_and_b16 v94.h, 0xff, v104.h
	v_lshrrev_b32_e32 v104, 24, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v94.h, v94.h, v95.l
	v_lshrrev_b32_e32 v95, 8, v105
	v_and_b16 v95.h, 0xff, v105.l
	v_lshlrev_b16 v95.l, 8, v95.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v95.l, v95.h, v95.l
	v_and_b16 v95.h, 0xff, v105.h
	v_or_b16 v95.h, v95.h, v96.l
	v_lshrrev_b32_e32 v96, 8, v106
	v_and_b16 v96.h, 0xff, v106.l
	ds_store_b16 v84, v93
	ds_store_b16_d16_hi v84, v93 offset:32
	ds_store_b16 v84, v94 offset:64
	ds_store_b16_d16_hi v84, v94 offset:96
	ds_store_b16 v85, v95
	ds_store_b16_d16_hi v85, v95 offset:32
	v_and_b16 v93.h, 0xff, v102.h
	v_and_b16 v93.l, 0xff, v102.l
	v_lshlrev_b16 v96.l, 8, v96.l
	v_and_b16 v94.l, 0xff, v111.l
	v_and_b16 v95.l, 0xff, v112.l
	v_and_b16 v94.h, 0xff, v111.h
	v_and_b16 v95.h, 0xff, v112.h
	v_or_b16 v96.l, v96.h, v96.l
	v_and_b16 v96.h, 0xff, v106.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v96.h, v96.h, v97.l
	v_lshrrev_b32_e32 v97, 8, v107
	v_and_b16 v97.h, 0xff, v107.l
	ds_store_b16 v85, v96 offset:64
	ds_store_b16_d16_hi v85, v96 offset:96
	v_lshlrev_b16 v97.l, 8, v97.l
	v_lshrrev_b32_e32 v96, 8, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v97.l, v97.h, v97.l
	v_and_b16 v97.h, 0xff, v107.h
	v_lshlrev_b16 v96.l, 8, v96.l
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v97.h, v97.h, v98.l
	v_lshrrev_b32_e32 v98, 8, v108
	v_and_b16 v98.h, 0xff, v108.l
	ds_store_b16 v86, v97
	v_or_b16 v93.l, v93.l, v96.l
	v_and_b16 v96.l, 0xff, v113.l
	v_lshlrev_b16 v98.l, 8, v98.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v98.l, v98.h, v98.l
	v_and_b16 v98.h, 0xff, v108.h
	ds_store_b16_d16_hi v86, v97 offset:32
	v_lshrrev_b32_e32 v97, 24, v102
	v_lshrrev_b32_e32 v102, 8, v113
	v_or_b16 v98.h, v98.h, v99.l
	v_lshrrev_b32_e32 v99, 8, v109
	v_and_b16 v99.h, 0xff, v109.l
	ds_store_b16 v86, v98 offset:64
	v_lshlrev_b16 v96.h, 8, v97.l
	ds_store_b16_d16_hi v86, v98 offset:96
	v_lshlrev_b16 v99.l, 8, v99.l
	v_lshrrev_b32_e32 v98, 8, v111
	v_lshlrev_b16 v98.h, 8, v104.l
	v_or_b16 v93.h, v93.h, v96.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v99.l, v99.h, v99.l
	v_and_b16 v99.h, 0xff, v109.h
	v_lshlrev_b16 v96.h, 8, v98.l
	v_lshlrev_b16 v98.l, 8, v102.l
	v_lshrrev_b32_e32 v102, 24, v115
	v_or_b16 v99.h, v99.h, v100.l
	v_lshrrev_b32_e32 v100, 8, v110
	v_and_b16 v100.h, 0xff, v110.l
	ds_store_b16 v84, v99 offset:384
	v_or_b16 v94.l, v94.l, v96.h
	v_and_b16 v96.h, 0xff, v113.h
	v_lshlrev_b16 v100.l, 8, v100.l
	v_or_b16 v96.l, v96.l, v98.l
	v_and_b16 v98.l, 0xff, v115.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v96.h, v96.h, v98.h
	v_or_b16 v100.l, v100.h, v100.l
	v_and_b16 v100.h, 0xff, v110.h
	ds_store_b16_d16_hi v84, v99 offset:416
	v_lshrrev_b32_e32 v99, 8, v112
	v_or_b16 v100.h, v100.h, v101.l
	v_lshrrev_b32_e32 v101, 24, v111
	ds_store_b16 v84, v100 offset:448
	v_lshlrev_b16 v97.h, 8, v99.l
	v_lshrrev_b32_e32 v99, 8, v114
	ds_store_b16_d16_hi v84, v100 offset:480
	v_lshrrev_b32_e32 v100, 24, v112
	v_lshlrev_b16 v97.l, 8, v101.l
	v_or_b16 v95.l, v95.l, v97.h
	v_lshrrev_b32_e32 v101, 8, v115
	v_lshlrev_b16 v98.h, 8, v99.l
	v_lshlrev_b16 v97.h, 8, v100.l
	v_lshrrev_b32_e32 v100, 24, v114
	v_or_b16 v94.h, v94.h, v97.l
	v_and_b16 v97.l, 0xff, v114.l
	v_lshlrev_b16 v99.h, 8, v101.l
	v_or_b16 v95.h, v95.h, v97.h
	v_and_b16 v97.h, 0xff, v114.h
	v_lshlrev_b16 v99.l, 8, v100.l
	v_lshrrev_b32_e32 v100, 8, v116
	v_or_b16 v97.l, v97.l, v98.h
	v_and_b16 v98.h, 0xff, v115.h
	v_or_b16 v98.l, v98.l, v99.h
	v_or_b16 v97.h, v97.h, v99.l
	v_and_b16 v99.l, 0xff, v116.l
	v_lshlrev_b16 v99.h, 8, v102.l
	v_lshrrev_b32_e32 v101, 24, v116
	v_lshlrev_b16 v100.l, 8, v100.l
	v_lshrrev_b32_e32 v102, 8, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v98.h, v98.h, v99.h
	v_and_b16 v99.h, 0xff, v116.h
	v_or_b16 v99.l, v99.l, v100.l
	v_lshlrev_b16 v100.l, 8, v101.l
	v_lshlrev_b16 v100.h, 8, v102.l
	v_lshrrev_b32_e32 v101, 24, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v99.h, v99.h, v100.l
	v_and_b16 v100.l, 0xff, v117.l
	v_lshlrev_b16 v101.l, 8, v101.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v100.l, v100.l, v100.h
	v_and_b16 v100.h, 0xff, v117.h
	v_or_b16 v100.h, v100.h, v101.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[101:102], v103, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v83, v[101:102] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v84, v93 offset:8192
	ds_store_b16_d16_hi v84, v93 offset:8224
	ds_store_b16 v84, v94 offset:8256
	ds_store_b16_d16_hi v84, v94 offset:8288
	ds_store_b16 v85, v95 offset:8192
	ds_store_b16_d16_hi v85, v95 offset:8224
	ds_store_b16 v85, v96 offset:8256
	ds_store_b16_d16_hi v85, v96 offset:8288
	ds_store_b16 v86, v97 offset:8192
	ds_store_b16_d16_hi v86, v97 offset:8224
	ds_store_b16 v86, v98 offset:8256
	ds_store_b16_d16_hi v86, v98 offset:8288
	ds_store_b16 v84, v99 offset:8576
	ds_store_b16_d16_hi v84, v99 offset:8608
	ds_store_b16 v84, v100 offset:8640
	ds_store_b16_d16_hi v84, v100 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[171:174], v89 offset:4096
	ds_load_b128 v[175:178], v90 offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[105:108], v89
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[109:112], v88 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[163:166], v90
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[171:174], v[101:104], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[163:166], v[109:112], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[175:178], v[109:112], v[93:100] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:16896
	ds_load_b128 v[109:112], v88 offset:16896
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v114, v94
	v_cvt_f32_i32_e32 v94, v99
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[171:174], v[101:104], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[163:166], v[109:112], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[175:178], v[109:112], v[131:138] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:17408
	ds_load_b128 v[109:112], v88 offset:17408
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v113, v133
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[171:174], v[101:104], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[163:166], v[109:112], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[175:178], v[109:112], v[147:154] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:17920
	ds_load_b128 v[109:112], v88 offset:17920
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v99, v153
	v_cvt_f32_i32_e32 v153, v121
	v_cvt_f32_i32_e32 v121, v126
	v_cvt_f32_i32_e32 v126, v139
	v_cvt_f32_i32_e32 v133, v147
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[109:112], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[171:174], v[101:104], v[0:7] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v101, v81, s7, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v102, v78, s5, 1
	v_add_lshl_u32 v103, v79, s5, 1
	v_add_lshl_u32 v104, v80, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[163:170], v[175:178], v[109:112], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v139, v156
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v101, v101, s[12:15], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v147, v166
	v_cvt_f32_i32_e32 v156, v160
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v91, v101 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v101, v77, s5, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s19
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	s_clause 0x3
	buffer_load_u16 v243, v101, s[8:11], 0 offen
	buffer_load_u16 v244, v102, s[8:11], 0 offen
	buffer_load_u16 v245, v103, s[8:11], 0 offen
	buffer_load_u16 v246, v104, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[235:238], v89 offset:12288
	ds_load_b128 v[239:242], v90 offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[105:108], v89 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[109:112], v88 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[227:230], v90 offset:8192
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	s_cmp_lg_u32 s4, s0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[235:238], v[101:104], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[227:230], v[109:112], v[171:178] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[239:242], v[109:112], v[179:186] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:18944
	ds_load_b128 v[109:112], v88 offset:18944
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v160, v180
	v_cvt_f32_i32_e32 v166, v186
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[235:238], v[101:104], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[227:230], v[109:112], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[239:242], v[109:112], v[195:202] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:19456
	ds_load_b128 v[109:112], v88 offset:19456
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v180, v200
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v194, v194
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[203:210], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[235:238], v[101:104], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[203:210], v[227:230], v[109:112], v[203:210] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[239:242], v[109:112], v[211:218] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[101:104], v87 offset:19968
	ds_load_b128 v[109:112], v88 offset:19968
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v186, v214
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v210, v210
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[105:108], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v105, v135
	v_cvt_f32_i32_e32 v135, v149
	v_cvt_f32_i32_e32 v149, v117
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[227:230], v[109:112], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[235:238], v[101:104], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v170
	v_cvt_f32_i32_e32 v170, v198
	v_cvt_f32_i32_e32 v198, v218
	v_cvt_f32_i32_e32 v218, v223
	v_wmma_i32_16x16x16_iu8 v[227:234], v[239:242], v[109:112], v[227:234] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v109, v134
	v_cvt_f32_i32_e32 v134, v148
	v_cvt_f32_i32_e32 v112, v150
	v_cvt_f32_i32_e32 v111, v167
	v_cvt_f32_i32_e32 v148, v116
	v_cvt_f32_i32_e32 v150, v118
	v_cvt_f32_i32_e32 v167, v195
	v_cvt_f32_i32_e32 v195, v215
	v_cvt_f32_i32_e32 v215, v220
	v_cvt_f32_i32_e32 v220, v224
	v_cvt_f32_i32_e32 v107, v168
	v_cvt_f32_i32_e32 v168, v196
	v_cvt_f32_i32_e32 v196, v216
	v_cvt_f32_i32_e32 v216, v221
	v_cvt_f32_i32_e32 v221, v225
	v_cvt_f32_i32_e32 v101, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v154
	v_cvt_f32_i32_e32 v154, v122
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v108, v151
	v_cvt_f32_i32_e32 v103, v169
	v_cvt_f32_i32_e32 v151, v119
	v_cvt_f32_i32_e32 v119, v124
	v_cvt_f32_i32_e32 v169, v197
	v_cvt_f32_i32_e32 v197, v217
	v_cvt_f32_i32_e32 v217, v222
	v_cvt_f32_i32_e32 v222, v226
	v_cvt_f32_i32_e32 v123, v140
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v143, v146
	v_cvt_f32_i32_e32 v146, v159
	v_cvt_f32_i32_e32 v159, v179
	v_cvt_f32_i32_e32 v179, v199
	v_cvt_f32_i32_e32 v199, v227
	v_cvt_f32_i32_e32 v104, v152
	v_cvt_f32_i32_e32 v152, v120
	v_cvt_f32_i32_e32 v120, v125
	v_cvt_f32_i32_e32 v124, v141
	v_cvt_f32_i32_e32 v141, v144
	v_cvt_f32_i32_e32 v144, v157
	v_cvt_f32_i32_e32 v125, v142
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v145, v158
	v_cvt_f32_i32_e32 v219, v219
	v_cvt_f32_i32_e32 v110, v95
	v_cvt_f32_i32_e32 v106, v96
	v_cvt_f32_i32_e32 v96, v137
	v_cvt_f32_i32_e32 v137, v164
	v_cvt_f32_i32_e32 v95, v138
	v_cvt_f32_i32_e32 v138, v165
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v235, v93
	v_cvt_f32_i32_e32 v93, v100
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v162, v182
	v_cvt_f32_i32_e32 v164, v184
	v_cvt_f32_i32_e32 v184, v212
	v_cvt_f32_i32_e32 v182, v202
	v_cvt_f32_i32_e32 v202, v230
	v_cvt_f32_i32_e32 v100, v136
	v_cvt_f32_i32_e32 v200, v228
	v_cvt_f32_i32_e32 v212, v232
	v_cvt_f32_i32_e32 v214, v234
	v_cvt_f32_i32_e32 v161, v181
	v_cvt_f32_i32_e32 v181, v201
	v_cvt_f32_i32_e32 v136, v163
	v_cvt_f32_i32_e32 v163, v183
	v_cvt_f32_i32_e32 v183, v211
	v_cvt_f32_i32_e32 v211, v231
	v_cvt_f32_i32_e32 v165, v185
	v_cvt_f32_i32_e32 v185, v213
	v_cvt_f32_i32_e32 v201, v229
	v_cvt_f32_i32_e32 v213, v233
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v223, 16, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v224, v115, v223
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[115:118], v82 offset:20480
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v225, 16, v115
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v68, v224, v225 :: v_dual_lshlrev_b32 v227, 16, v246
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v224, 16, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v119, v224, v119 :: v_dual_lshlrev_b32 v226, 16, v245
	v_mul_f32_e32 v122, v122, v224
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v59, v122, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v126, v226
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v126, 16, v116
	v_and_b32_e32 v116, 0xffff0000, v116
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v42, v122, v225
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v155, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v58, v119, v126 :: v_dual_mul_f32 v119, v226, v123
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v123, v81, s6, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v114, v223, v114 :: v_dual_and_b32 v115, 0xffff0000, v115
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v24, v122, v225
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v223, v148
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v39, v119, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v119, v227, v139
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v123, 0x80000000, v123, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v97, v223, v97
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v75, v122, v126 :: v_dual_lshlrev_b32 v122, 16, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v119, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v119, v223, v149
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v117, 0xffff0000, v117
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v93, v223, v93 :: v_dual_fmac_f32 v66, v114, v116
	v_mul_f32_e32 v114, v224, v132
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v74, v119, v122 :: v_dual_mul_f32 v119, v224, v120
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v120, 16, v118
	v_and_b32_e32 v118, 0xffff0000, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v50, v114, v116
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v114, v226, v134
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v57, v119, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v119, v226, v124 :: v_dual_mul_f32 v110, v223, v110
	v_mul_f32_e32 v101, v223, v101
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v31, v114, v116 :: v_dual_mul_f32 v114, v227, v137
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v38, v119, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v119, v227, v144
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v65, v110, v117
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v110, v224, v113
	v_mul_f32_e32 v106, v223, v106
	v_mul_f32_e32 v94, v223, v94
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v22, v119, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v119, v223, v150
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v122, v80, s5, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v49, v110, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v110, v226, v135 :: v_dual_fmac_f32 v73, v119, v120
	v_mul_f32_e32 v119, v224, v121
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v121, v79, s5, 1
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v30, v110, v117
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v110, v227, v138
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v56, v119, v120 :: v_dual_mul_f32 v119, v226, v125
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v121, 0x80000000, v121, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v14, v110, v117 :: v_dual_fmac_f32 v37, v119, v120
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v119, v227, v145
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v21, v119, v120
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v119, v77, s5, 1
	v_add_lshl_u32 v120, v78, s5, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v123, v123, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v124, v119, s[8:11], 0 offen
	buffer_load_u16 v139, v120, s[8:11], 0 offen
	buffer_load_u16 v144, v121, s[8:11], 0 offen
	buffer_load_u16 v145, v122, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[119:122], v82 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v148, 16, v124
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v92, v123 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[123:126], v82 offset:20480
	v_mul_f32_e32 v149, v171, v148
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v113, v144, v183
	v_mul_f32_e32 v117, v144, v195
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v68, v149, v123 :: v_dual_mul_f32 v149, v148, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v149, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v149, v148, v173
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v74, v149, v125 :: v_dual_mul_f32 v149, v148, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v149, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v149, v187, v139
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v59, v149, v123
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v149, v139, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v58, v149, v124 :: v_dual_mul_f32 v149, v139, v189
	v_fmac_f32_e32 v57, v149, v125
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v149, v139, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v56, v149, v126 :: v_dual_mul_f32 v149, v203, v144
	v_dual_fmac_f32 v42, v149, v123 :: v_dual_mul_f32 v149, v144, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v149, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v149, v144, v205
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v38, v149, v125 :: v_dual_mul_f32 v149, v144, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v149, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v149, v219, v145
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v24, v149, v123
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v145, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v23, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v123, v145, v216 :: v_dual_lshlrev_b32 v124, 16, v119
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v64, v106, v118 :: v_dual_and_b32 v119, 0xffff0000, v119
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v106, v224, v109
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v22, v123, v125
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v145, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v63, v101, v119
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v101, v224, v105 :: v_dual_fmac_f32 v48, v106, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v106, v226, v112 :: v_dual_fmac_f32 v21, v123, v126
	v_mul_f32_e32 v123, v223, v151
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v46, v101, v119 :: v_dual_mul_f32 v101, v226, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v29, v106, v118 :: v_dual_mul_f32 v106, v227, v147
	v_dual_fmac_f32 v72, v123, v124 :: v_dual_mul_f32 v123, v224, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v101, v119
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v101, v227, v111
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v13, v106, v118 :: v_dual_mul_f32 v118, v144, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v226, v140
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v36, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v227, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v20, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v223, v152
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v124, 16, v120
	v_and_b32_e32 v120, 0xffff0000, v120
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v71, v123, v124
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v224, v128
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v62, v97, v120
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v97, v224, v100
	v_mul_f32_e32 v100, v148, v162
	v_mul_f32_e32 v128, v145, v214
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v54, v123, v124 :: v_dual_mul_f32 v123, v226, v141
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v106, v139, v168
	v_mul_f32_e32 v110, v139, v180
	v_mul_f32_e32 v108, v139, v170
	v_mul_f32_e32 v109, v139, v179
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v35, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v227, v156
	v_dual_mul_f32 v112, v139, v182 :: v_dual_fmac_f32 v45, v97, v120
	v_dual_mul_f32 v97, v226, v104 :: v_dual_mul_f32 v104, v148, v166
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v19, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v223, v153
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v124, 16, v121
	v_and_b32_e32 v121, 0xffff0000, v121
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v111, v139, v181
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v27, v97, v120
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v97, v227, v107
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v70, v123, v124 :: v_dual_mul_f32 v123, v224, v129
	v_dual_fmac_f32 v61, v94, v121 :: v_dual_mul_f32 v94, v224, v96
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v96, v227, v102
	v_mul_f32_e32 v102, v148, v164
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v11, v97, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v97, v148, v159 :: v_dual_fmac_f32 v44, v94, v121
	v_dual_mul_f32 v94, v226, v99 :: v_dual_fmac_f32 v53, v123, v124
	v_mul_f32_e32 v123, v226, v142
	v_mul_f32_e32 v99, v148, v161
	v_dual_mul_f32 v105, v139, v167 :: v_dual_fmac_f32 v26, v94, v121
	v_mul_f32_e32 v94, v227, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v34, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v227, v157
	v_mul_f32_e32 v103, v148, v165
	v_mul_f32_e32 v107, v139, v169
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v10, v94, v121
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v94, v224, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v18, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v223, v154
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v124, 16, v122
	v_and_b32_e32 v122, 0xffff0000, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v95, v226, v98 :: v_dual_mul_f32 v98, v148, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v12, v101, v119 :: v_dual_fmac_f32 v69, v123, v124
	v_fmac_f32_e32 v60, v93, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v224, v130
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v43, v94, v122
	v_fmac_f32_e32 v25, v95, v122
	v_fmac_f32_e32 v9, v96, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[93:96], v82 offset:20992
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v52, v123, v124 :: v_dual_mul_f32 v123, v226, v143
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v145, v200
	v_mul_f32_e32 v121, v145, v199
	v_mul_f32_e32 v101, v148, v163
	v_mul_f32_e32 v119, v144, v197
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v33, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v227, v158
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v120, v144, v198 :: v_dual_fmac_f32 v17, v123, v124
	ds_load_b128 v[123:126], v82 offset:20496
	v_mul_f32_e32 v127, v148, v175
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v64, v100, v96
	v_fmac_f32_e32 v48, v108, v96
	v_fmac_f32_e32 v50, v106, v94
	v_dual_fmac_f32 v66, v98, v94 :: v_dual_fmac_f32 v65, v99, v95
	v_fmac_f32_e32 v49, v107, v95
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v72, v127, v123 :: v_dual_mul_f32 v127, v148, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v127, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v148, v177
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v70, v127, v125 :: v_dual_mul_f32 v127, v148, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v127, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v139, v191
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v55, v127, v123
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v139, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v54, v127, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v139, v193
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v53, v127, v125
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v139, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v52, v127, v126 :: v_dual_mul_f32 v127, v144, v207
	v_dual_fmac_f32 v36, v127, v123 :: v_dual_mul_f32 v127, v144, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v127, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v144, v209
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v34, v127, v125 :: v_dual_mul_f32 v127, v144, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v127, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v145, v218
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v20, v127, v123 :: v_dual_mul_f32 v123, v145, v220
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v127, v145, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v19, v123, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v145, v221
	v_mul_f32_e32 v124, v145, v202
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v18, v123, v125 :: v_dual_mul_f32 v123, v145, v222
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v125, v145, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v13, v124, v96
	v_fmac_f32_e32 v17, v123, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v123, v223, v235 :: v_dual_mul_f32 v126, v145, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v67, v123, v115
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v224, v131
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v67, v97, v93
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[97:100], v82 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v51, v123, v115
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v226, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v32, v123, v115
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v123, v227, v136 :: v_dual_fmac_f32 v32, v113, v93
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v16, v123, v115 :: v_dual_mul_f32 v115, v144, v185
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v145, v201
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v15, v114, v116
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v114, v144, v184
	v_mul_f32_e32 v116, v144, v186
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v30, v115, v95 :: v_dual_fmac_f32 v63, v101, v97
	v_dual_fmac_f32 v62, v102, v98 :: v_dual_fmac_f32 v61, v103, v99
	v_fmac_f32_e32 v60, v104, v100
	v_dual_fmac_f32 v46, v109, v97 :: v_dual_fmac_f32 v45, v110, v98
	v_dual_fmac_f32 v44, v111, v99 :: v_dual_fmac_f32 v43, v112, v100
	v_dual_fmac_f32 v29, v116, v96 :: v_dual_fmac_f32 v28, v117, v97
	v_dual_fmac_f32 v27, v118, v98 :: v_dual_fmac_f32 v26, v119, v99
	v_fmac_f32_e32 v31, v114, v94
	v_dual_fmac_f32 v25, v120, v100 :: v_dual_fmac_f32 v16, v121, v93
	v_dual_fmac_f32 v14, v123, v95 :: v_dual_fmac_f32 v15, v122, v94
	v_fmac_f32_e32 v12, v125, v97
	v_fmac_f32_e32 v51, v105, v93
	v_dual_fmac_f32 v11, v126, v98 :: v_dual_fmac_f32 v10, v127, v99
	v_fmac_f32_e32 v9, v128, v100
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, s28
	v_mov_b32_e32 v3, v47
.LBB0_7:                                ; %._crit_edge
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v0, 1, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v7, v68, 16, 1
	v_bfe_u32 v8, v75, 16, 1
	v_bfe_u32 v41, v73, 16, 1
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v2, s19, v40
	s_mul_i32 s18, s18, s19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v40, v74, 16, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v4, s18, s2, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v68, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v8, v75, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v75, v75
	v_add3_u32 v41, v73, v41, 0x7fff
	v_cmp_o_f32_e64 s2, v73, v73
	v_bfe_u32 v47, v72, 16, 1
	v_add3_u32 v40, v74, v40, 0x7fff
	v_cmp_o_f32_e64 s1, v74, v74
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v41.h, s2
	v_add3_u32 v41, v72, v47, 0x7fff
	v_bfe_u32 v47, v70, 16, 1
	v_bfe_u32 v68, v69, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v40.h, s1
	v_bfe_u32 v40, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_add3_u32 v47, v70, v47, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	v_add3_u32 v68, v69, v68, 0x7fff
	v_cmp_o_f32_e64 s2, v69, v69
	v_add3_u32 v40, v71, v40, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v41.h, vcc_lo
	v_bfe_u32 v41, v67, 16, 1
	v_cmp_o_f32_e64 s0, v71, v71
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v47.h, 0x7fff, v68.h, s2
	v_bfe_u32 v68, v66, 16, 1
	v_bfe_u32 v69, v65, 16, 1
	v_add3_u32 v41, v67, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_bfe_u32 v67, v64, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s0
	v_add3_u32 v68, v66, v68, 0x7fff
	v_cmp_o_f32_e64 s0, v66, v66
	v_add3_u32 v66, v65, v69, 0x7fff
	v_cmp_o_f32_e64 s1, v65, v65
	v_add3_u32 v65, v64, v67, 0x7fff
	v_cmp_o_f32_e64 s2, v64, v64
	v_bfe_u32 v64, v63, 16, 1
	v_bfe_u32 v67, v61, 16, 1
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s1
	v_bfe_u32 v66, v62, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v41.h, vcc_lo
	v_add3_u32 v64, v63, v64, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_bfe_u32 v63, v60, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v68.h, s0
	v_add3_u32 v66, v62, v66, 0x7fff
	v_cmp_o_f32_e64 s0, v62, v62
	v_add3_u32 v62, v61, v67, 0x7fff
	v_cmp_o_f32_e64 s1, v61, v61
	v_add3_u32 v61, v60, v63, 0x7fff
	v_bfe_u32 v63, v59, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v60, v60
	v_cndmask_b16 v60.l, 0x7fff, v64.h, vcc_lo
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s1
	v_bfe_u32 v62, v58, 16, 1
	v_bfe_u32 v64, v57, 16, 1
	v_add3_u32 v63, v59, v63, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_bfe_u32 v59, v56, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s0
	v_add3_u32 v62, v58, v62, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v58, v57, v64, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_add3_u32 v57, v56, v59, 0x7fff
	v_bfe_u32 v59, v55, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s2
	v_cmp_o_f32_e64 s2, v56, v56
	v_cndmask_b16 v56.h, 0x7fff, v62.h, s0
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s1
	v_bfe_u32 v58, v54, 16, 1
	v_bfe_u32 v62, v53, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v63.h, vcc_lo
	v_add3_u32 v59, v55, v59, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_bfe_u32 v55, v52, 16, 1
	v_add3_u32 v58, v54, v58, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_add3_u32 v54, v53, v62, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_add3_u32 v53, v52, v55, 0x7fff
	v_bfe_u32 v55, v51, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s2
	v_cmp_o_f32_e64 s2, v52, v52
	v_cndmask_b16 v52.h, 0x7fff, v58.h, s0
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s1
	v_bfe_u32 v54, v50, 16, 1
	v_bfe_u32 v58, v49, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v59.h, vcc_lo
	v_add3_u32 v55, v51, v55, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v51, v48, 16, 1
	v_add3_u32 v54, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_add3_u32 v50, v49, v58, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_add3_u32 v49, v48, v51, 0x7fff
	v_bfe_u32 v51, v46, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s2
	v_cmp_o_f32_e64 s2, v48, v48
	v_cndmask_b16 v48.h, 0x7fff, v54.h, s0
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s1
	v_bfe_u32 v50, v45, 16, 1
	v_bfe_u32 v54, v44, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v55.h, vcc_lo
	v_add3_u32 v51, v46, v51, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_bfe_u32 v46, v43, 16, 1
	v_add3_u32 v50, v45, v50, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	v_add3_u32 v45, v44, v54, 0x7fff
	v_cmp_o_f32_e64 s1, v44, v44
	v_add3_u32 v44, v43, v46, 0x7fff
	v_bfe_u32 v46, v42, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s2
	v_cmp_o_f32_e64 s2, v43, v43
	v_cndmask_b16 v43.h, 0x7fff, v50.h, s0
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s1
	v_bfe_u32 v45, v39, 16, 1
	v_bfe_u32 v50, v38, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v51.h, vcc_lo
	v_add3_u32 v46, v42, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_bfe_u32 v42, v37, 16, 1
	v_add3_u32 v45, v39, v45, 0x7fff
	v_cmp_o_f32_e64 s0, v39, v39
	v_add3_u32 v39, v38, v50, 0x7fff
	v_cmp_o_f32_e64 s1, v38, v38
	v_add3_u32 v38, v37, v42, 0x7fff
	v_bfe_u32 v42, v36, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s2
	v_cmp_o_f32_e64 s2, v37, v37
	v_cndmask_b16 v37.h, 0x7fff, v45.h, s0
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s1
	v_bfe_u32 v39, v35, 16, 1
	v_bfe_u32 v45, v34, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v46.h, vcc_lo
	v_add3_u32 v42, v36, v42, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_bfe_u32 v36, v33, 16, 1
	v_add3_u32 v39, v35, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	v_add3_u32 v35, v34, v45, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v34, v33, v36, 0x7fff
	v_bfe_u32 v36, v32, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s2
	v_cmp_o_f32_e64 s2, v33, v33
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s0
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v31, 16, 1
	v_bfe_u32 v39, v30, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v42.h, vcc_lo
	v_add3_u32 v36, v32, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_bfe_u32 v32, v29, 16, 1
	v_add3_u32 v35, v31, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	v_add3_u32 v31, v30, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v30, v30
	v_add3_u32 v30, v29, v32, 0x7fff
	v_bfe_u32 v32, v28, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s2
	v_cmp_o_f32_e64 s2, v29, v29
	v_cndmask_b16 v29.h, 0x7fff, v35.h, s0
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v27, 16, 1
	v_bfe_u32 v35, v26, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v32, v28, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_bfe_u32 v28, v25, 16, 1
	v_add3_u32 v31, v27, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v27, v27
	v_add3_u32 v27, v26, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v26, v26
	v_add3_u32 v26, v25, v28, 0x7fff
	v_bfe_u32 v28, v24, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s2
	v_cmp_o_f32_e64 s2, v25, v25
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s0
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s1
	v_bfe_u32 v27, v23, 16, 1
	v_bfe_u32 v31, v22, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v32.h, vcc_lo
	v_add3_u32 v28, v24, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_bfe_u32 v24, v21, 16, 1
	v_add3_u32 v27, v23, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v23, v23
	v_add3_u32 v23, v22, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v22, v22
	v_add3_u32 v22, v21, v24, 0x7fff
	v_bfe_u32 v24, v20, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s2
	v_cmp_o_f32_e64 s2, v21, v21
	v_cndmask_b16 v21.h, 0x7fff, v27.h, s0
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s1
	v_bfe_u32 v23, v19, 16, 1
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_bfe_u32 v20, v17, 16, 1
	v_add3_u32 v23, v19, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	v_add3_u32 v19, v18, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_add3_u32 v18, v17, v20, 0x7fff
	v_bfe_u32 v20, v16, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s2
	v_cmp_o_f32_e64 s2, v17, v17
	v_cndmask_b16 v17.h, 0x7fff, v23.h, s0
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v15, 16, 1
	v_bfe_u32 v23, v14, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v24.h, vcc_lo
	v_add3_u32 v20, v16, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_bfe_u32 v16, v13, 16, 1
	v_add3_u32 v19, v15, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v15, v14, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v14, v14
	v_add3_u32 v14, v13, v16, 0x7fff
	v_bfe_u32 v16, v12, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s2
	v_cmp_o_f32_e64 s2, v13, v13
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v11, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v19.h, s0
	v_add3_u32 v16, v12, v16, 0x7fff
	v_bfe_u32 v19, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_bfe_u32 v12, v9, 16, 1
	v_add3_u32 v15, v11, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v11, v11
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	v_add3_u32 v11, v10, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	v_add3_u32 v10, v9, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v9, v9
	v_cndmask_b16 v9.l, 0x7fff, v16.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v5, v2, v1
	v_mad_u64_u32 v[0:1], null, s19, 48, v[2:3]
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v3.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s2
	v_dual_cndmask_b32 v10, v40, v7 :: v_dual_cndmask_b32 v7, v7, v40
	v_dual_cndmask_b32 v12, v60, v41 :: v_dual_cndmask_b32 v15, v41, v60
	v_dual_cndmask_b32 v32, v44, v49 :: v_dual_cndmask_b32 v39, v26, v30
	v_cndmask_b32_e32 v40, v17, v21, vcc_lo
	v_cndmask_b32_e32 v17, v21, v17, vcc_lo
	v_dual_cndmask_b32 v41, v18, v22 :: v_dual_cndmask_b32 v42, v9, v13
	v_cndmask_b32_e32 v9, v13, v9, vcc_lo
	v_mov_b32_e32 v13, 0x5410
	v_mov_b32_e32 v21, 0x7632
	s_mov_b32 s0, 0x76543210
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v1, 0x80, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_cndmask_b32 v11, v47, v8 :: v_dual_cndmask_b32 v16, v61, v65
	v_dual_cndmask_b32 v8, v8, v47 :: v_dual_cndmask_b32 v27, v57, v53
	v_dual_cndmask_b32 v28, v43, v48 :: v_dual_cndmask_b32 v31, v48, v43
	v_dual_cndmask_b32 v36, v33, v37 :: v_dual_cndmask_b32 v43, v3, v14
	v_cndmask_b32_e32 v3, v14, v3, vcc_lo
	v_permlanex16_b32 v14, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v13, vcc_lo
	v_cndmask_b32_e32 v13, 0x3276, v21, vcc_lo
	v_permlanex16_b32 v21, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v19, v65, v61 :: v_dual_cndmask_b32 v20, v52, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v13, 8, v13
	v_dual_cndmask_b32 v23, v56, v52 :: v_dual_cndmask_b32 v24, v53, v57
	v_cndmask_b32_e32 v35, v49, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_dual_cndmask_b32 v33, v37, v33 :: v_dual_and_b32 v8, 0x760076, v8
	v_cndmask_b32_e32 v26, v30, v26, vcc_lo
	v_cndmask_b32_e32 v37, v34, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e32 v34, v38, v34, vcc_lo
	v_cndmask_b32_e32 v38, v25, v29, vcc_lo
	v_dual_cndmask_b32 v25, v29, v25 :: v_dual_cndmask_b32 v18, v22, v18
	v_and_b32_e32 v44, 0x5040504, v7
	v_and_b32_e32 v45, 0x7060706, v8
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v6, s19, 4, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v22, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v14, v10, v44
	v_perm_b32 v8, v14, v10, v45
	v_perm_b32 v9, v21, v11, v44
	v_perm_b32 v10, v21, v11, v45
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v2, v4, v2, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v33, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v15, v12, v44
	v_perm_b32 v12, v15, v12, v45
	v_perm_b32 v13, v19, v16, v44
	v_perm_b32 v14, v19, v16, v45
	v_permlanex16_b32 v35, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v22, v20, v44
	v_perm_b32 v16, v22, v20, v45
	v_perm_b32 v17, v23, v24, v44
	v_perm_b32 v18, v23, v24, v45
	v_perm_b32 v21, v29, v32, v44
	v_perm_b32 v22, v29, v32, v45
	v_perm_b32 v23, v30, v36, v44
	v_perm_b32 v24, v30, v36, v45
	v_perm_b32 v29, v34, v39, v44
	v_perm_b32 v30, v34, v39, v45
	v_add_lshl_u32 v39, v4, v6, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_perm_b32 v19, v27, v28, v44
	v_perm_b32 v20, v27, v28, v45
	s_clause 0x2
	buffer_store_b128 v[7:10], v2, s[16:19], 0 offen
	buffer_store_b128 v[11:14], v2, s[16:19], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[16:19], 0 offen
	v_add_lshl_u32 v2, v1, v6, 1
	v_perm_b32 v25, v31, v37, v44
	v_perm_b32 v26, v31, v37, v45
	v_perm_b32 v27, v33, v38, v44
	v_perm_b32 v28, v33, v38, v45
	v_perm_b32 v37, v3, v43, v44
	v_perm_b32 v38, v3, v43, v45
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_perm_b32 v31, v35, v40, v44
	v_perm_b32 v32, v35, v40, v45
	v_perm_b32 v33, v46, v41, v44
	v_perm_b32 v34, v46, v41, v45
	v_add_lshl_u32 v4, v4, v0, 1
	v_perm_b32 v35, v47, v42, v44
	v_perm_b32 v36, v47, v42, v45
	v_add_lshl_u32 v0, v1, v0, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v2, s[16:19], 0 offen
	buffer_store_b128 v[23:26], v3, s[16:19], 0 offen
	buffer_store_b128 v[27:30], v5, s[16:19], 0 offen
	buffer_store_b128 v[31:34], v4, s[16:19], 0 offen
	buffer_store_b128 v[35:38], v0, s[16:19], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 247
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 247
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9452
; TotalNumSgprs: 31
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 247
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
