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
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v80, 15, v0
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
	s_ashr_i32 s13, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s12, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s12, s13
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
	s_abs_i32 s6, s12
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s8, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s8, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s10, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s10
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s7, s9
	s_xor_b32 s11, s10, s12
	s_mul_i32 s15, s9, s6
	s_ashr_i32 s14, s11, 31
	s_sub_i32 s7, s7, s15
	s_add_i32 s11, s9, 1
	s_sub_i32 s15, s7, s6
	s_cmp_ge_u32 s7, s6
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s17, s8, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s7, s15, s7
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s9, s8, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s15, s6, s14
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[8:9], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s11, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s16, s11, s12
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s9, s11, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s10, s10, s16
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s9, v80
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s7, s[4:5], 0x0
	s_mov_b32 s11, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s34, v1
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v3
	v_cmp_gt_i32_e64 s16, s34, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s6, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge18_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s33, s9, s17
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s11, -1
                                        ; implicit-def: $sgpr33
.LBB0_3:                                ; %Flow201
	s_load_b64 s[36:37], s[0:1], 0x28
	v_lshrrev_b32_e32 v109, 1, v0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
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
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	s_and_not1_b32 vcc_lo, exec_lo, s11
	s_lshl_b32 s38, s10, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph17
	s_load_b64 s[10:11], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	s_load_b256 s[24:31], s[0:1], 0x0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s38, v109
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v4, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s9, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s18, s6, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, 0x80, v2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v2
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v65, 4, v4
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s18, s6, s18
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s39, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s34, s18, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s18, s7, 31
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v66, 24, v2
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s10, v109
	s_add_i32 s18, s7, s18
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s8, s35
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v6, 1, v0
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v9, 24, v109
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s52, s18, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_add_u32 v7, s10, 7, v3
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v153, v65, v3
	v_bfe_u32 v3, v0, 4, 1
	s_add_i32 s33, s9, s17
	s_and_b32 s41, s25, 0xffff
	s_add_i32 s25, s38, s3
	s_and_b32 s45, s27, 0xffff
	s_bitcmp1_b32 s7, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s13, s13, s8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v5
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s53, s8, s11
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v5, s33, v1
	v_and_or_b32 v3, v6, 30, v3
	s_mov_b32 s44, s26
	v_xor_b32_e32 v156, v2, v9
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v2, 16, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[67:68], null, s10, v1, v[66:67]
	s_cselect_b32 s26, -1, 0
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v1, s33, v80
	s_sub_i32 s8, s14, s13
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v159, 2, v3
	s_sub_i32 s8, s8, s15
	v_cmp_eq_u32_e64 s7, 0, v2
	s_mul_i32 s12, s12, s8
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_mul_lo_u32 v199, v1, s11
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v1, 48, v1
	s_lshl_b32 s8, s12, 8
	s_lshl_b32 s2, s2, 8
	s_add_i32 s8, s8, s3
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v138, 1, v65
	v_or_b32_e32 v139, 2, v65
	v_or_b32_e32 v140, 3, v65
	v_or_b32_e32 v141, 4, v65
	v_or_b32_e32 v142, 5, v65
	v_or_b32_e32 v143, 6, v65
	v_or_b32_e32 v144, 7, v65
	v_or_b32_e32 v145, 8, v65
	v_or_b32_e32 v146, 9, v65
	v_or_b32_e32 v147, 10, v65
	v_or_b32_e32 v148, 11, v65
	v_or_b32_e32 v149, 12, v65
	v_or_b32_e32 v150, 13, v65
	v_or_b32_e32 v151, 14, v65
	v_or_b32_e32 v152, 15, v65
	v_mul_lo_u32 v200, v2, s11
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v2, 0xf0, v0
	v_mul_lo_u32 v202, v1, s11
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v1, s8, s2, v109
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v8, 24, v6
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v154, v65, v7
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v184, v7, v138
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v185, v7, v139
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v186, v7, v140
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v187, v7, v141
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v188, v7, v142
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v189, v7, v143
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v190, v7, v144
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v191, v7, v145
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v192, v7, v146
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v193, v7, v147
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v194, v7, v148
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v195, v7, v149
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v196, v7, v150
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v197, v7, v151
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v198, v7, v152
	v_mul_lo_u32 v201, v3, s11
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v3, 2, v2
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v4, 5, v4
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v7, 0x80, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v137, s38, v0
	v_lshl_or_b32 v155, v80, 5, v8
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v6, 28, v6
	v_add3_u32 v3, 0, v3, v4
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[68:69], null, s10, v7, v[65:66]
	v_mad_u64_u32 v[69:70], null, s10, v1, v[65:66]
	v_mad_u64_u32 v[70:71], null, v5, s10, v[66:67]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s35, v137
	v_xor_b32_e32 v157, 8, v155
	v_xor_b32_e32 v158, 16, v155
	v_xor_b32_e32 v160, 24, v155
	v_xor_b32_e32 v161, 4, v159
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v162, 1, v67
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v163, 2, v67
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v164, 3, v67
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v165, 4, v67
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v166, 5, v67
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v167, 6, v67
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v168, 7, v67
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v169, 1, v153
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v170, 2, v153
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v171, 3, v153
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v172, 4, v153
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v173, 5, v153
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v174, 6, v153
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v175, 7, v153
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v176, 8, v153
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v177, 9, v153
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v178, 10, v153
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v179, 11, v153
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v180, 12, v153
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v181, 13, v153
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v182, 14, v153
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v183, 15, v153
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v203, v3, v6
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v204, 0, v2
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	s_add_i32 s27, s34, -1
	s_mov_b32 s40, s24
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mul_i32 s25, s25, s10
	s_mov_b32 s55, 0
	s_mul_i32 s54, s33, s10
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s49, s31, 0xffff
	s_mov_b32 s48, s30
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s56, s27, 6
	s_mov_b32 s24, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v205, v199, s55, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s55, s53
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v206, v200, s55, 1
	v_add_lshl_u32 v207, v201, s55, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v208, v202, s55, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v209, v137, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v205, 0x80000000, v205, s5
	v_cndmask_b32_e64 v206, 0x80000000, v206, s4
	v_cndmask_b32_e64 v207, 0x80000000, v207, s19
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	v_cndmask_b32_e64 v208, 0x80000000, v208, s16
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v209, 0x80000000, v209, s6
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v205, v205, s[28:31], 0 offen
	buffer_load_u16 v206, v206, s[28:31], 0 offen
	buffer_load_u16 v207, v207, s[28:31], 0 offen
	buffer_load_u16 v208, v208, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v209, v209, s[48:51], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v210, v1
	v_cvt_f32_i32_e32 v211, v2
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
	v_cvt_f32_i32_e32 v212, v3
	v_cvt_f32_i32_e32 v213, v4
	v_cvt_f32_i32_e32 v214, v5
	v_cvt_f32_i32_e32 v215, v6
	v_cvt_f32_i32_e32 v216, v7
	v_cvt_f32_i32_e32 v217, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s2, s55, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v70, 64, v70
	s_lshl_b32 s24, s2, 6
	s_cmp_lg_u32 s55, s56
	s_mov_b32 s55, s2
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v1, 16, v205
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v3, 16, v207
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v60, v60, v1 :: v_dual_lshlrev_b32 v205, 16, v208
	v_mul_f32_e32 v59, v59, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v209
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v68, 64, v68
	v_dual_mul_f32 v42, v42, v2 :: v_dual_add_nc_u32 v69, 64, v69
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
	v_dual_mul_f32 v25, v25, v3 :: v_dual_mul_f32 v208, v11, v205
	v_dual_mul_f32 v27, v27, v3 :: v_dual_mul_f32 v206, v9, v205
	v_dual_mul_f32 v28, v28, v3 :: v_dual_mul_f32 v207, v10, v205
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v220, v15, v205
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v209, v12, v205
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v218, v13, v205
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v219, v14, v205
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v210, v210, v205
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v221, v16, v205
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v212, v212, v205
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v211, v211, v205
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v214, v214, v205
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v213, v213, v205
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v216, v216, v205
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v215, v215, v205
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v203, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v204
	ds_load_b128 v[5:8], v204 offset:16
	ds_load_b128 v[9:12], v204 offset:512
	ds_load_b128 v[13:16], v204 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v205, v217, v205 :: v_dual_fmac_f32 v134, v59, v3
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v136, v57, v1 :: v_dual_fmac_f32 v135, v58, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v133, v60, v4 :: v_dual_fmac_f32 v132, v61, v5
	v_dual_fmac_f32 v131, v62, v6 :: v_dual_fmac_f32 v130, v63, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v129, v64, v8 :: v_dual_fmac_f32 v128, v49, v9
	v_dual_fmac_f32 v127, v50, v10 :: v_dual_fmac_f32 v126, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v125, v52, v12 :: v_dual_fmac_f32 v124, v53, v13
	v_dual_fmac_f32 v123, v54, v14 :: v_dual_fmac_f32 v122, v55, v15
	v_dual_fmac_f32 v121, v56, v16 :: v_dual_fmac_f32 v120, v41, v1
	v_dual_fmac_f32 v119, v42, v2 :: v_dual_fmac_f32 v118, v43, v3
	v_dual_fmac_f32 v117, v44, v4 :: v_dual_fmac_f32 v116, v45, v5
	v_dual_fmac_f32 v115, v46, v6 :: v_dual_fmac_f32 v114, v47, v7
	v_dual_fmac_f32 v113, v48, v8 :: v_dual_fmac_f32 v112, v33, v9
	v_dual_fmac_f32 v111, v34, v10 :: v_dual_fmac_f32 v110, v35, v11
	v_dual_fmac_f32 v108, v36, v12 :: v_dual_fmac_f32 v107, v37, v13
	v_dual_fmac_f32 v106, v38, v14 :: v_dual_fmac_f32 v105, v39, v15
	v_dual_fmac_f32 v104, v40, v16 :: v_dual_fmac_f32 v103, v25, v1
	v_dual_fmac_f32 v102, v26, v2 :: v_dual_fmac_f32 v101, v27, v3
	v_dual_fmac_f32 v100, v28, v4 :: v_dual_fmac_f32 v99, v29, v5
	v_dual_fmac_f32 v98, v30, v6 :: v_dual_fmac_f32 v97, v31, v7
	v_dual_fmac_f32 v96, v32, v8 :: v_dual_fmac_f32 v95, v17, v9
	v_dual_fmac_f32 v94, v18, v10 :: v_dual_fmac_f32 v93, v19, v11
	v_dual_fmac_f32 v92, v20, v12 :: v_dual_fmac_f32 v91, v21, v13
	v_dual_fmac_f32 v90, v22, v14 :: v_dual_fmac_f32 v89, v23, v15
	v_dual_fmac_f32 v88, v24, v16 :: v_dual_fmac_f32 v87, v206, v1
	v_dual_fmac_f32 v86, v207, v2 :: v_dual_fmac_f32 v85, v208, v3
	v_dual_fmac_f32 v84, v209, v4 :: v_dual_fmac_f32 v83, v218, v5
	v_dual_fmac_f32 v82, v219, v6 :: v_dual_fmac_f32 v81, v220, v7
	v_dual_fmac_f32 v79, v221, v8 :: v_dual_fmac_f32 v78, v210, v9
	v_dual_fmac_f32 v77, v211, v10 :: v_dual_fmac_f32 v76, v212, v11
	v_dual_fmac_f32 v75, v213, v12 :: v_dual_fmac_f32 v74, v214, v13
	v_dual_fmac_f32 v73, v215, v14 :: v_dual_fmac_f32 v72, v216, v15
	v_fmac_f32_e32 v71, v205, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s2, s52, s24
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s2, 0, 64
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
	s_and_b32 s3, s2, 0x60
	s_mov_b32 s2, s39
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s39, s3
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s2, s39
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
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_add_nc_u32_e32 v206, s2, v70
	v_add_nc_u32_e32 v205, s2, v69
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v207, s2, v68
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v206, 0x80000000, v206, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e32 v205, 0x80000000, v205, vcc_lo
	v_cndmask_b32_e64 v209, 0x80000000, v207, s1
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v215, 0, v156
	v_add_nc_u32_e32 v217, 0, v155
	buffer_load_b64 v[213:214], v206, s[40:43], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x1
	buffer_load_b128 v[205:208], v205, s[44:47], 0 offen
	buffer_load_b128 v[209:212], v209, s[44:47], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s2, s2, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s2, s3
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(2)
	ds_store_b64 v215, v[213:214]
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v221, v159, v205
	ds_bpermute_b32 v222, v159, v206
	ds_bpermute_b32 v223, v161, v205
	ds_bpermute_b32 v224, v161, v206
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v225, v159, v209
	ds_bpermute_b32 v226, v159, v210
	ds_bpermute_b32 v227, v161, v209
	ds_bpermute_b32 v228, v161, v210
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[213:216], v217 offset1:1
	ds_load_2addr_stride64_b64 v[217:220], v217 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_bpermute_b32 v229, v159, v211
	ds_bpermute_b32 v230, v159, v212
	ds_bpermute_b32 v231, v161, v211
	ds_bpermute_b32 v232, v161, v212
	v_cndmask_b32_e64 v205, v223, v221, s7
	v_cndmask_b32_e64 v206, v224, v222, s7
	v_cndmask_b32_e64 v209, v227, v225, s7
	v_cndmask_b32_e64 v210, v228, v226, s7
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[205:206], v[213:214], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[205:206], v[217:218], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[205:206], v[219:220], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[209:210], v[213:214], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[209:210], v[215:216], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[209:210], v[217:218], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[209:210], v[219:220], v[1:8] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_bpermute_b32 v217, v159, v207
	ds_bpermute_b32 v218, v159, v208
	ds_bpermute_b32 v219, v161, v207
	ds_bpermute_b32 v220, v161, v208
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v209, 0, v157
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[41:48], v[205:206], v[215:216], v[41:48] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_2addr_stride64_b64 v[205:208], v209 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v209 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v215, v231, v229, s7
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v216, v232, v230, s7
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v213, v219, v217, s7
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v214, v220, v218, s7
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[213:214], v[205:206], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[213:214], v[209:210], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[215:216], v[209:210], v[17:24] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v209, 0, v158
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[49:56], v[215:216], v[205:206], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[213:214], v[207:208], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[215:216], v[207:208], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[213:214], v[211:212], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[215:216], v[211:212], v[1:8] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_2addr_stride64_b64 v[205:208], v209 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v209 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v213, v221, v223, s7
	v_cndmask_b32_e64 v214, v222, v224, s7
	v_cndmask_b32_e64 v215, v225, v227, s7
	v_cndmask_b32_e64 v216, v226, v228, s7
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[213:214], v[205:206], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[213:214], v[209:210], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[215:216], v[209:210], v[17:24] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v209, 0, v160
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[49:56], v[215:216], v[205:206], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[213:214], v[207:208], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[215:216], v[207:208], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[213:214], v[211:212], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[215:216], v[211:212], v[1:8] neg_lo:[1,1,0]
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_2addr_stride64_b64 v[205:208], v209 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v209 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v213, v217, v219, s7
	v_cndmask_b32_e64 v214, v218, v220, s7
	v_cndmask_b32_e64 v215, v229, v231, s7
	v_cndmask_b32_e64 v216, v230, v232, s7
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[213:214], v[205:206], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[215:216], v[205:206], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[213:214], v[207:208], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[215:216], v[207:208], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[213:214], v[209:210], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[213:214], v[211:212], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[215:216], v[209:210], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[215:216], v[211:212], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s3, s34, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s30, s3, 64
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s2, s30
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v205, 4, v66
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_add_i32 s31, s2, s24
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s46, s42
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s17, s31, s54
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v218, s31, v65
	v_or_b32_e32 v205, s31, v205
	v_or_b32_e32 v219, s31, v138
	v_or_b32_e32 v220, s31, v139
	v_or_b32_e32 v221, s31, v140
	v_or_b32_e32 v222, s31, v141
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v206, s24, v205
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s15, s27, v205
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v205, 3, v66
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v223, s31, v142
	v_or_b32_e32 v224, s31, v143
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s11, s30, v206
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v206, 5, v66
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v225, s31, v144
	v_or_b32_e32 v211, s31, v147
	v_or_b32_e32 v212, s31, v148
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s11
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v206, s31, v206
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s47, s43
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v255, 0, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v207, s24, v206
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s14, s27, v206
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s12, s30, v207
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v207, 6, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v207, s31, v207
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v208, s24, v207
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s27, v207
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v207, s31, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s13, s30, v208
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v208, 7, v66
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v208, s31, v208
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s30, v205
	v_add_nc_u32_e32 v205, s17, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v209, s24, v208
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s10, s27, v208
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v205, 0x80000000, v205, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, s0, s12
	s_and_b32 s2, s0, s2
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s30, v209
	v_add_nc_u32_e32 v209, s17, v164
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v206, v205, s[40:43], 0 offen
	v_add_nc_u32_e32 v205, s17, v166
	v_cndmask_b32_e64 v209, 0x80000000, v209, s2
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s15, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v205, 0x80000000, v205, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, s0, s13
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v208, v205, s[40:43], 0 offen
	v_add_nc_u32_e32 v205, s17, v167
	v_cndmask_b32_e64 v205, 0x80000000, v205, s3
	s_clause 0x1
	buffer_load_u8 v210, v205, s[40:43], 0 offen
	buffer_load_u8 v209, v209, s[40:43], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v205.l, v206.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v205.l, v206.l, v205.l, s2
	v_add_nc_u32_e32 v206, s17, v168
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s14, s26
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v205.h, v208.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v205.h, v208.l, v205.h, s2
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s2, s0, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v206, 0x80000000, v206, s2
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s10, s26
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v205.h, 8, v205.h
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v208, v206, s[40:43], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v206.h, v210.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_or_b16 v217.l, v205.l, v205.h
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v205, 2, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v205, s31, v205
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s27, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s30, v205
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v205, 1, v66
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s8, s0, s8
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v206.l, v208.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v206.l, v208.l, v206.l, s2
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s9, s26
	v_add_nc_u32_e32 v208, s17, v162
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v206.h, v210.l, v206.h, s2
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s27, v207
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v206.l, 8, v206.l
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v210, s31, v146
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v217.h, v206.h, v206.l
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v206, s31, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s9, s30, v205
	v_add_nc_u32_e32 v205, s17, v163
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v205, 0x80000000, v205, s8
	buffer_load_u8 v207, v205, s[40:43], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v205.l, v209.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v205.l, v209.l, v205.l, s2
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s2, s0, s9
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v209, s31, v145
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s3, s26
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v205.l, 8, v205.l
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v208, v208, s[40:43], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v205.h, v207.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v205.h, v207.l, v205.h, s2
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s27, v206
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v216.h, v205.h, v205.l
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v205, s31, v66
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s27, v205
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v205
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s30, v205
	v_add_nc_u32_e32 v205, s17, v67
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v205, 0x80000000, v205, s8
	buffer_load_u8 v206, v205, s[40:43], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v205.l, v208.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v205.l, v208.l, v205.l, s2
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s3, s26
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v205.l, 8, v205.l
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v205.h, v206.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v205.h, v206.l, v205.h, s2
	v_or_b16 v216.l, v205.h, v205.l
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s14, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v219
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s15, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s17, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v221
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s18, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s20, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v223
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s21, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s22, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v225
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s23, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v210
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s30, v205
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v205, s24, v212
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s9, s30, v205
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v205, s31, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v206, s24, v205
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s10, s30, v206
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v206, s31, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v207, s24, v206
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s11, s30, v207
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v207, s31, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v208, s24, v207
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s12, s30, v208
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v208, s31, v152
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s31, s31, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v214, s31, v169
	v_add_nc_u32_e32 v215, s31, v171
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v213, s24, v208
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s14
	v_add_nc_u32_e32 v226, s31, v172
	s_and_b32 s14, s1, s14
	v_add_nc_u32_e32 v234, s31, v187
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s13, s30, v213
	v_add_nc_u32_e32 v213, s31, v153
	v_add_nc_u32_e32 v235, s31, v188
	v_add_nc_u32_e32 v248, s31, v192
	v_add_nc_u32_e32 v249, s31, v193
	v_add_nc_u32_e32 v250, s31, v194
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v213, 0x80000000, v213, s24
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s15
	v_add_nc_u32_e32 v251, s31, v195
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v214, 0x80000000, v214, s24
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s18
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v227, v213, s[44:47], 0 offen
	v_cndmask_b32_e64 v215, 0x80000000, v215, s24
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s20
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v228, v214, s[44:47], 0 offen
	v_cndmask_b32_e64 v226, 0x80000000, v226, s24
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s21
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v229, v215, s[44:47], 0 offen
	v_add_nc_u32_e32 v213, s31, v173
	v_add_nc_u32_e32 v214, s31, v174
	v_add_nc_u32_e32 v215, s31, v170
	v_add_nc_u32_e32 v252, s31, v196
	v_add_nc_u32_e32 v253, s31, v197
	v_cndmask_b32_e64 v213, 0x80000000, v213, s24
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s22
	v_add_nc_u32_e32 v254, s31, v198
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v214, 0x80000000, v214, s24
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v215, 0x80000000, v215, s24
	s_clause 0x3
	buffer_load_u8 v226, v226, s[44:47], 0 offen
	buffer_load_u8 v230, v213, s[44:47], 0 offen
	buffer_load_u8 v231, v214, s[44:47], 0 offen
	buffer_load_u8 v232, v215, s[44:47], 0 offen
	v_add_nc_u32_e32 v213, s31, v175
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s24, vcc_lo, s23
	v_add_nc_u32_e32 v214, s31, v184
	v_add_nc_u32_e32 v215, s31, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v213, 0x80000000, v213, s24
	buffer_load_u8 v233, v213, s[44:47], 0 offen
	v_add_nc_u32_e32 v213, s31, v154
	v_cndmask_b32_e64 v213, 0x80000000, v213, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s1, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v214, 0x80000000, v214, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s1, s18
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v236, v213, s[44:47], 0 offen
	v_cndmask_b32_e64 v215, 0x80000000, v215, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s1, s20
	v_add_nc_u32_e32 v213, s31, v189
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v234, 0x80000000, v234, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s1, s21
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v237, v214, s[44:47], 0 offen
	buffer_load_u8 v238, v215, s[44:47], 0 offen
	v_add_nc_u32_e32 v214, s31, v185
	v_cndmask_b32_e64 v235, 0x80000000, v235, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s1, s22
	v_add_nc_u32_e32 v215, s31, v179
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v213, 0x80000000, v213, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s1, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v214, 0x80000000, v214, s14
	s_clause 0x3
	buffer_load_u8 v234, v234, s[44:47], 0 offen
	buffer_load_u8 v235, v235, s[44:47], 0 offen
	buffer_load_u8 v239, v213, s[44:47], 0 offen
	buffer_load_u8 v240, v214, s[44:47], 0 offen
	v_add_nc_u32_e32 v213, s31, v190
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s1, s23
	v_add_nc_u32_e32 v214, s31, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v213, 0x80000000, v213, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s2
	s_and_b32 s2, s1, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v241, v213, s[44:47], 0 offen
	v_add_nc_u32_e32 v213, s31, v176
	v_cndmask_b32_e64 v213, 0x80000000, v213, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v214, 0x80000000, v214, s14
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s9
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v213, v213, s[44:47], 0 offen
	v_cndmask_b32_e64 v242, 0x80000000, v215, s14
	v_add_nc_u32_e32 v215, s31, v180
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s10
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v242, v242, s[44:47], 0 offen
	v_cndmask_b32_e64 v243, 0x80000000, v215, s14
	v_add_nc_u32_e32 v215, s31, v181
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v244, 0x80000000, v215, s14
	v_add_nc_u32_e32 v215, s31, v182
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v245, 0x80000000, v215, s14
	buffer_load_u8 v215, v214, s[44:47], 0 offen
	v_add_nc_u32_e32 v214, s31, v183
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s13
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v246, 0x80000000, v214, s14
	v_add_nc_u32_e32 v214, s31, v178
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v247, 0x80000000, v214, s14
	s_clause 0x4
	buffer_load_u8 v243, v243, s[44:47], 0 offen
	buffer_load_u8 v244, v244, s[44:47], 0 offen
	buffer_load_u8 v214, v245, s[44:47], 0 offen
	buffer_load_u8 v245, v246, s[44:47], 0 offen
	buffer_load_u8 v246, v247, s[44:47], 0 offen
	v_add_nc_u32_e32 v247, s31, v191
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v247, 0x80000000, v247, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s1, s3
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s27, v219
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v248, 0x80000000, v248, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s1, s8
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s27, v220
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v249, 0x80000000, v249, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s1, s9
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s27, v221
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v250, 0x80000000, v250, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s1, s10
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v220, 0, v155
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v251, 0x80000000, v251, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s1, s11
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s11, s3, s26
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v252, 0x80000000, v252, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s1, s12
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s12, s9, s26
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v253, 0x80000000, v253, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s1, s13
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s13, s8, s26
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v254, 0x80000000, v254, s2
	s_clause 0x7
	buffer_load_u8 v247, v247, s[44:47], 0 offen
	buffer_load_u8 v248, v248, s[44:47], 0 offen
	buffer_load_u8 v249, v249, s[44:47], 0 offen
	buffer_load_u8 v250, v250, s[44:47], 0 offen
	buffer_load_u8 v251, v251, s[44:47], 0 offen
	buffer_load_u8 v252, v252, s[44:47], 0 offen
	buffer_load_u8 v253, v253, s[44:47], 0 offen
	buffer_load_u8 v254, v254, s[44:47], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s27, v218
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v255, v[216:217]
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s27, v223
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s10, s2, s26
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s27, v225
	v_cmp_eq_u32_e64 s2, s27, v222
	v_cmp_eq_u32_e64 s8, s27, v224
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s26
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s9, s9, s26
	s_and_b32 s2, s2, s26
	s_and_b32 s8, s8, s26
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_barrier
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v213.h, v227.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v214.h, v228.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v213.h, v227.l, v213.h, s10
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v215.h, v229.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v214.h, v228.l, v214.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v215.h, v229.l, v215.h, s12
	v_lshlrev_b16 v214.h, 8, v214.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v215.h, 8, v215.h
	v_or_b16 v217.l, v213.h, v214.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v214.h, v230.l, 15
	v_and_b16 v216.l, v232.l, 15
	v_and_b16 v213.h, v226.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v214.h, v230.l, v214.h, s3
	v_cndmask_b16 v216.l, v232.l, v216.l, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v213.h, v226.l, v213.h, s2
	v_lshlrev_b16 v214.h, 8, v214.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v217.h, v216.l, v215.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v215.h, v233.l, 15
	v_and_b16 v216.l, v231.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v218.l, v213.h, v214.h
	ds_bpermute_b32 v228, v159, v217
	v_cndmask_b16 v215.h, v233.l, v215.h, s9
	v_cndmask_b16 v216.l, v231.l, v216.l, s8
	ds_bpermute_b32 v229, v161, v217
	v_lshlrev_b16 v215.h, 8, v215.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v213.h, v236.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v218.h, v216.l, v215.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v214.h, v237.l, 15
	v_and_b16 v215.h, v238.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v213.h, v236.l, v213.h, s10
	ds_bpermute_b32 v230, v159, v218
	v_cndmask_b16 v214.h, v237.l, v214.h, s11
	v_cndmask_b16 v215.h, v238.l, v215.h, s12
	ds_bpermute_b32 v231, v161, v218
	v_lshlrev_b16 v214.h, 8, v214.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v216.l, v240.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v215.h, 8, v215.h
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v224, v229, v228, s7
	v_or_b16 v219.l, v213.h, v214.h
	v_cndmask_b16 v216.l, v240.l, v216.l, s13
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v214.h, v235.l, 15
	v_and_b16 v213.h, v234.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v219.h, v216.l, v215.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v215.h, v241.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v214.h, v235.l, v214.h, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v216.l, v239.l, 15
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s27, v210
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v213.h, v234.l, v213.h, s2
	v_cndmask_b16 v215.h, v241.l, v215.h, s9
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s27, v212
	v_cmp_eq_u32_e64 s2, s27, v209
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v216.l, v239.l, v216.l, s8
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s27, v211
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s11, s3, s26
	s_and_b32 s12, s9, s26
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s27, v206
	v_cmp_eq_u32_e64 s9, s27, v208
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s10, s2, s26
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s27, v205
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s13, s8, s26
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s27, v207
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s26
	s_and_b32 s9, s9, s26
	s_and_b32 s2, s2, s26
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_lshlrev_b16 v215.h, 8, v215.h
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s8, s8, s26
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v214.h, 8, v214.h
	ds_bpermute_b32 v232, v159, v219
	ds_bpermute_b32 v233, v161, v219
	v_or_b16 v216.h, v216.l, v215.h
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v210.l, v242.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v216.l, v213.h, v214.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v209.l, v213.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v225, v231, v230, s7
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v209.h, v215.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v210.l, v242.l, v210.l, s12
	ds_bpermute_b32 v234, v159, v216
	ds_bpermute_b32 v235, v161, v216
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_load_2addr_stride64_b64 v[216:219], v220 offset1:1
	ds_load_2addr_stride64_b64 v[220:223], v220 offset0:2 offset1:3
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v209.h, v215.l, v209.h, s11
	v_cndmask_b16 v209.l, v213.l, v209.l, s10
	v_lshlrev_b16 v210.l, 8, v210.l
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v205.l, v243.l, 15
	v_and_b16 v205.h, v244.l, 15
	v_and_b16 v206.h, v214.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v206.l, v245.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v210.h, v246.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v205.l, v243.l, v205.l, s2
	v_cndmask_b16 v205.h, v244.l, v205.h, s3
	v_cndmask_b16 v206.h, v214.l, v206.h, s8
	v_cndmask_b16 v206.l, v245.l, v206.l, s9
	v_cndmask_b16 v210.h, v246.l, v210.h, s13
	v_lshlrev_b16 v209.h, 8, v209.h
	v_lshlrev_b16 v205.h, 8, v205.h
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v226, v233, v232, s7
	v_lshlrev_b16 v206.l, 8, v206.l
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v227, v235, v234, s7
	v_or_b16 v210.h, v210.h, v210.l
	v_or_b16 v207.l, v205.l, v205.h
	v_or_b16 v210.l, v209.l, v209.h
	v_or_b16 v207.h, v206.h, v206.l
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[224:225], v[216:217], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[226:227], v[216:217], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[224:225], v[218:219], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[226:227], v[218:219], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[224:225], v[220:221], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[224:225], v[222:223], v[9:16] neg_lo:[1,1,0]
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v205.l, v247.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v205.h, v248.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v206.h, v249.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v206.l, v250.l, 15
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[17:24], v[226:227], v[220:221], v[17:24] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v205.l, v247.l, v205.l, s10
	v_cndmask_b16 v205.h, v248.l, v205.h, s11
	v_cndmask_b16 v206.h, v249.l, v206.h, s13
	v_cndmask_b16 v206.l, v250.l, v206.l, s12
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[1:8], v[226:227], v[222:223], v[1:8] neg_lo:[1,1,0]
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_bpermute_b32 v217, v159, v210
	v_lshlrev_b16 v205.h, 8, v205.h
	ds_bpermute_b32 v218, v161, v210
	v_lshlrev_b16 v206.l, 8, v206.l
	ds_bpermute_b32 v219, v159, v207
	ds_bpermute_b32 v220, v161, v207
	v_or_b16 v208.l, v205.l, v205.h
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v205.h, v252.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v208.h, v206.h, v206.l
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v206.l, v254.l, 15
	v_and_b16 v205.l, v251.l, 15
	v_and_b16 v206.h, v253.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v205.h, v252.l, v205.h, s3
	ds_bpermute_b32 v221, v159, v208
	v_cndmask_b16 v206.l, v254.l, v206.l, s9
	v_cndmask_b16 v205.l, v251.l, v205.l, s2
	v_cndmask_b16 v206.h, v253.l, v206.h, s8
	v_lshlrev_b16 v205.h, 8, v205.h
	ds_bpermute_b32 v222, v161, v208
	v_lshlrev_b16 v206.l, 8, v206.l
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v209, 0, v157
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v213, v218, v217, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v206.h, v206.h, v206.l
	v_or_b16 v206.l, v205.l, v205.h
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v214, v220, v219, s7
	ds_bpermute_b32 v223, v159, v206
	ds_bpermute_b32 v224, v161, v206
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_load_2addr_stride64_b64 v[205:208], v209 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v209 offset0:2 offset1:3
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v215, v222, v221, s7
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v216, v224, v223, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[213:214], v[209:210], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[213:214], v[205:206], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[213:214], v[207:208], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[213:214], v[211:212], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[215:216], v[209:210], v[17:24] neg_lo:[1,1,0]
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v209, 0, v158
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[49:56], v[215:216], v[205:206], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[215:216], v[207:208], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[215:216], v[211:212], v[1:8] neg_lo:[1,1,0]
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_load_2addr_stride64_b64 v[205:208], v209 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v209 offset0:2 offset1:3
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b32_e64 v213, v228, v229, s7
	v_cndmask_b32_e64 v214, v230, v231, s7
	v_cndmask_b32_e64 v215, v232, v233, s7
	v_cndmask_b32_e64 v216, v234, v235, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[213:214], v[205:206], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[213:214], v[209:210], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[215:216], v[209:210], v[17:24] neg_lo:[1,1,0]
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v209, 0, v160
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_wmma_i32_16x16x16_iu4 v[49:56], v[215:216], v[205:206], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[213:214], v[207:208], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[215:216], v[207:208], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[213:214], v[211:212], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[215:216], v[211:212], v[1:8] neg_lo:[1,1,0]
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_load_2addr_stride64_b64 v[205:208], v209 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v209 offset0:2 offset1:3
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b32_e64 v213, v217, v218, s7
	v_cndmask_b32_e64 v214, v219, v220, s7
	v_cndmask_b32_e64 v215, v221, v222, s7
	v_cndmask_b32_e64 v216, v223, v224, s7
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[213:214], v[205:206], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[215:216], v[205:206], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[213:214], v[207:208], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[215:216], v[207:208], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[213:214], v[209:210], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[213:214], v[211:212], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[215:216], v[209:210], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[215:216], v[211:212], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge18
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v1, 0x70, v109
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s33, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
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
	v_or_b32_e32 v0, s38, v4
	v_or_b32_e32 v11, s38, v7
	v_or_b32_e32 v12, s38, v8
	v_or_b32_e32 v2, s38, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s38, v5
	v_or_b32_e32 v13, s38, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s38, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s38, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s38, v11
	v_or_b32_e32 v1, s38, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v80
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s35, v0
	v_cmp_gt_i32_e64 s10, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s38, v13
	v_or_b32_e32 v1, s38, v15
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s38, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v0
	v_cmp_gt_i32_e64 s13, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s38, v16
	v_or_b32_e32 v20, s38, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s3, s38, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s38, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s35, v21
	v_cmp_gt_i32_e64 s14, s35, v1
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s35, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s17
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s15
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v136, v22, s[36:39], 0 offen
	buffer_store_b32 v135, v23, s[36:39], 0 offen
	buffer_store_b32 v134, v21, s[36:39], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v133, v2, s[36:39], 0 offen
	buffer_store_b32 v132, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v131, v22, s[36:39], 0 offen
	buffer_store_b32 v130, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v129, v2, s[36:39], 0 offen
	buffer_store_b32 v128, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v127, v22, s[36:39], 0 offen
	buffer_store_b32 v126, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s6
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v125, v2, s[36:39], 0 offen
	buffer_store_b32 v124, v21, s[36:39], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v123, v22, s[36:39], 0 offen
	buffer_store_b32 v122, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v121, v0, s[36:39], 0 offen
	buffer_store_b32 v120, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v119, v21, s[36:39], 0 offen
	buffer_store_b32 v118, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v117, v0, s[36:39], 0 offen
	buffer_store_b32 v116, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v115, v21, s[36:39], 0 offen
	buffer_store_b32 v114, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v113, v0, s[36:39], 0 offen
	buffer_store_b32 v112, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v111, v21, s[36:39], 0 offen
	buffer_store_b32 v110, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v108, v0, s[36:39], 0 offen
	buffer_store_b32 v107, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v106, v21, s[36:39], 0 offen
	buffer_store_b32 v105, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v104, v0, s[36:39], 0 offen
	buffer_store_b32 v103, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v102, v19, s[36:39], 0 offen
	buffer_store_b32 v101, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v100, v0, s[36:39], 0 offen
	buffer_store_b32 v99, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v98, v19, s[36:39], 0 offen
	buffer_store_b32 v97, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v96, v0, s[36:39], 0 offen
	buffer_store_b32 v95, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v94, v19, s[36:39], 0 offen
	buffer_store_b32 v93, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v92, v0, s[36:39], 0 offen
	buffer_store_b32 v91, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v90, v19, s[36:39], 0 offen
	buffer_store_b32 v89, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v88, v0, s[36:39], 0 offen
	buffer_store_b32 v87, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v86, v3, s[36:39], 0 offen
	buffer_store_b32 v85, v17, s[36:39], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v84, v0, s[36:39], 0 offen
	buffer_store_b32 v83, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	s_clause 0x1
	buffer_store_b32 v82, v3, s[36:39], 0 offen
	buffer_store_b32 v81, v13, s[36:39], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s16, s10
	s_and_b32 s2, s16, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s16, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v79, v0, s[36:39], 0 offen
	buffer_store_b32 v78, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s16, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v77, v3, s[36:39], 0 offen
	buffer_store_b32 v76, v9, s[36:39], 0 offen
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s16, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s16, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s16, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s16, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s16, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v75, v0, s[36:39], 0 offen
	buffer_store_b32 v74, v2, s[36:39], 0 offen
	buffer_store_b32 v73, v3, s[36:39], 0 offen
	buffer_store_b32 v72, v4, s[36:39], 0 offen
	buffer_store_b32 v71, v1, s[36:39], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 57
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
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 57
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10488
; TotalNumSgprs: 59
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 59
; NumVGPRsForWavesPerEU: 256
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
    .private_segment_fixed_size: 0
    .sgpr_count:     59
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
