	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	v_and_b32_e32 v2, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s18, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s5
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s8, s9, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s5, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s8, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s2, s8
	s_sub_i32 s6, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s4, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s6, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	s_mov_b32 s7, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s8, s19, 5
	s_lshl_b32 s9, s19, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 16, v0
	v_mov_b32_e32 v1, s8
	v_mov_b32_e32 v5, s9
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow246
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v7, 15, v0
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v9, 0xf0, v0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v89, 0
	s_lshl_b32 s18, s6, 6
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s2, s2, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 2, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s4, 31
	scratch_store_b32 off, v2, off offset:56 ; 4-byte Folded Spill
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v2, 3, v0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s7, s1, 31
.Ltmp18:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v1, 4, v9
	v_mul_lo_u32 v3, s4, v3
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s6, s18, s4
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s5, s0
.Ltmp20:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s7, 27
	s_mov_b32 s4, 0
	s_add_i32 s1, s1, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	v_mul_lo_u32 v1, s19, v1
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
.Ltmp22:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_and_b32_e32 v4, 24, v2
	v_lshl_add_u32 v6, v7, 4, v1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s1, s1, 5
	s_lshl_b32 s28, s19, 4
	v_bfe_i32 v5, v0, 2, 1
	v_add3_u32 v3, v3, v4, s6
	v_bfe_i32 v4, v0, 4, 1
	s_mov_b32 s6, s4
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v1, 0x778, v2
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_and_b32_e32 v4, 0x90, v4
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v67, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v4, v1
	v_or_b32_e32 v4, s18, v7
	v_and_b32_e32 v2, 0x160, v3
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v3, 32, v3
	v_mov_b32_e32 v93, 0
	v_or_b32_e32 v8, 16, v4
	v_mul_lo_u32 v10, v4, s1
	scratch_store_b32 off, v6, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, s28, v6
	v_and_or_b32 v2, 0x90, v5, v2
	v_mul_lo_u32 v8, v8, s1
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v65, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:8
	scratch_store_b32 off, v9, off offset:52
	v_lshrrev_b32_e32 v6, 1, v0
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v107, 0, v2
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v77, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v5, 0x70, v6, v7
	v_mov_b32_e32 v85, 0
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v59, 0
	v_add_nc_u32_e32 v98, 0, v5
	v_or_b32_e32 v5, 32, v4
	v_or_b32_e32 v4, 48, v4
	v_mov_b32_e32 v90, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, v5, s1
	v_mul_lo_u32 v4, v4, s1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:16
	scratch_store_b32 off, v7, off offset:48
	v_lshrrev_b32_e32 v8, 6, v0
	scratch_store_b32 off, v10, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v73, 0
	v_xor_b32_e32 v7, 16, v2
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_and_b32_e32 v4, 2, v8
	v_lshlrev_b32_e32 v8, 1, v9
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	v_add_nc_u32_e32 v108, 0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v4
	v_add_nc_u32_e32 v103, 0, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v9, 28, v9
	v_mov_b32_e32 v75, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v55, 0
	v_add3_u32 v8, v103, v8, v3
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v8, v8, v9
	scratch_store_b32 off, v5, off offset:20 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v5, 2, v0
	v_or_b32_e32 v0, s2, v0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v5, 0x1c0, v5
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v43, 0
	v_add3_u32 v10, v4, v5, v3
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v10, v10, v9
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v35, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v31, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s4 :: v_dual_mov_b32 v1, s5
	v_dual_mov_b32 v2, s6 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v4, s8 :: v_dual_mov_b32 v5, s9
	v_dual_mov_b32 v6, s10 :: v_dual_mov_b32 v7, s11
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v28, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s29, s19, 5
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
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v10, off offset:40
	scratch_store_b32 off, v8, off offset:44
