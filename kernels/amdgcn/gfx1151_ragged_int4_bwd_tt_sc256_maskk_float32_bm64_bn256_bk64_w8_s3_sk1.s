	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v83, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_sub_i32 s10, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s10, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s11, s2, s6
	s_ashr_i32 s11, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s12, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s8, s13, s8
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s9, s7, s11
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s11, s10, 31
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[10:11], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s2, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s47, s9, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s47, v83
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s7, s[4:5], 0x0
	s_mov_b32 s9, 0
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s11, s10, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s34, v1
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s16, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s6, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge34_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s46, s47, s11
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr46
.LBB0_3:                                ; %Flow299
	s_load_b64 s[44:45], s[0:1], 0x28
	v_lshrrev_b32_e32 v111, 1, v0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v148, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s33, s8, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph33
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v111
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v1, 63, v0
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v147, 0 :: v_dual_and_b32 v4, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v5, 0x80, v2
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s47, v1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v150, 4, v4
	v_cmp_gt_i32_e64 s1, s35, v5
	v_dual_mov_b32 v142, 0 :: v_dual_lshlrev_b32 v5, 1, v0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v2, 0xc0, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v6, v5, v111
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s12, s6, 31
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s8, v111
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 3, v2
	v_lshrrev_b32_e32 v163, 6, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s12, s6, s12
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s57, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s56, s12, 1
	v_mad_u64_u32 v[65:66], null, s34, v2, v[1:2]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v7, s8, 7, v3
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v170, v150, v3
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v3, 24, v6
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s12, s7, 31
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s10, s35
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s12, s7, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v2, v3, v2
	s_ashr_i32 s58, s12, 1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s59, s10, s8
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s60, s10, s9
	s_lshl_b32 s10, s34, 2
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[66:67], null, s34, v163, v[1:2]
	s_and_b32 s49, s37, 0xffff
	s_add_i32 s61, s33, s3
	s_and_b32 s37, s39, 0xffff
	s_bitcmp1_b32 s7, 0
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v18, 16, v0
	s_cselect_b32 s63, -1, 0
	s_add_i32 s46, s47, s11
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v8, 24, v5
	v_lshl_add_u32 v3, v1, 5, 0
	v_bfe_u32 v10, v0, 4, 1
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v19, 0xf0, v0
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v23, s46, v83
	v_mad_u64_u32 v[67:68], null, s34, 3, v[65:66]
	v_cmp_eq_u32_e64 s7, 0, v18
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v21, 3, v0
	v_lshrrev_b32_e32 v18, 2, v18
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v151, 1, v150
	v_or_b32_e32 v152, 2, v150
	v_or_b32_e32 v153, 3, v150
	v_or_b32_e32 v154, 4, v150
	v_or_b32_e32 v155, 5, v150
	v_or_b32_e32 v156, 6, v150
	v_or_b32_e32 v157, 7, v150
	v_or_b32_e32 v158, 8, v150
	v_or_b32_e32 v159, 9, v150
	v_or_b32_e32 v160, 10, v150
	v_or_b32_e32 v161, 11, v150
	v_or_b32_e32 v162, 12, v150
	v_or_b32_e32 v164, 13, v150
	v_or_b32_e32 v165, 14, v150
	v_or_b32_e32 v166, 15, v150
	v_lshl_or_b32 v172, v83, 5, v8
	v_and_or_b32 v10, v5, 30, v10
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v22, 2, v19
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v4, 5, v4
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v192, v3, v2
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v2, 48, v23
	v_mad_u64_u32 v[68:69], null, s34, 5, v[65:66]
	v_and_or_b32 v191, 0x78, v21, v18
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v18, 16, v23
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v21, 32, v23
	v_mad_u64_u32 v[69:70], null, s34, 6, v[65:66]
	v_mad_u64_u32 v[70:71], null, s34, 7, v[65:66]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[71:72], null, s34, 12, v[66:67]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v149, s33, v0
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v171, v150, v7
	v_xor_b32_e32 v6, 8, v172
	v_xor_b32_e32 v8, 16, v172
	v_xor_b32_e32 v9, 24, v172
	v_xor_b32_e32 v11, 0x208, v172
	v_xor_b32_e32 v12, 0x218, v172
	v_xor_b32_e32 v13, 0x210, v172
	v_xor_b32_e32 v14, 0x410, v172
	v_xor_b32_e32 v15, 0x418, v172
	v_xor_b32_e32 v16, 0x408, v172
	v_xor_b32_e32 v17, 0x618, v172
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v173, 2, v10
	v_xor_b32_e32 v1, 0x610, v172
	v_xor_b32_e32 v10, 0x608, v172
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v176, v7, v151
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v177, v7, v152
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v178, v7, v153
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v179, v7, v154
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v180, v7, v155
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v181, v7, v156
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v182, v7, v157
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v183, v7, v158
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v184, v7, v159
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v185, v7, v160
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v186, v7, v161
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v187, v7, v162
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v188, v7, v164
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v189, v7, v165
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v190, v7, v166
	v_or_b32_e32 v7, 0x300, v0
	v_or_b32_e32 v20, 0x700, v0
	v_or_b32_e32 v24, 0x3f0, v0
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v5, 28, v5
	v_add3_u32 v4, 0, v22, v4
	v_or_b32_e32 v3, 0x7f0, v0
	v_mul_lo_u32 v197, v2, s9
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v2, 1, v19
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[72:73], null, s34, 20, v[66:67]
	v_mad_u64_u32 v[73:74], null, s34, 24, v[66:67]
	v_mul_lo_u32 v194, v23, s9
	v_mul_lo_u32 v195, v18, s9
	v_mul_lo_u32 v196, v21, s9
	v_mad_u64_u32 v[74:75], null, s34, 28, v[66:67]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s35, v149
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v167, s34, v65
	v_lshl_add_u32 v168, s34, 1, v65
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v169, s10, v65
	v_xor_b32_e32 v174, 4, v173
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v175, s10, v66
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v193, v4, v5
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v198, 0, v6
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v199, 0, v8
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v200, 0, v9
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v201, 0, v11
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v202, 0, v12
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v203, 0, v13
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v204, 0, v14
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v205, 0, v15
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v206, 0, v16
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v207, 0, v17
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v208, 0, v1
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v209, 0, v10
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v210, 0, v7
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v211, 0, v20
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v212, 0, v24
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v213, 0, v3
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v214, 0, v2
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v215, 0, v83
	v_xor_b32_e32 v216, 4, v191
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v217, 0, v0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_add_i32 s64, s56, -1
	s_mov_b32 s48, s36
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mul_i32 s61, s61, s8
	s_mov_b32 s36, s38
	s_mov_b32 s62, 0
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s65, s64, 7
	s_mov_b32 s42, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v75, v194, s62, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s62, s60
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v76, v195, s62, 1
	v_add_lshl_u32 v77, v196, s62, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v78, v197, s62, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v79, v149, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v75, 0x80000000, v75, s5
	v_cndmask_b32_e64 v76, 0x80000000, v76, s4
	v_cndmask_b32_e64 v77, 0x80000000, v77, s16
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v79, 0x80000000, v79, s6
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v75, v75, s[40:43], 0 offen
	buffer_load_u16 v76, v76, s[40:43], 0 offen
	buffer_load_u16 v77, v77, s[40:43], 0 offen
	buffer_load_u16 v78, v78, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v79, v79, s[52:55], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v81, v2
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v80, v1
	v_cvt_f32_i32_e32 v218, v4
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v82, v3
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
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
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v219, v5
	v_cvt_f32_i32_e32 v220, v6
	v_cvt_f32_i32_e32 v221, v7
	v_cvt_f32_i32_e32 v222, v8
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s3, s62, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s42, s3, 7
	s_cmp_lg_u32 s62, s65
	s_mov_b32 s62, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v76
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v1, 16, v75
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v75, 16, v78
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v59, v1 :: v_dual_lshlrev_b32 v4, 16, v79
	v_mul_f32_e32 v57, v57, v1
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v3, 16, v77
	v_dual_mul_f32 v60, v60, v1 :: v_dual_mul_f32 v41, v41, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v37, v37, v2
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v193, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v76, v9, v75
	v_mul_f32_e32 v77, v10, v75
	v_mul_f32_e32 v78, v11, v75
	v_mul_f32_e32 v79, v12, v75
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[9:12], v214 offset:512
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v38, v38, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v40, v40, v2
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v26, v26, v3
	v_mul_f32_e32 v27, v27, v3
	v_mul_f32_e32 v28, v28, v3
	v_mul_f32_e32 v30, v30, v3
	v_mul_f32_e32 v25, v25, v3
	v_mul_f32_e32 v31, v31, v3
	v_mul_f32_e32 v32, v32, v3
	v_mul_f32_e32 v29, v29, v3
	v_mul_f32_e32 v18, v18, v3
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[5:8], v214 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v223, v13, v75
	v_mul_f32_e32 v224, v14, v75
	v_mul_f32_e32 v225, v15, v75
	v_mul_f32_e32 v226, v16, v75
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[13:16], v214 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v17, v17, v3
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v19, v19, v3 :: v_dual_fmac_f32 v140, v49, v9
	v_dual_mul_f32 v20, v20, v3 :: v_dual_fmac_f32 v139, v50, v10
	v_mul_f32_e32 v21, v21, v3
	v_dual_mul_f32 v22, v22, v3 :: v_dual_fmac_f32 v137, v52, v12
	v_mul_f32_e32 v23, v23, v3
	v_mul_f32_e32 v24, v24, v3
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[1:4], v214
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v80, v80, v75 :: v_dual_fmac_f32 v123, v34, v10
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v82, v82, v75 :: v_dual_fmac_f32 v125, v48, v8
	v_dual_mul_f32 v218, v218, v75 :: v_dual_fmac_f32 v121, v36, v12
	v_mul_f32_e32 v219, v219, v75
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v220, v220, v75 :: v_dual_fmac_f32 v119, v38, v14
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v135, v54, v14
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v81, v81, v75 :: v_dual_fmac_f32 v100, v24, v16
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v128, v45, v5
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v221, v221, v75
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v144, v61, v5 :: v_dual_fmac_f32 v143, v62, v6
	v_dual_fmac_f32 v142, v63, v7 :: v_dual_fmac_f32 v141, v64, v8
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v136, v53, v13 :: v_dual_fmac_f32 v145, v60, v4
	v_fmac_f32_e32 v110, v30, v6
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v75, v222, v75 :: v_dual_fmac_f32 v116, v25, v1
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v148, v57, v1 :: v_dual_fmac_f32 v147, v58, v2
	v_dual_fmac_f32 v146, v59, v3 :: v_dual_fmac_f32 v117, v40, v16
	v_dual_fmac_f32 v138, v51, v11 :: v_dual_fmac_f32 v113, v28, v4
	v_dual_fmac_f32 v133, v56, v16 :: v_dual_fmac_f32 v132, v41, v1
	v_fmac_f32_e32 v131, v42, v2
	v_fmac_f32_e32 v129, v44, v4
	v_dual_fmac_f32 v127, v46, v6 :: v_dual_fmac_f32 v126, v47, v7
	v_fmac_f32_e32 v99, v76, v1
	v_fmac_f32_e32 v124, v33, v9
	v_dual_fmac_f32 v122, v35, v11 :: v_dual_fmac_f32 v91, v80, v9
	v_fmac_f32_e32 v120, v37, v13
	v_dual_fmac_f32 v118, v39, v15 :: v_dual_fmac_f32 v85, v218, v12
	v_dual_fmac_f32 v115, v26, v2 :: v_dual_fmac_f32 v114, v27, v3
	v_dual_fmac_f32 v109, v31, v7 :: v_dual_fmac_f32 v108, v32, v8
	v_fmac_f32_e32 v112, v29, v5
	v_fmac_f32_e32 v106, v18, v10
	v_dual_fmac_f32 v134, v55, v15 :: v_dual_fmac_f32 v107, v17, v9
	v_dual_fmac_f32 v105, v19, v11 :: v_dual_fmac_f32 v98, v77, v2
	v_fmac_f32_e32 v104, v20, v12
	v_dual_fmac_f32 v130, v43, v3 :: v_dual_fmac_f32 v103, v21, v13
	v_dual_fmac_f32 v102, v22, v14 :: v_dual_fmac_f32 v101, v23, v15
	v_dual_fmac_f32 v94, v224, v6 :: v_dual_fmac_f32 v97, v78, v3
	v_fmac_f32_e32 v90, v81, v10
	v_fmac_f32_e32 v96, v79, v4
	v_dual_fmac_f32 v95, v223, v5 :: v_dual_fmac_f32 v92, v226, v8
	v_dual_fmac_f32 v93, v225, v7 :: v_dual_fmac_f32 v84, v219, v13
	v_dual_fmac_f32 v89, v82, v11 :: v_dual_fmac_f32 v88, v220, v14
	v_dual_fmac_f32 v87, v221, v15 :: v_dual_fmac_f32 v86, v75, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s58, s42
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s3, 0, 0x80
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
	s_and_b32 s8, s3, 0xe0
	s_mov_b32 s3, s57
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s57, s8
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s3, s57
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
	.loc	1 1462 30 is_stmt 1             ; ragged.py:1462:30
	s_add_i32 s9, s3, s42
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s38, s50
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	s_add_i32 s10, s9, s61
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s39, s51
	v_add_nc_u32_e32 v75, s10, v170
	v_add_nc_u32_e32 v76, s10, v171
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s9, s9, s59
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 32
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s9, s9, s34
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	v_cndmask_b32_e64 v76, 0x80000000, v76, s1
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s9, s9, s47
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s8
	v_add_nc_u32_e32 v228, s9, v70
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x1
	buffer_load_b128 v[218:221], v75, s[36:39], 0 offen
	buffer_load_b128 v[224:227], v76, s[36:39], 0 offen
	v_add_nc_u32_e32 v229, s9, v69
	v_add_nc_u32_e32 v230, s9, v67
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v228, 0x80000000, v228, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v229, 0x80000000, v229, s0
	v_cndmask_b32_e64 v230, 0x80000000, v230, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v78, v173, v219
	ds_bpermute_b32 v82, v174, v219
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v219, v173, v227
	ds_bpermute_b32 v223, v174, v227
	v_add_nc_u32_e32 v227, s9, v68
	ds_bpermute_b32 v77, v173, v218
	ds_bpermute_b32 v81, v174, v218
	ds_bpermute_b32 v218, v173, v226
	ds_bpermute_b32 v222, v174, v226
	v_add_nc_u32_e32 v226, s9, v169
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v227, 0x80000000, v227, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_bpermute_b32 v75, v173, v220
	ds_bpermute_b32 v76, v173, v221
	ds_bpermute_b32 v79, v174, v220
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v226, 0x80000000, v226, s0
	s_clause 0x4
	buffer_load_u8 v228, v228, s[48:51], 0 offen
	buffer_load_u8 v227, v227, s[48:51], 0 offen
	buffer_load_u8 v229, v229, s[48:51], 0 offen
	buffer_load_u8 v231, v226, s[48:51], 0 offen
	buffer_load_u8 v230, v230, s[48:51], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_bpermute_b32 v80, v174, v221
	ds_bpermute_b32 v220, v173, v224
	ds_bpermute_b32 v221, v173, v225
	ds_bpermute_b32 v224, v174, v224
	ds_bpermute_b32 v225, v174, v225
	s_waitcnt lgkmcnt(14)
	v_cndmask_b32_e64 v235, v82, v78, s7
	v_cndmask_b32_e64 v78, v78, v82, s7
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v234, v81, v77, s7
	v_cndmask_b32_e64 v77, v77, v81, s7
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v236, v224, v220, s7
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v237, v225, v221, s7
	v_cndmask_b32_e64 v81, v220, v224, s7
	v_cndmask_b32_e64 v82, v221, v225, s7
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v226.l, 8, v228.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v226.h, 8, v227.l
	v_add_nc_u32_e32 v228, s9, v167
	s_waitcnt vmcnt(2)
	v_or_b16 v227.h, v229.l, v226.l
	s_waitcnt vmcnt(1)
	v_or_b16 v227.l, v231.l, v226.h
	v_add_nc_u32_e32 v226, s9, v168
	v_cndmask_b32_e64 v228, 0x80000000, v228, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v226, 0x80000000, v226, s0
	s_clause 0x1
	buffer_load_u8 v229, v226, s[48:51], 0 offen
	buffer_load_u8 v228, v228, s[48:51], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v226.l, 8, v230.l
	v_add_nc_u32_e32 v230, 0, v172
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v226.h, v229.l, v226.l
	v_add_nc_u32_e32 v229, s9, v65
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v226.l, 8, v228.l
	v_cndmask_b32_e64 v229, 0x80000000, v229, s0
	buffer_load_u8 v229, v229, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_or_b16 v226.l, v229.l, v226.l
	ds_store_b64 v192, v[226:227]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[226:227], v201
	ds_load_b64 v[238:239], v200
	ds_load_b64 v[244:245], v207
	ds_load_b64 v[246:247], v208
	ds_load_b64 v[248:249], v209
	ds_load_b64 v[250:251], v206
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[234:235], v[244:245], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[234:235], v[226:227], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[236:237], v[226:227], v[33:40] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_b64 v[226:227], v204
	ds_load_b64 v[240:241], v205
	ds_load_b64 v[242:243], v203
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[1:8], v[236:237], v[244:245], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[234:235], v[226:227], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[236:237], v[226:227], v[17:24] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_2addr_stride64_b64 v[226:229], v230 offset1:1
	ds_load_2addr_stride64_b64 v[230:233], v230 offset0:2 offset1:3
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[234:235], v[226:227], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[236:237], v[226:227], v[49:56] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v226, v79, v75, s7
	v_cndmask_b32_e64 v227, v80, v76, s7
	v_cndmask_b32_e64 v234, v222, v218, s7
	v_cndmask_b32_e64 v235, v223, v219, s7
	v_cndmask_b32_e64 v75, v75, v79, s7
	v_cndmask_b32_e64 v76, v76, v80, s7
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[41:48], v[226:227], v[228:229], v[41:48] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v79, v218, v222, s7
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[33:40], v[234:235], v[228:229], v[33:40] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_b64 v[228:229], v198
	ds_load_b64 v[236:237], v199
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v80, v219, v223, s7
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_b64 v[218:219], v202
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[25:32], v[226:227], v[240:241], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[234:235], v[240:241], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[226:227], v[246:247], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[234:235], v[246:247], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[230:231], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[230:231], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[248:249], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[248:249], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[250:251], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[250:251], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[232:233], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[232:233], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[228:229], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[234:235], v[228:229], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[218:219], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[218:219], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[236:237], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[236:237], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[242:243], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[79:80], v[242:243], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[75:76], v[238:239], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[79:80], v[238:239], v[49:56] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s8, s56, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s54, s8, 0x80
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s54
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s43, s3, s42
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s38, s50
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v75, s43, v150
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s55, s43, s61
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s39, s51
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v80, s43, v158
	v_or_b32_e32 v81, s43, v159
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v75
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s64, v75
	v_add_nc_u32_e32 v75, s55, v170
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v82, s43, v160
	v_or_b32_e32 v218, s43, v161
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s11, s54, v76
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v151
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s24, s3, s63
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s15, vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v77, s42, v76
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v75, 0x80000000, v75, s15
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s12, s64, v76
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s11, s1, s11
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s10, s54, v77
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v76, v75, s[36:39], 0 offen
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v77, s43, v152
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s21, s12, s63
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, vcc_lo, s10
	s_and_b32 s10, s1, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v78, s42, v77
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s13, s64, v77
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v77, 3, v170
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s54, v78
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v78, s43, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v77, s55, v77
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s23, s13, s63
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v79, s42, v78
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s14, s64, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s9, s54, v79
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s22, s14, s63
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v75.l, v76.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v75.l, v76.l, v75.l, s24
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v76, 1, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v76, s55, v76
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, vcc_lo, s9
	s_and_b32 s9, s1, s9
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, vcc_lo, s8
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v76, v76, s[36:39], 0 offen
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s8, s1, s8
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v77, v77, s[36:39], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v75.h, v76.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.l, v76.l, v75.h, s21
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v75.h, v77.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v76.l, 8, v76.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v75.h, v77.l, v75.h, s22
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v77, 2, v170
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v75.l, v75.l, v76.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v75.h, 8, v75.h
	v_add_nc_u32_e32 v77, s55, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	buffer_load_u8 v77, v77, s[36:39], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v76.h, v77.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.h, v77.l, v76.h, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v75.h, v76.h, v75.h
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v154
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s15, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s54, v76
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v155
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s20, vcc_lo, s3
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s17, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s1, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s17, s17, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s14, s54, v76
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v156
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s18, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s12, s54, v76
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v157
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s19, s19, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s13, s54, v76
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v76, 4, v170
	v_add_nc_u32_e32 v76, s55, v76
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v76, 0x80000000, v76, s20
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s20, s15, s63
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s15, vcc_lo, s14
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	buffer_load_u8 v77, v76, s[36:39], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v76.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.l, v77.l, v76.l, s20
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v77, 5, v170
	v_add_nc_u32_e32 v77, s55, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s15
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s15, vcc_lo, s13
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v77, v77, s[36:39], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v76.h, v77.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.h, v77.l, v76.h, s17
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v77, 7, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v76.h, 8, v76.h
	v_add_nc_u32_e32 v77, s55, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v219.l, v76.l, v76.h
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s15
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s15, vcc_lo, s12
	v_add_nc_u32_e32 v76, s55, v171
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v78, v77, s[36:39], 0 offen
	v_cndmask_b32_e64 v76, 0x80000000, v76, s11
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v77.l, v78.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v77.l, v78.l, v77.l, s19
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v78, 6, v170
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v77.l, 8, v77.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v78, s55, v78
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v78, 0x80000000, v78, s15
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s15, s18, s63
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v78, v78, s[36:39], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v77.h, v78.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v77.h, v78.l, v77.h, s15
	v_or_b16 v219.h, v77.h, v77.l
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	buffer_load_u8 v77, v76, s[36:39], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v76.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.l, v77.l, v76.l, s24
	v_add_nc_u32_e32 v77, s55, v176
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s10
	buffer_load_u8 v77, v77, s[36:39], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v76.h, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.h, v77.l, v76.h, s21
	v_add_nc_u32_e32 v77, s55, v178
	v_lshlrev_b16 v76.h, 8, v76.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s9
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v220.l, v76.l, v76.h
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v78, v77, s[36:39], 0 offen
	v_add_nc_u32_e32 v76, s55, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s1, s14
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v77.l, v78.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v77.l, v78.l, v77.l, s22
	v_add_nc_u32_e32 v78, s55, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v77.l, 8, v77.l
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v78, 0x80000000, v78, s8
	buffer_load_u8 v78, v78, s[36:39], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v77.h, v78.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v77.h, v78.l, v77.h, s23
	v_or_b16 v220.h, v77.h, v77.l
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	buffer_load_u8 v77, v76, s[36:39], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v76.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.l, v77.l, v76.l, s20
	v_add_nc_u32_e32 v77, s55, v180
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s1, s13
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v77, v77, s[36:39], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v76.h, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v76.h, v77.l, v76.h, s17
	v_add_nc_u32_e32 v77, s55, v182
	v_lshlrev_b16 v76.h, 8, v76.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s1, s12
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_or_b16 v221.l, v76.l, v76.h
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v78, v77, s[36:39], 0 offen
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s23, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s23, s23, s63
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s24, s54, v76
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v76, 4, v163
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s24, s0, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v76
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s25, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s26, s54, v76
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v76, 8, v163
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s27, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s28, s54, v76
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v76, 12, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v76
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s29, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s30, s54, v76
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v76, 16, v163
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s21, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s21, s21, s63
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s31, s54, v76
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v76, 20, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v76
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v77.l, v78.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v77.l, v78.l, v77.l, s19
	v_add_nc_u32_e32 v78, s55, v181
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v77.l, 8, v77.l
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s19, s19, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s22, s54, v76
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v76, 24, v163
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v78, v78, s[36:39], 0 offen
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v76
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s17, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s17, s17, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s20, s54, v76
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v76, 28, v163
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s64, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v76
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s8, s8, s63
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s18, s54, v76
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s54, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v81
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s9, s54, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s10, s54, v76
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v76, s42, v218
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s11, s54, v76
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v76, s43, v162
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v77.h, v78.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v77.h, v78.l, v77.h, s15
	v_or_b16 v221.h, v77.h, v77.l
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v77, s42, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s12, s54, v77
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v77, s43, v164
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v78, s42, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s13, s54, v78
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v78, s43, v165
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v79, s42, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s14, s54, v79
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v79, s43, v166
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v222, s42, v79
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s42, s43, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s42, s42, s34
	s_add_i32 s42, s42, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s15, s54, v222
	v_add_nc_u32_e32 v222, s42, v66
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s24
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v238.l, v223.l, v222.l, s23
	v_add_nc_u32_e32 v222, s42, v175
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s23, s0, s26
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s23
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s23, s25, s63
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v238.h, v223.l, v222.l, s23
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_lshl_add_u32 v222, s34, 3, v66
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s23, s0, s28
	v_add_nc_u32_e32 v222, s42, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s23
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s23, s27, s63
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v239.l, v223.l, v222.l, s23
	v_add_nc_u32_e32 v222, s42, v71
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s23, s0, s30
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s23
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s23, s29, s63
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v239.h, v223.l, v222.l, s23
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_lshl_add_u32 v222, s34, 4, v66
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s23, s0, s31
	v_add_nc_u32_e32 v222, s42, v222
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s23
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s23, vcc_lo, s15
	s_and_b32 s15, s1, s15
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v240.l, v223.l, v222.l, s21
	v_add_nc_u32_e32 v222, s42, v72
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s21, s0, s22
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s22, vcc_lo, s14
	s_and_b32 s14, s1, s14
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s21
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s21, vcc_lo, s13
	s_and_b32 s13, s1, s13
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v240.h, v223.l, v222.l, s19
	v_add_nc_u32_e32 v222, s42, v73
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s19, s0, s20
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s20, vcc_lo, s12
	s_and_b32 s12, s1, s12
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s19
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s19, vcc_lo, s11
	s_and_b32 s11, s1, s11
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v241.l, v223.l, v222.l, s17
	v_add_nc_u32_e32 v222, s42, v74
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s17, s0, s18
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s18, vcc_lo, s10
	s_and_b32 s10, s1, s10
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s17
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s17, vcc_lo, s9
	s_and_b32 s9, s1, s9
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v223, v222, s[48:51], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v222.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v241.h, v223.l, v222.l, s8
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v223, 9, v170
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s8, vcc_lo, s3
	s_and_b32 s3, s1, s3
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v222, 8, v170
	v_add_nc_u32_e32 v223, s55, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v222, s55, v222
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v224, 0x80000000, v223, s17
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v223, 10, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s8
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s64, v81
	v_add_nc_u32_e32 v223, s55, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v225, 0x80000000, v223, s18
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v223, 11, v170
	v_add_nc_u32_e32 v223, s55, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v226, 0x80000000, v223, s19
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v223, 12, v170
	v_add_nc_u32_e32 v223, s55, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v227, 0x80000000, v223, s20
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v223, 13, v170
	v_add_nc_u32_e32 v223, s55, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v228, 0x80000000, v223, s21
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v223, 14, v170
	v_add_nc_u32_e32 v223, s55, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v229, 0x80000000, v223, s22
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v223, 15, v170
	v_add_nc_u32_e32 v223, s55, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v230, 0x80000000, v223, s23
	v_add_nc_u32_e32 v223, s55, v183
	v_cndmask_b32_e64 v231, 0x80000000, v223, s3
	v_add_nc_u32_e32 v223, s55, v184
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s64, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v232, 0x80000000, v223, s9
	v_add_nc_u32_e32 v223, s55, v185
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s64, v82
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v233, 0x80000000, v223, s10
	v_add_nc_u32_e32 v223, s55, v186
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s10, s64, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v234, 0x80000000, v223, s11
	v_add_nc_u32_e32 v223, s55, v187
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s11, s3, s63
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s64, v76
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v235, 0x80000000, v223, s12
	v_add_nc_u32_e32 v223, s55, v188
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s12, s8, s63
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s64, v77
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s63
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v236, 0x80000000, v223, s13
	v_add_nc_u32_e32 v223, s55, v189
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s13, s10, s63
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s10, s64, v79
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s8, s8, s63
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v237, 0x80000000, v223, s14
	v_add_nc_u32_e32 v223, s55, v190
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s14, s9, s63
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s64, v78
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s10, s10, s63
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v242, 0x80000000, v223, s15
	s_clause 0xf
	buffer_load_u8 v223, v222, s[36:39], 0 offen
	buffer_load_u8 v224, v224, s[36:39], 0 offen
	buffer_load_u8 v222, v225, s[36:39], 0 offen
	buffer_load_u8 v225, v226, s[36:39], 0 offen
	buffer_load_u8 v227, v227, s[36:39], 0 offen
	buffer_load_u8 v228, v228, s[36:39], 0 offen
	buffer_load_u8 v226, v229, s[36:39], 0 offen
	buffer_load_u8 v229, v230, s[36:39], 0 offen
	buffer_load_u8 v230, v231, s[36:39], 0 offen
	buffer_load_u8 v232, v232, s[36:39], 0 offen
	buffer_load_u8 v231, v233, s[36:39], 0 offen
	buffer_load_u8 v233, v234, s[36:39], 0 offen
	buffer_load_u8 v234, v235, s[36:39], 0 offen
	buffer_load_u8 v236, v236, s[36:39], 0 offen
	buffer_load_u8 v235, v237, s[36:39], 0 offen
	buffer_load_u8 v237, v242, s[36:39], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v217, v238
	ds_store_b8_d16_hi v217, v238 offset:256
	ds_store_b8 v217, v239 offset:512
	ds_store_b8 v217, v240 offset:1024
	ds_store_b8_d16_hi v217, v240 offset:1280
	ds_store_b8_d16_hi v210, v239
	ds_store_b8 v217, v241 offset:1536
	ds_store_b8_d16_hi v211, v241
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v238, v215 offset:320
	ds_load_u8 v239, v215 offset:256
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s9, s9, s63
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v238, v239, v238, 0xc0c0004
	ds_load_u8 v239, v215 offset:448
	ds_load_u8 v240, v215 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v239, v240, v239, 0xc0c0004
	ds_load_u8 v240, v215 offset:64
	ds_load_u8 v241, v215
	v_lshl_or_b32 v243, v239, 16, v238
	ds_load_u8 v238, v215 offset:336
	ds_load_u8 v239, v215 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v240, v241, v240, 0xc0c0004
	ds_load_u8 v241, v215 offset:192
	ds_load_u8 v242, v215 offset:128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v238, v239, v238, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v241, v242, v241, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v241, 16, v240
	ds_load_u8 v239, v215 offset:464
	ds_load_u8 v240, v215 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v239, v240, v239, 0xc0c0004
	ds_load_u8 v240, v215 offset:16
	ds_load_u8 v241, v215 offset:80
	v_lshl_or_b32 v245, v239, 16, v238
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_bpermute_b32 v238, v191, v75
	ds_bpermute_b32 v239, v191, v219
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v240, v240, v241, 0xc0c0004
	ds_load_u8 v241, v215 offset:208
	ds_load_u8 v244, v215 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v241, v244, v241, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v244, v241, 16, v240
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_bpermute_b32 v240, v216, v75
	ds_bpermute_b32 v241, v216, v219
	ds_bpermute_b32 v75, v191, v220
	ds_bpermute_b32 v220, v216, v220
	ds_bpermute_b32 v219, v191, v221
	ds_bpermute_b32 v221, v216, v221
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v246, v240, v238, s7
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v247, v241, v239, s7
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v248, v220, v75, s7
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v249, v221, v219, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[57:64], v[246:247], v[242:243], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[246:247], v[244:245], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[248:249], v[242:243], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v242, v215 offset:352
	ds_load_u8 v243, v215 offset:288
	v_wmma_i32_16x16x16_iu4 v[33:40], v[248:249], v[244:245], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v242, v243, v242, 0xc0c0004
	ds_load_u8 v243, v215 offset:480
	ds_load_u8 v250, v215 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v243, v250, v243, 0xc0c0004
	ds_load_u8 v250, v215 offset:32
	ds_load_u8 v251, v215 offset:96
	v_lshl_or_b32 v243, v243, 16, v242
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v250, v251, 0xc0c0004
	ds_load_u8 v251, v215 offset:224
	ds_load_u8 v252, v215 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v252, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v251, 16, v250
	ds_load_u8 v250, v215 offset:368
	ds_load_u8 v251, v215 offset:304
	v_wmma_i32_16x16x16_iu4 v[25:32], v[246:247], v[242:243], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[248:249], v[242:243], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v251, v250, 0xc0c0004
	ds_load_u8 v251, v215 offset:496
	ds_load_u8 v252, v215 offset:432
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v80.l, v223.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v80.h, v224.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v81.h, v222.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v81.l, v225.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v76.l, v227.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v76.h, v228.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v77.h, v226.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v77.l, v229.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v80.h, v224.l, v80.h, s12
	v_cndmask_b16 v76.l, v227.l, v76.l, s3
	v_cndmask_b16 v76.h, v228.l, v76.h, s8
	v_cndmask_b16 v77.h, v226.l, v77.h, s9
	v_cndmask_b16 v77.l, v229.l, v77.l, s10
	v_cndmask_b16 v81.l, v225.l, v81.l, s13
	v_cndmask_b16 v80.l, v223.l, v80.l, s11
	v_lshlrev_b16 v76.h, 8, v76.h
	v_cndmask_b16 v81.h, v222.l, v81.h, s14
	v_lshlrev_b16 v77.l, 8, v77.l
	v_lshlrev_b16 v81.l, 8, v81.l
	v_lshlrev_b16 v80.h, 8, v80.h
	v_or_b16 v78.l, v76.l, v76.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v76.h, v232.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v78.h, v77.h, v77.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v77.l, v233.l, 15
	v_and_b16 v76.l, v230.l, 15
	v_and_b16 v77.h, v231.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v76.h, v232.l, v76.h, s12
	v_or_b16 v81.h, v81.h, v81.l
	v_cndmask_b16 v77.l, v233.l, v77.l, s13
	v_cndmask_b16 v76.l, v230.l, v76.l, s11
	v_cndmask_b16 v77.h, v231.l, v77.h, s14
	v_lshlrev_b16 v76.h, 8, v76.h
	v_or_b16 v81.l, v80.l, v80.h
	v_lshlrev_b16 v77.l, 8, v77.l
	ds_bpermute_b32 v227, v191, v78
	ds_bpermute_b32 v228, v216, v78
	v_or_b16 v79.l, v76.l, v76.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v76.h, v236.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v79.h, v77.h, v77.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v77.l, v237.l, 15
	v_and_b16 v76.l, v234.l, 15
	v_and_b16 v77.h, v235.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v76.h, v236.l, v76.h, s8
	ds_bpermute_b32 v226, v216, v81
	v_cndmask_b16 v77.l, v237.l, v77.l, s10
	v_cndmask_b16 v76.l, v234.l, v76.l, s3
	v_cndmask_b16 v77.h, v235.l, v77.h, s9
	v_lshlrev_b16 v76.h, 8, v76.h
	ds_bpermute_b32 v229, v191, v79
	v_lshlrev_b16 v77.l, 8, v77.l
	ds_bpermute_b32 v230, v216, v79
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v251, v252, v251, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v80.l, v76.l, v76.h
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v252, v215 offset:112
	ds_load_u8 v253, v215 offset:48
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v80.h, v77.h, v77.l
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v76, v215 offset:832
	ds_load_u8 v77, v215 offset:768
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v79, v228, v227, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v251, v251, 16, v250
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_bpermute_b32 v231, v191, v80
	ds_bpermute_b32 v232, v216, v80
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v80, v230, v229, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v252, v253, v252, 0xc0c0004
	ds_load_u8 v253, v215 offset:240
	ds_load_u8 v254, v215 offset:176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v215 offset:960
	ds_load_u8 v82, v215 offset:896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v253, v254, v253, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v82, v77, 0xc0c0004
	ds_load_u8 v82, v215 offset:576
	ds_load_u8 v218, v215 offset:512
	v_lshl_or_b32 v250, v253, 16, v252
	v_lshl_or_b32 v77, v77, 16, v76
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[246:247], v[250:251], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[248:249], v[250:251], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v218, v82, 0xc0c0004
	ds_load_u8 v218, v215 offset:704
	ds_load_u8 v222, v215 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v222, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v218, 16, v82
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_bpermute_b32 v82, v191, v81
	v_cndmask_b32_e64 v81, v232, v231, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[49:56], v[80:81], v[76:77], v[49:56] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v78, v226, v82, s7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[76:77], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v76, v215 offset:848
	ds_load_u8 v77, v215 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v215 offset:976
	ds_load_u8 v218, v215 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v218, v77, 0xc0c0004
	ds_load_u8 v218, v215 offset:592
	ds_load_u8 v222, v215 offset:528
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v222, v218, 0xc0c0004
	ds_load_u8 v222, v215 offset:720
	ds_load_u8 v223, v215 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v222, 16, v218
	ds_load_u8 v218, v215 offset:864
	ds_load_u8 v222, v215 offset:800
	v_wmma_i32_16x16x16_iu4 v[41:48], v[78:79], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[80:81], v[76:77], v[33:40] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b32_e64 v76, v238, v240, s7
	v_cndmask_b32_e64 v77, v239, v241, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v222, v218, 0xc0c0004
	ds_load_u8 v222, v215 offset:992
	ds_load_u8 v223, v215 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v223, v215 offset:608
	ds_load_u8 v224, v215 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v224, v224, v223, 0xc0c0004
	ds_load_u8 v223, v215 offset:736
	ds_load_u8 v225, v215 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v225, v225, v223, 0xc0c0004
	v_lshl_or_b32 v223, v222, 16, v218
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v222, v225, 16, v224
	ds_load_u8 v218, v215 offset:624
	ds_load_u8 v224, v215 offset:560
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[222:223], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[222:223], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v224, v218, 0xc0c0004
	ds_load_u8 v224, v215 offset:752
	ds_load_u8 v225, v215 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	ds_load_u8 v225, v215 offset:880
	ds_load_u8 v233, v215 offset:816
	v_lshl_or_b32 v224, v224, 16, v218
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v225, v233, v225, 0xc0c0004
	ds_load_u8 v233, v215 offset:944
	ds_load_u8 v234, v212
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v233, v233, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v225, v233, 16, v225
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[224:225], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v78, v215 offset:1344
	ds_load_u8 v79, v215 offset:1280
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[224:225], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v215 offset:1472
	ds_load_u8 v80, v215 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v215 offset:1024
	ds_load_u8 v81, v215 offset:1088
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v81, 0xc0c0004
	ds_load_u8 v81, v215 offset:1216
	ds_load_u8 v218, v215 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v218, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v78, v81, 16, v80
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b32_e64 v80, v75, v220, s7
	v_cndmask_b32_e64 v81, v219, v221, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[57:64], v[76:77], v[78:79], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[80:81], v[78:79], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v75, v215 offset:1360
	ds_load_u8 v78, v215 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	ds_load_u8 v78, v215 offset:1488
	ds_load_u8 v79, v215 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v215 offset:1104
	ds_load_u8 v218, v215 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v218, v79, 0xc0c0004
	ds_load_u8 v79, v215 offset:1232
	ds_load_u8 v219, v215 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v219, v219, v79, 0xc0c0004
	v_lshl_or_b32 v79, v78, 16, v75
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v78, v219, 16, v218
	ds_load_u8 v75, v215 offset:1376
	ds_load_u8 v218, v215 offset:1312
	v_wmma_i32_16x16x16_iu4 v[41:48], v[76:77], v[78:79], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[80:81], v[78:79], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v218, v75, 0xc0c0004
	ds_load_u8 v218, v215 offset:1504
	ds_load_u8 v219, v215 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v215 offset:1120
	ds_load_u8 v220, v215 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v220, v220, v219, 0xc0c0004
	ds_load_u8 v219, v215 offset:1248
	ds_load_u8 v221, v215 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v221, v221, v219, 0xc0c0004
	v_lshl_or_b32 v219, v218, 16, v75
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v218, v221, 16, v220
	ds_load_u8 v75, v215 offset:1392
	ds_load_u8 v220, v215 offset:1328
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[218:219], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[218:219], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v220, v75, 0xc0c0004
	ds_load_u8 v220, v215 offset:1520
	ds_load_u8 v221, v215 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	ds_load_u8 v221, v215 offset:1136
	ds_load_u8 v222, v215 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v222, v222, v221, 0xc0c0004
	ds_load_u8 v221, v215 offset:1264
	ds_load_u8 v223, v215 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v223, v223, v221, 0xc0c0004
	v_lshl_or_b32 v221, v220, 16, v75
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b32_e64 v75, v82, v226, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v220, v223, 16, v222
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[220:221], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v77, v215 offset:1792
	ds_load_u8 v78, v215 offset:1856
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[220:221], v[1:8] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b32_e64 v76, v227, v228, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v78, 0xc0c0004
	ds_load_u8 v78, v215 offset:1984
	ds_load_u8 v79, v215 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v215 offset:1536
	ds_load_u8 v80, v215 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v79, v80, 0xc0c0004
	ds_load_u8 v80, v215 offset:1728
	ds_load_u8 v81, v215 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b32_e64 v77, v229, v230, s7
	v_cndmask_b32_e64 v78, v231, v232, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v79, v81, 16, v79
	v_wmma_i32_16x16x16_iu4 v[57:64], v[75:76], v[79:80], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[77:78], v[79:80], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v79, v215 offset:1872
	ds_load_u8 v80, v215 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v215 offset:2000
	ds_load_u8 v81, v215 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v215 offset:1616
	ds_load_u8 v82, v215 offset:1552
	v_lshl_or_b32 v80, v80, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v215 offset:1744
	ds_load_u8 v218, v215 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v218, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v82, 16, v81
	ds_load_u8 v81, v215 offset:1888
	ds_load_u8 v82, v215 offset:1824
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[79:80], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v215 offset:2016
	ds_load_u8 v218, v215 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v218, v82, 0xc0c0004
	ds_load_u8 v218, v215 offset:1632
	ds_load_u8 v219, v215 offset:1568
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v215 offset:1760
	ds_load_u8 v220, v215 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v219, v220, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v219, 16, v218
	ds_load_u8 v218, v215 offset:1648
	ds_load_u8 v219, v215 offset:1584
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[81:82], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v215 offset:1776
	ds_load_u8 v220, v215 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v219, v220, v219, 0xc0c0004
	ds_load_u8 v220, v215 offset:1904
	ds_load_u8 v221, v215 offset:1840
	v_lshl_or_b32 v218, v219, 16, v218
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	ds_load_u8 v221, v213
	ds_load_u8 v222, v215 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v221, v222, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v219, v221, 16, v220
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[218:219], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[218:219], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge34
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v1, 0x70, v111
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s46, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
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
	v_or_b32_e32 v0, s33, v4
	v_or_b32_e32 v11, s33, v7
	v_or_b32_e32 v12, s33, v8
	v_or_b32_e32 v2, s33, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v5
	v_or_b32_e32 v13, s33, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v11
	v_or_b32_e32 v1, s33, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v83
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v13
	v_or_b32_e32 v1, s33, v15
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s33, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v16
	v_or_b32_e32 v20, s33, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s3, s33, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s33, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s35, v21
	v_cmp_gt_i32_e64 s15, s35, v1
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s35, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s19
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s5, s3
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v148, v22, s[44:47], 0 offen
	buffer_store_b32 v147, v23, s[44:47], 0 offen
	buffer_store_b32 v146, v21, s[44:47], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v145, v2, s[44:47], 0 offen
	buffer_store_b32 v144, v21, s[44:47], 0 offen
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v11, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v143, v22, s[44:47], 0 offen
	buffer_store_b32 v142, v23, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v10, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	v_add_lshl_u32 v23, v0, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v141, v2, s[44:47], 0 offen
	buffer_store_b32 v140, v21, s[44:47], 0 offen
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v7, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v139, v22, s[44:47], 0 offen
	buffer_store_b32 v138, v23, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_add_lshl_u32 v0, v0, v4, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s5, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v137, v2, s[44:47], 0 offen
	buffer_store_b32 v136, v21, s[44:47], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s5, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	s_clause 0x1
	buffer_store_b32 v135, v22, s[44:47], 0 offen
	buffer_store_b32 v134, v23, s[44:47], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v133, v0, s[44:47], 0 offen
	buffer_store_b32 v132, v2, s[44:47], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v131, v21, s[44:47], 0 offen
	buffer_store_b32 v130, v22, s[44:47], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v129, v0, s[44:47], 0 offen
	buffer_store_b32 v128, v2, s[44:47], 0 offen
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
	buffer_store_b32 v127, v21, s[44:47], 0 offen
	buffer_store_b32 v126, v22, s[44:47], 0 offen
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
	buffer_store_b32 v125, v0, s[44:47], 0 offen
	buffer_store_b32 v124, v2, s[44:47], 0 offen
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
	buffer_store_b32 v123, v21, s[44:47], 0 offen
	buffer_store_b32 v122, v22, s[44:47], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v121, v0, s[44:47], 0 offen
	buffer_store_b32 v120, v2, s[44:47], 0 offen
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
	s_and_b32 s4, s16, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_store_b32 v119, v21, s[44:47], 0 offen
	buffer_store_b32 v118, v22, s[44:47], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v117, v0, s[44:47], 0 offen
	buffer_store_b32 v116, v2, s[44:47], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v115, v19, s[44:47], 0 offen
	buffer_store_b32 v114, v21, s[44:47], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v113, v0, s[44:47], 0 offen
	buffer_store_b32 v112, v2, s[44:47], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v110, v19, s[44:47], 0 offen
	buffer_store_b32 v109, v21, s[44:47], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v108, v0, s[44:47], 0 offen
	buffer_store_b32 v107, v2, s[44:47], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v106, v19, s[44:47], 0 offen
	buffer_store_b32 v105, v21, s[44:47], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v104, v0, s[44:47], 0 offen
	buffer_store_b32 v103, v2, s[44:47], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s16, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s2, s17
	s_and_b32 s3, s2, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_store_b32 v102, v19, s[44:47], 0 offen
	buffer_store_b32 v101, v21, s[44:47], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_clause 0x1
	buffer_store_b32 v100, v0, s[44:47], 0 offen
	buffer_store_b32 v99, v2, s[44:47], 0 offen
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v98, v3, s[44:47], 0 offen
	buffer_store_b32 v97, v17, s[44:47], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v96, v0, s[44:47], 0 offen
	buffer_store_b32 v95, v2, s[44:47], 0 offen
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
	buffer_store_b32 v94, v3, s[44:47], 0 offen
	buffer_store_b32 v93, v13, s[44:47], 0 offen
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
	buffer_store_b32 v92, v0, s[44:47], 0 offen
	buffer_store_b32 v91, v2, s[44:47], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v90, v3, s[44:47], 0 offen
	buffer_store_b32 v89, v9, s[44:47], 0 offen
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
	buffer_store_b32 v85, v0, s[44:47], 0 offen
	buffer_store_b32 v84, v2, s[44:47], 0 offen
	buffer_store_b32 v88, v3, s[44:47], 0 offen
	buffer_store_b32 v87, v4, s[44:47], 0 offen
	buffer_store_b32 v86, v1, s[44:47], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 255
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 255
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13476
; TotalNumSgprs: 68
; NumVgprs: 255
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 255
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     255
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
