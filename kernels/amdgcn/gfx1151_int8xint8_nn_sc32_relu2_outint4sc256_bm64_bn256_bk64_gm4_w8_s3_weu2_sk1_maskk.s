	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v13, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v10, 15, v0
	v_and_b32_e32 v14, 4, v0
	v_and_b32_e32 v15, 8, v0
	v_lshlrev_b32_e32 v17, 4, v0
	v_lshlrev_b32_e32 v16, 5, v13
	v_and_b32_e32 v18, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 63
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
	s_sub_i32 s4, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s4
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
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s28, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s31, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s28, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v4, 5, v13
	v_and_b32_e32 v1, 4, v0
	v_and_b32_e32 v2, 8, v0
	v_lshlrev_b32_e32 v5, 4, v0
.Ltmp15:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_dual_mov_b32 v7, 0 :: v_dual_lshlrev_b32 v12, 4, v10
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v81, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s30, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 31
.Ltmp18:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s4, s31, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s1, 26
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s6, s4, 31
	v_mul_lo_u32 v1, s31, v1
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s1
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s1, s6, 27
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v19, 3, v13
	s_add_i32 s4, s4, s1
.Ltmp23:
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	s_mul_i32 s5, s30, s31
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 6
.Ltmp25:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s2, s4, 5
	s_mov_b32 s4, 0
	v_add3_u32 v21, v1, v19, s5
	v_bfe_i32 v5, v0, 4, 1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_b32_e32 v5, 0x90, v5
	v_bfe_i32 v3, v0, 2, 1
	v_bfe_i32 v4, v0, 3, 1