.Ltmp24:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v9, off, off
	scratch_load_b32 v12, off, off offset:4
	scratch_load_b32 v13, off, off offset:8
	scratch_load_b32 v60, off, off offset:12
	scratch_load_b32 v61, off, off offset:16
	scratch_load_b32 v69, off, off offset:20
	scratch_load_b32 v95, off, off offset:24
	scratch_load_b32 v96, off, off offset:28
	.loc	1 312 21 is_stmt 1              ; generate_amdgcn.py:312:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s7, s6, s19
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s5, s6, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s7, s2
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v8, s6, v9
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s6, s6, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v10, s7, v12
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v11, s7, v13
	s_add_i32 s7, s7, s29
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s6, s1
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[26:27], v8, s[20:23], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v111, v60, s6, 1
	v_add_lshl_u32 v116, v60, s5, 1
	scratch_load_b32 v60, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v8, s7, v12
	v_add_nc_u32_e32 v12, s7, v13
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[24:25], v9, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[16:19], v10, s[24:27], 0 offen
	buffer_load_b128 v[20:23], v11, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s7, s6, s19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v113, v69, s6, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v114, v95, s6, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v115, v96, s7, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v112, v61, s6, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v117, v61, s5, 1
	v_add_lshl_u32 v118, v69, s5, 1
	v_add_lshl_u32 v119, v95, s5, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s5, s19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v113, 0x80000000, v113 :: v_dual_cndmask_b32 v114, 0x80000000, v114
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	v_add_lshl_u32 v120, v96, s5, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_cndmask_b32 v112, 0x80000000, v112
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v191, 0x80000000, v116 :: v_dual_cndmask_b32 v194, 0x80000000, v119
	v_dual_cndmask_b32 v192, 0x80000000, v117 :: v_dual_cndmask_b32 v193, 0x80000000, v118
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v195, 0x80000000, v120, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b64 v60, v[26:27] offset:16384
	scratch_load_b32 v26, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[16:19]
	ds_store_b128 v26, v[20:23] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v60, v[24:25] offset:18432
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v26, v[8:11] offset:8192
	ds_store_b128 v26, v[12:15] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v196, v115, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v197, v111, s[8:11], 0 offen
	buffer_load_u16 v198, v112, s[8:11], 0 offen
	buffer_load_u16 v199, v113, s[8:11], 0 offen
	buffer_load_u16 v200, v114, s[8:11], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[171:174], v108 offset:17408
	ds_load_b128 v[175:178], v108 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v8, v98 offset:3328
	ds_load_u8 v9, v98 offset:3072
	ds_load_u8 v10, v98 offset:3840
	ds_load_u8 v11, v98 offset:3584
	ds_load_u8 v12, v98 offset:3968
	ds_load_u8 v13, v98 offset:3712
	ds_load_u8 v14, v98 offset:3456
	ds_load_u8 v15, v98 offset:3200
	ds_load_u8 v16, v98 offset:2304
	ds_load_u8 v17, v98 offset:2048
	ds_load_u8 v18, v98 offset:2816
	ds_load_u8 v19, v98 offset:2560
	ds_load_u8 v20, v98 offset:2944
	ds_load_u8 v21, v98 offset:2688
	ds_load_u8 v22, v98 offset:2432
	ds_load_u8 v23, v98 offset:2176
	ds_load_u8 v111, v98 offset:1280
	ds_load_u8 v112, v98 offset:1024
	ds_load_u8 v113, v98 offset:1792
	ds_load_u8 v114, v98 offset:1536
	ds_load_u8 v115, v98 offset:1920
	ds_load_u8 v116, v98 offset:1664
	ds_load_u8 v117, v98 offset:1408
	ds_load_u8 v118, v98 offset:1152
	ds_load_u8 v119, v98 offset:256
	ds_load_u8 v120, v98
	ds_load_u8 v121, v98 offset:768
	ds_load_u8 v122, v98 offset:512
	ds_load_u8 v123, v98 offset:896
	ds_load_u8 v124, v98 offset:640
	ds_load_u8 v125, v98 offset:384
	ds_load_u8 v126, v98 offset:128
	ds_load_u8 v131, v98 offset:7424
	ds_load_u8 v132, v98 offset:7168
	ds_load_u8 v133, v98 offset:7936
	ds_load_u8 v134, v98 offset:7680
	ds_load_u8 v135, v98 offset:8064
	ds_load_u8 v136, v98 offset:7808
	ds_load_u8 v137, v98 offset:7552
	ds_load_u8 v138, v98 offset:7296
	ds_load_u8 v139, v98 offset:6400
	ds_load_u8 v140, v98 offset:6144
	ds_load_u8 v141, v98 offset:6912
	ds_load_u8 v142, v98 offset:6656
	ds_load_u8 v147, v98 offset:7040
	ds_load_u8 v148, v98 offset:6784
	ds_load_u8 v149, v98 offset:6528
	ds_load_u8 v150, v98 offset:6272
	ds_load_u8 v151, v98 offset:5376
	ds_load_u8 v152, v98 offset:5120
	ds_load_u8 v153, v98 offset:5888
	ds_load_u8 v154, v98 offset:5632
	ds_load_u8 v155, v98 offset:6016
	ds_load_u8 v156, v98 offset:5760
	ds_load_u8 v157, v98 offset:5504
	ds_load_u8 v158, v98 offset:5248
	ds_load_u8 v179, v98 offset:4352
	ds_load_u8 v180, v98 offset:4096
	ds_load_u8 v181, v98 offset:4864
	ds_load_u8 v182, v98 offset:4608
	ds_load_u8 v183, v98 offset:4992
	ds_load_u8 v184, v98 offset:4736
	ds_load_u8 v185, v98 offset:4480
	ds_load_u8 v186, v98 offset:4224
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[24:27], v107 offset:16384
	ds_load_b128 v[127:130], v107 offset:16896
	ds_load_b128 v[143:146], v107 offset:17408
	ds_load_b128 v[159:162], v107 offset:17920
	ds_load_b128 v[163:166], v108 offset:16384
	ds_load_b128 v[167:170], v108 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	v_perm_b32 v9, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v10, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v11, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v16, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v17, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v18, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v19, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v111, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v112, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v113, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v114, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v119, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v120, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v121, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v122, v182, v181, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v13, v23, v22, 0xc0c0004
	v_perm_b32 v15, v21, v20, 0xc0c0004
	v_perm_b32 v20, v118, v117, 0xc0c0004
	v_perm_b32 v21, v116, v115, 0xc0c0004
	v_perm_b32 v22, v126, v125, 0xc0c0004
	v_perm_b32 v23, v124, v123, 0xc0c0004
	v_lshl_or_b32 v154, v9, 16, v8
	v_lshl_or_b32 v153, v11, 16, v10
	v_lshl_or_b32 v152, v17, 16, v16
	v_lshl_or_b32 v151, v19, 16, v18
	v_perm_b32 v115, v138, v137, 0xc0c0004
	v_perm_b32 v116, v136, v135, 0xc0c0004
	v_perm_b32 v117, v150, v149, 0xc0c0004
	v_perm_b32 v118, v148, v147, 0xc0c0004
	v_perm_b32 v123, v158, v157, 0xc0c0004
	v_perm_b32 v124, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v125, v186, v185, 0xc0c0004
	v_perm_b32 v126, v184, v183, 0xc0c0004
	v_lshl_or_b32 v182, v112, 16, v111
	v_lshl_or_b32 v181, v114, 16, v113
	v_lshl_or_b32 v180, v120, 16, v119
	v_lshl_or_b32 v179, v122, 16, v121
	v_lshl_or_b32 v186, v12, 16, v14
	v_lshl_or_b32 v185, v15, 16, v13
	v_lshl_or_b32 v184, v21, 16, v20
	v_lshl_or_b32 v183, v23, 16, v22
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[151:154], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v190, v116, 16, v115
	v_lshl_or_b32 v189, v118, 16, v117
	v_lshl_or_b32 v188, v124, 16, v123
	v_lshl_or_b32 v187, v126, 16, v125
	v_wmma_i32_16x16x16_iu8 v[16:23], v[183:186], v[24:27], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[127:130], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[183:186], v[127:130], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[143:146], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[183:186], v[143:146], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[159:162], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[183:186], v[159:162], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[179:182], v[163:166], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[16:23], v[187:190], v[163:166], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[187:190], v[167:170], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[187:190], v[171:174], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[187:190], v[175:178], v[151:158] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v188, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v8, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[111:118], v[179:182], v[167:170], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[179:182], v[171:174], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[179:182], v[175:178], v[143:150] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v9
	v_cvt_f32_i32_e32 v176, v10
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v183, v129
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v177, v11
	v_cvt_f32_i32_e32 v178, v12
	v_cvt_f32_i32_e32 v179, v13
	v_cvt_f32_i32_e32 v180, v14
	v_cvt_f32_i32_e32 v181, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v182, v128
	v_cvt_f32_i32_e32 v184, v130
	v_cvt_f32_i32_e32 v185, v144
	v_cvt_f32_i32_e32 v186, v145
	v_cvt_f32_i32_e32 v187, v146
	v_cvt_f32_i32_e32 v189, v127
	v_cvt_f32_i32_e32 v190, v143
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v198, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v112, v198, v112 :: v_dual_lshlrev_b32 v197, 16, v197
	v_mul_f32_e32 v255, v197, v175
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v175, 16, v199
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v69, v197, v176
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v61, v197, v177 :: v_dual_lshlrev_b32 v176, 16, v200
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v60, v197, v178 :: v_dual_mul_f32 v199, v175, v183
	v_mul_f32_e32 v113, v198, v113
	v_mul_f32_e32 v109, v197, v179
	v_dual_mul_f32 v110, v197, v180 :: v_dual_mul_f32 v115, v198, v115
	v_mul_f32_e32 v122, v198, v122
	v_dual_mul_f32 v117, v198, v117 :: v_dual_mul_f32 v200, v175, v184
	v_mul_f32_e32 v95, v197, v181
	v_mul_f32_e32 v16, v197, v16
	v_mul_f32_e32 v17, v197, v17
	v_mul_f32_e32 v18, v197, v18
	v_mul_f32_e32 v19, v197, v19
	v_mul_f32_e32 v20, v197, v20
	v_mul_f32_e32 v21, v197, v21
	v_mul_f32_e32 v22, v197, v22
	v_mul_f32_e32 v23, v197, v23
	v_dual_mul_f32 v197, v188, v197 :: v_dual_mul_f32 v114, v198, v114
	v_mul_f32_e32 v116, v198, v116
	v_mul_f32_e32 v118, v198, v118
	v_dual_mul_f32 v119, v198, v119 :: v_dual_mul_f32 v132, v175, v132
	v_mul_f32_e32 v120, v198, v120
	v_dual_mul_f32 v121, v198, v121 :: v_dual_mul_f32 v134, v175, v134
	v_dual_mul_f32 v123, v198, v123 :: v_dual_mul_f32 v136, v175, v136
	v_dual_mul_f32 v124, v198, v124 :: v_dual_mul_f32 v111, v111, v198
	v_dual_mul_f32 v125, v198, v125 :: v_dual_mul_f32 v138, v175, v138
	v_dual_mul_f32 v126, v198, v126 :: v_dual_mul_f32 v131, v175, v131
	v_mul_f32_e32 v198, v175, v182
	v_dual_mul_f32 v133, v175, v133 :: v_dual_mul_f32 v100, v176, v186
	v_dual_mul_f32 v137, v175, v137 :: v_dual_mul_f32 v96, v176, v187
	v_dual_mul_f32 v140, v175, v140 :: v_dual_mul_f32 v97, v189, v175
	v_dual_mul_f32 v141, v175, v141 :: v_dual_mul_f32 v102, v176, v152
	v_dual_mul_f32 v142, v175, v142 :: v_dual_mul_f32 v99, v176, v185
	v_dual_mul_f32 v135, v175, v135 :: v_dual_mul_f32 v148, v176, v148
	v_dual_mul_f32 v139, v175, v139 :: v_dual_mul_f32 v150, v176, v150
	v_dual_mul_f32 v147, v176, v147 :: v_dual_mul_f32 v106, v190, v176
	s_waitcnt vmcnt(0)
	ds_store_b16 v8, v196 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[8:11], v103 offset:20480
	ds_load_b128 v[12:15], v103 offset:20496
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[24:27], v107 offset:18432
	ds_load_b128 v[127:130], v107 offset:18944
	ds_load_b128 v[143:146], v107 offset:19456
	ds_load_b128 v[159:162], v107 offset:19968
	ds_load_b128 v[163:166], v108 offset:18432
	ds_load_b128 v[167:170], v108 offset:18944
	ds_load_b128 v[171:174], v108 offset:19456
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v196, v98 offset:8448
	ds_load_u8 v201, v98 offset:8192
	ds_load_u8 v202, v98 offset:8960
	ds_load_u8 v203, v98 offset:8704
	ds_load_u8 v204, v98 offset:15616
	ds_load_u8 v205, v98 offset:15360
	ds_load_u8 v206, v98 offset:16128
	ds_load_u8 v207, v98 offset:15872
	ds_load_u8 v208, v98 offset:14592
	ds_load_u8 v209, v98 offset:14336
	ds_load_u8 v210, v98 offset:15104
	ds_load_u8 v211, v98 offset:14848
	ds_load_u8 v212, v98 offset:13568
	ds_load_u8 v213, v98 offset:13312
	ds_load_u8 v214, v98 offset:14080
	ds_load_u8 v215, v98 offset:13824
	ds_load_u8 v216, v98 offset:12544
	ds_load_u8 v217, v98 offset:12288
	ds_load_u8 v218, v98 offset:13056
	ds_load_u8 v219, v98 offset:12800
	ds_load_u8 v220, v98 offset:11520
	ds_load_u8 v221, v98 offset:11264
	ds_load_u8 v222, v98 offset:12032
	ds_load_u8 v223, v98 offset:11776
	ds_load_u8 v224, v98 offset:12160
	ds_load_u8 v225, v98 offset:11904
	ds_load_u8 v226, v98 offset:11648
	ds_load_u8 v227, v98 offset:11392
	ds_load_u8 v228, v98 offset:10496
	ds_load_u8 v229, v98 offset:10240
	ds_load_u8 v230, v98 offset:11008
	ds_load_u8 v231, v98 offset:10752
	ds_load_u8 v232, v98 offset:11136
	ds_load_u8 v233, v98 offset:10880
	ds_load_u8 v234, v98 offset:10624
	ds_load_u8 v235, v98 offset:10368
	ds_load_u8 v236, v98 offset:9472
	ds_load_u8 v237, v98 offset:9216
	ds_load_u8 v238, v98 offset:9984
	ds_load_u8 v239, v98 offset:9728
	ds_load_u8 v240, v98 offset:10112
	ds_load_u8 v241, v98 offset:9856
	ds_load_u8 v242, v98 offset:9600
	ds_load_u8 v243, v98 offset:9344
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(52)
	v_lshlrev_b32_e32 v244, 16, v8
	v_lshlrev_b32_e32 v245, 16, v9
	v_lshlrev_b32_e32 v246, 16, v10
	v_lshlrev_b32_e32 v247, 16, v11
	s_waitcnt lgkmcnt(51)
	v_lshlrev_b32_e32 v248, 16, v12
	v_lshlrev_b32_e32 v249, 16, v13
	v_lshlrev_b32_e32 v250, 16, v14
	v_lshlrev_b32_e32 v251, 16, v15
	v_and_b32_e32 v8, 0xffff0000, v8
	v_and_b32_e32 v10, 0xffff0000, v10
	v_and_b32_e32 v12, 0xffff0000, v12
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v181, v98 offset:16000
	ds_load_u8 v182, v98 offset:15232
	ds_load_u8 v184, v98 offset:14976
	ds_load_u8 v186, v98 offset:14720
	ds_load_u8 v188, v98 offset:14464
	ds_load_u8 v190, v98 offset:14208
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v101, v176, v151 :: v_dual_fmac_f32 v94, v255, v245
	v_dual_mul_f32 v104, v176, v153 :: v_dual_fmac_f32 v89, v197, v244
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v151, v98 offset:15744
	ds_load_u8 v153, v98 offset:15488
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v9, 0xffff0000, v9
	v_and_b32_e32 v11, 0xffff0000, v11
	v_and_b32_e32 v13, 0xffff0000, v13
	v_and_b32_e32 v15, 0xffff0000, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v252, v98 offset:9088
	ds_load_u8 v253, v98 offset:8832
	ds_load_u8 v254, v98 offset:8576
	ds_load_u8 v179, v98 offset:8320
	ds_load_u8 v180, v98 offset:16256
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v105, v176, v154 :: v_dual_fmac_f32 v90, v109, v249
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v152, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v154, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v183, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v185, v231, v230, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v187, v237, v236, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v189, v239, v238, 0xc0c0004
	v_perm_b32 v196, v201, v196, 0xc0c0004
	v_perm_b32 v202, v203, v202, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v155, v176, v155 :: v_dual_fmac_f32 v88, v110, v250
	v_dual_mul_f32 v156, v176, v156 :: v_dual_fmac_f32 v93, v69, v246
	v_dual_mul_f32 v157, v176, v157 :: v_dual_fmac_f32 v84, v18, v10
	v_dual_mul_f32 v158, v176, v158 :: v_dual_fmac_f32 v87, v95, v251
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v204, v205, v204, 0xc0c0004
	v_perm_b32 v206, v207, v206, 0xc0c0004
	v_perm_b32 v208, v209, v208, 0xc0c0004
	v_perm_b32 v210, v211, v210, 0xc0c0004
	v_perm_b32 v212, v213, v212, 0xc0c0004
	v_perm_b32 v214, v215, v214, 0xc0c0004
	v_perm_b32 v215, v217, v216, 0xc0c0004
	v_perm_b32 v216, v219, v218, 0xc0c0004
	v_perm_b32 v218, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v225, v153, v151, 0xc0c0004
	v_lshl_or_b32 v154, v154, 16, v152
	v_lshl_or_b32 v153, v185, 16, v183
	v_lshl_or_b32 v152, v189, 16, v187
	v_lshl_or_b32 v151, v202, 16, v196
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v149, v176, v149 :: v_dual_fmac_f32 v92, v61, v247
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v201, v98 offset:13952
	ds_load_u8 v203, v98 offset:13696
	ds_load_u8 v205, v98 offset:13440
	ds_load_u8 v207, v98 offset:13184
	ds_load_u8 v209, v98 offset:12928
	ds_load_u8 v211, v98 offset:12672
	ds_load_u8 v213, v98 offset:12416
	v_perm_b32 v217, v227, v226, 0xc0c0004
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[175:178], v108 offset:19968
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v219, v235, v234, 0xc0c0004
	v_perm_b32 v220, v233, v232, 0xc0c0004
	v_perm_b32 v221, v243, v242, 0xc0c0004
	v_perm_b32 v222, v241, v240, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v223, v179, v254, 0xc0c0004
	v_perm_b32 v224, v253, v252, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v226, v181, v180, 0xc0c0004
	v_perm_b32 v227, v184, v182, 0xc0c0004
	v_lshl_or_b32 v182, v206, 16, v204
	v_lshl_or_b32 v181, v210, 16, v208
	v_lshl_or_b32 v180, v214, 16, v212
	v_lshl_or_b32 v179, v216, 16, v215
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v91, v60, v248 :: v_dual_fmac_f32 v80, v22, v14
	v_dual_fmac_f32 v86, v16, v8 :: v_dual_fmac_f32 v85, v17, v9
	v_dual_fmac_f32 v83, v19, v11 :: v_dual_fmac_f32 v82, v20, v12
	v_dual_fmac_f32 v81, v21, v13 :: v_dual_fmac_f32 v78, v111, v244
	v_dual_fmac_f32 v79, v23, v15 :: v_dual_fmac_f32 v76, v113, v246
	v_dual_fmac_f32 v73, v116, v249 :: v_dual_fmac_f32 v70, v119, v8
	v_dual_fmac_f32 v71, v118, v251 :: v_dual_fmac_f32 v68, v120, v9
	v_dual_fmac_f32 v67, v121, v10 :: v_dual_fmac_f32 v66, v122, v11
	v_dual_fmac_f32 v65, v123, v12 :: v_dual_fmac_f32 v64, v124, v13
	v_dual_fmac_f32 v63, v125, v14 :: v_dual_fmac_f32 v62, v126, v15
	v_dual_fmac_f32 v51, v135, v8 :: v_dual_fmac_f32 v50, v136, v9
	v_dual_fmac_f32 v49, v137, v10 :: v_dual_fmac_f32 v48, v138, v11
	v_dual_fmac_f32 v47, v139, v12 :: v_dual_fmac_f32 v46, v140, v13
	v_dual_fmac_f32 v45, v141, v14 :: v_dual_fmac_f32 v44, v142, v15
	v_dual_fmac_f32 v35, v101, v8 :: v_dual_fmac_f32 v34, v102, v9
	v_dual_fmac_f32 v33, v104, v10 :: v_dual_fmac_f32 v32, v105, v11
	v_dual_fmac_f32 v31, v155, v12 :: v_dual_fmac_f32 v30, v156, v13
	v_dual_fmac_f32 v29, v157, v14 :: v_dual_fmac_f32 v28, v158, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[8:15], v[151:154], v[24:27], v[0:7] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v195, v195, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v191, v191, s[8:11], 0 offen
	buffer_load_u16 v192, v192, s[8:11], 0 offen
	buffer_load_u16 v193, v193, s[8:11], 0 offen
	buffer_load_u16 v194, v194, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v188, v188, v186, 0xc0c0004
	v_lshl_or_b32 v186, v218, 16, v217
	v_lshl_or_b32 v185, v220, 16, v219
	v_lshl_or_b32 v184, v222, 16, v221
	v_lshl_or_b32 v183, v224, 16, v223
	v_wmma_i32_16x16x16_iu8 v[8:15], v[179:182], v[163:166], v[8:15] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v203, v205, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[16:23], v[183:186], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v24, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v9, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v201, v201, v190, 0xc0c0004
	v_perm_b32 v205, v213, v211, 0xc0c0004
	v_perm_b32 v207, v209, v207, 0xc0c0004
	v_lshl_or_b32 v190, v226, 16, v225
	v_lshl_or_b32 v189, v227, 16, v188
	v_lshl_or_b32 v188, v201, 16, v203
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v77, v112, v245 :: v_dual_fmac_f32 v74, v115, v248
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v187, v207, 16, v205
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v75, v114, v247 :: v_dual_fmac_f32 v72, v117, v250
	v_dual_fmac_f32 v55, v131, v248 :: v_dual_fmac_f32 v54, v132, v249
	v_dual_fmac_f32 v53, v133, v250 :: v_dual_fmac_f32 v52, v134, v251
	v_dual_fmac_f32 v41, v100, v246 :: v_dual_fmac_f32 v36, v150, v251
	v_dual_fmac_f32 v40, v96, v247 :: v_dual_fmac_f32 v39, v147, v248
	v_dual_fmac_f32 v38, v148, v249 :: v_dual_fmac_f32 v37, v149, v250
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[127:130], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[183:186], v[127:130], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[143:146], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[183:186], v[143:146], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[159:162], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[183:186], v[159:162], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[179:182], v[167:170], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[187:190], v[167:170], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[179:182], v[171:174], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[187:190], v[171:174], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[179:182], v[175:178], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[187:190], v[175:178], v[151:158] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v26, v11
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v119, v123
	v_cvt_f32_i32_e32 v123, v128
	v_cvt_f32_i32_e32 v128, v132
	v_cvt_f32_i32_e32 v132, v136
	v_cvt_f32_i32_e32 v136, v140
	v_cvt_f32_i32_e32 v140, v145
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v149, v153
	v_cvt_f32_i32_e32 v153, v157
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v43, v106, v244 :: v_dual_fmac_f32 v42, v99, v245
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[16:23], v[187:190], v[163:166], v[16:23] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v106, v113
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v114, v118
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v118, v122
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v122, v126
	v_cvt_f32_i32_e32 v125, v130
	v_cvt_f32_i32_e32 v126, v131
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v131, v135
	v_cvt_f32_i32_e32 v134, v138
	v_cvt_f32_i32_e32 v135, v139
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v139, v144
	v_cvt_f32_i32_e32 v142, v147
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v147, v151
	v_cvt_f32_i32_e32 v148, v152
	v_cvt_f32_i32_e32 v151, v155
	v_cvt_f32_i32_e32 v152, v156
	v_cvt_f32_i32_e32 v155, v8
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v59, v97, v244 :: v_dual_fmac_f32 v58, v198, v245
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v25, v10
	v_cvt_f32_i32_e32 v27, v12
	v_cvt_f32_i32_e32 v60, v13
	v_cvt_f32_i32_e32 v61, v14
	v_cvt_f32_i32_e32 v69, v15
	v_cvt_f32_i32_e32 v95, v16
	v_cvt_f32_i32_e32 v96, v17
	v_cvt_f32_i32_e32 v97, v18
	v_cvt_f32_i32_e32 v99, v19
	v_cvt_f32_i32_e32 v100, v20
	v_cvt_f32_i32_e32 v101, v21
	v_cvt_f32_i32_e32 v102, v22
	v_cvt_f32_i32_e32 v104, v23
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v112, v116
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v120, v124
	v_cvt_f32_i32_e32 v124, v129
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v133, v137
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v141, v146
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v150, v154
	v_cvt_f32_i32_e32 v154, v158
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v57, v199, v246 :: v_dual_fmac_f32 v56, v200, v247
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v157, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v111, v111, v157 :: v_dual_lshlrev_b32 v156, 16, v191
	v_dual_mul_f32 v155, v155, v156 :: v_dual_lshlrev_b32 v8, 16, v195
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v27, v156, v27 :: v_dual_lshlrev_b32 v158, 16, v193
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v24, v156, v24 :: v_dual_lshlrev_b32 v159, 16, v194
	v_mul_f32_e32 v26, v156, v26
	v_dual_mul_f32 v25, v156, v25 :: v_dual_mul_f32 v106, v157, v106
	s_waitcnt vmcnt(0)
	ds_store_b32 v9, v8 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v103 offset:20480
	ds_load_b128 v[12:15], v103 offset:20496
	ds_load_b128 v[16:19], v103 offset:20992
	ds_load_b128 v[20:23], v103 offset:21008
	v_dual_mul_f32 v60, v156, v60 :: v_dual_mul_f32 v105, v157, v105
	v_dual_mul_f32 v61, v156, v61 :: v_dual_mul_f32 v110, v157, v110
	v_dual_mul_f32 v69, v156, v69 :: v_dual_mul_f32 v112, v157, v112
	v_dual_mul_f32 v95, v156, v95 :: v_dual_mul_f32 v114, v157, v114
	v_dual_mul_f32 v96, v156, v96 :: v_dual_mul_f32 v109, v157, v109
	v_dual_mul_f32 v97, v156, v97 :: v_dual_mul_f32 v116, v157, v116
	v_dual_mul_f32 v99, v156, v99 :: v_dual_mul_f32 v118, v157, v118
	v_dual_mul_f32 v100, v156, v100 :: v_dual_mul_f32 v113, v157, v113
	v_dual_mul_f32 v101, v156, v101 :: v_dual_mul_f32 v120, v157, v120
	v_dual_mul_f32 v102, v156, v102 :: v_dual_mul_f32 v115, v157, v115
	v_dual_mul_f32 v104, v156, v104 :: v_dual_mul_f32 v117, v157, v117
	v_dual_mul_f32 v119, v157, v119 :: v_dual_mul_f32 v124, v158, v124
	v_dual_mul_f32 v121, v157, v121 :: v_dual_mul_f32 v126, v158, v126
	v_dual_mul_f32 v122, v157, v122 :: v_dual_mul_f32 v123, v158, v123
	v_dual_mul_f32 v127, v127, v158 :: v_dual_mul_f32 v128, v158, v128
	v_dual_mul_f32 v125, v158, v125 :: v_dual_mul_f32 v140, v159, v140
	v_dual_mul_f32 v129, v158, v129 :: v_dual_mul_f32 v142, v159, v142
	v_dual_mul_f32 v130, v158, v130 :: v_dual_mul_f32 v143, v143, v159
	v_dual_mul_f32 v131, v158, v131 :: v_dual_mul_f32 v144, v159, v144
	v_dual_mul_f32 v132, v158, v132 :: v_dual_mul_f32 v139, v159, v139
	v_dual_mul_f32 v133, v158, v133 :: v_dual_mul_f32 v146, v159, v146
	v_dual_mul_f32 v134, v158, v134 :: v_dual_mul_f32 v141, v159, v141
	v_dual_mul_f32 v135, v158, v135 :: v_dual_mul_f32 v148, v159, v148
	v_dual_mul_f32 v136, v158, v136 :: v_dual_mul_f32 v145, v159, v145
	v_dual_mul_f32 v137, v158, v137 :: v_dual_mul_f32 v150, v159, v150
	v_dual_mul_f32 v138, v158, v138 :: v_dual_mul_f32 v147, v159, v147
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v149, v159, v149 :: v_dual_fmac_f32 v92, v26, v11
	v_dual_mul_f32 v151, v159, v151 :: v_dual_fmac_f32 v94, v24, v9
	v_dual_mul_f32 v152, v159, v152 :: v_dual_fmac_f32 v93, v25, v10
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v153, v159, v153 :: v_dual_fmac_f32 v88, v61, v14
	v_dual_mul_f32 v154, v159, v154 :: v_dual_fmac_f32 v87, v69, v15
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v89, v155, v8 :: v_dual_fmac_f32 v90, v60, v13
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v91, v27, v12 :: v_dual_fmac_f32 v84, v97, v18
	v_dual_fmac_f32 v86, v95, v16 :: v_dual_fmac_f32 v85, v96, v17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v83, v99, v19 :: v_dual_fmac_f32 v82, v100, v20
	v_dual_fmac_f32 v81, v101, v21 :: v_dual_fmac_f32 v80, v102, v22
	v_dual_fmac_f32 v79, v104, v23 :: v_dual_fmac_f32 v78, v111, v8
	v_dual_fmac_f32 v77, v105, v9 :: v_dual_fmac_f32 v76, v106, v10
	v_dual_fmac_f32 v75, v109, v11 :: v_dual_fmac_f32 v74, v110, v12
	v_dual_fmac_f32 v73, v112, v13 :: v_dual_fmac_f32 v72, v113, v14
	v_dual_fmac_f32 v71, v114, v15 :: v_dual_fmac_f32 v70, v115, v16
	v_dual_fmac_f32 v68, v116, v17 :: v_dual_fmac_f32 v67, v117, v18
	v_dual_fmac_f32 v66, v118, v19 :: v_dual_fmac_f32 v65, v119, v20
	v_dual_fmac_f32 v64, v120, v21 :: v_dual_fmac_f32 v63, v121, v22
	v_dual_fmac_f32 v62, v122, v23 :: v_dual_fmac_f32 v59, v127, v8
	v_dual_fmac_f32 v58, v123, v9 :: v_dual_fmac_f32 v57, v124, v10
	v_dual_fmac_f32 v56, v125, v11 :: v_dual_fmac_f32 v55, v126, v12
	v_dual_fmac_f32 v54, v128, v13 :: v_dual_fmac_f32 v53, v129, v14
	v_dual_fmac_f32 v52, v130, v15 :: v_dual_fmac_f32 v51, v131, v16
	v_dual_fmac_f32 v50, v132, v17 :: v_dual_fmac_f32 v49, v133, v18
	v_dual_fmac_f32 v48, v134, v19 :: v_dual_fmac_f32 v47, v135, v20
	v_dual_fmac_f32 v46, v136, v21 :: v_dual_fmac_f32 v45, v137, v22
	v_dual_fmac_f32 v44, v138, v23 :: v_dual_fmac_f32 v43, v143, v8
	v_dual_fmac_f32 v42, v139, v9 :: v_dual_fmac_f32 v41, v140, v10
	v_dual_fmac_f32 v40, v141, v11 :: v_dual_fmac_f32 v39, v142, v12
	v_dual_fmac_f32 v38, v144, v13 :: v_dual_fmac_f32 v37, v145, v14
	v_dual_fmac_f32 v36, v146, v15 :: v_dual_fmac_f32 v35, v147, v16
	v_dual_fmac_f32 v34, v148, v17 :: v_dual_fmac_f32 v33, v149, v18
	v_dual_fmac_f32 v32, v150, v19 :: v_dual_fmac_f32 v31, v151, v20
	v_dual_fmac_f32 v30, v152, v21 :: v_dual_fmac_f32 v29, v153, v22
	v_fmac_f32_e32 v28, v154, v23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v3, off, off offset:56
	scratch_load_b32 v7, off, off offset:48
	scratch_load_b32 v9, off, off offset:52
	v_mov_b32_e32 v1, s29
	v_mov_b32_e32 v5, s28
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v2, s19, v7
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 1, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v7, v89, 16, 1
	v_bfe_u32 v8, v94, 16, 1
	v_bfe_u32 v10, v92, 16, 1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s18, s18, s19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v9, v93, 16, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s18, s2, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v89, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_add3_u32 v8, v94, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v94, v94
	v_add3_u32 v10, v92, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v92, v92
	v_bfe_u32 v11, v91, 16, 1
	v_add3_u32 v9, v93, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v93, v93
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s2
	v_add3_u32 v10, v91, v11, 0x7fff
	v_bfe_u32 v11, v88, 16, 1
	v_bfe_u32 v12, v87, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s1
	v_bfe_u32 v9, v90, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v11, v88, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_add3_u32 v12, v87, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v87, v87
	v_add3_u32 v9, v90, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v90, v90
	v_cndmask_b16 v9.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v86, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s2
	v_bfe_u32 v12, v85, 16, 1
	v_bfe_u32 v14, v83, 16, 1
	v_bfe_u32 v13, v84, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_add3_u32 v10, v86, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_add3_u32 v12, v85, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v85, v85
	v_add3_u32 v14, v83, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v83, v83
	v_bfe_u32 v15, v82, 16, 1
	v_add3_u32 v13, v84, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v84, v84
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_add3_u32 v14, v82, v15, 0x7fff
	v_bfe_u32 v15, v80, 16, 1
	v_bfe_u32 v16, v79, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v81, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_add3_u32 v15, v80, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v80, v80
	v_add3_u32 v16, v79, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v79, v79
	v_add3_u32 v13, v81, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v81, v81
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v78, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s2
	v_bfe_u32 v16, v77, 16, 1
	v_bfe_u32 v18, v75, 16, 1
	v_bfe_u32 v17, v76, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_add3_u32 v14, v78, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v16, v77, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v77, v77
	v_add3_u32 v18, v75, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v75, v75
	v_bfe_u32 v19, v74, 16, 1
	v_add3_u32 v17, v76, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s2
	v_add3_u32 v18, v74, v19, 0x7fff
	v_bfe_u32 v19, v72, 16, 1
	v_bfe_u32 v20, v71, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_add3_u32 v19, v72, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v72, v72
	v_add3_u32 v20, v71, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v71, v71
	v_add3_u32 v17, v73, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v73, v73
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v70, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v68, 16, 1
	v_bfe_u32 v22, v66, 16, 1
	v_bfe_u32 v21, v67, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	v_add3_u32 v18, v70, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_add3_u32 v20, v68, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v68, v68
	v_add3_u32 v22, v66, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v66, v66
	v_bfe_u32 v23, v65, 16, 1
	v_add3_u32 v21, v67, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v67, v67
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s2
	v_add3_u32 v22, v65, v23, 0x7fff
	v_bfe_u32 v23, v63, 16, 1
	v_bfe_u32 v24, v62, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v64, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_add3_u32 v23, v63, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v24, v62, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v62, v62
	v_add3_u32 v21, v64, v21, 0x7fff
	v_bfe_u32 v25, v57, 16, 1
	v_cmp_o_f32_e64 s0, v64, v64
	v_cndmask_b16 v21.l, 0x7fff, v22.h, vcc_lo
	v_bfe_u32 v22, v59, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s1
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s2
	v_bfe_u32 v24, v58, 16, 1
	v_bfe_u32 v26, v56, 16, 1
	v_add3_u32 v25, v57, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s0
	v_add3_u32 v22, v59, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v24, v58, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v26, v56, v26, 0x7fff
	v_cmp_o_f32_e64 s2, v56, v56
	v_bfe_u32 v27, v55, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s1
	v_bfe_u32 v25, v54, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s2
	v_add3_u32 v26, v55, v27, 0x7fff
	v_bfe_u32 v27, v53, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_bfe_u32 v55, v52, 16, 1
	v_add3_u32 v25, v54, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_add3_u32 v27, v53, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_add3_u32 v53, v52, v55, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v26.h, vcc_lo
	v_bfe_u32 v26, v51, 16, 1
	v_cmp_o_f32_e64 s0, v54, v54
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v27.h, 0x7fff, v53.h, s2
	v_bfe_u32 v52, v50, 16, 1
	v_add3_u32 v26, v51, v26, 0x7fff
	v_bfe_u32 v53, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v51, v48, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s0
	v_add3_u32 v52, v50, v52, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_add3_u32 v50, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_add3_u32 v49, v48, v51, 0x7fff
	v_cmp_o_f32_e64 s2, v48, v48
	v_bfe_u32 v48, v47, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s1
	v_bfe_u32 v50, v46, 16, 1
	v_bfe_u32 v51, v45, 16, 1
	v_add3_u32 v48, v47, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_bfe_u32 v47, v44, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v52.h, s0
	v_add3_u32 v50, v46, v50, 0x7fff
	v_cmp_o_f32_e64 s0, v46, v46
	v_add3_u32 v46, v45, v51, 0x7fff
	v_cmp_o_f32_e64 s1, v45, v45
	v_add3_u32 v45, v44, v47, 0x7fff
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s2
	v_cmp_o_f32_e64 s2, v44, v44
	v_cndmask_b16 v44.l, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s1
	v_bfe_u32 v46, v42, 16, 1
	v_add3_u32 v47, v43, v47, 0x7fff
	v_bfe_u32 v48, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_bfe_u32 v43, v40, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v50.h, s0
	v_add3_u32 v46, v42, v46, 0x7fff
	v_cmp_o_f32_e64 s0, v42, v42
	v_add3_u32 v42, v41, v48, 0x7fff
	v_cmp_o_f32_e64 s1, v41, v41
	v_add3_u32 v41, v40, v43, 0x7fff
	v_bfe_u32 v43, v39, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s2
	v_cmp_o_f32_e64 s2, v40, v40
	v_cndmask_b16 v40.l, 0x7fff, v47.h, vcc_lo
	v_cndmask_b16 v40.h, 0x7fff, v46.h, s0
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s1
	v_bfe_u32 v42, v38, 16, 1
	v_add3_u32 v43, v39, v43, 0x7fff
	v_bfe_u32 v46, v37, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_bfe_u32 v39, v36, 16, 1
	v_add3_u32 v42, v38, v42, 0x7fff
	v_cmp_o_f32_e64 s0, v38, v38
	v_add3_u32 v38, v37, v46, 0x7fff
	v_cmp_o_f32_e64 s1, v37, v37
	v_add3_u32 v37, v36, v39, 0x7fff
	v_bfe_u32 v39, v35, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	v_cmp_o_f32_e64 s2, v36, v36
	v_cndmask_b16 v36.l, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v36.h, 0x7fff, v42.h, s0
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_bfe_u32 v38, v34, 16, 1
	v_add3_u32 v39, v35, v39, 0x7fff
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_bfe_u32 v35, v32, 16, 1
	v_add3_u32 v38, v34, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v34, v34
	v_add3_u32 v34, v33, v42, 0x7fff
	v_cmp_o_f32_e64 s1, v33, v33
	v_add3_u32 v33, v32, v35, 0x7fff
	v_bfe_u32 v35, v31, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s2
	v_cmp_o_f32_e64 s2, v32, v32
	v_cndmask_b16 v32.l, 0x7fff, v39.h, vcc_lo
	v_cndmask_b16 v32.h, 0x7fff, v38.h, s0
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v30, 16, 1
	v_add3_u32 v35, v31, v35, 0x7fff
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_bfe_u32 v31, v28, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s2
	v_add3_u32 v34, v30, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v30, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v29, v29
	v_add3_u32 v29, v28, v31, 0x7fff
	v_cmp_o_f32_e64 s2, v28, v28
	v_cndmask_b16 v28.l, 0x7fff, v35.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v6, v2, v5
	v_add_nc_u32_e32 v5, v2, v1
	v_mad_u64_u32 v[0:1], null, s19, 48, v[2:3]
	v_add_nc_u32_e32 v1, 0x80, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v34.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v29.h, s2
	v_cndmask_b32_e32 v29, v9, v7, vcc_lo
	v_cndmask_b32_e32 v7, v7, v9, vcc_lo
	v_cndmask_b32_e32 v30, v11, v8, vcc_lo
	v_dual_cndmask_b32 v8, v8, v11 :: v_dual_cndmask_b32 v31, v13, v10
	v_dual_cndmask_b32 v34, v15, v12 :: v_dual_cndmask_b32 v9, v10, v13
	v_cndmask_b32_e32 v38, v19, v16, vcc_lo
	v_dual_cndmask_b32 v10, v12, v15 :: v_dual_cndmask_b32 v35, v17, v14
	v_dual_cndmask_b32 v12, v16, v19 :: v_dual_cndmask_b32 v11, v14, v17
	v_dual_cndmask_b32 v42, v23, v20 :: v_dual_cndmask_b32 v39, v21, v18
	v_dual_cndmask_b32 v14, v20, v23 :: v_dual_cndmask_b32 v43, v25, v22
	v_dual_cndmask_b32 v16, v24, v27 :: v_dual_cndmask_b32 v15, v22, v25
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v13, v18, v21 :: v_dual_cndmask_b32 v46, v27, v24
	v_cndmask_b32_e32 v21, v32, v28, vcc_lo
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v22, vcc_lo
	v_cndmask_b32_e32 v22, 0x3276, v23, vcc_lo
	v_permlanex16_b32 v23, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v47, v44, v26, vcc_lo
	v_dual_cndmask_b32 v17, v26, v44 :: v_dual_cndmask_b32 v18, v49, v45
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_dual_cndmask_b32 v44, v45, v49 :: v_dual_cndmask_b32 v45, v36, v40
	v_dual_cndmask_b32 v19, v40, v36 :: v_dual_cndmask_b32 v20, v41, v37
	v_dual_cndmask_b32 v36, v37, v41 :: v_dual_cndmask_b32 v37, v28, v32
	v_dual_cndmask_b32 v40, v3, v33 :: v_dual_cndmask_b32 v3, v33, v3
	v_and_b32_e32 v8, 0x760076, v8
	v_and_b32_e32 v7, 0x540054, v7
	v_permlanex16_b32 v25, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v7, v7, 4, v7
	v_permlanex16_b32 v27, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v52, 0x7060706, v8
	v_and_b32_e32 v51, 0x5040504, v7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v2, v4, v2, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v33, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v24, v29, v52
	v_perm_b32 v7, v24, v29, v51
	v_perm_b32 v9, v23, v30, v51
	v_perm_b32 v10, v23, v30, v52
	v_permlanex16_b32 v53, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v25, v31, v51
	v_perm_b32 v12, v25, v31, v52
	v_perm_b32 v13, v26, v34, v51
	v_perm_b32 v14, v26, v34, v52
	v_permlanex16_b32 v48, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v22, v35, v51
	v_perm_b32 v16, v22, v35, v52
	v_perm_b32 v17, v27, v38, v51
	v_perm_b32 v18, v27, v38, v52
	v_perm_b32 v19, v28, v39, v51
	v_perm_b32 v20, v28, v39, v52
	v_add_lshl_u32 v39, v4, v6, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_perm_b32 v21, v32, v42, v51
	v_perm_b32 v22, v32, v42, v52
	s_clause 0x2
	buffer_store_b128 v[7:10], v2, s[16:19], 0 offen
	buffer_store_b128 v[11:14], v2, s[16:19], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[16:19], 0 offen
	v_add_lshl_u32 v2, v1, v6, 1
	v_perm_b32 v23, v33, v43, v51
	v_perm_b32 v24, v33, v43, v52
	v_perm_b32 v25, v41, v46, v51
	v_perm_b32 v26, v41, v46, v52
	v_perm_b32 v33, v53, v36, v51
	v_perm_b32 v34, v53, v36, v52
	v_perm_b32 v35, v54, v37, v51
	v_perm_b32 v36, v54, v37, v52
	v_perm_b32 v37, v3, v40, v51
	v_perm_b32 v38, v3, v40, v52
	v_add_lshl_u32 v3, v4, v5, 1
	v_perm_b32 v27, v48, v47, v51
	v_perm_b32 v28, v48, v47, v52
	v_perm_b32 v29, v49, v44, v51
	v_perm_b32 v30, v49, v44, v52
	v_add_lshl_u32 v5, v1, v5, 1
	v_perm_b32 v31, v50, v45, v51
	v_perm_b32 v32, v50, v45, v52
	v_add_lshl_u32 v4, v4, v0, 1
	v_add_lshl_u32 v0, v1, v0, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v2, s[16:19], 0 offen
	buffer_store_b128 v[23:26], v3, s[16:19], 0 offen
	buffer_store_b128 v[27:30], v5, s[16:19], 0 offen
	buffer_store_b128 v[31:34], v4, s[16:19], 0 offen
	buffer_store_b128 v[35:38], v0, s[16:19], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 64
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
		.amdhsa_next_free_sgpr 30
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
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 64
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10028
; TotalNumSgprs: 32
; NumVgprs: 256
; ScratchSize: 64
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 32
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
    .private_segment_fixed_size: 64
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 15
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
