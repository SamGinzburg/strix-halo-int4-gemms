	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v13, 15, v0
	v_and_b32_e32 v17, 4, v0
	v_and_b32_e32 v18, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s28, 63
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
	s_sub_i32 s28, s2, s10
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s4, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s28, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s6
	s_mov_b32 s6, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s5, s5, s7
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 4, v0
.Ltmp15:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v14, 0xf0, v0
	v_lshrrev_b32_e32 v12, 4, v0
	v_dual_mov_b32 v6, 0 :: v_dual_lshlrev_b32 v9, 4, v13
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v15, 3, v0
	v_dual_mov_b32 v19, 0 :: v_dual_lshlrev_b32 v16, 4, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v80, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s30, s5, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
.Ltmp17:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s5, s4, 31
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 31
.Ltmp19:
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	s_mul_i32 s6, s30, s4
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v1, 3, v15
	v_mul_lo_u32 v2, s4, v2
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s4, s5, 31
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s1, 26
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s4, s4, 27
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s1
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s5, s5, s4
	s_mov_b32 s4, 0
.Ltmp25:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 6
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s2, s5, 5
	v_add3_u32 v28, v2, v1, s6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
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
	v_lshlrev_b32_e32 v3, 5, v0
	v_bfe_i32 v5, v0, 2, 1
	v_lshrrev_b32_e32 v6, 1, v0
	v_lshlrev_b32_e32 v1, 3, v0
	v_bfe_i32 v2, v0, 4, 1
	v_and_b32_e32 v4, 0x160, v3
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_and_or_b32 v6, 0x70, v6, v13
	v_and_b32_e32 v1, 0x778, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_or_b32 v4, 0x90, v5, v4
	v_or_b32_e32 v5, s30, v13
	v_and_b32_e32 v2, 0x90, v2
	v_add_nc_u32_e32 v43, 0, v6
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v3, 32, v3
	v_or_b32_e32 v7, 16, v5
	v_or_b32_e32 v6, 32, v5
	v_mul_lo_u32 v46, v5, s2
	v_or_b32_e32 v5, 48, v5
	v_mov_b32_e32 v94, 0
	v_mul_lo_u32 v47, v7, s2
	v_lshrrev_b32_e32 v7, 6, v0
	v_mul_lo_u32 v58, v6, s2
	v_lshlrev_b32_e32 v6, 2, v0
	v_mul_lo_u32 v59, v5, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v5, 2, v7
	v_lshlrev_b32_e32 v7, 1, v14
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v6, 0x1c0, v6
	v_mad_u64_u32 v[10:11], null, s29, v12, v[9:10]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v65, 0, v7
	v_xor_b32_e32 v1, v2, v1
	v_xor_b32_e32 v2, 16, v4
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v11, 28, v8
	v_add3_u32 v19, v5, v6, v3
	v_add3_u32 v20, v65, v7, v3
