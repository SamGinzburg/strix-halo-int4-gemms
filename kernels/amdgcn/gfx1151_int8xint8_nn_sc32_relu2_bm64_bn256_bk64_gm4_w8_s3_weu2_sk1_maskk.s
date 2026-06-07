	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x30
	s_load_b32 s22, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s9, s2
	v_and_b32_e32 v2, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s5, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s4, s4, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s7, s6, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s4, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s6, s6, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s4, s4, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s6, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s4, s4, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s6, s6, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s10, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s10, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s8, s10
	s_add_i32 s8, s8, s10
	s_xor_b32 s10, s2, s6
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s9, s7
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s7, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s10
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s8, s7, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s7, s7, s6
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s4, s8
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s7
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s9, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s7, s2
	s_abs_i32 s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s4
	s_sub_i32 s11, 0, s4
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s6, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s6
	s_mul_hi_u32 s6, s7, s10
	s_xor_b32 s10, s2, s9
	s_mul_i32 s11, s6, s4
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s7, s7, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s10
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s4, s9
	s_sub_i32 s6, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s22, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s6, s8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s2, 63
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s7, s5, 5
	s_lshl_b32 s9, s5, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v14, s9 :: v_dual_and_b32 v9, 16, v0
	v_mov_b32_e32 v1, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v17, 15, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v16, 0xf0, v0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v73, 0
	s_lshl_b32 s7, s6, 6
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s6, s4, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[12:19], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s22, 31
.Ltmp16:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v3, 4, v16
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s8, s1, 31
	scratch_store_b32 off, v2, off offset:24 ; 4-byte Folded Spill
.Ltmp19:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s8, 27
	s_mov_b32 s8, 0
.Ltmp22:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_or_b32_e32 v4, 16, v3
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	v_mul_lo_u32 v2, s22, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:4
	scratch_store_b32 off, v3, off
	v_bfe_i32 v4, v0, 4, 1
	v_mul_lo_u32 v3, s5, v3
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s4, s7, s22
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v1, 3, v0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v4, 0x90, v4
	v_lshl_add_u32 v45, v17, 4, v3
	v_bfe_i32 v5, v0, 2, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v32, 24, v1
	v_and_b32_e32 v1, 0x778, v1
	v_lshrrev_b32_e32 v6, 1, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	v_lshlrev_b32_e32 v9, 1, v0
	v_add3_u32 v34, v2, v32, s4
	v_lshlrev_b32_e32 v2, 5, v0
	v_xor_b32_e32 v1, v4, v1
	v_or_b32_e32 v4, s7, v17
	s_ashr_i32 s35, s1, 5
	v_or_b32_e32 v84, s6, v0
	v_and_b32_e32 v3, 0x160, v2
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v2, 32, v2
	v_or_b32_e32 v8, 16, v4
	v_mul_lo_u32 v63, v4, s35
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v3, 0x90, v5, v3
	v_and_or_b32 v5, 0x70, v6, v17
	v_lshlrev_b32_e32 v6, 4, v0
	v_mul_lo_u32 v64, v8, s35
	v_lshrrev_b32_e32 v8, 6, v0
	v_xor_b32_e32 v7, 16, v3
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v60, 0, v5
	v_or_b32_e32 v5, 32, v4
	v_or_b32_e32 v4, 48, v4
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v107, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v75, v5, s35
	v_lshlrev_b32_e32 v5, 2, v0
	v_mul_lo_u32 v76, v4, s35
	v_and_b32_e32 v4, 2, v8
	v_lshlrev_b32_e32 v8, 1, v16
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v95, 0, v1
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v5, 0x1c0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v4, 0, v4
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v82, 0, v8
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v96, 0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v4, v5, v2
	v_add3_u32 v8, v82, v8, v2
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v97, 0, v3
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v104, 0, v7
	v_dual_mov_b32 v0, s8 :: v_dual_and_b32 v9, 28, v9
	v_mov_b32_e32 v106, 0
	s_lshl_b32 s23, s5, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v1, s9 :: v_dual_add_nc_u32 v50, s23, v45
	v_dual_mov_b32 v5, s13 :: v_dual_mov_b32 v2, s10
	v_dual_mov_b32 v3, s11 :: v_dual_mov_b32 v4, s12
	v_dual_mov_b32 v6, s14 :: v_dual_mov_b32 v7, s15
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v10, v10, v9
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v8, v8, v9
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v36, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
.Ltmp24:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s34, s2, 6
	s_lshl_b32 s33, s5, 5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v10, off offset:8
	scratch_store_b32 off, v17, off offset:20
	scratch_store_b32 off, v16, off offset:16
	scratch_store_b32 off, v8, off offset:12
