	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v76, 4, v0
	v_and_b32_e32 v77, 16, v0
	v_lshlrev_b32_e32 v78, 1, v0
	v_lshlrev_b32_e32 v79, 5, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
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
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
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
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s16, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s4, s9
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s2, s4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s5, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s17, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s6, s15, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v3, s6 :: v_dual_lshlrev_b32 v4, 4, v0
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v1, 16, v0
	v_lshlrev_b32_e32 v5, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow185
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v74, s2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v75, 3, v0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v49, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s17, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s16, 31
.Ltmp16:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s18, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s17, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s18, 27
	v_mul_lo_u32 v2, s16, v2
	s_add_i32 s1, s1, s0
	s_mov_b32 s0, 0
.Ltmp21:
	.loc	1 368 26 is_stmt 1              ; generate_amdgcn.py:368:26
	s_lshl_b32 s24, s3, 6
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	s_mul_i32 s3, s14, s16
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s25, s17, 8
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s26, s1, 5
	s_mov_b32 s1, s0
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v4, 15, v0
	v_lshrrev_b32_e32 v15, 6, v0
	v_bfe_i32 v8, v0, 4, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
.Ltmp24:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v3, 3, v75
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v34, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v80, v2, v3, s3
	s_mov_b32 s3, s0
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v6, 4, v4
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	v_mov_b32_e32 v30, 0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v5, 3, v1
	v_lshlrev_b32_e32 v1, 1, v1
	v_mov_b32_e32 v53, 0
	v_and_b32_e32 v3, 0x110, v3
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v42, 0
	v_mul_lo_u32 v9, s15, v5
	v_lshl_or_b32 v5, v4, 9, v5
	v_or_b32_e32 v4, s14, v4
	v_add_nc_u32_e32 v85, 0, v1
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v38, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v13, 16, v4
	v_or_b32_e32 v14, 32, v4
	v_mul_lo_u32 v81, v4, s26
	v_or_b32_e32 v4, 48, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v73, v9, v6, s2
	s_mov_b32 s2, s0
	v_and_b32_e32 v2, 0x90, v2
	v_lshlrev_b32_e32 v7, 3, v0
	v_lshlrev_b32_e32 v10, 5, v75
	v_and_b32_e32 v11, 0xe00, v76
	v_mul_lo_u32 v82, v13, s26
	v_xor_b32_e32 v3, v2, v3
	v_lshlrev_b32_e32 v13, 2, v0
	v_mul_lo_u32 v84, v4, s26
	v_and_b32_e32 v4, 2, v15
	v_and_b32_e32 v7, 0x778, v7
	v_and_b32_e32 v8, 0x90, v8
	v_and_or_b32 v2, 0x160, v79, v2
	v_or3_b32 v3, v10, v11, v3
	v_mul_lo_u32 v83, v14, s26
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v13, 0x1c0, v13
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v14, 32, v79
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v4, 0, v4
	v_xor_b32_e32 v7, v8, v7
	v_xor_b32_e32 v8, 0x90, v5
	v_xor_b32_e32 v10, 0x110, v5
	v_xor_b32_e32 v11, 16, v2
	v_xor_b32_e32 v12, 16, v3
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v15, 28, v78
	v_add3_u32 v13, v4, v13, v14
	v_add3_u32 v14, v85, v1, v14
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v86, 0, v7
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v87, 0, v5
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v88, 0, v8
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v90, 0, v2
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v92, 0, v3
	v_dual_mov_b32 v8, s7 :: v_dual_add_nc_u32 v89, 0, v10
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v91, 0, v11
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v93, 0, v12
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v7, s6
	v_dual_mov_b32 v6, s5 :: v_dual_mov_b32 v5, s4
	v_dual_mov_b32 v4, s3 :: v_dual_mov_b32 v3, s2
	v_dual_mov_b32 v2, s1 :: v_dual_mov_b32 v1, s0
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v94, v13, v15
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v95, v14, v15
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s27, s15, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s0, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s1, s1, s24
	v_mad_u64_u32 v[96:97], null, s1, s15, v[73:74]
	s_or_b32 s2, s1, 32
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v100, s15, v96
	v_add_nc_u32_e32 v104, s27, v96
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[96:99], v96, s[20:23], 0 offen
	buffer_load_b128 v[100:103], v100, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v105, s15, v104
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v106, v100, v96, 0x5010400
	v_perm_b32 v107, v100, v96, 0x7030602
	v_perm_b32 v108, v101, v97, 0x5010400
	v_perm_b32 v109, v101, v97, 0x7030602
	v_perm_b32 v110, v102, v98, 0x5010400
	v_perm_b32 v111, v102, v98, 0x7030602
	v_perm_b32 v112, v103, v99, 0x5010400
	v_perm_b32 v113, v103, v99, 0x7030602
	s_clause 0x1
	buffer_load_b128 v[96:99], v104, s[20:23], 0 offen
	buffer_load_b128 v[100:103], v105, s[20:23], 0 offen
	v_lshrrev_b32_e32 v104, 24, v113
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v104.l, 8, v104.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v105, v100, v96, 0x5010400
	v_perm_b32 v114, v100, v96, 0x7030602
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v96, s1, v80
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v115, v101, v97, 0x5010400
	v_perm_b32 v116, v101, v97, 0x7030602
	v_perm_b32 v117, v102, v98, 0x5010400
	v_perm_b32 v118, v102, v98, 0x7030602
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[96:97], v96, s[16:19], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v98, 24, v107
	v_perm_b32 v119, v103, v99, 0x5010400
	v_perm_b32 v120, v103, v99, 0x7030602
	v_lshrrev_b32_e32 v99, 24, v108
	v_lshrrev_b32_e32 v100, 24, v109
	v_lshlrev_b16 v98.l, 8, v98.l
	v_lshrrev_b32_e32 v101, 24, v110
	v_lshrrev_b32_e32 v102, 24, v111
	v_lshlrev_b16 v99.l, 8, v99.l
	v_lshlrev_b16 v100.l, 8, v100.l
	v_lshrrev_b32_e32 v103, 24, v112
	v_lshlrev_b16 v101.l, 8, v101.l
	v_lshlrev_b16 v102.l, 8, v102.l
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v103.l, 8, v103.l
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s3, s1, s15
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s26
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v86, v[96:97] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v97, 8, v106
	v_and_b16 v96.l, 0xff, v106.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v96.h, 8, v97.l
	v_lshrrev_b32_e32 v97, 24, v106
	v_or_b16 v96.l, v96.l, v96.h
	v_and_b16 v96.h, 0xff, v106.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v97.l, 8, v97.l
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v106, s2, v80
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v96.h, v96.h, v97.l
	v_lshrrev_b32_e32 v97, 8, v107
	v_and_b16 v97.h, 0xff, v107.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v97.l, 8, v97.l
	v_or_b16 v97.l, v97.h, v97.l
	v_and_b16 v97.h, 0xff, v107.h
	v_lshrrev_b32_e32 v107, 24, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v97.h, v97.h, v98.l
	v_lshrrev_b32_e32 v98, 8, v108
	v_and_b16 v98.h, 0xff, v108.l
	v_lshlrev_b16 v98.l, 8, v98.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v98.l, v98.h, v98.l
	v_and_b16 v98.h, 0xff, v108.h
	v_or_b16 v98.h, v98.h, v99.l
	v_lshrrev_b32_e32 v99, 8, v109
	v_and_b16 v99.h, 0xff, v109.l
	ds_store_b16 v87, v96
	ds_store_b16_d16_hi v87, v96 offset:32
	ds_store_b16 v87, v97 offset:64
	ds_store_b16_d16_hi v87, v97 offset:96
	ds_store_b16 v88, v98
	ds_store_b16_d16_hi v88, v98 offset:32
	v_and_b16 v96.h, 0xff, v105.h
	v_and_b16 v96.l, 0xff, v105.l
	v_lshlrev_b16 v99.l, 8, v99.l
	v_and_b16 v97.l, 0xff, v114.l
	v_and_b16 v98.l, 0xff, v115.l
	v_and_b16 v97.h, 0xff, v114.h
	v_and_b16 v98.h, 0xff, v115.h
	v_or_b16 v99.l, v99.h, v99.l
	v_and_b16 v99.h, 0xff, v109.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v99.h, v99.h, v100.l
	v_lshrrev_b32_e32 v100, 8, v110
	v_and_b16 v100.h, 0xff, v110.l
	ds_store_b16 v88, v99 offset:64
	ds_store_b16_d16_hi v88, v99 offset:96
	v_lshlrev_b16 v100.l, 8, v100.l
	v_lshrrev_b32_e32 v99, 8, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v100.l, v100.h, v100.l
	v_and_b16 v100.h, 0xff, v110.h
	v_lshlrev_b16 v99.l, 8, v99.l
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v100.h, v100.h, v101.l
	v_lshrrev_b32_e32 v101, 8, v111
	v_and_b16 v101.h, 0xff, v111.l
	ds_store_b16 v89, v100
	v_or_b16 v96.l, v96.l, v99.l
	v_and_b16 v99.l, 0xff, v116.l
	v_lshlrev_b16 v101.l, 8, v101.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v101.l, v101.h, v101.l
	v_and_b16 v101.h, 0xff, v111.h
	ds_store_b16_d16_hi v89, v100 offset:32
	v_lshrrev_b32_e32 v100, 24, v105
	v_lshrrev_b32_e32 v105, 8, v116
	v_or_b16 v101.h, v101.h, v102.l
	v_lshrrev_b32_e32 v102, 8, v112
	v_and_b16 v102.h, 0xff, v112.l
	ds_store_b16 v89, v101 offset:64
	v_lshlrev_b16 v99.h, 8, v100.l
	ds_store_b16_d16_hi v89, v101 offset:96
	v_lshlrev_b16 v102.l, 8, v102.l
	v_lshrrev_b32_e32 v101, 8, v114
	v_lshlrev_b16 v101.h, 8, v107.l
	v_or_b16 v96.h, v96.h, v99.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v102.l, v102.h, v102.l
	v_and_b16 v102.h, 0xff, v112.h
	v_lshlrev_b16 v99.h, 8, v101.l
	v_lshlrev_b16 v101.l, 8, v105.l
	v_lshrrev_b32_e32 v105, 24, v118
	v_or_b16 v102.h, v102.h, v103.l
	v_lshrrev_b32_e32 v103, 8, v113
	v_and_b16 v103.h, 0xff, v113.l
	ds_store_b16 v87, v102 offset:384
	v_or_b16 v97.l, v97.l, v99.h
	v_and_b16 v99.h, 0xff, v116.h
	v_lshlrev_b16 v103.l, 8, v103.l
	v_or_b16 v99.l, v99.l, v101.l
	v_and_b16 v101.l, 0xff, v118.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v99.h, v99.h, v101.h
	v_or_b16 v103.l, v103.h, v103.l
	v_and_b16 v103.h, 0xff, v113.h
	ds_store_b16_d16_hi v87, v102 offset:416
	v_lshrrev_b32_e32 v102, 8, v115
	v_or_b16 v103.h, v103.h, v104.l
	v_lshrrev_b32_e32 v104, 24, v114
	ds_store_b16 v87, v103 offset:448
	v_lshlrev_b16 v100.h, 8, v102.l
	v_lshrrev_b32_e32 v102, 8, v117
	ds_store_b16_d16_hi v87, v103 offset:480
	v_lshrrev_b32_e32 v103, 24, v115
	v_lshlrev_b16 v100.l, 8, v104.l
	v_or_b16 v98.l, v98.l, v100.h
	v_lshrrev_b32_e32 v104, 8, v118
	v_lshlrev_b16 v101.h, 8, v102.l
	v_lshlrev_b16 v100.h, 8, v103.l
	v_lshrrev_b32_e32 v103, 24, v117
	v_or_b16 v97.h, v97.h, v100.l
	v_and_b16 v100.l, 0xff, v117.l
	v_lshlrev_b16 v102.h, 8, v104.l
	v_or_b16 v98.h, v98.h, v100.h
	v_and_b16 v100.h, 0xff, v117.h
	v_lshlrev_b16 v102.l, 8, v103.l
	v_lshrrev_b32_e32 v103, 8, v119
	v_or_b16 v100.l, v100.l, v101.h
	v_and_b16 v101.h, 0xff, v118.h
	v_or_b16 v101.l, v101.l, v102.h
	v_or_b16 v100.h, v100.h, v102.l
	v_and_b16 v102.l, 0xff, v119.l
	v_lshlrev_b16 v102.h, 8, v105.l
	v_lshrrev_b32_e32 v104, 24, v119
	v_lshlrev_b16 v103.l, 8, v103.l
	v_lshrrev_b32_e32 v105, 8, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v101.h, v101.h, v102.h
	v_and_b16 v102.h, 0xff, v119.h
	v_or_b16 v102.l, v102.l, v103.l
	v_lshlrev_b16 v103.l, 8, v104.l
	v_lshlrev_b16 v103.h, 8, v105.l
	v_lshrrev_b32_e32 v104, 24, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v102.h, v102.h, v103.l
	v_and_b16 v103.l, 0xff, v120.l
	v_lshlrev_b16 v104.l, 8, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v103.l, v103.l, v103.h
	v_and_b16 v103.h, 0xff, v120.h
	v_or_b16 v103.h, v103.h, v104.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[104:105], v106, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v86, v[104:105] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v87, v96 offset:8192
	ds_store_b16_d16_hi v87, v96 offset:8224
	ds_store_b16 v87, v97 offset:8256
	ds_store_b16_d16_hi v87, v97 offset:8288
	ds_store_b16 v88, v98 offset:8192
	ds_store_b16_d16_hi v88, v98 offset:8224
	ds_store_b16 v88, v99 offset:8256
	ds_store_b16_d16_hi v88, v99 offset:8288
	ds_store_b16 v89, v100 offset:8192
	ds_store_b16_d16_hi v89, v100 offset:8224
	ds_store_b16 v89, v101 offset:8256
	ds_store_b16_d16_hi v89, v101 offset:8288
	ds_store_b16 v87, v102 offset:8576
	ds_store_b16_d16_hi v87, v102 offset:8608
	ds_store_b16 v87, v103 offset:8640
	ds_store_b16_d16_hi v87, v103 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[174:177], v92 offset:4096
	ds_load_b128 v[178:181], v93 offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[108:111], v92
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[112:115], v91 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[166:169], v93
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[174:177], v[104:107], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[166:169], v[112:115], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[178:181], v[112:115], v[96:103] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:16896
	ds_load_b128 v[112:115], v91 offset:16896
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v117, v97
	v_cvt_f32_i32_e32 v97, v102
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[174:177], v[104:107], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[166:169], v[112:115], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[178:181], v[112:115], v[134:141] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:17408
	ds_load_b128 v[112:115], v91 offset:17408
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v116, v136
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[174:177], v[104:107], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[166:169], v[112:115], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[178:181], v[112:115], v[150:157] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:17920
	ds_load_b128 v[112:115], v91 offset:17920
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v102, v156
	v_cvt_f32_i32_e32 v156, v124
	v_cvt_f32_i32_e32 v124, v129
	v_cvt_f32_i32_e32 v129, v142
	v_cvt_f32_i32_e32 v136, v150
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[166:169], v[112:115], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[174:177], v[104:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v104, v74, s3, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v105, v82, s1, 1
	v_add_lshl_u32 v106, v83, s1, 1
	v_add_lshl_u32 v107, v84, s1, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[166:173], v[178:181], v[112:115], v[166:173] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v104, 0x80000000, v104 :: v_dual_cndmask_b32 v105, 0x80000000, v105
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v142, v159
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v104, v104, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v150, v169
	v_cvt_f32_i32_e32 v159, v163
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v94, v104 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v104, v81, s1, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s2, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s26
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s2, s1, s15
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	s_clause 0x3
	buffer_load_u16 v246, v104, s[4:7], 0 offen
	buffer_load_u16 v247, v105, s[4:7], 0 offen
	buffer_load_u16 v248, v106, s[4:7], 0 offen
	buffer_load_u16 v249, v107, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[238:241], v92 offset:12288
	ds_load_b128 v[242:245], v93 offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[108:111], v92 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[112:115], v91 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[230:233], v93 offset:8192
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s0, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	s_cmp_lg_u32 s0, s25
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[238:241], v[104:107], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[230:233], v[112:115], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[242:245], v[112:115], v[182:189] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:18944
	ds_load_b128 v[112:115], v91 offset:18944
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v163, v183
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v169, v189
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[238:241], v[104:107], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[190:197], v[230:233], v[112:115], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[242:245], v[112:115], v[198:205] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:19456
	ds_load_b128 v[112:115], v91 offset:19456
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v183, v203
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v197, v197
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[238:241], v[104:107], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[206:213], v[230:233], v[112:115], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[242:245], v[112:115], v[214:221] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[104:107], v90 offset:19968
	ds_load_b128 v[112:115], v91 offset:19968
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v189, v217
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v212, v212
	v_cvt_f32_i32_e32 v213, v213
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[222:229], v[108:111], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v108, v138
	v_cvt_f32_i32_e32 v138, v152
	v_cvt_f32_i32_e32 v152, v120
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[222:229], v[230:233], v[112:115], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[238:241], v[104:107], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v105, v173
	v_cvt_f32_i32_e32 v173, v201
	v_cvt_f32_i32_e32 v201, v221
	v_cvt_f32_i32_e32 v221, v226
	v_wmma_i32_16x16x16_iu8 v[230:237], v[242:245], v[112:115], v[230:237] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v112, v137
	v_cvt_f32_i32_e32 v137, v151
	v_cvt_f32_i32_e32 v115, v153
	v_cvt_f32_i32_e32 v114, v170
	v_cvt_f32_i32_e32 v151, v119
	v_cvt_f32_i32_e32 v153, v121
	v_cvt_f32_i32_e32 v170, v198
	v_cvt_f32_i32_e32 v198, v218
	v_cvt_f32_i32_e32 v218, v223
	v_cvt_f32_i32_e32 v223, v227
	v_cvt_f32_i32_e32 v110, v171
	v_cvt_f32_i32_e32 v171, v199
	v_cvt_f32_i32_e32 v199, v219
	v_cvt_f32_i32_e32 v219, v224
	v_cvt_f32_i32_e32 v224, v228
	v_cvt_f32_i32_e32 v104, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v157
	v_cvt_f32_i32_e32 v157, v125
	v_cvt_f32_i32_e32 v125, v126
	v_cvt_f32_i32_e32 v111, v154
	v_cvt_f32_i32_e32 v154, v122
	v_cvt_f32_i32_e32 v122, v127
	v_cvt_f32_i32_e32 v106, v172
	v_cvt_f32_i32_e32 v172, v200
	v_cvt_f32_i32_e32 v200, v220
	v_cvt_f32_i32_e32 v220, v225
	v_cvt_f32_i32_e32 v225, v229
	v_cvt_f32_i32_e32 v126, v143
	v_cvt_f32_i32_e32 v143, v146
	v_cvt_f32_i32_e32 v146, v149
	v_cvt_f32_i32_e32 v149, v162
	v_cvt_f32_i32_e32 v162, v182
	v_cvt_f32_i32_e32 v182, v202
	v_cvt_f32_i32_e32 v202, v230
	v_cvt_f32_i32_e32 v107, v155
	v_cvt_f32_i32_e32 v155, v123
	v_cvt_f32_i32_e32 v123, v128
	v_cvt_f32_i32_e32 v127, v144
	v_cvt_f32_i32_e32 v144, v147
	v_cvt_f32_i32_e32 v147, v160
	v_cvt_f32_i32_e32 v128, v145
	v_cvt_f32_i32_e32 v145, v148
	v_cvt_f32_i32_e32 v148, v161
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v113, v98
	v_cvt_f32_i32_e32 v109, v99
	v_cvt_f32_i32_e32 v99, v140
	v_cvt_f32_i32_e32 v140, v167
	v_cvt_f32_i32_e32 v98, v141
	v_cvt_f32_i32_e32 v141, v168
	v_cvt_f32_i32_e32 v238, v96
	v_cvt_f32_i32_e32 v96, v103
	v_cvt_f32_i32_e32 v103, v139
	v_cvt_f32_i32_e32 v160, v164
	v_cvt_f32_i32_e32 v161, v165
	v_cvt_f32_i32_e32 v165, v185
	v_cvt_f32_i32_e32 v167, v187
	v_cvt_f32_i32_e32 v187, v215
	v_cvt_f32_i32_e32 v203, v231
	v_cvt_f32_i32_e32 v215, v235
	v_cvt_f32_i32_e32 v185, v205
	v_cvt_f32_i32_e32 v164, v184
	v_cvt_f32_i32_e32 v205, v233
	v_cvt_f32_i32_e32 v168, v188
	v_cvt_f32_i32_e32 v217, v237
	v_cvt_f32_i32_e32 v139, v166
	v_cvt_f32_i32_e32 v166, v186
	v_cvt_f32_i32_e32 v186, v214
	v_cvt_f32_i32_e32 v184, v204
	v_cvt_f32_i32_e32 v188, v216
	v_cvt_f32_i32_e32 v204, v232
	v_cvt_f32_i32_e32 v214, v234
	v_cvt_f32_i32_e32 v216, v236
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v226, 16, v246
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v227, v118, v226 :: v_dual_lshlrev_b32 v230, 16, v249
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[118:121], v85 offset:20480
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v228, 16, v118
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v49, v227, v228
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v227, 16, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v125, v125, v227
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v50, v125, v228
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v122, v227, v122 :: v_dual_lshlrev_b32 v229, 16, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v125, v129, v229
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v129, 16, v119
	v_and_b32_e32 v119, 0xffff0000, v119
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v51, v125, v228
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v125, v158, v230
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v38, v122, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v229, v126
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v126, v74, s2, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v117, v226, v117 :: v_dual_and_b32 v118, 0xffff0000, v118
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v52, v125, v228 :: v_dual_mul_f32 v125, v226, v151
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v109, v226, v109
	v_mul_f32_e32 v100, v226, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v96, v226, v96 :: v_dual_fmac_f32 v21, v117, v119
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v37, v125, v129
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v125, 16, v120
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v39, v122, v129
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v230, v142
	v_dual_mul_f32 v117, v227, v135 :: v_dual_and_b32 v120, 0xffff0000, v120
	v_mul_f32_e32 v113, v226, v113
	v_mul_f32_e32 v104, v226, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v40, v122, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v226, v152
	v_mul_f32_e32 v97, v226, v97
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v53, v113, v120
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v113, v227, v116
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v69, v122, v125 :: v_dual_mul_f32 v122, v227, v123
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v123, 16, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v54, v113, v120 :: v_dual_and_b32 v121, 0xffff0000, v121
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v113, v229, v138 :: v_dual_fmac_f32 v70, v122, v125
	v_mul_f32_e32 v122, v229, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v17, v109, v121
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v109, v227, v112
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v55, v113, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v122, v125
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v230, v147
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v18, v109, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v109, v229, v115 :: v_dual_fmac_f32 v72, v122, v125
	v_mul_f32_e32 v122, v226, v153
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v125, v84, s1, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v19, v109, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, v122, v123 :: v_dual_mul_f32 v122, v227, v124
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v124, v83, s1, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v126, 0x80000000, v126 :: v_dual_cndmask_b32 v125, 0x80000000, v125
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v22, v117, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v122, v123
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v229, v128
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v124, 0x80000000, v124 :: v_dual_mul_f32 v117, v229, v137
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v113, v230, v141
	v_mul_f32_e32 v109, v230, v150
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v35, v122, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v122, v230, v148 :: v_dual_fmac_f32 v23, v117, v119
	v_dual_mul_f32 v117, v230, v140 :: v_dual_fmac_f32 v20, v109, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v36, v122, v123
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v122, v81, s1, 1
	v_add_lshl_u32 v123, v82, s1, 1
	v_dual_cndmask_b32 v122, 0x80000000, v122 :: v_dual_cndmask_b32 v123, 0x80000000, v123
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v126, v126, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v127, v122, s[4:7], 0 offen
	buffer_load_u16 v142, v123, s[4:7], 0 offen
	buffer_load_u16 v147, v124, s[4:7], 0 offen
	buffer_load_u16 v148, v125, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[122:125], v85 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v151, 16, v127
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v95, v126 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[126:129], v85 offset:20480
	v_mul_f32_e32 v152, v174, v151
	v_mul_f32_e32 v116, v147, v186
	v_mul_f32_e32 v121, v147, v199
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v152, v126 :: v_dual_mul_f32 v152, v151, v175
	v_dual_fmac_f32 v37, v152, v127 :: v_dual_mul_f32 v152, v151, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v69, v152, v128 :: v_dual_mul_f32 v152, v151, v177
	v_dual_fmac_f32 v33, v152, v129 :: v_dual_mul_f32 v152, v190, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v152, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v152, v142, v191
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v38, v152, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v152, v142, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v70, v152, v128
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v152, v142, v193
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v34, v152, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v152, v206, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v51, v152, v126 :: v_dual_mul_f32 v152, v147, v207
	v_dual_fmac_f32 v39, v152, v127 :: v_dual_mul_f32 v152, v147, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v71, v152, v128 :: v_dual_mul_f32 v152, v147, v209
	v_dual_fmac_f32 v35, v152, v129 :: v_dual_mul_f32 v152, v222, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v152, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v148, v218
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v40, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v126, v148, v219 :: v_dual_lshlrev_b32 v127, 16, v122
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v122, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v72, v126, v128
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v148, v220
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v45, v104, v122 :: v_dual_mul_f32 v104, v227, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v126, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v226, v154
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v46, v104, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v104, v229, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v65, v126, v127 :: v_dual_mul_f32 v126, v227, v130
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v151, v178
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v47, v104, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v104, v230, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v66, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v229, v143
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v48, v104, v122
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v104, v151, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v122, v147, v200 :: v_dual_fmac_f32 v67, v126, v127
	v_mul_f32_e32 v126, v230, v149
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v68, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v226, v155
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v127, 16, v123
	v_and_b32_e32 v123, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v29, v126, v127
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v227, v131
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v13, v100, v123
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v100, v227, v103
	v_mul_f32_e32 v109, v142, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v103, v151, v165 :: v_dual_fmac_f32 v30, v126, v127
	v_mul_f32_e32 v126, v229, v144
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v14, v100, v123
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v100, v229, v107 :: v_dual_mul_f32 v107, v151, v169
	v_mul_f32_e32 v108, v142, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v31, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v230, v159
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v15, v100, v123 :: v_dual_mul_f32 v100, v230, v110
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v110, v142, v172
	v_mul_f32_e32 v112, v142, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v32, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v226, v156
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v127, 16, v124
	v_and_b32_e32 v124, 0xffff0000, v124
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v16, v100, v123
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v100, v151, v162
	v_mul_f32_e32 v114, v142, v184
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v61, v126, v127 :: v_dual_mul_f32 v126, v227, v132
	v_fmac_f32_e32 v41, v97, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v97, v227, v99
	v_mul_f32_e32 v99, v230, v105
	v_mul_f32_e32 v105, v151, v167
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v62, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v229, v145
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v42, v97, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v97, v229, v102
	v_dual_mul_f32 v111, v142, v173 :: v_dual_mul_f32 v102, v151, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v63, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v230, v160
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v43, v97, v124
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v97, v230, v106 :: v_dual_mul_f32 v106, v151, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v123, v147, v201 :: v_dual_fmac_f32 v64, v126, v127
	v_mul_f32_e32 v126, v226, v157
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v44, v97, v124 :: v_dual_lshlrev_b32 v127, 16, v125
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v97, v227, v98
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v125, 0xffff0000, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v98, v229, v101 :: v_dual_fmac_f32 v25, v126, v127
	v_mul_f32_e32 v126, v227, v133
	v_mul_f32_e32 v101, v151, v163
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v24, v117, v119 :: v_dual_fmac_f32 v11, v98, v125
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v9, v96, v125 :: v_dual_fmac_f32 v26, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v229, v146
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v10, v97, v125
	v_fmac_f32_e32 v12, v99, v125
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[96:99], v85 offset:20992
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v56, v113, v120 :: v_dual_fmac_f32 v27, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v230, v161
	v_mul_f32_e32 v113, v142, v183
	v_mul_f32_e32 v119, v147, v189
	v_mul_f32_e32 v117, v147, v187
	v_mul_f32_e32 v115, v142, v185
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v28, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[126:129], v85 offset:20496
	v_mul_f32_e32 v120, v147, v198
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v53, v102, v98
	v_fmac_f32_e32 v21, v101, v97
	v_dual_fmac_f32 v17, v103, v99 :: v_dual_fmac_f32 v22, v109, v97
	v_dual_fmac_f32 v18, v111, v99 :: v_dual_fmac_f32 v23, v117, v97
	v_fmac_f32_e32 v19, v119, v99
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v65, v130, v126 :: v_dual_mul_f32 v130, v151, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v29, v130, v127 :: v_dual_mul_f32 v130, v151, v180
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v125, v148, v203
	v_mul_f32_e32 v124, v148, v202
	v_mul_f32_e32 v131, v148, v217
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v61, v130, v128 :: v_dual_mul_f32 v130, v151, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v125, v97
	v_fmac_f32_e32 v25, v130, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v142, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v66, v130, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v142, v195
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v30, v130, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v142, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v62, v130, v128
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v142, v197
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v26, v130, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v147, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v67, v130, v126 :: v_dual_mul_f32 v130, v147, v211
	v_dual_fmac_f32 v31, v130, v127 :: v_dual_mul_f32 v130, v147, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v63, v130, v128 :: v_dual_mul_f32 v130, v147, v213
	v_fmac_f32_e32 v27, v130, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v148, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v68, v130, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v148, v223
	v_mul_f32_e32 v130, v148, v216
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v32, v126, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v148, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v127, v148, v205 :: v_dual_fmac_f32 v64, v126, v128
	v_mul_f32_e32 v126, v148, v225
	v_mul_f32_e32 v128, v148, v214
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v20, v127, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v126, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v126, v226, v238 :: v_dual_mul_f32 v129, v148, v215
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v57, v126, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v126, v227, v134 :: v_dual_fmac_f32 v57, v100, v96
	ds_load_b128 v[100:103], v85 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v58, v126, v118
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v126, v229, v136
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v58, v108, v96 :: v_dual_fmac_f32 v59, v126, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v126, v230, v139 :: v_dual_fmac_f32 v59, v116, v96
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v47, v120, v100 :: v_dual_fmac_f32 v60, v126, v118
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v118, v147, v188
	v_mul_f32_e32 v126, v148, v204
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v45, v104, v100
	v_fmac_f32_e32 v13, v105, v101
	v_fmac_f32_e32 v41, v106, v102
	v_dual_fmac_f32 v9, v107, v103 :: v_dual_fmac_f32 v46, v112, v100
	v_fmac_f32_e32 v14, v113, v101
	v_fmac_f32_e32 v42, v114, v102
	v_dual_fmac_f32 v10, v115, v103 :: v_dual_fmac_f32 v55, v118, v98
	v_fmac_f32_e32 v15, v121, v101
	v_fmac_f32_e32 v43, v122, v102
	v_dual_fmac_f32 v54, v110, v98 :: v_dual_fmac_f32 v11, v123, v103
	v_fmac_f32_e32 v60, v124, v96
	v_fmac_f32_e32 v56, v126, v98
	v_fmac_f32_e32 v48, v128, v100
	v_fmac_f32_e32 v16, v129, v101
	v_fmac_f32_e32 v44, v130, v102
	v_fmac_f32_e32 v12, v131, v103
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, s27 :: v_dual_mov_b32 v4, v76
	v_dual_mov_b32 v1, v77 :: v_dual_mov_b32 v2, v79
	v_mov_b32_e32 v5, v78
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 23 is_stmt 1              ; generate_amdgcn.py:450:23
	s_mul_i32 s35, s14, s15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v2, 0x1c00, v2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add_nc_u32_e32 v73, s35, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v3, 0xcf0, v4
	v_and_or_b32 v4, v5, 64, v1
	v_lshlrev_b32_e32 v5, 13, v0
	v_lshlrev_b32_e32 v0, 6, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v3, v4, v3
	v_lshlrev_b32_e32 v1, 2, v1
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s15, 3
	s_add_i32 s67, s35, s15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v3, 0xe000, v5, v3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl1_add_u32 s66, s15, s35
	s_mul_i32 s14, s15, 18
	s_add_i32 s65, s35, s0
	s_mul_i32 s1, s15, 5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v3, v3, 32, 0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s15, 6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v4, v[49:52]
	ds_store_b128 v4, v[69:72] offset:256
	ds_store_b128 v4, v[65:68] offset:512
	ds_store_b128 v4, v[61:64] offset:768
	ds_store_b128 v4, v[57:60] offset:4096
	ds_store_b128 v4, v[53:56] offset:4352
	ds_store_b128 v4, v[45:48] offset:4608
	ds_store_b128 v4, v[41:44] offset:4864
	v_lshlrev_b32_e32 v4, 4, v75
	ds_store_b128 v3, v[37:40]
	ds_store_b128 v3, v[33:36] offset:256
	ds_store_b128 v3, v[29:32] offset:512
	ds_store_b128 v3, v[25:28] offset:768
	ds_store_b128 v3, v[21:24] offset:4096
	ds_store_b128 v3, v[17:20] offset:4352
	ds_store_b128 v3, v[13:16] offset:4608
	ds_store_b128 v3, v[9:12] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or3_b32 v40, v0, v4, v1
	v_add_lshl_u32 v64, s35, v74, 2
	v_add_lshl_u32 v65, s67, v74, 2
	v_add_lshl_u32 v66, s66, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s15, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v4, 0, v40
	v_xad_u32 v12, 0x2010, v40, 0
	v_xad_u32 v28, 0x6030, v40, 0
	v_xad_u32 v20, 0x4020, v40, 0
	v_xad_u32 v44, 0xa050, v40, 0
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	v_xad_u32 v36, 0x8040, v40, 0
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[28:31], v28 offset:128
	v_xad_u32 v52, 0xc060, v40, 0
	v_xad_u32 v60, 0xe070, v40, 0
	ds_load_b128 v[40:43], v44
	ds_load_b128 v[44:47], v44 offset:128
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[52:55], v52 offset:128
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[32:35], v36
	ds_load_b128 v[36:39], v36 offset:128
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s15, 9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_load_b128 v[60:63], v60 offset:128
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s5, s15, 10
	s_mul_i32 s6, s15, 11
	s_mul_i32 s7, s15, 12
	s_mul_i32 s8, s15, 13
	s_mul_i32 s9, s15, 14
	s_mul_i32 s10, s15, 15
	s_mul_i32 s11, s15, 17
	s_mul_i32 s16, s15, 19
	s_mul_i32 s17, s15, 20
	s_mul_i32 s18, s15, 21
	s_mul_i32 s19, s15, 22
	s_mul_i32 s20, s15, 23
	s_mul_i32 s21, s15, 24
	s_mul_i32 s22, s15, 25
	s_mul_i32 s23, s15, 26
	s_mul_i32 s24, s15, 27
	s_mul_i32 s25, s15, 28
	s_mul_i32 s26, s15, 29
	s_mul_i32 s27, s15, 30
	s_mul_i32 s28, s15, 31
	s_mul_i32 s29, s15, 33
	s_mul_i32 s30, s15, 34
	s_mul_i32 s31, s15, 35
	s_mul_i32 s68, s15, 36
	s_mul_i32 s69, s15, 37
	s_mul_i32 s70, s15, 38
	s_mul_i32 s71, s15, 39
	s_mul_i32 s72, s15, 40
	s_mul_i32 s73, s15, 41
	s_mul_i32 s74, s15, 42
	s_mul_i32 s75, s15, 43
	s_mul_i32 s76, s15, 44
	s_mul_i32 s77, s15, 45
	s_mul_i32 s78, s15, 46
	s_mul_i32 s79, s15, 47
	s_mul_i32 s80, s15, 48
	s_mul_i32 s81, s15, 49
	s_mul_i32 s82, s15, 50
	s_mul_i32 s83, s15, 51
	s_mul_i32 s84, s15, 52
	s_mul_i32 s85, s15, 53
	s_mul_i32 s86, s15, 54
	s_mul_i32 s87, s15, 55
	s_mul_i32 s88, s15, 56
	s_mul_i32 s89, s15, 57
	s_mul_i32 s90, s15, 58
	s_mul_i32 s91, s15, 59
	s_mul_i32 s92, s15, 60
	s_mul_i32 s93, s15, 61
	s_mul_i32 s94, s15, 62
	s_mul_i32 s95, s15, 63
	s_lshl2_add_u32 s64, s15, s35
	s_lshl3_add_u32 s60, s15, s35
	s_lshl4_add_u32 s52, s15, s35
	s_add_i32 s50, s35, s14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_add_lshl_u32 v67, s65, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s63, s35, s1
	s_add_i32 s62, s35, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v67, s[12:15], 0 offen
	v_add_lshl_u32 v0, s64, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s61, s35, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s63, v74, 2
	v_add_lshl_u32 v16, s62, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s59, s35, s4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s61, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s58, s35, s5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v64, s60, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s57, s35, s6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v40, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v24, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v64, s[12:15], 0 offen
	v_add_lshl_u32 v0, s59, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s56, s35, s7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s58, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s55, s35, s8
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s57, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s54, s35, s9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s56, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s53, s35, s10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s55, v74, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v8, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v24, s[12:15], 0 offen
	v_add_lshl_u32 v0, s54, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s51, s35, s11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s53, v74, 2
	v_add_lshl_u32 v8, s52, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s49, s35, s16
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v12, s51, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s48, s35, s17
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s50, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s47, s35, s18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	buffer_atomic_add_f32 v52, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v12, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v16, s[12:15], 0 offen
	v_add_lshl_u32 v0, s49, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s46, s35, s19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s48, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s45, s35, s20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s47, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s44, s35, s21
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s46, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s43, s35, s22
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s45, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s42, s35, s23
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v33, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v49, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s44, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s41, s35, s24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s43, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s40, s35, s25
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s42, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s39, s35, s26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s41, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s38, s35, s27
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s40, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s37, s35, s28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s39, v74, 2
	v_add_lshl_u32 v1, s38, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s36, s35, s29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s37, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s34, s35, s30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v73, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s33, s35, s31
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s36, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s31, s35, s68
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v53, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v8, s[12:15], 0 offen
	v_add_lshl_u32 v0, s34, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s30, s35, s69
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s33, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s29, s35, s70
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s31, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s28, s35, s71
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s30, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s27, s35, s72
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s29, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s25, s35, s73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v34, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v42, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v50, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s28, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s23, s35, s74
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s27, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s21, s35, s75
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s25, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s17, s35, s76
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s23, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s10, s35, s77
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s21, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s9, s35, s78
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s17, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s8, s35, s79
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s10, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s7, s35, s80
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s9, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s1, s35, s81
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s8, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s0, s35, s82
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s7, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s26, s35, s83
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v46, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v54, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v62, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s1, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s24, s35, s84
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s0, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s22, s35, s85
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s26, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s20, s35, s86
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s24, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s19, s35, s87
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s22, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s18, s35, s88
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s20, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s11, s35, s89
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s19, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s16, s35, s90
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s18, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s6, s35, s91
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s11, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s5, s35, s92
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s16, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s3, s35, s93
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s6, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s4, s35, s94
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s5, v74, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s2, s35, s95
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s3, v74, 2
	v_add_lshl_u32 v3, s4, v74, 2
	v_add_lshl_u32 v4, s2, v74, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v47, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v63, v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 250
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 250
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8160
; TotalNumSgprs: 98
; NumVgprs: 250
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 98
; NumVGPRsForWavesPerEU: 250
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     250
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