.Ltmp27:
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	s_lshl_b32 s0, s28, 8
	v_add_nc_u32_e32 v78, 0, v1
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v80, 0, v4
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v87, 0, v2
	v_mov_b32_e32 v1, s4
	v_lshl_add_u32 v32, s29, 4, v10
	v_or_b32_e32 v67, s0, v0
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v79, 0, v16
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v95, v19, v11
	v_mov_b32_e32 v74, 0
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v96, v20, v11
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s31, s29, 5
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
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v97, s6, v28
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s5, s6, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s7, s5, s0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s5, s6, 32
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[105:106], v97, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v97, s7, v10
	v_add_nc_u32_e32 v101, s7, v32
	s_add_i32 s7, s7, s31
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s6, s6, 5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[24:27], 0 offen
	buffer_load_b128 v[101:104], v101, s[24:27], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s6, s2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v78, v[105:106] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v79, v[97:100]
	s_waitcnt vmcnt(0)
	ds_store_b128 v79, v[101:104] offset:4096
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v97, s5, v28
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v101, s7, v32
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[105:106], v97, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v97, s7, v10
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[24:27], 0 offen
	buffer_load_b128 v[101:104], v101, s[24:27], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v78, v[105:106] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v79, v[97:100] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v79, v[101:104] offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v105, v43 offset:7424
	ds_load_u8 v106, v43 offset:7168
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[113:116], v80 offset:16384
	ds_load_b128 v[129:132], v80 offset:16896
	ds_load_b128 v[145:148], v80 offset:17408
	ds_load_b128 v[161:164], v80 offset:17920
	ds_load_b128 v[117:120], v87 offset:16384
	ds_load_b128 v[133:136], v87 offset:16896
	ds_load_b128 v[149:152], v87 offset:17408
	ds_load_b128 v[165:168], v87 offset:17920
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v97, v43 offset:3328
	ds_load_u8 v98, v43 offset:3072
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:7936
	ds_load_u8 v107, v43 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:3840
	ds_load_u8 v99, v43 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v160, v106, 16, v105
	ds_load_u8 v105, v43 offset:6400
	ds_load_u8 v106, v43 offset:6144
	v_lshl_or_b32 v156, v98, 16, v97
	ds_load_u8 v97, v43 offset:2304
	ds_load_u8 v98, v43 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:6912
	ds_load_u8 v107, v43 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:2816
	ds_load_u8 v99, v43 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v159, v106, 16, v105
	ds_load_u8 v105, v43 offset:5376
	ds_load_u8 v106, v43 offset:5120
	v_lshl_or_b32 v155, v98, 16, v97
	ds_load_u8 v97, v43 offset:1280
	ds_load_u8 v98, v43 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:5888
	ds_load_u8 v107, v43 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:1792
	ds_load_u8 v99, v43 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v158, v106, 16, v105
	ds_load_u8 v105, v43 offset:4352
	ds_load_u8 v106, v43 offset:4096
	v_lshl_or_b32 v154, v98, 16, v97
	ds_load_u8 v97, v43 offset:256
	ds_load_u8 v98, v43
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:4864
	ds_load_u8 v107, v43 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:768
	ds_load_u8 v99, v43 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v106, 16, v105
	ds_load_u8 v105, v43 offset:3456
	ds_load_u8 v106, v43 offset:3200
	v_lshl_or_b32 v153, v98, 16, v97
	v_wmma_i32_16x16x16_iu8 v[97:104], v[153:156], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[157:160], v[117:120], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:3968
	ds_load_u8 v107, v43 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v106, 16, v105
	ds_load_u8 v105, v43 offset:2432
	ds_load_u8 v106, v43 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:2944
	ds_load_u8 v107, v43 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v106, 16, v105
	ds_load_u8 v105, v43 offset:1408
	ds_load_u8 v106, v43 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:1920
	ds_load_u8 v107, v43 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v106, 16, v105
	ds_load_u8 v105, v43 offset:384
	ds_load_u8 v106, v43 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:896
	ds_load_u8 v107, v43 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v106, 16, v105
	v_wmma_i32_16x16x16_iu8 v[105:112], v[169:172], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v43 offset:7552
	ds_load_u8 v114, v43 offset:7296
	v_wmma_i32_16x16x16_iu8 v[121:128], v[169:172], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[169:172], v[145:148], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:8064
	ds_load_u8 v115, v43 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v114, 16, v113
	ds_load_u8 v113, v43 offset:6528
	ds_load_u8 v114, v43 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:7040
	ds_load_u8 v115, v43 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v114, 16, v113
	ds_load_u8 v113, v43 offset:5504
	ds_load_u8 v114, v43 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:6016
	ds_load_u8 v115, v43 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v114, 16, v113
	ds_load_u8 v113, v43 offset:4480
	ds_load_u8 v114, v43 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:4992
	ds_load_u8 v115, v43 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[105:112], v[173:176], v[117:120], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[153:156], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[173:176], v[133:136], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[173:176], v[149:152], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v110, v110
	v_wmma_i32_16x16x16_iu8 v[113:120], v[157:160], v[133:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[153:156], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v114, v114
	v_wmma_i32_16x16x16_iu8 v[129:136], v[157:160], v[149:152], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[153:156], v[161:164], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[157:160], v[165:168], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[169:172], v[161:164], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v161, v97
	v_cvt_f32_i32_e32 v162, v98
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v97, v46, s6, 1
	v_add_lshl_u32 v98, v47, s6, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v163, v99
	v_cvt_f32_i32_e32 v164, v100
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v99, v58, s6, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_add_lshl_u32 v100, v59, s6, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s6, s29
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	s_clause 0x1
	buffer_load_u16 v97, v97, s[8:11], 0 offen
	buffer_load_u16 v98, v98, s[8:11], 0 offen
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[153:160], v[173:176], v[165:168], v[153:160] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v99, v99, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v165, v101
	v_cvt_f32_i32_e32 v166, v102
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v100, v100, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v167, v103
	v_cvt_f32_i32_e32 v168, v104
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v170, 16, v98
	v_lshlrev_b32_e32 v169, 16, v97
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v97, v67, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_mul_f32 v114, v114, v170
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v110, v110, v169 :: v_dual_lshlrev_b32 v171, 16, v99
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v161, v161, v169 :: v_dual_lshlrev_b32 v172, 16, v100
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v97, v97, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v106, v106, v169 :: v_dual_mul_f32 v117, v117, v170
	v_mul_f32_e32 v132, v132, v171
	v_dual_mul_f32 v143, v143, v171 :: v_dual_mul_f32 v160, v160, v172
	v_dual_mul_f32 v131, v131, v171 :: v_dual_mul_f32 v148, v148, v172
	v_dual_mul_f32 v141, v141, v171 :: v_dual_mul_f32 v158, v158, v172
	v_mul_f32_e32 v162, v162, v169
	v_mul_f32_e32 v164, v164, v169
	v_mul_f32_e32 v166, v166, v169
	v_mul_f32_e32 v168, v168, v169
	v_dual_mul_f32 v108, v108, v169 :: v_dual_mul_f32 v115, v115, v170
	v_dual_mul_f32 v130, v130, v171 :: v_dual_mul_f32 v119, v119, v170
	v_dual_mul_f32 v134, v134, v171 :: v_dual_mul_f32 v121, v121, v170
	v_dual_mul_f32 v136, v136, v171 :: v_dual_mul_f32 v123, v123, v170
	v_mul_f32_e32 v138, v138, v171
	v_dual_mul_f32 v129, v129, v171 :: v_dual_mul_f32 v146, v146, v172
	v_dual_mul_f32 v133, v133, v171 :: v_dual_mul_f32 v150, v150, v172
	v_dual_mul_f32 v135, v135, v171 :: v_dual_mul_f32 v152, v152, v172
	v_dual_mul_f32 v137, v137, v171 :: v_dual_mul_f32 v154, v154, v172
	v_dual_mul_f32 v139, v139, v171 :: v_dual_mul_f32 v156, v156, v172
	v_dual_mul_f32 v144, v144, v171 :: v_dual_mul_f32 v145, v145, v172
	v_dual_mul_f32 v125, v125, v170 :: v_dual_mul_f32 v140, v140, v171
	v_dual_mul_f32 v127, v127, v170 :: v_dual_mul_f32 v142, v142, v171
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v107, v107, v169 :: v_dual_mul_f32 v122, v122, v170
	v_dual_mul_f32 v124, v124, v170 :: v_dual_mul_f32 v109, v109, v169
	v_mul_f32_e32 v165, v165, v169
	v_dual_mul_f32 v163, v163, v169 :: v_dual_mul_f32 v116, v116, v170
	v_mul_f32_e32 v112, v112, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v105, v105, v169 :: v_dual_mul_f32 v118, v118, v170
	v_mul_f32_e32 v113, v113, v170
	v_mul_f32_e32 v126, v126, v170
	v_dual_mul_f32 v128, v128, v170 :: v_dual_mul_f32 v111, v111, v169
	v_dual_mul_f32 v167, v167, v169 :: v_dual_mul_f32 v120, v120, v170
	s_waitcnt vmcnt(0)
	ds_store_b16 v95, v97 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[97:100], v65 offset:20480
	ds_load_b128 v[101:104], v65 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v173, 16, v97
	v_lshlrev_b32_e32 v174, 16, v98
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v180, 16, v104
	v_and_b32_e32 v97, 0xffff0000, v97
	v_and_b32_e32 v98, 0xffff0000, v98
	v_lshlrev_b32_e32 v177, 16, v101
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v155, v155, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v86, v105, v97 :: v_dual_lshlrev_b32 v175, 16, v99
	v_dual_fmac_f32 v85, v106, v98 :: v_dual_fmac_f32 v70, v117, v177
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	ds_load_u8 v105, v43 offset:15616
	ds_load_u8 v106, v43 offset:15360
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v99, 0xffff0000, v99
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v153, v153, v172
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v104, 0xffff0000, v104
	v_lshlrev_b32_e32 v176, 16, v100
	v_lshlrev_b32_e32 v179, 16, v103
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v84, v107, v99
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v100, 0xffff0000, v100
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v11, v160, v104
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v101, 0xffff0000, v101
	v_and_b32_e32 v103, 0xffff0000, v103
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v159, v159, v172 :: v_dual_lshlrev_b32 v178, 16, v102
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v102, 0xffff0000, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v82, v109, v101 :: v_dual_fmac_f32 v31, v148, v176
	v_fmac_f32_e32 v19, v159, v103
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v147, v147, v172 :: v_dual_fmac_f32 v72, v161, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v20, v158, v102
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:16128
	ds_load_u8 v107, v43 offset:15872
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v149, v149, v172 :: v_dual_fmac_f32 v94, v162, v174
	v_dual_mul_f32 v151, v151, v172 :: v_dual_fmac_f32 v90, v166, v178
	v_dual_mul_f32 v157, v157, v172 :: v_dual_fmac_f32 v74, v114, v174
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v93, v163, v175 :: v_dual_fmac_f32 v92, v164, v176
	v_dual_fmac_f32 v91, v165, v177 :: v_dual_fmac_f32 v88, v168, v180
	v_dual_fmac_f32 v89, v167, v179 :: v_dual_fmac_f32 v76, v112, v104
	v_dual_fmac_f32 v83, v108, v100 :: v_dual_fmac_f32 v68, v119, v179
	v_dual_fmac_f32 v81, v110, v102 :: v_dual_fmac_f32 v66, v120, v180
	v_dual_fmac_f32 v77, v111, v103 :: v_dual_fmac_f32 v64, v121, v97
	v_dual_fmac_f32 v75, v113, v173 :: v_dual_fmac_f32 v62, v123, v99
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v73, v115, v175 :: v_dual_fmac_f32 v60, v125, v101
	v_dual_fmac_f32 v71, v116, v176 :: v_dual_fmac_f32 v56, v127, v103
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v160, v106, 16, v105
	ds_load_u8 v105, v43 offset:14592
	ds_load_u8 v106, v43 offset:14336
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v69, v118, v178 :: v_dual_fmac_f32 v54, v129, v173
	v_dual_fmac_f32 v63, v122, v98 :: v_dual_fmac_f32 v52, v131, v175
	v_dual_fmac_f32 v61, v124, v100 :: v_dual_fmac_f32 v50, v133, v177
	v_dual_fmac_f32 v57, v126, v102 :: v_dual_fmac_f32 v48, v135, v179
	v_dual_fmac_f32 v55, v128, v104 :: v_dual_fmac_f32 v44, v137, v97
	v_dual_fmac_f32 v53, v130, v174 :: v_dual_fmac_f32 v40, v140, v100
	v_dual_fmac_f32 v51, v132, v176 :: v_dual_fmac_f32 v42, v138, v98
	v_dual_fmac_f32 v49, v134, v178 :: v_dual_fmac_f32 v36, v144, v104
	v_dual_fmac_f32 v45, v136, v180 :: v_dual_fmac_f32 v38, v142, v102
	v_dual_fmac_f32 v41, v139, v99 :: v_dual_fmac_f32 v34, v146, v174
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:15104
	ds_load_u8 v107, v43 offset:14848
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v39, v141, v101 :: v_dual_fmac_f32 v26, v152, v180
	v_dual_fmac_f32 v37, v143, v103 :: v_dual_fmac_f32 v30, v149, v177
	v_dual_fmac_f32 v35, v145, v173 :: v_dual_fmac_f32 v24, v154, v98
	v_dual_fmac_f32 v33, v147, v175 :: v_dual_fmac_f32 v22, v156, v100
	v_fmac_f32_e32 v29, v150, v178
	v_fmac_f32_e32 v27, v151, v179
	v_fmac_f32_e32 v25, v153, v97
	v_fmac_f32_e32 v21, v157, v101
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[113:116], v80 offset:18432
	ds_load_b128 v[129:132], v80 offset:18944
	ds_load_b128 v[145:148], v80 offset:19456
	ds_load_b128 v[161:164], v80 offset:19968
	ds_load_b128 v[117:120], v87 offset:18432
	ds_load_b128 v[133:136], v87 offset:18944
	ds_load_b128 v[149:152], v87 offset:19456
	ds_load_b128 v[165:168], v87 offset:19968
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v97, v43 offset:11520
	ds_load_u8 v98, v43 offset:11264
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v23, v155, v99
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v106, 16, v105
	ds_load_u8 v105, v43 offset:13568
	ds_load_u8 v106, v43 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:12032
	ds_load_u8 v99, v43 offset:11776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:14080
	ds_load_u8 v107, v43 offset:13824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v156, v98, 16, v97
	ds_load_u8 v97, v43 offset:10496
	ds_load_u8 v98, v43 offset:10240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v158, v106, 16, v105
	ds_load_u8 v105, v43 offset:12544
	ds_load_u8 v106, v43 offset:12288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:11008
	ds_load_u8 v99, v43 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:13056
	ds_load_u8 v107, v43 offset:12800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v155, v98, 16, v97
	ds_load_u8 v97, v43 offset:9472
	ds_load_u8 v98, v43 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v157, v106, 16, v105
	ds_load_u8 v105, v43 offset:11648
	ds_load_u8 v106, v43 offset:11392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:9984
	ds_load_u8 v99, v43 offset:9728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:12160
	ds_load_u8 v107, v43 offset:11904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v98, 16, v97
	ds_load_u8 v97, v43 offset:8448
	ds_load_u8 v98, v43 offset:8192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v172, v106, 16, v105
	ds_load_u8 v105, v43 offset:10624
	ds_load_u8 v106, v43 offset:10368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v43 offset:8960
	ds_load_u8 v99, v43 offset:8704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:11136
	ds_load_u8 v107, v43 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v98, 16, v97
	v_wmma_i32_16x16x16_iu8 v[97:104], v[153:156], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[157:160], v[117:120], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v106, 16, v105
	ds_load_u8 v105, v43 offset:9600
	ds_load_u8 v106, v43 offset:9344
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:10112
	ds_load_u8 v107, v43 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v106, 16, v105
	ds_load_u8 v105, v43 offset:8576
	ds_load_u8 v106, v43 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v43 offset:9088
	ds_load_u8 v107, v43 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v106, 16, v105
	v_wmma_i32_16x16x16_iu8 v[105:112], v[169:172], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v43 offset:15744
	ds_load_u8 v114, v43 offset:15488
	v_wmma_i32_16x16x16_iu8 v[121:128], v[169:172], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[169:172], v[145:148], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:16256
	ds_load_u8 v115, v43 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v114, 16, v113
	ds_load_u8 v113, v43 offset:14720
	ds_load_u8 v114, v43 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:15232
	ds_load_u8 v115, v43 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v114, 16, v113
	ds_load_u8 v113, v43 offset:13696
	ds_load_u8 v114, v43 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:14208
	ds_load_u8 v115, v43 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v114, 16, v113
	ds_load_u8 v113, v43 offset:12672
	ds_load_u8 v114, v43 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v43 offset:13184
	ds_load_u8 v115, v43 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[105:112], v[173:176], v[117:120], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[153:156], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[173:176], v[133:136], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[173:176], v[149:152], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v105, v105
	v_wmma_i32_16x16x16_iu8 v[113:120], v[157:160], v[133:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[153:156], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v116, v116
	v_wmma_i32_16x16x16_iu8 v[129:136], v[157:160], v[149:152], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[153:156], v[161:164], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[157:160], v[165:168], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[169:172], v[161:164], v[1:8] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v161, v46, s5, 1
	v_add_lshl_u32 v162, v47, s5, 1
	v_add_lshl_u32 v163, v58, s5, 1
	v_add_lshl_u32 v164, v59, s5, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s5, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_cndmask_b32 v162, 0x80000000, v162
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[153:160], v[173:176], v[165:168], v[153:160] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v163, 0x80000000, v163 :: v_dual_cndmask_b32 v164, 0x80000000, v164
	s_clause 0x1
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v165, v67, s5, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	buffer_load_u16 v164, v164, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
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
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v165, 0x80000000, v165 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v164, 16, v164
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v120, v120, v162
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v165, v165, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v118, v118, v162 :: v_dual_lshlrev_b32 v163, 16, v163
	v_mul_f32_e32 v172, v103, v161
	v_mul_f32_e32 v166, v97, v161
	v_dual_mul_f32 v167, v98, v161 :: v_dual_mul_f32 v124, v124, v162
	v_mul_f32_e32 v168, v99, v161
	v_dual_mul_f32 v169, v100, v161 :: v_dual_mul_f32 v126, v126, v162
	v_mul_f32_e32 v170, v101, v161
	v_dual_mul_f32 v171, v102, v161 :: v_dual_mul_f32 v128, v128, v162
	v_dual_mul_f32 v173, v104, v161 :: v_dual_mul_f32 v130, v130, v163
	v_dual_mul_f32 v174, v105, v161 :: v_dual_mul_f32 v115, v115, v162
	v_dual_mul_f32 v175, v106, v161 :: v_dual_mul_f32 v132, v132, v163
	v_dual_mul_f32 v176, v107, v161 :: v_dual_mul_f32 v113, v113, v162
	v_dual_mul_f32 v177, v108, v161 :: v_dual_mul_f32 v134, v134, v163
	v_dual_mul_f32 v178, v109, v161 :: v_dual_mul_f32 v119, v119, v162
	v_dual_mul_f32 v179, v110, v161 :: v_dual_mul_f32 v136, v136, v163
	v_dual_mul_f32 v180, v111, v161 :: v_dual_mul_f32 v117, v117, v162
	v_dual_mul_f32 v161, v112, v161 :: v_dual_mul_f32 v138, v138, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v114, v114, v162
	v_mul_f32_e32 v116, v116, v162
	v_dual_mul_f32 v121, v121, v162 :: v_dual_mul_f32 v140, v140, v163
	v_dual_mul_f32 v123, v123, v162 :: v_dual_mul_f32 v142, v142, v163
	v_dual_mul_f32 v125, v125, v162 :: v_dual_mul_f32 v144, v144, v163
	v_dual_mul_f32 v127, v127, v162 :: v_dual_mul_f32 v146, v146, v164
	v_dual_mul_f32 v129, v129, v163 :: v_dual_mul_f32 v148, v148, v164
	v_dual_mul_f32 v131, v131, v163 :: v_dual_mul_f32 v150, v150, v164
	v_dual_mul_f32 v133, v133, v163 :: v_dual_mul_f32 v152, v152, v164
	v_dual_mul_f32 v135, v135, v163 :: v_dual_mul_f32 v154, v154, v164
	v_dual_mul_f32 v137, v137, v163 :: v_dual_mul_f32 v156, v156, v164
	v_dual_mul_f32 v139, v139, v163 :: v_dual_mul_f32 v158, v158, v164
	v_dual_mul_f32 v141, v141, v163 :: v_dual_mul_f32 v160, v160, v164
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v122, v122, v162 :: v_dual_lshlrev_b32 v165, 16, v165
	ds_store_b32 v96, v165 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v65 offset:20480
	ds_load_b128 v[101:104], v65 offset:20496
	ds_load_b128 v[105:108], v65 offset:20992
	ds_load_b128 v[109:112], v65 offset:21008
	v_mul_f32_e32 v143, v143, v163
	v_mul_f32_e32 v145, v145, v164
	v_mul_f32_e32 v147, v147, v164
	v_mul_f32_e32 v149, v149, v164
	v_mul_f32_e32 v151, v151, v164
	v_mul_f32_e32 v153, v153, v164
	v_mul_f32_e32 v155, v155, v164
	v_mul_f32_e32 v157, v157, v164
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v159, v159, v164 :: v_dual_fmac_f32 v72, v166, v97
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v94, v167, v98 :: v_dual_fmac_f32 v93, v168, v99
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v92, v169, v100 :: v_dual_fmac_f32 v91, v170, v101
	v_fmac_f32_e32 v88, v173, v104
	v_dual_fmac_f32 v90, v171, v102 :: v_dual_fmac_f32 v89, v172, v103
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v76, v161, v112
	v_dual_fmac_f32 v86, v174, v105 :: v_dual_fmac_f32 v85, v175, v106
	v_fmac_f32_e32 v66, v120, v104
	v_dual_fmac_f32 v84, v176, v107 :: v_dual_fmac_f32 v83, v177, v108
	v_fmac_f32_e32 v62, v123, v107
	v_dual_fmac_f32 v82, v178, v109 :: v_dual_fmac_f32 v81, v179, v110
	v_dual_fmac_f32 v64, v121, v105 :: v_dual_fmac_f32 v77, v180, v111
	v_fmac_f32_e32 v60, v125, v109
	v_dual_fmac_f32 v75, v113, v97 :: v_dual_fmac_f32 v56, v127, v111
	v_dual_fmac_f32 v74, v114, v98 :: v_dual_fmac_f32 v73, v115, v99
	v_dual_fmac_f32 v54, v129, v97 :: v_dual_fmac_f32 v71, v116, v100
	v_fmac_f32_e32 v52, v131, v99
	v_dual_fmac_f32 v70, v117, v101 :: v_dual_fmac_f32 v69, v118, v102
	v_fmac_f32_e32 v50, v133, v101
	v_dual_fmac_f32 v68, v119, v103 :: v_dual_fmac_f32 v63, v122, v106
	v_dual_fmac_f32 v48, v135, v103 :: v_dual_fmac_f32 v61, v124, v108
	v_dual_fmac_f32 v44, v137, v105 :: v_dual_fmac_f32 v57, v126, v110
	v_fmac_f32_e32 v40, v140, v108
	v_dual_fmac_f32 v55, v128, v112 :: v_dual_fmac_f32 v42, v138, v106
	v_dual_fmac_f32 v53, v130, v98 :: v_dual_fmac_f32 v36, v144, v112
	v_dual_fmac_f32 v51, v132, v100 :: v_dual_fmac_f32 v38, v142, v110
	v_dual_fmac_f32 v49, v134, v102 :: v_dual_fmac_f32 v30, v149, v101
	v_dual_fmac_f32 v45, v136, v104 :: v_dual_fmac_f32 v34, v146, v98
	v_dual_fmac_f32 v41, v139, v107 :: v_dual_fmac_f32 v26, v152, v104
	v_dual_fmac_f32 v39, v141, v109 :: v_dual_fmac_f32 v24, v154, v106
	v_dual_fmac_f32 v37, v143, v111 :: v_dual_fmac_f32 v22, v156, v108
	v_dual_fmac_f32 v35, v145, v97 :: v_dual_fmac_f32 v20, v158, v110
	v_fmac_f32_e32 v33, v147, v99
	v_fmac_f32_e32 v31, v148, v100
	v_fmac_f32_e32 v29, v150, v102
	v_fmac_f32_e32 v27, v151, v103
	v_fmac_f32_e32 v25, v153, v105
	v_fmac_f32_e32 v23, v155, v107
	v_fmac_f32_e32 v21, v157, v109
	v_fmac_f32_e32 v19, v159, v111
	v_fmac_f32_e32 v11, v160, v112
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v5, v91, v91 :: v_dual_max_f32 v6, v90, v90
	v_dual_max_f32 v7, v89, v89 :: v_dual_max_f32 v8, v88, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v10, v86, v86 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v43, v83, v83 :: v_dual_max_f32 v28, v85, v85
	v_max_f32_e32 v8, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v47, v81, v81
	v_max_f32_e32 v32, v84, v84
	v_dual_max_f32 v46, v82, v82 :: v_dual_max_f32 v43, 0, v43
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v59, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v65, 0, v47 :: v_dual_max_f32 v32, 0, v32
	v_max_f32_e32 v67, v74, v74
	v_dual_max_f32 v47, v77, v77 :: v_dual_max_f32 v58, v76, v76
	v_max_f32_e32 v77, 0, v59
	v_dual_max_f32 v1, v72, v72 :: v_dual_max_f32 v2, v94, v94
	v_max_f32_e32 v46, 0, v46
	v_dual_max_f32 v72, v73, v73 :: v_dual_max_f32 v79, 0, v67
	v_dual_max_f32 v73, 0, v47 :: v_dual_max_f32 v74, 0, v58
	v_dual_max_f32 v47, v71, v71 :: v_dual_max_f32 v58, v70, v70
	v_dual_max_f32 v59, v69, v69 :: v_dual_max_f32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v67, v68, v68 :: v_dual_max_f32 v68, 0, v47
	v_dual_max_f32 v69, 0, v58 :: v_dual_max_f32 v82, 0, v59
	v_dual_max_f32 v59, v62, v62 :: v_dual_max_f32 v60, v60, v60
	v_dual_max_f32 v47, v64, v64 :: v_dual_max_f32 v58, v63, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v56, v56, v56 :: v_dual_max_f32 v87, 0, v59
	v_max_f32_e32 v53, v53, v53
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v86, 0, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v85, 0, v47
	v_dual_max_f32 v55, v55, v55 :: v_dual_max_f32 v94, 0, v53
	v_max_f32_e32 v47, v57, v57
	v_dual_max_f32 v91, 0, v56 :: v_dual_max_f32 v50, v50, v50
	v_dual_max_f32 v49, v49, v49 :: v_dual_max_f32 v44, v44, v44
	v_dual_max_f32 v3, v93, v93 :: v_dual_max_f32 v4, v92, v92
	v_dual_max_f32 v89, 0, v60 :: v_dual_max_f32 v54, v54, v54
	v_max_f32_e32 v92, 0, v55
	v_max_f32_e32 v90, 0, v47
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v98, 0, v49
	v_max_f32_e32 v47, v52, v52
	v_dual_max_f32 v97, 0, v50 :: v_dual_max_f32 v40, v40, v40
	v_max_f32_e32 v41, v41, v41
	v_dual_max_f32 v101, 0, v44 :: v_dual_max_f32 v38, v38, v38
	v_max_f32_e32 v39, v39, v39
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v93, 0, v54 :: v_dual_max_f32 v48, v48, v48
	v_max_f32_e32 v96, 0, v51
	v_dual_max_f32 v95, 0, v47 :: v_dual_max_f32 v42, v42, v42
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v104, 0, v40
	v_dual_max_f32 v103, 0, v41 :: v_dual_max_f32 v36, v36, v36
	v_max_f32_e32 v37, v37, v37
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v34, v34, v34
	v_dual_max_f32 v106, 0, v38 :: v_dual_max_f32 v105, 0, v39
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v31, v31, v31
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v20, v20, v20
	v_max_f32_e32 v23, v23, v23
	v_dual_max_f32 v21, v21, v21 :: v_dual_mul_f32 v50, v3, v3
	v_dual_max_f32 v19, v19, v19 :: v_dual_mul_f32 v54, v5, v5
	v_dual_max_f32 v11, v11, v11 :: v_dual_mul_f32 v62, v10, v10
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_max_f32_e32 v81, 0, v72
	v_dual_max_f32 v83, 0, v67 :: v_dual_max_f32 v84, 0, v66
	v_max_f32_e32 v88, 0, v61
	v_dual_max_f32 v102, 0, v42 :: v_dual_max_f32 v99, 0, v48
	v_max_f32_e32 v100, 0, v45
	v_dual_max_f32 v108, 0, v36 :: v_dual_max_f32 v107, 0, v37
	v_dual_max_f32 v110, 0, v34 :: v_dual_max_f32 v109, 0, v35
	v_max_f32_e32 v114, 0, v29
	v_dual_max_f32 v112, 0, v31 :: v_dual_max_f32 v111, 0, v33
	v_max_f32_e32 v116, 0, v26
	v_dual_max_f32 v113, 0, v30 :: v_dual_max_f32 v118, 0, v24
	v_dual_max_f32 v115, 0, v27 :: v_dual_max_f32 v122, 0, v20
	v_dual_max_f32 v117, 0, v25 :: v_dual_max_f32 v124, 0, v11
	v_dual_max_f32 v120, 0, v22 :: v_dual_max_f32 v119, 0, v23
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v80, v1, v1
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v121, 0, v21 :: v_dual_mul_f32 v58, v7, v7
	v_dual_max_f32 v123, 0, v19 :: v_dual_mul_f32 v66, v32, v32
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v47, v2, v2 :: v_dual_mul_f32 v72, v65, v65
	v_dual_mul_f32 v51, v4, v4 :: v_dual_mul_f32 v76, v74, v74
	v_dual_mul_f32 v55, v6, v6 :: v_dual_mul_f32 v78, v77, v77
	v_dual_mul_f32 v59, v8, v8 :: v_dual_mul_f32 v74, v81, v81
	v_dual_mul_f32 v63, v28, v28 :: v_dual_mul_f32 v70, v69, v69
	v_dual_mul_f32 v67, v43, v43 :: v_dual_mul_f32 v64, v84, v84
	v_dual_mul_f32 v71, v46, v46 :: v_dual_mul_f32 v56, v88, v88
	v_dual_mul_f32 v75, v73, v73 :: v_dual_mul_f32 v60, v86, v86
	v_dual_mul_f32 v77, v79, v79 :: v_dual_mul_f32 v52, v90, v90
	v_dual_mul_f32 v73, v68, v68 :: v_dual_mul_f32 v46, v93, v93
	v_dual_mul_f32 v69, v82, v82 :: v_dual_mul_f32 v48, v92, v92
	v_dual_mul_f32 v65, v83, v83 :: v_dual_mul_f32 v42, v97, v97
	v_dual_mul_f32 v61, v85, v85 :: v_dual_mul_f32 v44, v95, v95
	v_dual_mul_f32 v57, v87, v87 :: v_dual_mul_f32 v38, v101, v101
	v_dual_mul_f32 v53, v89, v89 :: v_dual_mul_f32 v40, v99, v99
	v_dual_mul_f32 v49, v91, v91 :: v_dual_mul_f32 v34, v105, v105
	v_dual_mul_f32 v45, v94, v94 :: v_dual_mul_f32 v36, v103, v103
	v_dual_mul_f32 v43, v96, v96 :: v_dual_mul_f32 v32, v107, v107
	v_dual_mul_f32 v41, v98, v98 :: v_dual_mul_f32 v30, v109, v109
	v_dual_mul_f32 v39, v100, v100 :: v_dual_mul_f32 v28, v111, v111
	v_dual_mul_f32 v37, v102, v102 :: v_dual_mul_f32 v26, v113, v113
	v_dual_mul_f32 v35, v104, v104 :: v_dual_mul_f32 v24, v115, v115
	v_dual_mul_f32 v33, v106, v106 :: v_dual_mul_f32 v22, v117, v117
	v_dual_mul_f32 v31, v108, v108 :: v_dual_mul_f32 v20, v119, v119
	v_dual_mul_f32 v29, v110, v110 :: v_dual_mul_f32 v8, v123, v123
	v_dual_mul_f32 v27, v112, v112 :: v_dual_mul_f32 v10, v122, v122
	v_dual_mul_f32 v25, v114, v114 :: v_dual_mul_f32 v6, v124, v124
	v_mul_f32_e32 v23, v116, v116
	v_mul_f32_e32 v21, v118, v118
	v_mul_f32_e32 v19, v120, v120
	v_mul_f32_e32 v11, v121, v121
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v3, v18
.LBB0_7:                                ; %._crit_edge
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v47, v47
	v_max_f32_e32 v4, v80, v80
	v_max3_f32 v7, v63, v66, v67
	v_max3_f32 v17, v71, v72, v75
	v_max3_f32 v5, v51, v54, v55
	v_max_f32_e32 v18, v78, v78
	v_max3_f32 v83, v37, v36, v35
	v_max3_f32 v84, v34, v33, v32
	v_max3_f32 v7, v7, v17, v76
	v_max_f32_e32 v17, v46, v46
	v_max_f32_e32 v2, v4, v2
	v_max_f32_e32 v4, v77, v77
	v_max3_f32 v81, v60, v57, v56
	v_max3_f32 v82, v53, v52, v49
	v_max3_f32 v68, v58, v59, v62
	v_max3_f32 v2, v2, v50, v5
	v_max_f32_e32 v5, v45, v45
	v_max3_f32 v79, v65, v64, v61
	s_mov_b32 s0, 0x76543210
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v87, v1, 6, 0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v2, v68, v7
	v_max_f32_e32 v5, v17, v5
	v_max3_f32 v17, v43, v42, v41
	v_max3_f32 v68, v21, v20, v19
.Ltmp31:
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v13, 3, v13
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s29, 31
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v5, v44, v17
	v_max3_f32 v17, v83, v84, v31
	v_max_f32_e32 v83, v30, v30
	v_max_f32_e32 v4, v18, v4
	v_max3_f32 v18, v73, v70, v69
.Ltmp33:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s4, s29, s4
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v4, v4, v74, v18
	v_max3_f32 v18, v81, v82, v48
	v_max3_f32 v81, v40, v39, v38
	v_max_f32_e32 v82, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v4, v4, v79, v18
	v_max3_f32 v5, v5, v81, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v7, v83, v82
	v_max3_f32 v17, v27, v26, v25
	v_max3_f32 v79, v11, v10, v8
	v_max3_f32 v18, v24, v23, v22
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v81, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v7, v28, v17
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v17, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v68, v68, v79, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v79, v81, v81
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max3_f32 v18, v7, v18, v68
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v7, 5, v15
	v_permlanex16_b32 v82, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v81, v2, v17 :: v_dual_and_b32 v68, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v2, v18, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v83, v82, v82 :: v_dual_max_f32 v82, v4, v79
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v4, v15, 9, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_and_b32 v17, 0x60, v0
	v_max_f32_e32 v83, v5, v83
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v5, 0x80, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v4, v1, 2, v4
	v_and_or_b32 v79, 0x680, v16, v7
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v18, v2
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v85, v7, v17
	v_lshlrev_b32_e32 v16, 1, v5
	v_lshl_add_u32 v4, v68, 4, v4
	v_lshrrev_b32_e32 v86, 3, v5
	v_xor_b32_e32 v79, v79, v17
	v_lshlrev_b32_e32 v68, 3, v68
	v_lshlrev_b32_e32 v1, 5, v1
	v_add3_u32 v2, v4, v16, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v87, v86, v79
	ds_store_b128 v2, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v81
	v_dual_mov_b32 v4, v82 :: v_dual_max_f32 v79, v81, v81
	v_dual_mov_b32 v18, v83 :: v_dual_max_f32 v81, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v79, v2
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v79, v83, v83
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v83, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v18, v79, v18
	v_max_f32_e32 v82, v84, v84
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v81, v4
	v_dual_max_f32 v81, v84, v84 :: v_dual_max_f32 v2, v2, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v79, v82, v81
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v83, v2
	v_mov_b32_e32 v81, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v84, v4 :: v_dual_max_f32 v81, v81, v81
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v18, v18, v81
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v82, v79
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v83, v83
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v85, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v2, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v82, v82
	v_max_f32_e32 v84, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v85, v85 :: v_dual_max_f32 v79, v79, v82
	v_max_f32_e32 v4, v4, v84
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v85, 1, v17
.Ltmp62:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v17, v9, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v83, v18, v2 :: v_dual_mov_b32 v86, v79
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v84, v4
	v_lshl_add_u32 v2, v15, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v2, v1, v68
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v82, v4, v82
	v_max_f32_e32 v4, v86, v86
	v_max_f32_e32 v84, v79, v4
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v4, v5, v85, v68
	ds_store_b128 v4, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v1
.Ltmp67:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v81, v81 :: v_dual_max_f32 v2, v82, v82
	v_dual_max_f32 v4, v83, v83 :: v_dual_max_f32 v5, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_dual_max_f32 v4, 0x2b8cbccc, v4 :: v_dual_max_f32 v5, 0x2b8cbccc, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v79, v15
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v18
	v_rcp_f32_e32 v83, v68
	v_div_scale_f32 v85, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v89, s0, v4, 0x40e00000, v4
	v_fma_f32 v86, -v15, v79, 1.0
	v_fma_f32 v87, -v18, v82, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v68, v83, 1.0
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v81, v84, 1.0
	v_dual_fmac_f32 v82, v87, v82 :: v_dual_fmac_f32 v83, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v85, v79
	v_div_scale_f32 v87, s2, v5, 0x40e00000, v5
	v_fmac_f32_e32 v84, v90, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v89, v82
	v_fma_f32 v93, -v15, v88, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v91, v86, v83 :: v_dual_mul_f32 v92, v87, v84
	v_fma_f32 v94, -v18, v90, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v93, v79
	v_fma_f32 v95, -v68, v91, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v81, v92, v87
	v_fmac_f32_e32 v90, v94, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v15, v88, v85
	v_fmac_f32_e32 v91, v95, v83
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v85.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v92, v96, v84
	v_fma_f32 v18, -v18, v90, v89
	v_div_fmas_f32 v15, v15, v79, v88
	v_fma_f32 v68, -v68, v91, v86
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v81, -v81, v92, v87
	v_div_fmas_f32 v18, v18, v82, v90
	v_div_fixup_f32 v1, v15, 0x40e00000, v1
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v68, v68, v83, v91
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v18, 0x40e00000, v4
	v_div_fmas_f32 v4, v81, v84, v92
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v18.h, v85.h
	v_mov_b16_e32 v18.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v68, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v85.l, v15.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v68, v4, 0x40e00000, v5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.h, v85.h
	v_and_b32_e32 v4, 1, v18
	v_mov_b16_e32 v5.l, v2.h
	v_and_b32_e32 v18, 1, v85
	v_mov_b16_e32 v85.l, v68.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v1, v4, 0x7fff
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v15, v18, 0x7fff
	v_and_b32_e32 v79, 1, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v81, 0xffff0000, v4
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v68, v79, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v18, null, v81, v81, v80
	v_div_scale_f32 v82, null, v81, v81, v47
	v_div_scale_f32 v83, null, v81, v81, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v18
	v_rcp_f32_e32 v85, v82
	v_div_scale_f32 v87, vcc_lo, v80, v81, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v86, v83
	v_div_scale_f32 v91, null, v81, v81, v51
	v_div_scale_f32 v88, s0, v47, v81, v47
	v_div_scale_f32 v89, s1, v50, v81, v50
	v_fma_f32 v15, -v18, v84, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v90, -v82, v85, 1.0
	v_rcp_f32_e32 v93, v91
	v_fma_f32 v92, -v83, v86, 1.0
	v_div_scale_f32 v95, null, v81, v81, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v15, v84 :: v_dual_fmac_f32 v85, v90, v85
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v90, s2, v51, v81, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v87, v84
	v_mul_f32_e32 v94, v88, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v91, v93, 1.0
	v_dual_mul_f32 v96, v89, v86 :: v_dual_and_b32 v79, 0xffff0000, v5
	v_fma_f32 v97, -v18, v92, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v82, v94, v88
	v_fmac_f32_e32 v93, v99, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v100, -v83, v96, v89
	v_dual_fmac_f32 v92, v97, v84 :: v_dual_and_b32 v15, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v98, v85
	v_rcp_f32_e32 v97, v95
	v_fmac_f32_e32 v96, v100, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v18, v92, v87
	v_div_scale_f32 v87, null, v81, v81, v55
	v_fma_f32 v82, -v82, v94, v88
	v_mul_f32_e32 v88, v90, v93
	v_div_fmas_f32 v18, v18, v84, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v92, -v95, v97, 1.0
	v_div_fmas_f32 v82, v82, v85, v94
	v_div_fixup_f32 v18, v18, v81, v80
	v_fma_f32 v80, -v91, v88, v90
	v_div_scale_f32 v85, s0, v54, v81, v54
	v_fmac_f32_e32 v97, v92, v97
	v_div_fixup_f32 v47, v82, v81, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v87, v84, 1.0
	v_fma_f32 v82, -v83, v96, v89
	v_fmac_f32_e32 v88, v80, v93
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v80, v85, v97
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v83, s3, v55, v81, v55
	v_div_scale_f32 v89, null, v81, v81, v58
	v_div_fmas_f32 v82, v82, v86, v96
	v_fma_f32 v86, -v91, v88, v90
	v_div_scale_f32 v94, null, v81, v81, v59
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v90, -v95, v80, v85
	v_rcp_f32_e32 v91, v89
	v_mul_f32_e32 v92, v83, v84
	v_div_fmas_f32 v86, v86, v93, v88
	v_rcp_f32_e32 v88, v94
	v_fmac_f32_e32 v80, v90, v97
	v_div_fixup_f32 v50, v82, v81, v50
	v_fma_f32 v90, -v87, v92, v83
	v_div_fixup_f32 v51, v86, v81, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v82, -v95, v80, v85
	v_fma_f32 v93, -v89, v91, 1.0
	v_fmac_f32_e32 v92, v90, v84
	v_div_scale_f32 v90, null, v81, v81, v62
	v_fma_f32 v86, -v94, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v85, s1, v58, v81, v58
	v_div_fmas_f32 v80, v82, v97, v80
	v_fmac_f32_e32 v88, v86, v88
	v_rcp_f32_e32 v86, v90
	v_fma_f32 v82, -v87, v92, v83
	v_mul_f32_e32 v83, v85, v91
	v_div_scale_f32 v87, s0, v59, v81, v59
	v_div_scale_f32 v93, null, v81, v81, v63
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v54, v80, v81, v54
	v_div_fmas_f32 v82, v82, v84, v92
	v_fma_f32 v84, -v89, v83, v85
	v_mul_f32_e32 v92, v87, v88
	v_fma_f32 v95, -v90, v86, 1.0
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v55, v82, v81, v55
	v_fmac_f32_e32 v83, v84, v91
	v_fma_f32 v80, -v94, v92, v87
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s2, v62, v81, v62
	v_div_scale_f32 v84, null, v81, v81, v66
	v_fma_f32 v85, -v89, v83, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fmac_f32_e32 v92, v80, v88
	v_mul_f32_e32 v80, v82, v86
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v89, v84
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s3, v63, v81, v63
	v_div_fmas_f32 v83, v85, v91, v83
	v_fma_f32 v85, -v94, v92, v87
	v_fma_f32 v87, -v90, v80, v82
	v_div_scale_f32 v97, null, v81, v81, v67
	v_mul_f32_e32 v91, v95, v96
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v87, v86
	v_rcp_f32_e32 v87, v97
	v_fma_f32 v94, -v84, v89, 1.0
	v_div_fmas_f32 v85, v85, v88, v92
	v_fma_f32 v88, -v93, v91, v95
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v92, s0, v66, v81, v66
	v_fmac_f32_e32 v89, v94, v89
	v_div_fixup_f32 v59, v85, v81, v59
	v_fmac_f32_e32 v91, v88, v96
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v97, v87, 1.0
	v_div_scale_f32 v88, null, v81, v81, v71
	v_div_fixup_f32 v58, v83, v81, v58
	v_fma_f32 v82, -v90, v80, v82
	v_mul_f32_e32 v83, v92, v89
	v_fmac_f32_e32 v87, v85, v87
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v90, s1, v67, v81, v67
	v_div_fmas_f32 v80, v82, v86, v80
	v_fma_f32 v82, -v93, v91, v95
	v_fma_f32 v86, -v84, v83, v92
	v_div_scale_f32 v93, null, v81, v81, v72
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v88, v85, 1.0
	v_fmac_f32_e32 v83, v86, v89
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v91
	v_mul_f32_e32 v91, v90, v87
	v_div_fixup_f32 v62, v80, v81, v62
	v_fma_f32 v80, -v84, v83, v92
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v81, v81, v75
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v63, v82, v81, v63
	v_fma_f32 v82, -v97, v91, v90
	v_div_scale_f32 v84, s2, v71, v81, v71
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_fmas_f32 v80, v80, v89, v83
	v_rcp_f32_e32 v83, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v82, v87 :: v_dual_mul_f32 v82, v84, v85
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v89, s0, v72, v81, v72
	v_div_scale_f32 v92, null, v81, v81, v76
	v_div_fixup_f32 v66, v80, v81, v66
	v_fma_f32 v80, -v97, v91, v90
	v_fma_f32 v90, -v88, v82, v84
	v_mul_f32_e32 v95, v89, v86
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v82, v90, v85
	v_div_fmas_f32 v80, v80, v87, v91
	v_fma_f32 v87, -v93, v95, v89
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v90, s1, v75, v81, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v67, v80, v81, v67
	v_fma_f32 v91, -v92, v96, 1.0
	v_fma_f32 v80, -v88, v82, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v95, v87, v86 :: v_dual_mul_f32 v84, v90, v83
	v_div_scale_f32 v88, null, v79, v79, v78
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v87, s3, v76, v81, v76
	v_div_fmas_f32 v80, v80, v85, v82
	v_fma_f32 v82, -v93, v95, v89
	v_fma_f32 v85, -v94, v84, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v93, null, v79, v79, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v84, v85, v83
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v82, v82, v86, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v71, v80, v81, v71
	v_fma_f32 v95, -v88, v89, 1.0
	v_fma_f32 v80, -v94, v84, v90
	v_div_fixup_f32 v72, v82, v81, v72
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s0, v78, v79, v78
	v_fmac_f32_e32 v89, v95, v89
	v_fma_f32 v86, -v93, v85, 1.0
	v_div_scale_f32 v90, null, v79, v79, v74
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v80, v80, v83, v84
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v84, v82, v89
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s1, v77, v79, v77
	v_div_scale_f32 v92, null, v79, v79, v73
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v84, v82
	v_rcp_f32_e32 v96, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v75, v80, v81, v75
	v_div_fixup_f32 v76, v83, v81, v76
	v_fmac_f32_e32 v84, v91, v89
	v_fma_f32 v80, -v93, v94, v87
	v_div_scale_f32 v83, null, v79, v79, v70
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v81, s2, v74, v79, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v92, v96, 1.0
	v_fma_f32 v82, -v88, v84, v82
	v_fmac_f32_e32 v94, v80, v85
	v_rcp_f32_e32 v88, v83
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v80, v81, v86
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s3, v73, v79, v73
	v_div_fmas_f32 v82, v82, v89, v84
	v_fma_f32 v84, -v93, v94, v87
	v_div_scale_f32 v95, null, v79, v79, v69
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v90, v80, v81
	v_mul_f32_e32 v89, v91, v96
	v_fma_f32 v93, -v83, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v95
	v_fmac_f32_e32 v80, v87, v86
	v_fma_f32 v87, -v92, v89, v91
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v93, s0, v70, v79, v70
	v_div_fixup_f32 v78, v82, v79, v78
	v_div_fixup_f32 v77, v84, v79, v77
	v_fma_f32 v81, -v90, v80, v81
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v82, v93, v88
	v_fma_f32 v84, -v95, v85, 1.0
	v_div_scale_f32 v87, null, v79, v79, v65
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v90, s1, v69, v79, v69
	v_div_fmas_f32 v80, v81, v86, v80
	v_fma_f32 v81, -v92, v89, v91
	v_fma_f32 v86, -v83, v82, v93
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v91, null, v79, v79, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v86, v88
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v74, v80, v79, v74
	v_rcp_f32_e32 v86, v91
	v_div_fmas_f32 v81, v81, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v80, -v83, v82, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v84, 1.0
	v_div_scale_f32 v93, null, v79, v79, v61
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v73, v81, v79, v73
	v_fma_f32 v81, -v95, v89, v90
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v83, s2, v65, v79, v65
	v_fma_f32 v92, -v91, v86, 1.0
	v_div_fmas_f32 v80, v80, v88, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v81, v83, v84 :: v_dual_fmac_f32 v86, v92, v86
	v_div_scale_f32 v88, s0, v64, v79, v64
	v_div_scale_f32 v92, null, v79, v79, v60
	v_div_fixup_f32 v70, v80, v79, v70
	v_fma_f32 v80, -v95, v89, v90
	v_fma_f32 v90, -v87, v81, v83
	v_mul_f32_e32 v94, v88, v86
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v81, v90, v84
	v_div_fmas_f32 v80, v80, v85, v89
	v_fma_f32 v85, -v91, v94, v88
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v89, s1, v61, v79, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v69, v80, v79, v69
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v80, -v87, v81, v83
	v_fmac_f32_e32 v94, v85, v86
	v_mul_f32_e32 v83, v89, v82
	v_div_scale_f32 v87, null, v79, v79, v57
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v85, s3, v60, v79, v60
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v91, v94, v88
	v_fma_f32 v84, -v93, v83, v89
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v79, v79, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v85, v95 :: v_dual_fmac_f32 v83, v84, v82
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v86, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v92, v90, v85
	v_div_fixup_f32 v65, v80, v79, v65
	v_fma_f32 v94, -v87, v88, 1.0
	v_fma_f32 v80, -v93, v83, v89
	v_div_fixup_f32 v64, v81, v79, v64
	v_fmac_f32_e32 v90, v86, v95
	v_div_scale_f32 v81, s0, v57, v79, v57
	v_fmac_f32_e32 v88, v94, v88
	v_fma_f32 v86, -v91, v84, 1.0
	v_div_scale_f32 v89, null, v79, v79, v53
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v96, null, v79, v79, v48
	v_div_fmas_f32 v80, v80, v82, v83
	v_fma_f32 v82, -v92, v90, v85
	v_mul_f32_e32 v83, v81, v88
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v86, s1, v56, v79, v56
	v_div_scale_f32 v92, null, v79, v79, v52
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v83, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_fixup_f32 v61, v80, v79, v61
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v88
	v_div_fixup_f32 v60, v82, v79, v60
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s2, v53, v79, v53
	v_div_scale_f32 v90, null, v79, v79, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v83, v81
	v_fmac_f32_e32 v93, v80, v84
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v80, v82, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s3, v52, v79, v52
	v_div_fmas_f32 v81, v81, v88, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v89, v80, v82
	v_mul_f32_e32 v88, v94, v95
	v_div_fixup_f32 v57, v81, v79, v57
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v88, v94
	v_div_fixup_f32 v56, v83, v79, v56
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s0, v49, v79, v49
	v_fmac_f32_e32 v88, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v68, v68, v46
	v_fma_f32 v81, -v89, v80, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v89, s1, v48, v79, v48
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v94
	v_fma_f32 v85, -v90, v82, v91
	v_div_scale_f32 v92, null, v68, v68, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v53, v80, v79, v53
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v88
	v_mul_f32_e32 v88, v89, v84
	v_fma_f32 v80, -v90, v82, v91
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v68, v68, v44
	v_div_fixup_f32 v52, v81, v79, v52
	v_fma_f32 v81, -v96, v88, v89
	v_div_scale_f32 v90, s2, v46, v68, v46
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v80, v80, v87, v82
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v81, v84 :: v_dual_mul_f32 v81, v90, v83
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v87, s0, v45, v68, v45
	v_div_scale_f32 v91, null, v68, v68, v43
	v_div_fixup_f32 v49, v80, v79, v49
	v_fma_f32 v80, -v96, v88, v89
	v_fma_f32 v89, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v81, v89, v83
	v_div_fmas_f32 v80, v80, v84, v88
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s1, v44, v68, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v80, v79, v48
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v68, v68, v42
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s3, v43, v68, v43
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v68, v68, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v84, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v46, v79, v68, v46
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v79, -v93, v80, v88
	v_div_fixup_f32 v45, v81, v68, v45
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v81, s0, v42, v68, v42
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v68, v68, v40
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v84
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s1, v41, v68, v41
	v_div_scale_f32 v91, null, v68, v68, v39
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v44, v79, v68, v44
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v68, v68, v38
	v_div_fixup_f32 v43, v80, v68, v43
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s2, v40, v68, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v79, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v79, v80, v84 :: v_dual_fmac_f32 v94, v93, v94
	v_div_scale_f32 v93, s3, v39, v68, v39
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v95, null, v68, v68, v37
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v85, -v88, v79, v80
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s0, v38, v68, v38
	v_div_fixup_f32 v42, v81, v68, v42
	v_div_fixup_f32 v41, v82, v68, v41
	v_fma_f32 v80, -v88, v79, v80
	v_fmac_f32_e32 v87, v85, v94
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v68, v68, v36
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v88, s1, v37, v68, v37
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v87, v93
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v68, v68, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v40, v79, v68, v40
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v79, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v39, v80, v68, v39
	v_fma_f32 v80, -v95, v87, v88
	v_div_scale_f32 v89, s2, v36, v68, v36
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v68, v68, v34
	v_div_fmas_f32 v79, v79, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v90, null, v68, v68, v33
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s0, v35, v68, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v38, v79, v68, v38
	v_fma_f32 v79, -v95, v87, v88
	v_fma_f32 v88, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v83, v87
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s1, v34, v68, v34
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v37, v79, v68, v37
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v68, v68, v32
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v85, s3, v33, v68, v33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v68, v68, v31
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v36, v79, v68, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v35, v80, v68, v35
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s0, v32, v68, v32
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v15, v15, v29
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v15, v15, v30
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v85, s1, v31, v68, v31
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v34, v79, v68, v34
	v_div_fixup_f32 v33, v81, v68, v33
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v79, -v91, v90, v85
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v94, null, v15, v15, v27
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v15, v15, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v79, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v79, s2, v30, v15, v30
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v91, v90, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v86, s0, v29, v15, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v84, v85, v79
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_mul_f32_e32 v95, v86, v81
	v_fmac_f32_e32 v85, v93, v87
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s3, v28, v15, v28
	v_div_fixup_f32 v32, v80, v68, v32
	v_div_fixup_f32 v31, v82, v68, v31
	v_fma_f32 v68, -v84, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v91, v89
	v_div_scale_f32 v82, null, v15, v15, v26
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	v_fma_f32 v79, -v88, v90, v91
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v80, s1, v27, v15, v27
	v_div_fmas_f32 v68, v68, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_div_scale_f32 v85, null, v15, v15, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v96
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v30, v68, v15, v30
	v_fma_f32 v86, -v82, v79, 1.0
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s0, v26, v15, v26
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v68, v86, v79
	v_div_fixup_f32 v29, v81, v15, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v88, -v82, v68, v86
	v_div_fixup_f32 v28, v83, v15, v28
	v_div_scale_f32 v83, null, v15, v15, v24
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s2, v25, v15, v25
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v68, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v80, v15, v27
	v_fma_f32 v80, -v82, v68, v86
	v_div_scale_f32 v88, null, v15, v15, v23
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v68, v80, v79, v68
	v_div_scale_f32 v79, null, v15, v15, v22
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s0, v24, v15, v24
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v15, v15, v21
	v_div_fixup_f32 v26, v68, v15, v26
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v90, v68, v90
	v_div_scale_f32 v68, s1, v23, v15, v23
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v15, v15, v20
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v68, v90
	v_div_scale_f32 v93, s2, v22, v15, v22
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v68
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s3, v21, v15, v21
	v_div_fixup_f32 v25, v81, v15, v25
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v68, -v88, v87, v68
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s0, v20, v15, v20
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	v_div_scale_f32 v85, null, v15, v15, v19
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v24, v80, v15, v24
	v_div_fmas_f32 v68, v68, v90, v87
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_div_fixup_f32 v23, v68, v15, v23
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v22, v79, v15, v22
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v79, null, v15, v15, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v91, v81, v84
	v_div_fixup_f32 v21, v82, v15, v21
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v15, v15, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v95, v81
	v_div_scale_f32 v83, vcc_lo, v19, v15, v19
	v_rcp_f32_e32 v81, v79
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v68, v15, v20
	v_mul_f32_e32 v88, v83, v87
	v_div_scale_f32 v82, null, v15, v15, v8
	v_div_scale_f32 v89, null, v15, v15, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v85, v88, v83
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v68, -v79, v81, 1.0
	v_fma_f32 v90, -v80, v84, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v68, v81
	v_div_scale_f32 v68, s0, v11, v15, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v88, v83
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s1, v10, v15, v10
	v_fma_f32 v93, -v82, v86, 1.0
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_mul_f32_e32 v96, v90, v84
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v85, -v80, v96, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v94, v68, v81
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v93, v86
	v_fmac_f32_e32 v96, v85, v84
	v_div_scale_f32 v93, s2, v8, v15, v8
	v_fma_f32 v92, -v79, v94, v68
	v_fmac_f32_e32 v91, v95, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v80, v96, v90
	v_div_scale_f32 v95, s3, v6, v15, v6
	v_fmac_f32_e32 v94, v92, v81
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v19, v83, v15, v19
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v49, v49
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v68, -v79, v94, v68
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v48, v48
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v88, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v74, v74
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v49, v49, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v68, v68, v81, v94
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v48, v48, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v80, v80, v84, v96
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v84, v41
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v98, v95, v91
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v68, v15, v11
	v_div_fixup_f32 v10, v80, v15, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v80, v45
	v_and_b32_e32 v45, 15, v56
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v97, v93, v86
	v_fma_f32 v79, -v89, v98, v95
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v76, v77
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v92, -v82, v97, v93
	v_fmac_f32_e32 v98, v79, v91
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v69, v69
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v97, v92, v86
	v_fma_f32 v81, -v89, v98, v95
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v57, v57
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v42, v42
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v8, v79, v15, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v6, v81, v15, v6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v18
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v18, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v78, v48
	v_cvt_i32_f32_e32 v107, v8
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v8, 10, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v77, v18
	v_and_b32_e32 v18, 15, v15
	v_and_b32_e32 v48, 15, v49
	v_and_b32_e32 v49, 15, v78
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v8, 0x1800, v8
	v_lshlrev_b32_e32 v15, 6, v3
	v_lshlrev_b32_e32 v78, 6, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v79, v46
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v82, v43
	v_cvt_i32_f32_e32 v83, v42
	v_cvt_i32_f32_e32 v85, v40
	v_cvt_i32_f32_e32 v86, v39
	v_cvt_i32_f32_e32 v95, v30
	v_cvt_i32_f32_e32 v96, v29
	v_cvt_i32_f32_e32 v97, v28
	v_cvt_i32_f32_e32 v98, v27
	v_cvt_i32_f32_e32 v99, v26
	v_cvt_i32_f32_e32 v100, v25
	v_cvt_i32_f32_e32 v101, v24
	v_cvt_i32_f32_e32 v102, v23
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v15, 0, v8, v15
	v_and_or_b32 v7, 0x1b00, v78, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v87, v38
	v_cvt_i32_f32_e32 v89, v36
	v_cvt_i32_f32_e32 v90, v35
	v_cvt_i32_f32_e32 v91, v34
	v_cvt_i32_f32_e32 v92, v33
	v_cvt_i32_f32_e32 v93, v32
	v_cvt_i32_f32_e32 v94, v31
	v_cvt_i32_f32_e32 v103, v22
	v_cvt_i32_f32_e32 v104, v21
	v_cvt_i32_f32_e32 v105, v20
	v_cvt_i32_f32_e32 v106, v19
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v6, v6
	v_and_b32_e32 v19, 15, v77
	v_and_b32_e32 v20, 15, v47
	v_and_b32_e32 v21, 15, v50
	v_and_b32_e32 v22, 15, v51
	v_and_b32_e32 v23, 15, v54
	v_and_b32_e32 v24, 15, v55
	v_and_b32_e32 v25, 15, v58
	v_and_b32_e32 v29, 15, v66
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v31, 15, v68
	v_and_b32_e32 v32, 15, v71
	v_and_b32_e32 v33, 15, v72
	v_and_b32_e32 v34, 15, v75
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v36, 15, v74
	v_and_b32_e32 v37, 15, v73
	v_and_b32_e32 v38, 15, v70
	v_and_b32_e32 v39, 15, v69
	v_and_b32_e32 v40, 15, v65
	v_and_b32_e32 v41, 15, v64
	v_and_b32_e32 v44, 15, v57
	v_and_b32_e32 v46, 15, v53
	v_and_b32_e32 v47, 15, v52
	v_and_b32_e32 v50, 15, v79
	v_and_b32_e32 v51, 15, v80
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v66, 15, v95
	v_and_b32_e32 v67, 15, v96
	v_and_b32_e32 v68, 15, v97
	v_and_b32_e32 v69, 15, v98
	v_and_b32_e32 v70, 15, v99
	v_and_b32_e32 v71, 15, v100
	v_and_b32_e32 v72, 15, v101
	v_and_b32_e32 v73, 15, v102
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v78, v15, v17, v16
	v_xad_u32 v79, v7, v14, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v59
	v_and_b32_e32 v27, 15, v62
	v_and_b32_e32 v28, 15, v63
	v_and_b32_e32 v42, 15, v61
	v_and_b32_e32 v43, 15, v60
	v_and_b32_e32 v58, 15, v87
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v63, 15, v92
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v65, 15, v94
	v_and_b32_e32 v74, 15, v103
	v_and_b32_e32 v75, 15, v104
	v_and_b32_e32 v76, 15, v105
	v_and_b32_e32 v77, 15, v106
	v_and_b32_e32 v8, 15, v11
	v_and_b32_e32 v9, 15, v10
	v_and_b32_e32 v10, 15, v107
	v_and_b32_e32 v11, 15, v6
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v78, v[18:21]
	ds_store_b128 v78, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v79
	ds_load_b128 v[18:21], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[34:37]
	ds_store_b128 v78, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v79
	ds_load_b128 v[34:37], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[50:53]
	ds_store_b128 v78, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v79
	ds_load_b128 v[50:53], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[66:69]
	ds_store_b128 v78, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v79
	ds_load_b128 v[66:69], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[22:25]
	ds_store_b128 v78, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v79
	ds_load_b128 v[30:33], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[38:41]
	ds_store_b128 v78, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v79
	ds_load_b128 v[46:49], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[54:57]
	ds_store_b128 v78, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v79
	ds_load_b128 v[62:65], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[70:73]
	ds_store_b128 v78, v[8:11] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v79
	ds_load_b128 v[70:73], v79 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v10, v18, 4, v14
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v20, 4, v16
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v20, v34, 4, v26
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v26, v48, 4, v40
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v11, v19, 4, v15
	v_lshl_or_b32 v15, v21, 4, v17
	v_lshl_or_b32 v16, v30, 4, v22
	v_lshl_or_b32 v17, v31, 4, v23
	v_lshl_or_b32 v18, v32, 4, v24
	v_lshl_or_b32 v19, v33, 4, v25
	v_lshl_or_b32 v21, v35, 4, v27
	v_lshl_or_b32 v27, v49, 4, v41
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v23, v37, 4, v29
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v70, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v6, s0, v12
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v41, v71, 4, v7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v7, s2, s1, v13
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v46, 4, v38
	v_lshl_or_b32 v25, v47, 4, v39
	v_lshl_or_b32 v30, v52, 4, v44
	v_lshl_or_b32 v31, v53, 4, v45
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v44, v7, v6
	v_add3_u32 v45, v6, s1, v7
	v_add3_u32 v46, v6, s2, v7
	v_add3_u32 v47, v6, s0, v7
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v15.l
	v_and_b16 v2.l, 0xff, v14.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v5.l, 0xff, v10.l
	v_lshlrev_b16 v6.l, 8, v19.l
	v_and_b16 v6.h, 0xff, v18.l
	v_lshlrev_b16 v7.l, 8, v17.l
	v_and_b16 v7.h, 0xff, v16.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v28, v50, 4, v42
	v_lshl_or_b32 v29, v51, 4, v43
	v_lshl_or_b32 v32, v62, 4, v54
	v_lshl_or_b32 v33, v63, 4, v55
	v_lshl_or_b32 v42, v72, 4, v8
	v_lshl_or_b32 v43, v73, 4, v9
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v5.l, 0xff, v20.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	v_lshlrev_b16 v7.l, 8, v25.l
	v_and_b16 v7.h, 0xff, v24.l
	s_and_b32 s1, s17, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s16
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v34, v64, 4, v56
	v_lshl_or_b32 v35, v65, 4, v57
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v44, s[0:3], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v7.l, 8, v33.l
	v_and_b16 v7.h, 0xff, v32.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v36, v66, 4, v58
	v_lshl_or_b32 v37, v67, 4, v59
	v_lshl_or_b32 v38, v68, 4, v60
	v_lshl_or_b32 v39, v69, 4, v61
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v5.l, 0xff, v28.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	buffer_store_b64 v[8:9], v45, s[0:3], 0 offen
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v7.l, 8, v41.l
	v_and_b16 v7.h, 0xff, v40.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 2, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v5.l, 0xff, v36.l
	v_lshlrev_b16 v6.l, 8, v43.l
	v_and_b16 v6.h, 0xff, v42.l
	v_or_b16 v11.l, v7.h, v7.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v12
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.l, v4.l
	v_or_b16 v11.h, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v13
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v3, v3, v7, v13
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, v0, 63, s30
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v46, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v47, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s4, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v4, s0
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
.Ltmp68:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 181
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17028
; TotalNumSgprs: 34
; NumVgprs: 181
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     181
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
