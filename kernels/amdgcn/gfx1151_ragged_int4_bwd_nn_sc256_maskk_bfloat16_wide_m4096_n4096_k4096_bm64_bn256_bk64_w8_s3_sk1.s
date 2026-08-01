	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[26:27], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v117, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s26, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s27, 0xff
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
	s_ashr_i32 s12, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s7, s12
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s6
	s_mul_hi_u32 s8, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s8, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s8, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s10, s2, s4
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s29, s8, s26
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s11, s10
	s_xor_b32 s13, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s13, s13, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s14, s9, s6
	s_sub_i32 s11, s11, s14
	s_add_i32 s14, s9, 1
	s_sub_i32 s15, s11, s6
	s_cmp_ge_u32 s11, s6
	s_cselect_b32 s9, s14, s9
	s_cselect_b32 s11, s15, s11
	s_add_i32 s14, s9, 1
	s_cmp_ge_u32 s11, s6
	s_cselect_b32 s6, s14, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s9, s8, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s36, s6, s13
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[14:15], s[8:9], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s36, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s11, s6, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s28, s6, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s10, s10, s11
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s14
	s_addc_u32 s5, s5, s15
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s28, v117
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s9, s[4:5], 0x0
	s_mov_b32 s11, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s26, v1
	v_cmp_gt_i32_e64 s4, s26, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s14, s26, v3
	v_cmp_gt_i32_e64 s6, s26, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s30, s9, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s30, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge13_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s15, s28, s29
	s_lshl_b32 s33, s27, 4
	s_lshl_b32 s35, s27, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s11, -1
                                        ; implicit-def: $sgpr15
                                        ; implicit-def: $sgpr33
                                        ; implicit-def: $sgpr35