.Ltmp26:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v20, 3, v11
	v_and_b32_e32 v1, 0x778, v1
	v_lshlrev_b32_e32 v6, 5, v0
	v_and_b32_e32 v3, 0x90, v3
	v_and_b32_e32 v4, 0x110, v4
	v_and_b32_e32 v8, 0xe00, v17
	v_xor_b32_e32 v1, v5, v1
	v_or_b32_e32 v5, s30, v10
	v_lshl_or_b32 v7, v10, 9, v20
	v_xor_b32_e32 v4, v3, v4
	v_and_or_b32 v3, 0x160, v6, v3
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v6, 32, v6
	v_or_b32_e32 v9, 16, v5
	v_or_b32_e32 v24, 32, v5
	v_or_b32_e32 v26, 48, v5
	v_mul_lo_u32 v42, v5, s2
	v_lshrrev_b32_e32 v5, 6, v0
	v_mul_lo_u32 v44, v9, s2
	v_mul_lo_u32 v46, v24, s2
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v9, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v5, 2, v5
	v_lshlrev_b32_e32 v24, 1, v11
	v_or3_b32 v4, v8, v4, v16
	v_mul_lo_u32 v55, v26, s2
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v9, 0x1c0, v9
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v26, 1, v0
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v65, 0, v24
	v_mul_lo_u32 v2, s29, v20
	v_xor_b32_e32 v8, 0x110, v7
	v_xor_b32_e32 v22, 0x90, v7
	v_xor_b32_e32 v23, 16, v3
	v_xor_b32_e32 v25, 16, v4
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v26, 28, v26
	v_add3_u32 v27, v5, v9, v6
	v_add3_u32 v24, v65, v24, v6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s0, s28, 8
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v77, 0, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v9, v2, v12, s0
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v79, 0, v7
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v82, 0, v8
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v83, 0, v3
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v85, 0, v4
	v_mov_b32_e32 v1, s4
	v_or_b32_e32 v58, s0, v0
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v81, 0, v22
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v84, 0, v23
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v92, 0, v25
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v100, v27, v26
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v101, v24, v26
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s33, s29, 5
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
	s_add_i32 s0, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s0, 6
	v_or_b32_e32 v102, s6, v19
	v_mad_u64_u32 v[112:113], null, s6, s29, v[9:10]
	v_or_b32_e32 v103, s6, v20
	s_or_b32 s5, s6, 32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v102
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v102, s6, v21
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s31, v103
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v106, s29, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[110:111], v102, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v102, 0x80000000, v112, s0
	s_clause 0x1
	buffer_load_b128 v[106:109], v106, s[24:27], 0 offen
	buffer_load_b128 v[102:105], v102, s[24:27], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v77, v[110:111] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v110, v106, v102, 0x5010400
	v_perm_b32 v111, v107, v103, 0x5010400
	v_perm_b32 v103, v107, v103, 0x7030602
	v_perm_b32 v107, v108, v104, 0x5010400
	v_perm_b32 v104, v108, v104, 0x7030602
	v_perm_b32 v108, v109, v105, 0x5010400
	v_perm_b32 v105, v109, v105, 0x7030602
	v_lshrrev_b32_e32 v109, 8, v110
	v_perm_b32 v106, v106, v102, 0x7030602
	v_and_b16 v102.l, 0xff, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v102.h, 8, v109.l
	v_lshrrev_b32_e32 v109, 8, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102
	v_lshrrev_b32_e32 v102, 24, v110
	v_and_b16 v102.h, 0xff, v110.h
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v109.l
	ds_store_b16 v79, v102 offset:32
	v_and_b16 v102.l, 0xff, v106.l
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102 offset:64
	v_lshrrev_b32_e32 v102, 24, v106
	v_and_b16 v102.h, 0xff, v106.h
	v_lshrrev_b32_e32 v106, 8, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.h, 8, v106.l
	v_lshrrev_b32_e32 v106, 8, v103
	ds_store_b16 v79, v102 offset:96
	v_and_b16 v102.l, 0xff, v111.l
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v81, v102
	v_lshrrev_b32_e32 v102, 24, v111
	v_and_b16 v102.h, 0xff, v111.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v106.l
	ds_store_b16 v81, v102 offset:32
	v_and_b16 v102.l, 0xff, v103.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v81, v102 offset:64
	v_lshrrev_b32_e32 v102, 24, v103
	v_and_b16 v102.h, 0xff, v103.h
	v_lshrrev_b32_e32 v103, 8, v107
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	v_lshrrev_b32_e32 v103, 8, v104
	ds_store_b16 v81, v102 offset:96
	v_and_b16 v102.l, 0xff, v107.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v82, v102
	v_lshrrev_b32_e32 v102, 24, v107
	v_and_b16 v102.h, 0xff, v107.h
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	v_lshrrev_b32_e32 v103, 8, v108
	ds_store_b16 v82, v102 offset:32
	v_and_b16 v102.l, 0xff, v104.l
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v82, v102 offset:64
	v_lshrrev_b32_e32 v102, 24, v104
	v_and_b16 v102.h, 0xff, v104.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	v_lshrrev_b32_e32 v103, 8, v105
	ds_store_b16 v82, v102 offset:96
	v_and_b16 v102.l, 0xff, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102 offset:384
	v_lshrrev_b32_e32 v102, 24, v108
	v_and_b16 v102.h, 0xff, v108.h
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v103, s5, v20
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v79, v102 offset:416
	v_and_b16 v102.l, 0xff, v105.l
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s31, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102 offset:448
	v_lshrrev_b32_e32 v102, 24, v105
	v_and_b16 v102.h, 0xff, v105.h
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v102.l, v102.h, v102.l
	ds_store_b16 v79, v102 offset:480
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v102, s5, v19
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v102
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v102, s5, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 374 26 is_stmt 0              ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	buffer_load_b64 v[110:111], v102, s[20:23], 0 offen
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v102, s33, v112
	v_add_nc_u32_e32 v106, s29, v102
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	buffer_load_b128 v[102:105], v102, s[24:27], 0 offen
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s6, 5
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[106:109], v106, s[24:27], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v77, v[110:111] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v110, v106, v102, 0x5010400
	v_perm_b32 v111, v107, v103, 0x5010400
	v_perm_b32 v103, v107, v103, 0x7030602
	v_perm_b32 v107, v108, v104, 0x5010400
	v_perm_b32 v104, v108, v104, 0x7030602
	v_perm_b32 v108, v109, v105, 0x5010400
	v_perm_b32 v105, v109, v105, 0x7030602
	v_lshrrev_b32_e32 v109, 8, v110
	v_perm_b32 v106, v106, v102, 0x7030602
	v_and_b16 v102.l, 0xff, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v102.h, 8, v109.l
	v_lshrrev_b32_e32 v109, 8, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102 offset:8192
	v_lshrrev_b32_e32 v102, 24, v110
	v_and_b16 v102.h, 0xff, v110.h
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v109.l
	ds_store_b16 v79, v102 offset:8224
	v_and_b16 v102.l, 0xff, v106.l
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102 offset:8256
	v_lshrrev_b32_e32 v102, 24, v106
	v_and_b16 v102.h, 0xff, v106.h
	v_lshrrev_b32_e32 v106, 8, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.h, 8, v106.l
	v_lshrrev_b32_e32 v106, 8, v103
	ds_store_b16 v79, v102 offset:8288
	v_and_b16 v102.l, 0xff, v111.l
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v81, v102 offset:8192
	v_lshrrev_b32_e32 v102, 24, v111
	v_and_b16 v102.h, 0xff, v111.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v106.l
	ds_store_b16 v81, v102 offset:8224
	v_and_b16 v102.l, 0xff, v103.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v81, v102 offset:8256
	v_lshrrev_b32_e32 v102, 24, v103
	v_and_b16 v102.h, 0xff, v103.h
	v_lshrrev_b32_e32 v103, 8, v107
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	v_lshrrev_b32_e32 v103, 8, v104
	ds_store_b16 v81, v102 offset:8288
	v_and_b16 v102.l, 0xff, v107.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v82, v102 offset:8192
	v_lshrrev_b32_e32 v102, 24, v107
	v_and_b16 v102.h, 0xff, v107.h
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	v_lshrrev_b32_e32 v103, 8, v108
	ds_store_b16 v82, v102 offset:8224
	v_and_b16 v102.l, 0xff, v104.l
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v82, v102 offset:8256
	v_lshrrev_b32_e32 v102, 24, v104
	v_and_b16 v102.h, 0xff, v104.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	v_lshrrev_b32_e32 v103, 8, v105
	ds_store_b16 v82, v102 offset:8288
	v_and_b16 v102.l, 0xff, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102 offset:8576
	v_lshrrev_b32_e32 v102, 24, v108
	v_and_b16 v102.h, 0xff, v108.h
	v_lshlrev_b16 v102.l, 8, v102.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v102.l, v102.h, v102.l
	v_lshlrev_b16 v102.h, 8, v103.l
	ds_store_b16 v79, v102 offset:8608
	v_and_b16 v102.l, 0xff, v105.l
	v_or_b16 v102.l, v102.l, v102.h
	ds_store_b16 v79, v102 offset:8640
	v_lshrrev_b32_e32 v102, 24, v105
	v_and_b16 v102.h, 0xff, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	ds_store_b16 v79, v102 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v83 offset:16384
	ds_load_b128 v[134:137], v83 offset:16896
	ds_load_b128 v[150:153], v83 offset:17408
	ds_load_b128 v[166:169], v83 offset:17920
	ds_load_b128 v[122:125], v84 offset:16384
	ds_load_b128 v[138:141], v84 offset:16896
	ds_load_b128 v[154:157], v84 offset:17408
	ds_load_b128 v[170:173], v84 offset:17920
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[158:161], v85
	ds_load_b128 v[174:177], v85 offset:4096
	ds_load_b128 v[162:165], v92
	ds_load_b128 v[178:181], v92 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[158:161], v[118:121], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[174:177], v[118:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[174:177], v[134:137], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[122:125], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[178:181], v[122:125], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[158:161], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[178:181], v[138:141], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[174:177], v[150:153], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[162:165], v[138:141], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[158:161], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[178:181], v[154:157], v[142:149] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v121
	v_wmma_i32_16x16x16_iu8 v[134:141], v[162:165], v[154:157], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[158:161], v[166:169], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v114, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[162:165], v[170:173], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[174:177], v[166:169], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v166, v102
	v_cvt_f32_i32_e32 v167, v103
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v102, v42, s0, 1
	v_add_lshl_u32 v103, v44, s0, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v168, v104
	v_cvt_f32_i32_e32 v169, v105
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v104, v46, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	v_add_lshl_u32 v105, v55, s0, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s0, s0, s29
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	s_clause 0x1
	buffer_load_u16 v102, v102, s[8:11], 0 offen
	buffer_load_u16 v103, v103, s[8:11], 0 offen
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[158:165], v[178:181], v[170:173], v[158:165] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v104, v104, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v170, v106
	v_cvt_f32_i32_e32 v171, v107
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v105, v105, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v172, v108
	v_cvt_f32_i32_e32 v173, v109
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
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
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v175, 16, v103
	v_lshlrev_b32_e32 v174, 16, v102
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v102, v58, s0, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s5, 5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v121, v121, v175 :: v_dual_lshlrev_b32 v176, 16, v104
	v_mul_f32_e32 v111, v111, v174
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_lshlrev_b32 v177, 16, v105
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v167, v174
	v_mul_f32_e32 v169, v169, v174
	v_mul_f32_e32 v171, v171, v174
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v102, v102, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v173, v173, v174
	v_dual_mul_f32 v116, v116, v174 :: v_dual_mul_f32 v133, v133, v175
	v_dual_mul_f32 v118, v118, v175 :: v_dual_mul_f32 v135, v135, v176
	v_mul_f32_e32 v119, v119, v175
	v_dual_mul_f32 v120, v120, v175 :: v_dual_mul_f32 v137, v137, v176
	v_dual_mul_f32 v122, v122, v175 :: v_dual_mul_f32 v139, v139, v176
	v_dual_mul_f32 v124, v124, v175 :: v_dual_mul_f32 v141, v141, v176
	v_dual_mul_f32 v126, v126, v175 :: v_dual_mul_f32 v143, v143, v176
	v_dual_mul_f32 v130, v130, v175 :: v_dual_mul_f32 v147, v147, v176
	v_dual_mul_f32 v132, v132, v175 :: v_dual_mul_f32 v149, v149, v176
	v_dual_mul_f32 v134, v134, v176 :: v_dual_mul_f32 v151, v151, v177
	v_dual_mul_f32 v136, v136, v176 :: v_dual_mul_f32 v153, v153, v177
	v_dual_mul_f32 v138, v138, v176 :: v_dual_mul_f32 v155, v155, v177
	v_dual_mul_f32 v140, v140, v176 :: v_dual_mul_f32 v157, v157, v177
	v_dual_mul_f32 v142, v142, v176 :: v_dual_mul_f32 v159, v159, v177
	v_dual_mul_f32 v144, v144, v176 :: v_dual_mul_f32 v161, v161, v177
	v_dual_mul_f32 v146, v146, v176 :: v_dual_mul_f32 v163, v163, v177
	v_dual_mul_f32 v148, v148, v176 :: v_dual_mul_f32 v165, v165, v177
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v128, v128, v175 :: v_dual_mul_f32 v145, v145, v176
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v166, v166, v174
	v_mul_f32_e32 v172, v172, v174
	v_mul_f32_e32 v110, v110, v174
	v_mul_f32_e32 v117, v117, v174
	v_mul_f32_e32 v123, v123, v175
	v_mul_f32_e32 v127, v127, v175
	v_mul_f32_e32 v113, v113, v174
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v168, v168, v174
	v_mul_f32_e32 v170, v170, v174
	v_mul_f32_e32 v112, v112, v174
	v_dual_mul_f32 v114, v114, v174 :: v_dual_mul_f32 v125, v125, v175
	v_mul_f32_e32 v129, v129, v175
	v_mul_f32_e32 v115, v115, v174
	v_mul_f32_e32 v131, v131, v175
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v100, v102 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v65 offset:20480
	ds_load_b128 v[106:109], v65 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v178, 16, v102
	v_lshlrev_b32_e32 v179, 16, v103
	v_lshlrev_b32_e32 v180, 16, v104
	v_lshlrev_b32_e32 v181, 16, v105
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v182, 16, v106
	v_lshlrev_b32_e32 v183, 16, v107
	v_lshlrev_b32_e32 v184, 16, v108
	v_lshlrev_b32_e32 v185, 16, v109
	v_and_b32_e32 v102, 0xffff0000, v102
	v_and_b32_e32 v103, 0xffff0000, v103
	v_and_b32_e32 v104, 0xffff0000, v104
	v_and_b32_e32 v105, 0xffff0000, v105
	v_and_b32_e32 v106, 0xffff0000, v106
	v_and_b32_e32 v107, 0xffff0000, v107
	v_and_b32_e32 v108, 0xffff0000, v108
	v_and_b32_e32 v109, 0xffff0000, v109
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v150, v150, v177 :: v_dual_fmac_f32 v99, v167, v179
	v_dual_mul_f32 v152, v152, v177 :: v_dual_fmac_f32 v95, v171, v183
	v_dual_mul_f32 v154, v154, v177 :: v_dual_fmac_f32 v89, v112, v104
	v_dual_mul_f32 v156, v156, v177 :: v_dual_fmac_f32 v91, v110, v102
	v_dual_mul_f32 v158, v158, v177 :: v_dual_fmac_f32 v75, v119, v179
	v_dual_mul_f32 v160, v160, v177 :: v_dual_fmac_f32 v87, v114, v106
	v_dual_mul_f32 v162, v162, v177 :: v_dual_fmac_f32 v71, v123, v183
	v_dual_mul_f32 v164, v164, v177 :: v_dual_fmac_f32 v67, v126, v102
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v68, v166, v178 :: v_dual_fmac_f32 v97, v169, v181
	v_dual_fmac_f32 v98, v168, v180 :: v_dual_fmac_f32 v93, v173, v185
	v_dual_fmac_f32 v96, v170, v182 :: v_dual_fmac_f32 v73, v121, v181
	v_dual_fmac_f32 v94, v172, v184 :: v_dual_fmac_f32 v69, v125, v185
	v_dual_fmac_f32 v80, v116, v108 :: v_dual_fmac_f32 v57, v134, v178
	v_dual_fmac_f32 v78, v117, v109 :: v_dual_fmac_f32 v51, v139, v183
	v_dual_fmac_f32 v76, v118, v178 :: v_dual_fmac_f32 v53, v137, v181
	v_dual_fmac_f32 v74, v120, v180 :: v_dual_fmac_f32 v49, v141, v185
	v_dual_fmac_f32 v72, v122, v182 :: v_dual_fmac_f32 v47, v143, v103
	v_dual_fmac_f32 v70, v124, v184 :: v_dual_fmac_f32 v43, v145, v105
	v_dual_fmac_f32 v60, v132, v108 :: v_dual_fmac_f32 v37, v150, v178
	v_dual_fmac_f32 v56, v135, v179 :: v_dual_fmac_f32 v35, v152, v180
	v_dual_fmac_f32 v54, v136, v180 :: v_dual_fmac_f32 v33, v154, v182
	v_dual_fmac_f32 v52, v138, v182 :: v_dual_fmac_f32 v31, v156, v184
	v_dual_fmac_f32 v50, v140, v184 :: v_dual_fmac_f32 v29, v158, v102
	v_dual_fmac_f32 v48, v142, v102 :: v_dual_fmac_f32 v27, v160, v104
	v_dual_fmac_f32 v40, v147, v107 :: v_dual_fmac_f32 v25, v162, v106
	v_dual_fmac_f32 v38, v149, v109 :: v_dual_fmac_f32 v23, v164, v108
	v_fmac_f32_e32 v36, v151, v179
	v_fmac_f32_e32 v34, v153, v181
	v_fmac_f32_e32 v32, v155, v183
	v_fmac_f32_e32 v30, v157, v185
	v_fmac_f32_e32 v28, v159, v103
	v_fmac_f32_e32 v26, v161, v105
	v_fmac_f32_e32 v24, v163, v107
	v_fmac_f32_e32 v22, v165, v109
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	ds_load_b128 v[118:121], v83 offset:18432
	ds_load_b128 v[134:137], v83 offset:18944
	ds_load_b128 v[150:153], v83 offset:19456
	ds_load_b128 v[166:169], v83 offset:19968
	ds_load_b128 v[122:125], v84 offset:18432
	ds_load_b128 v[138:141], v84 offset:18944
	ds_load_b128 v[154:157], v84 offset:19456
	ds_load_b128 v[170:173], v84 offset:19968
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[158:161], v85 offset:8192
	ds_load_b128 v[174:177], v85 offset:12288
	ds_load_b128 v[162:165], v92 offset:8192
	ds_load_b128 v[178:181], v92 offset:12288
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v90, v111, v103 :: v_dual_fmac_f32 v63, v129, v105
	v_dual_fmac_f32 v88, v113, v105 :: v_dual_fmac_f32 v61, v131, v107
	v_dual_fmac_f32 v86, v115, v107 :: v_dual_fmac_f32 v59, v133, v109
	v_dual_fmac_f32 v66, v127, v103 :: v_dual_fmac_f32 v45, v144, v104
	v_dual_fmac_f32 v64, v128, v104 :: v_dual_fmac_f32 v41, v146, v106
	v_dual_fmac_f32 v62, v130, v106 :: v_dual_fmac_f32 v39, v148, v108
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[158:161], v[118:121], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[174:177], v[118:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[174:177], v[134:137], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[122:125], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[178:181], v[122:125], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[158:161], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[178:181], v[138:141], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[174:177], v[150:153], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[162:165], v[138:141], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[158:161], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[178:181], v[154:157], v[142:149] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v119, v119
	v_wmma_i32_16x16x16_iu8 v[134:141], v[162:165], v[154:157], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[158:161], v[166:169], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[162:165], v[170:173], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[174:177], v[166:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v166, v42, s0, 1
	v_add_lshl_u32 v167, v44, s0, 1
	v_add_lshl_u32 v168, v46, s0, 1
	v_add_lshl_u32 v169, v55, s0, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s0, s0, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v166, 0x80000000, v166 :: v_dual_cndmask_b32 v167, 0x80000000, v167
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[158:165], v[178:181], v[170:173], v[158:165] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v168, 0x80000000, v168 :: v_dual_cndmask_b32 v169, 0x80000000, v169
	s_clause 0x1
	buffer_load_u16 v166, v166, s[8:11], 0 offen
	buffer_load_u16 v167, v167, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v170, v58, s0, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v168, v168, s[8:11], 0 offen
	buffer_load_u16 v169, v169, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v140, v140
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
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v170, 0x80000000, v170 :: v_dual_lshlrev_b32 v167, 16, v167
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v169, 16, v169
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v123, v123, v167
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v170, v170, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v121, v121, v167 :: v_dual_lshlrev_b32 v168, 16, v168
	v_mul_f32_e32 v181, v112, v166
	v_mul_f32_e32 v171, v102, v166
	v_dual_mul_f32 v172, v103, v166 :: v_dual_mul_f32 v129, v129, v167
	v_mul_f32_e32 v173, v104, v166
	v_dual_mul_f32 v174, v105, v166 :: v_dual_mul_f32 v127, v127, v167
	v_mul_f32_e32 v175, v106, v166
	v_dual_mul_f32 v176, v107, v166 :: v_dual_mul_f32 v133, v133, v167
	v_mul_f32_e32 v177, v108, v166
	v_dual_mul_f32 v178, v109, v166 :: v_dual_mul_f32 v131, v131, v167
	v_mul_f32_e32 v179, v110, v166
	v_dual_mul_f32 v180, v111, v166 :: v_dual_mul_f32 v137, v137, v168
	v_dual_mul_f32 v182, v113, v166 :: v_dual_mul_f32 v135, v135, v168
	v_dual_mul_f32 v183, v114, v166 :: v_dual_mul_f32 v120, v120, v167
	v_dual_mul_f32 v184, v115, v166 :: v_dual_mul_f32 v141, v141, v168
	v_dual_mul_f32 v185, v116, v166 :: v_dual_mul_f32 v118, v118, v167
	v_dual_mul_f32 v166, v117, v166 :: v_dual_mul_f32 v139, v139, v168
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v119, v119, v167
	v_dual_mul_f32 v122, v122, v167 :: v_dual_mul_f32 v143, v143, v168
	v_dual_mul_f32 v124, v124, v167 :: v_dual_mul_f32 v145, v145, v168
	v_dual_mul_f32 v126, v126, v167 :: v_dual_mul_f32 v147, v147, v168
	v_dual_mul_f32 v128, v128, v167 :: v_dual_mul_f32 v149, v149, v168
	v_dual_mul_f32 v130, v130, v167 :: v_dual_mul_f32 v151, v151, v169
	v_dual_mul_f32 v132, v132, v167 :: v_dual_mul_f32 v153, v153, v169
	v_dual_mul_f32 v134, v134, v168 :: v_dual_mul_f32 v155, v155, v169
	v_dual_mul_f32 v136, v136, v168 :: v_dual_mul_f32 v157, v157, v169
	v_dual_mul_f32 v138, v138, v168 :: v_dual_mul_f32 v159, v159, v169
	v_dual_mul_f32 v140, v140, v168 :: v_dual_mul_f32 v161, v161, v169
	v_dual_mul_f32 v142, v142, v168 :: v_dual_mul_f32 v163, v163, v169
	v_dual_mul_f32 v144, v144, v168 :: v_dual_mul_f32 v165, v165, v169
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v125, v125, v167 :: v_dual_lshlrev_b32 v170, 16, v170
	ds_store_b32 v101, v170 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v65 offset:20480
	ds_load_b128 v[106:109], v65 offset:20496
	ds_load_b128 v[110:113], v65 offset:20992
	ds_load_b128 v[114:117], v65 offset:21008
	v_mul_f32_e32 v146, v146, v168
	v_mul_f32_e32 v148, v148, v168
	v_mul_f32_e32 v150, v150, v169
	v_mul_f32_e32 v152, v152, v169
	v_mul_f32_e32 v154, v154, v169
	v_mul_f32_e32 v156, v156, v169
	v_mul_f32_e32 v158, v158, v169
	v_mul_f32_e32 v160, v160, v169
	v_mul_f32_e32 v162, v162, v169
	v_mul_f32_e32 v164, v164, v169
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v68, v171, v102 :: v_dual_fmac_f32 v93, v178, v109
	v_dual_fmac_f32 v99, v172, v103 :: v_dual_fmac_f32 v98, v173, v104
	v_fmac_f32_e32 v57, v134, v102
	v_dual_fmac_f32 v97, v174, v105 :: v_dual_fmac_f32 v96, v175, v106
	v_fmac_f32_e32 v73, v121, v105
	v_dual_fmac_f32 v95, v176, v107 :: v_dual_fmac_f32 v94, v177, v108
	v_fmac_f32_e32 v51, v139, v107
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v91, v179, v110 :: v_dual_fmac_f32 v90, v180, v111
	v_fmac_f32_e32 v69, v125, v109
	v_dual_fmac_f32 v89, v181, v112 :: v_dual_fmac_f32 v88, v182, v113
	v_fmac_f32_e32 v47, v143, v111
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v87, v183, v114 :: v_dual_fmac_f32 v86, v184, v115
	v_fmac_f32_e32 v63, v129, v113
	v_dual_fmac_f32 v80, v185, v116 :: v_dual_fmac_f32 v41, v146, v114
	v_dual_fmac_f32 v78, v166, v117 :: v_dual_fmac_f32 v45, v144, v112
	v_dual_fmac_f32 v76, v118, v102 :: v_dual_fmac_f32 v59, v133, v117
	v_dual_fmac_f32 v75, v119, v103 :: v_dual_fmac_f32 v74, v120, v104
	v_dual_fmac_f32 v53, v137, v105 :: v_dual_fmac_f32 v72, v122, v106
	v_fmac_f32_e32 v49, v141, v109
	v_dual_fmac_f32 v71, v123, v107 :: v_dual_fmac_f32 v70, v124, v108
	v_fmac_f32_e32 v43, v145, v113
	v_dual_fmac_f32 v67, v126, v110 :: v_dual_fmac_f32 v66, v127, v111
	v_fmac_f32_e32 v39, v148, v116
	v_dual_fmac_f32 v64, v128, v112 :: v_dual_fmac_f32 v37, v150, v102
	v_dual_fmac_f32 v62, v130, v114 :: v_dual_fmac_f32 v35, v152, v104
	v_dual_fmac_f32 v61, v131, v115 :: v_dual_fmac_f32 v60, v132, v116
	v_dual_fmac_f32 v33, v154, v106 :: v_dual_fmac_f32 v56, v135, v103
	v_fmac_f32_e32 v31, v156, v108
	v_dual_fmac_f32 v54, v136, v104 :: v_dual_fmac_f32 v29, v158, v110
	v_dual_fmac_f32 v52, v138, v106 :: v_dual_fmac_f32 v27, v160, v112
	v_dual_fmac_f32 v50, v140, v108 :: v_dual_fmac_f32 v25, v162, v114
	v_dual_fmac_f32 v48, v142, v110 :: v_dual_fmac_f32 v23, v164, v116
	v_fmac_f32_e32 v40, v147, v115
	v_fmac_f32_e32 v38, v149, v117
	v_fmac_f32_e32 v36, v151, v103
	v_fmac_f32_e32 v34, v153, v105
	v_fmac_f32_e32 v32, v155, v107
	v_fmac_f32_e32 v30, v157, v109
	v_fmac_f32_e32 v28, v159, v111
	v_fmac_f32_e32 v26, v161, v113
	v_fmac_f32_e32 v24, v163, v115
	v_fmac_f32_e32 v22, v165, v117
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v46, v80, v80 :: v_dual_max_f32 v55, v78, v78
	v_dual_max_f32 v58, v76, v76 :: v_dual_max_f32 v65, v75, v75
	v_dual_max_f32 v1, v68, v68 :: v_dual_max_f32 v2, v99, v99
	v_max_f32_e32 v68, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v74, 0, v55 :: v_dual_max_f32 v77, 0, v58
	v_dual_max_f32 v55, v73, v73 :: v_dual_max_f32 v58, v72, v72
	v_dual_max_f32 v65, 0, v65 :: v_dual_max_f32 v46, 0, v46
	v_dual_max_f32 v79, 0, v68 :: v_dual_max_f32 v68, v71, v71
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v73, 0, v55 :: v_dual_max_f32 v82, 0, v58
	v_max_f32_e32 v83, 0, v68
	v_dual_max_f32 v55, v67, v67 :: v_dual_max_f32 v58, v66, v66
	v_dual_max_f32 v21, v88, v88 :: v_dual_max_f32 v44, v86, v86
	v_max_f32_e32 v59, v59, v59
	v_dual_max_f32 v5, v96, v96 :: v_dual_max_f32 v6, v95, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v86, 0, v58
	v_max_f32_e32 v58, v60, v60
	v_dual_max_f32 v56, v56, v56 :: v_dual_max_f32 v7, v94, v94
	v_dual_max_f32 v8, v93, v93 :: v_dual_max_f32 v9, v91, v91
	v_max_f32_e32 v6, 0, v6
	v_dual_max_f32 v64, v64, v64 :: v_dual_max_f32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v91, 0, v58 :: v_dual_max_f32 v94, 0, v56
	v_max_f32_e32 v51, v51, v51
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v40, v40, v40
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v38, v38, v38
	v_max_f32_e32 v37, v37, v37
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, v28, v28
	v_max_f32_e32 v27, v27, v27
	v_dual_max_f32 v3, v98, v98 :: v_dual_max_f32 v4, v97, v97
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v20, v89, v89
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v42, v87, v87
	v_max_f32_e32 v19, v90, v90
	v_dual_max_f32 v62, v62, v62 :: v_dual_max_f32 v87, 0, v64
	v_max_f32_e32 v66, 0, v55
	v_dual_max_f32 v88, 0, v63 :: v_dual_max_f32 v57, v57, v57
	v_dual_max_f32 v55, v61, v61 :: v_dual_max_f32 v92, 0, v59
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v52, v52, v52
	v_max_f32_e32 v54, v54, v54
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v49, v49, v49
	v_dual_max_f32 v98, 0, v51 :: v_dual_max_f32 v45, v45, v45
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v100, 0, v49
	v_dual_max_f32 v106, 0, v40 :: v_dual_max_f32 v107, 0, v39
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v109, 0, v37
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v33, v33, v33
	v_max_f32_e32 v110, 0, v36
	v_dual_max_f32 v116, 0, v30 :: v_dual_max_f32 v117, 0, v29
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v119, 0, v27
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v120, 0, v26 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v42, 0, v42 :: v_dual_max_f32 v21, 0, v21
	v_max_f32_e32 v44, 0, v44
	v_dual_max_f32 v84, 0, v70 :: v_dual_max_f32 v85, 0, v69
	v_dual_max_f32 v89, 0, v62 :: v_dual_max_f32 v90, 0, v55
	v_max_f32_e32 v93, 0, v57
	v_dual_max_f32 v96, 0, v53 :: v_dual_max_f32 v99, 0, v50
	v_max_f32_e32 v97, 0, v52
	v_max_f32_e32 v95, 0, v54
	v_dual_max_f32 v101, 0, v48 :: v_dual_max_f32 v102, 0, v47
	v_dual_max_f32 v103, 0, v45 :: v_dual_max_f32 v104, 0, v43
	v_dual_max_f32 v105, 0, v41 :: v_dual_max_f32 v108, 0, v38
	v_dual_max_f32 v111, 0, v35 :: v_dual_max_f32 v112, 0, v34
	v_dual_max_f32 v113, 0, v33 :: v_dual_max_f32 v114, 0, v32
	v_dual_max_f32 v115, 0, v31 :: v_dual_max_f32 v118, 0, v28
	v_dual_max_f32 v121, 0, v25 :: v_dual_max_f32 v122, 0, v24
	v_dual_max_f32 v123, 0, v23 :: v_dual_max_f32 v124, 0, v22
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v81, v1, v1 :: v_dual_mul_f32 v80, v2, v2
	v_dual_mul_f32 v50, v3, v3 :: v_dual_mul_f32 v51, v4, v4
	v_dual_mul_f32 v54, v5, v5 :: v_dual_mul_f32 v55, v6, v6
	v_dual_mul_f32 v58, v7, v7 :: v_dual_mul_f32 v59, v8, v8
	v_dual_mul_f32 v62, v9, v9 :: v_dual_mul_f32 v63, v19, v19
	v_dual_mul_f32 v67, v20, v20 :: v_dual_mul_f32 v68, v21, v21
	v_dual_mul_f32 v71, v42, v42 :: v_dual_mul_f32 v72, v44, v44
	v_dual_mul_f32 v75, v46, v46 :: v_dual_mul_f32 v78, v77, v77
	v_dual_mul_f32 v76, v74, v74 :: v_dual_mul_f32 v77, v65, v65
	v_dual_mul_f32 v74, v79, v79 :: v_dual_mul_f32 v73, v73, v73
	v_dual_mul_f32 v70, v82, v82 :: v_dual_mul_f32 v69, v83, v83
	v_dual_mul_f32 v65, v84, v84 :: v_dual_mul_f32 v64, v85, v85
	v_dual_mul_f32 v61, v66, v66 :: v_dual_mul_f32 v56, v88, v88
	v_dual_mul_f32 v60, v86, v86 :: v_dual_mul_f32 v57, v87, v87
	v_dual_mul_f32 v53, v89, v89 :: v_dual_mul_f32 v52, v90, v90
	v_dual_mul_f32 v49, v91, v91 :: v_dual_mul_f32 v48, v92, v92
	v_dual_mul_f32 v47, v93, v93 :: v_dual_mul_f32 v46, v94, v94
	v_dual_mul_f32 v45, v95, v95 :: v_dual_mul_f32 v44, v96, v96
	v_dual_mul_f32 v43, v97, v97 :: v_dual_mul_f32 v42, v98, v98
	v_dual_mul_f32 v41, v99, v99 :: v_dual_mul_f32 v40, v100, v100
	v_dual_mul_f32 v39, v101, v101 :: v_dual_mul_f32 v38, v102, v102
	v_dual_mul_f32 v37, v103, v103 :: v_dual_mul_f32 v36, v104, v104
	v_dual_mul_f32 v35, v105, v105 :: v_dual_mul_f32 v34, v106, v106
	v_dual_mul_f32 v33, v107, v107 :: v_dual_mul_f32 v32, v108, v108
	v_dual_mul_f32 v31, v109, v109 :: v_dual_mul_f32 v30, v110, v110
	v_dual_mul_f32 v29, v111, v111 :: v_dual_mul_f32 v28, v112, v112
	v_dual_mul_f32 v27, v113, v113 :: v_dual_mul_f32 v26, v114, v114
	v_dual_mul_f32 v25, v115, v115 :: v_dual_mul_f32 v24, v116, v116
	v_dual_mul_f32 v23, v117, v117 :: v_dual_mul_f32 v22, v118, v118
	v_dual_mul_f32 v21, v119, v119 :: v_dual_mul_f32 v20, v120, v120
	v_dual_mul_f32 v19, v121, v121 :: v_dual_mul_f32 v8, v123, v123
	v_dual_mul_f32 v9, v122, v122 :: v_dual_mov_b32 v4, v16
	v_dual_mul_f32 v7, v124, v124 :: v_dual_mov_b32 v2, v15
	v_mov_b32_e32 v1, v14
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v3, v18
.LBB0_7:                                ; %._crit_edge
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v80, v80
	v_max_f32_e32 v14, v81, v81
	v_max3_f32 v16, v63, v67, v68
	v_max3_f32 v17, v71, v72, v75
	v_max3_f32 v15, v51, v54, v55
	v_max_f32_e32 v18, v78, v78
	v_max3_f32 v66, v58, v59, v62
	v_max3_f32 v82, v60, v57, v56
	v_max3_f32 v16, v16, v17, v76
	v_dual_max_f32 v17, v47, v47 :: v_dual_max_f32 v6, v14, v6
	v_max_f32_e32 v14, v77, v77
	v_max3_f32 v83, v53, v52, v49
	v_max3_f32 v84, v38, v37, v36
	v_max3_f32 v85, v35, v34, v33
	v_max3_f32 v6, v6, v50, v15
	v_max_f32_e32 v15, v46, v46
	v_max_f32_e32 v14, v18, v14
	v_max3_f32 v18, v73, v70, v69
	v_max3_f32 v79, v65, v64, v61
	v_max3_f32 v6, v6, v66, v16
	v_max_f32_e32 v15, v17, v15
	v_max3_f32 v17, v44, v43, v42
	v_max3_f32 v14, v14, v74, v18
	v_max3_f32 v18, v82, v83, v48
	v_max3_f32 v82, v41, v40, v39
	v_max_f32_e32 v83, v30, v30
	v_max3_f32 v15, v15, v45, v17
	v_max3_f32 v17, v84, v85, v32
	v_max_f32_e32 v84, v31, v31
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v14, v14, v79, v18
	v_max3_f32 v18, v22, v21, v20
	v_max3_f32 v15, v15, v82, v17
	v_max_f32_e32 v16, v84, v83
	v_max3_f32 v17, v28, v27, v26
	v_max3_f32 v66, v19, v9, v8
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v82, v6, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v79, v25, v24, v23
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v83, v14, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v16, v16, v29, v17
	v_max3_f32 v17, v18, v66, v7
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v18, v15, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v66, v82, v82 :: v_dual_max_f32 v83, v83, v83
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v5, 0x680, v5, v4
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v16, v16, v79, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v18, v18
	v_max_f32_e32 v82, v6, v66
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v6, v13, 9, 0
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v14, v83
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v14, v16, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v84, v15, v17 :: v_dual_and_b32 v17, 0x80, v0
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v15, 0x60, v0
	v_lshl_add_u32 v6, v1, 2, v6
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v18, v14, v14
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v86, v1, 6, 0
	v_lshlrev_b32_e32 v14, 1, v17
	v_xor_b32_e32 v66, v4, v15
	v_lshl_add_u32 v6, v2, 4, v6
	v_lshrrev_b32_e32 v79, 3, v17
	v_xor_b32_e32 v5, v5, v15
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v85, v16, v18
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v2
	v_add3_u32 v6, v6, v14, v66
.Ltmp45:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v12, v12, v15
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v86, v79, v5
.Ltmp47:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s29, 31
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v17, 0, v17
	ds_store_b128 v6, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp49:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v1, 5, v1
.Ltmp51:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s29, s4
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v5, v82 :: v_dual_mov_b32 v6, v83
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v66, v83, v83
	v_dual_max_f32 v18, v82, v82 :: v_dual_max_f32 v79, v85, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v16, v84 :: v_dual_max_f32 v5, v18, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v66, v6
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v82, v5 :: v_dual_mov_b32 v83, v6
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v82, v82, v82 :: v_dual_max_f32 v83, v83, v83
	v_dual_max_f32 v18, v84, v84 :: v_dual_max_f32 v5, v5, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v6, v6, v83
	v_max_f32_e32 v66, v85, v85
	v_max_f32_e32 v16, v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v83, v6
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v83, v83
	v_dual_max_f32 v18, v79, v66 :: v_dual_max_f32 v83, v6, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v79, v18
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v79, v79, v79
	v_max_f32_e32 v18, v18, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v79, v18
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v79, v79
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v66, v16 :: v_dual_max_f32 v85, v18, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v16, v16, v66
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v66, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v5
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v82, v82
	v_max_f32_e32 v82, v5, v82
	v_max_f32_e32 v5, v66, v66
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v66, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v84, v16, v5 :: v_dual_lshlrev_b32 v15, 6, v0
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v5, v13, 4, 0
	v_add3_u32 v6, v17, v66, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v15, v4
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v5, v1, v2
	ds_store_b128 v6, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp77:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v11, 0
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_load_b128 v[82:85], v1
.Ltmp79:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v82, v82 :: v_dual_max_f32 v2, v83, v83
	v_dual_max_f32 v5, v84, v84 :: v_dual_max_f32 v6, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_dual_max_f32 v5, 0x2b8cbccc, v5 :: v_dual_max_f32 v6, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v17, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v66, v13
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v79, v16
	v_rcp_f32_e32 v82, v17
	v_div_scale_f32 v84, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v83, v18
	v_div_scale_f32 v88, s0, v5, 0x40e00000, v5
	v_fma_f32 v85, -v13, v66, 1.0
	v_fma_f32 v86, -v16, v79, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v17, v82, 1.0
	v_fmac_f32_e32 v66, v85, v66
	v_div_scale_f32 v85, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v18, v83, 1.0
	v_dual_fmac_f32 v79, v86, v79 :: v_dual_fmac_f32 v82, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v84, v66
	v_div_scale_f32 v86, s2, v6, 0x40e00000, v6
	v_fmac_f32_e32 v83, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v88, v79
	v_fma_f32 v92, -v13, v87, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v90, v85, v82 :: v_dual_mul_f32 v91, v86, v83
	v_fma_f32 v93, -v16, v89, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v92, v66
	v_fma_f32 v94, -v17, v90, v85
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v92.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v95, -v18, v91, v86
	v_fmac_f32_e32 v89, v93, v79
	v_fma_f32 v13, -v13, v87, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v94, v82 :: v_dual_fmac_f32 v91, v95, v83
	v_fma_f32 v16, -v16, v89, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v13, v13, v66, v87
	v_fma_f32 v17, -v17, v90, v85
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v18, -v18, v91, v86
	v_div_fmas_f32 v16, v16, v79, v89
	v_div_fixup_f32 v1, v13, 0x40e00000, v1
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v17, v82, v90
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v16, 0x40e00000, v5
	v_div_fmas_f32 v5, v18, v83, v91
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v16.h, v92.h
	v_mov_b16_e32 v16.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v17, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v92.l, v13.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v17, v5, 0x40e00000, v6
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v92.h
	v_and_b32_e32 v5, 1, v16
	v_mov_b16_e32 v6.l, v2.h
	v_and_b32_e32 v16, 1, v92
	v_mov_b16_e32 v92.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v1, v5, 0x7fff
	v_add3_u32 v1, v13, v16, 0x7fff
.Ltmp80:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v13, 4, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 0xffff0000, v5
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v90, null, v82, v82, v51
	v_div_scale_f32 v87, s0, v80, v82, v80
	v_div_scale_f32 v83, vcc_lo, v81, v82, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v90
	v_div_scale_f32 v96, null, v82, v82, v55
	v_fma_f32 v100, -v90, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v93, v100, v93 :: v_dual_and_b32 v18, 1, v92
	v_div_scale_f32 v92, s2, v51, v82, v51
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v6, v2, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v17, v18, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v18, null, v82, v82, v80
	v_div_scale_f32 v17, null, v82, v82, v81
	v_rcp_f32_e32 v85, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v17
	v_fma_f32 v91, -v18, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v17, v84, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v79, 0xffff0000, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v85, v91, v85 :: v_dual_fmac_f32 v84, v16, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v95, v87, v85
	v_mul_f32_e32 v94, v83, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v98, -v18, v95, v87
	v_fma_f32 v97, -v17, v94, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v95, v98, v85 :: v_dual_fmac_f32 v94, v97, v84
	v_fma_f32 v18, -v18, v95, v87
	v_rcp_f32_e32 v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v94, v83
	v_mul_f32_e32 v83, v92, v93
	v_div_fmas_f32 v17, v17, v84, v94
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v90, v83, v92
	v_div_fmas_f32 v18, v18, v85, v95
	v_fma_f32 v85, -v96, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v84, v93
	v_fmac_f32_e32 v87, v85, v87
	v_div_scale_f32 v86, null, v82, v82, v50
	v_div_scale_f32 v88, s1, v50, v82, v50
	v_div_scale_f32 v91, null, v82, v82, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v86
	v_div_fixup_f32 v17, v17, v82, v81
	v_div_scale_f32 v81, s0, v54, v82, v54
	v_rcp_f32_e32 v98, v91
	v_div_fixup_f32 v18, v18, v82, v80
	v_div_scale_f32 v85, s3, v55, v82, v55
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v16, -v86, v89, 1.0
	v_fma_f32 v94, -v91, v98, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v89, v16, v89 :: v_dual_fmac_f32 v98, v94, v98
	v_mul_f32_e32 v99, v88, v89
	v_div_scale_f32 v94, null, v82, v82, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v98
	v_fma_f32 v97, -v86, v99, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v99, v97, v89
	v_div_scale_f32 v97, null, v82, v82, v68
	v_fma_f32 v80, -v86, v99, v88
	v_div_scale_f32 v86, null, v82, v82, v58
	v_fma_f32 v88, -v90, v83, v92
	v_mul_f32_e32 v92, v85, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v89, v99
	v_rcp_f32_e32 v90, v86
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v89, -v91, v84, v81
	v_div_fmas_f32 v83, v88, v93, v83
	v_rcp_f32_e32 v88, v94
	v_div_fixup_f32 v50, v80, v82, v50
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v84, v89, v98
	v_fma_f32 v89, -v96, v92, v85
	v_div_fixup_f32 v51, v83, v82, v51
	v_fma_f32 v93, -v86, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v91, v84, v81
	v_fmac_f32_e32 v92, v89, v87
	v_div_scale_f32 v81, s1, v58, v82, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v93, v90
	v_fma_f32 v83, -v94, v88, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v66, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v80, v80, v98, v84
	v_fma_f32 v84, -v96, v92, v85
	v_dual_mul_f32 v85, v81, v90 :: v_dual_fmac_f32 v88, v83, v88
	v_div_scale_f32 v91, s0, v59, v82, v59
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v54, v80, v82, v54
	v_div_fmas_f32 v84, v84, v87, v92
	v_fma_f32 v87, -v86, v85, v81
	v_mul_f32_e32 v92, v91, v88
	v_div_scale_f32 v89, null, v82, v82, v62
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v85, v87, v90
	v_fma_f32 v80, -v94, v92, v91
	v_rcp_f32_e32 v83, v89
	v_div_scale_f32 v93, null, v82, v82, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v86, v85, v81
	v_fmac_f32_e32 v92, v80, v88
	v_div_scale_f32 v87, null, v82, v82, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v93
	v_div_fmas_f32 v81, v81, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v94, v92, v91
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v95, -v89, v83, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v16, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v55, v84, v82, v55
	v_div_fmas_f32 v85, v85, v88, v92
	v_rcp_f32_e32 v88, v97
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v84, s2, v62, v82, v62
	v_fma_f32 v95, -v93, v96, 1.0
	v_rcp_f32_e32 v86, v87
	v_div_fixup_f32 v59, v85, v82, v59
	v_div_scale_f32 v92, s0, v67, v82, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v96, v95, v96
	v_fma_f32 v85, -v97, v88, 1.0
	v_div_scale_f32 v95, s3, v63, v82, v63
	v_div_fixup_f32 v58, v81, v82, v58
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v85, v88
	v_dual_mul_f32 v80, v84, v83 :: v_dual_mul_f32 v91, v95, v96
	v_fma_f32 v94, -v87, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v89, v80, v84
	v_fmac_f32_e32 v86, v94, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v90, v83
	v_fma_f32 v90, -v93, v91, v95
	v_fma_f32 v81, -v89, v80, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v90, v96 :: v_dual_mul_f32 v84, v92, v86
	v_div_scale_f32 v89, null, v82, v82, v71
	v_div_fmas_f32 v80, v81, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v93, v91, v95
	v_fma_f32 v83, -v87, v84, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v93, null, v82, v82, v72
	v_div_scale_f32 v90, s1, v68, v82, v68
	v_fmac_f32_e32 v84, v83, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v83, v93
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v62, v80, v82, v62
	v_div_fmas_f32 v81, v81, v96, v91
	v_mul_f32_e32 v91, v90, v88
	v_fma_f32 v94, -v89, v85, 1.0
	v_fma_f32 v80, -v87, v84, v92
	v_div_scale_f32 v87, s2, v71, v82, v71
	v_div_fixup_f32 v63, v81, v82, v63
	v_fma_f32 v81, -v97, v91, v90
	v_fmac_f32_e32 v85, v94, v85
	v_fma_f32 v92, -v93, v83, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v94, null, v82, v82, v75
	v_div_fmas_f32 v80, v80, v86, v84
	v_fmac_f32_e32 v91, v81, v88
	v_mul_f32_e32 v81, v87, v85
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v86, s0, v72, v82, v72
	v_div_fixup_f32 v67, v80, v82, v67
	v_fma_f32 v80, -v97, v91, v90
	v_fma_f32 v90, -v89, v81, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v95, v86, v83
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v84, v94
	v_div_scale_f32 v92, null, v82, v82, v76
	v_div_fmas_f32 v80, v80, v88, v91
	v_fmac_f32_e32 v81, v90, v85
	v_fma_f32 v88, -v93, v95, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v96, v92
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v68, v80, v82, v68
	v_fma_f32 v80, -v89, v81, v87
	v_fmac_f32_e32 v95, v88, v83
	v_div_scale_f32 v89, null, v79, v79, v78
	v_fma_f32 v97, -v94, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v85, v81
	v_fma_f32 v81, -v93, v95, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v90, s1, v75, v82, v75
	v_fmac_f32_e32 v84, v97, v84
	v_fma_f32 v91, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v88, s3, v76, v82, v76
	v_div_scale_f32 v93, null, v79, v79, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v96, v91, v96
	v_div_fmas_f32 v81, v81, v83, v95
	v_fma_f32 v95, -v89, v86, 1.0
	v_mul_f32_e32 v87, v90, v84
	v_rcp_f32_e32 v83, v93
	v_mul_f32_e32 v91, v88, v96
	v_div_fixup_f32 v71, v80, v82, v71
	v_fmac_f32_e32 v86, v95, v86
	v_fma_f32 v85, -v94, v87, v90
	v_div_fixup_f32 v72, v81, v82, v72
	v_div_scale_f32 v81, s0, v78, v79, v78
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v87, v85, v84
	v_fma_f32 v85, -v92, v91, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v94, v87, v90
	v_fmac_f32_e32 v91, v85, v96
	v_fma_f32 v85, -v93, v83, 1.0
	v_div_scale_f32 v90, null, v79, v79, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v90, v85, 1.0
	v_fmac_f32_e32 v85, v95, v85
	v_div_fmas_f32 v80, v80, v84, v87
	v_fma_f32 v84, -v92, v91, v88
	v_mul_f32_e32 v87, v81, v86
	v_div_scale_f32 v88, s1, v77, v79, v77
	v_div_scale_f32 v92, null, v79, v79, v73
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v94, v88, v83
	v_div_fmas_f32 v84, v84, v96, v91
	v_fma_f32 v91, -v89, v87, v81
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v75, v80, v82, v75
	v_fma_f32 v80, -v93, v94, v88
	v_div_fixup_f32 v76, v84, v82, v76
	v_fmac_f32_e32 v87, v91, v86
	v_div_scale_f32 v84, null, v79, v79, v70
	v_div_scale_f32 v82, s2, v74, v79, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v89, v87, v81
	v_fma_f32 v91, -v92, v96, 1.0
	v_fmac_f32_e32 v94, v80, v83
	v_rcp_f32_e32 v89, v84
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v80, v82, v85
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s3, v73, v79, v73
	v_div_fmas_f32 v81, v81, v86, v87
	v_fma_f32 v86, -v93, v94, v88
	v_div_scale_f32 v95, null, v79, v79, v69
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v90, v80, v82
	v_mul_f32_e32 v88, v91, v96
	v_fma_f32 v93, -v84, v89, 1.0
	v_div_fmas_f32 v83, v86, v83, v94
	v_rcp_f32_e32 v86, v95
	v_fmac_f32_e32 v80, v87, v85
	v_fma_f32 v87, -v92, v88, v91
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s0, v70, v79, v70
	v_div_fixup_f32 v78, v81, v79, v78
	v_div_fixup_f32 v77, v83, v79, v77
	v_fma_f32 v81, -v90, v80, v82
	v_fmac_f32_e32 v88, v87, v96
	v_mul_f32_e32 v82, v93, v89
	v_fma_f32 v83, -v95, v86, 1.0
	v_div_scale_f32 v87, null, v79, v79, v65
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v90, s1, v69, v79, v69
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v91
	v_fma_f32 v85, -v84, v82, v93
	v_fmac_f32_e32 v86, v83, v86
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v91, null, v79, v79, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v89
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v74, v80, v79, v74
	v_rcp_f32_e32 v85, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v84, v82, v93
	v_div_scale_f32 v93, null, v79, v79, v61
	v_fma_f32 v92, -v87, v83, 1.0
	v_div_scale_f32 v84, s2, v65, v79, v65
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v92, v83
	v_fma_f32 v92, -v91, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v92, v85
	v_div_fmas_f32 v81, v81, v96, v88
	v_mul_f32_e32 v88, v90, v86
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v92, null, v79, v79, v60
	v_div_fixup_f32 v73, v81, v79, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v95, v88, v90
	v_div_fmas_f32 v80, v80, v89, v82
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v89, s0, v64, v79, v64
	v_dual_fmac_f32 v88, v81, v86 :: v_dual_mul_f32 v81, v84, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v70, v80, v79, v70
	v_mul_f32_e32 v94, v89, v85
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v95, v88, v90
	v_fma_f32 v90, -v87, v81, v84
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v73, v73
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v80, v80, v86, v88
	v_fmac_f32_e32 v81, v90, v83
	v_fma_f32 v86, -v91, v94, v89
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s1, v61, v79, v61
	v_div_fixup_f32 v69, v80, v79, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v80, -v87, v81, v84
	v_fmac_f32_e32 v94, v86, v85
	v_mul_f32_e32 v84, v88, v82
	v_div_scale_f32 v87, null, v79, v79, v57
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s3, v60, v79, v60
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v79, v79, v56
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v65, v80, v79, v65
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v64, v81, v79, v64
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s0, v57, v79, v57
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v83, 1.0
	v_div_scale_f32 v88, null, v79, v79, v53
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v96, null, v79, v79, v48
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v84, v81, v89
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s1, v56, v79, v56
	v_div_scale_f32 v92, null, v79, v79, v52
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v93, v86, v83
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v84, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v61, v80, v79, v61
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v84, v90, v89
	v_div_fixup_f32 v60, v82, v79, v60
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s2, v53, v79, v53
	v_div_scale_f32 v90, null, v79, v79, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v84, v81
	v_fmac_f32_e32 v93, v80, v83
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v80, v82, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s3, v52, v79, v52
	v_div_fmas_f32 v81, v81, v89, v84
	v_fma_f32 v84, -v91, v93, v86
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v88, v80, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v57, v81, v79, v57
	v_div_fmas_f32 v83, v84, v83, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v56, v83, v79, v56
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s0, v49, v79, v49
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v66, v66, v47
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s1, v48, v79, v48
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v85, -v90, v82, v91
	v_div_scale_f32 v92, null, v66, v66, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v53, v80, v79, v53
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v80, -v90, v82, v91
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v66, v66, v45
	v_div_fixup_f32 v52, v81, v79, v52
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s2, v47, v66, v47
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v80, v80, v87, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v84
	v_mul_f32_e32 v81, v90, v83
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v87, s0, v46, v66, v46
	v_div_scale_f32 v91, null, v66, v66, v44
	v_div_fixup_f32 v49, v80, v79, v49
	v_fma_f32 v80, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s1, v45, v66, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v80, v79, v48
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v66, v66, v43
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s3, v44, v66, v44
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v66, v66, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v84, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v47, v79, v66, v47
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v79, -v93, v80, v88
	v_div_fixup_f32 v46, v81, v66, v46
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v81, s0, v43, v66, v43
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v85, -v90, v83, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v88, null, v66, v66, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v85, v83
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v84
	v_mul_f32_e32 v82, v81, v87
	v_div_scale_f32 v85, s1, v42, v66, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v45, v79, v66, v45
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_mul_f32_e32 v92, v85, v83
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v95, null, v66, v66, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v89, v87
	v_fma_f32 v79, -v90, v92, v85
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v91, null, v66, v66, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v79, v83
	v_div_fixup_f32 v44, v80, v66, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v94, v91
	v_div_scale_f32 v80, s2, v41, v66, v41
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_scale_f32 v89, null, v66, v66, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_div_fixup_f32 v43, v81, v66, v43
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v42, v82, v66, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v65, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v82, -v95, v83, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v90, -v89, v86, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v46, v46
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v83, v82, v83 :: v_dual_fmac_f32 v84, v93, v84
	v_fma_f32 v93, -v91, v94, 1.0
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s0, v39, v66, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v79, v80, v84 :: v_dual_fmac_f32 v94, v93, v94
	v_div_scale_f32 v93, s3, v40, v66, v40
	v_mul_f32_e32 v81, v90, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v88, v79, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v87, v93, v94
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v60, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v79, v85, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v85, -v91, v87, v93
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v53, v53
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v88, v79, v80
	v_div_scale_f32 v88, s1, v38, v66, v38
	v_fmac_f32_e32 v87, v85, v94
	v_div_scale_f32 v85, null, v66, v66, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v84, -v89, v81, v90
	v_fma_f32 v80, -v91, v87, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v66, v66, v36
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v41, v79, v66, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v79, -v89, v81, v90
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v40, v80, v66, v40
	v_fma_f32 v80, -v95, v87, v88
	v_div_fmas_f32 v79, v79, v86, v81
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v66, v66, v35
	v_fma_f32 v90, -v91, v84, 1.0
	v_fmac_f32_e32 v87, v80, v83
	v_div_scale_f32 v86, s0, v36, v66, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v84, v90, v84
	v_div_fixup_f32 v39, v79, v66, v39
	v_fma_f32 v79, -v95, v87, v88
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, s2, v37, v66, v37
	v_mul_f32_e32 v93, v86, v84
	v_div_scale_f32 v90, null, v66, v66, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v92, v81, 1.0
	v_div_fmas_f32 v79, v79, v83, v87
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v87, s1, v35, v66, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v95, v81
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v93, v83, v84
	v_div_fixup_f32 v38, v79, v66, v38
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v83, v87, v81 :: v_dual_mul_f32 v80, v89, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v85, v80, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v88, -v90, v94, 1.0
	v_fma_f32 v79, -v85, v80, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v85, s3, v34, v66, v34
	v_div_scale_f32 v88, null, v66, v66, v33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v88
	v_mul_f32_e32 v89, v85, v94
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v91, null, v66, v66, v32
	v_div_fmas_f32 v80, v80, v84, v93
	v_fmac_f32_e32 v83, v82, v81
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v37, v79, v66, v37
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_fmac_f32_e32 v89, v84, v94
	v_rcp_f32_e32 v82, v91
	v_div_fixup_f32 v36, v80, v66, v36
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v80, s0, v33, v66, v33
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v80, v86
	v_div_scale_f32 v92, null, v16, v16, v30
	v_div_fmas_f32 v81, v81, v94, v89
	v_fma_f32 v84, -v91, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v89, -v88, v83, v80
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v85, s1, v32, v66, v32
	v_div_fixup_f32 v34, v81, v66, v34
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v16, v16, v31
	v_fmac_f32_e32 v83, v89, v86
	v_div_fixup_f32 v35, v79, v66, v35
	v_div_scale_f32 v94, null, v16, v16, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v80, -v88, v83, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_scale_f32 v88, null, v16, v16, v29
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v80, v80, v86, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v86, s0, v30, v16, v30
	v_fma_f32 v89, -v84, v87, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v33, v80, v66, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v95, v86, v81 :: v_dual_mul_f32 v90, v85, v82
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v80, -v94, v96, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v91, v90, v85
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v90, v79, v82
	v_div_scale_f32 v79, s2, v31, v16, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v91, v90, v85
	v_mul_f32_e32 v85, v79, v87
	v_fma_f32 v91, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v93, -v84, v85, v79
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s3, v29, v16, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v93, v87
	v_div_fmas_f32 v82, v83, v82, v90
	v_fma_f32 v83, -v92, v95, v86
	v_mul_f32_e32 v90, v91, v89
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v32, v82, v66, v32
	v_fma_f32 v66, -v84, v85, v79
	v_fmac_f32_e32 v95, v83, v81
	v_fma_f32 v79, -v88, v90, v91
	v_div_scale_f32 v82, null, v16, v16, v27
	v_div_fmas_f32 v66, v66, v87, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v92, v95, v86
	v_fmac_f32_e32 v90, v79, v89
	v_div_scale_f32 v85, null, v16, v16, v26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	v_rcp_f32_e32 v87, v85
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v66, v16, v31
	v_div_fixup_f32 v30, v81, v16, v30
	v_div_fmas_f32 v83, v83, v89, v90
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v86, -v82, v79, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v29, v83, v16, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fmac_f32_e32 v96, v80, v96
	v_div_scale_f32 v80, s1, v28, v16, v28
	v_div_scale_f32 v83, null, v16, v16, v25
	v_fmac_f32_e32 v87, v81, v87
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s0, v27, v16, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v83
	v_mul_f32_e32 v84, v80, v96
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v66, v86, v79
	v_div_scale_f32 v81, s2, v26, v16, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v94, v84, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v88, v96
	v_fma_f32 v88, -v82, v66, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v94, v84, v80
	v_fmac_f32_e32 v66, v88, v79
	v_div_scale_f32 v88, null, v16, v16, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v96, v84
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v90, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v28, v80, v16, v28
	v_fma_f32 v80, -v82, v66, v86
	v_fma_f32 v86, -v83, v89, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v66, v80, v79, v66
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v16, v16, v22
	v_div_scale_f32 v80, s0, v25, v16, v25
	v_mul_f32_e32 v84, v81, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v86
	v_div_scale_f32 v79, null, v16, v16, v23
	v_div_fixup_f32 v27, v66, v16, v27
	v_fma_f32 v82, -v85, v84, v81
	v_fma_f32 v66, -v88, v90, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v93, s2, v23, v16, v23
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v94, -v86, v92, 1.0
	v_fmac_f32_e32 v92, v94, v92
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v94, s3, v22, v16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v85, v84, v81
	v_mul_f32_e32 v85, v80, v89
	v_div_fmas_f32 v81, v81, v87, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v79, v82, 1.0
	v_fma_f32 v84, -v83, v85, v80
	v_fmac_f32_e32 v90, v66, v90
	v_div_scale_f32 v66, s1, v24, v16, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v16, v16, v21
	v_fmac_f32_e32 v85, v84, v89
	v_mul_f32_e32 v87, v66, v90
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v26, v81, v16, v26
	v_fma_f32 v80, -v83, v85, v80
	v_fma_f32 v84, -v88, v87, v66
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v80, v80, v89, v85
	v_fmac_f32_e32 v87, v84, v90
	v_mul_f32_e32 v83, v94, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v85, null, v16, v16, v20
	v_fma_f32 v66, -v88, v87, v66
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s0, v21, v16, v21
	v_mul_f32_e32 v96, v93, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v66, v66, v90, v87
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v25, v80, v16, v25
	v_fma_f32 v81, -v79, v96, v93
	v_div_fixup_f32 v24, v66, v16, v24
	v_div_scale_f32 v89, null, v16, v16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v85, v87, 1.0
	v_fma_f32 v79, -v79, v96, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v81, v92
	v_mul_f32_e32 v81, v84, v95
	v_div_fmas_f32 v79, v79, v82, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v79, v16, v23
	v_div_fmas_f32 v82, v82, v92, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v81, v86, v95
	v_div_scale_f32 v79, null, v16, v16, v19
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v82, v16, v22
	v_fma_f32 v66, -v91, v81, v84
	v_div_scale_f32 v82, null, v16, v16, v8
	v_rcp_f32_e32 v91, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v66, v66, v95, v81
	v_rcp_f32_e32 v81, v79
	v_rcp_f32_e32 v86, v82
	v_div_scale_f32 v83, vcc_lo, v20, v16, v20
	v_div_fixup_f32 v21, v66, v16, v21
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v66, -v79, v81, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s3, v7, v16, v7
	v_dual_fmac_f32 v81, v66, v81 :: v_dual_fmac_f32 v86, v93, v86
	v_div_scale_f32 v66, s0, v19, v16, v19
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v16, v16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v94, v66, v81
	v_div_scale_f32 v93, s2, v8, v16, v8
	v_rcp_f32_e32 v84, v80
	v_mul_f32_e32 v88, v83, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v98, v95, v91 :: v_dual_mul_f32 v97, v93, v86
	v_fma_f32 v92, -v85, v88, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v80, v84, 1.0
	v_fmac_f32_e32 v88, v92, v87
	v_fma_f32 v92, -v79, v94, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s1, v9, v16, v9
	v_fmac_f32_e32 v94, v92, v81
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v83, -v85, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v90, v84
	v_fma_f32 v66, -v79, v94, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v92, v86
	v_fma_f32 v79, -v89, v98, v95
	v_fma_f32 v85, -v80, v96, v90
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v98, v79, v91
	v_fmac_f32_e32 v96, v85, v84
	v_fma_f32 v79, -v82, v97, v93
	v_div_fmas_f32 v66, v66, v81, v94
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v89, v98, v95
	v_fma_f32 v80, -v80, v96, v90
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v74, v74, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v19, v66, v16, v19
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v68
	v_rndne_f32_e32 v68, v72
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v72, v76
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v76, v77
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v91, v98
	v_div_fixup_f32 v20, v83, v16, v20
	v_div_fixup_f32 v9, v80, v16, v9
	v_div_fixup_f32 v8, v79, v16, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v76, v76, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v7, v81, v16, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v50
	v_rndne_f32_e32 v50, v51
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v77, v47
	v_cvt_i32_f32_e32 v90, v34
	v_and_b32_e32 v34, 15, v74
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v74, 10, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v79, v45
	v_cvt_i32_f32_e32 v91, v33
	v_and_b32_e32 v33, 15, v76
	v_and_b32_e32 v47, 15, v48
	v_and_b32_e32 v48, 15, v77
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v76, 0x1800, v74
	v_lshlrev_b32_e32 v77, 6, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v78, v46
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v93, v31
	v_cvt_i32_f32_e32 v94, v30
	v_cvt_i32_f32_e32 v95, v29
	v_cvt_i32_f32_e32 v96, v28
	v_cvt_i32_f32_e32 v105, v19
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v19, 15, v50
	v_and_b32_e32 v50, 15, v79
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v79, 0, v76, v77
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v85, v39
	v_cvt_i32_f32_e32 v86, v38
	v_cvt_i32_f32_e32 v87, v37
	v_cvt_i32_f32_e32 v88, v36
	v_cvt_i32_f32_e32 v101, v23
	v_cvt_i32_f32_e32 v102, v22
	v_cvt_i32_f32_e32 v103, v21
	v_cvt_i32_f32_e32 v104, v20
	v_cvt_i32_f32_e32 v89, v35
	v_cvt_i32_f32_e32 v92, v32
	v_cvt_i32_f32_e32 v97, v27
	v_and_b32_e32 v16, 15, v16
	v_and_b32_e32 v17, 15, v17
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v20, 15, v51
	v_and_b32_e32 v21, 15, v54
	v_and_b32_e32 v22, 15, v55
	v_and_b32_e32 v23, 15, v58
	v_and_b32_e32 v27, 15, v66
	v_and_b32_e32 v28, 15, v67
	v_and_b32_e32 v32, 15, v75
	v_and_b32_e32 v35, 15, v73
	v_and_b32_e32 v36, 15, v70
	v_and_b32_e32 v37, 15, v69
	v_and_b32_e32 v38, 15, v65
	v_and_b32_e32 v39, 15, v64
	v_and_b32_e32 v46, 15, v49
	v_and_b32_e32 v49, 15, v78
	v_and_b32_e32 v51, 15, v80
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v65, 15, v94
	v_and_b32_e32 v66, 15, v95
	v_and_b32_e32 v67, 15, v96
	v_and_b32_e32 v78, 15, v8
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v8, v79, v12, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v81, v43
	v_cvt_i32_f32_e32 v82, v42
	v_cvt_i32_f32_e32 v83, v41
	v_cvt_i32_f32_e32 v84, v40
	v_cvt_i32_f32_e32 v98, v26
	v_cvt_i32_f32_e32 v99, v25
	v_cvt_i32_f32_e32 v100, v24
	v_and_b32_e32 v24, 15, v59
	v_and_b32_e32 v25, 15, v62
	v_and_b32_e32 v26, 15, v63
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v71
	v_and_b32_e32 v31, 15, v72
	v_and_b32_e32 v40, 15, v61
	v_and_b32_e32 v41, 15, v60
	v_and_b32_e32 v42, 15, v57
	v_and_b32_e32 v43, 15, v56
	v_and_b32_e32 v44, 15, v53
	v_and_b32_e32 v45, 15, v52
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v58, 15, v87
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v72, 15, v101
	v_and_b32_e32 v73, 15, v102
	v_and_b32_e32 v74, 15, v103
	v_and_b32_e32 v75, 15, v104
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v8, v[16:19]
	ds_store_b128 v8, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v4
	ds_load_b128 v[24:27], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[32:35]
	ds_store_b128 v8, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v4
	ds_load_b128 v[40:43], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[48:51]
	ds_store_b128 v8, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v4
	ds_load_b128 v[56:59], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[64:67]
	ds_store_b128 v8, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v4
	ds_load_b128 v[72:75], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[20:23]
	ds_store_b128 v8, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v4
	ds_load_b128 v[28:31], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[36:39]
	ds_store_b128 v8, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v4
	ds_load_b128 v[44:47], v4 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v68, 15, v97
	v_and_b32_e32 v69, 15, v98
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v70, 15, v99
	v_and_b32_e32 v71, 15, v100
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v63, 15, v92
	v_and_b32_e32 v76, 15, v105
	v_and_b32_e32 v77, 15, v9
	v_and_b32_e32 v79, 15, v7
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v8, v[52:55]
	ds_store_b128 v8, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v4
	ds_load_b128 v[60:63], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[68:71]
	ds_store_b128 v8, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v4
	ds_load_b128 v[76:79], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v24, 4, v14
	v_lshl_or_b32 v4, v25, 4, v15
	v_lshl_or_b32 v8, v26, 4, v16
	v_lshl_or_b32 v9, v27, 4, v17
	v_lshl_or_b32 v11, v28, 4, v18
	v_lshl_or_b32 v12, v29, 4, v19
	v_lshl_or_b32 v14, v30, 4, v20
	v_lshl_or_b32 v15, v31, 4, v21
	v_lshl_or_b32 v22, v46, 4, v38
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v38, 3, v10
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v10, s0, v13
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v16, v40, 4, v32
	v_lshl_or_b32 v17, v41, 4, v33
	v_lshl_or_b32 v18, v42, 4, v34
	v_lshl_or_b32 v19, v43, 4, v35
	v_lshl_or_b32 v20, v44, 4, v36
	v_lshl_or_b32 v21, v45, 4, v37
	v_lshl_or_b32 v23, v47, 4, v39
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, s2, s1, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v2.l, 0xff, v8.l
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v7.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v6.l, 0xff, v14.l
	v_lshlrev_b16 v7.l, 8, v12.l
	v_and_b16 v7.h, 0xff, v11.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v56, 4, v48
	v_lshl_or_b32 v25, v57, 4, v49
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v10
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v4.l, 8, v17.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v6.l, 0xff, v22.l
	v_lshlrev_b16 v7.l, 8, v21.l
	v_and_b16 v7.h, 0xff, v20.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	v_add3_u32 v42, v10, s1, v39
	v_add3_u32 v43, v10, s2, v39
	v_add3_u32 v39, v10, s0, v39
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s17, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v32, v72, 4, v64
	v_lshl_or_b32 v33, v73, 4, v65
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v41, s[0:3], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v4.l, 8, v25.l
	v_and_b16 v4.h, 0xff, v24.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v26, v58, 4, v50
	v_lshl_or_b32 v27, v59, 4, v51
	v_lshl_or_b32 v28, v60, 4, v52
	v_lshl_or_b32 v29, v61, 4, v53
	v_lshl_or_b32 v30, v62, 4, v54
	v_lshl_or_b32 v31, v63, 4, v55
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v42, s[0:3], 0 offen
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v33.l
	v_and_b16 v4.h, 0xff, v32.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v34, v74, 4, v66
	v_lshl_or_b32 v35, v75, 4, v67
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v36, v76, 4, v68
	v_lshl_or_b32 v37, v77, 4, v69
	v_lshl_or_b32 v13, v78, 4, v70
	v_lshl_or_b32 v40, v79, 4, v71
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v27.l
	v_and_b16 v2.l, 0xff, v26.l
	v_lshlrev_b16 v5.l, 8, v31.l
	v_and_b16 v6.l, 0xff, v30.l
	v_lshlrev_b16 v7.l, 8, v29.l
	v_and_b16 v7.h, 0xff, v28.l
	v_or_b16 v10.l, v4.h, v4.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 4, v0
	v_lshrrev_b32_e32 v3, 2, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v35.l
	v_and_b16 v2.l, 0xff, v34.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v6.l, 0xff, v13.l
	v_lshlrev_b16 v7.l, 8, v37.l
	v_and_b16 v7.h, 0xff, v36.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v11.h, v6.l, v5.l
	v_or_b16 v11.l, v7.h, v7.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v7, 0, v38
	v_mov_b16_e32 v2.l, v6.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v3, v3, v4, v38
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 63, s30
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v43, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v39, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s4, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v7, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v5, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s1, s19, 0xffff
	s_mov_b32 s0, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp82:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp83:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 186
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16616
; TotalNumSgprs: 36
; NumVgprs: 186
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
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
	.byte	5                               ; Abbrev [5] 0x68:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x81:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x8f:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     186
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
