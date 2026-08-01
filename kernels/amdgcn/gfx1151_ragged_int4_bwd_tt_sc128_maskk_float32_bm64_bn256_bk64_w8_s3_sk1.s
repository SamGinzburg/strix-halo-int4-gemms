	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[72:73], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_mov_b32_e32 v184, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v36, 15, v184
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s73, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s6, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s40, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s40, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s42, s40, s72
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s9, s7
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s41, s40, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[40:41], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s59, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s6, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s59, v36
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s41, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s72, v1
	v_cmp_gt_i32_e64 s4, s72, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s47, s72, v3
	v_cmp_gt_i32_e64 s2, s72, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s37, s41, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s37, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge87_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s51, s59, s42
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr51
.LBB0_3:                                ; %Flow567
	s_load_b64 s[56:57], s[0:1], 0x28
	v_dual_mov_b32 v171, 0 :: v_dual_and_b32 v46, 0xe0, v184
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v119, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s58, s6, 8
	s_cbranch_vccnz .LBB0_13
; %bb.4:                                ; %.lr.ph86
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v2, 5, v46
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 63, v184
	s_clause 0x1
	s_load_b256 s[48:55], s[0:1], 0x0
	s_load_b64 s[38:39], s[0:1], 0x38
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s58, v184
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s43, s37, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s58, v2
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s59, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s43, s37, s43
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s37, s73, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s74, s43, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, 8, v3
	v_or_b32_e32 v6, 16, v3
	v_or_b32_e32 v7, 24, v3
	v_or_b32_e32 v8, 32, v3
	v_or_b32_e32 v9, 40, v3
	v_or_b32_e32 v10, 48, v3
	v_or_b32_e32 v11, 56, v3
	v_or_b32_e32 v12, 64, v3
	v_or_b32_e32 v13, 0x48, v3
	v_or_b32_e32 v14, 0x50, v3
	v_or_b32_e32 v15, 0x58, v3
	v_or_b32_e32 v16, 0x60, v3
	v_or_b32_e32 v17, 0x68, v3
	v_or_b32_e32 v18, 0x70, v3
	v_or_b32_e32 v19, 0x78, v3
	v_or_b32_e32 v20, 0x80, v3
	v_or_b32_e32 v21, 0x88, v3
	v_or_b32_e32 v22, 0x90, v3
	v_or_b32_e32 v23, 0x98, v3
	v_or_b32_e32 v24, 0xa0, v3
	v_or_b32_e32 v25, 0xa8, v3
	v_or_b32_e32 v26, 0xb0, v3
	v_or_b32_e32 v27, 0xb8, v3
	v_or_b32_e32 v28, 0xc0, v3
	v_or_b32_e32 v29, 0xc8, v3
	v_or_b32_e32 v30, 0xd0, v3
	v_or_b32_e32 v31, 0xd8, v3
	v_or_b32_e32 v32, 0xe0, v3
	v_or_b32_e32 v33, 0xe8, v3
	v_or_b32_e32 v34, 0xf0, v3
	v_or_b32_e32 v35, 0xf8, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s73, v3
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v3, 6, v184
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s72, v4
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v4, 31, v184
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v0, 12, v3
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s43, s41, 31
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s75, s3, 5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s43, s41, s43
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s40, s73
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_mad_u64_u32 v[133:134], null, s72, v0, v[1:2]
	v_mov_b32_e32 v0, v4
	v_mad_u64_u32 v[129:130], null, s72, v3, v[1:2]
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v3, 28, v3
	scratch_store_b64 off, v[0:1], off offset:456 ; 8-byte Folded Spill
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s76, s43, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s49, 0xffff
	s_add_i32 s79, s58, s3
	v_mad_u64_u32 v[137:138], null, s72, v3, v[1:2]
	v_bfe_i32 v1, v184, 7, 1
	scratch_store_b32 off, v3, off offset:468 ; 4-byte Folded Spill
	s_and_b32 s65, s51, 0xffff
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v3, 0x7f, v184
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v1, 0x88, v1
	s_bitcmp1_b32 s41, 0
	v_mad_u64_u32 v[68:69], null, s38, v2, v[4:5]
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v2, 1, v184
	s_cselect_b32 s81, -1, 0
	s_add_i32 s51, s59, s42
	v_xor_b32_e32 v168, v1, v3
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v1, s51, v36
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s73, v5
	v_cmp_gt_i32_e64 s6, s73, v6
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v4, 5, v36
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v5, 4, v46
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v6, 24, v2
	v_mul_lo_u32 v0, v1, s39
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v86, v4, v6, v5
	v_add_nc_u32_e32 v5, 16, v1
	v_add_nc_u32_e32 v6, 32, v1
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v3, 0xf0, v184
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v5, s39
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v4, 5, v184
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v1, 48, v1
	v_cmp_gt_i32_e64 s7, s73, v7
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v7, 2, v3
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v6, s39
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v4, 32, v4
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v2, 28, v2
	v_mad_u64_u32 v[141:142], null, s72, 20, v[129:130]
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v4, 0, v7, v4
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s39
	v_mad_u64_u32 v[142:143], null, s72, 24, v[129:130]
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_mad_u64_u32 v[125:126], null, s38, 24, v[68:69]
	v_mad_u64_u32 v[143:144], null, s38, 48, v[68:69]
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v0, v4, v2
	v_mad_u64_u32 v[126:127], null, s38, 40, v[68:69]
	v_mad_u64_u32 v[144:145], null, 0x48, s38, v[68:69]
	v_mad_u64_u32 v[127:128], null, s38, 56, v[68:69]
	v_mad_u64_u32 v[145:146], null, 0x50, s38, v[68:69]
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v0, 0, v3
	v_mad_u64_u32 v[146:147], null, 0x58, s38, v[68:69]
	v_mov_b32_e32 v95, v127
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v145
	v_mad_u64_u32 v[147:148], null, 0x60, s38, v[68:69]
	scratch_store_b32 off, v46, off offset:472 ; 4-byte Folded Spill
	v_mov_b32_e32 v97, v143
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off      ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v146
	v_mad_u64_u32 v[148:149], null, 0x68, s38, v[68:69]
	v_mad_u64_u32 v[149:150], null, 0x70, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:8 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v147
	v_mad_u64_u32 v[150:151], null, 0x78, s38, v[68:69]
	v_mad_u64_u32 v[151:152], null, 0x88, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:16 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v148
	v_mad_u64_u32 v[152:153], null, 0x90, s38, v[68:69]
	v_mad_u64_u32 v[153:154], null, 0x98, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:24 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v149
	v_mad_u64_u32 v[154:155], null, 0xa0, s38, v[68:69]
	v_mad_u64_u32 v[155:156], null, 0xa8, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:32 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v150
	v_mad_u64_u32 v[156:157], null, 0xb0, s38, v[68:69]
	v_mad_u64_u32 v[157:158], null, 0xc8, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:40 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v151
	v_mad_u64_u32 v[159:160], null, 0xb8, s38, v[68:69]
	v_mad_u64_u32 v[160:161], null, 0xc0, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:48 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v152
	v_mad_u64_u32 v[161:162], null, 0xd0, s38, v[68:69]
	v_mad_u64_u32 v[162:163], null, 0xd8, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:56 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v153
	v_mad_u64_u32 v[163:164], null, 0xe0, s38, v[68:69]
	v_mad_u64_u32 v[165:166], null, 0xe8, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:64 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v154
	v_mad_u64_u32 v[166:167], null, 0xf0, s38, v[68:69]
	v_mad_u64_u32 v[187:188], null, 0xf8, s38, v[68:69]
	scratch_store_b64 off, v[0:1], off offset:72 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v155
	v_lshl_add_u32 v131, s72, 2, v129
	v_lshl_add_u32 v132, s72, 3, v129
	v_lshl_add_u32 v134, s72, 4, v129
	v_lshl_add_u32 v120, s38, 3, v68
	scratch_store_b64 off, v[0:1], off offset:80 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v156
	v_lshl_add_u32 v121, s38, 4, v68
	v_lshl_add_u32 v122, s38, 5, v68
	v_lshl_add_u32 v123, s38, 6, v68
	v_lshl_add_u32 v124, s38, 7, v68
	scratch_store_b64 off, v[0:1], off offset:88 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v157
	v_or_b32_e32 v135, 0x300, v184
	v_or_b32_e32 v138, 0x700, v184
	v_or_b32_e32 v139, 0x3f0, v184
	v_or_b32_e32 v140, 0x7f0, v184
	scratch_store_b64 off, v[0:1], off offset:96 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v159
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s73, v8
	v_cmp_gt_i32_e64 s9, s73, v9
	v_cmp_gt_i32_e64 s10, s73, v10
	v_cmp_gt_i32_e64 s11, s73, v11
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off offset:104 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v160
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s73, v12
	v_cmp_gt_i32_e64 s13, s73, v13
	v_cmp_gt_i32_e64 s14, s73, v14
	v_cmp_gt_i32_e64 s15, s73, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off offset:112 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v161
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s73, v16
	v_cmp_gt_i32_e64 s17, s73, v17
	v_cmp_gt_i32_e64 s18, s73, v18
	v_cmp_gt_i32_e64 s19, s73, v19
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off offset:120 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v162
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s20, s73, v20
	v_cmp_gt_i32_e64 s21, s73, v21
	v_cmp_gt_i32_e64 s22, s73, v22
	v_cmp_gt_i32_e64 s23, s73, v23
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off offset:128 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v163
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s24, s73, v24
	v_cmp_gt_i32_e64 s25, s73, v25
	v_cmp_gt_i32_e64 s26, s73, v26
	v_cmp_gt_i32_e64 s27, s73, v27
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off offset:136 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v165
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s28, s73, v28
	v_cmp_gt_i32_e64 s29, s73, v29
	v_cmp_gt_i32_e64 s30, s73, v30
	v_cmp_gt_i32_e64 s31, s73, v31
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off offset:144 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v166
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s33, s73, v32
	v_cmp_gt_i32_e64 s34, s73, v33
	v_cmp_gt_i32_e64 s35, s73, v34
	v_cmp_gt_i32_e64 s36, s73, v35
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v178, 0, v36
	v_xor_b32_e32 v87, 0x110, v168
	v_xor_b32_e32 v88, 8, v86
	v_xor_b32_e32 v89, 16, v86
	v_xor_b32_e32 v90, 24, v86
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v70, v129
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v72, v132
	v_dual_mov_b32 v71, v131 :: v_dual_mov_b32 v74, v134
	v_dual_mov_b32 v73, v133 :: v_dual_mov_b32 v76, v120
	v_dual_mov_b32 v75, v137 :: v_dual_mov_b32 v78, v122
	v_dual_mov_b32 v77, v121 :: v_dual_mov_b32 v80, v124
	v_dual_mov_b32 v79, v123 :: v_dual_mov_b32 v82, v138
	v_dual_mov_b32 v81, v135 :: v_dual_mov_b32 v84, v140
	v_dual_mov_b32 v83, v139 :: v_dual_mov_b32 v92, v142
	v_dual_mov_b32 v91, v141 :: v_dual_mov_b32 v94, v126
	v_dual_mov_b32 v93, v125 :: v_dual_mov_b32 v96, v144
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b64 off, v[0:1], off offset:152 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v187
	s_add_i32 s82, s74, -1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s77, s40, s38
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s78, s40, s39
	s_mov_b32 s60, s48
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_mul_i32 s79, s79, s38
	s_mov_b32 s64, s50
	s_mov_b32 s80, 0
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s69, s55, 0xffff
	s_mov_b32 s68, s54
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s83, s82, 6
	s_mov_b32 s3, 0
	scratch_store_b64 off, v[0:1], off offset:160 ; 8-byte Folded Spill
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:364
	scratch_load_b32 v65, off, off offset:368
	scratch_load_b32 v66, off, off offset:372
	scratch_load_b32 v67, off, off offset:376
	scratch_load_b32 v69, off, off offset:360
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s80, s78
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s54, s62
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s73
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s55, s63
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v98, v1
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v99, v2
	v_cvt_f32_i32_e32 v100, v3
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v101, v4
	v_cvt_f32_i32_e32 v102, v5
	v_cvt_f32_i32_e32 v103, v6
	v_cvt_f32_i32_e32 v104, v7
	v_cvt_f32_i32_e32 v105, v8
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s38, s80, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, v0, s80, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v65, v65, s80, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v66, v66, s80, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v67, v67, s80, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v69, v69, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s47
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v69, 0x80000000, v69, s37
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[52:55], 0 offen
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v69, v69, s[68:71], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s38, 6
	s_cmp_lg_u32 s80, s83
	s_mov_b32 s80, s38
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v41, v41, v1 :: v_dual_lshlrev_b32 v0, 16, v0
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v57, v57, v0 :: v_dual_lshlrev_b32 v2, 16, v66
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v60, v60, v0 :: v_dual_lshlrev_b32 v65, 16, v67
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v62, v62, v0 :: v_dual_lshlrev_b32 v3, 16, v69
	v_mul_f32_e32 v58, v58, v0
	v_dual_mul_f32 v59, v59, v0 :: v_dual_mul_f32 v42, v42, v1
	v_dual_mul_f32 v61, v61, v0 :: v_dual_mul_f32 v44, v44, v1
	v_dual_mul_f32 v63, v63, v0 :: v_dual_mul_f32 v46, v46, v1
	v_dual_mul_f32 v64, v64, v0 :: v_dual_mul_f32 v43, v43, v1
	v_dual_mul_f32 v49, v49, v0 :: v_dual_mul_f32 v48, v48, v1
	v_dual_mul_f32 v50, v50, v0 :: v_dual_mul_f32 v45, v45, v1
	v_dual_mul_f32 v51, v51, v0 :: v_dual_mul_f32 v34, v34, v1
	v_dual_mul_f32 v52, v52, v0 :: v_dual_mul_f32 v47, v47, v1
	v_dual_mul_f32 v53, v53, v0 :: v_dual_mul_f32 v36, v36, v1
	v_dual_mul_f32 v54, v54, v0 :: v_dual_mul_f32 v33, v33, v1
	v_dual_mul_f32 v55, v55, v0 :: v_dual_mul_f32 v38, v38, v1
	v_dual_mul_f32 v0, v56, v0 :: v_dual_mul_f32 v35, v35, v1
	v_dual_mul_f32 v37, v37, v1 :: v_dual_mul_f32 v26, v26, v2
	v_dual_mul_f32 v39, v39, v1 :: v_dual_mul_f32 v28, v28, v2
	v_dual_mul_f32 v40, v40, v1 :: v_dual_mul_f32 v25, v25, v2
	.loc	1 1524 21                       ; ragged.py:1524:21
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v27, v27, v2 :: v_dual_mul_f32 v56, v9, v65
	v_dual_mul_f32 v29, v29, v2 :: v_dual_mul_f32 v66, v10, v65
	v_dual_mul_f32 v30, v30, v2 :: v_dual_mul_f32 v67, v11, v65
	v_dual_mul_f32 v31, v31, v2 :: v_dual_mul_f32 v106, v13, v65
	v_dual_mul_f32 v32, v32, v2 :: v_dual_mul_f32 v107, v14, v65
	v_dual_mul_f32 v17, v17, v2 :: v_dual_mul_f32 v108, v15, v65
	v_dual_mul_f32 v18, v18, v2 :: v_dual_mul_f32 v69, v12, v65
	v_dual_mul_f32 v19, v19, v2 :: v_dual_mul_f32 v98, v98, v65
	v_dual_mul_f32 v20, v20, v2 :: v_dual_mul_f32 v99, v99, v65
	v_dual_mul_f32 v21, v21, v2 :: v_dual_mul_f32 v100, v100, v65
	v_dual_mul_f32 v22, v22, v2 :: v_dual_mul_f32 v109, v16, v65
	v_dual_mul_f32 v23, v23, v2 :: v_dual_mul_f32 v102, v102, v65
	v_dual_mul_f32 v24, v24, v2 :: v_dual_mul_f32 v101, v101, v65
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v85, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v85
	ds_load_b128 v[5:8], v85 offset:16
	ds_load_b128 v[9:12], v85 offset:512
	ds_load_b128 v[13:16], v85 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v103, v103, v65
	v_mul_f32_e32 v104, v104, v65
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v65, v105, v65 :: v_dual_fmac_f32 v116, v60, v4
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v119, v57, v1 :: v_dual_fmac_f32 v114, v62, v6
	v_dual_fmac_f32 v115, v61, v5 :: v_dual_fmac_f32 v112, v64, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v113, v63, v7 :: v_dual_fmac_f32 v110, v50, v10
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v64, off, off offset:316
	scratch_load_b32 v63, off, off offset:312
	scratch_load_b32 v62, off, off offset:308
	scratch_load_b32 v61, off, off offset:304
	scratch_load_b32 v60, off, off offset:300
	v_dual_fmac_f32 v118, v58, v2 :: v_dual_fmac_f32 v117, v59, v3
	v_fmac_f32_e32 v111, v49, v9
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v59, off, off offset:296
	scratch_load_b32 v58, off, off offset:292
	scratch_load_b32 v57, off, off offset:288
	scratch_load_b32 v50, off, off offset:264
	scratch_load_b32 v49, off, off offset:260
	v_dual_fmac_f32 v185, v66, v2 :: v_dual_fmac_f32 v182, v67, v3
	v_dual_fmac_f32 v183, v69, v4 :: v_dual_fmac_f32 v180, v107, v6
	v_dual_fmac_f32 v181, v106, v5 :: v_dual_fmac_f32 v176, v109, v8
	v_dual_fmac_f32 v179, v108, v7 :: v_dual_fmac_f32 v170, v101, v12
	v_dual_fmac_f32 v175, v98, v9 :: v_dual_fmac_f32 v172, v100, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v173, v99, v10 :: v_dual_fmac_f32 v174, v104, v15
	v_fmac_f32_e32 v169, v102, v13
	v_fmac_f32_e32 v177, v103, v14
	v_dual_fmac_f32 v171, v65, v16 :: v_dual_fmac_f32 v186, v56, v1
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v64, v51, v11 :: v_dual_fmac_f32 v63, v52, v12
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v62, v53, v13 :: v_dual_fmac_f32 v61, v54, v14
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v60, v55, v15
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v55, off, off offset:284
	scratch_load_b32 v54, off, off offset:280
	scratch_load_b32 v53, off, off offset:276
	scratch_load_b32 v52, off, off offset:272
	scratch_load_b32 v51, off, off offset:268
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v59, v0, v16 :: v_dual_fmac_f32 v58, v41, v1
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v57, v42, v2 :: v_dual_fmac_f32 v50, v48, v8
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v48, off, off offset:256
	scratch_load_b32 v42, off, off offset:236
	scratch_load_b32 v41, off, off offset:232
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v49, v33, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:204
	scratch_load_b32 v0, off, off offset:200
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v55, v43, v3 :: v_dual_fmac_f32 v54, v44, v4
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v53, v45, v5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v45, off, off offset:248
	scratch_load_b32 v44, off, off offset:244
	scratch_load_b32 v43, off, off offset:240
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v51, v47, v7
	scratch_load_b32 v47, off, off offset:252 ; 4-byte Folded Reload
	v_fmac_f32_e32 v52, v46, v6
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v48, v34, v10
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v42, v39, v15 :: v_dual_fmac_f32 v41, v40, v16
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v40, off, off offset:228
	scratch_load_b32 v39, off, off offset:224
	scratch_load_b32 v34, off, off offset:208
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v0, v32, v8 :: v_dual_fmac_f32 v33, v31, v7
	scratch_load_b32 v31, off, off offset:196 ; 4-byte Folded Reload
	v_mov_b32_e32 v32, v0
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v45, v36, v12 :: v_dual_fmac_f32 v44, v37, v13
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v43, v38, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:220
	scratch_load_b32 v37, off, off offset:216
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v47, v35, v11
	scratch_load_b32 v35, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v40, v25, v1 :: v_dual_fmac_f32 v39, v26, v2
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v34, v30, v6
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v30, off, off offset:192
	scratch_load_b32 v26, off, off offset:176
	scratch_load_b32 v25, off, off offset:172
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v31, v17, v9 :: v_dual_fmac_f32 v0, v24, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v24, v0
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v38, v27, v3
	scratch_load_b32 v27, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v35, v29, v5
	scratch_load_b32 v29, off, off offset:188 ; 4-byte Folded Reload
	v_fmac_f32_e32 v37, v28, v4
	scratch_load_b32 v28, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v30, v18, v10
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v26, v22, v14 :: v_dual_fmac_f32 v25, v23, v15
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v27, v21, v13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v29, v19, v11 :: v_dual_fmac_f32 v28, v20, v12
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_12
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s38, s76, s3
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v64, off offset:316
	scratch_store_b32 off, v63, off offset:312
	scratch_store_b32 off, v62, off offset:308
	scratch_store_b32 off, v61, off offset:304
	scratch_store_b32 off, v60, off offset:300
	scratch_store_b32 off, v59, off offset:296
	scratch_store_b32 off, v58, off offset:292
	scratch_store_b32 off, v57, off offset:288
	scratch_store_b32 off, v55, off offset:284
	scratch_store_b32 off, v54, off offset:280
	scratch_store_b32 off, v53, off offset:276
	scratch_store_b32 off, v52, off offset:272
	scratch_store_b32 off, v51, off offset:268
	scratch_store_b32 off, v50, off offset:264
	scratch_store_b32 off, v49, off offset:260
	scratch_store_b32 off, v48, off offset:256
	scratch_store_b32 off, v47, off offset:252
	scratch_store_b32 off, v45, off offset:248
	scratch_store_b32 off, v44, off offset:244
	scratch_store_b32 off, v43, off offset:240
	scratch_store_b32 off, v42, off offset:236
	scratch_store_b32 off, v41, off offset:232
	scratch_store_b32 off, v40, off offset:228
	scratch_store_b32 off, v39, off offset:224
	scratch_store_b32 off, v38, off offset:220
	scratch_store_b32 off, v37, off offset:216
	scratch_store_b32 off, v35, off offset:212
	scratch_store_b32 off, v34, off offset:208
	scratch_store_b32 off, v33, off offset:204
	scratch_store_b32 off, v32, off offset:200
	scratch_store_b32 off, v31, off offset:196
	scratch_store_b32 off, v30, off offset:192
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v29, off offset:188
	scratch_store_b32 off, v28, off offset:184
	scratch_store_b32 off, v27, off offset:180
	scratch_store_b32 off, v26, off offset:176
	scratch_store_b32 off, v25, off offset:172
	scratch_store_b32 off, v24, off offset:168
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s38, 0, 64
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s38, v1
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	s_and_b32 s39, s38, 0x60
	s_mov_b32 s38, s75
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s75, s39
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v110, off offset:320
	scratch_store_b32 off, v111, off offset:324
	scratch_store_b32 off, v112, off offset:328
	scratch_store_b32 off, v113, off offset:332
	scratch_store_b32 off, v114, off offset:336
	scratch_store_b32 off, v115, off offset:340
	scratch_store_b32 off, v116, off offset:344
	scratch_store_b32 off, v117, off offset:348
	scratch_store_b32 off, v118, off offset:352
	scratch_store_b32 off, v119, off offset:356
	s_cbranch_scc1 .LBB0_10
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s38, s75
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v186, off offset:448
	scratch_store_b32 off, v185, off offset:444
	scratch_store_b32 off, v182, off offset:440
	scratch_store_b32 off, v183, off offset:436
	scratch_store_b32 off, v181, off offset:432
	scratch_store_b32 off, v180, off offset:428
	scratch_store_b32 off, v179, off offset:424
	scratch_store_b32 off, v177, off offset:420
	scratch_store_b32 off, v176, off offset:416
	scratch_store_b32 off, v175, off offset:412
	scratch_store_b32 off, v174, off offset:408
	scratch_store_b32 off, v173, off offset:404
	scratch_store_b32 off, v172, off offset:400
	scratch_store_b32 off, v171, off offset:396
	scratch_store_b32 off, v170, off offset:392
	scratch_store_b32 off, v169, off offset:388
	v_dual_mov_b32 v85, v168 :: v_dual_mov_b32 v58, v57
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v62, v57
	v_mov_b32_e32 v63, v57
	v_mov_b32_e32 v64, v57
	v_mov_b32_e32 v49, v57
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v51, v57
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v53, v57
	v_mov_b32_e32 v54, v57
	v_mov_b32_e32 v55, v57
	v_mov_b32_e32 v56, v57
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v42, v57
	v_mov_b32_e32 v43, v57
	v_mov_b32_e32 v44, v57
	v_mov_b32_e32 v45, v57
	v_mov_b32_e32 v46, v57
	v_mov_b32_e32 v47, v57
	v_mov_b32_e32 v48, v57
	v_mov_b32_e32 v33, v57
	v_mov_b32_e32 v34, v57
	v_mov_b32_e32 v35, v57
	v_mov_b32_e32 v36, v57
	v_mov_b32_e32 v37, v57
	v_mov_b32_e32 v38, v57
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v40, v57
	v_mov_b32_e32 v25, v57
	v_mov_b32_e32 v26, v57
	v_mov_b32_e32 v27, v57
	v_mov_b32_e32 v28, v57
	v_mov_b32_e32 v29, v57
	v_mov_b32_e32 v30, v57
	v_mov_b32_e32 v31, v57
	v_mov_b32_e32 v32, v57
	v_mov_b32_e32 v17, v57
	v_mov_b32_e32 v18, v57
	v_mov_b32_e32 v19, v57
	v_mov_b32_e32 v20, v57
	v_mov_b32_e32 v21, v57
	v_mov_b32_e32 v22, v57
	v_mov_b32_e32 v23, v57
	v_mov_b32_e32 v24, v57
	v_mov_b32_e32 v9, v57
	v_mov_b32_e32 v10, v57
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v12, v57
	v_mov_b32_e32 v13, v57
	v_mov_b32_e32 v14, v57
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v16, v57
	v_mov_b32_e32 v1, v57
	v_mov_b32_e32 v2, v57
	v_mov_b32_e32 v3, v57
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v5, v57
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v7, v57
	v_mov_b32_e32 v8, v57
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1462 30 is_stmt 1             ; ragged.py:1462:30
	s_add_i32 s40, s38, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s66, s62
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s41, s40, s77
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_add_i32 s40, s40, s79
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s41, s41, s72
	v_add_nc_u32_e32 v65, s40, v68
	v_add_nc_u32_e32 v98, s40, v120
	v_add_nc_u32_e32 v99, s40, v121
	s_add_i32 s41, s41, s59
	v_add_nc_u32_e32 v100, s40, v125
	v_add_nc_u32_e32 v101, s40, v122
	v_add_nc_u32_e32 v102, s40, v126
	v_add_nc_u32_e32 v103, s40, v143
	v_add_nc_u32_e32 v104, s40, v127
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_add_nc_u32_e32 v105, s40, v123
	v_add_nc_u32_e32 v106, s40, v144
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v107, s40, v145
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v108, s40, v146
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v109, s40, v147
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v110, s40, v148
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v111, s40, v149
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v112, s40, v150
	v_add_nc_u32_e32 v113, s40, v124
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v114, s40, v151
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v115, s40, v152
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v116, s40, v153
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v117, s40, v154
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v118, s40, v155
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v119, s40, v156
	v_add_nc_u32_e32 v120, s40, v159
	v_add_nc_u32_e32 v121, s40, v160
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v122, s40, v157
	v_add_nc_u32_e32 v123, s40, v161
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v124, s40, v162
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, s40, v163
	v_add_nc_u32_e32 v126, s40, v165
	v_add_nc_u32_e32 v127, s40, v166
	v_add_nc_u32_e32 v128, s40, v187
	v_add_nc_u32_e32 v129, s41, v70
	v_add_nc_u32_e32 v130, s41, v131
	v_add_nc_u32_e32 v131, s41, v132
	v_add_nc_u32_e32 v136, s41, v133
	v_add_nc_u32_e32 v164, s41, v134
	v_add_nc_u32_e32 v165, s41, v141
	v_add_nc_u32_e32 v166, s41, v142
	v_add_nc_u32_e32 v167, s41, v137
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s6
	s_mov_b32 s67, s63
	v_cndmask_b32_e64 v100, 0x80000000, v100, s7
	v_cndmask_b32_e64 v101, 0x80000000, v101, s8
	v_cndmask_b32_e64 v102, 0x80000000, v102, s9
	v_cndmask_b32_e64 v103, 0x80000000, v103, s10
	v_cndmask_b32_e64 v104, 0x80000000, v104, s11
	v_cndmask_b32_e64 v105, 0x80000000, v105, s12
	v_cndmask_b32_e64 v106, 0x80000000, v106, s13
	v_cndmask_b32_e64 v107, 0x80000000, v107, s14
	v_cndmask_b32_e64 v108, 0x80000000, v108, s15
	v_cndmask_b32_e64 v109, 0x80000000, v109, s16
	v_cndmask_b32_e64 v110, 0x80000000, v110, s17
	v_cndmask_b32_e64 v111, 0x80000000, v111, s18
	v_cndmask_b32_e64 v112, 0x80000000, v112, s19
	v_cndmask_b32_e64 v113, 0x80000000, v113, s20
	v_cndmask_b32_e64 v114, 0x80000000, v114, s21
	v_cndmask_b32_e64 v115, 0x80000000, v115, s22
	v_cndmask_b32_e64 v116, 0x80000000, v116, s23
	v_cndmask_b32_e64 v117, 0x80000000, v117, s24
	v_cndmask_b32_e64 v118, 0x80000000, v118, s25
	v_cndmask_b32_e64 v119, 0x80000000, v119, s26
	v_cndmask_b32_e64 v120, 0x80000000, v120, s27
	v_cndmask_b32_e64 v121, 0x80000000, v121, s28
	v_cndmask_b32_e64 v122, 0x80000000, v122, s29
	v_cndmask_b32_e64 v123, 0x80000000, v123, s30
	v_cndmask_b32_e64 v124, 0x80000000, v124, s31
	v_cndmask_b32_e64 v125, 0x80000000, v125, s33
	v_cndmask_b32_e64 v126, 0x80000000, v126, s34
	v_cndmask_b32_e64 v127, 0x80000000, v127, s35
	v_cndmask_b32_e64 v128, 0x80000000, v128, s36
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v129, 0x80000000, v129 :: v_dual_cndmask_b32 v130, 0x80000000, v130
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_cndmask_b32 v136, 0x80000000, v136
	v_dual_cndmask_b32 v164, 0x80000000, v164 :: v_dual_cndmask_b32 v165, 0x80000000, v165
	v_dual_cndmask_b32 v166, 0x80000000, v166 :: v_dual_cndmask_b32 v167, 0x80000000, v167
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x1f
	buffer_load_u8 v225, v65, s[64:67], 0 offen
	buffer_load_u8 v226, v98, s[64:67], 0 offen
	buffer_load_u8 v227, v99, s[64:67], 0 offen
	buffer_load_u8 v228, v100, s[64:67], 0 offen
	buffer_load_u8 v229, v101, s[64:67], 0 offen
	buffer_load_u8 v230, v102, s[64:67], 0 offen
	buffer_load_u8 v231, v103, s[64:67], 0 offen
	buffer_load_u8 v232, v104, s[64:67], 0 offen
	buffer_load_u8 v233, v105, s[64:67], 0 offen
	buffer_load_u8 v234, v106, s[64:67], 0 offen
	buffer_load_u8 v235, v107, s[64:67], 0 offen
	buffer_load_u8 v236, v108, s[64:67], 0 offen
	buffer_load_u8 v237, v109, s[64:67], 0 offen
	buffer_load_u8 v238, v110, s[64:67], 0 offen
	buffer_load_u8 v239, v111, s[64:67], 0 offen
	buffer_load_u8 v240, v112, s[64:67], 0 offen
	buffer_load_u8 v241, v113, s[64:67], 0 offen
	buffer_load_u8 v242, v114, s[64:67], 0 offen
	buffer_load_u8 v243, v115, s[64:67], 0 offen
	buffer_load_u8 v244, v116, s[64:67], 0 offen
	buffer_load_u8 v245, v117, s[64:67], 0 offen
	buffer_load_u8 v246, v118, s[64:67], 0 offen
	buffer_load_u8 v247, v119, s[64:67], 0 offen
	buffer_load_u8 v248, v120, s[64:67], 0 offen
	buffer_load_u8 v249, v121, s[64:67], 0 offen
	buffer_load_u8 v250, v122, s[64:67], 0 offen
	buffer_load_u8 v251, v123, s[64:67], 0 offen
	buffer_load_u8 v252, v124, s[64:67], 0 offen
	buffer_load_u8 v253, v125, s[64:67], 0 offen
	buffer_load_u8 v254, v126, s[64:67], 0 offen
	buffer_load_u8 v255, v127, s[64:67], 0 offen
	buffer_load_u8 v132, v128, s[64:67], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x7
	buffer_load_u8 v65, v165, s[60:63], 0 offen
	buffer_load_u8 v98, v136, s[60:63], 0 offen
	buffer_load_u8 v99, v164, s[60:63], 0 offen
	buffer_load_u8 v100, v129, s[60:63], 0 offen
	buffer_load_u8 v101, v130, s[60:63], 0 offen
	buffer_load_u8 v102, v166, s[60:63], 0 offen
	buffer_load_u8 v103, v167, s[60:63], 0 offen
	buffer_load_u8 v104, v131, s[60:63], 0 offen
	v_add_nc_u32_e32 v105, 0, v184
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v106, 0, v138
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v181, 0, v85
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s38, s38, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s38, s39
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(7)
	ds_store_b8 v105, v65 offset:1280
	v_add_nc_u32_e32 v65, 0, v135
	s_waitcnt vmcnt(6)
	ds_store_b8 v65, v98
	s_waitcnt vmcnt(4)
	ds_store_b8 v105, v100
	s_waitcnt vmcnt(3)
	ds_store_b8 v105, v101 offset:256
	s_waitcnt vmcnt(0)
	ds_store_b8 v105, v104 offset:512
	ds_store_b8 v105, v99 offset:1024
	ds_store_b8 v105, v102 offset:1536
	ds_store_b8 v106, v103
	v_add_nc_u32_e32 v65, 0, v139
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v194, v65
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v65, 0, v140
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v193, v65
	ds_load_u8 v133, v178 offset:192
	ds_load_u8 v134, v178 offset:128
	ds_load_u8 v135, v178 offset:208
	ds_load_u8 v137, v178 offset:144
	ds_load_u8 v138, v178 offset:224
	ds_load_u8 v139, v178 offset:160
	ds_load_u8 v209, v178 offset:240
	ds_load_u8 v116, v178 offset:176
	ds_load_u8 v140, v178 offset:448
	ds_load_u8 v141, v178 offset:384
	ds_load_u8 v142, v178 offset:464
	ds_load_u8 v143, v178 offset:400
	ds_load_u8 v144, v178 offset:480
	ds_load_u8 v145, v178 offset:416
	ds_load_u8 v223, v178 offset:496
	ds_load_u8 v146, v178 offset:432
	ds_load_u8 v147, v178 offset:320
	ds_load_u8 v148, v178 offset:256
	ds_load_u8 v149, v178 offset:336
	ds_load_u8 v150, v178 offset:272
	ds_load_u8 v151, v178 offset:352
	ds_load_u8 v152, v178 offset:288
	ds_load_u8 v153, v178 offset:368
	ds_load_u8 v154, v178 offset:304
	ds_load_u8 v155, v178 offset:64
	ds_load_u8 v156, v178 offset:80
	ds_load_u8 v157, v178 offset:96
	ds_load_u8 v158, v178 offset:112
	ds_load_u8 v159, v178
	ds_load_u8 v160, v178 offset:16
	ds_load_u8 v161, v178 offset:32
	ds_load_u8 v162, v178 offset:48
	ds_load_u8 v110, v178 offset:960
	ds_load_u8 v112, v178 offset:896
	ds_load_u8 v195, v178 offset:1024
	ds_load_u8 v102, v178 offset:976
	ds_load_u8 v104, v178 offset:912
	ds_load_u8 v166, v178 offset:992
	ds_load_u8 v187, v178 offset:928
	ds_load_u8 v201, v178 offset:944
	ds_load_u8 v127, v178 offset:832
	ds_load_u8 v128, v178 offset:768
	ds_load_u8 v120, v178 offset:848
	ds_load_u8 v124, v178 offset:784
	ds_load_u8 v192, v178 offset:864
	ds_load_u8 v208, v178 offset:800
	ds_load_u8 v189, v178 offset:880
	ds_load_u8 v101, v178 offset:816
	ds_load_u8 v163, v178 offset:704
	ds_load_u8 v176, v178 offset:640
	ds_load_u8 v129, v178 offset:720
	ds_load_u8 v130, v178 offset:656
	ds_load_u8 v125, v178 offset:736
	ds_load_u8 v126, v178 offset:672
	ds_load_u8 v212, v178 offset:752
	ds_load_u8 v122, v178 offset:688
	ds_load_u8 v177, v178 offset:576
	ds_load_u8 v179, v178 offset:512
	ds_load_u8 v180, v178 offset:592
	ds_load_u8 v183, v178 offset:528
	ds_load_u8 v182, v178 offset:608
	ds_load_u8 v185, v178 offset:544
	ds_load_u8 v186, v178 offset:624
	ds_load_u8 v168, v178 offset:560
	ds_load_u8 v98, v178 offset:1216
	ds_load_u8 v111, v178 offset:1280
	ds_load_u8 v65, v178 offset:1232
	ds_load_u8 v136, v178 offset:1168
	ds_load_u8 v202, v178 offset:1248
	ds_load_u8 v204, v178 offset:1184
	ds_load_u8 v198, v178 offset:1264
	ds_load_u8 v199, v178 offset:1200
	ds_load_u8 v117, v178 offset:1152
	ds_load_u8 v123, v178 offset:1088
	ds_load_u8 v113, v178 offset:1104
	ds_load_u8 v115, v178 offset:1040
	ds_load_u8 v103, v178 offset:1120
	ds_load_u8 v105, v178 offset:1056
	ds_load_u8 v167, v178 offset:1136
	ds_load_u8 v188, v178 offset:1072
	ds_load_u8 v0, v178 offset:1472
	ds_load_u8 v196, v178 offset:1536
	ds_load_u8 v219, v178 offset:1488
	ds_load_u8 v221, v178 offset:1424
	ds_load_u8 v213, v178 offset:1504
	ds_load_u8 v214, v178 offset:1440
	ds_load_u8 v210, v178 offset:1520
	ds_load_u8 v211, v178 offset:1456
	ds_load_u8 v169, v178 offset:1408
	ds_load_u8 v67, v178 offset:1344
	ds_load_u8 v170, v178 offset:1360
	ds_load_u8 v69, v178 offset:1296
	ds_load_u8 v171, v178 offset:1376
	ds_load_u8 v172, v178 offset:1312
	ds_load_u8 v222, v178 offset:1392
	ds_load_u8 v224, v178 offset:1328
	ds_load_u8 v99, v178 offset:1984
	ds_load_u8 v107, v178 offset:2000
	ds_load_u8 v200, v178 offset:2016
	ds_load_u8 v164, v178 offset:1936
	ds_load_u8 v203, v178 offset:1952
	ds_load_u8 v197, v178 offset:1968
	ds_load_u8 v114, v178 offset:1920
	ds_load_u8 v118, v178 offset:1856
	ds_load_u8 v108, v178 offset:1872
	ds_load_u8 v190, v178 offset:1808
	ds_load_u8 v165, v178 offset:1888
	ds_load_u8 v100, v178 offset:1824
	ds_load_u8 v205, v178 offset:1904
	ds_load_u8 v206, v178 offset:1840
	ds_load_u8 v216, v178 offset:1728
	ds_load_u8 v131, v178 offset:1792
	ds_load_u8 v119, v178 offset:1744
	ds_load_u8 v121, v178 offset:1680
	ds_load_u8 v191, v178 offset:1760
	ds_load_u8 v207, v178 offset:1696
	ds_load_u8 v106, v178 offset:1776
	ds_load_u8 v109, v178 offset:1712
	ds_load_u8 v173, v178 offset:1664
	ds_load_u8 v174, v178 offset:1600
	ds_load_u8 v66, v178 offset:1616
	ds_load_u8 v175, v178 offset:1552
	ds_load_u8 v218, v178 offset:1632
	ds_load_u8 v220, v178 offset:1568
	ds_load_u8 v215, v178 offset:1648
	ds_load_u8 v217, v178 offset:1584
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v181, v225
	ds_store_b8 v181, v227 offset:512
	ds_store_b8 v181, v229 offset:1024
	ds_store_b8 v181, v231 offset:1536
	ds_store_b8 v181, v233 offset:2048
	ds_store_b8 v181, v235 offset:2560
	ds_store_b8 v181, v237 offset:3072
	ds_store_b8 v181, v239 offset:3584
	ds_store_b8 v181, v241 offset:4096
	ds_store_b8 v181, v243 offset:4608
	ds_store_b8 v181, v245 offset:5120
	ds_store_b8 v181, v247 offset:5632
	ds_store_b8 v181, v249 offset:6144
	ds_store_b8 v181, v251 offset:6656
	ds_store_b8 v181, v253 offset:7168
	ds_store_b8 v181, v255 offset:7680
	v_add_nc_u32_e32 v181, 0, v87
	ds_store_b8 v181, v226
	ds_store_b8 v181, v228 offset:512
	ds_store_b8 v181, v230 offset:1024
	ds_store_b8 v181, v232 offset:1536
	ds_store_b8 v181, v234 offset:2048
	ds_store_b8 v181, v236 offset:2560
	ds_store_b8 v181, v238 offset:3072
	ds_store_b8 v181, v240 offset:3584
	ds_store_b8 v181, v242 offset:4096
	ds_store_b8 v181, v244 offset:4608
	ds_store_b8 v181, v246 offset:5120
	ds_store_b8 v181, v248 offset:5632
	ds_store_b8 v181, v250 offset:6144
	ds_store_b8 v181, v252 offset:6656
	ds_store_b8 v181, v254 offset:7168
	ds_store_b8 v181, v132 offset:7680
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v132, v148, v147, 0xc0c0004
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_perm_b32 v141, v159, v155, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v134, v160, v156, 0xc0c0004
	v_perm_b32 v135, v137, v135, 0xc0c0004
	v_lshl_or_b32 v230, v140, 16, v132
	v_perm_b32 v132, v150, v149, 0xc0c0004
	v_lshl_or_b32 v229, v133, 16, v141
	v_perm_b32 v133, v143, v142, 0xc0c0004
	v_lshl_or_b32 v231, v135, 16, v134
	v_perm_b32 v134, v161, v157, 0xc0c0004
	v_perm_b32 v135, v139, v138, 0xc0c0004
	scratch_load_b64 v[159:160], off, off offset:104 ; 8-byte Folded Reload
	v_lshl_or_b32 v232, v133, 16, v132
	v_perm_b32 v132, v152, v151, 0xc0c0004
	v_perm_b32 v133, v145, v144, 0xc0c0004
	v_mov_b32_e32 v141, v86
	v_lshl_or_b32 v233, v135, 16, v134
	v_perm_b32 v134, v162, v158, 0xc0c0004
	v_perm_b32 v116, v116, v209, 0xc0c0004
	v_lshl_or_b32 v234, v133, 16, v132
	v_perm_b32 v133, v146, v223, 0xc0c0004
	s_clause 0x7                            ; 64-byte Folded Reload
	scratch_load_b64 v[145:146], off, off
	scratch_load_b64 v[160:161], off, off offset:112
	scratch_load_b64 v[146:147], off, off offset:8
	scratch_load_b64 v[147:148], off, off offset:16
	scratch_load_b64 v[148:149], off, off offset:24
	scratch_load_b64 v[149:150], off, off offset:32
	scratch_load_b64 v[150:151], off, off offset:40
	scratch_load_b64 v[151:152], off, off offset:48
	v_perm_b32 v132, v154, v153, 0xc0c0004
	scratch_load_b64 v[152:153], off, off offset:56 ; 8-byte Folded Reload
	v_lshl_or_b32 v235, v116, 16, v134
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v116, 0, v141
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[153:154], off, off offset:64
	scratch_load_b64 v[154:155], off, off offset:72
	scratch_load_b64 v[155:156], off, off offset:80
	scratch_load_b64 v[156:157], off, off offset:88
	scratch_load_b64 v[161:162], off, off offset:120
	scratch_load_b64 v[157:158], off, off offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[225:228], v116 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_lshl_or_b32 v236, v133, 16, v132
	v_perm_b32 v116, v128, v127, 0xc0c0004
	v_perm_b32 v110, v112, v110, 0xc0c0004
	v_perm_b32 v112, v179, v177, 0xc0c0004
	v_perm_b32 v127, v176, v163, 0xc0c0004
	v_perm_b32 v102, v104, v102, 0xc0c0004
	v_perm_b32 v104, v183, v180, 0xc0c0004
	v_mov_b32_e32 v141, v88
	v_perm_b32 v67, v111, v67, 0xc0c0004
	v_perm_b32 v0, v169, v0, 0xc0c0004
	v_perm_b32 v65, v136, v65, 0xc0c0004
	v_perm_b32 v98, v117, v98, 0xc0c0004
	scratch_load_b64 v[162:163], off, off offset:128 ; 8-byte Folded Reload
	v_perm_b32 v66, v175, v66, 0xc0c0004
	v_lshl_or_b32 v111, v0, 16, v67
	v_perm_b32 v0, v69, v170, 0xc0c0004
	v_perm_b32 v67, v221, v219, 0xc0c0004
	v_perm_b32 v69, v115, v113, 0xc0c0004
	v_mov_b32_e32 v140, v84
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[225:226], v[229:230], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[225:226], v[231:232], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[225:226], v[233:234], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[225:226], v[235:236], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v226, v110, 16, v116
	v_lshl_or_b32 v225, v127, 16, v112
	v_perm_b32 v110, v124, v120, 0xc0c0004
	v_perm_b32 v112, v130, v129, 0xc0c0004
	v_lshl_or_b32 v113, v67, 16, v0
	v_perm_b32 v0, v172, v171, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[227:228], v[235:236], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v129, v102, 16, v110
	v_lshl_or_b32 v128, v112, 16, v104
	v_perm_b32 v102, v208, v192, 0xc0c0004
	v_perm_b32 v104, v187, v166, 0xc0c0004
	v_perm_b32 v110, v185, v182, 0xc0c0004
	v_perm_b32 v112, v126, v125, 0xc0c0004
	v_perm_b32 v67, v105, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[227:228], v[229:230], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v209, v104, 16, v102
	v_perm_b32 v102, v168, v186, 0xc0c0004
	v_perm_b32 v104, v122, v212, 0xc0c0004
	v_lshl_or_b32 v208, v112, 16, v110
	v_perm_b32 v110, v101, v189, 0xc0c0004
	v_perm_b32 v112, v201, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[227:228], v[231:232], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v104, 16, v102
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v104, 0, v141
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[17:24], v[227:228], v[233:234], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v112, 16, v110
	v_lshl_or_b32 v112, v65, 16, v69
	v_perm_b32 v65, v214, v213, 0xc0c0004
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[124:127], v104 offset1:8
	v_mov_b32_e32 v104, v89
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v69, v204, v202, 0xc0c0004
	v_mov_b32_e32 v142, v92
	v_lshl_or_b32 v116, v65, 16, v0
	v_perm_b32 v0, v224, v222, 0xc0c0004
	v_perm_b32 v65, v211, v210, 0xc0c0004
	v_lshl_or_b32 v115, v69, 16, v67
	v_perm_b32 v67, v188, v167, 0xc0c0004
	v_perm_b32 v69, v199, v198, 0xc0c0004
	scratch_load_b64 v[187:188], off, off offset:160 ; 8-byte Folded Reload
	v_dual_mov_b32 v144, v96 :: v_dual_mov_b32 v143, v97
	v_mov_b32_e32 v139, v83
	v_lshl_or_b32 v122, v69, 16, v67
	v_perm_b32 v67, v196, v174, 0xc0c0004
	v_perm_b32 v69, v173, v216, 0xc0c0004
	v_dual_mov_b32 v138, v82 :: v_dual_mov_b32 v137, v75
	v_mov_b32_e32 v135, v81
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[101:102], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[101:102], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v101, v195, v123, 0xc0c0004
	v_lshl_or_b32 v123, v65, 16, v0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v0, 0, v104
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[49:56], v[126:127], v[225:226], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[128:129], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v110, v98, 16, v101
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[208:209], v[17:24] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[101:104], v0 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v0, v131, v118, 0xc0c0004
	v_perm_b32 v65, v114, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[124:125], v[225:226], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[128:129], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[208:209], v[25:32] neg_lo:[1,1,0]
	v_dual_mov_b32 v125, v90 :: v_dual_mov_b32 v132, v72
	v_dual_mov_b32 v134, v74 :: v_dual_mov_b32 v133, v73
	v_dual_mov_b32 v120, v76 :: v_dual_mov_b32 v141, v91
	v_dual_mov_b32 v124, v80 :: v_dual_mov_b32 v127, v95
	v_dual_mov_b32 v126, v94 :: v_dual_mov_b32 v131, v71
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[103:104], v[110:111], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[112:113], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[115:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[122:123], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v65, 16, v0
	v_perm_b32 v0, v190, v108, 0xc0c0004
	v_perm_b32 v65, v164, v107, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[110:111], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[112:113], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[115:116], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[122:123], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v65, 16, v0
	v_perm_b32 v0, v100, v165, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[165:166], off, off offset:144
	scratch_load_b64 v[166:167], off, off offset:152
	scratch_load_b64 v[163:164], off, off offset:136
	v_perm_b32 v65, v203, v200, 0xc0c0004
	v_lshl_or_b32 v102, v69, 16, v67
	v_perm_b32 v67, v121, v119, 0xc0c0004
	v_dual_mov_b32 v123, v79 :: v_dual_mov_b32 v122, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v108, v65, 16, v0
	v_perm_b32 v0, v217, v215, 0xc0c0004
	v_perm_b32 v65, v109, v106, 0xc0c0004
	v_lshl_or_b32 v104, v67, 16, v66
	v_perm_b32 v66, v220, v218, 0xc0c0004
	v_perm_b32 v67, v207, v191, 0xc0c0004
	v_mov_b32_e32 v121, v77
	v_lshl_or_b32 v109, v65, 16, v0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v0, 0, v125
	v_mov_b32_e32 v125, v93
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_lshl_or_b32 v107, v67, 16, v66
	v_perm_b32 v66, v206, v205, 0xc0c0004
	v_perm_b32 v67, v197, v193, 0xc0c0004
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[98:101], v0 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_lshl_or_b32 v110, v67, 16, v66
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[98:99], v[102:103], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[102:103], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[104:105], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[107:108], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[107:108], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[109:110], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[109:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %Flow
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_clause 0x19                           ; 104-byte Folded Reload
	scratch_load_b32 v169, off, off offset:388
	scratch_load_b32 v170, off, off offset:392
	scratch_load_b32 v171, off, off offset:396
	scratch_load_b32 v172, off, off offset:400
	scratch_load_b32 v173, off, off offset:404
	scratch_load_b32 v174, off, off offset:408
	scratch_load_b32 v175, off, off offset:412
	scratch_load_b32 v176, off, off offset:416
	scratch_load_b32 v177, off, off offset:420
	scratch_load_b32 v179, off, off offset:424
	scratch_load_b32 v180, off, off offset:428
	scratch_load_b32 v181, off, off offset:432
	scratch_load_b32 v183, off, off offset:436
	scratch_load_b32 v182, off, off offset:440
	scratch_load_b32 v185, off, off offset:444
	scratch_load_b32 v186, off, off offset:448
	scratch_load_b32 v110, off, off offset:320
	scratch_load_b32 v111, off, off offset:324
	scratch_load_b32 v112, off, off offset:328
	scratch_load_b32 v113, off, off offset:332
	scratch_load_b32 v114, off, off offset:336
	scratch_load_b32 v115, off, off offset:340
	scratch_load_b32 v116, off, off offset:344
	scratch_load_b32 v117, off, off offset:348
	scratch_load_b32 v118, off, off offset:352
	scratch_load_b32 v119, off, off offset:356
	v_dual_mov_b32 v129, v70 :: v_dual_mov_b32 v168, v85
.LBB0_10:                               ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25 is_stmt 1             ; ragged.py:1452:25
	s_sub_i32 s39, s74, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s48, s39, 64
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s38, s48
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 21                          ; ragged.py:0:21
	scratch_load_b32 v66, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s54, s38, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s66, s62
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s55, s54, s77
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s67, s63
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s55, s55, s72
	v_mov_b32_e32 v85, v168
	s_add_i32 s55, s55, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v98, s55, v132
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v168, 0, v85
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v196, s54, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v196
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s39, s48, v0
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v0, 4, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v197, s54, v0
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s40, s48, v0
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v0, 8, v66
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v194, s54, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v194
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s41, s48, v0
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s41, vcc_lo, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v98, 0x80000000, v98, s41
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s54, v0
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s43, s48, v65
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 16, v66
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s43, vcc_lo, s43
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v195, s54, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s3, v195
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s42, s48, v65
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 20, v66
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s42, vcc_lo, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v198, s54, v65
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s3, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s44, s48, v65
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 24, v66
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v199, s54, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s3, v199
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s49, s82, v199
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s46, s48, v65
	.loc	1 1485 30                       ; ragged.py:1485:30
	scratch_load_b32 v65, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v200, s54, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s3, v200
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s50, s82, v200
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s45, s48, v65
	.loc	1 1485 30                       ; ragged.py:1485:30
	scratch_load_b64 v[65:66], off, off offset:456 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s55, v142
	v_or_b32_e32 v193, s54, v65
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s54, s54, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v113, s54, v126
	v_add_nc_u32_e32 v114, s54, v127
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s3, v193
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s82, v0
	v_add_nc_u32_e32 v0, s55, v133
	v_add_nc_u32_e32 v115, s54, v144
	v_add_nc_u32_e32 v116, s54, v146
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s38, s48, v65
	v_add_nc_u32_e32 v65, s55, v141
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s43
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s43, vcc_lo, s44
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s48, s82, v198
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s3, s3, s81
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s43
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s43, vcc_lo, s46
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v0, v0, s[60:63], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s43
	s_clause 0x1
	buffer_load_u8 v67, v65, s[60:63], 0 offen
	buffer_load_u8 v66, v66, s[60:63], 0 offen
	v_add_nc_u32_e32 v65, s55, v137
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s43, vcc_lo, s45
	v_add_nc_u32_e32 v117, s54, v148
	v_add_nc_u32_e32 v118, s54, v150
	v_add_nc_u32_e32 v119, s54, v151
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s43
	v_add_nc_u32_e32 v126, s54, v187
	buffer_load_u8 v69, v65, s[60:63], 0 offen
	v_add_nc_u32_e32 v65, s55, v134
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s42
	s_clause 0x1
	buffer_load_u8 v111, v65, s[60:63], 0 offen
	buffer_load_u8 v112, v98, s[60:63], 0 offen
	v_add_nc_u32_e32 v98, s54, v143
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v65.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v109.l, v0.l, v65.l, s3
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(4)
	v_and_b16 v65.l, v67.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s48, s81
	v_add_nc_u32_e32 v0, s55, v129
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v109.h, v67.l, v65.l, s3
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v65.l, v66.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s49, s81
	v_add_nc_u32_e32 v67, s54, v121
	v_add_nc_u32_e32 v121, s54, v155
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v110.l, v66.l, v65.l, s3
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v65.l, v69.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s50, s81
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v110.h, v69.l, v65.l, s3
	v_add_nc_u32_e32 v65, s55, v131
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s39
	v_add_nc_u32_e32 v69, s54, v122
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s40
	v_add_nc_u32_e32 v122, s54, v159
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s3, s0, s38
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v0, v0, s[60:63], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s39, s82, v194
	v_cmp_eq_u32_e64 s40, s82, v195
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v66, v65, s[60:63], 0 offen
	v_add_nc_u32_e32 v65, s54, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s6, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s8, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v214, v65, s[64:67], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s10, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v215, v67, s[64:67], 0 offen
	v_cndmask_b32_e64 v98, 0x80000000, v98, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s12, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v107, v69, s[64:67], 0 offen
	v_add_nc_u32_e32 v65, s54, v123
	v_add_nc_u32_e32 v123, s54, v157
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v99, 0x80000000, v65, s3
	v_add_nc_u32_e32 v65, s54, v145
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s14, s38
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v67, 0x80000000, v65, s3
	v_add_nc_u32_e32 v65, s54, v147
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s16, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v164, v99, s[64:67], 0 offen
	buffer_load_u8 v136, v67, s[64:67], 0 offen
	v_add_nc_u32_e32 v67, s54, v124
	v_cndmask_b32_e64 v69, 0x80000000, v65, s3
	buffer_load_u8 v65, v98, s[64:67], 0 offen
	v_add_nc_u32_e32 v98, s54, v149
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s38
	v_add_nc_u32_e32 v124, s54, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v100, 0x80000000, v98, s3
	buffer_load_u8 v98, v69, s[64:67], 0 offen
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s20, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	buffer_load_u8 v99, v100, s[64:67], 0 offen
	v_add_nc_u32_e32 v69, s54, v152
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s22, s38
	v_add_nc_u32_e32 v100, s54, v154
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v99.h, v112.l, 15
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s24, s38
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v102, 0x80000000, v100, s3
	s_clause 0x1
	buffer_load_u8 v100, v67, s[64:67], 0 offen
	buffer_load_u8 v101, v69, s[64:67], 0 offen
	v_add_nc_u32_e32 v67, s54, v156
	v_add_nc_u32_e32 v69, s54, v160
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s26, s38
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v100.h, v111.l, 15
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s28, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v103, v102, s[64:67], 0 offen
	buffer_load_u8 v102, v67, s[64:67], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	v_add_nc_u32_e32 v67, s54, v161
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s30, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v104, v69, s[64:67], 0 offen
	v_add_nc_u32_e32 v69, s54, v163
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s33, s38
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	s_clause 0x1
	buffer_load_u8 v106, v67, s[64:67], 0 offen
	buffer_load_u8 v105, v69, s[64:67], 0 offen
	v_add_nc_u32_e32 v67, s54, v166
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s35, s38
	v_add_nc_u32_e32 v69, s54, v125
	v_add_nc_u32_e32 v125, s54, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s1, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v108, v67, s[64:67], 0 offen
	v_add_nc_u32_e32 v67, s54, v120
	v_add_nc_u32_e32 v120, s54, v153
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s7, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s9, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s13, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v115, 0x80000000, v115, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s15, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s17, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v117, 0x80000000, v117, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s19, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v118, 0x80000000, v118, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s21, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v119, 0x80000000, v119, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s23, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v120, 0x80000000, v120, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s25, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s27, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v122, 0x80000000, v122, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s29, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v123, 0x80000000, v123, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s31, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v124, 0x80000000, v124, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s34, s38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v125, 0x80000000, v125, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s36, s38
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s38, s82, v197
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v126, 0x80000000, v126, s3
	s_clause 0xf
	buffer_load_u8 v207, v114, s[64:67], 0 offen
	buffer_load_u8 v210, v113, s[64:67], 0 offen
	buffer_load_u8 v212, v69, s[64:67], 0 offen
	buffer_load_u8 v213, v67, s[64:67], 0 offen
	buffer_load_u8 v203, v118, s[64:67], 0 offen
	buffer_load_u8 v206, v117, s[64:67], 0 offen
	buffer_load_u8 v209, v116, s[64:67], 0 offen
	buffer_load_u8 v211, v115, s[64:67], 0 offen
	buffer_load_u8 v200, v122, s[64:67], 0 offen
	buffer_load_u8 v202, v121, s[64:67], 0 offen
	buffer_load_u8 v205, v120, s[64:67], 0 offen
	buffer_load_u8 v208, v119, s[64:67], 0 offen
	buffer_load_u8 v198, v126, s[64:67], 0 offen
	buffer_load_u8 v199, v125, s[64:67], 0 offen
	buffer_load_u8 v201, v124, s[64:67], 0 offen
	buffer_load_u8 v204, v123, s[64:67], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s82, v196
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v67, 0, v184
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v113, 0, v138
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s81
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v69, 0, v135
	ds_store_b8_d16_hi v67, v109 offset:1280
	ds_store_b8 v69, v109
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	v_and_b16 v65.h, v0.l, 15
	v_and_b16 v98.h, v66.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v0.l, v65.h, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s38, s81
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v0, 0, v139
	v_cndmask_b16 v98.h, v66.l, v98.h, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s39, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v99.h, v112.l, v99.h, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s40, s81
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v100.h, v111.l, v100.h, s3
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s82, v193
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b8_d16_hi v67, v65
	ds_store_b8_d16_hi v67, v98 offset:256
	ds_store_b8_d16_hi v67, v99 offset:512
	ds_store_b8_d16_hi v67, v100 offset:1024
	ds_store_b8 v67, v110 offset:1536
	ds_store_b8_d16_hi v113, v110
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.h, v214.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s81
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v194, v0
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v198.h, v214.l, v65.h, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v65.h, v215.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v0, 0, v140
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v199.h, v215.l, v65.h, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v65.h, v107.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v200.h, v107.l, v65.h, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.h, v65.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v201.h, v65.l, v65.h, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v164.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v202.h, v164.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v136.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v203.h, v136.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v98.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v204.h, v98.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v99.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v205.h, v99.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v100.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v206.h, v100.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v101.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v207.h, v101.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v103.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v208.h, v103.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v209.h, v102.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v104.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v210.h, v104.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v106.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v211.h, v106.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v105.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v212.h, v105.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v108.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v213.h, v108.l, v65.l, s3
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	ds_load_u8 v193, v0
	ds_load_u8 v0, v178 offset:192
	ds_load_u8 v66, v178 offset:128
	ds_load_u8 v67, v178 offset:208
	ds_load_u8 v69, v178 offset:144
	ds_load_u8 v132, v178 offset:224
	ds_load_u8 v133, v178 offset:160
	ds_load_u8 v134, v178 offset:240
	ds_load_u8 v135, v178 offset:176
	ds_load_u8 v137, v178 offset:448
	ds_load_u8 v138, v178 offset:384
	ds_load_u8 v139, v178 offset:464
	ds_load_u8 v140, v178 offset:400
	ds_load_u8 v141, v178 offset:480
	ds_load_u8 v142, v178 offset:416
	ds_load_u8 v143, v178 offset:496
	ds_load_u8 v144, v178 offset:432
	ds_load_u8 v145, v178 offset:320
	ds_load_u8 v146, v178 offset:256
	ds_load_u8 v147, v178 offset:336
	ds_load_u8 v148, v178 offset:272
	ds_load_u8 v149, v178 offset:352
	ds_load_u8 v150, v178 offset:288
	ds_load_u8 v151, v178 offset:368
	ds_load_u8 v152, v178 offset:304
	ds_load_u8 v153, v178 offset:64
	ds_load_u8 v154, v178 offset:80
	ds_load_u8 v155, v178 offset:96
	ds_load_u8 v156, v178 offset:112
	ds_load_u8 v157, v178
	ds_load_u8 v158, v178 offset:16
	ds_load_u8 v159, v178 offset:32
	ds_load_u8 v160, v178 offset:48
	ds_load_u8 v190, v178 offset:960
	ds_load_u8 v192, v178 offset:896
	ds_load_u8 v195, v178 offset:1024
	ds_load_u8 v247, v178 offset:976
	ds_load_u8 v252, v178 offset:912
	ds_load_u8 v238, v178 offset:992
	ds_load_u8 v241, v178 offset:928
	ds_load_u8 v226, v178 offset:944
	ds_load_u8 v117, v178 offset:832
	ds_load_u8 v120, v178 offset:768
	ds_load_u8 v100, v178 offset:848
	ds_load_u8 v103, v178 offset:784
	ds_load_u8 v65, v178 offset:864
	ds_load_u8 v164, v178 offset:800
	ds_load_u8 v243, v178 offset:880
	ds_load_u8 v246, v178 offset:816
	ds_load_u8 v127, v178 offset:704
	ds_load_u8 v128, v178 offset:640
	ds_load_u8 v112, v178 offset:720
	ds_load_u8 v114, v178 offset:656
	ds_load_u8 v106, v178 offset:736
	ds_load_u8 v109, v178 offset:672
	ds_load_u8 v165, v178 offset:752
	ds_load_u8 v102, v178 offset:688
	ds_load_u8 v161, v178 offset:576
	ds_load_u8 v162, v178 offset:512
	ds_load_u8 v129, v178 offset:592
	ds_load_u8 v130, v178 offset:528
	ds_load_u8 v125, v178 offset:608
	ds_load_u8 v126, v178 offset:544
	ds_load_u8 v119, v178 offset:624
	ds_load_u8 v123, v178 offset:560
	ds_load_u8 v242, v178 offset:1216
	ds_load_u8 v254, v178 offset:1280
	ds_load_u8 v224, v178 offset:1232
	ds_load_u8 v227, v178 offset:1168
	ds_load_u8 v221, v178 offset:1248
	ds_load_u8 v222, v178 offset:1184
	ds_load_u8 v215, v178 offset:1264
	ds_load_u8 v217, v178 offset:1200
	ds_load_u8 v189, v178 offset:1152
	ds_load_u8 v99, v178 offset:1088
	ds_load_u8 v244, v178 offset:1104
	ds_load_u8 v248, v178 offset:1040
	ds_load_u8 v236, v178 offset:1120
	ds_load_u8 v239, v178 offset:1056
	ds_load_u8 v229, v178 offset:1136
	ds_load_u8 v230, v178 offset:1072
	ds_load_u8 v118, v178 offset:1472
	ds_load_u8 v197, v178 offset:1536
	ds_load_u8 v98, v178 offset:1488
	ds_load_u8 v104, v178 offset:1424
	ds_load_u8 v166, v178 offset:1504
	ds_load_u8 v187, v178 offset:1440
	ds_load_u8 v250, v178 offset:1520
	ds_load_u8 v253, v178 offset:1456
	ds_load_u8 v131, v178 offset:1408
	ds_load_u8 v163, v178 offset:1344
	ds_load_u8 v122, v178 offset:1360
	ds_load_u8 v124, v178 offset:1296
	ds_load_u8 v113, v178 offset:1376
	ds_load_u8 v115, v178 offset:1312
	ds_load_u8 v108, v178 offset:1392
	ds_load_u8 v110, v178 offset:1328
	ds_load_u8 v234, v178 offset:1984
	ds_load_u8 v220, v178 offset:2000
	ds_load_u8 v214, v178 offset:2016
	ds_load_u8 v223, v178 offset:1936
	ds_load_u8 v216, v178 offset:1952
	ds_load_u8 v196, v178 offset:1968
	ds_load_u8 v251, v178 offset:1920
	ds_load_u8 v136, v178 offset:1856
	ds_load_u8 v232, v178 offset:1872
	ds_load_u8 v235, v178 offset:1808
	ds_load_u8 v225, v178 offset:1888
	ds_load_u8 v228, v178 offset:1824
	ds_load_u8 v218, v178 offset:1904
	ds_load_u8 v219, v178 offset:1840
	ds_load_u8 v191, v178 offset:1728
	ds_load_u8 v111, v178 offset:1792
	ds_load_u8 v245, v178 offset:1744
	ds_load_u8 v249, v178 offset:1680
	ds_load_u8 v237, v178 offset:1760
	ds_load_u8 v240, v178 offset:1696
	ds_load_u8 v231, v178 offset:1776
	ds_load_u8 v233, v178 offset:1712
	ds_load_u8 v116, v178 offset:1664
	ds_load_u8 v121, v178 offset:1600
	ds_load_u8 v101, v178 offset:1616
	ds_load_u8 v105, v178 offset:1552
	ds_load_u8 v167, v178 offset:1632
	ds_load_u8 v188, v178 offset:1568
	ds_load_u8 v255, v178 offset:1648
	ds_load_u8 v107, v178 offset:1584
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v168, v198
	ds_store_b8_d16_hi v168, v199 offset:512
	ds_store_b8_d16_hi v168, v200 offset:1024
	ds_store_b8_d16_hi v168, v201 offset:1536
	ds_store_b8_d16_hi v168, v202 offset:2048
	ds_store_b8_d16_hi v168, v203 offset:2560
	ds_store_b8_d16_hi v168, v204 offset:3072
	ds_store_b8_d16_hi v168, v205 offset:3584
	ds_store_b8_d16_hi v168, v206 offset:4096
	ds_store_b8_d16_hi v168, v207 offset:4608
	ds_store_b8_d16_hi v168, v208 offset:5120
	ds_store_b8_d16_hi v168, v209 offset:5632
	ds_store_b8_d16_hi v168, v210 offset:6144
	ds_store_b8_d16_hi v168, v211 offset:6656
	ds_store_b8_d16_hi v168, v212 offset:7168
	ds_store_b8_d16_hi v168, v213 offset:7680
	v_add_nc_u32_e32 v168, 0, v87
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v138, v157, v153, 0xc0c0004
	v_perm_b32 v0, v66, v0, 0xc0c0004
	v_mov_b32_e32 v66, v86
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_perm_b32 v69, v133, v132, 0xc0c0004
	v_dual_mov_b32 v132, v72 :: v_dual_mov_b32 v133, v73
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v201.h, v207.l, 15
	v_and_b16 v200.h, v210.l, 15
	v_and_b16 v199.h, v212.l, 15
	v_and_b16 v198.h, v213.l, 15
	v_and_b16 v205.h, v203.l, 15
	v_and_b16 v204.h, v206.l, 15
	v_and_b16 v203.h, v209.l, 15
	v_and_b16 v202.h, v211.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v198.h, v213.l, v198.h, s3
	v_cndmask_b16 v203.l, v203.l, v205.h, s3
	v_cndmask_b16 v204.h, v206.l, v204.h, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v206.l, v205.l, 15
	v_and_b16 v205.h, v208.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v199.h, v212.l, v199.h, s3
	v_cndmask_b16 v200.h, v210.l, v200.h, s3
	v_cndmask_b16 v201.h, v207.l, v201.h, s3
	v_cndmask_b16 v205.l, v205.l, v206.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v206.l, v202.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v202.h, v211.l, v202.h, s3
	v_cndmask_b16 v203.h, v209.l, v203.h, s3
	v_cndmask_b16 v205.h, v208.l, v205.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v202.l, v202.l, v206.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v206.l, v200.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v200.l, v200.l, v206.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v206.l, v204.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v204.l, v204.l, v206.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v206.l, v201.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v201.l, v201.l, v206.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v206.l, v199.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v199.l, v199.l, v206.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v206.l, v198.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v198.l, v198.l, v206.l, s3
	ds_store_b8_d16_hi v168, v198
	ds_store_b8_d16_hi v168, v199 offset:512
	ds_store_b8_d16_hi v168, v200 offset:1024
	ds_store_b8_d16_hi v168, v201 offset:1536
	ds_store_b8_d16_hi v168, v202 offset:2048
	ds_store_b8_d16_hi v168, v203 offset:2560
	ds_store_b8_d16_hi v168, v204 offset:3072
	ds_store_b8 v168, v203 offset:3584
	ds_store_b8_d16_hi v168, v205 offset:4096
	ds_store_b8 v168, v205 offset:4608
	ds_store_b8 v168, v202 offset:5120
	ds_store_b8 v168, v200 offset:5632
	ds_store_b8 v168, v204 offset:6144
	ds_store_b8 v168, v201 offset:6656
	ds_store_b8 v168, v199 offset:7168
	ds_store_b8 v168, v198 offset:7680
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	v_lshl_or_b32 v202, v0, 16, v138
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v0, 0, v66
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v203, v137, 16, v145
	scratch_load_b64 v[145:146], off, off   ; 8-byte Folded Reload
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[198:201], v0 offset1:8
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v0, v148, v147, 0xc0c0004
	v_perm_b32 v66, v140, v139, 0xc0c0004
	v_perm_b32 v137, v158, v154, 0xc0c0004
	v_dual_mov_b32 v168, v85 :: v_dual_mov_b32 v85, v88
	scratch_load_b64 v[146:147], off, off offset:8 ; 8-byte Folded Reload
	v_mov_b32_e32 v138, v82
	v_dual_mov_b32 v140, v84 :: v_dual_mov_b32 v139, v83
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[198:199], v[202:203], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[200:201], v[202:203], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v203, v66, 16, v0
	v_perm_b32 v0, v150, v149, 0xc0c0004
	v_perm_b32 v66, v142, v141, 0xc0c0004
	v_lshl_or_b32 v202, v67, 16, v137
	v_perm_b32 v67, v159, v155, 0xc0c0004
	v_mov_b32_e32 v137, v75
	v_mov_b32_e32 v141, v91
	v_lshl_or_b32 v205, v66, 16, v0
	v_perm_b32 v0, v152, v151, 0xc0c0004
	v_perm_b32 v66, v144, v143, 0xc0c0004
	v_lshl_or_b32 v204, v69, 16, v67
	v_perm_b32 v67, v160, v156, 0xc0c0004
	v_perm_b32 v69, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[198:199], v[202:203], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v207, v66, 16, v0
	v_perm_b32 v0, v120, v117, 0xc0c0004
	v_perm_b32 v66, v192, v190, 0xc0c0004
	v_lshl_or_b32 v206, v69, 16, v67
	v_perm_b32 v69, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[200:201], v[202:203], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[198:199], v[204:205], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v66, 16, v0
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v0, 0, v85
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[17:24], v[200:201], v[204:205], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[198:199], v[206:207], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[206:207], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v67, v162, v161, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[198:201], v0 offset1:8
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v0, v103, v100, 0xc0c0004
	v_perm_b32 v66, v252, v247, 0xc0c0004
	v_mov_b32_e32 v85, v90
	v_lshl_or_b32 v127, v69, 16, v67
	v_perm_b32 v67, v130, v129, 0xc0c0004
	v_perm_b32 v69, v114, v112, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v114, off, off offset:336
	scratch_load_b32 v112, off, off offset:328
	v_dual_mov_b32 v144, v96 :: v_dual_mov_b32 v143, v97
	v_dual_mov_b32 v142, v92 :: v_dual_mov_b32 v135, v81
	v_mov_b32_e32 v134, v74
	v_mov_b32_e32 v129, v70
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[198:199], v[127:128], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[200:201], v[127:128], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v66, 16, v0
	v_perm_b32 v0, v164, v65, 0xc0c0004
	v_perm_b32 v65, v241, v238, 0xc0c0004
	v_perm_b32 v66, v126, v125, 0xc0c0004
	v_lshl_or_b32 v127, v69, 16, v67
	v_mov_b32_e32 v69, v89
	v_perm_b32 v67, v109, v106, 0xc0c0004
	v_lshl_or_b32 v126, v65, 16, v0
	v_perm_b32 v0, v123, v119, 0xc0c0004
	v_perm_b32 v65, v102, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[198:199], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v125, v67, 16, v66
	v_perm_b32 v66, v246, v243, 0xc0c0004
	v_perm_b32 v67, v226, v194, 0xc0c0004
	v_lshl_or_b32 v102, v65, 16, v0
	v_perm_b32 v0, v254, v163, 0xc0c0004
	v_perm_b32 v65, v131, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[200:201], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v67, 16, v66
	v_perm_b32 v66, v195, v99, 0xc0c0004
	v_perm_b32 v67, v189, v242, 0xc0c0004
	v_lshl_or_b32 v100, v65, 16, v0
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v0, 0, v69
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v65, v104, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[198:199], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v67, 16, v66
	v_perm_b32 v66, v248, v244, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[117:120], v0 offset1:8
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v0, v124, v122, 0xc0c0004
	v_perm_b32 v67, v227, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[200:201], v[125:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[198:199], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v123, v79
	v_lshl_or_b32 v98, v67, 16, v66
	v_perm_b32 v66, v239, v236, 0xc0c0004
	v_perm_b32 v67, v222, v221, 0xc0c0004
	v_dual_mov_b32 v127, v95 :: v_dual_mov_b32 v126, v94
	v_mov_b32_e32 v125, v93
	v_mov_b32_e32 v131, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v102, v67, 16, v66
	v_perm_b32 v66, v230, v229, 0xc0c0004
	v_perm_b32 v67, v217, v215, 0xc0c0004
	v_mov_b32_e32 v124, v80
	v_mov_b32_e32 v122, v78
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[117:118], v[99:100], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[119:120], v[99:100], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v65, 16, v0
	v_perm_b32 v0, v115, v113, 0xc0c0004
	v_perm_b32 v65, v187, v166, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v115, off, off offset:340
	scratch_load_b32 v113, off, off offset:332
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[119:120], v[98:99], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v65, 16, v0
	v_perm_b32 v0, v110, v108, 0xc0c0004
	v_perm_b32 v65, v253, v250, 0xc0c0004
	v_lshl_or_b32 v108, v67, 16, v66
	v_perm_b32 v66, v197, v121, 0xc0c0004
	v_perm_b32 v67, v116, v191, 0xc0c0004
	scratch_load_b32 v116, off, off offset:344 ; 4-byte Folded Reload
	v_lshl_or_b32 v109, v65, 16, v0
	v_perm_b32 v0, v111, v136, 0xc0c0004
	v_perm_b32 v65, v251, v234, 0xc0c0004
	v_lshl_or_b32 v98, v67, 16, v66
	v_perm_b32 v66, v105, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[108:109], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[119:120], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v65, 16, v0
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v0, 0, v85
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v65, v223, v220, 0xc0c0004
	v_perm_b32 v67, v249, v245, 0xc0c0004
	scratch_load_b64 v[147:148], off, off offset:16 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[102:103], v[17:24] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[108:111], v0 offset1:8
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v0, v235, v232, 0xc0c0004
	s_clause 0x9                            ; 76-byte Folded Reload
	scratch_load_b32 v119, off, off offset:356
	scratch_load_b64 v[148:149], off, off offset:24
	scratch_load_b64 v[149:150], off, off offset:32
	scratch_load_b64 v[150:151], off, off offset:40
	scratch_load_b64 v[151:152], off, off offset:48
	scratch_load_b64 v[152:153], off, off offset:56
	scratch_load_b64 v[153:154], off, off offset:64
	scratch_load_b64 v[154:155], off, off offset:72
	scratch_load_b64 v[159:160], off, off offset:104
	scratch_load_b64 v[155:156], off, off offset:80
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[102:103], v[25:32] neg_lo:[1,1,0]
	s_clause 0x8                            ; 64-byte Folded Reload
	scratch_load_b64 v[156:157], off, off offset:88
	scratch_load_b64 v[160:161], off, off offset:112
	scratch_load_b64 v[157:158], off, off offset:96
	scratch_load_b64 v[161:162], off, off offset:120
	scratch_load_b64 v[162:163], off, off offset:128
	scratch_load_b64 v[165:166], off, off offset:144
	scratch_load_b64 v[163:164], off, off offset:136
	scratch_load_b32 v118, off, off offset:352
	scratch_load_b32 v117, off, off offset:348
	v_mov_b32_e32 v120, v76
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[108:109], v[98:99], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[110:111], v[98:99], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v65, 16, v0
	v_lshl_or_b32 v98, v67, 16, v66
	v_perm_b32 v0, v228, v225, 0xc0c0004
	v_perm_b32 v65, v216, v214, 0xc0c0004
	v_perm_b32 v66, v188, v167, 0xc0c0004
	v_perm_b32 v67, v240, v237, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[187:188], off, off offset:160
	scratch_load_b64 v[166:167], off, off offset:152
	v_wmma_i32_16x16x16_iu4 v[33:40], v[110:111], v[98:99], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v65, 16, v0
	v_perm_b32 v0, v107, v255, 0xc0c0004
	v_lshl_or_b32 v100, v67, 16, v66
	v_perm_b32 v65, v233, v231, 0xc0c0004
	v_perm_b32 v66, v219, v218, 0xc0c0004
	v_perm_b32 v67, v196, v193, 0xc0c0004
	v_mov_b32_e32 v121, v77
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v65, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[108:109], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v67, 16, v66
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[100:101], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[102:103], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v111, off, off offset:324
	scratch_load_b32 v110, off, off offset:320
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[102:103], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_12:                               ; %Flow566
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	scratch_load_b32 v46, off, off offset:472 ; 4-byte Folded Reload
	v_and_b32_e32 v36, 15, v184
.LBB0_13:                               ; %._crit_edge87
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v184
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v46
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s14, s51, s73
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_and_or_b32 v3, v0, 1, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v0, s58, v4
	v_or_b32_e32 v11, s58, v7
	v_or_b32_e32 v12, s58, v8
	v_or_b32_e32 v2, s58, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s58, v5
	v_or_b32_e32 v13, s58, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s73, v0
	v_cmp_gt_i32_e64 s6, s73, v11
	v_cmp_gt_i32_e64 s7, s73, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s58, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s73, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s58, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s73, v1
	v_cmp_gt_i32_e64 s8, s73, v13
	v_cmp_gt_i32_e64 s9, s73, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s58, v11
	v_or_b32_e32 v1, s58, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s73, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s73, v36
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s73, v0
	v_cmp_gt_i32_e64 s11, s73, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s58, v13
	v_or_b32_e32 v1, s58, v15
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s58, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s73, v0
	v_cmp_gt_i32_e64 s3, s73, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s58, v16
	v_or_b32_e32 v20, s58, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s14, s58, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s58, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s73, v21
	v_cmp_gt_i32_e64 s14, s73, v1
	v_cmp_gt_i32_e64 s16, s73, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s73, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s16
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s15
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s73, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v119, v22, s[56:59], 0 offen
	buffer_store_b32 v118, v23, s[56:59], 0 offen
	buffer_store_b32 v117, v21, s[56:59], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s18, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v116, v2, s[56:59], 0 offen
	buffer_store_b32 v115, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v11, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v114, v22, s[56:59], 0 offen
	buffer_store_b32 v113, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v10, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v23, v0, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v112, v2, s[56:59], 0 offen
	buffer_store_b32 v111, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v7, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s7
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v19, s73, 4, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s18, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v110, v22, s[56:59], 0 offen
	buffer_store_b32 v64, v23, s[56:59], 0 offen
	v_add_lshl_u32 v22, v0, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_lshl_add_u32 v20, s73, 5, v0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_add_lshl_u32 v0, v0, v4, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s18, s5, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v63, v2, s[56:59], 0 offen
	buffer_store_b32 v62, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s18, s5, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	s_clause 0x1
	buffer_store_b32 v61, v22, s[56:59], 0 offen
	buffer_store_b32 v60, v23, s[56:59], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v59, v0, s[56:59], 0 offen
	buffer_store_b32 v58, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v57, v21, s[56:59], 0 offen
	buffer_store_b32 v55, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v54, v0, s[56:59], 0 offen
	buffer_store_b32 v53, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v52, v21, s[56:59], 0 offen
	buffer_store_b32 v51, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v50, v0, s[56:59], 0 offen
	buffer_store_b32 v49, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v48, v21, s[56:59], 0 offen
	buffer_store_b32 v47, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v45, v0, s[56:59], 0 offen
	buffer_store_b32 v44, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s0
	s_and_b32 s4, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_store_b32 v43, v21, s[56:59], 0 offen
	buffer_store_b32 v42, v22, s[56:59], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v41, v0, s[56:59], 0 offen
	buffer_store_b32 v40, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v39, v19, s[56:59], 0 offen
	buffer_store_b32 v38, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v37, v0, s[56:59], 0 offen
	buffer_store_b32 v35, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v34, v19, s[56:59], 0 offen
	buffer_store_b32 v33, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v32, v0, s[56:59], 0 offen
	buffer_store_b32 v31, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v19, s[56:59], 0 offen
	buffer_store_b32 v29, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v28, v0, s[56:59], 0 offen
	buffer_store_b32 v27, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v26, v19, s[56:59], 0 offen
	buffer_store_b32 v25, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v24, v0, s[56:59], 0 offen
	buffer_store_b32 v186, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	s_clause 0x1
	buffer_store_b32 v185, v3, s[56:59], 0 offen
	buffer_store_b32 v182, v17, s[56:59], 0 offen
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v13, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_add_lshl_u32 v13, v1, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v183, v0, s[56:59], 0 offen
	buffer_store_b32 v181, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v180, v3, s[56:59], 0 offen
	buffer_store_b32 v179, v13, s[56:59], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v176, v0, s[56:59], 0 offen
	buffer_store_b32 v175, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v173, v3, s[56:59], 0 offen
	buffer_store_b32 v172, v9, s[56:59], 0 offen
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v170, v0, s[56:59], 0 offen
	buffer_store_b32 v169, v2, s[56:59], 0 offen
	buffer_store_b32 v177, v3, s[56:59], 0 offen
	buffer_store_b32 v174, v4, s[56:59], 0 offen
	buffer_store_b32 v171, v1, s[56:59], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 480
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
		.amdhsa_next_free_sgpr 84
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 84
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 480
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17820
; TotalNumSgprs: 86
; NumVgprs: 256
; ScratchSize: 480
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 86
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1301                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1302                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         60
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 480
    .sgpr_count:     86
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 119
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
