	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v109, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s23, 0xff
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
	s_ashr_i32 s31, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s30, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s30, s31
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
	s_abs_i32 s8, s30
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s8
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s12, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s12
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s7, s9
	s_xor_b32 s10, s12, s30
	s_mul_i32 s11, s9, s8
	s_ashr_i32 s36, s10, 31
	s_sub_i32 s7, s7, s11
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s7, s8
	s_cmp_ge_u32 s7, s8
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s25, s6, s22
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s7, s8
	s_cselect_b32 s7, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s37, s7, s36
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s9, s37, s36
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s30
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s24, s9, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s12, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s24, v109
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s7, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s22, v1
	v_cmp_gt_i32_e64 s4, s22, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s11, s22, v3
	v_cmp_gt_i32_e64 s10, s22, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s26, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s26, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge18_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s33, s24, s25
	s_lshl_b32 s15, s23, 4
	s_lshl_b32 s35, s23, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr33
                                        ; implicit-def: $sgpr15
                                        ; implicit-def: $sgpr35
.LBB0_3:                                ; %Flow315
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v119, 0xf0, v0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
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
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_mov_b32_e32 v159, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s34, s8, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph17
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshrrev_b32_e32 v6, 1, v0
	v_dual_mov_b32 v148, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v146, 0 :: v_dual_and_b32 v9, 24, v6
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v161, 4, v0
	v_xor_b32_e32 v11, v7, v2
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v4, s24, v2
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s0, s26, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s7, 31
	v_dual_mov_b32 v158, 0 :: v_dual_lshlrev_b32 v1, 4, v109
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v89, 24, v3
	v_dual_mov_b32 v159, 0 :: v_dual_lshlrev_b32 v8, 5, v109
	v_xor_b32_e32 v163, v3, v9
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v3, 0xe00, v161
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v9, 24, v11
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s26, s26, s0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s0, s7, s1
	s_add_i32 s33, s24, s25
	s_ashr_i32 s42, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s22, v4
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v4, 3, v119
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v12, s33, v109
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, s34, v1
	v_or3_b32 v168, v3, v9, v8
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s40, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s41, s26, 1
	.loc	1 1470 43                       ; ragged.py:1470:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s22, s6, s8
	s_and_b32 s25, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	v_xor_b32_e32 v10, v89, v4
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v13, 16, v12
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v14, 32, v12
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v15, 48, v12
	v_mul_lo_u32 v176, v12, s9
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v12, 5, v0
	s_bitcmp1_b32 s7, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s31, s31, s6
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v160, 4, v119
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s23, v5
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v5, s33, v2
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[90:91], null, s8, v2, v[89:90]
	v_xor_b32_e32 v2, 8, v168
	v_add3_u32 v4, s22, s40, v4
	s_cselect_b32 s45, -1, 0
	s_sub_i32 s3, s36, s31
	v_lshl_or_b32 v164, v109, 9, v10
	v_add3_u32 v175, 0, v109, v6
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v6, 2, v119
	s_sub_i32 s3, s3, s37
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v12, 32, v12
	v_mad_u64_u32 v[91:92], null, s23, v160, v[1:2]
	s_mul_i32 s30, s30, s3
	v_mul_lo_u32 v4, s23, v4
	s_lshl_b32 s3, s30, 8
	s_lshl_b32 s2, s2, 8
	v_and_or_b32 v162, v7, 24, v8
	v_xor_b32_e32 v10, 0x88, v164
	v_xor_b32_e32 v3, 0x110, v164
	v_xor_b32_e32 v8, 0x198, v164
	v_xor_b32_e32 v9, 16, v168
	v_xor_b32_e32 v11, 24, v168
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v7, 28, v7
	v_add3_u32 v6, 0, v6, v12
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v12, 1, v119
	s_add_i32 s2, s2, s3
	v_mul_lo_u32 v177, v13, s9
	v_mul_lo_u32 v178, v14, s9
	v_mul_lo_u32 v179, v15, s9
	v_mad_u64_u32 v[92:93], null, v5, s8, v[89:90]
	s_lshl_b32 s15, s23, 4
	s_add_i32 s3, s2, s23
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v156, s34, v0
	v_xor_b32_e32 v165, 8, v162
	v_xor_b32_e32 v166, 16, v162
	v_xor_b32_e32 v167, 24, v162
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v169, 3, v90
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v170, 4, v90
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v171, 5, v90
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v172, 6, v90
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v173, 7, v90
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v174, s15, v91
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v180, s3, v4, v1
	v_add3_u32 v181, s2, v4, v1
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v182, 0, v10
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v183, 0, v3
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v184, 0, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v185, 0, v2
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v186, 0, v9
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v187, 0, v11
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v188, v6, v7
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v189, 0, v12
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v93, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s46, s41, -1
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s43, s6, s9
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s44, 0
	s_mov_b32 s24, s12
	s_mov_b32 s28, s14
	s_mul_i32 s47, s33, s8
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s48, s46, 5
	s_lshl_b32 s35, s23, 5
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s49, 0
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v156
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v65, v176, s44, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s44, s43
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v66, v177, s44, 1
	v_add_lshl_u32 v67, v178, s44, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s23
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v68, v179, s44, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v69, v156, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	v_cndmask_b32_e64 v67, 0x80000000, v67, s11
	v_cndmask_b32_e64 v68, 0x80000000, v68, s10
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[36:39], 0 offen
	buffer_load_u16 v66, v66, s[36:39], 0 offen
	buffer_load_u16 v67, v67, s[36:39], 0 offen
	buffer_load_u16 v68, v68, s[36:39], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v71, v2
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
	v_cvt_f32_i32_e32 v70, v1
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
	v_add_nc_u32_e32 v92, 32, v92
	s_lshl_b32 s49, s2, 5
	s_cmp_lg_u32 s44, s48
	s_mov_b32 s44, s2
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v66
	v_lshlrev_b32_e32 v1, 16, v65
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v181, s35, v181
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v69
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v3, 16, v67
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v65, 16, v68
	v_mul_f32_e32 v60, v60, v1
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v180, s35, v180
	v_dual_mul_f32 v59, v59, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v38, v38, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v40, v40, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v37, v37, v2
	v_mul_f32_e32 v42, v42, v2
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v28, v28, v3
	v_dual_mul_f32 v25, v25, v3 :: v_dual_mul_f32 v68, v11, v65
	v_dual_mul_f32 v27, v27, v3 :: v_dual_mul_f32 v66, v9, v65
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v80, v15, v65
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v69, v12, v65
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v78, v13, v65
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v67, v10, v65
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v70, v70, v65
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v81, v16, v65
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v72, v72, v65
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v79, v14, v65
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v74, v74, v65
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v71, v71, v65
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v76, v76, v65
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v73, v73, v65
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v188, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v189
	ds_load_b128 v[5:8], v189 offset:16
	ds_load_b128 v[9:12], v189 offset:512
	ds_load_b128 v[13:16], v189 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v75, v75, v65
	v_mul_f32_e32 v65, v77, v65
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v159, v57, v1 :: v_dual_fmac_f32 v158, v58, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v157, v59, v3 :: v_dual_fmac_f32 v154, v61, v5
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v155, v60, v4 :: v_dual_fmac_f32 v150, v49, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v153, v62, v6 :: v_dual_fmac_f32 v146, v53, v13
	v_dual_fmac_f32 v152, v63, v7 :: v_dual_fmac_f32 v151, v64, v8
	v_dual_fmac_f32 v144, v55, v15 :: v_dual_fmac_f32 v149, v50, v10
	v_fmac_f32_e32 v142, v41, v1
	v_dual_fmac_f32 v148, v51, v11 :: v_dual_fmac_f32 v147, v52, v12
	v_dual_fmac_f32 v140, v43, v3 :: v_dual_fmac_f32 v145, v54, v14
	v_dual_fmac_f32 v138, v45, v5 :: v_dual_fmac_f32 v143, v56, v16
	v_dual_fmac_f32 v136, v47, v7 :: v_dual_fmac_f32 v141, v42, v2
	v_dual_fmac_f32 v134, v33, v9 :: v_dual_fmac_f32 v139, v44, v4
	v_dual_fmac_f32 v132, v35, v11 :: v_dual_fmac_f32 v137, v46, v6
	v_dual_fmac_f32 v130, v37, v13 :: v_dual_fmac_f32 v135, v48, v8
	v_dual_fmac_f32 v128, v39, v15 :: v_dual_fmac_f32 v133, v34, v10
	v_dual_fmac_f32 v126, v25, v1 :: v_dual_fmac_f32 v131, v36, v12
	v_dual_fmac_f32 v124, v27, v3 :: v_dual_fmac_f32 v129, v38, v14
	v_dual_fmac_f32 v122, v29, v5 :: v_dual_fmac_f32 v127, v40, v16
	v_dual_fmac_f32 v120, v31, v7 :: v_dual_fmac_f32 v125, v26, v2
	v_fmac_f32_e32 v118, v32, v8
	v_dual_fmac_f32 v123, v28, v4 :: v_dual_fmac_f32 v116, v18, v10
	v_dual_fmac_f32 v121, v30, v6 :: v_dual_fmac_f32 v114, v20, v12
	v_dual_fmac_f32 v117, v17, v9 :: v_dual_fmac_f32 v112, v22, v14
	v_dual_fmac_f32 v115, v19, v11 :: v_dual_fmac_f32 v110, v24, v16
	v_dual_fmac_f32 v113, v21, v13 :: v_dual_fmac_f32 v106, v68, v3
	v_dual_fmac_f32 v111, v23, v15 :: v_dual_fmac_f32 v108, v66, v1
	v_dual_fmac_f32 v107, v67, v2 :: v_dual_fmac_f32 v104, v78, v5
	v_dual_fmac_f32 v105, v69, v4 :: v_dual_fmac_f32 v102, v80, v7
	v_dual_fmac_f32 v103, v79, v6 :: v_dual_fmac_f32 v100, v70, v9
	v_dual_fmac_f32 v101, v81, v8 :: v_dual_fmac_f32 v98, v72, v11
	v_dual_fmac_f32 v99, v71, v10 :: v_dual_fmac_f32 v96, v74, v13
	v_dual_fmac_f32 v97, v73, v12 :: v_dual_fmac_f32 v94, v76, v15
	v_fmac_f32_e32 v95, v75, v14
	v_fmac_f32_e32 v93, v65, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s2, s42, s49
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s2, 0, 32
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
	s_and_b32 s3, s2, 32
	s_mov_b32 s2, s40
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s40, s3
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, v180
	v_mov_b32_e32 v65, v181
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
	.loc	1 1472 38 is_stmt 1             ; ragged.py:1472:38
	v_cndmask_b32_e64 v67, 0x80000000, v65, s1
	v_cndmask_b32_e64 v71, 0x80000000, v66, s1
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v75, s2, v92
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x1
	buffer_load_b128 v[67:70], v67, s[28:31], 0 offen
	buffer_load_b128 v[71:74], v71, s[28:31], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v77, 0, v163
	v_add_nc_u32_e32 v78, 0, v162
	v_add_nc_u32_e32 v79, 0, v165
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	v_add_nc_u32_e32 v87, 0, v166
	v_add_nc_u32_e32 v88, 0, v167
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v216, 0, v164
	v_add_nc_u32_e32 v217, 0, v168
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b64 v[75:76], v75, s[24:27], 0 offen
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
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(1)
	v_perm_b32 v202, v71, v67, 0x5010400
	v_perm_b32 v203, v71, v67, 0x7030602
	v_perm_b32 v204, v72, v68, 0x5010400
	v_perm_b32 v205, v72, v68, 0x7030602
	v_perm_b32 v206, v73, v69, 0x5010400
	v_perm_b32 v207, v73, v69, 0x7030602
	v_perm_b32 v208, v74, v70, 0x5010400
	v_perm_b32 v209, v74, v70, 0x7030602
	v_lshrrev_b32_e32 v210, 8, v202
	v_lshrrev_b32_e32 v211, 24, v202
	v_lshrrev_b32_e32 v212, 8, v203
	v_lshrrev_b32_e32 v213, 24, v203
	v_lshrrev_b32_e32 v214, 8, v204
	v_lshrrev_b32_e32 v215, 24, v204
	v_lshrrev_b32_e32 v218, 8, v205
	v_lshrrev_b32_e32 v219, 24, v205
	v_lshrrev_b32_e32 v220, 8, v206
	v_lshrrev_b32_e32 v221, 24, v206
	v_lshrrev_b32_e32 v222, 8, v207
	v_lshrrev_b32_e32 v223, 24, v207
	v_lshrrev_b32_e32 v224, 8, v208
	v_lshrrev_b32_e32 v225, 24, v208
	v_lshrrev_b32_e32 v226, 8, v209
	v_lshrrev_b32_e32 v227, 24, v209
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(0)
	ds_store_b64 v77, v[75:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[67:70], v78 offset1:1
	ds_load_2addr_stride64_b64 v[71:74], v78 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[75:78], v79 offset1:1
	ds_load_2addr_stride64_b64 v[79:82], v79 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[83:86], v87 offset1:1
	ds_load_2addr_stride64_b64 v[190:193], v87 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[194:197], v88 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v88 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_and_b16 v87.l, 0xff, v202.l
	v_and_b16 v202.l, 0xff, v204.l
	v_and_b16 v204.l, 0xff, v206.l
	v_and_b16 v206.l, 0xff, v208.l
	v_lshlrev_b16 v208.l, 8, v210.l
	v_and_b16 v87.h, 0xff, v202.h
	v_and_b16 v202.h, 0xff, v204.h
	v_and_b16 v204.h, 0xff, v206.h
	v_and_b16 v206.h, 0xff, v208.h
	v_lshlrev_b16 v208.h, 8, v211.l
	v_and_b16 v88.l, 0xff, v203.l
	v_and_b16 v203.l, 0xff, v205.l
	v_and_b16 v205.l, 0xff, v207.l
	v_and_b16 v207.l, 0xff, v209.l
	v_lshlrev_b16 v209.l, 8, v212.l
	v_and_b16 v88.h, 0xff, v203.h
	v_and_b16 v203.h, 0xff, v205.h
	v_and_b16 v205.h, 0xff, v207.h
	v_and_b16 v207.h, 0xff, v209.h
	v_lshlrev_b16 v209.h, 8, v213.l
	v_lshlrev_b16 v210.l, 8, v214.l
	v_lshlrev_b16 v210.h, 8, v215.l
	v_lshlrev_b16 v211.l, 8, v218.l
	v_lshlrev_b16 v211.h, 8, v219.l
	v_lshlrev_b16 v212.l, 8, v220.l
	v_lshlrev_b16 v212.h, 8, v221.l
	v_lshlrev_b16 v213.l, 8, v222.l
	v_lshlrev_b16 v213.h, 8, v223.l
	v_lshlrev_b16 v214.l, 8, v224.l
	v_lshlrev_b16 v214.h, 8, v225.l
	v_lshlrev_b16 v215.l, 8, v226.l
	v_lshlrev_b16 v215.h, 8, v227.l
	v_or_b16 v87.l, v87.l, v208.l
	v_or_b16 v87.h, v87.h, v208.h
	v_or_b16 v88.l, v88.l, v209.l
	v_or_b16 v88.h, v88.h, v209.h
	v_or_b16 v202.l, v202.l, v210.l
	v_or_b16 v202.h, v202.h, v210.h
	v_or_b16 v203.l, v203.l, v211.l
	v_or_b16 v203.h, v203.h, v211.h
	v_or_b16 v204.l, v204.l, v212.l
	v_or_b16 v204.h, v204.h, v212.h
	v_or_b16 v205.l, v205.l, v213.l
	v_or_b16 v205.h, v205.h, v213.h
	v_or_b16 v206.l, v206.l, v214.l
	v_or_b16 v206.h, v206.h, v214.h
	v_or_b16 v207.l, v207.l, v215.l
	v_or_b16 v207.h, v207.h, v215.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v216, v87
	ds_store_b16_d16_hi v216, v87 offset:32
	ds_store_b16 v216, v88 offset:64
	ds_store_b16_d16_hi v216, v88 offset:96
	ds_store_b16 v182, v202
	ds_store_b16_d16_hi v182, v202 offset:32
	ds_store_b16 v182, v203 offset:64
	ds_store_b16_d16_hi v182, v203 offset:96
	ds_store_b16 v183, v204
	ds_store_b16_d16_hi v183, v204 offset:32
	ds_store_b16 v183, v205 offset:64
	ds_store_b16_d16_hi v183, v205 offset:96
	ds_store_b16 v184, v206
	ds_store_b16_d16_hi v184, v206 offset:32
	ds_store_b16 v184, v207 offset:64
	ds_store_b16_d16_hi v184, v207 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[202:205], v217 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v185 offset1:8
	ds_load_2addr_stride64_b64 v[210:213], v186 offset1:8
	ds_load_2addr_stride64_b64 v[214:217], v187 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[202:203], v[67:68], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[204:205], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[202:203], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[204:205], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[202:203], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[204:205], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[202:203], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[204:205], v[73:74], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[206:207], v[75:76], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[208:209], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[206:207], v[77:78], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[208:209], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[206:207], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[208:209], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[206:207], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[208:209], v[81:82], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[210:211], v[83:84], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[212:213], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[210:211], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[212:213], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[210:211], v[190:191], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[212:213], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[210:211], v[192:193], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[212:213], v[192:193], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[214:215], v[194:195], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[216:217], v[194:195], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[214:215], v[196:197], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[216:217], v[196:197], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[214:215], v[198:199], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[216:217], v[198:199], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[214:215], v[200:201], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[216:217], v[200:201], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s3, s41, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s30, s3, 32
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s2, s30
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 4, v89
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_add_i32 s31, s2, s49
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v76, 0, v163
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s50, s31, s47
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v75, s31, v160
	v_or_b32_e32 v65, s31, v65
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v206, 0, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v66, s49, v65
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s13, s46, v65
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v65, 3, v89
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s30, v66
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v66, 5, v89
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v66, s31, v66
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v67, s49, v66
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s12, s46, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s9, s30, v67
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v67, 6, v89
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s31, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v68, s49, v67
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s46, v67
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s31, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s30, v68
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v68, 7, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s49, v67
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s45
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s6, s0, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s31, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s14, s30, v65
	v_add_nc_u32_e32 v65, s50, v170
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v69, s49, v68
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s46, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s8
	v_add_nc_u32_e32 v68, s50, v173
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s8, s0, s9
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s30, v69
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v66, v65, s[24:27], 0 offen
	v_add_nc_u32_e32 v65, s50, v171
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s7, s0, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_cndmask_b32_e64 v65, 0x80000000, v65, s8
	s_clause 0x1
	buffer_load_u8 v69, v65, s[24:27], 0 offen
	buffer_load_u8 v68, v68, s[24:27], 0 offen
	v_add_nc_u32_e32 v65, s50, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s6, s0, s14
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v70, v65, s[24:27], 0 offen
	v_add_nc_u32_e32 v65, s50, v169
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s6, s13, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v71, v65, s[24:27], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(4)
	v_and_b16 v65.l, v66.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v66.l, v65.l, s6
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s6, s12, s45
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v65.h, v69.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v66.l, v68.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v69.l, v65.h, s6
	v_cndmask_b16 v66.l, v68.l, v66.l, s3
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v68, 1, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.h, 8, v65.h
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v66.h, v70.l, 15
	v_add_nc_u32_e32 v68, s50, v68
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v74.l, v65.l, v65.h
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 2, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v66.h, v70.l, v66.h, s2
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s46, v67
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s31, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v74.h, v66.h, v66.l
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s45
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s46, v65
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s49, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s30, v65
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 1, v89
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s6, s0, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v66, s31, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s49, v66
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s30, v65
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v65, 2, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v65, s50, v65
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	buffer_load_u8 v67, v65, s[24:27], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v71.l, v65.l, s2
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s2, s0, s7
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s3, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v68, v68, s[24:27], 0 offen
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
	v_or_b32_e32 v65, s31, v89
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s45
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s46, v65
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s49, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s30, v65
	v_add_nc_u32_e32 v65, s50, v90
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s6, s0, s6
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s6, s31, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	s_mul_i32 s6, s6, s23
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v66, v65, s[24:27], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.l, v68.l, 15
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s6, s6, s34
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v68.l, v65.l, s2
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s3, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v65.h, v66.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v66.l, v65.h, s2
	v_add_nc_u32_e32 v66, s6, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v73.l, v65.h, v65.l
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s49, v75
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s30, v65
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 16, v160
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v80, s31, v65
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s31, s27
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s49, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s30, v65
	v_add_nc_u32_e32 v65, s6, v91
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	s_mov_b32 s30, s26
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v69, 0x80000000, v66, s2
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[28:31], 0 offen
	buffer_load_b128 v[69:72], v69, s[28:31], 0 offen
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
	v_lshrrev_b32_e32 v195, 8, v71
	v_lshrrev_b32_e32 v196, 8, v72
	v_lshrrev_b32_e32 v197, 24, v72
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
	v_lshrrev_b32_e32 v194, 24, v70
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
	v_and_b16 v73.h, v65.h, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v71.h, 8, v71.h
	v_cndmask_b16 v74.l, v66.l, v74.l, s3
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_lshrrev_b32_e32 v81, 8, v65
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v71.l, v85.l, v71.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v73.l, v65.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v193.h, v72.h, v71.h
	v_and_b16 v71.h, 0xff, v75.l
	v_cndmask_b16 v73.h, v65.h, v73.h, s3
	v_lshlrev_b16 v71.l, 8, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.h, v69.h, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v73.l, v65.l, v73.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v65.l, v69.l, 15
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_lshrrev_b32_e32 v87, 8, v69
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v193.l, v72.l, v71.l
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v71.l, v84.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v65.h, v69.h, v65.h, s2
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v69.h, v78.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v65.l, v69.l, v65.l, s2
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v69.l, v77.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v71.l, v84.l, v71.l, s3
	v_and_b16 v68.l, 0xff, v68.l
	v_cndmask_b16 v69.h, v78.l, v69.h, s3
	v_and_b16 v67.l, 0xff, v67.l
	v_cndmask_b16 v69.l, v77.l, v69.l, s3
	v_lshlrev_b16 v71.l, 8, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v66.l, v70.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v69.h, 8, v69.h
	v_and_b16 v66.h, 0xff, v66.h
	v_lshlrev_b16 v69.l, 8, v69.l
	v_or_b16 v192.l, v71.h, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v82.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v71.h, 0xff, v74.l
	v_cndmask_b16 v66.l, v70.l, v66.l, s2
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v70.l, v79.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v65.l, 0xff, v65.l
	v_cndmask_b16 v71.l, v82.l, v71.l, s3
	v_and_b16 v68.h, 0xff, v68.h
	v_and_b16 v66.l, 0xff, v66.l
	v_cndmask_b16 v70.l, v79.l, v70.l, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v71.l, 8, v71.l
	v_or_b16 v191.l, v71.h, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v83.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v71.h, 0xff, v74.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.l, v83.l, v71.l, s3
	v_lshlrev_b16 v71.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v191.h, v71.h, v71.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v71.l, v81.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v71.h, 0xff, v73.l
	v_cndmask_b16 v71.l, v81.l, v71.l, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v71.l, 8, v71.l
	v_or_b16 v190.l, v71.h, v71.l
	v_and_b16 v71.l, 0xff, v75.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v192.h, v71.l, v69.h
	v_and_b16 v69.h, 0xff, v73.h
	v_or_b16 v190.h, v69.h, v69.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v69.l, v196.l, 15
	v_and_b16 v69.h, v197.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v69.l, v196.l, v69.l, s2
	v_cndmask_b16 v69.h, v197.l, v69.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v69.l, 8, v69.l
	v_lshlrev_b16 v69.h, 8, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v197.l, v68.l, v69.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v68.l, v195.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v197.h, v68.h, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.l, v195.l, v68.l, s2
	v_lshlrev_b16 v68.l, 8, v68.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v196.l, v67.l, v68.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v67.l, v88.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v68, 0, v167
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v67.l, v88.l, v67.l, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v67.l, 8, v67.l
	v_or_b16 v195.l, v66.l, v67.l
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v66.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v66.l, v194.l, v66.l, s2
	v_lshlrev_b16 v66.l, 8, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v195.h, v66.h, v66.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v66.l, v87.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v66.l, v87.l, v66.l, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v66.l, 8, v66.l
	v_or_b16 v194.l, v65.l, v66.l
	v_and_b16 v65.l, 0xff, v67.h
	v_lshlrev_b16 v66.l, 8, v70.h
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v67, 0, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v196.h, v65.l, v66.l
	v_and_b16 v65.l, 0xff, v65.h
	v_lshlrev_b16 v65.h, 8, v70.l
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v66, 0, v165
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v194.h, v65.l, v65.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v65, 0, v162
	ds_load_2addr_stride64_b64 v[198:201], v65 offset1:1
	ds_load_2addr_stride64_b64 v[202:205], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v66 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v67 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v67 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v68 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v68 offset0:2 offset1:3
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v206, v[190:193]
	ds_store_b128 v206, v[194:197] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v190, v175 offset:1280
	ds_load_u8 v191, v175 offset:1024
	ds_load_u8 v192, v175 offset:1792
	ds_load_u8 v193, v175 offset:1536
	ds_load_u8 v194, v175 offset:1408
	ds_load_u8 v195, v175 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v191, v193, v192, 0xc0c0004
	ds_load_u8 v192, v175 offset:256
	ds_load_u8 v193, v175
	ds_load_u8 v196, v175 offset:768
	ds_load_u8 v197, v175 offset:512
	ds_load_u8 v206, v175 offset:384
	ds_load_u8 v207, v175 offset:128
	v_lshl_or_b32 v191, v191, 16, v190
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v193, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v193, 16, v192
	v_perm_b32 v192, v195, v194, 0xc0c0004
	ds_load_u8 v193, v175 offset:1664
	ds_load_u8 v194, v175 offset:1920
	ds_load_u8 v195, v175 offset:640
	ds_load_u8 v196, v175 offset:896
	v_wmma_i32_16x16x16_iu4 v[57:64], v[190:191], v[198:199], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[200:201], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[190:191], v[202:203], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[204:205], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v193, v193, v194, 0xc0c0004
	v_perm_b32 v194, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v195, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v193, v193, 16, v192
	v_lshl_or_b32 v192, v195, 16, v194
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[192:193], v[198:199], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[192:193], v[200:201], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[192:193], v[202:203], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[192:193], v[204:205], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v190, v175 offset:3328
	ds_load_u8 v191, v175 offset:3072
	ds_load_u8 v192, v175 offset:3840
	ds_load_u8 v193, v175 offset:3584
	ds_load_u8 v194, v175 offset:3456
	ds_load_u8 v195, v175 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v191, v193, v192, 0xc0c0004
	ds_load_u8 v192, v175 offset:2304
	ds_load_u8 v193, v175 offset:2048
	ds_load_u8 v196, v175 offset:2816
	ds_load_u8 v197, v175 offset:2560
	ds_load_u8 v198, v175 offset:2432
	ds_load_u8 v199, v175 offset:2176
	v_lshl_or_b32 v191, v191, 16, v190
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v193, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v193, 16, v192
	v_perm_b32 v192, v195, v194, 0xc0c0004
	ds_load_u8 v193, v175 offset:3712
	ds_load_u8 v194, v175 offset:3968
	ds_load_u8 v195, v175 offset:2688
	ds_load_u8 v196, v175 offset:2944
	v_wmma_i32_16x16x16_iu4 v[57:64], v[190:191], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[190:191], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[87:88], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v193, v193, v194, 0xc0c0004
	v_perm_b32 v194, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v195, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v193, v193, 16, v192
	v_lshl_or_b32 v192, v195, 16, v194
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[192:193], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[192:193], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[192:193], v[83:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v175 offset:5376
	ds_load_u8 v82, v175 offset:5120
	ds_load_u8 v83, v175 offset:5888
	ds_load_u8 v84, v175 offset:5632
	ds_load_u8 v85, v175 offset:5504
	ds_load_u8 v86, v175 offset:5248
	v_wmma_i32_16x16x16_iu4 v[33:40], v[192:193], v[87:88], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	ds_load_u8 v83, v175 offset:4352
	ds_load_u8 v84, v175 offset:4096
	ds_load_u8 v87, v175 offset:4864
	ds_load_u8 v88, v175 offset:4608
	ds_load_u8 v190, v175 offset:4480
	ds_load_u8 v191, v175 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v84, 16, v83
	v_perm_b32 v83, v86, v85, 0xc0c0004
	ds_load_u8 v84, v175 offset:5760
	ds_load_u8 v85, v175 offset:6016
	ds_load_u8 v86, v175 offset:4736
	ds_load_u8 v87, v175 offset:4992
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[79:80], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v84, v85, 0xc0c0004
	v_perm_b32 v85, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v86, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v84, v84, 16, v83
	v_lshl_or_b32 v83, v86, 16, v85
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[77:78], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[75:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v73, v175 offset:7424
	ds_load_u8 v74, v175 offset:7168
	ds_load_u8 v75, v175 offset:7936
	ds_load_u8 v76, v175 offset:7680
	ds_load_u8 v77, v175 offset:7552
	ds_load_u8 v78, v175 offset:7296
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	ds_load_u8 v75, v175 offset:6400
	ds_load_u8 v76, v175 offset:6144
	ds_load_u8 v79, v175 offset:6912
	ds_load_u8 v80, v175 offset:6656
	ds_load_u8 v81, v175 offset:6528
	ds_load_u8 v82, v175 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v76, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v76, 16, v75
	v_perm_b32 v75, v78, v77, 0xc0c0004
	ds_load_u8 v76, v175 offset:7808
	ds_load_u8 v77, v175 offset:8064
	ds_load_u8 v78, v175 offset:6784
	ds_load_u8 v79, v175 offset:7040
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[69:70], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[71:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v76, v76, v77, 0xc0c0004
	v_perm_b32 v77, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v78, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v76, v76, 16, v75
	v_lshl_or_b32 v75, v78, 16, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[69:70], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[71:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge18
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v119
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s0, s33, s23
	v_mul_lo_u32 v3, s23, v109
	s_add_i32 s1, s0, s34
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v7, v159, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v4, s1, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v8, v158, 16, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v1
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v10, s34, v1
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add3_u32 v7, v159, v7, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s23, 48, v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v11, s34, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s23, v10
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v2, s1, v9
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v9, v157, 16, 1
	v_cmp_o_f32_e64 s1, v159, v159
	v_add3_u32 v8, v158, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v158, v158
	v_bfe_u32 v10, v155, 16, 1
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v9, v157, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v157, v157
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s2
	v_bfe_u32 v8, v154, 16, 1
	v_bfe_u32 v11, v153, 16, 1
	v_add3_u32 v10, v155, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v155, v155
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_add3_u32 v8, v154, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v154, v154
	v_add3_u32 v11, v153, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v153, v153
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v152, 16, 1
	v_bfe_u32 v12, v151, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v150, 16, 1
	v_add3_u32 v10, v152, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v152, v152
	v_add3_u32 v12, v151, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v151, v151
	v_bfe_u32 v13, v149, 16, 1
	v_add3_u32 v11, v150, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v150, v150
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s2
	v_bfe_u32 v12, v148, 16, 1
	v_bfe_u32 v14, v147, 16, 1
	v_add3_u32 v13, v149, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v149, v149
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s3
	v_add3_u32 v12, v148, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v148, v148
	v_add3_u32 v14, v147, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v147, v147
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v146, 16, 1
	v_bfe_u32 v15, v145, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s3
	v_bfe_u32 v14, v144, 16, 1
	v_add3_u32 v13, v146, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v146, v146
	v_add3_u32 v15, v145, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v145, v145
	v_bfe_u32 v16, v143, 16, 1
	v_add3_u32 v14, v144, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v144, v144
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v142, 16, 1
	v_bfe_u32 v17, v141, 16, 1
	v_add3_u32 v16, v143, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v143, v143
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s3
	v_add3_u32 v15, v142, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v142, v142
	v_add3_u32 v17, v141, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v141, v141
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v140, 16, 1
	v_bfe_u32 v18, v139, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s3
	v_bfe_u32 v17, v138, 16, 1
	v_add3_u32 v16, v140, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v140, v140
	v_add3_u32 v18, v139, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v139, v139
	v_bfe_u32 v19, v137, 16, 1
	v_add3_u32 v17, v138, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v138, v138
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s2
	v_bfe_u32 v18, v136, 16, 1
	v_bfe_u32 v20, v135, 16, 1
	v_add3_u32 v19, v137, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v137, v137
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s3
	v_add3_u32 v18, v136, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v136, v136
	v_add3_u32 v20, v135, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v135, v135
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v134, 16, 1
	v_bfe_u32 v21, v133, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s2
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v132, 16, 1
	v_add3_u32 v19, v134, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v134, v134
	v_add3_u32 v21, v133, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v133, v133
	v_bfe_u32 v22, v131, 16, 1
	v_add3_u32 v20, v132, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v132, v132
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v130, 16, 1
	v_bfe_u32 v23, v129, 16, 1
	v_add3_u32 v22, v131, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v131, v131
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_add3_u32 v21, v130, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v130, v130
	v_add3_u32 v23, v129, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v129, v129
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v128, 16, 1
	v_bfe_u32 v24, v127, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v126, 16, 1
	v_add3_u32 v22, v128, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v128, v128
	v_add3_u32 v24, v127, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v127, v127
	v_bfe_u32 v25, v125, 16, 1
	v_add3_u32 v23, v126, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v126, v126
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s2
	v_bfe_u32 v24, v124, 16, 1
	v_bfe_u32 v26, v123, 16, 1
	v_add3_u32 v25, v125, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v125, v125
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_add3_u32 v24, v124, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v124, v124
	v_add3_u32 v26, v123, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v123, v123
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s1
	v_bfe_u32 v25, v122, 16, 1
	v_bfe_u32 v27, v121, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s2
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s3
	v_bfe_u32 v26, v120, 16, 1
	v_add3_u32 v25, v122, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_add3_u32 v27, v121, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_bfe_u32 v28, v118, 16, 1
	v_add3_u32 v26, v120, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v120, v120
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s2
	v_bfe_u32 v27, v117, 16, 1
	v_bfe_u32 v29, v116, 16, 1
	v_add3_u32 v28, v118, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v118, v118
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_add3_u32 v27, v117, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v117, v117
	v_add3_u32 v29, v116, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v116, v116
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s1
	v_bfe_u32 v28, v115, 16, 1
	v_bfe_u32 v30, v114, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s2
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s3
	v_bfe_u32 v29, v113, 16, 1
	v_add3_u32 v28, v115, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v115, v115
	v_add3_u32 v30, v114, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v114, v114
	v_bfe_u32 v31, v112, 16, 1
	v_add3_u32 v29, v113, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v113, v113
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s2
	v_bfe_u32 v30, v111, 16, 1
	v_bfe_u32 v32, v110, 16, 1
	v_add3_u32 v31, v112, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v112, v112
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s3
	v_add3_u32 v30, v111, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v111, v111
	v_add3_u32 v32, v110, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v110, v110
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v108, 16, 1
	v_bfe_u32 v33, v107, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s2
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s3
	v_bfe_u32 v32, v106, 16, 1
	v_add3_u32 v31, v108, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v108, v108
	v_add3_u32 v33, v107, v33, 0x7fff
	v_cmp_o_f32_e64 s2, v107, v107
	v_bfe_u32 v34, v105, 16, 1
	v_add3_u32 v32, v106, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v106, v106
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s2
	v_bfe_u32 v33, v104, 16, 1
	v_bfe_u32 v35, v103, 16, 1
	v_add3_u32 v34, v105, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v105, v105
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s3
	v_add3_u32 v33, v104, v33, 0x7fff
	v_cmp_o_f32_e64 s2, v104, v104
	v_add3_u32 v35, v103, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v103, v103
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v102, 16, 1
	v_bfe_u32 v36, v101, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s2
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	v_bfe_u32 v35, v100, 16, 1
	v_add3_u32 v34, v102, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v102, v102
	v_add3_u32 v36, v101, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v101, v101
	v_bfe_u32 v37, v99, 16, 1
	v_add3_u32 v35, v100, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v100, v100
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s2
	v_bfe_u32 v36, v98, 16, 1
	v_bfe_u32 v38, v97, 16, 1
	v_add3_u32 v37, v99, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v99, v99
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s3
	v_add3_u32 v36, v98, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v98, v98
	v_add3_u32 v38, v97, v38, 0x7fff
	v_cmp_o_f32_e64 s3, v97, v97
	v_bfe_u32 v39, v96, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v95, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s2
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s3
	v_add3_u32 v38, v96, v39, 0x7fff
	v_bfe_u32 v39, v94, 16, 1
	v_cmp_o_f32_e64 s1, v96, v96
	v_bfe_u32 v40, v93, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v37, v95, v37, 0x7fff
	v_add3_u32 v39, v94, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v94, v94
	v_add3_u32 v40, v93, v40, 0x7fff
	v_cmp_o_f32_e64 s6, v93, v93
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cmp_o_f32_e64 s2, v95, v95
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_add_nc_u32_e32 v5, s35, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s6
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
	v_add_nc_u32_e32 v6, s15, v3
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
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_perm_b32 v38, v0, v53, v54
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v40, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v3, s[20:23], 0 offen
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v2, v5, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s11, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v4, v1, 1
	v_add_lshl_u32 v1, v2, v1, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s11, vcc_lo
	s_and_b32 s0, s10, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v5, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s10, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_perm_b32 v36, v36, v52, v54
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v1, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 228
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 228
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11952
; TotalNumSgprs: 53
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 228
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
