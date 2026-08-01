	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v65, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_sub_i32 s38, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s38, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s47, s38, s34
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
	s_ashr_i32 s39, s38, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[38:39], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s39, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s6, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s39, v65
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s46, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s34, v1
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s21, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s20, s46, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s20, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge47_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s26, s39, s47
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr26
.LBB0_3:                                ; %Flow414
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v127, 0xe0, v0
	v_lshrrev_b32_e32 v130, 4, v0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v145, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s33, s6, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph46
	s_clause 0x1
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b64 s[22:23], s[0:1], 0x38
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v130
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v147, 6, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s40, s20, 31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s39, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s40, s20, s40
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, 16, v2
	v_mad_u64_u32 v[66:67], null, s34, v147, v[1:2]
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v150, 12, v147
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s52, s40, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s40, s46, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v7, 48, v2
	v_or_b32_e32 v8, 64, v2
	v_or_b32_e32 v9, 0x50, v2
	v_or_b32_e32 v10, 0x60, v2
	v_or_b32_e32 v11, 0x70, v2
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s22, v130, v[65:66]
	v_or_b32_e32 v12, 0x80, v2
	v_or_b32_e32 v13, 0x90, v2
	v_or_b32_e32 v14, 0xa0, v2
	v_or_b32_e32 v15, 0xb0, v2
	v_or_b32_e32 v16, 0xc0, v2
	v_or_b32_e32 v17, 0xd0, v2
	v_or_b32_e32 v18, 0xe0, v2
	v_or_b32_e32 v19, 0xf0, v2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v2
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s40, s46, s40
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s53, s3, 4
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s38, s35
	v_mad_u64_u32 v[68:69], null, s34, v150, v[1:2]
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	v_bfe_i32 v2, v0, 3, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s54, s40, 1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s55, s38, s22
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s56, s38, s23
	s_and_b32 s41, s25, 0xffff
	s_add_i32 s38, s33, s3
	s_and_b32 s45, s27, 0xffff
	s_bitcmp1_b32 s46, 0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v5
	s_mov_b32 s44, s26
	v_bfe_i32 v4, v0, 7, 1
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v5, 3, v127
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v2, 0x88, v2
	s_cselect_b32 s57, -1, 0
	s_add_i32 s26, s39, s47
	v_cmp_gt_i32_e64 s7, s35, v7
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v7, s26, v65
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v3, 0xf0, v0
	v_cmp_gt_i32_e64 s6, s35, v6
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v6, 0x7f, v0
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_or3_b32 v158, v2, v5, v1
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v1, 16, v7
	v_mad_u64_u32 v[69:70], null, s22, 48, v[67:68]
	v_mad_u64_u32 v[70:71], null, 0x50, s22, v[67:68]
	v_mad_u64_u32 v[71:72], null, 0x60, s22, v[67:68]
	v_xor_b32_e32 v161, v4, v6
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v4, 32, v7
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v5, 2, v3
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v6, 1, v0
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v2, 32, v2
	v_mad_u64_u32 v[72:73], null, 0x70, s22, v[67:68]
	v_mad_u64_u32 v[73:74], null, 0x90, s22, v[67:68]
	v_mul_lo_u32 v164, v1, s23
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v1, 48, v7
	v_mad_u64_u32 v[74:75], null, 0xa0, s22, v[67:68]
	v_mad_u64_u32 v[75:76], null, 0xb0, s22, v[67:68]
	v_mad_u64_u32 v[76:77], null, 0xc0, s22, v[67:68]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v146, s33, v0
	v_mul_lo_u32 v165, v4, s23
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v4, 28, v6
	v_add3_u32 v2, 0, v5, v2
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_mad_u64_u32 v[77:78], null, 0xd0, s22, v[67:68]
	v_mad_u64_u32 v[78:79], null, 0xe0, s22, v[67:68]
	v_mul_lo_u32 v163, v7, s23
	v_mul_lo_u32 v166, v1, s23
	v_mad_u64_u32 v[79:80], null, 0xf0, s22, v[67:68]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s35, v8
	v_cmp_gt_i32_e64 s9, s35, v9
	v_cmp_gt_i32_e64 s10, s35, v10
	v_cmp_gt_i32_e64 s11, s35, v11
	v_cmp_gt_i32_e64 s12, s35, v12
	v_cmp_gt_i32_e64 s13, s35, v13
	v_cmp_gt_i32_e64 s14, s35, v14
	v_cmp_gt_i32_e64 s15, s35, v15
	v_cmp_gt_i32_e64 s16, s35, v16
	v_cmp_gt_i32_e64 s17, s35, v17
	v_cmp_gt_i32_e64 s18, s35, v18
	v_cmp_gt_i32_e64 s19, s35, v19
	v_cmp_gt_i32_e64 s20, s35, v146
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v148, 4, v147
	v_or_b32_e32 v149, 8, v147
	v_lshl_add_u32 v151, s34, 2, v66
	v_lshl_add_u32 v152, s34, 3, v66
	v_lshl_add_u32 v153, s22, 4, v67
	v_lshl_add_u32 v154, s22, 5, v67
	v_lshl_add_u32 v155, s22, 6, v67
	v_lshl_add_u32 v156, s22, 7, v67
	v_or_b32_e32 v157, 0x300, v0
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v159, 0, v65
	v_or_b32_e32 v160, 0x3f0, v0
	v_xor_b32_e32 v162, 8, v158
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v167, v2, v4
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v168, 0, v3
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v83, 0
	s_add_i32 s58, s52, -1
	s_mov_b32 s40, s24
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mul_i32 s38, s38, s22
	s_mov_b32 s27, 0
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s49, s31, 0xffff
	s_mov_b32 s48, s30
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s59, s58, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v169, v163, s27, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s27, s56
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v170, v164, s27, 1
	v_add_lshl_u32 v171, v165, s27, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v172, v166, s27, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v173, v146, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v169, 0x80000000, v169, s5
	v_cndmask_b32_e64 v170, 0x80000000, v170, s4
	v_cndmask_b32_e64 v171, 0x80000000, v171, s21
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v173, 0x80000000, v173, s20
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v169, v169, s[28:31], 0 offen
	buffer_load_u16 v170, v170, s[28:31], 0 offen
	buffer_load_u16 v171, v171, s[28:31], 0 offen
	buffer_load_u16 v172, v172, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v173, v173, s[48:51], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v174, v1
	v_cvt_f32_i32_e32 v175, v2
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
	v_cvt_f32_i32_e32 v176, v3
	v_cvt_f32_i32_e32 v177, v4
	v_cvt_f32_i32_e32 v178, v5
	v_cvt_f32_i32_e32 v179, v6
	v_cvt_f32_i32_e32 v180, v7
	v_cvt_f32_i32_e32 v181, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s22, s27, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s22, 4
	s_cmp_lg_u32 s27, s59
	s_mov_b32 s27, s22
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v170
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v1, 16, v169
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v3, 16, v171
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v60, v60, v1 :: v_dual_lshlrev_b32 v169, 16, v172
	v_mul_f32_e32 v57, v57, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v173
	v_dual_mul_f32 v59, v59, v1 :: v_dual_mul_f32 v44, v44, v2
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
	v_dual_mul_f32 v25, v25, v3 :: v_dual_mul_f32 v172, v11, v169
	v_dual_mul_f32 v27, v27, v3 :: v_dual_mul_f32 v170, v9, v169
	v_dual_mul_f32 v28, v28, v3 :: v_dual_mul_f32 v171, v10, v169
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v184, v15, v169
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v173, v12, v169
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v182, v13, v169
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v183, v14, v169
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v174, v174, v169
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v185, v16, v169
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v176, v176, v169
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v175, v175, v169
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v178, v178, v169
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v177, v177, v169
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v180, v180, v169
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v179, v179, v169
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v167, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v168
	ds_load_b128 v[5:8], v168 offset:16
	ds_load_b128 v[9:12], v168 offset:512
	ds_load_b128 v[13:16], v168 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v169, v181, v169 :: v_dual_fmac_f32 v144, v58, v2
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v145, v57, v1 :: v_dual_fmac_f32 v142, v60, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v143, v59, v3 :: v_dual_fmac_f32 v140, v62, v6
	v_dual_fmac_f32 v141, v61, v5 :: v_dual_fmac_f32 v138, v64, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v139, v63, v7 :: v_dual_fmac_f32 v136, v50, v10
	v_dual_fmac_f32 v137, v49, v9 :: v_dual_fmac_f32 v134, v52, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v135, v51, v11 :: v_dual_fmac_f32 v132, v54, v14
	v_dual_fmac_f32 v133, v53, v13 :: v_dual_fmac_f32 v126, v42, v2
	v_dual_fmac_f32 v131, v55, v15 :: v_dual_fmac_f32 v128, v41, v1
	v_dual_fmac_f32 v129, v56, v16 :: v_dual_fmac_f32 v122, v46, v6
	v_dual_fmac_f32 v125, v43, v3 :: v_dual_fmac_f32 v124, v44, v4
	v_dual_fmac_f32 v123, v45, v5 :: v_dual_fmac_f32 v120, v48, v8
	v_dual_fmac_f32 v121, v47, v7 :: v_dual_fmac_f32 v118, v34, v10
	v_dual_fmac_f32 v119, v33, v9 :: v_dual_fmac_f32 v116, v36, v12
	v_dual_fmac_f32 v117, v35, v11 :: v_dual_fmac_f32 v114, v38, v14
	v_dual_fmac_f32 v115, v37, v13 :: v_dual_fmac_f32 v112, v40, v16
	v_dual_fmac_f32 v113, v39, v15 :: v_dual_fmac_f32 v110, v26, v2
	v_dual_fmac_f32 v111, v25, v1 :: v_dual_fmac_f32 v108, v28, v4
	v_dual_fmac_f32 v109, v27, v3 :: v_dual_fmac_f32 v106, v30, v6
	v_dual_fmac_f32 v107, v29, v5 :: v_dual_fmac_f32 v104, v32, v8
	v_dual_fmac_f32 v105, v31, v7 :: v_dual_fmac_f32 v102, v18, v10
	v_dual_fmac_f32 v103, v17, v9 :: v_dual_fmac_f32 v100, v20, v12
	v_dual_fmac_f32 v101, v19, v11 :: v_dual_fmac_f32 v98, v22, v14
	v_dual_fmac_f32 v99, v21, v13 :: v_dual_fmac_f32 v96, v24, v16
	v_dual_fmac_f32 v97, v23, v15 :: v_dual_fmac_f32 v92, v173, v4
	v_dual_fmac_f32 v95, v170, v1 :: v_dual_fmac_f32 v94, v171, v2
	v_dual_fmac_f32 v93, v172, v3 :: v_dual_fmac_f32 v90, v183, v6
	v_dual_fmac_f32 v91, v182, v5 :: v_dual_fmac_f32 v88, v185, v8
	v_dual_fmac_f32 v89, v184, v7 :: v_dual_fmac_f32 v86, v175, v10
	v_dual_fmac_f32 v87, v174, v9 :: v_dual_fmac_f32 v82, v177, v12
	v_dual_fmac_f32 v85, v176, v11 :: v_dual_fmac_f32 v84, v179, v14
	v_dual_fmac_f32 v81, v178, v13 :: v_dual_fmac_f32 v80, v169, v16
	v_fmac_f32_e32 v83, v180, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s22, s54, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s22, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s22, v1
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
	s_and_b32 s23, s22, 16
	s_mov_b32 s22, s53
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s53, s23
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s22, s53
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
	s_add_i32 s24, s22, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s46, s42
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s25, s24, s55
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_add_i32 s24, s24, s38
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s25, s25, s34
	v_add_nc_u32_e32 v169, s24, v67
	v_add_nc_u32_e32 v170, s24, v153
	v_add_nc_u32_e32 v171, s24, v154
	s_add_i32 s25, s25, s39
	v_add_nc_u32_e32 v172, s24, v69
	v_add_nc_u32_e32 v173, s24, v155
	v_add_nc_u32_e32 v174, s24, v70
	v_add_nc_u32_e32 v175, s24, v71
	v_add_nc_u32_e32 v176, s24, v72
	v_add_nc_u32_e32 v177, s24, v156
	v_add_nc_u32_e32 v178, s24, v73
	v_add_nc_u32_e32 v179, s24, v74
	v_add_nc_u32_e32 v180, s24, v75
	v_add_nc_u32_e32 v181, s24, v76
	v_add_nc_u32_e32 v182, s24, v77
	v_add_nc_u32_e32 v183, s24, v78
	v_add_nc_u32_e32 v184, s24, v79
	v_add_nc_u32_e32 v185, s25, v66
	v_add_nc_u32_e32 v186, s25, v151
	v_add_nc_u32_e32 v187, s25, v152
	v_add_nc_u32_e32 v188, s25, v68
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s0
	v_cndmask_b32_e64 v170, 0x80000000, v170, s1
	v_cndmask_b32_e64 v171, 0x80000000, v171, s6
	s_mov_b32 s47, s43
	v_cndmask_b32_e64 v172, 0x80000000, v172, s7
	v_cndmask_b32_e64 v173, 0x80000000, v173, s8
	v_cndmask_b32_e64 v174, 0x80000000, v174, s9
	v_cndmask_b32_e64 v175, 0x80000000, v175, s10
	v_cndmask_b32_e64 v176, 0x80000000, v176, s11
	v_cndmask_b32_e64 v177, 0x80000000, v177, s12
	v_cndmask_b32_e64 v178, 0x80000000, v178, s13
	v_cndmask_b32_e64 v179, 0x80000000, v179, s14
	v_cndmask_b32_e64 v180, 0x80000000, v180, s15
	v_cndmask_b32_e64 v181, 0x80000000, v181, s16
	v_cndmask_b32_e64 v182, 0x80000000, v182, s17
	v_cndmask_b32_e64 v183, 0x80000000, v183, s18
	v_cndmask_b32_e64 v184, 0x80000000, v184, s19
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v185, 0x80000000, v185 :: v_dual_cndmask_b32 v186, 0x80000000, v186
	v_dual_cndmask_b32 v187, 0x80000000, v187 :: v_dual_cndmask_b32 v188, 0x80000000, v188
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xe
	buffer_load_u8 v169, v169, s[44:47], 0 offen
	buffer_load_u8 v170, v170, s[44:47], 0 offen
	buffer_load_u8 v171, v171, s[44:47], 0 offen
	buffer_load_u8 v172, v172, s[44:47], 0 offen
	buffer_load_u8 v173, v173, s[44:47], 0 offen
	buffer_load_u8 v174, v174, s[44:47], 0 offen
	buffer_load_u8 v175, v175, s[44:47], 0 offen
	buffer_load_u8 v176, v176, s[44:47], 0 offen
	buffer_load_u8 v177, v177, s[44:47], 0 offen
	buffer_load_u8 v178, v178, s[44:47], 0 offen
	buffer_load_u8 v179, v179, s[44:47], 0 offen
	buffer_load_u8 v180, v180, s[44:47], 0 offen
	buffer_load_u8 v181, v181, s[44:47], 0 offen
	buffer_load_u8 v182, v182, s[44:47], 0 offen
	buffer_load_u8 v183, v183, s[44:47], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x3
	buffer_load_u8 v185, v185, s[40:43], 0 offen
	buffer_load_u8 v186, v186, s[40:43], 0 offen
	buffer_load_u8 v187, v187, s[40:43], 0 offen
	buffer_load_u8 v188, v188, s[40:43], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_u8 v184, v184, s[44:47], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v189, 0, v0
	v_add_nc_u32_e32 v190, 0, v157
	v_add_nc_u32_e32 v191, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v192, 0, v161
	v_add_nc_u32_e32 v193, 0, v158
	v_add_nc_u32_e32 v194, 0, v162
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s22, s22, 16
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(4)
	ds_store_b8 v189, v185
	s_waitcnt vmcnt(3)
	ds_store_b8 v189, v186 offset:256
	s_waitcnt vmcnt(2)
	ds_store_b8 v189, v187 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v190, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v185, v159 offset:192
	ds_load_u8 v186, v159 offset:128
	ds_load_u8 v187, v159 offset:208
	ds_load_u8 v188, v159 offset:144
	ds_load_u8 v189, v159 offset:224
	ds_load_u8 v190, v159 offset:160
	ds_load_u8 v195, v159 offset:240
	ds_load_u8 v196, v159 offset:176
	ds_load_u8 v197, v159 offset:448
	ds_load_u8 v198, v159 offset:384
	ds_load_u8 v199, v159 offset:464
	ds_load_u8 v200, v159 offset:400
	ds_load_u8 v201, v159 offset:480
	ds_load_u8 v202, v159 offset:416
	ds_load_u8 v203, v159 offset:496
	ds_load_u8 v204, v159 offset:432
	ds_load_u8 v205, v159 offset:320
	ds_load_u8 v206, v159 offset:256
	ds_load_u8 v207, v159 offset:336
	ds_load_u8 v208, v159 offset:272
	ds_load_u8 v209, v159 offset:352
	ds_load_u8 v210, v159 offset:288
	ds_load_u8 v211, v159 offset:368
	ds_load_u8 v212, v159 offset:304
	ds_load_u8 v213, v159 offset:64
	ds_load_u8 v214, v159 offset:80
	ds_load_u8 v215, v159 offset:96
	ds_load_u8 v216, v159 offset:112
	ds_load_u8 v217, v159
	ds_load_u8 v218, v159 offset:16
	ds_load_u8 v219, v159 offset:32
	ds_load_u8 v220, v159 offset:48
	ds_load_u8 v221, v159 offset:960
	ds_load_u8 v222, v159 offset:896
	ds_load_u8 v223, v159 offset:976
	ds_load_u8 v224, v159 offset:912
	ds_load_u8 v225, v159 offset:992
	ds_load_u8 v226, v159 offset:928
	ds_load_u8 v191, v191
	ds_load_u8 v227, v159 offset:944
	ds_load_u8 v228, v159 offset:832
	ds_load_u8 v229, v159 offset:768
	ds_load_u8 v230, v159 offset:848
	ds_load_u8 v231, v159 offset:784
	ds_load_u8 v232, v159 offset:864
	ds_load_u8 v233, v159 offset:800
	ds_load_u8 v234, v159 offset:880
	ds_load_u8 v235, v159 offset:816
	ds_load_u8 v236, v159 offset:704
	ds_load_u8 v237, v159 offset:640
	ds_load_u8 v238, v159 offset:720
	ds_load_u8 v239, v159 offset:656
	ds_load_u8 v240, v159 offset:736
	ds_load_u8 v241, v159 offset:672
	ds_load_u8 v242, v159 offset:752
	ds_load_u8 v243, v159 offset:688
	ds_load_u8 v244, v159 offset:576
	ds_load_u8 v245, v159 offset:512
	ds_load_u8 v246, v159 offset:592
	ds_load_u8 v247, v159 offset:528
	ds_load_u8 v248, v159 offset:608
	ds_load_u8 v249, v159 offset:544
	ds_load_u8 v250, v159 offset:624
	ds_load_u8 v251, v159 offset:560
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v192, v169
	ds_store_b8 v192, v170 offset:256
	ds_store_b8 v192, v171 offset:512
	ds_store_b8 v192, v172 offset:768
	ds_store_b8 v192, v173 offset:1024
	ds_store_b8 v192, v174 offset:1280
	ds_store_b8 v192, v175 offset:1536
	ds_store_b8 v192, v176 offset:1792
	ds_store_b8 v192, v177 offset:2048
	ds_store_b8 v192, v178 offset:2304
	ds_store_b8 v192, v179 offset:2560
	ds_store_b8 v192, v180 offset:2816
	ds_store_b8 v192, v181 offset:3072
	ds_store_b8 v192, v182 offset:3328
	ds_store_b8 v192, v183 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v192, v184 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[169:172], v193 offset1:4
	ds_load_2addr_stride64_b64 v[173:176], v194 offset1:4
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v177, v206, v205, 0xc0c0004
	v_perm_b32 v178, v198, v197, 0xc0c0004
	v_perm_b32 v179, v217, v213, 0xc0c0004
	v_perm_b32 v180, v186, v185, 0xc0c0004
	v_perm_b32 v181, v229, v228, 0xc0c0004
	v_perm_b32 v182, v222, v221, 0xc0c0004
	v_perm_b32 v184, v237, v236, 0xc0c0004
	v_perm_b32 v183, v245, v244, 0xc0c0004
	v_perm_b32 v185, v208, v207, 0xc0c0004
	v_perm_b32 v186, v200, v199, 0xc0c0004
	v_perm_b32 v192, v218, v214, 0xc0c0004
	v_perm_b32 v187, v188, v187, 0xc0c0004
	v_perm_b32 v188, v231, v230, 0xc0c0004
	v_perm_b32 v193, v224, v223, 0xc0c0004
	v_perm_b32 v198, v210, v209, 0xc0c0004
	v_perm_b32 v199, v202, v201, 0xc0c0004
	v_perm_b32 v200, v219, v215, 0xc0c0004
	v_perm_b32 v189, v190, v189, 0xc0c0004
	v_perm_b32 v190, v233, v232, 0xc0c0004
	v_perm_b32 v201, v226, v225, 0xc0c0004
	v_perm_b32 v206, v212, v211, 0xc0c0004
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_perm_b32 v204, v220, v216, 0xc0c0004
	v_perm_b32 v195, v196, v195, 0xc0c0004
	v_perm_b32 v194, v247, v246, 0xc0c0004
	v_perm_b32 v197, v239, v238, 0xc0c0004
	v_perm_b32 v202, v249, v248, 0xc0c0004
	v_perm_b32 v205, v241, v240, 0xc0c0004
	v_perm_b32 v196, v251, v250, 0xc0c0004
	v_perm_b32 v207, v243, v242, 0xc0c0004
	v_perm_b32 v208, v235, v234, 0xc0c0004
	v_perm_b32 v209, v227, v191, 0xc0c0004
	v_lshl_or_b32 v178, v178, 16, v177
	v_lshl_or_b32 v177, v180, 16, v179
	v_lshl_or_b32 v180, v182, 16, v181
	v_lshl_or_b32 v179, v184, 16, v183
	v_lshl_or_b32 v182, v186, 16, v185
	v_lshl_or_b32 v181, v187, 16, v192
	v_lshl_or_b32 v184, v193, 16, v188
	v_lshl_or_b32 v186, v199, 16, v198
	v_lshl_or_b32 v185, v189, 16, v200
	v_lshl_or_b32 v188, v201, 16, v190
	v_lshl_or_b32 v190, v203, 16, v206
	v_lshl_or_b32 v189, v195, 16, v204
	v_lshl_or_b32 v183, v197, 16, v194
	v_lshl_or_b32 v187, v205, 16, v202
	v_lshl_or_b32 v191, v207, 16, v196
	v_lshl_or_b32 v192, v209, 16, v208
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[169:170], v[177:178], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[171:172], v[177:178], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[169:170], v[181:182], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[171:172], v[181:182], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[169:170], v[185:186], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[171:172], v[185:186], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[189:190], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[171:172], v[189:190], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[179:180], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[179:180], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[183:184], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[183:184], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[191:192], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[191:192], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s22, s23
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s23, s52, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s25, s23, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s22, s25
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s30, s22, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s46, s42
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v169, s30, v147
	v_or_b32_e32 v170, s30, v148
	v_or_b32_e32 v171, s30, v149
	v_or_b32_e32 v172, s30, v150
	v_or_b32_e32 v173, s30, v65
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v174, s3, v169
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s24, s30, s55
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s3, v170
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s31, s24, s34
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v176, s3, v171
	v_subrev_nc_u32_e32 v177, s3, v172
	v_subrev_nc_u32_e32 v178, s3, v173
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s25, v174
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s31, s31, s39
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s22, s25, v175
	v_add_nc_u32_e32 v174, s31, v66
	v_cmp_gt_i32_e64 s23, s25, v176
	v_add_nc_u32_e32 v175, s31, v151
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s24, s25, v177
	v_add_nc_u32_e32 v176, s31, v152
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v174, 0x80000000, v174, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s22
	v_add_nc_u32_e32 v177, s31, v68
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s23
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s25, s25, v178
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s24
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s30, s30, s38
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v177, 0x80000000, v177, s3
	s_clause 0x3
	buffer_load_u8 v179, v174, s[40:43], 0 offen
	buffer_load_u8 v180, v175, s[40:43], 0 offen
	buffer_load_u8 v181, v176, s[40:43], 0 offen
	buffer_load_u8 v182, v177, s[40:43], 0 offen
	v_add_nc_u32_e32 v174, s30, v67
	v_add_nc_u32_e32 v175, s30, v153
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s0, s25
	v_add_nc_u32_e32 v176, s30, v154
	v_add_nc_u32_e32 v177, s30, v69
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v174, 0x80000000, v174, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s1, s25
	v_add_nc_u32_e32 v178, s30, v155
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s6, s25
	v_add_nc_u32_e32 v183, s30, v70
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s7, s25
	v_add_nc_u32_e32 v184, s30, v71
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v177, 0x80000000, v177, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s8, s25
	v_add_nc_u32_e32 v185, s30, v72
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v178, 0x80000000, v178, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s9, s25
	v_add_nc_u32_e32 v186, s30, v156
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v183, 0x80000000, v183, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s10, s25
	v_add_nc_u32_e32 v187, s30, v73
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v184, 0x80000000, v184, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s25
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s47, s43
	v_cndmask_b32_e64 v185, 0x80000000, v185, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s12, s25
	v_add_nc_u32_e32 v188, s30, v74
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v194, v174, s[44:47], 0 offen
	buffer_load_u8 v195, v175, s[44:47], 0 offen
	buffer_load_u8 v196, v176, s[44:47], 0 offen
	buffer_load_u8 v197, v177, s[44:47], 0 offen
	buffer_load_u8 v198, v178, s[44:47], 0 offen
	buffer_load_u8 v183, v183, s[44:47], 0 offen
	buffer_load_u8 v184, v184, s[44:47], 0 offen
	buffer_load_u8 v185, v185, s[44:47], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v186, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s13, s25
	v_add_nc_u32_e32 v189, s30, v75
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v175, 0x80000000, v187, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s14, s25
	v_add_nc_u32_e32 v190, s30, v76
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v176, 0x80000000, v188, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s15, s25
	v_add_nc_u32_e32 v191, s30, v77
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v177, 0x80000000, v189, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s16, s25
	v_add_nc_u32_e32 v192, s30, v78
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v178, 0x80000000, v190, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s17, s25
	v_add_nc_u32_e32 v193, s30, v79
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v186, 0x80000000, v191, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s25
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s22, s58, v170
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v187, 0x80000000, v192, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s19, s25
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s23, s58, v171
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v188, 0x80000000, v193, s3
	s_clause 0x7
	buffer_load_u8 v189, v174, s[44:47], 0 offen
	buffer_load_u8 v190, v175, s[44:47], 0 offen
	buffer_load_u8 v191, v176, s[44:47], 0 offen
	buffer_load_u8 v192, v177, s[44:47], 0 offen
	buffer_load_u8 v193, v178, s[44:47], 0 offen
	buffer_load_u8 v186, v186, s[44:47], 0 offen
	buffer_load_u8 v187, v187, s[44:47], 0 offen
	buffer_load_u8 v188, v188, s[44:47], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s58, v169
	v_cmp_eq_u32_e64 s24, s58, v172
	v_cmp_eq_u32_e64 s25, s58, v173
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s22, s22, s57
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v199, 0, v0
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s57
	s_and_b32 s23, s23, s57
	s_and_b32 s24, s24, s57
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v200, 0, v157
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s25, s25, s57
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v201, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v202, 0, v161
	v_add_nc_u32_e32 v203, 0, v158
	v_add_nc_u32_e32 v204, 0, v162
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(19)
	v_and_b16 v169.l, v179.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v169.h, v180.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v170.l, v181.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v170.h, v182.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v169.l, v179.l, v169.l, s3
	v_cndmask_b16 v169.h, v180.l, v169.h, s22
	v_cndmask_b16 v170.l, v181.l, v170.l, s23
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v170.h, v182.l, v170.h, s24
	ds_store_b8 v199, v169
	ds_store_b8_d16_hi v199, v169 offset:256
	ds_store_b8 v199, v170 offset:512
	ds_store_b8_d16_hi v200, v170
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v171.l, v194.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v171.h, v195.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v172.l, v196.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v172.h, v197.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v173.l, v198.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v173.h, v183.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v174.l, v184.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v174.h, v185.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v171.l, v194.l, v171.l, s25
	v_cndmask_b16 v171.h, v195.l, v171.h, s25
	v_cndmask_b16 v172.l, v196.l, v172.l, s25
	v_cndmask_b16 v172.h, v197.l, v172.h, s25
	v_cndmask_b16 v173.l, v198.l, v173.l, s25
	v_cndmask_b16 v173.h, v183.l, v173.h, s25
	v_cndmask_b16 v174.l, v184.l, v174.l, s25
	v_cndmask_b16 v174.h, v185.l, v174.h, s25
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v175.l, v189.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v175.h, v190.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v176.l, v191.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v176.h, v192.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v177.l, v193.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v177.h, v186.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v178.l, v187.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v178.h, v188.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v175.l, v189.l, v175.l, s25
	v_cndmask_b16 v175.h, v190.l, v175.h, s25
	v_cndmask_b16 v176.l, v191.l, v176.l, s25
	v_cndmask_b16 v176.h, v192.l, v176.h, s25
	v_cndmask_b16 v177.l, v193.l, v177.l, s25
	v_cndmask_b16 v177.h, v186.l, v177.h, s25
	v_cndmask_b16 v178.l, v187.l, v178.l, s25
	v_cndmask_b16 v178.h, v188.l, v178.h, s25
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	ds_load_u8 v179, v159 offset:192
	ds_load_u8 v180, v159 offset:128
	ds_load_u8 v181, v159 offset:208
	ds_load_u8 v182, v159 offset:144
	ds_load_u8 v183, v159 offset:224
	ds_load_u8 v184, v159 offset:160
	ds_load_u8 v185, v159 offset:240
	ds_load_u8 v186, v159 offset:176
	ds_load_u8 v187, v159 offset:448
	ds_load_u8 v188, v159 offset:384
	ds_load_u8 v189, v159 offset:464
	ds_load_u8 v190, v159 offset:400
	ds_load_u8 v191, v159 offset:480
	ds_load_u8 v192, v159 offset:416
	ds_load_u8 v193, v159 offset:496
	ds_load_u8 v194, v159 offset:432
	ds_load_u8 v195, v159 offset:320
	ds_load_u8 v196, v159 offset:256
	ds_load_u8 v197, v159 offset:336
	ds_load_u8 v198, v159 offset:272
	ds_load_u8 v199, v159 offset:352
	ds_load_u8 v200, v159 offset:288
	ds_load_u8 v205, v159 offset:368
	ds_load_u8 v206, v159 offset:304
	ds_load_u8 v207, v159 offset:64
	ds_load_u8 v208, v159 offset:80
	ds_load_u8 v209, v159 offset:96
	ds_load_u8 v210, v159 offset:112
	ds_load_u8 v211, v159
	ds_load_u8 v212, v159 offset:16
	ds_load_u8 v213, v159 offset:32
	ds_load_u8 v214, v159 offset:48
	ds_load_u8 v215, v159 offset:704
	ds_load_u8 v216, v159 offset:640
	ds_load_u8 v217, v159 offset:720
	ds_load_u8 v218, v159 offset:656
	ds_load_u8 v219, v159 offset:736
	ds_load_u8 v220, v159 offset:672
	ds_load_u8 v221, v159 offset:752
	ds_load_u8 v222, v159 offset:688
	ds_load_u8 v223, v159 offset:576
	ds_load_u8 v224, v159 offset:512
	ds_load_u8 v225, v159 offset:592
	ds_load_u8 v226, v159 offset:528
	ds_load_u8 v227, v159 offset:608
	ds_load_u8 v228, v159 offset:544
	ds_load_u8 v229, v159 offset:624
	ds_load_u8 v230, v159 offset:560
	ds_load_u8 v231, v159 offset:960
	ds_load_u8 v232, v159 offset:896
	ds_load_u8 v233, v159 offset:976
	ds_load_u8 v234, v159 offset:912
	ds_load_u8 v235, v159 offset:992
	ds_load_u8 v236, v159 offset:928
	ds_load_u8 v201, v201
	ds_load_u8 v237, v159 offset:944
	ds_load_u8 v238, v159 offset:832
	ds_load_u8 v239, v159 offset:768
	ds_load_u8 v240, v159 offset:848
	ds_load_u8 v241, v159 offset:784
	ds_load_u8 v242, v159 offset:864
	ds_load_u8 v243, v159 offset:800
	ds_load_u8 v244, v159 offset:880
	ds_load_u8 v245, v159 offset:816
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v202, v171
	ds_store_b8_d16_hi v202, v171 offset:256
	ds_store_b8 v202, v172 offset:512
	ds_store_b8_d16_hi v202, v172 offset:768
	ds_store_b8 v202, v173 offset:1024
	ds_store_b8_d16_hi v202, v173 offset:1280
	ds_store_b8 v202, v174 offset:1536
	ds_store_b8_d16_hi v202, v174 offset:1792
	ds_store_b8 v202, v175 offset:2048
	ds_store_b8_d16_hi v202, v175 offset:2304
	ds_store_b8 v202, v176 offset:2560
	ds_store_b8_d16_hi v202, v176 offset:2816
	ds_store_b8 v202, v177 offset:3072
	ds_store_b8_d16_hi v202, v177 offset:3328
	ds_store_b8 v202, v178 offset:3584
	ds_store_b8_d16_hi v202, v178 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[169:172], v203 offset1:4
	ds_load_2addr_stride64_b64 v[173:176], v204 offset1:4
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v177, v196, v195, 0xc0c0004
	v_perm_b32 v178, v188, v187, 0xc0c0004
	v_perm_b32 v187, v211, v207, 0xc0c0004
	v_perm_b32 v179, v180, v179, 0xc0c0004
	v_perm_b32 v197, v198, v197, 0xc0c0004
	v_perm_b32 v189, v190, v189, 0xc0c0004
	v_perm_b32 v190, v212, v208, 0xc0c0004
	v_perm_b32 v181, v182, v181, 0xc0c0004
	v_perm_b32 v199, v200, v199, 0xc0c0004
	v_perm_b32 v191, v192, v191, 0xc0c0004
	v_perm_b32 v192, v213, v209, 0xc0c0004
	v_perm_b32 v200, v184, v183, 0xc0c0004
	v_perm_b32 v205, v206, v205, 0xc0c0004
	v_perm_b32 v193, v194, v193, 0xc0c0004
	v_perm_b32 v194, v214, v210, 0xc0c0004
	v_perm_b32 v206, v186, v185, 0xc0c0004
	v_perm_b32 v180, v239, v238, 0xc0c0004
	v_perm_b32 v188, v232, v231, 0xc0c0004
	v_perm_b32 v195, v224, v223, 0xc0c0004
	v_perm_b32 v196, v216, v215, 0xc0c0004
	v_perm_b32 v198, v241, v240, 0xc0c0004
	v_perm_b32 v202, v234, v233, 0xc0c0004
	v_perm_b32 v203, v226, v225, 0xc0c0004
	v_perm_b32 v204, v218, v217, 0xc0c0004
	v_perm_b32 v207, v243, v242, 0xc0c0004
	v_perm_b32 v208, v236, v235, 0xc0c0004
	v_perm_b32 v209, v228, v227, 0xc0c0004
	v_perm_b32 v211, v220, v219, 0xc0c0004
	v_perm_b32 v210, v245, v244, 0xc0c0004
	v_perm_b32 v201, v237, v201, 0xc0c0004
	v_perm_b32 v212, v230, v229, 0xc0c0004
	v_perm_b32 v213, v222, v221, 0xc0c0004
	v_lshl_or_b32 v178, v178, 16, v177
	v_lshl_or_b32 v177, v179, 16, v187
	v_lshl_or_b32 v182, v189, 16, v197
	v_lshl_or_b32 v181, v181, 16, v190
	v_lshl_or_b32 v186, v191, 16, v199
	v_lshl_or_b32 v185, v200, 16, v192
	v_lshl_or_b32 v190, v193, 16, v205
	v_lshl_or_b32 v189, v206, 16, v194
	v_lshl_or_b32 v180, v188, 16, v180
	v_lshl_or_b32 v179, v196, 16, v195
	v_lshl_or_b32 v184, v202, 16, v198
	v_lshl_or_b32 v183, v204, 16, v203
	v_lshl_or_b32 v188, v208, 16, v207
	v_lshl_or_b32 v187, v211, 16, v209
	v_lshl_or_b32 v192, v201, 16, v210
	v_lshl_or_b32 v191, v213, 16, v212
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[169:170], v[177:178], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[171:172], v[177:178], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[169:170], v[181:182], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[171:172], v[181:182], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[169:170], v[185:186], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[171:172], v[185:186], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[189:190], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[171:172], v[189:190], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[179:180], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[179:180], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[183:184], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[183:184], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[191:192], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[191:192], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge47
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 1, v127
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s26, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_and_or_b32 v3, v130, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v11, s33, v7
	v_or_b32_e32 v12, s33, v8
	v_or_b32_e32 v2, s33, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v4
	v_or_b32_e32 v1, s33, v5
	v_or_b32_e32 v13, s33, v9
	v_or_b32_e32 v14, s33, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v11
	v_or_b32_e32 v1, s33, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v65
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v13
	v_or_b32_e32 v1, s33, v14
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
	v_cmp_gt_i32_e64 s16, s35, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v145, v22, s[36:39], 0 offen
	buffer_store_b32 v144, v23, s[36:39], 0 offen
	buffer_store_b32 v143, v21, s[36:39], 0 offen
	v_add_lshl_u32 v21, v0, v14, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v142, v2, s[36:39], 0 offen
	buffer_store_b32 v141, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v140, v22, s[36:39], 0 offen
	buffer_store_b32 v139, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v138, v2, s[36:39], 0 offen
	buffer_store_b32 v137, v21, s[36:39], 0 offen
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
	buffer_store_b32 v136, v22, s[36:39], 0 offen
	buffer_store_b32 v135, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
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
	buffer_store_b32 v134, v2, s[36:39], 0 offen
	buffer_store_b32 v133, v21, s[36:39], 0 offen
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
	buffer_store_b32 v132, v22, s[36:39], 0 offen
	buffer_store_b32 v131, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v129, v0, s[36:39], 0 offen
	buffer_store_b32 v128, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v126, v21, s[36:39], 0 offen
	buffer_store_b32 v125, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v124, v0, s[36:39], 0 offen
	buffer_store_b32 v123, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v122, v21, s[36:39], 0 offen
	buffer_store_b32 v121, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v120, v0, s[36:39], 0 offen
	buffer_store_b32 v119, v2, s[36:39], 0 offen
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
	buffer_store_b32 v118, v21, s[36:39], 0 offen
	buffer_store_b32 v117, v22, s[36:39], 0 offen
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
	buffer_store_b32 v116, v0, s[36:39], 0 offen
	buffer_store_b32 v115, v2, s[36:39], 0 offen
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
	s_and_b32 s3, s21, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v114, v21, s[36:39], 0 offen
	buffer_store_b32 v113, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v112, v0, s[36:39], 0 offen
	buffer_store_b32 v111, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v110, v19, s[36:39], 0 offen
	buffer_store_b32 v109, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v108, v0, s[36:39], 0 offen
	buffer_store_b32 v107, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v106, v19, s[36:39], 0 offen
	buffer_store_b32 v105, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v104, v0, s[36:39], 0 offen
	buffer_store_b32 v103, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v102, v19, s[36:39], 0 offen
	buffer_store_b32 v101, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v100, v0, s[36:39], 0 offen
	buffer_store_b32 v99, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v98, v19, s[36:39], 0 offen
	buffer_store_b32 v97, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v96, v0, s[36:39], 0 offen
	buffer_store_b32 v95, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v94, v3, s[36:39], 0 offen
	buffer_store_b32 v93, v17, s[36:39], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v15, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v92, v0, s[36:39], 0 offen
	buffer_store_b32 v91, v2, s[36:39], 0 offen
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
	buffer_store_b32 v90, v3, s[36:39], 0 offen
	buffer_store_b32 v89, v13, s[36:39], 0 offen
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
	buffer_store_b32 v88, v0, s[36:39], 0 offen
	buffer_store_b32 v87, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v86, v3, s[36:39], 0 offen
	buffer_store_b32 v85, v9, s[36:39], 0 offen
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
	buffer_store_b32 v82, v0, s[36:39], 0 offen
	buffer_store_b32 v81, v2, s[36:39], 0 offen
	buffer_store_b32 v84, v3, s[36:39], 0 offen
	buffer_store_b32 v83, v4, s[36:39], 0 offen
	buffer_store_b32 v80, v1, s[36:39], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 252
		.amdhsa_next_free_sgpr 60
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 252
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10496
; TotalNumSgprs: 62
; NumVgprs: 252
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 252
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     252
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
