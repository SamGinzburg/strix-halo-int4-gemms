	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[68:69], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v41, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s68, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s69, 0xff
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
	s_ashr_i32 s79, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s78, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s78, s79
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s78
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s64, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s64, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s7, s2, s4
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s67, s64, s68
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s9, s7
	s_xor_b32 s10, s7, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s45, s10, 31
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s5
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s8, s6
	s_add_i32 s10, s8, 1
	s_sub_i32 s9, s9, s11
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s65, s64, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s66, s6, s45
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[64:65], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s10, s66, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s10, s78
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s60, s10, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s6, s7, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s60, v41
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s65, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, 16, v4
	v_or_b32_e32 v2, 32, v4
	v_or_b32_e32 v3, 48, v4
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s68, v4
	v_cmp_gt_i32_e64 s4, s68, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s47, s68, v2
	v_cmp_gt_i32_e64 s46, s68, v3
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s44, s65, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s44, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge55_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s71, s60, s67
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr71
.LBB0_3:                                ; %Flow421
	s_load_b64 s[56:57], s[0:1], 0x28
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v43, 0xe0, v0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v202, 0
	v_mov_b32_e32 v201, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s70, s6, 8
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph54
	s_clause 0x1
	s_load_b256 s[48:55], s[0:1], 0x0
	s_load_b64 s[58:59], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v6, 5, v43
	v_dual_mov_b32 v202, 0 :: v_dual_and_b32 v65, 31, v0
	s_add_i32 s71, s60, s67
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s61, s44, 31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v4, 40, v6
	v_or_b32_e32 v7, 56, v6
	v_or_b32_e32 v1, 16, v6
	v_or_b32_e32 v2, 24, v6
	v_or_b32_e32 v5, 48, v6
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v13, s60, v4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v3, 32, v6
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v15, s60, v7
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v7, s70, v7
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v10, s60, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s8, s68, v13
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v11, s60, v2
	v_or_b32_e32 v14, s60, v5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s70, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v13, s58, v6
	v_or_b32_e32 v2, s70, v2
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v12, s60, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s70, v3
	v_or_b32_e32 v4, s70, v4
	v_or_b32_e32 v5, s70, v5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, s60, v6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s69, v7
	v_lshl_add_u32 v7, s58, 3, v13
	v_cmp_gt_i32_e64 s13, s69, v1
	v_cmp_gt_i32_e64 s14, s69, v2
	v_mad_u64_u32 v[1:2], null, s58, 24, v[13:14]
	v_cmp_gt_i32_e64 s15, s69, v3
	v_mad_u64_u32 v[2:3], null, s58, 40, v[13:14]
	v_cmp_gt_i32_e64 s16, s69, v4
	v_mad_u64_u32 v[3:4], null, s58, 48, v[13:14]
	v_cmp_gt_i32_e64 s17, s69, v5
	v_mad_u64_u32 v[4:5], null, s58, 56, v[13:14]
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v17, 8, v6
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s68, v8
	v_cmp_gt_i32_e64 s1, s68, v10
	v_lshl_add_u32 v8, s58, 4, v13
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v66, v13, v65
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v5, v7, v65
	v_bfe_i32 v10, v0, 7, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v9, s60, v17
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s6, s68, v11
	v_cmp_gt_i32_e64 s9, s68, v14
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v11, 0x7f, v0
	v_dual_mov_b32 v197, 0 :: v_dual_and_b32 v10, 0x88, v10
	v_lshl_add_u32 v14, s58, 6, v66
	scratch_store_b32 off, v5, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v5, v8, v65
	v_cmp_gt_i32_e64 s0, s68, v9
	v_lshl_add_u32 v9, s58, 5, v13
	v_xor_b32_e32 v205, v10, v11
	v_lshl_add_u32 v10, s58, 7, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:4
	scratch_store_b32 off, v0, off offset:244
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v5, v1, v65
	s_mul_i32 s80, s71, s58
	scratch_store_b32 off, v10, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v10, s80, v13
	scratch_store_b32 off, v5, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v5, v9, v65
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v7, s80, v7
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v1, s80, v1
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:12
	scratch_store_b32 off, v43, off offset:248
	scratch_store_b32 off, v7, off offset:40
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v5, v2, v65
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v7, s80, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:48
	scratch_store_b32 off, v5, off offset:16
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v5, v3, v65
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v1, s80, v9
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s61, s44, s61
	scratch_store_b32 off, v5, off offset:20 ; 4-byte Folded Spill
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v5, v4, v65
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v1, s80, v2
	scratch_store_b32 off, v5, off offset:24 ; 4-byte Folded Spill
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s7, s68, v12
	v_cmp_gt_i32_e64 s10, s68, v15
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s68, s61, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s61, s65, 31
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s72, s3, 5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s61, s65, s61
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s64, s69
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v14, off offset:28
	scratch_store_b32 off, v1, off offset:56
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v1, s80, v3
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v4, s80, v4
	scratch_store_b32 off, v7, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v7, s71, v41
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s73, s61, 1
	s_and_b32 s61, s49, 0xffff
	s_add_i32 s75, s70, s3
	s_and_b32 s49, s51, 0xffff
	s_bitcmp1_b32 s65, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s79, s79, s64
	s_mov_b32 s60, s48
	s_mov_b32 s48, s50
	s_cselect_b32 s76, -1, 0
	s_sub_i32 s50, s45, s79
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v10, off offset:36
	scratch_store_b32 off, v1, off offset:60
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v1, 16, v7
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v2, 32, v7
	s_sub_i32 s50, s50, s66
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v3, 48, v7
	s_mul_i32 s78, s78, s50
	v_mul_lo_u32 v224, v1, s59
	v_mul_lo_u32 v225, v2, s59
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v1, 0xf0, v0
	s_lshl_b32 s50, s78, 8
	v_dual_mov_b32 v181, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	s_add_i32 s50, s50, s3
	s_lshl_b32 s2, s2, 8
	scratch_store_b32 off, v4, off offset:64 ; 4-byte Folded Spill
	v_add3_u32 v4, s50, s2, v6
	v_mul_lo_u32 v226, v3, s59
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v3, 2, v1
	v_dual_mov_b32 v179, 0 :: v_dual_and_b32 v2, 32, v2
	v_mul_lo_u32 v223, v7, s59
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v7, 0xf8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v2, 0, v3, v2
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v3, 0xf0, v4
	v_mad_u64_u32 v[67:68], null, s58, v7, v[65:66]
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v7, 0xe8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[68:69], null, s58, v3, v[65:66]
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v3, 0xe0, v4
	v_mad_u64_u32 v[69:70], null, s58, v7, v[65:66]
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v7, 0xd8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[70:71], null, s58, v3, v[65:66]
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v3, 0xd0, v4
	v_mad_u64_u32 v[71:72], null, s58, v7, v[65:66]
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v7, 0xc8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[72:73], null, s58, v3, v[65:66]
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v3, 0xc0, v4
	v_mad_u64_u32 v[73:74], null, s58, v7, v[65:66]
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v7, 0xb8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[74:75], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 0xb0, v4
	v_mad_u64_u32 v[75:76], null, s58, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xa8, v4
	v_dual_mov_b32 v180, 0 :: v_dual_lshlrev_b32 v5, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[76:77], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 0xa0, v4
	v_mad_u64_u32 v[77:78], null, s58, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x98, v4
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v12, 24, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[78:79], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 0x90, v4
	v_mad_u64_u32 v[79:80], null, s58, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x88, v4
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v5, 28, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[80:81], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 0x80, v4
	v_mad_u64_u32 v[81:82], null, s58, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x78, v4
	v_dual_mov_b32 v148, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[82:83], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 0x70, v4
	v_mad_u64_u32 v[83:84], null, s58, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x68, v4
	v_add_nc_u32_e32 v227, v2, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[84:85], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 0x60, v4
	v_mad_u64_u32 v[85:86], null, s58, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x58, v4
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v2, 56, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[86:87], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 0x50, v4
	v_mad_u64_u32 v[87:88], null, s58, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x48, v4
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v228, 0, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[88:89], null, s58, v3, v[65:66]
	v_add_nc_u32_e32 v3, 64, v4
	v_add_nc_u32_e32 v1, 48, v4
	v_mad_u64_u32 v[89:90], null, s58, v7, v[65:66]
	s_lshl_b32 s2, s66, 6
	v_mad_u64_u32 v[90:91], null, s58, v3, v[65:66]
	v_mad_u64_u32 v[91:92], null, s58, v2, v[65:66]
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v2, 40, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s70, v6
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v6, s67, s2, v6
	v_mad_u64_u32 v[92:93], null, s58, v1, v[65:66]
	v_add_nc_u32_e32 v1, 32, v4
	s_lshl_b32 s2, s45, 6
	v_mad_u64_u32 v[93:94], null, s58, v2, v[65:66]
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v2, 24, v4
	v_subrev_nc_u32_e32 v3, s2, v6
	v_mad_u64_u32 v[94:95], null, s58, v1, v[65:66]
	v_add_nc_u32_e32 v1, 16, v4
	v_add_nc_u32_e32 v5, 8, v4
	v_mad_u64_u32 v[95:96], null, s58, v2, v[65:66]
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v2, 48, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[96:97], null, s58, v1, v[65:66]
	v_add_nc_u32_e32 v1, 56, v3
	v_mad_u64_u32 v[97:98], null, s58, v5, v[65:66]
	v_mad_u64_u32 v[98:99], null, s58, v4, v[65:66]
	v_mad_u64_u32 v[99:100], null, s58, v1, v[65:66]
	v_add_nc_u32_e32 v1, 40, v3
	v_mad_u64_u32 v[100:101], null, s58, v2, v[65:66]
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v2, 32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[101:102], null, s58, v1, v[65:66]
	v_add_nc_u32_e32 v1, 24, v3
	v_mad_u64_u32 v[102:103], null, s58, v2, v[65:66]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v172, s70, v0
	v_lshl_or_b32 v204, v41, 5, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[103:104], null, s58, v1, v[65:66]
	v_mad_u64_u32 v[0:1], null, 0x48, s58, v[66:67]
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v2, 16, v3
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v4, 8, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v42, s70, v17
	v_or_b32_e32 v17, 64, v16
	scratch_store_b64 off, v[0:1], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x50, s58, v[66:67]
	v_or_b32_e32 v18, 0x48, v16
	v_or_b32_e32 v19, 0x50, v16
	v_or_b32_e32 v20, 0x58, v16
	v_or_b32_e32 v21, 0x60, v16
	v_or_b32_e32 v22, 0x68, v16
	v_or_b32_e32 v23, 0x70, v16
	scratch_store_b64 off, v[0:1], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x58, s58, v[66:67]
	v_or_b32_e32 v24, 0x78, v16
	v_or_b32_e32 v25, 0x80, v16
	v_or_b32_e32 v26, 0x88, v16
	v_or_b32_e32 v27, 0x90, v16
	v_or_b32_e32 v28, 0x98, v16
	v_or_b32_e32 v29, 0xa0, v16
	scratch_store_b64 off, v[0:1], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x60, s58, v[66:67]
	v_or_b32_e32 v30, 0xa8, v16
	v_or_b32_e32 v31, 0xb0, v16
	v_or_b32_e32 v32, 0xb8, v16
	v_or_b32_e32 v33, 0xc0, v16
	v_or_b32_e32 v34, 0xc8, v16
	v_or_b32_e32 v35, 0xd0, v16
	scratch_store_b64 off, v[0:1], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x68, s58, v[66:67]
	v_or_b32_e32 v36, 0xd8, v16
	v_or_b32_e32 v37, 0xe0, v16
	v_or_b32_e32 v38, 0xe8, v16
	v_or_b32_e32 v39, 0xf0, v16
	v_or_b32_e32 v40, 0xf8, v16
	v_lshl_or_b32 v207, v43, 4, v204
	scratch_store_b64 off, v[0:1], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x70, s58, v[66:67]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[104:105], null, s58, v2, v[65:66]
	v_mad_u64_u32 v[105:106], null, s58, v4, v[65:66]
	v_mad_u64_u32 v[106:107], null, s58, v3, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x78, s58, v[66:67]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s69, v16
	v_cmp_gt_i32_e64 s12, s69, v42
	v_cmp_gt_i32_e64 s19, s69, v17
	v_cmp_gt_i32_e64 s20, s69, v18
	v_cmp_gt_i32_e64 s21, s69, v19
	v_cmp_gt_i32_e64 s22, s69, v20
	scratch_store_b64 off, v[0:1], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x88, s58, v[66:67]
	v_cmp_gt_i32_e64 s23, s69, v21
	v_cmp_gt_i32_e64 s24, s69, v22
	v_cmp_gt_i32_e64 s25, s69, v23
	v_cmp_gt_i32_e64 s26, s69, v24
	v_cmp_gt_i32_e64 s27, s69, v25
	v_cmp_gt_i32_e64 s28, s69, v26
	scratch_store_b64 off, v[0:1], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x90, s58, v[66:67]
	v_cmp_gt_i32_e64 s29, s69, v27
	v_cmp_gt_i32_e64 s30, s69, v28
	v_cmp_gt_i32_e64 s31, s69, v29
	v_cmp_gt_i32_e64 s33, s69, v30
	v_cmp_gt_i32_e64 s34, s69, v31
	v_cmp_gt_i32_e64 s35, s69, v32
	scratch_store_b64 off, v[0:1], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0x98, s58, v[66:67]
	v_cmp_gt_i32_e64 s36, s69, v33
	v_cmp_gt_i32_e64 s37, s69, v34
	v_cmp_gt_i32_e64 s38, s69, v35
	v_cmp_gt_i32_e64 s39, s69, v36
	v_cmp_gt_i32_e64 s40, s69, v37
	v_cmp_gt_i32_e64 s41, s69, v38
	scratch_store_b64 off, v[0:1], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xa0, s58, v[66:67]
	v_cmp_gt_i32_e64 s42, s69, v39
	v_cmp_gt_i32_e64 s43, s69, v40
	v_cmp_gt_i32_e64 s44, s69, v172
	v_xor_b32_e32 v208, 0x110, v205
	v_xor_b32_e32 v209, 8, v204
	v_xor_b32_e32 v210, 16, v204
	scratch_store_b64 off, v[0:1], off offset:148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xa8, s58, v[66:67]
	v_xor_b32_e32 v211, 24, v204
	v_xor_b32_e32 v212, 8, v207
	v_xor_b32_e32 v213, 16, v207
	v_xor_b32_e32 v214, 24, v207
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v159, 0
	scratch_store_b64 off, v[0:1], off offset:156 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xb0, s58, v[66:67]
	v_mov_b32_e32 v157, 0
	v_mov_b32_e32 v155, 0
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v149, 0
	v_mov_b32_e32 v147, 0
	scratch_store_b64 off, v[0:1], off offset:164 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xb8, s58, v[66:67]
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v133, 0
	scratch_store_b64 off, v[0:1], off offset:172 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xc0, s58, v[66:67]
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v129, 0
	s_add_i32 s77, s68, -1
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s74, s64, s59
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	scratch_store_b64 off, v[0:1], off offset:180 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xc8, s58, v[66:67]
	s_mul_i32 s75, s75, s58
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s65, s55, 0xffff
	s_mov_b32 s64, s54
	s_mov_b32 s59, 0
	s_mov_b32 s2, 0
	scratch_store_b64 off, v[0:1], off offset:188 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xd0, s58, v[66:67]
	scratch_store_b64 off, v[0:1], off offset:196 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xd8, s58, v[66:67]
	scratch_store_b64 off, v[0:1], off offset:204 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xe0, s58, v[66:67]
	scratch_store_b64 off, v[0:1], off offset:212 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xe8, s58, v[66:67]
	scratch_store_b64 off, v[0:1], off offset:220 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xf0, s58, v[66:67]
	scratch_store_b64 off, v[0:1], off offset:228 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, 0xf8, s58, v[66:67]
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s58, s77, 6
	scratch_store_b64 off, v[0:1], off offset:236 ; 8-byte Folded Spill
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v0, v223, s59, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s59, s74
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v107, v224, s59, 1
	v_add_lshl_u32 v108, v225, s59, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s69
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v109, v226, s59, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v110, v172, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_cndmask_b32_e64 v107, 0x80000000, v107, s4
	v_cndmask_b32_e64 v108, 0x80000000, v108, s47
	s_mov_b32 s54, s62
	s_mov_b32 s55, s63
	v_cndmask_b32_e64 v109, 0x80000000, v109, s46
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v110, 0x80000000, v110, s44
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[52:55], 0 offen
	buffer_load_u16 v107, v107, s[52:55], 0 offen
	buffer_load_u16 v108, v108, s[52:55], 0 offen
	buffer_load_u16 v109, v109, s[52:55], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v110, v110, s[64:67], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v111, v1
	v_cvt_f32_i32_e32 v112, v2
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
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v113, v3
	v_cvt_f32_i32_e32 v114, v4
	v_cvt_f32_i32_e32 v115, v5
	v_cvt_f32_i32_e32 v116, v6
	v_cvt_f32_i32_e32 v117, v7
	v_cvt_f32_i32_e32 v118, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s3, s59, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v106, 64, v106
	s_lshl_b32 s2, s3, 6
	s_cmp_lg_u32 s59, s58
	s_mov_b32 s59, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v108
	v_lshlrev_b32_e32 v1, 16, v107
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v107, 16, v109
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v119, v13, v107 :: v_dual_lshlrev_b32 v0, 16, v0
	v_mul_f32_e32 v29, v29, v2
	v_mul_f32_e32 v22, v22, v2
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v38, v1 :: v_dual_lshlrev_b32 v3, 16, v110
	v_dual_mul_f32 v58, v58, v0 :: v_dual_add_nc_u32 v67, 64, v67
	v_dual_mul_f32 v41, v41, v1 :: v_dual_add_nc_u32 v68, 64, v68
	v_dual_mul_f32 v60, v60, v0 :: v_dual_add_nc_u32 v69, 64, v69
	v_dual_mul_f32 v57, v57, v0 :: v_dual_add_nc_u32 v70, 64, v70
	v_dual_mul_f32 v62, v62, v0 :: v_dual_add_nc_u32 v71, 64, v71
	v_dual_mul_f32 v43, v43, v1 :: v_dual_add_nc_u32 v72, 64, v72
	v_dual_mul_f32 v64, v64, v0 :: v_dual_add_nc_u32 v73, 64, v73
	v_dual_mul_f32 v59, v59, v0 :: v_dual_add_nc_u32 v74, 64, v74
	v_dual_mul_f32 v50, v50, v0 :: v_dual_add_nc_u32 v75, 64, v75
	v_dual_mul_f32 v45, v45, v1 :: v_dual_add_nc_u32 v76, 64, v76
	v_dual_mul_f32 v52, v52, v0 :: v_dual_add_nc_u32 v77, 64, v77
	v_dual_mul_f32 v61, v61, v0 :: v_dual_add_nc_u32 v78, 64, v78
	v_dual_mul_f32 v54, v54, v0 :: v_dual_add_nc_u32 v79, 64, v79
	v_dual_mul_f32 v47, v47, v1 :: v_dual_add_nc_u32 v80, 64, v80
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v81, 64, v81
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v63, v63, v0 :: v_dual_add_nc_u32 v82, 64, v82
	v_dual_mul_f32 v42, v42, v1 :: v_dual_add_nc_u32 v83, 64, v83
	v_dual_mul_f32 v33, v33, v1 :: v_dual_add_nc_u32 v84, 64, v84
	v_dual_mul_f32 v26, v26, v2 :: v_dual_add_nc_u32 v85, 64, v85
	v_dual_mul_f32 v49, v49, v0 :: v_dual_add_nc_u32 v86, 64, v86
	v_dual_mul_f32 v44, v44, v1 :: v_dual_add_nc_u32 v87, 64, v87
	v_dual_mul_f32 v35, v35, v1 :: v_dual_add_nc_u32 v88, 64, v88
	v_dual_mul_f32 v28, v28, v2 :: v_dual_add_nc_u32 v89, 64, v89
	v_dual_mul_f32 v51, v51, v0 :: v_dual_add_nc_u32 v90, 64, v90
	v_dual_mul_f32 v46, v46, v1 :: v_dual_add_nc_u32 v91, 64, v91
	v_dual_mul_f32 v37, v37, v1 :: v_dual_add_nc_u32 v92, 64, v92
	v_dual_mul_f32 v30, v30, v2 :: v_dual_add_nc_u32 v93, 64, v93
	v_dual_mul_f32 v53, v53, v0 :: v_dual_add_nc_u32 v94, 64, v94
	v_dual_mul_f32 v48, v48, v1 :: v_dual_add_nc_u32 v95, 64, v95
	v_dual_mul_f32 v39, v39, v1 :: v_dual_add_nc_u32 v96, 64, v96
	v_dual_mul_f32 v32, v32, v2 :: v_dual_add_nc_u32 v97, 64, v97
	v_dual_mul_f32 v55, v55, v0 :: v_dual_add_nc_u32 v98, 64, v98
	v_dual_mul_f32 v34, v34, v1 :: v_dual_add_nc_u32 v99, 64, v99
	v_dual_mul_f32 v25, v25, v2 :: v_dual_add_nc_u32 v100, 64, v100
	v_dual_mul_f32 v18, v18, v2 :: v_dual_add_nc_u32 v101, 64, v101
	v_dual_mul_f32 v36, v36, v1 :: v_dual_add_nc_u32 v103, 64, v103
	v_dual_mul_f32 v27, v27, v2 :: v_dual_add_nc_u32 v104, 64, v104
	v_dual_mul_f32 v20, v20, v2 :: v_dual_add_nc_u32 v105, 64, v105
	v_mul_f32_e32 v0, v56, v0
	v_dual_mul_f32 v40, v40, v1 :: v_dual_mul_f32 v31, v31, v2
	v_mul_f32_e32 v24, v24, v2
	v_dual_mul_f32 v109, v11, v107 :: v_dual_add_nc_u32 v102, 64, v102
	v_dual_mul_f32 v17, v17, v2 :: v_dual_mul_f32 v108, v10, v107
	v_dual_mul_f32 v19, v19, v2 :: v_dual_mul_f32 v56, v9, v107
	v_dual_mul_f32 v21, v21, v2 :: v_dual_mul_f32 v110, v12, v107
	v_dual_mul_f32 v23, v23, v2 :: v_dual_mul_f32 v120, v14, v107
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v227, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v228
	ds_load_b128 v[5:8], v228 offset:16
	ds_load_b128 v[9:12], v228 offset:512
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v121, v15, v107
	v_mul_f32_e32 v122, v16, v107
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[13:16], v228 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v111, v111, v107
	v_mul_f32_e32 v112, v112, v107
	v_mul_f32_e32 v113, v113, v107
	v_mul_f32_e32 v114, v114, v107
	v_mul_f32_e32 v115, v115, v107
	v_mul_f32_e32 v116, v116, v107
	v_mul_f32_e32 v117, v117, v107
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v107, v118, v107 :: v_dual_fmac_f32 v202, v57, v1
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v201, v58, v2 :: v_dual_fmac_f32 v200, v59, v3
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v195, v64, v8
	v_dual_fmac_f32 v199, v60, v4 :: v_dual_fmac_f32 v198, v61, v5
	v_dual_fmac_f32 v197, v62, v6 :: v_dual_fmac_f32 v196, v63, v7
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v183, v53, v13
	v_dual_fmac_f32 v194, v49, v9 :: v_dual_fmac_f32 v193, v50, v10
	v_dual_fmac_f32 v192, v51, v11 :: v_dual_fmac_f32 v179, v41, v1
	v_fmac_f32_e32 v184, v52, v12
	v_dual_fmac_f32 v182, v54, v14 :: v_dual_fmac_f32 v181, v55, v15
	v_fmac_f32_e32 v178, v42, v2
	v_dual_fmac_f32 v180, v0, v16 :: v_dual_fmac_f32 v177, v43, v3
	v_dual_fmac_f32 v176, v44, v4 :: v_dual_fmac_f32 v175, v45, v5
	v_dual_fmac_f32 v174, v46, v6 :: v_dual_fmac_f32 v173, v47, v7
	v_dual_fmac_f32 v170, v33, v9 :: v_dual_fmac_f32 v171, v48, v8
	v_dual_fmac_f32 v168, v35, v11 :: v_dual_fmac_f32 v169, v34, v10
	v_dual_fmac_f32 v166, v37, v13 :: v_dual_fmac_f32 v167, v36, v12
	v_dual_fmac_f32 v164, v39, v15 :: v_dual_fmac_f32 v165, v38, v14
	v_dual_fmac_f32 v162, v25, v1 :: v_dual_fmac_f32 v163, v40, v16
	v_dual_fmac_f32 v160, v27, v3 :: v_dual_fmac_f32 v161, v26, v2
	v_dual_fmac_f32 v158, v29, v5 :: v_dual_fmac_f32 v159, v28, v4
	v_dual_fmac_f32 v156, v31, v7 :: v_dual_fmac_f32 v157, v30, v6
	v_dual_fmac_f32 v154, v17, v9 :: v_dual_fmac_f32 v155, v32, v8
	v_dual_fmac_f32 v152, v19, v11 :: v_dual_fmac_f32 v153, v18, v10
	v_dual_fmac_f32 v150, v21, v13 :: v_dual_fmac_f32 v151, v20, v12
	v_dual_fmac_f32 v148, v23, v15 :: v_dual_fmac_f32 v149, v22, v14
	v_fmac_f32_e32 v146, v56, v1
	v_dual_fmac_f32 v147, v24, v16 :: v_dual_fmac_f32 v144, v109, v3
	v_dual_fmac_f32 v145, v108, v2 :: v_dual_fmac_f32 v142, v119, v5
	v_dual_fmac_f32 v143, v110, v4 :: v_dual_fmac_f32 v140, v121, v7
	v_dual_fmac_f32 v141, v120, v6 :: v_dual_fmac_f32 v138, v111, v9
	v_dual_fmac_f32 v139, v122, v8 :: v_dual_fmac_f32 v136, v113, v11
	v_dual_fmac_f32 v137, v112, v10 :: v_dual_fmac_f32 v132, v115, v13
	v_dual_fmac_f32 v133, v114, v12 :: v_dual_fmac_f32 v134, v117, v15
	v_fmac_f32_e32 v135, v116, v14
	v_fmac_f32_e32 v129, v107, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s73, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s3, 0, 64
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s3, v1
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
	s_and_b32 s45, s3, 0x60
	s_mov_b32 s3, s72
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s72, s45
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s3, s72
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v58, v57
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
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	v_add_nc_u32_e32 v130, s3, v106
	v_add_nc_u32_e32 v186, s3, v104
	v_add_nc_u32_e32 v188, s3, v102
	v_add_nc_u32_e32 v203, s3, v100
	v_add_nc_u32_e32 v185, s3, v105
	v_add_nc_u32_e32 v187, s3, v103
	v_add_nc_u32_e32 v191, s3, v101
	.loc	1 1471 38 is_stmt 0             ; ragged.py:1471:38
	v_add_nc_u32_e32 v206, s3, v99
	.loc	1 1472 46 is_stmt 1             ; ragged.py:1472:46
	v_add_nc_u32_e32 v219, s3, v94
	v_add_nc_u32_e32 v220, s3, v93
	v_add_nc_u32_e32 v221, s3, v92
	v_add_nc_u32_e32 v222, s3, v91
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v215, s3, v98
	v_add_nc_u32_e32 v216, s3, v97
	v_add_nc_u32_e32 v217, s3, v96
	v_add_nc_u32_e32 v218, s3, v95
	v_add_nc_u32_e32 v229, s3, v90
	v_add_nc_u32_e32 v230, s3, v89
	v_add_nc_u32_e32 v231, s3, v88
	v_add_nc_u32_e32 v232, s3, v87
	v_add_nc_u32_e32 v233, s3, v86
	v_add_nc_u32_e32 v234, s3, v85
	v_add_nc_u32_e32 v235, s3, v84
	v_add_nc_u32_e32 v236, s3, v83
	v_add_nc_u32_e32 v237, s3, v82
	v_add_nc_u32_e32 v238, s3, v81
	v_add_nc_u32_e32 v239, s3, v80
	v_add_nc_u32_e32 v240, s3, v79
	v_add_nc_u32_e32 v241, s3, v78
	v_add_nc_u32_e32 v242, s3, v77
	v_add_nc_u32_e32 v243, s3, v76
	v_add_nc_u32_e32 v244, s3, v75
	v_add_nc_u32_e32 v245, s3, v74
	v_add_nc_u32_e32 v246, s3, v73
	v_add_nc_u32_e32 v247, s3, v72
	v_add_nc_u32_e32 v248, s3, v71
	v_add_nc_u32_e32 v249, s3, v70
	v_add_nc_u32_e32 v250, s3, v69
	v_add_nc_u32_e32 v251, s3, v68
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_add_nc_u32_e32 v252, s3, v67
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s1
	v_cndmask_b32_e64 v188, 0x80000000, v188, s7
	v_cndmask_b32_e64 v203, 0x80000000, v203, s9
	v_cndmask_b32_e64 v185, 0x80000000, v185, s0
	v_cndmask_b32_e64 v187, 0x80000000, v187, s6
	v_cndmask_b32_e64 v191, 0x80000000, v191, s8
	v_cndmask_b32_e64 v206, 0x80000000, v206, s10
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v219, 0x80000000, v219, s15
	v_cndmask_b32_e64 v220, 0x80000000, v220, s16
	v_cndmask_b32_e64 v221, 0x80000000, v221, s17
	v_cndmask_b32_e64 v222, 0x80000000, v222, s18
	s_mov_b32 s50, s62
	s_mov_b32 s51, s63
	v_cndmask_b32_e64 v215, 0x80000000, v215, s11
	v_cndmask_b32_e64 v216, 0x80000000, v216, s12
	v_cndmask_b32_e64 v217, 0x80000000, v217, s13
	v_cndmask_b32_e64 v218, 0x80000000, v218, s14
	v_cndmask_b32_e64 v229, 0x80000000, v229, s19
	v_cndmask_b32_e64 v230, 0x80000000, v230, s20
	v_cndmask_b32_e64 v231, 0x80000000, v231, s21
	v_cndmask_b32_e64 v232, 0x80000000, v232, s22
	v_cndmask_b32_e64 v233, 0x80000000, v233, s23
	v_cndmask_b32_e64 v234, 0x80000000, v234, s24
	v_cndmask_b32_e64 v235, 0x80000000, v235, s25
	v_cndmask_b32_e64 v236, 0x80000000, v236, s26
	v_cndmask_b32_e64 v237, 0x80000000, v237, s27
	v_cndmask_b32_e64 v238, 0x80000000, v238, s28
	v_cndmask_b32_e64 v239, 0x80000000, v239, s29
	v_cndmask_b32_e64 v240, 0x80000000, v240, s30
	v_cndmask_b32_e64 v241, 0x80000000, v241, s31
	v_cndmask_b32_e64 v242, 0x80000000, v242, s33
	v_cndmask_b32_e64 v243, 0x80000000, v243, s34
	v_cndmask_b32_e64 v244, 0x80000000, v244, s35
	v_cndmask_b32_e64 v245, 0x80000000, v245, s36
	v_cndmask_b32_e64 v246, 0x80000000, v246, s37
	v_cndmask_b32_e64 v247, 0x80000000, v247, s38
	v_cndmask_b32_e64 v248, 0x80000000, v248, s39
	v_cndmask_b32_e64 v249, 0x80000000, v249, s40
	v_cndmask_b32_e64 v250, 0x80000000, v250, s41
	v_cndmask_b32_e64 v251, 0x80000000, v251, s42
	v_cndmask_b32_e64 v252, 0x80000000, v252, s43
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x7
	buffer_load_u8 v130, v130, s[60:63], 0 offen
	buffer_load_u8 v186, v186, s[60:63], 0 offen
	buffer_load_u8 v188, v188, s[60:63], 0 offen
	buffer_load_u8 v203, v203, s[60:63], 0 offen
	buffer_load_u8 v206, v206, s[60:63], 0 offen
	buffer_load_u8 v191, v191, s[60:63], 0 offen
	buffer_load_u8 v187, v187, s[60:63], 0 offen
	buffer_load_u8 v185, v185, s[60:63], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x1f
	buffer_load_u8 v253, v215, s[48:51], 0 offen
	buffer_load_u8 v254, v217, s[48:51], 0 offen
	buffer_load_u8 v219, v219, s[48:51], 0 offen
	buffer_load_u8 v221, v221, s[48:51], 0 offen
	buffer_load_u8 v255, v229, s[48:51], 0 offen
	buffer_load_u8 v0, v231, s[48:51], 0 offen
	buffer_load_u8 v131, v233, s[48:51], 0 offen
	buffer_load_u8 v189, v235, s[48:51], 0 offen
	buffer_load_u8 v190, v237, s[48:51], 0 offen
	buffer_load_u8 v107, v239, s[48:51], 0 offen
	buffer_load_u8 v108, v241, s[48:51], 0 offen
	buffer_load_u8 v109, v243, s[48:51], 0 offen
	buffer_load_u8 v110, v245, s[48:51], 0 offen
	buffer_load_u8 v111, v247, s[48:51], 0 offen
	buffer_load_u8 v112, v249, s[48:51], 0 offen
	buffer_load_u8 v113, v251, s[48:51], 0 offen
	buffer_load_u8 v222, v222, s[48:51], 0 offen
	buffer_load_u8 v220, v220, s[48:51], 0 offen
	buffer_load_u8 v114, v218, s[48:51], 0 offen
	buffer_load_u8 v115, v216, s[48:51], 0 offen
	buffer_load_u8 v116, v236, s[48:51], 0 offen
	buffer_load_u8 v117, v234, s[48:51], 0 offen
	buffer_load_u8 v118, v232, s[48:51], 0 offen
	buffer_load_u8 v119, v230, s[48:51], 0 offen
	buffer_load_u8 v120, v244, s[48:51], 0 offen
	buffer_load_u8 v121, v242, s[48:51], 0 offen
	buffer_load_u8 v122, v240, s[48:51], 0 offen
	buffer_load_u8 v123, v238, s[48:51], 0 offen
	buffer_load_u8 v124, v252, s[48:51], 0 offen
	buffer_load_u8 v125, v250, s[48:51], 0 offen
	buffer_load_u8 v126, v248, s[48:51], 0 offen
	buffer_load_u8 v127, v246, s[48:51], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v128, 0, v205
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 32
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(39)
	ds_store_b8 v128, v130
	s_waitcnt vmcnt(38)
	ds_store_b8 v128, v186 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v128, v188 offset:1024
	v_add_nc_u32_e32 v130, 0, v208
	s_waitcnt vmcnt(36)
	ds_store_b8 v128, v203 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v130, v185
	ds_store_b8 v130, v187 offset:512
	ds_store_b8 v130, v191 offset:1024
	ds_store_b8 v130, v206 offset:1536
	v_add_nc_u32_e32 v185, 0, v204
	v_add_nc_u32_e32 v186, 0, v209
	v_add_nc_u32_e32 v187, 0, v210
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v191, 0, v211
	ds_load_2addr_stride64_b64 v[229:232], v185 offset1:1
	ds_load_2addr_stride64_b64 v[233:236], v185 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[237:240], v186 offset1:1
	ds_load_2addr_stride64_b64 v[241:244], v186 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[245:248], v187 offset1:1
	ds_load_2addr_stride64_b64 v[249:252], v187 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[185:188], v191 offset1:1
	ds_load_2addr_stride64_b64 v[215:218], v191 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v128, v253
	s_waitcnt vmcnt(30)
	ds_store_b8 v128, v254 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v128, v219 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v128, v221 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v128, v255 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v128, v0 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v128, v131 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v128, v189 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v128, v190 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v128, v107 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v128, v108 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v128, v109 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v128, v110 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v128, v111 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v128, v112 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v128, v113 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v130, v115
	ds_store_b8 v130, v114 offset:512
	ds_store_b8 v130, v220 offset:1024
	ds_store_b8 v130, v222 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v130, v119 offset:2048
	ds_store_b8 v130, v118 offset:2560
	ds_store_b8 v130, v117 offset:3072
	ds_store_b8 v130, v116 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v130, v123 offset:4096
	ds_store_b8 v130, v122 offset:4608
	ds_store_b8 v130, v121 offset:5120
	ds_store_b8 v130, v120 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v130, v127 offset:6144
	ds_store_b8 v130, v126 offset:6656
	ds_store_b8 v130, v125 offset:7168
	ds_store_b8 v130, v124 offset:7680
	v_add_nc_u32_e32 v0, 0, v207
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s45
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[219:222], v0 offset1:8
	v_add_nc_u32_e32 v0, 0, v212
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[219:220], v[229:230], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[221:222], v[229:230], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[219:220], v[231:232], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[221:222], v[231:232], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[219:220], v[233:234], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[221:222], v[233:234], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[219:220], v[235:236], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[221:222], v[235:236], v[1:8] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[219:222], v0 offset1:8
	v_add_nc_u32_e32 v0, 0, v213
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[219:220], v[237:238], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[221:222], v[237:238], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[219:220], v[239:240], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[221:222], v[239:240], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[219:220], v[241:242], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[221:222], v[241:242], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[219:220], v[243:244], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[221:222], v[243:244], v[1:8] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[219:222], v0 offset1:8
	v_add_nc_u32_e32 v0, 0, v214
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[219:220], v[245:246], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[221:222], v[245:246], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[219:220], v[247:248], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[221:222], v[247:248], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[219:220], v[249:250], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[221:222], v[249:250], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[219:220], v[251:252], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[221:222], v[251:252], v[1:8] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[219:222], v0 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[219:220], v[185:186], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[221:222], v[185:186], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[219:220], v[187:188], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[221:222], v[187:188], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[219:220], v[215:216], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[221:222], v[215:216], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[219:220], v[217:218], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[221:222], v[217:218], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s45, s68, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s45, s45, 64
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s45
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s50, s3, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s51, s63
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v0, s50, v65
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s54, s50, s75
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s50, s62
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v125, 0, v209
	v_add_nc_u32_e32 v126, 0, v210
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v107, s2, v0
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v127, 0, v211
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v108, off, off offset:40
	scratch_load_b32 v109, off, off offset:44
	scratch_load_b32 v110, off, off offset:48
	scratch_load_b32 v111, off, off offset:52
	scratch_load_b32 v112, off, off offset:56
	scratch_load_b32 v113, off, off offset:60
	scratch_load_b32 v114, off, off offset:64
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s45, s45, v107
	scratch_load_b32 v107, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, vcc_lo, s45
	s_and_b32 s3, s10, s45
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v108, v0, v108
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v109, v0, v109
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v110, v0, v110
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v111, v0, v111
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v112, v0, v112
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v113, v0, v113
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, v0, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s0, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s1, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v107, v107, s[60:63], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s6, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v108, v108, s[60:63], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s7, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v109, v109, s[60:63], 0 offen
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s8, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v110, v110, s[60:63], 0 offen
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s9, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v111, v111, s[60:63], 0 offen
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s77, v0
	v_add_nc_u32_e32 v0, v0, v114
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x1
	buffer_load_u8 v112, v112, s[60:63], 0 offen
	buffer_load_u8 v113, v113, s[60:63], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s2, s76
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s11, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v0, v0, s[60:63], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(7)
	v_and_b16 v185.l, v107.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v185.h, v108.l, 15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v185.l, v107.l, v185.l, s3
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v186.l, v109.l, 15
	scratch_load_b32 v107, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v185.h, v108.l, v185.h, s3
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v186.h, v110.l, 15
	scratch_load_b32 v108, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v186.l, v109.l, v186.l, s3
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v187.l, v111.l, 15
	scratch_load_b32 v109, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v186.h, v110.l, v186.h, s3
	scratch_load_b32 v110, off, off         ; 4-byte Folded Reload
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(6)
	v_and_b16 v187.h, v112.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v187.l, v111.l, v187.l, s3
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v188.l, v113.l, 15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v187.h, v112.l, v187.h, s3
	scratch_load_b64 v[111:112], off, off offset:84 ; 8-byte Folded Reload
	v_cndmask_b16 v188.l, v113.l, v188.l, s3
	scratch_load_b64 v[112:113], off, off offset:100 ; 8-byte Folded Reload
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(6)
	v_and_b16 v188.h, v0.l, 15
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[113:114], off, off offset:116
	scratch_load_b64 v[114:115], off, off offset:68
	scratch_load_b64 v[115:116], off, off offset:76
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v188.h, v0.l, v188.h, s3
	v_add_nc_u32_e32 v0, s54, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s14, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v108, s54, v108
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v109, s54, v109
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v111, s54, v111
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v112, s54, v112
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v113, s54, v113
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v114, s54, v114
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v249.l, v0.l, v215.l, s3
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	v_add_nc_u32_e32 v107, s54, v107
	v_add_nc_u32_e32 v110, s54, v110
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s16, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s18, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s12, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s13, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x3
	buffer_load_u8 v109, v109, s[48:51], 0 offen
	buffer_load_u8 v108, v108, s[48:51], 0 offen
	buffer_load_u8 v107, v107, s[48:51], 0 offen
	buffer_load_u8 v110, v110, s[48:51], 0 offen
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s54, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s15, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v249.h, v0.l, v215.l, s3
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s54, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s17, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v250.l, v0.l, v215.l, s3
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s54, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s19, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v250.h, v0.l, v215.l, s3
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s54, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s22, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s24, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s26, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s20, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s21, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x3
	buffer_load_u8 v113, v113, s[48:51], 0 offen
	buffer_load_u8 v112, v112, s[48:51], 0 offen
	buffer_load_u8 v111, v111, s[48:51], 0 offen
	buffer_load_u8 v114, v114, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v251.l, v0.l, v215.l, s3
	v_add_nc_u32_e32 v0, s54, v115
	scratch_load_b64 v[115:116], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s23, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v251.h, v0.l, v215.l, s3
	v_add_nc_u32_e32 v0, s54, v115
	scratch_load_b64 v[115:116], off, off offset:108 ; 8-byte Folded Reload
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s25, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v252.l, v0.l, v215.l, s3
	v_add_nc_u32_e32 v0, s54, v115
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[115:116], off, off offset:140
	scratch_load_b64 v[116:117], off, off offset:156
	scratch_load_b64 v[117:118], off, off offset:172
	scratch_load_b64 v[118:119], off, off offset:124
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s27, s45
	scratch_load_b64 v[119:120], off, off offset:132 ; 8-byte Folded Reload
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v115, s54, v115
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v116, s54, v116
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v117, s54, v117
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v118, s54, v118
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v252.h, v0.l, v215.l, s3
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s54, v0
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s30, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s33, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s35, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x3
	buffer_load_u8 v117, v117, s[48:51], 0 offen
	buffer_load_u8 v116, v116, s[48:51], 0 offen
	buffer_load_u8 v115, v115, s[48:51], 0 offen
	buffer_load_u8 v118, v118, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v191.l, v0.l, v215.l, s3
	v_add_nc_u32_e32 v0, s54, v119
	scratch_load_b64 v[119:120], off, off offset:148 ; 8-byte Folded Reload
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s31, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v191.h, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v191.h, v0.l, v191.h, s3
	v_add_nc_u32_e32 v0, s54, v119
	scratch_load_b64 v[119:120], off, off offset:164 ; 8-byte Folded Reload
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s34, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v203.l, v0.l, v215.l, s3
	v_add_nc_u32_e32 v0, s54, v119
	scratch_load_b64 v[119:120], off, off offset:180 ; 8-byte Folded Reload
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s36, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v203.h, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v203.h, v0.l, v203.h, s3
	v_add_nc_u32_e32 v0, s54, v119
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[119:120], off, off offset:204
	scratch_load_b64 v[120:121], off, off offset:220
	scratch_load_b64 v[121:122], off, off offset:236
	scratch_load_b64 v[122:123], off, off offset:188
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	scratch_load_b64 v[123:124], off, off offset:196 ; 8-byte Folded Reload
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s39, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v119, s54, v119
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v120, s54, v120
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v121, s54, v121
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v122, s54, v122
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s41, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s43, s45
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s37, s45
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_cndmask_b16 v206.l, v0.l, v215.l, s3
	v_add_nc_u32_e32 v0, s54, v123
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s38, s45
	scratch_load_b64 v[123:124], off, off offset:212 ; 8-byte Folded Reload
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x3
	buffer_load_u8 v121, v121, s[48:51], 0 offen
	buffer_load_u8 v120, v120, s[48:51], 0 offen
	buffer_load_u8 v119, v119, s[48:51], 0 offen
	buffer_load_u8 v122, v122, s[48:51], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s40, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v206.h, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v206.h, v0.l, v206.h, s3
	v_add_nc_u32_e32 v0, s54, v123
	scratch_load_b64 v[123:124], off, off offset:228 ; 8-byte Folded Reload
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, 0, v204
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s42, s45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v215.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v130.l, v0.l, v215.l, s3
	v_add_nc_u32_e32 v0, s54, v123
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v123, 0, v208
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u8 v0, v0, s[48:51], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v130.h, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v130.h, v0.l, v130.h, s3
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v0, 0, v205
	ds_store_b8 v0, v185
	ds_store_b8 v0, v186 offset:512
	ds_store_b8 v0, v187 offset:1024
	ds_store_b8 v0, v188 offset:1536
	ds_store_b8_d16_hi v123, v185
	ds_store_b8_d16_hi v123, v186 offset:512
	ds_store_b8_d16_hi v123, v187 offset:1024
	ds_store_b8_d16_hi v123, v188 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[185:188], v124 offset1:1
	ds_load_2addr_stride64_b64 v[215:218], v124 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[219:222], v125 offset1:1
	ds_load_2addr_stride64_b64 v[229:232], v125 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[233:236], v126 offset1:1
	ds_load_2addr_stride64_b64 v[237:240], v126 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[241:244], v127 offset1:1
	ds_load_2addr_stride64_b64 v[245:248], v127 offset0:2 offset1:3
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v0, v249
	ds_store_b8_d16_hi v0, v249 offset:512
	ds_store_b8 v0, v250 offset:1024
	ds_store_b8_d16_hi v0, v250 offset:1536
	ds_store_b8 v0, v251 offset:2048
	ds_store_b8_d16_hi v0, v251 offset:2560
	ds_store_b8 v0, v252 offset:3072
	ds_store_b8_d16_hi v0, v252 offset:3584
	ds_store_b8 v0, v191 offset:4096
	ds_store_b8_d16_hi v0, v191 offset:4608
	ds_store_b8 v0, v203 offset:5120
	ds_store_b8_d16_hi v0, v203 offset:5632
	ds_store_b8 v0, v206 offset:6144
	ds_store_b8_d16_hi v0, v206 offset:6656
	ds_store_b8 v0, v130 offset:7168
	ds_store_b8_d16_hi v0, v130 offset:7680
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v130.l, v110.l, 15
	v_and_b16 v130.h, v107.l, 15
	v_and_b16 v191.l, v108.l, 15
	v_and_b16 v191.h, v109.l, 15
	v_and_b16 v203.l, v114.l, 15
	v_and_b16 v249.l, v118.l, 15
	v_and_b16 v249.h, v115.l, 15
	v_and_b16 v250.l, v116.l, 15
	v_and_b16 v250.h, v117.l, 15
	v_and_b16 v251.l, v122.l, 15
	v_and_b16 v251.h, v119.l, 15
	v_and_b16 v252.l, v120.l, 15
	v_and_b16 v252.h, v121.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v130.l, v110.l, v130.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v203.h, v111.l, 15
	v_and_b16 v206.l, v112.l, 15
	v_and_b16 v206.h, v113.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v0, 0, v207
	v_cndmask_b16 v130.h, v107.l, v130.h, s3
	v_cndmask_b16 v191.l, v108.l, v191.l, s3
	v_cndmask_b16 v191.h, v109.l, v191.h, s3
	v_cndmask_b16 v203.l, v114.l, v203.l, s3
	v_cndmask_b16 v249.l, v118.l, v249.l, s3
	v_cndmask_b16 v249.h, v115.l, v249.h, s3
	v_cndmask_b16 v250.l, v116.l, v250.l, s3
	v_cndmask_b16 v250.h, v117.l, v250.h, s3
	v_cndmask_b16 v251.l, v122.l, v251.l, s3
	v_cndmask_b16 v251.h, v119.l, v251.h, s3
	v_cndmask_b16 v252.l, v120.l, v252.l, s3
	v_cndmask_b16 v252.h, v121.l, v252.h, s3
	v_cndmask_b16 v203.h, v111.l, v203.h, s3
	v_cndmask_b16 v206.l, v112.l, v206.l, s3
	v_cndmask_b16 v206.h, v113.l, v206.h, s3
	ds_store_b8 v123, v130
	ds_store_b8_d16_hi v123, v130 offset:512
	ds_store_b8 v123, v191 offset:1024
	ds_store_b8_d16_hi v123, v191 offset:1536
	ds_store_b8 v123, v203 offset:2048
	ds_store_b8_d16_hi v123, v203 offset:2560
	ds_store_b8 v123, v206 offset:3072
	ds_store_b8_d16_hi v123, v206 offset:3584
	ds_store_b8 v123, v249 offset:4096
	ds_store_b8_d16_hi v123, v249 offset:4608
	ds_store_b8 v123, v250 offset:5120
	ds_store_b8_d16_hi v123, v250 offset:5632
	ds_store_b8 v123, v251 offset:6144
	ds_store_b8_d16_hi v123, v251 offset:6656
	ds_store_b8 v123, v252 offset:7168
	ds_store_b8_d16_hi v123, v252 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[249:252], v0 offset1:8
	v_add_nc_u32_e32 v0, 0, v212
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[249:250], v[185:186], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[251:252], v[185:186], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[249:250], v[187:188], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[251:252], v[187:188], v[33:40] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[185:188], v0 offset1:8
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[25:32], v[249:250], v[215:216], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[251:252], v[215:216], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[249:250], v[217:218], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[251:252], v[217:218], v[1:8] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v0, 0, v213
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[219:220], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[219:220], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[221:222], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[221:222], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[229:230], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[229:230], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[231:232], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[231:232], v[1:8] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[185:188], v0 offset1:8
	v_add_nc_u32_e32 v0, 0, v214
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[233:234], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[233:234], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[235:236], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[235:236], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[237:238], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[237:238], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[239:240], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[239:240], v[1:8] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[185:188], v0 offset1:8
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[241:242], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[241:242], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[243:244], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[243:244], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[245:246], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[245:246], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[247:248], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[247:248], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %Flow420
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:244
	scratch_load_b32 v43, off, off offset:248
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v41, 15, v0
.LBB0_12:                               ; %._crit_edge55
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v43
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s13, s71, s69
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
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
	v_or_b32_e32 v0, s70, v4
	v_or_b32_e32 v11, s70, v7
	v_or_b32_e32 v12, s70, v8
	v_or_b32_e32 v2, s70, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s70, v5
	v_or_b32_e32 v13, s70, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s69, v0
	v_cmp_gt_i32_e64 s2, s69, v11
	v_cmp_gt_i32_e64 s6, s69, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s70, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s69, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s70, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s69, v1
	v_cmp_gt_i32_e64 s7, s69, v13
	v_cmp_gt_i32_e64 s8, s69, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s70, v11
	v_or_b32_e32 v1, s70, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s69, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s69, v41
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s69, v0
	v_cmp_gt_i32_e64 s10, s69, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s70, v13
	v_or_b32_e32 v1, s70, v15
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s70, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s69, v0
	v_cmp_gt_i32_e64 s12, s69, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s70, v16
	v_or_b32_e32 v20, s70, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s13, s70, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s70, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s69, v21
	v_cmp_gt_i32_e64 s13, s69, v1
	v_cmp_gt_i32_e64 s15, s69, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s69, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s15
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v19, s69, 4, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s17
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s17, s5, s14
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s69, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v202, v22, s[56:59], 0 offen
	buffer_store_b32 v201, v23, s[56:59], 0 offen
	buffer_store_b32 v200, v21, s[56:59], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s17, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v199, v2, s[56:59], 0 offen
	buffer_store_b32 v198, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v11, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v197, v22, s[56:59], 0 offen
	buffer_store_b32 v196, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v10, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	v_add_lshl_u32 v23, v0, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v195, v2, s[56:59], 0 offen
	buffer_store_b32 v194, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v7, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v193, v22, s[56:59], 0 offen
	buffer_store_b32 v192, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_lshl_add_u32 v20, s69, 5, v0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_add_lshl_u32 v0, v0, v4, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s17, s5, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v184, v2, s[56:59], 0 offen
	buffer_store_b32 v183, v21, s[56:59], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s5, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v23, s17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	s_clause 0x1
	buffer_store_b32 v182, v22, s[56:59], 0 offen
	buffer_store_b32 v181, v23, s[56:59], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v180, v0, s[56:59], 0 offen
	buffer_store_b32 v179, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v178, v21, s[56:59], 0 offen
	buffer_store_b32 v177, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v176, v0, s[56:59], 0 offen
	buffer_store_b32 v175, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v174, v21, s[56:59], 0 offen
	buffer_store_b32 v173, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v171, v0, s[56:59], 0 offen
	buffer_store_b32 v170, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v169, v21, s[56:59], 0 offen
	buffer_store_b32 v168, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v167, v0, s[56:59], 0 offen
	buffer_store_b32 v166, v2, s[56:59], 0 offen
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
	s_and_b32 s4, s47, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_store_b32 v165, v21, s[56:59], 0 offen
	buffer_store_b32 v164, v22, s[56:59], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v163, v0, s[56:59], 0 offen
	buffer_store_b32 v162, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v161, v19, s[56:59], 0 offen
	buffer_store_b32 v160, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v159, v0, s[56:59], 0 offen
	buffer_store_b32 v158, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v157, v19, s[56:59], 0 offen
	buffer_store_b32 v156, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v155, v0, s[56:59], 0 offen
	buffer_store_b32 v154, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v153, v19, s[56:59], 0 offen
	buffer_store_b32 v152, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s47, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v151, v0, s[56:59], 0 offen
	buffer_store_b32 v150, v2, s[56:59], 0 offen
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
	s_and_b32 s4, s46, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s46, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v149, v19, s[56:59], 0 offen
	buffer_store_b32 v148, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s46, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v147, v0, s[56:59], 0 offen
	buffer_store_b32 v146, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s46, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v145, v3, s[56:59], 0 offen
	buffer_store_b32 v144, v17, s[56:59], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s46, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s46, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v143, v0, s[56:59], 0 offen
	buffer_store_b32 v142, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s46, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s46, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v141, v3, s[56:59], 0 offen
	buffer_store_b32 v140, v13, s[56:59], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s46, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s46, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v139, v0, s[56:59], 0 offen
	buffer_store_b32 v138, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s46, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v137, v3, s[56:59], 0 offen
	buffer_store_b32 v136, v9, s[56:59], 0 offen
	v_add_lshl_u32 v3, v1, v6, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s46, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v1, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s46, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s46, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s46, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s46, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v133, v0, s[56:59], 0 offen
	buffer_store_b32 v132, v2, s[56:59], 0 offen
	buffer_store_b32 v135, v3, s[56:59], 0 offen
	buffer_store_b32 v134, v4, s[56:59], 0 offen
	buffer_store_b32 v129, v1, s[56:59], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 256
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
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12852
; TotalNumSgprs: 83
; NumVgprs: 256
; ScratchSize: 256
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 83
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 256
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 63
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