.Ltmp25:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12                          ; standard.py:0:12
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off
	scratch_load_b32 v14, off, off offset:4
	.loc	1 312 21 is_stmt 1              ; generate_amdgcn.py:312:21
	s_add_i32 s0, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s10, s0, 6
	v_or_b32_e32 v8, s10, v32
	s_or_b32 s9, s10, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s0, s10, s5
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v12, s9, v32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s0, s0, s6
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v11, s10, v34
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v16, s0, v45
	v_add_nc_u32_e32 v17, s0, v50
	s_add_i32 s2, s0, s33
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s1, s22, v8
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v15, s9, v34
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s4, s22, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v8, 0x80000000, v11, s1
	v_cndmask_b32_e64 v11, 0x80000000, v15, s4
	buffer_load_b64 v[26:27], v8, s[24:27], 0 offen
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v9, s10, v13
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v10, s10, v14
	v_or_b32_e32 v13, s9, v13
	v_or_b32_e32 v14, s9, v14
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s22, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s0, s22, v10
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v9, s2, v45
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s22, v13
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v10, s2, v50
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s2, s22, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v13, 0x80000000, v17, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s10, 5
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v8, 0x80000000, v9, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v115, v64, s0, 1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v12, 0x80000000, v16, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s35
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v14, 0x80000000, v10, s2
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v114, v63, s0, 1
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[24:25], v11, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[16:19], v12, s[28:31], 0 offen
	buffer_load_b128 v[20:23], v13, s[28:31], 0 offen
	buffer_load_b128 v[8:11], v8, s[28:31], 0 offen
	buffer_load_b128 v[12:15], v14, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v116, v75, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v117, v76, s0, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s9, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v118, v84, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v119, v63, s0, 1
	v_add_lshl_u32 v120, v64, s0, 1
	v_add_lshl_u32 v121, v75, s0, 1
	v_add_lshl_u32 v122, v76, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_cndmask_b32 v117, 0x80000000, v117
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v123, v84, s0, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v116, 0x80000000, v116, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s8, s8, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v195, 0x80000000, v120, vcc_lo
	v_dual_cndmask_b32 v197, 0x80000000, v122 :: v_dual_cndmask_b32 v198, 0x80000000, v123
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s8, s34
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b64 v95, v[26:27] offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v96, v[16:19]
	s_waitcnt vmcnt(2)
	ds_store_b128 v96, v[20:23] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v95, v[24:25] offset:18432
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v96, v[8:11] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v96, v[12:15] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v199, v114, s[12:15], 0 offen
	buffer_load_u16 v200, v115, s[12:15], 0 offen
	buffer_load_u16 v201, v116, s[12:15], 0 offen
	buffer_load_u16 v202, v117, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v203, v118, s[16:19], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v194, 0x80000000, v119, vcc_lo
	v_cndmask_b32_e32 v196, 0x80000000, v121, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[24:27], v97 offset:16384
	ds_load_b128 v[130:133], v97 offset:16896
	ds_load_b128 v[146:149], v97 offset:17408
	ds_load_b128 v[162:165], v97 offset:17920
	ds_load_b128 v[166:169], v104 offset:16384
	ds_load_b128 v[170:173], v104 offset:16896
	ds_load_b128 v[174:177], v104 offset:17408
	ds_load_b128 v[178:181], v104 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v8, v60 offset:3328
	ds_load_u8 v9, v60 offset:3072
	ds_load_u8 v10, v60 offset:3840
	ds_load_u8 v11, v60 offset:3584
	ds_load_u8 v12, v60 offset:3968
	ds_load_u8 v13, v60 offset:3712
	ds_load_u8 v14, v60 offset:3456
	ds_load_u8 v15, v60 offset:3200
	ds_load_u8 v16, v60 offset:2304
	ds_load_u8 v17, v60 offset:2048
	ds_load_u8 v18, v60 offset:2816
	ds_load_u8 v19, v60 offset:2560
	ds_load_u8 v20, v60 offset:2944
	ds_load_u8 v21, v60 offset:2688
	ds_load_u8 v22, v60 offset:2432
	ds_load_u8 v23, v60 offset:2176
	ds_load_u8 v114, v60 offset:1280
	ds_load_u8 v115, v60 offset:1024
	ds_load_u8 v116, v60 offset:1792
	ds_load_u8 v117, v60 offset:1536
	ds_load_u8 v118, v60 offset:1920
	ds_load_u8 v119, v60 offset:1664
	ds_load_u8 v120, v60 offset:1408
	ds_load_u8 v121, v60 offset:1152
	ds_load_u8 v122, v60 offset:256
	ds_load_u8 v123, v60
	ds_load_u8 v124, v60 offset:768
	ds_load_u8 v125, v60 offset:512
	ds_load_u8 v126, v60 offset:896
	ds_load_u8 v127, v60 offset:640
	ds_load_u8 v128, v60 offset:384
	ds_load_u8 v129, v60 offset:128
	ds_load_u8 v134, v60 offset:7424
	ds_load_u8 v135, v60 offset:7168
	ds_load_u8 v136, v60 offset:7936
	ds_load_u8 v137, v60 offset:7680
	ds_load_u8 v138, v60 offset:8064
	ds_load_u8 v139, v60 offset:7808
	ds_load_u8 v140, v60 offset:7552
	ds_load_u8 v141, v60 offset:7296
	ds_load_u8 v142, v60 offset:6400
	ds_load_u8 v143, v60 offset:6144
	ds_load_u8 v144, v60 offset:6912
	ds_load_u8 v145, v60 offset:6656
	ds_load_u8 v150, v60 offset:7040
	ds_load_u8 v151, v60 offset:6784
	ds_load_u8 v152, v60 offset:6528
	ds_load_u8 v153, v60 offset:6272
	ds_load_u8 v154, v60 offset:5376
	ds_load_u8 v155, v60 offset:5120
	ds_load_u8 v156, v60 offset:5888
	ds_load_u8 v157, v60 offset:5632
	ds_load_u8 v158, v60 offset:6016
	ds_load_u8 v159, v60 offset:5760
	ds_load_u8 v160, v60 offset:5504
	ds_load_u8 v161, v60 offset:5248
	ds_load_u8 v182, v60 offset:4352
	ds_load_u8 v183, v60 offset:4096
	ds_load_u8 v184, v60 offset:4864
	ds_load_u8 v185, v60 offset:4608
	ds_load_u8 v186, v60 offset:4992
	ds_load_u8 v187, v60 offset:4736
	ds_load_u8 v188, v60 offset:4480
	ds_load_u8 v189, v60 offset:4224
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v9, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v10, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v11, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v16, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v17, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v18, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v19, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v114, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v115, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v116, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v117, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v122, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v123, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v125, v185, v184, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v13, v23, v22, 0xc0c0004
	v_perm_b32 v15, v21, v20, 0xc0c0004
	v_perm_b32 v20, v121, v120, 0xc0c0004
	v_perm_b32 v21, v119, v118, 0xc0c0004
	v_perm_b32 v22, v129, v128, 0xc0c0004
	v_perm_b32 v23, v127, v126, 0xc0c0004
	v_lshl_or_b32 v157, v9, 16, v8
	v_lshl_or_b32 v156, v11, 16, v10
	v_lshl_or_b32 v155, v17, 16, v16
	v_lshl_or_b32 v154, v19, 16, v18
	v_perm_b32 v118, v141, v140, 0xc0c0004
	v_perm_b32 v119, v139, v138, 0xc0c0004
	v_perm_b32 v120, v153, v152, 0xc0c0004
	v_perm_b32 v121, v151, v150, 0xc0c0004
	v_perm_b32 v126, v161, v160, 0xc0c0004
	v_perm_b32 v127, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v189, v188, 0xc0c0004
	v_perm_b32 v129, v187, v186, 0xc0c0004
	v_lshl_or_b32 v185, v115, 16, v114
	v_lshl_or_b32 v184, v117, 16, v116
	v_lshl_or_b32 v183, v123, 16, v122
	v_lshl_or_b32 v182, v125, 16, v124
	v_lshl_or_b32 v189, v12, 16, v14
	v_lshl_or_b32 v188, v15, 16, v13
	v_lshl_or_b32 v187, v21, 16, v20
	v_lshl_or_b32 v186, v23, 16, v22
	v_wmma_i32_16x16x16_iu8 v[8:15], v[154:157], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v193, v119, 16, v118
	v_lshl_or_b32 v192, v121, 16, v120
	v_lshl_or_b32 v191, v127, 16, v126
	v_lshl_or_b32 v190, v129, 16, v128
	v_wmma_i32_16x16x16_iu8 v[114:121], v[154:157], v[130:133], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[186:189], v[130:133], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[154:157], v[146:149], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[186:189], v[146:149], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[182:185], v[166:169], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[182:185], v[174:177], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[154:157], v[162:165], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[190:193], v[174:177], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v174, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v8, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[16:23], v[186:189], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[186:189], v[162:165], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[182:185], v[178:181], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[16:23], v[190:193], v[166:169], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[182:185], v[170:173], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[190:193], v[170:173], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[190:193], v[178:181], v[154:161] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v9
	v_cvt_f32_i32_e32 v176, v10
	v_cvt_f32_i32_e32 v177, v11
	v_cvt_f32_i32_e32 v178, v12
	v_cvt_f32_i32_e32 v179, v13
	v_cvt_f32_i32_e32 v180, v14
	v_cvt_f32_i32_e32 v181, v15
	v_cvt_f32_i32_e32 v182, v130
	v_cvt_f32_i32_e32 v183, v131
	v_cvt_f32_i32_e32 v184, v132
	v_cvt_f32_i32_e32 v185, v133
	v_cvt_f32_i32_e32 v186, v146
	v_cvt_f32_i32_e32 v187, v147
	v_cvt_f32_i32_e32 v188, v148
	v_cvt_f32_i32_e32 v189, v149
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
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
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v191, 16, v200
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v192, 16, v201
	v_lshlrev_b32_e32 v190, 16, v199
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v114, v114, v191 :: v_dual_lshlrev_b32 v193, 16, v202
	v_mul_f32_e32 v115, v115, v191
	v_mul_f32_e32 v116, v116, v191
	v_mul_f32_e32 v118, v118, v191
	v_mul_f32_e32 v120, v120, v191
	v_mul_f32_e32 v122, v122, v191
	v_dual_mul_f32 v124, v124, v191 :: v_dual_mul_f32 v183, v183, v192
	v_mul_f32_e32 v255, v174, v190
	v_mul_f32_e32 v30, v175, v190
	v_mul_f32_e32 v29, v177, v190
	v_mul_f32_e32 v19, v19, v190
	v_mul_f32_e32 v21, v21, v190
	v_mul_f32_e32 v23, v23, v190
	v_dual_mul_f32 v125, v125, v191 :: v_dual_mul_f32 v184, v184, v192
	v_dual_mul_f32 v126, v126, v191 :: v_dual_mul_f32 v185, v185, v192
	v_dual_mul_f32 v127, v127, v191 :: v_dual_mul_f32 v134, v134, v192
	v_dual_mul_f32 v128, v128, v191 :: v_dual_mul_f32 v135, v135, v192
	v_mul_f32_e32 v28, v176, v190
	v_mul_f32_e32 v33, v178, v190
	v_mul_f32_e32 v31, v179, v190
	v_mul_f32_e32 v112, v180, v190
	v_mul_f32_e32 v113, v181, v190
	v_mul_f32_e32 v16, v16, v190
	v_mul_f32_e32 v17, v17, v190
	v_mul_f32_e32 v18, v18, v190
	v_mul_f32_e32 v20, v20, v190
	v_dual_mul_f32 v22, v22, v190 :: v_dual_mul_f32 v117, v117, v191
	v_mul_f32_e32 v119, v119, v191
	v_mul_f32_e32 v121, v121, v191
	v_mul_f32_e32 v123, v123, v191
	v_dual_mul_f32 v129, v129, v191 :: v_dual_mul_f32 v136, v136, v192
	v_mul_f32_e32 v182, v182, v192
	v_dual_mul_f32 v137, v137, v192 :: v_dual_mul_f32 v186, v186, v193
	v_dual_mul_f32 v138, v138, v192 :: v_dual_mul_f32 v187, v187, v193
	v_dual_mul_f32 v139, v139, v192 :: v_dual_mul_f32 v188, v188, v193
	v_dual_mul_f32 v140, v140, v192 :: v_dual_mul_f32 v189, v189, v193
	v_dual_mul_f32 v141, v141, v192 :: v_dual_mul_f32 v150, v150, v193
	v_dual_mul_f32 v142, v142, v192 :: v_dual_mul_f32 v151, v151, v193
	v_dual_mul_f32 v143, v143, v192 :: v_dual_mul_f32 v152, v152, v193
	v_dual_mul_f32 v144, v144, v192 :: v_dual_mul_f32 v153, v153, v193
	v_dual_mul_f32 v145, v145, v192 :: v_dual_mul_f32 v154, v154, v193
	s_waitcnt vmcnt(0)
	ds_store_b16 v8, v203 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[8:11], v82 offset:20480
	ds_load_b128 v[12:15], v82 offset:20496
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[24:27], v97 offset:18432
	ds_load_b128 v[130:133], v97 offset:18944
	ds_load_b128 v[146:149], v97 offset:19456
	ds_load_b128 v[162:165], v97 offset:19968
	ds_load_b128 v[166:169], v104 offset:18432
	ds_load_b128 v[170:173], v104 offset:18944
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v199, v60 offset:15616
	ds_load_u8 v200, v60 offset:15360
	ds_load_u8 v201, v60 offset:16128
	ds_load_u8 v202, v60 offset:15872
	ds_load_u8 v203, v60 offset:14592
	ds_load_u8 v204, v60 offset:14336
	ds_load_u8 v205, v60 offset:15104
	ds_load_u8 v206, v60 offset:14848
	ds_load_u8 v207, v60 offset:13568
	ds_load_u8 v208, v60 offset:13312
	ds_load_u8 v209, v60 offset:14080
	ds_load_u8 v210, v60 offset:13824
	ds_load_u8 v211, v60 offset:12544
	ds_load_u8 v212, v60 offset:12288
	ds_load_u8 v213, v60 offset:13056
	ds_load_u8 v214, v60 offset:12800
	ds_load_u8 v215, v60 offset:11520
	ds_load_u8 v216, v60 offset:11264
	ds_load_u8 v217, v60 offset:12032
	ds_load_u8 v218, v60 offset:11776
	ds_load_u8 v219, v60 offset:12160
	ds_load_u8 v220, v60 offset:11904
	ds_load_u8 v221, v60 offset:11648
	ds_load_u8 v222, v60 offset:11392
	ds_load_u8 v223, v60 offset:10496
	ds_load_u8 v224, v60 offset:10240
	ds_load_u8 v225, v60 offset:11008
	ds_load_u8 v226, v60 offset:10752
	ds_load_u8 v227, v60 offset:11136
	ds_load_u8 v228, v60 offset:10880
	ds_load_u8 v229, v60 offset:10624
	ds_load_u8 v230, v60 offset:10368
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(39)
	v_lshlrev_b32_e32 v245, 16, v9
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v194, v194, s[12:15], 0 offen
	buffer_load_u16 v195, v195, s[12:15], 0 offen
	buffer_load_u16 v196, v196, s[12:15], 0 offen
	buffer_load_u16 v197, v197, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v198, v198, s[16:19], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v231, v60 offset:9472
	ds_load_u8 v232, v60 offset:9216
	ds_load_u8 v233, v60 offset:9984
	ds_load_u8 v234, v60 offset:9728
	ds_load_u8 v235, v60 offset:10112
	ds_load_u8 v236, v60 offset:9856
	ds_load_u8 v237, v60 offset:9600
	ds_load_u8 v238, v60 offset:9344
	ds_load_u8 v239, v60 offset:8448
	ds_load_u8 v240, v60 offset:8192
	ds_load_u8 v241, v60 offset:8960
	ds_load_u8 v242, v60 offset:8704
	ds_load_u8 v243, v60 offset:9088
	ds_load_u8 v252, v60 offset:8832
	ds_load_u8 v253, v60 offset:8576
	ds_load_u8 v254, v60 offset:8320
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v244, 16, v8
	v_lshlrev_b32_e32 v246, 16, v10
	v_lshlrev_b32_e32 v247, 16, v11
	s_waitcnt lgkmcnt(54)
	v_lshlrev_b32_e32 v248, 16, v12
	v_lshlrev_b32_e32 v249, 16, v13
	v_lshlrev_b32_e32 v250, 16, v14
	v_lshlrev_b32_e32 v251, 16, v15
	v_and_b32_e32 v8, 0xffff0000, v8
	v_and_b32_e32 v9, 0xffff0000, v9
	v_and_b32_e32 v10, 0xffff0000, v10
	v_and_b32_e32 v11, 0xffff0000, v11
	v_and_b32_e32 v12, 0xffff0000, v12
	v_and_b32_e32 v13, 0xffff0000, v13
	v_and_b32_e32 v14, 0xffff0000, v14
	v_and_b32_e32 v15, 0xffff0000, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v190, v60 offset:16256
	ds_load_u8 v191, v60 offset:16000
	ds_load_u8 v192, v60 offset:15744
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v155, v155, v193 :: v_dual_fmac_f32 v110, v28, v246
	v_dual_mul_f32 v156, v156, v193 :: v_dual_fmac_f32 v89, v255, v244
	v_dual_mul_f32 v157, v157, v193 :: v_dual_fmac_f32 v106, v112, v250
	v_dual_mul_f32 v158, v158, v193 :: v_dual_fmac_f32 v109, v29, v247
	v_dual_mul_f32 v159, v159, v193 :: v_dual_fmac_f32 v108, v33, v248
	v_dual_mul_f32 v160, v160, v193 :: v_dual_fmac_f32 v105, v113, v251
	v_dual_mul_f32 v161, v161, v193 :: v_dual_fmac_f32 v100, v19, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v193, v60 offset:15488
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	ds_load_u8 v216, v60 offset:15232
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v60 offset:14976
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	ds_load_u8 v224, v60 offset:14720
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	ds_load_u8 v226, v60 offset:14464
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	ds_load_u8 v232, v60 offset:14208
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	ds_load_u8 v234, v60 offset:13952
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v239, v240, v239, 0xc0c0004
	ds_load_u8 v240, v60 offset:13696
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v241, v242, v241, 0xc0c0004
	ds_load_u8 v242, v60 offset:13440
	v_perm_b32 v199, v200, v199, 0xc0c0004
	ds_load_u8 v200, v60 offset:13184
	v_perm_b32 v201, v202, v201, 0xc0c0004
	ds_load_u8 v202, v60 offset:12928
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v60 offset:12672
	v_perm_b32 v205, v206, v205, 0xc0c0004
	ds_load_u8 v206, v60 offset:12416
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[174:177], v104 offset:19456
	ds_load_b128 v[178:181], v104 offset:19968
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v207, v208, v207, 0xc0c0004
	v_perm_b32 v208, v210, v209, 0xc0c0004
	v_perm_b32 v209, v212, v211, 0xc0c0004
	v_perm_b32 v210, v214, v213, 0xc0c0004
	v_perm_b32 v211, v222, v221, 0xc0c0004
	v_perm_b32 v212, v220, v219, 0xc0c0004
	v_perm_b32 v213, v230, v229, 0xc0c0004
	v_perm_b32 v214, v228, v227, 0xc0c0004
	v_perm_b32 v219, v238, v237, 0xc0c0004
	v_perm_b32 v220, v236, v235, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v221, v254, v253, 0xc0c0004
	v_perm_b32 v222, v252, v243, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v191, v226, v224, 0xc0c0004
	v_perm_b32 v216, v218, v216, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v218, v242, v240, 0xc0c0004
	v_perm_b32 v224, v234, v232, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v204, v206, v204, 0xc0c0004
	v_perm_b32 v200, v202, v200, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v65, v136, v250 :: v_dual_fmac_f32 v52, v186, v244
	v_dual_fmac_f32 v59, v139, v9 :: v_dual_fmac_f32 v48, v189, v247
	v_dual_fmac_f32 v53, v145, v15 :: v_dual_fmac_f32 v42, v154, v8
	v_dual_fmac_f32 v51, v187, v245 :: v_dual_fmac_f32 v40, v156, v10
	v_dual_fmac_f32 v49, v188, v246 :: v_dual_fmac_f32 v38, v158, v12
	v_fmac_f32_e32 v41, v155, v9
	v_fmac_f32_e32 v39, v157, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v157, v217, 16, v215
	v_lshl_or_b32 v156, v225, 16, v223
	v_lshl_or_b32 v155, v233, 16, v231
	v_lshl_or_b32 v154, v241, 16, v239
	v_lshl_or_b32 v189, v212, 16, v211
	v_lshl_or_b32 v188, v214, 16, v213
	v_lshl_or_b32 v187, v220, 16, v219
	v_lshl_or_b32 v186, v222, 16, v221
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v111, v30, v245 :: v_dual_fmac_f32 v90, v116, v246
	v_dual_fmac_f32 v99, v20, v12 :: v_dual_fmac_f32 v88, v117, v247
	v_dual_fmac_f32 v93, v23, v15 :: v_dual_fmac_f32 v92, v114, v244
	v_dual_fmac_f32 v91, v115, v245 :: v_dual_fmac_f32 v78, v125, v11
	v_dual_fmac_f32 v87, v118, v248 :: v_dual_fmac_f32 v86, v119, v249
	v_dual_fmac_f32 v85, v120, v250 :: v_dual_fmac_f32 v80, v123, v9
	v_dual_fmac_f32 v83, v121, v251 :: v_dual_fmac_f32 v74, v127, v13
	v_dual_fmac_f32 v81, v122, v8 :: v_dual_fmac_f32 v72, v129, v15
	v_dual_fmac_f32 v79, v124, v10 :: v_dual_fmac_f32 v70, v183, v245
	v_dual_fmac_f32 v77, v126, v12 :: v_dual_fmac_f32 v68, v185, v247
	v_dual_fmac_f32 v73, v128, v14 :: v_dual_fmac_f32 v66, v135, v249
	v_dual_fmac_f32 v71, v182, v244 :: v_dual_fmac_f32 v62, v137, v251
	v_dual_fmac_f32 v69, v184, v246 :: v_dual_fmac_f32 v56, v142, v12
	v_dual_fmac_f32 v67, v134, v248 :: v_dual_fmac_f32 v58, v140, v10
	v_dual_fmac_f32 v61, v138, v8 :: v_dual_fmac_f32 v54, v144, v14
	v_dual_fmac_f32 v57, v141, v11 :: v_dual_fmac_f32 v46, v151, v249
	v_dual_fmac_f32 v55, v143, v13 :: v_dual_fmac_f32 v44, v152, v250
	v_dual_fmac_f32 v47, v150, v248 :: v_dual_fmac_f32 v36, v160, v14
	v_fmac_f32_e32 v43, v153, v251
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v185, v201, 16, v199
	v_lshl_or_b32 v184, v205, 16, v203
	v_lshl_or_b32 v183, v208, 16, v207
	v_lshl_or_b32 v182, v210, 16, v209
	v_lshl_or_b32 v193, v190, 16, v192
	v_lshl_or_b32 v192, v216, 16, v191
	v_lshl_or_b32 v191, v224, 16, v218
	v_lshl_or_b32 v190, v200, 16, v204
	v_wmma_i32_16x16x16_iu8 v[114:121], v[154:157], v[130:133], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[186:189], v[130:133], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[154:157], v[146:149], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[186:189], v[146:149], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[154:157], v[162:165], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[182:185], v[170:173], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[182:185], v[174:177], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[190:193], v[174:177], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[182:185], v[178:181], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[190:193], v[170:173], v[122:129] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v28, v118
	v_cvt_f32_i32_e32 v29, v119
	v_cvt_f32_i32_e32 v119, v130
	v_cvt_f32_i32_e32 v130, v141
	v_cvt_f32_i32_e32 v141, v152
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v107, v31, v249 :: v_dual_fmac_f32 v94, v22, v14
	v_dual_fmac_f32 v103, v16, v8 :: v_dual_fmac_f32 v102, v17, v9
	v_dual_fmac_f32 v101, v18, v10 :: v_dual_fmac_f32 v98, v21, v13
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v118, v129
	v_cvt_f32_i32_e32 v129, v140
	v_cvt_f32_i32_e32 v140, v151
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v112, v123
	v_cvt_f32_i32_e32 v123, v134
	v_cvt_f32_i32_e32 v134, v145
	v_wmma_i32_16x16x16_iu8 v[16:23], v[186:189], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v33, v122
	v_cvt_f32_i32_e32 v122, v133
	v_cvt_f32_i32_e32 v133, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[190:193], v[166:169], v[16:23] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v30, v120
	v_cvt_f32_i32_e32 v31, v121
	v_cvt_f32_i32_e32 v113, v124
	v_cvt_f32_i32_e32 v120, v131
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v124, v135
	v_cvt_f32_i32_e32 v131, v142
	v_cvt_f32_i32_e32 v135, v146
	v_cvt_f32_i32_e32 v142, v153
	v_cvt_f32_i32_e32 v121, v132
	v_cvt_f32_i32_e32 v132, v143
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v152, 16, v195
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v35, v161, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v28, v28, v152 :: v_dual_lshlrev_b32 v151, 16, v194
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v37, v159, v13
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[8:15], v[154:157], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[186:189], v[162:165], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v24, v114
	v_wmma_i32_16x16x16_iu8 v[8:15], v[182:185], v[166:169], v[8:15] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v115
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[190:193], v[178:181], v[154:161] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v26, v116
	v_cvt_f32_i32_e32 v27, v117
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v145, v156
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v156, v8, v151
	scratch_load_b32 v8, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v144, v155
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v155, 16, v198
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v114, v125
	v_cvt_f32_i32_e32 v115, v126
	v_cvt_f32_i32_e32 v116, v127
	v_cvt_f32_i32_e32 v117, v128
	v_cvt_f32_i32_e32 v125, v136
	v_cvt_f32_i32_e32 v126, v137
	v_cvt_f32_i32_e32 v127, v138
	v_cvt_f32_i32_e32 v128, v139
	v_cvt_f32_i32_e32 v136, v147
	v_cvt_f32_i32_e32 v137, v148
	v_cvt_f32_i32_e32 v138, v149
	v_cvt_f32_i32_e32 v139, v150
	v_cvt_f32_i32_e32 v146, v157
	v_cvt_f32_i32_e32 v147, v158
	v_cvt_f32_i32_e32 v148, v159
	v_cvt_f32_i32_e32 v149, v160
	v_cvt_f32_i32_e32 v150, v161
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v158, v10, v151 :: v_dual_lshlrev_b32 v153, 16, v196
	v_dual_mul_f32 v157, v9, v151 :: v_dual_mul_f32 v30, v30, v152
	v_dual_mul_f32 v159, v11, v151 :: v_dual_mul_f32 v112, v112, v152
	v_mul_f32_e32 v160, v12, v151
	v_dual_mul_f32 v161, v13, v151 :: v_dual_mul_f32 v114, v114, v152
	v_dual_mul_f32 v162, v14, v151 :: v_dual_mul_f32 v25, v25, v152
	v_dual_mul_f32 v163, v15, v151 :: v_dual_mul_f32 v116, v116, v152
	v_dual_mul_f32 v164, v16, v151 :: v_dual_mul_f32 v27, v27, v152
	v_dual_mul_f32 v165, v17, v151 :: v_dual_mul_f32 v118, v118, v152
	v_dual_mul_f32 v166, v18, v151 :: v_dual_mul_f32 v29, v29, v152
	v_dual_mul_f32 v167, v19, v151 :: v_dual_mul_f32 v120, v120, v153
	v_dual_mul_f32 v168, v20, v151 :: v_dual_mul_f32 v31, v31, v152
	v_dual_mul_f32 v169, v21, v151 :: v_dual_mul_f32 v122, v122, v153
	v_dual_mul_f32 v170, v22, v151 :: v_dual_mul_f32 v33, v33, v152
	v_dual_mul_f32 v151, v23, v151 :: v_dual_mul_f32 v124, v124, v153
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v143, v154
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v154, 16, v197
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v24, v24, v152
	v_mul_f32_e32 v26, v26, v152
	v_dual_mul_f32 v113, v113, v152 :: v_dual_mul_f32 v126, v126, v153
	v_dual_mul_f32 v115, v115, v152 :: v_dual_mul_f32 v128, v128, v153
	v_dual_mul_f32 v117, v117, v152 :: v_dual_mul_f32 v130, v130, v153
	v_dual_mul_f32 v119, v119, v153 :: v_dual_mul_f32 v136, v136, v154
	v_dual_mul_f32 v121, v121, v153 :: v_dual_mul_f32 v138, v138, v154
	v_dual_mul_f32 v123, v123, v153 :: v_dual_mul_f32 v140, v140, v154
	v_dual_mul_f32 v125, v125, v153 :: v_dual_mul_f32 v142, v142, v154
	v_dual_mul_f32 v127, v127, v153 :: v_dual_mul_f32 v144, v144, v154
	v_dual_mul_f32 v129, v129, v153 :: v_dual_mul_f32 v146, v146, v154
	v_dual_mul_f32 v131, v131, v153 :: v_dual_mul_f32 v148, v148, v154
	v_dual_mul_f32 v132, v132, v153 :: v_dual_mul_f32 v135, v135, v154
	v_dual_mul_f32 v133, v133, v153 :: v_dual_mul_f32 v150, v150, v154
	v_dual_mul_f32 v134, v134, v153 :: v_dual_mul_f32 v137, v137, v154
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v155 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v82 offset:20480
	ds_load_b128 v[12:15], v82 offset:20496
	ds_load_b128 v[16:19], v82 offset:20992
	ds_load_b128 v[20:23], v82 offset:21008
	v_mul_f32_e32 v139, v139, v154
	v_mul_f32_e32 v141, v141, v154
	v_mul_f32_e32 v143, v143, v154
	v_mul_f32_e32 v145, v145, v154
	v_mul_f32_e32 v147, v147, v154
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v149, v149, v154 :: v_dual_fmac_f32 v88, v27, v11
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v89, v156, v8 :: v_dual_fmac_f32 v110, v158, v10
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v111, v157, v9 :: v_dual_fmac_f32 v106, v162, v14
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v109, v159, v11 :: v_dual_fmac_f32 v94, v170, v22
	v_dual_fmac_f32 v108, v160, v12 :: v_dual_fmac_f32 v107, v161, v13
	v_dual_fmac_f32 v90, v26, v10 :: v_dual_fmac_f32 v105, v163, v15
	v_dual_fmac_f32 v86, v29, v13 :: v_dual_fmac_f32 v103, v164, v16
	v_fmac_f32_e32 v78, v114, v19
	v_dual_fmac_f32 v102, v165, v17 :: v_dual_fmac_f32 v101, v166, v18
	v_fmac_f32_e32 v80, v112, v17
	v_dual_fmac_f32 v100, v167, v19 :: v_dual_fmac_f32 v99, v168, v20
	v_fmac_f32_e32 v72, v118, v23
	v_dual_fmac_f32 v98, v169, v21 :: v_dual_fmac_f32 v93, v151, v23
	v_fmac_f32_e32 v74, v116, v21
	v_dual_fmac_f32 v92, v24, v8 :: v_dual_fmac_f32 v91, v25, v9
	v_dual_fmac_f32 v68, v122, v11 :: v_dual_fmac_f32 v87, v28, v12
	v_fmac_f32_e32 v62, v126, v15
	v_dual_fmac_f32 v85, v30, v14 :: v_dual_fmac_f32 v70, v120, v9
	v_dual_fmac_f32 v83, v31, v15 :: v_dual_fmac_f32 v66, v124, v13
	v_dual_fmac_f32 v81, v33, v16 :: v_dual_fmac_f32 v48, v138, v11
	v_dual_fmac_f32 v79, v113, v18 :: v_dual_fmac_f32 v56, v131, v20
	v_dual_fmac_f32 v77, v115, v20 :: v_dual_fmac_f32 v58, v129, v18
	v_dual_fmac_f32 v73, v117, v22 :: v_dual_fmac_f32 v52, v135, v8
	v_dual_fmac_f32 v71, v119, v8 :: v_dual_fmac_f32 v54, v133, v22
	v_dual_fmac_f32 v69, v121, v10 :: v_dual_fmac_f32 v46, v140, v13
	v_dual_fmac_f32 v67, v123, v12 :: v_dual_fmac_f32 v44, v141, v14
	v_dual_fmac_f32 v65, v125, v14 :: v_dual_fmac_f32 v42, v143, v16
	v_dual_fmac_f32 v61, v127, v16 :: v_dual_fmac_f32 v40, v145, v18
	v_dual_fmac_f32 v59, v128, v17 :: v_dual_fmac_f32 v38, v147, v20
	v_dual_fmac_f32 v57, v130, v19 :: v_dual_fmac_f32 v36, v149, v22
	v_fmac_f32_e32 v55, v132, v21
	v_fmac_f32_e32 v53, v134, v23
	v_fmac_f32_e32 v51, v136, v9
	v_fmac_f32_e32 v49, v137, v10
	v_fmac_f32_e32 v47, v139, v12
	v_fmac_f32_e32 v43, v142, v15
	v_fmac_f32_e32 v41, v144, v17
	v_fmac_f32_e32 v39, v146, v19
	v_fmac_f32_e32 v37, v148, v21
	v_fmac_f32_e32 v35, v150, v23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, v108, v108 :: v_dual_max_f32 v5, v107, v107
	v_max_f32_e32 v8, v103, v103
	v_dual_max_f32 v26, v79, v79 :: v_dual_max_f32 v27, v78, v78
	v_max_f32_e32 v28, v77, v77
	v_dual_max_f32 v34, v69, v69 :: v_dual_max_f32 v45, v68, v68
	v_dual_max_f32 v50, v67, v67 :: v_dual_max_f32 v63, v65, v65
	v_dual_max_f32 v60, v66, v66 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, v102, v102
	v_dual_max_f32 v10, v101, v101 :: v_dual_max_f32 v13, v98, v98
	v_max_f32_e32 v12, v99, v99
	v_dual_max_f32 v14, v94, v94 :: v_dual_max_f32 v15, v93, v93
	v_dual_max_f32 v16, v92, v92 :: v_dual_max_f32 v17, v91, v91
	v_dual_max_f32 v18, v90, v90 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v29, v74, v74
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v59, v59, v59
	v_dual_max_f32 v74, 0, v45 :: v_dual_max_f32 v75, 0, v50
	v_dual_max_f32 v77, 0, v63 :: v_dual_max_f32 v76, 0, v60
	v_max_f32_e32 v45, v62, v62
	v_dual_max_f32 v58, v58, v58 :: v_dual_max_f32 v57, v57, v57
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_max_f32_e32 v17, 0, v17
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_max_f32_e32 v21, v86, v86
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v19, v88, v88
	v_max_f32_e32 v20, v87, v87
	v_dual_max_f32 v24, v81, v81 :: v_dual_max_f32 v25, v80, v80
	v_dual_max_f32 v50, v61, v61 :: v_dual_max_f32 v81, 0, v58
	v_max_f32_e32 v78, 0, v45
	v_dual_max_f32 v80, 0, v59 :: v_dual_max_f32 v45, v56, v56
	v_dual_max_f32 v22, v85, v85 :: v_dual_max_f32 v23, v83, v83
	v_max_f32_e32 v21, 0, v21
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v20, 0, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v54, v54, v54 :: v_dual_max_f32 v83, 0, v45
	v_max_f32_e32 v82, 0, v57
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v64, v9, v9 :: v_dual_mul_f32 v61, v12, v12
	v_dual_mul_f32 v60, v13, v13 :: v_dual_mul_f32 v57, v16, v16
	v_mul_f32_e32 v56, v17, v17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:24
	scratch_load_b32 v16, off, off offset:16
	scratch_load_b32 v17, off, off offset:20
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v49, v49, v49 :: v_dual_max_f32 v48, v48, v48
	v_max_f32_e32 v46, v46, v46
	v_dual_max_f32 v0, v89, v89 :: v_dual_max_f32 v1, v111, v111
	v_dual_max_f32 v6, v106, v106 :: v_dual_max_f32 v7, v105, v105
	v_dual_max_f32 v79, 0, v50 :: v_dual_max_f32 v50, v55, v55
	v_max_f32_e32 v53, v53, v53
	v_dual_max_f32 v89, 0, v49 :: v_dual_max_f32 v92, 0, v46
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v2, v110, v110
	v_dual_max_f32 v3, v109, v109 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v11, v100, v100 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v31, v72, v72 :: v_dual_max_f32 v30, v73, v73
	v_dual_max_f32 v33, v70, v70 :: v_dual_max_f32 v32, v71, v71
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v52, v52, v52
	v_dual_max_f32 v45, v51, v51 :: v_dual_max_f32 v86, 0, v53
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v90, 0, v48
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v42, v42, v42
	v_max_f32_e32 v44, v44, v44
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v96, 0, v41 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v36, v36, v36
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v84, 0, v50 :: v_dual_max_f32 v87, 0, v52
	v_dual_max_f32 v85, 0, v54 :: v_dual_max_f32 v88, 0, v45
	v_max_f32_e32 v91, 0, v47
	v_dual_max_f32 v94, 0, v43 :: v_dual_max_f32 v97, 0, v40
	v_max_f32_e32 v95, 0, v42
	v_max_f32_e32 v93, 0, v44
	v_dual_max_f32 v99, 0, v38 :: v_dual_max_f32 v98, 0, v39
	v_dual_max_f32 v101, 0, v36 :: v_dual_max_f32 v100, 0, v37
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v73, v0, v0 :: v_dual_max_f32 v102, 0, v35
	v_dual_mul_f32 v71, v2, v2 :: v_dual_mul_f32 v72, v1, v1
	v_dual_mul_f32 v69, v4, v4 :: v_dual_mul_f32 v70, v3, v3
	v_dual_mul_f32 v67, v6, v6 :: v_dual_mul_f32 v68, v5, v5
	v_dual_mul_f32 v65, v8, v8 :: v_dual_mul_f32 v66, v7, v7
	v_dual_mul_f32 v63, v10, v10 :: v_dual_mul_f32 v62, v11, v11
	v_dual_mul_f32 v59, v14, v14 :: v_dual_mul_f32 v58, v15, v15
	v_dual_mul_f32 v55, v18, v18 :: v_dual_mul_f32 v54, v19, v19
	v_mul_f32_e32 v51, v22, v22
	v_dual_mul_f32 v53, v20, v20 :: v_dual_mul_f32 v52, v21, v21
	v_dual_mul_f32 v49, v24, v24 :: v_dual_mul_f32 v50, v23, v23
	v_dual_mul_f32 v47, v26, v26 :: v_dual_mul_f32 v48, v25, v25
	v_dual_mul_f32 v45, v28, v28 :: v_dual_mul_f32 v46, v27, v27
	v_dual_mul_f32 v43, v30, v30 :: v_dual_mul_f32 v44, v29, v29
	v_dual_mul_f32 v41, v32, v32 :: v_dual_mul_f32 v42, v31, v31
	v_dual_mul_f32 v39, v34, v34 :: v_dual_mul_f32 v40, v33, v33
	v_dual_mul_f32 v37, v75, v75 :: v_dual_mul_f32 v38, v74, v74
	v_dual_mul_f32 v35, v77, v77 :: v_dual_mul_f32 v36, v76, v76
	v_dual_mul_f32 v33, v79, v79 :: v_dual_mul_f32 v34, v78, v78
	v_dual_mul_f32 v31, v81, v81 :: v_dual_mul_f32 v32, v80, v80
	v_dual_mul_f32 v27, v82, v82 :: v_dual_mul_f32 v26, v83, v83
	v_dual_mul_f32 v25, v84, v84 :: v_dual_mul_f32 v24, v85, v85
	v_dual_mul_f32 v23, v86, v86 :: v_dual_mul_f32 v22, v87, v87
	v_dual_mul_f32 v21, v88, v88 :: v_dual_mul_f32 v20, v89, v89
	v_dual_mul_f32 v19, v91, v91 :: v_dual_mul_f32 v18, v90, v90
	v_mul_f32_e32 v15, v92, v92
	v_dual_mul_f32 v13, v93, v93 :: v_dual_mul_f32 v12, v94, v94
	v_dual_mul_f32 v11, v95, v95 :: v_dual_mul_f32 v10, v96, v96
	v_dual_mul_f32 v8, v97, v97 :: v_dual_mul_f32 v7, v99, v99
	v_dual_mul_f32 v6, v98, v98 :: v_dual_mul_f32 v5, v100, v100
	v_dual_mul_f32 v4, v101, v101 :: v_dual_mul_f32 v3, v102, v102
	v_dual_mov_b32 v1, s33 :: v_dual_mov_b32 v14, s23
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.h, 0
	v_mov_b16_e32 v29.l, v72.h
	v_mov_b16_e32 v28.l, v73.h
	v_mov_b16_e32 v74.l, v71.h
	s_waitcnt vmcnt(2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v9
	v_mov_b16_e32 v28.h, v29.h
	v_and_b32_e32 v30, 1, v29
	v_mov_b16_e32 v29.l, v70.h
	v_mov_b16_e32 v74.h, v29.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v2, s5, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v30, v72, v30, 0x7fff
	v_and_b32_e32 v72, 1, v29
	v_mov_b16_e32 v29.l, v68.h
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v16, 1, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v73, v28, 0x7fff
	v_and_b32_e32 v73, 1, v74
	v_mov_b16_e32 v74.l, v69.h
	v_add3_u32 v70, v70, v72, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s7, s7, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v28.h
	v_add3_u32 v28, v71, v73, 0x7fff
	v_and_b32_e32 v71, 1, v29
	v_and_b32_e32 v72, 1, v74
	v_mov_b16_e32 v29.l, v66.h
	v_mov_b16_e32 v73.l, v67.h
	v_mov_b16_e32 v73.h, v29.h
	v_mov_b16_e32 v70.l, v28.h
	v_add3_u32 v28, v69, v72, 0x7fff
	v_add3_u32 v68, v68, v71, 0x7fff
	v_and_b32_e32 v69, 1, v29
	v_and_b32_e32 v71, 1, v73
	v_mov_b16_e32 v29.l, v64.h
	v_mov_b16_e32 v72.l, v65.h
	v_mov_b16_e32 v72.h, v29.h
	v_mov_b16_e32 v68.l, v28.h
	v_add3_u32 v28, v67, v71, 0x7fff
	v_add3_u32 v66, v66, v69, 0x7fff
	v_and_b32_e32 v67, 1, v29
	v_and_b32_e32 v69, 1, v72
	v_mov_b16_e32 v29.l, v62.h
	v_mov_b16_e32 v71.l, v63.h
	v_mov_b16_e32 v71.h, v29.h
	v_mov_b16_e32 v66.l, v28.h
	v_add3_u32 v28, v65, v69, 0x7fff
	v_add3_u32 v64, v64, v67, 0x7fff
	v_and_b32_e32 v65, 1, v29
	v_and_b32_e32 v67, 1, v71
	v_mov_b16_e32 v29.l, v60.h
	v_mov_b16_e32 v69.l, v61.h
	v_mov_b16_e32 v69.h, v29.h
	v_mov_b16_e32 v64.l, v28.h
	v_add3_u32 v28, v63, v67, 0x7fff
	v_add3_u32 v62, v62, v65, 0x7fff
	v_and_b32_e32 v63, 1, v29
	v_and_b32_e32 v65, 1, v69
	v_mov_b16_e32 v29.l, v58.h
	v_mov_b16_e32 v67.l, v59.h
	v_mov_b16_e32 v67.h, v29.h
	v_mov_b16_e32 v62.l, v28.h
	v_add3_u32 v28, v61, v65, 0x7fff
	v_add3_u32 v60, v60, v63, 0x7fff
	v_and_b32_e32 v61, 1, v29
	v_and_b32_e32 v63, 1, v67
	v_mov_b16_e32 v29.l, v56.h
	v_mov_b16_e32 v65.l, v57.h
	v_mov_b16_e32 v65.h, v29.h
	v_mov_b16_e32 v60.l, v28.h
	v_add3_u32 v28, v59, v63, 0x7fff
	v_add3_u32 v58, v58, v61, 0x7fff
	v_and_b32_e32 v59, 1, v29
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v29.l, v54.h
	v_mov_b16_e32 v63.l, v55.h
	v_mov_b16_e32 v63.h, v29.h
	v_mov_b16_e32 v58.l, v28.h
	v_add3_u32 v28, v57, v61, 0x7fff
	v_add3_u32 v56, v56, v59, 0x7fff
	v_and_b32_e32 v57, 1, v29
	v_and_b32_e32 v59, 1, v63
	v_mov_b16_e32 v29.l, v52.h
	v_mov_b16_e32 v61.l, v53.h
	v_mov_b16_e32 v61.h, v29.h
	v_mov_b16_e32 v56.l, v28.h
	v_add3_u32 v28, v55, v59, 0x7fff
	v_add3_u32 v54, v54, v57, 0x7fff
	v_and_b32_e32 v55, 1, v29
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e32 v29.l, v50.h
	v_mov_b16_e32 v59.l, v51.h
	v_mov_b16_e32 v59.h, v29.h
	v_mov_b16_e32 v54.l, v28.h
	v_add3_u32 v28, v53, v57, 0x7fff
	v_add3_u32 v52, v52, v55, 0x7fff
	v_and_b32_e32 v53, 1, v29
	v_and_b32_e32 v55, 1, v59
	v_mov_b16_e32 v29.l, v48.h
	v_mov_b16_e32 v57.l, v49.h
	v_mov_b16_e32 v57.h, v29.h
	v_mov_b16_e32 v52.l, v28.h
	v_add3_u32 v28, v51, v55, 0x7fff
	v_add3_u32 v50, v50, v53, 0x7fff
	v_and_b32_e32 v51, 1, v29
	v_and_b32_e32 v53, 1, v57
	v_mov_b16_e32 v29.l, v46.h
	v_mov_b16_e32 v55.l, v47.h
	v_mov_b16_e32 v55.h, v29.h
	v_mov_b16_e32 v50.l, v28.h
	v_add3_u32 v28, v49, v53, 0x7fff
	v_add3_u32 v48, v48, v51, 0x7fff
	v_and_b32_e32 v49, 1, v29
	v_and_b32_e32 v51, 1, v55
	v_mov_b16_e32 v29.l, v44.h
	v_mov_b16_e32 v53.l, v45.h
	v_mov_b16_e32 v53.h, v29.h
	v_mov_b16_e32 v48.l, v28.h
	v_add3_u32 v28, v47, v51, 0x7fff
	v_add3_u32 v46, v46, v49, 0x7fff
	v_and_b32_e32 v47, 1, v29
	v_and_b32_e32 v49, 1, v53
	v_mov_b16_e32 v29.l, v42.h
	v_mov_b16_e32 v51.l, v43.h
	v_mov_b16_e32 v51.h, v29.h
	v_mov_b16_e32 v46.l, v28.h
	v_add3_u32 v28, v45, v49, 0x7fff
	v_add3_u32 v44, v44, v47, 0x7fff
	v_and_b32_e32 v45, 1, v29
	v_and_b32_e32 v47, 1, v51
	v_mov_b16_e32 v29.l, v40.h
	v_mov_b16_e32 v49.l, v41.h
	v_mov_b16_e32 v49.h, v29.h
	v_mov_b16_e32 v44.l, v28.h
	v_add3_u32 v28, v43, v47, 0x7fff
	v_add3_u32 v42, v42, v45, 0x7fff
	v_and_b32_e32 v43, 1, v29
	v_and_b32_e32 v45, 1, v49
	v_mov_b16_e32 v29.l, v38.h
	v_mov_b16_e32 v47.l, v39.h
	v_mov_b16_e32 v47.h, v29.h
	v_mov_b16_e32 v42.l, v28.h
	v_add3_u32 v28, v41, v45, 0x7fff
	v_add3_u32 v40, v40, v43, 0x7fff
	v_and_b32_e32 v41, 1, v29
	v_and_b32_e32 v43, 1, v47
	v_mov_b16_e32 v29.l, v36.h
	v_mov_b16_e32 v45.l, v37.h
	v_mov_b16_e32 v45.h, v29.h
	v_mov_b16_e32 v40.l, v28.h
	v_add3_u32 v28, v39, v43, 0x7fff
	v_add3_u32 v38, v38, v41, 0x7fff
	v_and_b32_e32 v39, 1, v29
	v_and_b32_e32 v41, 1, v45
	v_mov_b16_e32 v29.l, v34.h
	v_mov_b16_e32 v43.l, v35.h
	v_mov_b16_e32 v43.h, v29.h
	v_mov_b16_e32 v38.l, v28.h
	v_add3_u32 v28, v37, v41, 0x7fff
	v_add3_u32 v36, v36, v39, 0x7fff
	v_and_b32_e32 v37, 1, v29
	v_and_b32_e32 v39, 1, v43
	v_mov_b16_e32 v29.l, v32.h
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e32 v41.h, v29.h
	v_mov_b16_e32 v36.l, v28.h
	v_add3_u32 v28, v35, v39, 0x7fff
	v_add3_u32 v34, v34, v37, 0x7fff
	v_and_b32_e32 v35, 1, v29
	v_and_b32_e32 v37, 1, v41
	v_mov_b16_e32 v29.l, v27.h
	v_mov_b16_e32 v39.l, v31.h
	v_mov_b16_e32 v39.h, v29.h
	v_mov_b16_e32 v34.l, v28.h
	v_add3_u32 v28, v33, v37, 0x7fff
	v_add3_u32 v32, v32, v35, 0x7fff
	v_and_b32_e32 v33, 1, v29
	v_and_b32_e32 v35, 1, v39
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v29.h
	v_mov_b16_e32 v32.l, v28.h
	v_add3_u32 v28, v31, v35, 0x7fff
	v_and_b32_e32 v31, 1, v29
	v_mov_b16_e32 v35.l, v24.h
	v_mov_b16_e32 v35.h, v29.h
	v_mov_b16_e32 v29.l, v23.h
	v_add3_u32 v27, v27, v33, 0x7fff
	v_and_b32_e32 v33, 1, v37
	v_mov_b16_e32 v27.l, v28.h
	v_add3_u32 v25, v25, v31, 0x7fff
	v_and_b32_e32 v28, 1, v35
	v_and_b32_e32 v31, 1, v29
	v_add3_u32 v26, v26, v33, 0x7fff
	v_mov_b16_e32 v33.l, v22.h
	v_mov_b16_e32 v33.h, v29.h
	v_mov_b16_e32 v29.l, v21.h
	v_add3_u32 v23, v23, v31, 0x7fff
	v_cndmask_b32_e32 v31, v42, v46, vcc_lo
	v_add3_u32 v24, v24, v28, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_and_b32_e32 v26, 1, v33
	v_cndmask_b32_e32 v33, v46, v42, vcc_lo
	v_mov_b16_e32 v28.l, v20.h
	v_mov_b16_e32 v28.h, v29.h
	v_mov_b16_e32 v23.l, v24.h
	v_dual_cndmask_b32 v35, v36, v40 :: v_dual_and_b32 v24, 1, v29
	v_mov_b16_e32 v29.l, v18.h
	v_add3_u32 v22, v22, v26, 0x7fff
	v_dual_cndmask_b32 v37, v34, v38 :: v_dual_and_b32 v26, 1, v28
	v_mov_b16_e32 v28.l, v19.h
	v_add3_u32 v21, v21, v24, 0x7fff
	v_dual_cndmask_b32 v39, v23, v27 :: v_dual_and_b32 v24, 1, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v29.l, v15.h
	v_and_b32_e32 v26, 1, v28
	v_add3_u32 v18, v18, v24, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v18.l, v20.h
	v_dual_cndmask_b32 v23, v27, v23 :: v_dual_and_b32 v20, 1, v29
	v_mov_b16_e32 v22.l, v13.h
	v_mov_b16_e32 v22.h, v29.h
	v_mov_b16_e32 v29.l, v12.h
	v_cndmask_b32_e32 v34, v38, v34, vcc_lo
	v_dual_cndmask_b32 v38, v25, v32 :: v_dual_cndmask_b32 v25, v32, v25
	v_add3_u32 v19, v19, v26, 0x7fff
	v_add3_u32 v15, v15, v20, 0x7fff
	v_mov_b16_e32 v24.l, v11.h
	v_mov_b16_e32 v24.h, v29.h
	v_cndmask_b32_e32 v36, v40, v36, vcc_lo
	v_mov_b16_e32 v15.l, v19.h
	v_and_b32_e32 v20, 1, v22
	v_and_b32_e32 v22, 1, v29
	v_mov_b16_e32 v29.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v40, v15, v21 :: v_dual_add_nc_u32 v17, v2, v14
	v_cndmask_b32_e32 v15, v21, v15, vcc_lo
	v_add3_u32 v13, v13, v20, 0x7fff
	v_and_b32_e32 v19, 1, v29
	v_mov_b16_e32 v29.l, v6.h
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v29.h
	v_add3_u32 v12, v12, v22, 0x7fff
	v_add3_u32 v10, v10, v19, 0x7fff
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e32 v12.l, v13.h
	v_and_b32_e32 v13, 1, v20
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v29.h
	v_add3_u32 v11, v11, v24, 0x7fff
	v_mov_b16_e32 v20.l, v4.h
	v_add3_u32 v8, v8, v13, 0x7fff
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v14, v2, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v10.l, v11.h
	v_and_b32_e32 v11, 1, v29
	v_mov_b16_e32 v29.l, v5.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[0:1], null, s5, 48, v[2:3]
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v6, v11, 0x7fff
	v_and_b32_e32 v13, 1, v29
	v_mov_b16_e32 v29.l, v3.h
	v_mov_b16_e32 v6.l, v8.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v1, s7, s6, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v41, v12, v18, vcc_lo
	v_add3_u32 v5, v5, v13, 0x7fff
	v_and_b32_e32 v8, 1, v29
	v_mov_b16_e32 v5.l, v7.h
	v_dual_cndmask_b32 v7, v30, v68 :: v_dual_add_nc_u32 v16, 0x80, v1
	v_cndmask_b32_e32 v12, v18, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v3, v8, 0x7fff
	v_and_b32_e32 v20, 1, v20
	v_dual_cndmask_b32 v42, v5, v10 :: v_dual_cndmask_b32 v5, v10, v5
	v_mov_b32_e32 v10, 0x5410
	v_mov_b32_e32 v18, 0x7632
	v_add3_u32 v4, v4, v20, 0x7fff
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, v70, v66, vcc_lo
	v_dual_cndmask_b32 v13, v64, v60 :: v_dual_cndmask_b32 v20, v62, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v3.l, v4.h
	v_cndmask_b32_e32 v24, v56, v52, vcc_lo
	v_cndmask_b32_e32 v28, v54, v50, vcc_lo
	v_cndmask_b32_e32 v4, v68, v30, vcc_lo
	v_cndmask_b32_e32 v8, v66, v70, vcc_lo
	v_cndmask_b32_e32 v43, v3, v6, vcc_lo
	v_cndmask_b32_e32 v3, v6, v3, vcc_lo
	v_permlanex16_b32 v6, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v10, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v18 :: v_dual_cndmask_b32 v29, v44, v48
	v_cndmask_b32_e32 v30, v48, v44, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v11, v60, v64, vcc_lo
	v_cndmask_b32_e32 v19, v58, v62, vcc_lo
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v18, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v22, v52, v56, vcc_lo
	v_cndmask_b32_e32 v26, v50, v54, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v10, v10, 4, v10
	v_permlanex16_b32 v20, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v44, 0x5040504, v7
	v_and_b32_e32 v45, 0x7060706, v10
	v_permlanex16_b32 v27, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v6, v4, v44
	v_perm_b32 v4, v6, v4, v45
	v_perm_b32 v5, v9, v8, v44
	v_perm_b32 v6, v9, v8, v45
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v28, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v13, v11, v44
	v_perm_b32 v8, v13, v11, v45
	v_perm_b32 v9, v18, v19, v44
	v_perm_b32 v10, v18, v19, v45
	v_permlanex16_b32 v32, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v20, v22, v44
	v_perm_b32 v19, v20, v22, v45
	v_perm_b32 v20, v21, v26, v44
	v_perm_b32 v21, v21, v26, v45
	v_add_lshl_u32 v11, v1, v17, 1
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_perm_b32 v22, v24, v29, v44
	v_perm_b32 v23, v24, v29, v45
	v_perm_b32 v24, v27, v31, v44
	v_perm_b32 v25, v27, v31, v45
	s_clause 0x2
	buffer_store_b128 v[3:6], v2, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v2, s[20:23], 0 offen offset:256
	buffer_store_b128 v[18:21], v11, s[20:23], 0 offen
	v_add_lshl_u32 v2, v16, v17, 1
	v_perm_b32 v26, v28, v35, v44
	v_perm_b32 v27, v28, v35, v45
	v_perm_b32 v28, v30, v37, v44
	v_perm_b32 v29, v30, v37, v45
	v_add_lshl_u32 v3, v1, v14, 1
	v_perm_b32 v30, v32, v38, v44
	v_perm_b32 v31, v32, v38, v45
	v_perm_b32 v32, v33, v39, v44
	v_perm_b32 v33, v33, v39, v45
	v_add_lshl_u32 v4, v16, v14, 1
	v_perm_b32 v34, v15, v40, v44
	v_perm_b32 v35, v15, v40, v45
	v_perm_b32 v36, v12, v41, v44
	v_perm_b32 v37, v12, v41, v45
	v_add_lshl_u32 v1, v1, v0, 1
	v_perm_b32 v38, v46, v42, v44
	v_perm_b32 v39, v46, v42, v45
	v_perm_b32 v40, v47, v43, v44
	v_perm_b32 v41, v47, v43, v45
	v_add_lshl_u32 v0, v16, v0, 1
	s_clause 0x4
	buffer_store_b128 v[22:25], v2, s[20:23], 0 offen
	buffer_store_b128 v[26:29], v3, s[20:23], 0 offen
	buffer_store_b128 v[30:33], v4, s[20:23], 0 offen
	buffer_store_b128 v[34:37], v1, s[20:23], 0 offen
	buffer_store_b128 v[38:41], v0, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 32
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 32
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9872
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 32
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
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
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 32
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 7
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