.LBB0_3:                                ; %Flow341
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v126, 0xf0, v0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v162, 0
	s_and_not1_b32 vcc_lo, exec_lo, s11
	s_lshl_b32 s34, s10, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph12
	s_clause 0x1
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b64 s[10:11], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 2, v0
	v_dual_mov_b32 v162, 0 :: v_dual_lshlrev_b32 v1, 4, v117
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v164, 4, v126
	v_dual_mov_b32 v160, 0 :: v_dual_lshlrev_b32 v5, 3, v0
	v_lshrrev_b32_e32 v6, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v4, s34, v1
	v_mad_u64_u32 v[94:95], null, s27, v164, v[1:2]
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s15, s9, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s28, v2
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v93, 24, v5
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v8, 24, v6
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s15, s9, s15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s27, v4
	v_dual_mov_b32 v161, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s41, s15, 1
	s_add_i32 s15, s28, s29
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s26, v3
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v3, s15, v2
	v_xor_b32_e32 v175, v5, v8
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v5, 0x70, v6
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[95:96], null, s10, v2, v[93:94]
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v2, s15, v117
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v7, 24, v4
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s40, s3, 5
	.loc	1 1470 43                       ; ragged.py:1470:43
	s_mul_i32 s42, s8, s10
	v_add3_u32 v180, 0, v117, v5
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v5, 16, v2
	v_lshl_or_b32 v173, v117, 5, v7
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v6, 32, v2
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v7, 48, v2
	v_mul_lo_u32 v188, v2, s11
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v2, s42, s40, v164
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s1, s30, 31
	v_mul_lo_u32 v189, v5, s11
	s_add_i32 s30, s30, s1
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	s_ashr_i32 s26, s30, 1
	s_and_b32 s29, s17, 0xffff
	s_lshl_b32 s33, s27, 4
	s_and_b32 s17, s19, 0xffff
	v_mul_lo_u32 v191, v7, s11
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v7, 16, v2
	s_bitcmp1_b32 s9, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s12, s12, s8
	s_cselect_b32 s45, -1, 0
	v_mul_lo_u32 v190, v6, s11
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v6, 2, v126
	s_sub_i32 s3, s13, s12
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v5, 32, v5
	s_sub_i32 s3, s3, s36
	v_mul_lo_u32 v7, s27, v7
	v_mul_lo_u32 v2, s27, v2
	s_mul_i32 s7, s7, s3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v163, s34, v0
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v5, 0, v6, v5
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v6, 1, v126
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s7, 8
	s_lshl_b32 s2, s2, 8
	v_mad_u64_u32 v[96:97], null, v3, s10, v[93:94]
	s_add_i32 s2, s2, s3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v163
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v165, 16, v164
	v_or_b32_e32 v166, 1, v93
	v_or_b32_e32 v167, 2, v93
	v_or_b32_e32 v168, 3, v93
	v_or_b32_e32 v169, 4, v93
	v_or_b32_e32 v170, 5, v93
	v_or_b32_e32 v171, 6, v93
	v_or_b32_e32 v172, 7, v93
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v174, s33, v94
	v_xor_b32_e32 v176, 8, v173
	v_xor_b32_e32 v177, 16, v173
	v_xor_b32_e32 v178, 24, v173
	v_dual_mov_b32 v150, 0 :: v_dual_lshlrev_b32 v179, 4, v0
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v181, 1, v95
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v182, 2, v95
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v183, 3, v95
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v184, 4, v95
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v185, 5, v95
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v186, 6, v95
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v187, 7, v95
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v192, s2, v7, v1
	v_add3_u32 v193, s2, v2, v1
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v194, v5, v4
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v195, 0, v6
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s46, s26, -1
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s43, s8, s11
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s44, 0
	s_mov_b32 s28, s16
	s_mov_b32 s16, s18
	s_mul_i32 s47, s15, s10
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s48, s46, 7
	s_lshl_b32 s49, s27, 7
	s_lshl_b32 s35, s27, 5
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	s_mov_b32 s50, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40 is_stmt 1             ; ragged.py:1512:40
	v_add_lshl_u32 v65, v188, s44, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s44, s43
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v66, v189, s44, 1
	v_add_lshl_u32 v67, v190, s44, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v68, v191, s44, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v69, v163, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	v_cndmask_b32_e64 v67, 0x80000000, v67, s14
	v_cndmask_b32_e64 v68, 0x80000000, v68, s6
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[36:39], 0 offen
	buffer_load_u16 v66, v66, s[36:39], 0 offen
	buffer_load_u16 v67, v67, s[36:39], 0 offen
	buffer_load_u16 v68, v68, s[36:39], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
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
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	v_cvt_f32_i32_e32 v75, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v77, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s2, s44, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v96, 0x80, v96
	s_lshl_b32 s50, s2, 7
	s_cmp_lg_u32 s44, s48
	s_mov_b32 s44, s2
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v1, 16, v65
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v3, 16, v67
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v60, v60, v1 :: v_dual_lshlrev_b32 v65, 16, v68
	v_mul_f32_e32 v59, v59, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v69
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v192, s49, v192
	v_dual_mul_f32 v42, v42, v2 :: v_dual_add_nc_u32 v193, s49, v193
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v38, v38, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v40, v40, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v37, v37, v2
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v25, v25, v3 :: v_dual_mul_f32 v68, v11, v65
	v_dual_mul_f32 v27, v27, v3 :: v_dual_mul_f32 v66, v9, v65
	v_dual_mul_f32 v28, v28, v3 :: v_dual_mul_f32 v67, v10, v65
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v80, v15, v65
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v69, v12, v65
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v78, v13, v65
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v79, v14, v65
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v70, v70, v65
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v81, v16, v65
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v72, v72, v65
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v71, v71, v65
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v74, v74, v65
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v73, v73, v65
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v76, v76, v65
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v75, v75, v65
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v194, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v195
	ds_load_b128 v[5:8], v195 offset:16
	ds_load_b128 v[9:12], v195 offset:512
	ds_load_b128 v[13:16], v195 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v65, v77, v65 :: v_dual_fmac_f32 v160, v59, v3
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v162, v57, v1 :: v_dual_fmac_f32 v161, v58, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v159, v60, v4 :: v_dual_fmac_f32 v158, v61, v5
	v_dual_fmac_f32 v157, v62, v6 :: v_dual_fmac_f32 v156, v63, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v155, v64, v8 :: v_dual_fmac_f32 v154, v49, v9
	v_dual_fmac_f32 v153, v50, v10 :: v_dual_fmac_f32 v152, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v151, v52, v12 :: v_dual_fmac_f32 v150, v53, v13
	v_dual_fmac_f32 v149, v54, v14 :: v_dual_fmac_f32 v148, v55, v15
	v_dual_fmac_f32 v147, v56, v16 :: v_dual_fmac_f32 v146, v41, v1
	v_dual_fmac_f32 v145, v42, v2 :: v_dual_fmac_f32 v144, v43, v3
	v_dual_fmac_f32 v143, v44, v4 :: v_dual_fmac_f32 v142, v45, v5
	v_dual_fmac_f32 v141, v46, v6 :: v_dual_fmac_f32 v140, v47, v7
	v_dual_fmac_f32 v139, v48, v8 :: v_dual_fmac_f32 v138, v33, v9
	v_dual_fmac_f32 v137, v34, v10 :: v_dual_fmac_f32 v136, v35, v11
	v_dual_fmac_f32 v135, v36, v12 :: v_dual_fmac_f32 v134, v37, v13
	v_dual_fmac_f32 v133, v38, v14 :: v_dual_fmac_f32 v132, v39, v15
	v_dual_fmac_f32 v131, v40, v16 :: v_dual_fmac_f32 v130, v25, v1
	v_dual_fmac_f32 v129, v26, v2 :: v_dual_fmac_f32 v128, v27, v3
	v_dual_fmac_f32 v127, v28, v4 :: v_dual_fmac_f32 v124, v30, v6
	v_dual_fmac_f32 v125, v29, v5 :: v_dual_fmac_f32 v122, v32, v8
	v_dual_fmac_f32 v123, v31, v7 :: v_dual_fmac_f32 v120, v18, v10
	v_dual_fmac_f32 v121, v17, v9 :: v_dual_fmac_f32 v118, v20, v12
	v_dual_fmac_f32 v119, v19, v11 :: v_dual_fmac_f32 v116, v21, v13
	v_dual_fmac_f32 v115, v22, v14 :: v_dual_fmac_f32 v114, v23, v15
	v_dual_fmac_f32 v113, v24, v16 :: v_dual_fmac_f32 v112, v66, v1
	v_dual_fmac_f32 v111, v67, v2 :: v_dual_fmac_f32 v110, v68, v3
	v_dual_fmac_f32 v109, v69, v4 :: v_dual_fmac_f32 v108, v78, v5
	v_dual_fmac_f32 v107, v79, v6 :: v_dual_fmac_f32 v106, v80, v7
	v_dual_fmac_f32 v105, v81, v8 :: v_dual_fmac_f32 v104, v70, v9
	v_dual_fmac_f32 v103, v71, v10 :: v_dual_fmac_f32 v102, v72, v11
	v_dual_fmac_f32 v101, v73, v12 :: v_dual_fmac_f32 v100, v74, v13
	v_dual_fmac_f32 v99, v75, v14 :: v_dual_fmac_f32 v98, v76, v15
	v_fmac_f32_e32 v97, v65, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s2, s41, s50
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s2, 0, 0x80
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s2, v1
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
	s_and_b32 s3, s2, 0xe0
	s_mov_b32 s2, s40
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s40, s3
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, v192
	v_mov_b32_e32 v65, v193
	s_mov_b32 s2, s40
	s_delay_alu instid0(VALU_DEP_2)
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
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_add_nc_u32_e32 v67, s2, v96
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v68, 0x80000000, v65, s0
	v_cndmask_b32_e64 v71, 0x80000000, v66, s0
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_add_nc_u32 v92, 0, v178
	v_add_nc_u32_e32 v77, 0, v175
	v_add_nc_u32_e32 v79, 0, v173
	v_add_nc_u32_e32 v87, 0, v176
	buffer_load_b64 v[75:76], v67, s[28:31], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x1
	buffer_load_b128 v[67:70], v68, s[16:19], 0 offen
	buffer_load_b128 v[71:74], v71, s[16:19], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v91, 0, v177
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1461 27                       ; ragged.py:1461:27
	v_add_nc_u32_e32 v66, s35, v66
	v_add_nc_u32_e32 v65, s35, v65
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s2, s2, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s2, s3
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(2)
	ds_store_b64 v77, v[75:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[75:78], v79 offset1:1
	ds_load_2addr_stride64_b64 v[79:82], v79 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[83:86], v87 offset1:1
	ds_load_2addr_stride64_b64 v[87:90], v87 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[196:199], v91 offset1:1
	ds_load_2addr_stride64_b64 v[200:203], v91 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[204:207], v92 offset1:1
	ds_load_2addr_stride64_b64 v[208:211], v92 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v91, 0, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v91, v[67:70]
	s_waitcnt vmcnt(0)
	ds_store_b128 v91, v[71:74] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v67, v180 offset:1280
	ds_load_u8 v68, v180 offset:1024
	ds_load_u8 v69, v180 offset:1920
	ds_load_u8 v70, v180 offset:1664
	ds_load_u8 v71, v180 offset:1408
	ds_load_u8 v72, v180 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v180 offset:1792
	ds_load_u8 v73, v180 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v73, v68, 0xc0c0004
	ds_load_u8 v73, v180 offset:256
	ds_load_u8 v74, v180
	ds_load_u8 v91, v180 offset:896
	ds_load_u8 v92, v180 offset:640
	ds_load_u8 v212, v180 offset:384
	ds_load_u8 v213, v180 offset:128
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v180 offset:768
	ds_load_u8 v214, v180 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v214, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v67, v74, 16, v73
	v_perm_b32 v73, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v69, v73, 16, v72
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[77:78], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[81:82], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v67, v180 offset:3328
	ds_load_u8 v68, v180 offset:3072
	ds_load_u8 v69, v180 offset:3968
	ds_load_u8 v70, v180 offset:3712
	ds_load_u8 v71, v180 offset:3456
	ds_load_u8 v72, v180 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v180 offset:3840
	ds_load_u8 v73, v180 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v73, v68, 0xc0c0004
	ds_load_u8 v73, v180 offset:2304
	ds_load_u8 v74, v180 offset:2048
	ds_load_u8 v75, v180 offset:2944
	ds_load_u8 v76, v180 offset:2688
	ds_load_u8 v77, v180 offset:2432
	ds_load_u8 v78, v180 offset:2176
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v180 offset:2816
	ds_load_u8 v79, v180 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v67, v74, 16, v73
	v_perm_b32 v73, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[83:84], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v69, v73, 16, v72
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[87:88], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[89:90], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v67, v180 offset:5376
	ds_load_u8 v68, v180 offset:5120
	ds_load_u8 v69, v180 offset:6016
	ds_load_u8 v70, v180 offset:5760
	ds_load_u8 v71, v180 offset:5504
	ds_load_u8 v72, v180 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v180 offset:5888
	ds_load_u8 v73, v180 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v73, v68, 0xc0c0004
	ds_load_u8 v73, v180 offset:4352
	ds_load_u8 v74, v180 offset:4096
	ds_load_u8 v75, v180 offset:4992
	ds_load_u8 v76, v180 offset:4736
	ds_load_u8 v77, v180 offset:4480
	ds_load_u8 v78, v180 offset:4224
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v180 offset:4864
	ds_load_u8 v79, v180 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v67, v74, 16, v73
	v_perm_b32 v73, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[196:197], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v69, v73, 16, v72
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[198:199], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[200:201], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[202:203], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[196:197], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[198:199], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[200:201], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[202:203], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v67, v180 offset:7424
	ds_load_u8 v68, v180 offset:7168
	ds_load_u8 v69, v180 offset:8064
	ds_load_u8 v70, v180 offset:7808
	ds_load_u8 v71, v180 offset:7552
	ds_load_u8 v72, v180 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v180 offset:7936
	ds_load_u8 v73, v180 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v73, v68, 0xc0c0004
	ds_load_u8 v73, v180 offset:6400
	ds_load_u8 v74, v180 offset:6144
	ds_load_u8 v75, v180 offset:7040
	ds_load_u8 v76, v180 offset:6784
	ds_load_u8 v77, v180 offset:6528
	ds_load_u8 v78, v180 offset:6272
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v180 offset:6912
	ds_load_u8 v79, v180 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v67, v74, 16, v73
	v_perm_b32 v73, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[204:205], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v69, v73, 16, v72
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[206:207], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[208:209], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[210:211], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[204:205], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[206:207], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[208:209], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[210:211], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s3, s26, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s18, s3, 0x80
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s2, s18
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s19, s2, s50
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v76, 0, v175
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s19, v169
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s51, s19, s47
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v75, s19, v164
	v_or_b32_e32 v80, s19, v165
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v208, 0, v179
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v66, s50, v65
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s11, s46, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s13, s18, v66
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v66, s19, v170
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s13, vcc_lo, s13
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v67, s50, v66
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s46, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s12, s18, v67
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s19, v171
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s12, vcc_lo, s12
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v68, s50, v67
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s7, s46, v67
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s19, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s10, s18, v68
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s19, v172
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s50, v67
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s10, vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v69, s50, v68
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s18, v65
	v_add_nc_u32_e32 v65, s51, v184
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s46, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s18, v69
	v_add_nc_u32_e32 v69, s51, v183
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s13
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s2, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	buffer_load_u8 v66, v65, s[28:31], 0 offen
	v_add_nc_u32_e32 v65, s51, v185
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s11, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s12
	buffer_load_u8 v68, v65, s[28:31], 0 offen
	v_add_nc_u32_e32 v65, s51, v186
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s10
	s_clause 0x1
	buffer_load_u8 v70, v65, s[28:31], 0 offen
	buffer_load_u8 v69, v69, s[28:31], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v65.l, v66.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v66.l, v65.l, s3
	v_add_nc_u32_e32 v66, s51, v187
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s9, s45
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v65.h, v68.l, 15
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s8, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v68.l, v65.h, s3
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v68, v66, s[28:31], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v66.h, v70.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_lshlrev_b16 v65.h, 8, v65.h
	v_or_b16 v74.l, v65.l, v65.h
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v65, s19, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s46, v65
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s50, v65
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v66.l, v68.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v66.l, v68.l, v66.l, s2
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s7, s45
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s18, v65
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v66.h, v70.l, v66.h, s2
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s46, v67
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v66.l, 8, v66.l
	v_add_nc_u32_e32 v68, s51, v181
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s7, vcc_lo, s7
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v74.h, v66.h, v66.l
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v66, s19, v166
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s50, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s18, v65
	v_add_nc_u32_e32 v65, s51, v182
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s7
	buffer_load_u8 v67, v65, s[28:31], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v65.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v69.l, v65.l, s2
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s2, vcc_lo, s8
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s3, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v68, v68, s[28:31], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.h, v67.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v67.l, v65.h, s2
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s46, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v73.h, v65.h, v65.l
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s19, v93
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s45
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s46, v65
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s50, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s18, v65
	v_add_nc_u32_e32 v65, s51, v95
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s7, vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s7
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s7, s19, s42
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s19, s31
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s7, s7, s27
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v66, v65, s[28:31], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.l, v68.l, 15
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s7, s7, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v68.l, v65.l, s2
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s3, s45
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v65.h, v66.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v66.l, v65.h, s2
	v_add_nc_u32_e32 v66, s7, v174
	v_or_b16 v73.l, v65.h, v65.l
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s50, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s18, v65
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s50, v80
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s2, s0, s2
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s18, v65
	v_add_nc_u32_e32 v65, s7, v94
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s18, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s0, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v69, 0x80000000, v66, s2
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[16:19], 0 offen
	buffer_load_b128 v[69:72], v69, s[16:19], 0 offen
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s46, v75
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v76, v[73:74]
	s_waitcnt lgkmcnt(0)
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s2, s45
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s46, v80
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_barrier
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s45
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v75.l, v67.l, 15
	v_and_b16 v75.h, v67.h, 15
	v_and_b16 v76.l, v68.l, 15
	v_and_b16 v76.h, v68.h, 15
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_lshrrev_b64 v[77:78], 24, v[65:66]
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v75.l, v67.l, v75.l, s3
	v_cndmask_b16 v75.h, v67.h, v75.h, s3
	v_cndmask_b16 v76.l, v68.l, v76.l, s3
	v_cndmask_b16 v76.h, v68.h, v76.h, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_lshrrev_b32_e32 v84, 8, v67
	v_lshrrev_b32_e32 v85, 8, v68
	v_lshrrev_b32_e32 v86, 24, v68
	v_lshrrev_b64 v[78:79], 24, v[67:68]
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v67.l, v71.l, 15
	v_and_b16 v67.h, v71.h, 15
	v_and_b16 v68.l, v72.l, 15
	v_and_b16 v68.h, v72.h, 15
	v_and_b16 v74.h, v66.h, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v67.l, v71.l, v67.l, s2
	v_cndmask_b16 v67.h, v71.h, v67.h, s2
	v_cndmask_b16 v68.l, v72.l, v68.l, s2
	v_cndmask_b16 v68.h, v72.h, v68.h, s2
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_lshrrev_b32_e32 v90, 8, v71
	v_lshrrev_b32_e32 v91, 8, v72
	v_lshrrev_b32_e32 v92, 24, v72
	v_lshrrev_b64 v[71:72], 24, v[71:72]
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v74.h, v66.h, v74.h, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_lshrrev_b32_e32 v82, 8, v66
	v_lshrrev_b32_e32 v83, 24, v66
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v66.h, v70.h, 15
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_lshrrev_b32_e32 v88, 8, v70
	v_lshrrev_b32_e32 v89, 24, v70
	v_lshrrev_b64 v[79:80], 24, v[69:70]
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.h, v86.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v66.h, v70.h, v66.h, s2
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v70.h, v71.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v72.l, 0xff, v76.l
	v_and_b16 v72.h, 0xff, v76.h
	v_cndmask_b16 v71.h, v86.l, v71.h, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v74.l, v66.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v70.h, v71.l, v70.h, s2
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v85.l, 15
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_lshrrev_b32_e32 v81, 8, v65
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v71.h, 8, v71.h
	v_cndmask_b16 v74.l, v66.l, v74.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v73.l, v65.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v71.l, v85.l, v71.l, s3
	v_and_b16 v68.l, 0xff, v68.l
	v_or_b16 v199.h, v72.h, v71.h
	v_and_b16 v71.h, 0xff, v75.l
	v_cndmask_b16 v73.l, v65.l, v73.l, s3
	v_lshlrev_b16 v71.l, 8, v71.l
	v_and_b16 v67.l, 0xff, v67.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v66.l, v70.l, 15
	v_and_b16 v73.h, v65.h, 15
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_lshrrev_b32_e32 v87, 8, v69
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v199.l, v72.l, v71.l
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v71.l, v84.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v66.l, v70.l, v66.l, s2
	v_and_b16 v66.h, 0xff, v66.h
	v_cndmask_b16 v73.h, v65.h, v73.h, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v69.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v71.l, v84.l, v71.l, s3
	v_and_b16 v66.l, 0xff, v66.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.h, v69.h, 15
	v_and_b16 v70.l, v79.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v65.l, v69.l, v65.l, s2
	v_lshlrev_b16 v71.l, 8, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v69.l, v77.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v65.h, v69.h, v65.h, s2
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v69.h, v78.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v65.l, 0xff, v65.l
	v_or_b16 v198.l, v71.h, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v82.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v71.h, 0xff, v74.l
	v_cndmask_b16 v69.h, v78.l, v69.h, s3
	v_cndmask_b16 v69.l, v77.l, v69.l, s3
	v_cndmask_b16 v70.l, v79.l, v70.l, s2
	v_cndmask_b16 v71.l, v82.l, v71.l, s3
	v_and_b16 v68.h, 0xff, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v71.l, 8, v71.l
	v_or_b16 v197.l, v71.h, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v83.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v71.h, 0xff, v74.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.l, v83.l, v71.l, s3
	v_lshlrev_b16 v71.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v197.h, v71.h, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v81.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v71.h, 0xff, v73.l
	v_cndmask_b16 v71.l, v81.l, v71.l, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v71.l, 8, v71.l
	v_or_b16 v196.l, v71.h, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v91.l, 15
	v_and_b16 v71.h, v92.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v71.l, v91.l, v71.l, s2
	v_cndmask_b16 v71.h, v92.l, v71.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v71.l, 8, v71.l
	v_lshlrev_b16 v71.h, 8, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v203.l, v68.l, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v68.l, v90.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v203.h, v68.h, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.l, v90.l, v68.l, s2
	v_lshlrev_b16 v68.l, 8, v68.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v202.l, v67.l, v68.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v67.l, v88.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v68, 0, v178
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v67.l, v88.l, v67.l, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v67.l, 8, v67.l
	v_or_b16 v201.l, v66.l, v67.l
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v66.l, v89.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v66.l, v89.l, v66.l, s2
	v_lshlrev_b16 v66.l, 8, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v201.h, v66.h, v66.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v66.l, v87.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v66.l, v87.l, v66.l, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v66.l, 8, v66.l
	v_or_b16 v200.l, v65.l, v66.l
	v_and_b16 v65.l, 0xff, v75.h
	v_lshlrev_b16 v66.l, 8, v69.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v198.h, v65.l, v66.l
	v_and_b16 v65.l, 0xff, v73.h
	v_lshlrev_b16 v66.l, 8, v69.l
	v_or_b16 v196.h, v65.l, v66.l
	v_and_b16 v65.l, 0xff, v67.h
	v_lshlrev_b16 v66.l, 8, v70.h
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v67, 0, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v202.h, v65.l, v66.l
	v_and_b16 v65.l, 0xff, v65.h
	v_lshlrev_b16 v65.h, 8, v70.l
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v66, 0, v176
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v200.h, v65.l, v65.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v65, 0, v173
	ds_load_2addr_stride64_b64 v[204:207], v65 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v66 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v67 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v67 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v68 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v68 offset0:2 offset1:3
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v208, v[196:199]
	ds_store_b128 v208, v[200:203] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v196, v180 offset:1280
	ds_load_u8 v197, v180 offset:1024
	ds_load_u8 v198, v180 offset:1920
	ds_load_u8 v199, v180 offset:1664
	ds_load_u8 v200, v180 offset:1408
	ds_load_u8 v201, v180 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	ds_load_u8 v197, v180 offset:1792
	ds_load_u8 v202, v180 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v198, 16, v200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v197, v202, v197, 0xc0c0004
	ds_load_u8 v202, v180 offset:256
	ds_load_u8 v203, v180
	ds_load_u8 v208, v180 offset:896
	ds_load_u8 v209, v180 offset:640
	ds_load_u8 v210, v180 offset:384
	ds_load_u8 v211, v180 offset:128
	v_lshl_or_b32 v197, v197, 16, v196
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v180 offset:768
	ds_load_u8 v212, v180 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v201, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v212, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v196, v203, 16, v202
	v_perm_b32 v202, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[204:205], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v198, v202, 16, v201
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[206:207], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[198:199], v[91:92], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v180 offset:3328
	ds_load_u8 v90, v180 offset:3072
	ds_load_u8 v91, v180 offset:3968
	ds_load_u8 v92, v180 offset:3712
	ds_load_u8 v196, v180 offset:3456
	ds_load_u8 v197, v180 offset:3200
	v_wmma_i32_16x16x16_iu4 v[49:56], v[198:199], v[204:205], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[206:207], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v180 offset:3840
	ds_load_u8 v198, v180 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v91, 16, v196
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v198, v90, 0xc0c0004
	ds_load_u8 v198, v180 offset:2304
	ds_load_u8 v199, v180 offset:2048
	ds_load_u8 v200, v180 offset:2944
	ds_load_u8 v201, v180 offset:2688
	ds_load_u8 v202, v180 offset:2432
	ds_load_u8 v203, v180 offset:2176
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	ds_load_u8 v199, v180 offset:2816
	ds_load_u8 v204, v180 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v197, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v204, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v89, v199, 16, v198
	v_perm_b32 v198, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[85:86], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v91, v198, 16, v197
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[87:88], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[83:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v180 offset:5376
	ds_load_u8 v82, v180 offset:5120
	ds_load_u8 v83, v180 offset:6016
	ds_load_u8 v84, v180 offset:5760
	ds_load_u8 v85, v180 offset:5504
	ds_load_u8 v86, v180 offset:5248
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[87:88], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v180 offset:5888
	ds_load_u8 v87, v180 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v180 offset:4352
	ds_load_u8 v88, v180 offset:4096
	ds_load_u8 v89, v180 offset:4992
	ds_load_u8 v90, v180 offset:4736
	ds_load_u8 v91, v180 offset:4480
	ds_load_u8 v92, v180 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v180 offset:4864
	ds_load_u8 v196, v180 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v196, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v81, v88, 16, v87
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[77:78], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v83, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[79:80], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[77:78], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[75:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v73, v180 offset:7424
	ds_load_u8 v74, v180 offset:7168
	ds_load_u8 v75, v180 offset:8064
	ds_load_u8 v76, v180 offset:7808
	ds_load_u8 v77, v180 offset:7552
	ds_load_u8 v78, v180 offset:7296
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v180 offset:7936
	ds_load_u8 v79, v180 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v180 offset:6400
	ds_load_u8 v80, v180 offset:6144
	ds_load_u8 v81, v180 offset:7040
	ds_load_u8 v82, v180 offset:6784
	ds_load_u8 v83, v180 offset:6528
	ds_load_u8 v84, v180 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v180 offset:6912
	ds_load_u8 v85, v180 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v85, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v80, 16, v79
	v_perm_b32 v79, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[69:70], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v75, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[71:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[69:70], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[71:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge13
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v126
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s0, s15, s27
	v_mul_lo_u32 v3, s27, v117
	s_add_i32 s1, s0, s34
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v7, v162, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v4, s1, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v8, v161, 16, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v1
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v10, s34, v1
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add3_u32 v7, v162, v7, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s27, 48, v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v11, s34, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s27, v10
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v2, s1, v9
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v9, v160, 16, 1
	v_cmp_o_f32_e64 s1, v162, v162
	v_add3_u32 v8, v161, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v161, v161
	v_bfe_u32 v10, v159, 16, 1
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s27, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v9, v160, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v160, v160
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s2
	v_bfe_u32 v8, v158, 16, 1
	v_bfe_u32 v11, v157, 16, 1
	v_add3_u32 v10, v159, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v159, v159
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_add3_u32 v8, v158, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v158, v158
	v_add3_u32 v11, v157, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v157, v157
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v156, 16, 1
	v_bfe_u32 v12, v155, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v154, 16, 1
	v_add3_u32 v10, v156, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v156, v156
	v_add3_u32 v12, v155, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v155, v155
	v_bfe_u32 v13, v153, 16, 1
	v_add3_u32 v11, v154, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v154, v154
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s2
	v_bfe_u32 v12, v152, 16, 1
	v_bfe_u32 v14, v151, 16, 1
	v_add3_u32 v13, v153, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v153, v153
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s3
	v_add3_u32 v12, v152, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v152, v152
	v_add3_u32 v14, v151, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v151, v151
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v150, 16, 1
	v_bfe_u32 v15, v149, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s3
	v_bfe_u32 v14, v148, 16, 1
	v_add3_u32 v13, v150, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v150, v150
	v_add3_u32 v15, v149, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v149, v149
	v_bfe_u32 v16, v147, 16, 1
	v_add3_u32 v14, v148, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v148, v148
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v146, 16, 1
	v_bfe_u32 v17, v145, 16, 1
	v_add3_u32 v16, v147, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v147, v147
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s3
	v_add3_u32 v15, v146, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v146, v146
	v_add3_u32 v17, v145, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v145, v145
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v144, 16, 1
	v_bfe_u32 v18, v143, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s3
	v_bfe_u32 v17, v142, 16, 1
	v_add3_u32 v16, v144, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v144, v144
	v_add3_u32 v18, v143, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v143, v143
	v_bfe_u32 v19, v141, 16, 1
	v_add3_u32 v17, v142, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v142, v142
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s2
	v_bfe_u32 v18, v140, 16, 1
	v_bfe_u32 v20, v139, 16, 1
	v_add3_u32 v19, v141, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v141, v141
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s3
	v_add3_u32 v18, v140, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v140, v140
	v_add3_u32 v20, v139, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v139, v139
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v138, 16, 1
	v_bfe_u32 v21, v137, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s2
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v136, 16, 1
	v_add3_u32 v19, v138, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v138, v138
	v_add3_u32 v21, v137, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v137, v137
	v_bfe_u32 v22, v135, 16, 1
	v_add3_u32 v20, v136, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v136, v136
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v134, 16, 1
	v_bfe_u32 v23, v133, 16, 1
	v_add3_u32 v22, v135, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v135, v135
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_add3_u32 v21, v134, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v134, v134
	v_add3_u32 v23, v133, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v133, v133
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v132, 16, 1
	v_bfe_u32 v24, v131, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v130, 16, 1
	v_add3_u32 v22, v132, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v132, v132
	v_add3_u32 v24, v131, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v131, v131
	v_bfe_u32 v25, v129, 16, 1
	v_add3_u32 v23, v130, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v130, v130
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s2
	v_bfe_u32 v24, v128, 16, 1
	v_bfe_u32 v26, v127, 16, 1
	v_add3_u32 v25, v129, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v129, v129
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_add3_u32 v24, v128, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v128, v128
	v_add3_u32 v26, v127, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v127, v127
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s1
	v_bfe_u32 v25, v125, 16, 1
	v_bfe_u32 v27, v124, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s2
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s3
	v_bfe_u32 v26, v123, 16, 1
	v_add3_u32 v25, v125, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v125, v125
	v_add3_u32 v27, v124, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v124, v124
	v_bfe_u32 v28, v122, 16, 1
	v_add3_u32 v26, v123, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v123, v123
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s2
	v_bfe_u32 v27, v121, 16, 1
	v_bfe_u32 v29, v120, 16, 1
	v_add3_u32 v28, v122, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_add3_u32 v27, v121, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_add3_u32 v29, v120, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v120, v120
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s1
	v_bfe_u32 v28, v119, 16, 1
	v_bfe_u32 v30, v118, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s2
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s3
	v_bfe_u32 v29, v116, 16, 1
	v_add3_u32 v28, v119, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v119, v119
	v_add3_u32 v30, v118, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v118, v118
	v_bfe_u32 v31, v115, 16, 1
	v_add3_u32 v29, v116, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v116, v116
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s2
	v_bfe_u32 v30, v114, 16, 1
	v_bfe_u32 v32, v113, 16, 1
	v_add3_u32 v31, v115, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v115, v115
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s3
	v_add3_u32 v30, v114, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v114, v114
	v_add3_u32 v32, v113, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v113, v113
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v112, 16, 1
	v_bfe_u32 v33, v111, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s2
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s3
	v_bfe_u32 v32, v110, 16, 1
	v_add3_u32 v31, v112, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v112, v112
	v_add3_u32 v33, v111, v33, 0x7fff
	v_cmp_o_f32_e64 s2, v111, v111
	v_bfe_u32 v34, v109, 16, 1
	v_add3_u32 v32, v110, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v110, v110
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s2
	v_bfe_u32 v33, v108, 16, 1
	v_bfe_u32 v35, v107, 16, 1
	v_add3_u32 v34, v109, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v109, v109
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s3
	v_add3_u32 v33, v108, v33, 0x7fff
	v_cmp_o_f32_e64 s2, v108, v108
	v_add3_u32 v35, v107, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v107, v107
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v106, 16, 1
	v_bfe_u32 v36, v105, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s2
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	v_bfe_u32 v35, v104, 16, 1
	v_add3_u32 v34, v106, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v106, v106
	v_add3_u32 v36, v105, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v105, v105
	v_bfe_u32 v37, v103, 16, 1
	v_add3_u32 v35, v104, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v104, v104
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s2
	v_bfe_u32 v36, v102, 16, 1
	v_bfe_u32 v38, v101, 16, 1
	v_add3_u32 v37, v103, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s3
	v_add3_u32 v36, v102, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v102, v102
	v_add3_u32 v38, v101, v38, 0x7fff
	v_cmp_o_f32_e64 s3, v101, v101
	v_bfe_u32 v39, v100, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v99, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s2
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s3
	v_add3_u32 v38, v100, v39, 0x7fff
	v_bfe_u32 v39, v98, 16, 1
	v_cmp_o_f32_e64 s1, v100, v100
	v_bfe_u32 v40, v97, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v37, v99, v37, 0x7fff
	v_add3_u32 v39, v98, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v98, v98
	v_add3_u32 v40, v97, v40, 0x7fff
	v_cmp_o_f32_e64 s7, v97, v97
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cmp_o_f32_e64 s2, v99, v99
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_add_nc_u32_e32 v5, s35, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s7
	v_cndmask_b32_e64 v38, v8, v7, s1
	v_cndmask_b32_e64 v7, v7, v8, s1
	v_cndmask_b32_e64 v39, v10, v9, s1
	v_cndmask_b32_e64 v8, v9, v10, s1
	v_cndmask_b32_e64 v40, v13, v11, s1
	v_cndmask_b32_e64 v9, v11, v13, s1
	v_cndmask_b32_e64 v41, v14, v12, s1
	v_cndmask_b32_e64 v10, v12, v14, s1
	v_cndmask_b32_e64 v42, v17, v15, s1
	v_cndmask_b32_e64 v11, v15, v17, s1
	v_cndmask_b32_e64 v45, v22, v20, s1
	v_cndmask_b32_e64 v14, v20, v22, s1
	v_cndmask_b32_e64 v46, v25, v23, s1
	v_cndmask_b32_e64 v15, v23, v25, s1
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s2
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v43, v18, v16, s1
	v_cndmask_b32_e64 v12, v16, v18, s1
	v_cndmask_b32_e64 v47, v26, v24, s1
	v_cndmask_b32_e64 v16, v24, v26, s1
	v_permlanex16_b32 v24, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s1
	v_cndmask_b32_e64 v22, 0x3276, v23, s1
	v_permlanex16_b32 v23, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v44, v21, v19, s1
	v_cndmask_b32_e64 v13, v19, v21, s1
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v52, v37, v35, s1
	v_cndmask_b32_e64 v21, v35, v37, s1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v6, s33, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_permlanex16_b32 v25, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v17, v27, v29, s1
	v_cndmask_b32_e64 v18, v28, v30, s1
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v19, v31, v33, s1
	v_cndmask_b32_e64 v20, v32, v34, s1
	v_cndmask_b32_e64 v53, v0, v36, s1
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	v_cndmask_b32_e64 v0, v36, v0, s1
	v_cndmask_b32_e64 v48, v29, v27, s1
	v_cndmask_b32_e64 v49, v30, v28, s1
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_add_lshl_u32 v38, v4, v3, 1
	v_add_lshl_u32 v3, v2, v3, 1
	v_cndmask_b32_e64 v50, v33, v31, s1
	v_cndmask_b32_e64 v51, v34, v32, s1
	v_permlanex16_b32 v26, v10, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s1, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v22, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	v_add_lshl_u32 v39, v4, v6, 1
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_cndmask_b32_e64 v40, 0x80000000, v38, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v28, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v14, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v16, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v20, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v13, v26, v41, v37
	v_perm_b32 v14, v26, v41, v54
	v_perm_b32 v15, v22, v42, v37
	v_perm_b32 v16, v22, v42, v54
	v_perm_b32 v17, v27, v43, v37
	v_perm_b32 v18, v27, v43, v54
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v28, v44, v54
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v29, v45, v54
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v30, v46, v54
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v31, v47, v54
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v32, v48, v54
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v33, v49, v54
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v34, v50, v54
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v35, v51, v54
	v_perm_b32 v35, v36, v52, v37
	v_perm_b32 v37, v0, v53, v37
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_perm_b32 v38, v0, v53, v54
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v40, s[24:27], 0 offen
	buffer_store_b128 v[11:14], v3, s[24:27], 0 offen
	buffer_store_b128 v[15:18], v39, s[24:27], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v2, v5, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s14, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v4, v1, 1
	v_add_lshl_u32 v1, v2, v1, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s14, vcc_lo
	s_and_b32 s0, s6, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v5, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s6, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_perm_b32 v36, v36, v52, v54
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[24:27], 0 offen
	buffer_store_b128 v[23:26], v3, s[24:27], 0 offen
	buffer_store_b128 v[27:30], v2, s[24:27], 0 offen
	buffer_store_b128 v[31:34], v4, s[24:27], 0 offen
	buffer_store_b128 v[35:38], v1, s[24:27], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 215
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 215
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12296
; TotalNumSgprs: 54
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 215
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     215
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
