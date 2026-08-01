	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[26:27], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v65, 15, v0
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
	s_ashr_i32 s49, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s48, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s48, s49
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
	s_abs_i32 s6, s48
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s34, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s34, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s7, s2, s4
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s58, s34, s26
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s9, s7
	s_xor_b32 s10, s7, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s50, s10, 31
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
	s_ashr_i32 s35, s34, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s51, s6, s50
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[34:35], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s10, s51, s50
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s10, s48
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s44, s10, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s6, s7, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s44, v65
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s56, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s26, v1
	v_cmp_gt_i32_e64 s4, s26, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s25, s26, v3
	v_cmp_gt_i32_e64 s24, s26, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s45, s56, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s45, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge93_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s33, s44, s58
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr33
.LBB0_3:                                ; %Flow279
	s_load_b64 s[28:29], s[0:1], 0x28
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v125, 0xf0, v0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_mov_b32_e32 v161, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s35, s6, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph92
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[30:31], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v4, 4, v125
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s33, s56, 31
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s52, s3, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s33, s56, s33
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s34, s27
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v1, 16, v4
	v_or_b32_e32 v2, 32, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v6, s35, v4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v3, 48, v4
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v5, s44, v4
	v_or_b32_e32 v7, s44, v1
	v_or_b32_e32 v8, s44, v2
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v1, s35, v1
	v_or_b32_e32 v10, 64, v6
	v_or_b32_e32 v11, 0x50, v6
	v_or_b32_e32 v12, 0x60, v6
	v_or_b32_e32 v13, 0x70, v6
	v_or_b32_e32 v14, 0x80, v6
	v_or_b32_e32 v15, 0x90, v6
	v_or_b32_e32 v16, 0xa0, v6
	v_or_b32_e32 v17, 0xb0, v6
	v_or_b32_e32 v18, 0xc0, v6
	v_or_b32_e32 v19, 0xd0, v6
	v_or_b32_e32 v20, 0xe0, v6
	v_or_b32_e32 v21, 0xf0, v6
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s26, v7
	v_cmp_gt_i32_e64 s1, s26, v8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s27, v6
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_bfe_i32 v7, v0, 3, 1
	v_dual_mov_b32 v155, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	v_cmp_gt_i32_e64 s8, s27, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s30, v4
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v9, s44, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s35, v2
	v_or_b32_e32 v3, s35, v3
	v_dual_mov_b32 v153, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v7, 0x88, v7
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v8, 0x700, v8
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s53, s33, 1
	s_add_i32 s33, s44, s58
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s27, v2
	v_cmp_gt_i32_e64 s10, s27, v3
	v_mad_u64_u32 v[2:3], null, s30, 48, v[1:2]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s26, v5
	v_lshl_add_u32 v5, s30, 4, v1
	v_lshl_add_u32 v3, s30, 5, v1
	v_or_b32_e32 v168, v7, v6
	v_or3_b32 v169, v6, v8, v7
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v6, s33, v65
	v_cmp_gt_i32_e64 s6, s26, v9
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s26, s45, 31
	s_mul_i32 s59, s33, s30
	s_add_i32 s45, s45, s26
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v66, v1, v65
	s_ashr_i32 s26, s45, 1
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v163, v5, v65
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v164, v3, v65
	s_and_b32 s45, s37, 0xffff
	s_add_i32 s55, s35, s3
	s_and_b32 s37, s39, 0xffff
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v173, s59, v1
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v174, s59, v5
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v175, s59, v3
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v1, 16, v6
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v3, 32, v6
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v5, 48, v6
	s_bitcmp1_b32 s56, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s49, s49, s34
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s54, s34, s31
	s_cselect_b32 s56, -1, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_sub_i32 s34, s50, s49
	v_mul_lo_u32 v177, v6, s31
	v_mul_lo_u32 v178, v1, s31
	v_mul_lo_u32 v179, v3, s31
	v_mul_lo_u32 v180, v5, s31
	s_sub_i32 s31, s34, s51
	s_lshl_b32 s2, s2, 8
	s_mul_i32 s48, s48, s31
	v_mov_b32_e32 v137, 0
	s_lshl_b32 s31, s48, 8
	v_mov_b32_e32 v136, 0
	s_add_i32 s31, s31, s3
	v_mov_b32_e32 v133, 0
	v_add3_u32 v5, s31, s2, v4
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v6, 0xf0, v5
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v7, 0xe0, v5
	v_mov_b32_e32 v127, 0
	s_lshl_b32 s2, s51, 6
	v_mad_u64_u32 v[67:68], null, s30, v6, v[65:66]
	v_add_nc_u32_e32 v6, 0xd0, v5
	v_mad_u64_u32 v[68:69], null, s30, v7, v[65:66]
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v7, 0xc0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[69:70], null, s30, v6, v[65:66]
	v_add_nc_u32_e32 v6, 0xb0, v5
	v_mad_u64_u32 v[70:71], null, s30, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xa0, v5
	v_mov_b32_e32 v123, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[71:72], null, s30, v6, v[65:66]
	v_add_nc_u32_e32 v6, 0x90, v5
	v_mad_u64_u32 v[72:73], null, s30, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x80, v5
	v_add3_u32 v4, s58, s2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[73:74], null, s30, v6, v[65:66]
	v_add_nc_u32_e32 v6, 0x70, v5
	v_mad_u64_u32 v[74:75], null, s30, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x60, v5
	s_lshl_b32 s2, s50, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[75:76], null, s30, v6, v[65:66]
	v_add_nc_u32_e32 v6, 0x50, v5
	v_mad_u64_u32 v[76:77], null, s30, v7, v[65:66]
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v7, 64, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[77:78], null, s30, v6, v[65:66]
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v6, 48, v5
	v_mad_u64_u32 v[78:79], null, s30, v7, v[65:66]
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v7, 16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[79:80], null, s30, v6, v[65:66]
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v6, 32, v5
	v_subrev_nc_u32_e32 v4, s2, v4
	v_mov_b32_e32 v117, 0
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v165, v2, v65
	v_mad_u64_u32 v[80:81], null, s30, v6, v[65:66]
	v_mad_u64_u32 v[81:82], null, s30, v7, v[65:66]
	v_add_nc_u32_e32 v6, 48, v4
	v_mad_u64_u32 v[82:83], null, s30, v5, v[65:66]
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v5, 32, v4
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v7, 16, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[83:84], null, s30, v6, v[65:66]
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v176, s59, v2
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	v_mad_u64_u32 v[84:85], null, s30, v5, v[65:66]
	v_mad_u64_u32 v[85:86], null, s30, v7, v[65:66]
	v_mad_u64_u32 v[86:87], null, s30, v4, v[65:66]
	v_mad_u64_u32 v[87:88], null, 0x50, s30, v[66:67]
	v_mad_u64_u32 v[88:89], null, 0x60, s30, v[66:67]
	v_bfe_i32 v9, v0, 7, 1
	v_dual_mov_b32 v142, 0 :: v_dual_lshlrev_b32 v1, 2, v125
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v2, 32, v2
	v_mad_u64_u32 v[89:90], null, 0x70, s30, v[66:67]
	v_mad_u64_u32 v[90:91], null, 0x90, s30, v[66:67]
	v_mad_u64_u32 v[91:92], null, 0xa0, s30, v[66:67]
	v_mad_u64_u32 v[92:93], null, 0xb0, s30, v[66:67]
	v_mad_u64_u32 v[93:94], null, 0xc0, s30, v[66:67]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v162, s35, v0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s27, v10
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v10, 0x7f, v0
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v9, 0x88, v9
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v3, 28, v3
	v_add3_u32 v1, 0, v1, v2
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v2, 1, v125
	v_mad_u64_u32 v[94:95], null, 0xd0, s30, v[66:67]
	v_mad_u64_u32 v[95:96], null, 0xe0, s30, v[66:67]
	v_mad_u64_u32 v[96:97], null, 0xf0, s30, v[66:67]
	v_cmp_gt_i32_e64 s12, s27, v11
	v_cmp_gt_i32_e64 s13, s27, v12
	v_cmp_gt_i32_e64 s14, s27, v13
	v_cmp_gt_i32_e64 s15, s27, v14
	v_cmp_gt_i32_e64 s16, s27, v15
	v_cmp_gt_i32_e64 s17, s27, v16
	v_cmp_gt_i32_e64 s18, s27, v17
	v_cmp_gt_i32_e64 s19, s27, v18
	v_cmp_gt_i32_e64 s20, s27, v19
	v_cmp_gt_i32_e64 s21, s27, v20
	v_cmp_gt_i32_e64 s22, s27, v21
	v_cmp_gt_i32_e64 s23, s27, v162
	v_lshl_add_u32 v166, s30, 6, v66
	v_lshl_add_u32 v167, s30, 7, v66
	v_xor_b32_e32 v170, v9, v10
	v_xor_b32_e32 v171, 8, v168
	v_xor_b32_e32 v172, 8, v169
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v181, v1, v3
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v182, 0, v2
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v98, 0
	s_add_i32 s57, s26, -1
	s_mov_b32 s44, s36
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mul_i32 s55, s55, s30
	s_mov_b32 s36, s38
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	s_mov_b32 s31, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s30, s57, 4
	s_mov_b32 s2, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v183, v177, s31, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s31, s54
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v184, v178, s31, 1
	v_add_lshl_u32 v185, v179, s31, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v186, v180, s31, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v187, v162, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v183, 0x80000000, v183, s5
	v_cndmask_b32_e64 v184, 0x80000000, v184, s4
	v_cndmask_b32_e64 v185, 0x80000000, v185, s25
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	v_cndmask_b32_e64 v186, 0x80000000, v186, s24
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v187, 0x80000000, v187, s23
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v183, v183, s[40:43], 0 offen
	buffer_load_u16 v184, v184, s[40:43], 0 offen
	buffer_load_u16 v185, v185, s[40:43], 0 offen
	buffer_load_u16 v186, v186, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v187, v187, s[48:51], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v189, v2
	v_cvt_f32_i32_e32 v190, v3
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
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
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
	v_cvt_f32_i32_e32 v188, v1
	v_cvt_f32_i32_e32 v191, v4
	v_cvt_f32_i32_e32 v192, v5
	v_cvt_f32_i32_e32 v193, v6
	v_cvt_f32_i32_e32 v194, v7
	v_cvt_f32_i32_e32 v195, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s3, s31, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v86, 16, v86
	s_lshl_b32 s2, s3, 4
	s_cmp_lg_u32 s31, s30
	s_mov_b32 s31, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v25, v25, v3 :: v_dual_lshlrev_b32 v2, 16, v184
	v_dual_mul_f32 v36, v36, v2 :: v_dual_lshlrev_b32 v1, 16, v183
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v183, 16, v186
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v43, v43, v2 :: v_dual_lshlrev_b32 v4, 16, v187
	v_dual_mul_f32 v58, v58, v1 :: v_dual_add_nc_u32 v67, 16, v67
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v68, 16, v68
	v_dual_mul_f32 v42, v42, v2 :: v_dual_add_nc_u32 v69, 16, v69
	v_dual_mul_f32 v59, v59, v1 :: v_dual_add_nc_u32 v70, 16, v70
	v_dual_mul_f32 v60, v60, v1 :: v_dual_add_nc_u32 v71, 16, v71
	v_dual_mul_f32 v61, v61, v1 :: v_dual_add_nc_u32 v72, 16, v72
	v_dual_mul_f32 v44, v44, v2 :: v_dual_add_nc_u32 v73, 16, v73
	v_dual_mul_f32 v63, v63, v1 :: v_dual_add_nc_u32 v74, 16, v74
	v_dual_mul_f32 v62, v62, v1 :: v_dual_add_nc_u32 v75, 16, v75
	v_dual_mul_f32 v49, v49, v1 :: v_dual_add_nc_u32 v76, 16, v76
	v_dual_mul_f32 v46, v46, v2 :: v_dual_add_nc_u32 v77, 16, v77
	v_dual_mul_f32 v51, v51, v1 :: v_dual_add_nc_u32 v78, 16, v78
	v_dual_mul_f32 v64, v64, v1 :: v_dual_add_nc_u32 v79, 16, v79
	v_dual_mul_f32 v53, v53, v1 :: v_dual_add_nc_u32 v80, 16, v80
	v_dual_mul_f32 v48, v48, v2 :: v_dual_add_nc_u32 v81, 16, v81
	v_dual_mul_f32 v55, v55, v1 :: v_dual_add_nc_u32 v82, 16, v82
	v_dual_mul_f32 v50, v50, v1 :: v_dual_add_nc_u32 v83, 16, v83
	v_dual_mul_f32 v41, v41, v2 :: v_dual_add_nc_u32 v84, 16, v84
	v_dual_mul_f32 v34, v34, v2 :: v_dual_add_nc_u32 v85, 16, v85
	v_mul_f32_e32 v52, v52, v1
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v47, v47, v2
	v_mul_f32_e32 v38, v38, v2
	v_dual_mul_f32 v33, v33, v2 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v35, v35, v2 :: v_dual_mul_f32 v28, v28, v3
	v_dual_mul_f32 v37, v37, v2 :: v_dual_mul_f32 v30, v30, v3
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v32, v32, v3
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v27, v27, v3
	v_mul_f32_e32 v29, v29, v3
	v_mul_f32_e32 v31, v31, v3
	v_mul_f32_e32 v17, v17, v3
	v_mul_f32_e32 v18, v18, v3
	v_mul_f32_e32 v19, v19, v3
	v_mul_f32_e32 v20, v20, v3
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v181, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v184, v9, v183
	v_mul_f32_e32 v185, v10, v183
	v_mul_f32_e32 v186, v11, v183
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[5:8], v182 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v187, v12, v183
	v_mul_f32_e32 v196, v13, v183
	v_mul_f32_e32 v197, v14, v183
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[9:12], v182 offset:512
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v198, v15, v183
	v_mul_f32_e32 v199, v16, v183
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[13:16], v182 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v21, v21, v3
	v_mul_f32_e32 v22, v22, v3
	v_mul_f32_e32 v23, v23, v3
	v_mul_f32_e32 v24, v24, v3
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[1:4], v182
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v188, v188, v183
	v_mul_f32_e32 v189, v189, v183
	v_mul_f32_e32 v190, v190, v183
	v_mul_f32_e32 v191, v191, v183
	v_mul_f32_e32 v192, v192, v183
	v_mul_f32_e32 v193, v193, v183
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v157, v61, v5 :: v_dual_mul_f32 v194, v194, v183
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v183, v195, v183 :: v_dual_fmac_f32 v156, v62, v6
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v155, v63, v7 :: v_dual_fmac_f32 v154, v64, v8
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v153, v49, v9 :: v_dual_fmac_f32 v152, v50, v10
	v_dual_fmac_f32 v151, v51, v11 :: v_dual_fmac_f32 v150, v52, v12
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v149, v53, v13 :: v_dual_fmac_f32 v148, v54, v14
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v161, v57, v1 :: v_dual_fmac_f32 v160, v58, v2
	v_dual_fmac_f32 v159, v59, v3 :: v_dual_fmac_f32 v132, v38, v14
	v_dual_fmac_f32 v158, v60, v4 :: v_dual_fmac_f32 v147, v55, v15
	v_fmac_f32_e32 v126, v28, v4
	v_dual_fmac_f32 v146, v56, v16 :: v_dual_fmac_f32 v145, v41, v1
	v_dual_fmac_f32 v144, v42, v2 :: v_dual_fmac_f32 v143, v43, v3
	v_fmac_f32_e32 v124, v29, v5
	v_dual_fmac_f32 v142, v44, v4 :: v_dual_fmac_f32 v141, v45, v5
	v_dual_fmac_f32 v140, v46, v6 :: v_dual_fmac_f32 v139, v47, v7
	v_fmac_f32_e32 v120, v17, v9
	v_dual_fmac_f32 v138, v48, v8 :: v_dual_fmac_f32 v137, v33, v9
	v_dual_fmac_f32 v136, v34, v10 :: v_dual_fmac_f32 v135, v35, v11
	v_fmac_f32_e32 v116, v21, v13
	v_dual_fmac_f32 v134, v36, v12 :: v_dual_fmac_f32 v133, v37, v13
	v_dual_fmac_f32 v130, v40, v16 :: v_dual_fmac_f32 v129, v25, v1
	v_fmac_f32_e32 v128, v26, v2
	v_fmac_f32_e32 v123, v30, v6
	v_dual_fmac_f32 v131, v39, v15 :: v_dual_fmac_f32 v112, v184, v1
	v_dual_fmac_f32 v122, v31, v7 :: v_dual_fmac_f32 v119, v18, v10
	v_fmac_f32_e32 v121, v32, v8
	v_dual_fmac_f32 v127, v27, v3 :: v_dual_fmac_f32 v108, v196, v5
	v_dual_fmac_f32 v118, v19, v11 :: v_dual_fmac_f32 v115, v22, v14
	v_dual_fmac_f32 v117, v20, v12 :: v_dual_fmac_f32 v114, v23, v15
	v_fmac_f32_e32 v113, v24, v16
	v_dual_fmac_f32 v111, v185, v2 :: v_dual_fmac_f32 v110, v186, v3
	v_dual_fmac_f32 v109, v187, v4 :: v_dual_fmac_f32 v106, v198, v7
	v_dual_fmac_f32 v107, v197, v6 :: v_dual_fmac_f32 v104, v188, v9
	v_dual_fmac_f32 v105, v199, v8 :: v_dual_fmac_f32 v102, v190, v11
	v_dual_fmac_f32 v103, v189, v10 :: v_dual_fmac_f32 v98, v194, v15
	v_dual_fmac_f32 v101, v191, v12 :: v_dual_fmac_f32 v100, v193, v14
	v_fmac_f32_e32 v99, v192, v13
	v_fmac_f32_e32 v97, v183, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s53, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s3, 0, 16
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
	s_and_b32 s34, s3, 16
	s_mov_b32 s3, s52
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s52, s34
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s3, s52
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
	v_add_nc_u32_e32 v183, s3, v86
	v_add_nc_u32_e32 v184, s3, v85
	v_add_nc_u32_e32 v185, s3, v84
	.loc	1 1471 38 is_stmt 0             ; ragged.py:1471:38
	v_add_nc_u32_e32 v186, s3, v83
	.loc	1 1472 46 is_stmt 1             ; ragged.py:1472:46
	v_add_nc_u32_e32 v187, s3, v82
	v_add_nc_u32_e32 v199, s3, v70
	v_add_nc_u32_e32 v200, s3, v69
	v_add_nc_u32_e32 v201, s3, v68
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_add_nc_u32_e32 v202, s3, v67
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v188, s3, v81
	v_add_nc_u32_e32 v189, s3, v80
	v_add_nc_u32_e32 v190, s3, v79
	v_add_nc_u32_e32 v191, s3, v78
	v_add_nc_u32_e32 v192, s3, v77
	v_add_nc_u32_e32 v193, s3, v76
	v_add_nc_u32_e32 v194, s3, v75
	v_add_nc_u32_e32 v195, s3, v74
	v_add_nc_u32_e32 v196, s3, v73
	v_add_nc_u32_e32 v197, s3, v72
	v_add_nc_u32_e32 v198, s3, v71
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_dual_cndmask_b32 v183, 0x80000000, v183 :: v_dual_add_nc_u32 v216, 0, v169
	v_cndmask_b32_e64 v184, 0x80000000, v184, s0
	v_cndmask_b32_e64 v185, 0x80000000, v185, s1
	v_cndmask_b32_e64 v186, 0x80000000, v186, s6
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s7
	v_cndmask_b32_e64 v199, 0x80000000, v199, s19
	v_cndmask_b32_e64 v200, 0x80000000, v200, s20
	v_cndmask_b32_e64 v201, 0x80000000, v201, s21
	v_cndmask_b32_e64 v202, 0x80000000, v202, s22
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	v_cndmask_b32_e64 v188, 0x80000000, v188, s8
	v_cndmask_b32_e64 v189, 0x80000000, v189, s9
	v_cndmask_b32_e64 v190, 0x80000000, v190, s10
	v_cndmask_b32_e64 v191, 0x80000000, v191, s11
	v_cndmask_b32_e64 v192, 0x80000000, v192, s12
	v_cndmask_b32_e64 v193, 0x80000000, v193, s13
	v_cndmask_b32_e64 v194, 0x80000000, v194, s14
	v_cndmask_b32_e64 v195, 0x80000000, v195, s15
	v_cndmask_b32_e64 v196, 0x80000000, v196, s16
	v_cndmask_b32_e64 v197, 0x80000000, v197, s17
	v_cndmask_b32_e64 v198, 0x80000000, v198, s18
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x3
	buffer_load_u8 v183, v183, s[44:47], 0 offen
	buffer_load_u8 v184, v184, s[44:47], 0 offen
	buffer_load_u8 v185, v185, s[44:47], 0 offen
	buffer_load_u8 v186, v186, s[44:47], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xf
	buffer_load_u8 v203, v187, s[36:39], 0 offen
	buffer_load_u8 v204, v188, s[36:39], 0 offen
	buffer_load_u8 v205, v189, s[36:39], 0 offen
	buffer_load_u8 v206, v190, s[36:39], 0 offen
	buffer_load_u8 v207, v191, s[36:39], 0 offen
	buffer_load_u8 v208, v192, s[36:39], 0 offen
	buffer_load_u8 v209, v193, s[36:39], 0 offen
	buffer_load_u8 v210, v194, s[36:39], 0 offen
	buffer_load_u8 v211, v195, s[36:39], 0 offen
	buffer_load_u8 v212, v196, s[36:39], 0 offen
	buffer_load_u8 v213, v197, s[36:39], 0 offen
	buffer_load_u8 v214, v198, s[36:39], 0 offen
	buffer_load_u8 v199, v199, s[36:39], 0 offen
	buffer_load_u8 v200, v200, s[36:39], 0 offen
	buffer_load_u8 v201, v201, s[36:39], 0 offen
	buffer_load_u8 v202, v202, s[36:39], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v215, 0, v170
	v_add_nc_u32_e32 v187, 0, v168
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v217, 0, v172
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v195, 0, v171
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 16
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(19)
	ds_store_b8 v215, v183
	s_waitcnt vmcnt(18)
	ds_store_b8 v215, v184 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v215, v185 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v215, v186 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[183:186], v187 offset1:32
	ds_load_2addr_b64 v[187:190], v187 offset0:64 offset1:96
	ds_load_2addr_b64 v[191:194], v195 offset1:32
	ds_load_2addr_b64 v[195:198], v195 offset0:64 offset1:96
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v215, v203
	s_waitcnt vmcnt(14)
	ds_store_b8 v215, v204 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v215, v205 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v215, v206 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v215, v207 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v215, v208 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v215, v209 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v215, v210 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v215, v211 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v215, v212 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v215, v213 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v215, v214 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v215, v199 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v215, v200 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v215, v201 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v215, v202 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[199:202], v216 offset1:4
	ds_load_2addr_stride64_b64 v[203:206], v217 offset1:4
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s34
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[199:200], v[183:184], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[201:202], v[183:184], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[199:200], v[185:186], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[201:202], v[185:186], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[199:200], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[201:202], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[199:200], v[189:190], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[201:202], v[189:190], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[203:204], v[191:192], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[205:206], v[191:192], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[203:204], v[193:194], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[205:206], v[193:194], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[203:204], v[195:196], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[205:206], v[195:196], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[203:204], v[197:198], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[205:206], v[197:198], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s34, s26, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s34, s34, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s34
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s3, s3, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s39, s47
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v183, s3, v65
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s38, s3, s55
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v218, 0, v170
	v_add_nc_u32_e32 v185, s38, v66
	v_add_nc_u32_e32 v189, s38, v163
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v184, s2, v183
	v_add_nc_u32_e32 v186, v183, v174
	v_add_nc_u32_e32 v187, v183, v175
	v_add_nc_u32_e32 v188, v183, v176
	v_add_nc_u32_e32 v190, s38, v88
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s34, v184
	v_add_nc_u32_e32 v184, v183, v173
	v_add_nc_u32_e32 v191, s38, v89
	v_add_nc_u32_e32 v192, s38, v167
	v_add_nc_u32_e32 v197, s38, v90
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s2
	v_add_nc_u32_e32 v198, s38, v91
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v184, 0x80000000, v184, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s2
	v_add_nc_u32_e32 v199, s38, v92
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s1, s2
	v_add_nc_u32_e32 v200, s38, v93
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s6, s2
	v_add_nc_u32_e32 v201, s38, v94
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s3
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s3, s7, s2
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x3
	buffer_load_u8 v193, v184, s[44:47], 0 offen
	buffer_load_u8 v194, v186, s[44:47], 0 offen
	buffer_load_u8 v195, v187, s[44:47], 0 offen
	buffer_load_u8 v196, v188, s[44:47], 0 offen
	v_add_nc_u32_e32 v184, s38, v164
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v185, 0x80000000, v185, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s8, s2
	v_add_nc_u32_e32 v186, s38, v165
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v189, 0x80000000, v189, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s9, s2
	v_add_nc_u32_e32 v187, s38, v166
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v184, 0x80000000, v184, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s10, s2
	v_add_nc_u32_e32 v188, s38, v87
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s2
	v_add_nc_u32_e32 v202, s38, v95
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s12, s2
	v_add_nc_u32_e32 v203, s38, v96
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s13, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s38, s46
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s14, s2
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v219, 0, v168
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s15, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v204, v185, s[36:39], 0 offen
	buffer_load_u8 v205, v189, s[36:39], 0 offen
	buffer_load_u8 v206, v184, s[36:39], 0 offen
	buffer_load_u8 v207, v186, s[36:39], 0 offen
	buffer_load_u8 v208, v187, s[36:39], 0 offen
	buffer_load_u8 v209, v188, s[36:39], 0 offen
	buffer_load_u8 v210, v190, s[36:39], 0 offen
	buffer_load_u8 v211, v191, s[36:39], 0 offen
	v_cndmask_b32_e64 v184, 0x80000000, v192, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s16, s2
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v221, 0, v169
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v185, 0x80000000, v197, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s17, s2
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v220, 0, v171
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v186, 0x80000000, v198, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s18, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v187, 0x80000000, v199, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s19, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v188, 0x80000000, v200, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s20, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v189, 0x80000000, v201, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s21, s2
	s_and_b32 s2, s22, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v202, s3
	v_cndmask_b32_e64 v191, 0x80000000, v203, s2
	s_clause 0x7
	buffer_load_u8 v197, v184, s[36:39], 0 offen
	buffer_load_u8 v198, v185, s[36:39], 0 offen
	buffer_load_u8 v212, v186, s[36:39], 0 offen
	buffer_load_u8 v213, v187, s[36:39], 0 offen
	buffer_load_u8 v214, v188, s[36:39], 0 offen
	buffer_load_u8 v215, v189, s[36:39], 0 offen
	buffer_load_u8 v216, v190, s[36:39], 0 offen
	buffer_load_u8 v217, v191, s[36:39], 0 offen
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s57, v183
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s56
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(19)
	v_and_b16 v183.l, v193.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v183.h, v194.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v184.l, v195.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v184.h, v196.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v183.l, v193.l, v183.l, s2
	v_cndmask_b16 v183.h, v194.l, v183.h, s2
	v_cndmask_b16 v184.l, v195.l, v184.l, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v184.h, v196.l, v184.h, s2
	ds_store_b8 v218, v183
	ds_store_b8_d16_hi v218, v183 offset:256
	ds_store_b8 v218, v184 offset:512
	ds_store_b8_d16_hi v218, v184 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v185.l, v204.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v185.h, v205.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v186.l, v206.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v186.h, v207.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v187.l, v208.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v187.h, v209.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v188.l, v210.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v188.h, v211.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v199.l, v204.l, v185.l, s2
	v_cndmask_b16 v199.h, v205.l, v185.h, s2
	v_cndmask_b16 v200.l, v206.l, v186.l, s2
	v_cndmask_b16 v200.h, v207.l, v186.h, s2
	v_cndmask_b16 v201.l, v208.l, v187.l, s2
	v_cndmask_b16 v201.h, v209.l, v187.h, s2
	v_cndmask_b16 v202.l, v210.l, v188.l, s2
	v_cndmask_b16 v202.h, v211.l, v188.h, s2
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v189.l, v197.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v189.h, v198.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v190.l, v212.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v190.h, v213.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v191.l, v214.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v191.h, v215.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v192.l, v216.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v192.h, v217.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v203.l, v197.l, v189.l, s2
	v_cndmask_b16 v203.h, v198.l, v189.h, s2
	v_cndmask_b16 v204.l, v212.l, v190.l, s2
	v_cndmask_b16 v204.h, v213.l, v190.h, s2
	v_cndmask_b16 v205.l, v214.l, v191.l, s2
	v_cndmask_b16 v205.h, v215.l, v191.h, s2
	v_cndmask_b16 v206.l, v216.l, v192.l, s2
	v_cndmask_b16 v206.h, v217.l, v192.h, s2
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_load_2addr_b64 v[183:186], v219 offset1:32
	ds_load_2addr_b64 v[187:190], v219 offset0:64 offset1:96
	ds_load_2addr_b64 v[191:194], v220 offset1:32
	ds_load_2addr_b64 v[195:198], v220 offset0:64 offset1:96
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v218, v199
	ds_store_b8_d16_hi v218, v199 offset:256
	ds_store_b8 v218, v200 offset:512
	ds_store_b8_d16_hi v218, v200 offset:768
	ds_store_b8 v218, v201 offset:1024
	ds_store_b8_d16_hi v218, v201 offset:1280
	ds_store_b8 v218, v202 offset:1536
	ds_store_b8_d16_hi v218, v202 offset:1792
	ds_store_b8 v218, v203 offset:2048
	ds_store_b8_d16_hi v218, v203 offset:2304
	ds_store_b8 v218, v204 offset:2560
	ds_store_b8_d16_hi v218, v204 offset:2816
	ds_store_b8 v218, v205 offset:3072
	ds_store_b8_d16_hi v218, v205 offset:3328
	ds_store_b8 v218, v206 offset:3584
	ds_store_b8_d16_hi v218, v206 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[199:202], v221 offset1:4
	v_add_nc_u32_e32 v203, 0, v172
	ds_load_2addr_stride64_b64 v[203:206], v203 offset1:4
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[199:200], v[183:184], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[201:202], v[183:184], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[199:200], v[185:186], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[201:202], v[185:186], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[199:200], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[201:202], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[199:200], v[189:190], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[201:202], v[189:190], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[203:204], v[191:192], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[205:206], v[191:192], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[203:204], v[193:194], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[205:206], v[193:194], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[203:204], v[195:196], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[205:206], v[195:196], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[203:204], v[197:198], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[205:206], v[197:198], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge93
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v13, 1, v125
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v22, v161, 16, 1
	v_bfe_u32 v23, v160, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s2, s33, s27
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v24, v159, 16, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x85, v13
	v_or_b32_e32 v14, 6, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v22, v161, v22, 0x7fff
	v_add3_u32 v23, v160, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v160, v160
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s35, v6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v25, v158, 16, 1
	v_add3_u32 v24, v159, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v159, v159
	v_bfe_u32 v26, v156, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s35, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v25, v158, v25, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_add3_u32 v26, v156, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v156, v156
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s27, v3
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v3, s27, v65
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v27, v154, 16, 1
	v_bfe_u32 v28, v152, 16, 1
	v_bfe_u32 v29, v150, 16, 1
	v_bfe_u32 v30, v148, 16, 1
	v_bfe_u32 v31, v146, 16, 1
	v_add3_u32 v27, v154, v27, 0x7fff
	v_add3_u32 v28, v152, v28, 0x7fff
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v3, s2, s35, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s2, v161, v161
	v_add3_u32 v29, v150, v29, 0x7fff
	v_add3_u32 v30, v148, v30, 0x7fff
	v_bfe_u32 v32, v144, 16, 1
	v_add3_u32 v31, v146, v31, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v157, 16, 1
	v_cmp_o_f32_e64 s2, v158, v158
	v_cmp_o_f32_e64 s3, v157, v157
	v_add3_u32 v32, v144, v32, 0x7fff
	v_bfe_u32 v33, v142, 16, 1
	v_add3_u32 v23, v157, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s2
	v_bfe_u32 v25, v155, 16, 1
	v_cmp_o_f32_e64 s2, v155, v155
	v_add3_u32 v33, v142, v33, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s19
	v_bfe_u32 v26, v153, 16, 1
	v_add3_u32 v25, v155, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v154, v154
	v_cmp_o_f32_e64 s19, v153, v153
	v_bfe_u32 v34, v140, 16, 1
	v_add3_u32 v26, v153, v26, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s2
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v151, 16, 1
	v_cmp_o_f32_e64 s2, v152, v152
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s19
	v_cmp_o_f32_e64 s3, v151, v151
	v_cmp_o_f32_e64 s19, v150, v150
	v_add3_u32 v27, v151, v27, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s2
	v_bfe_u32 v28, v149, 16, 1
	v_cmp_o_f32_e64 s2, v149, v149
	v_bfe_u32 v35, v138, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v147, 16, 1
	v_add3_u32 v28, v149, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v148, v148
	v_cmp_o_f32_e64 s19, v147, v147
	v_add3_u32 v34, v140, v34, 0x7fff
	v_add3_u32 v29, v147, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s2
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_bfe_u32 v30, v145, 16, 1
	v_cmp_o_f32_e64 s2, v146, v146
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s19
	v_cmp_o_f32_e64 s3, v145, v145
	v_cmp_o_f32_e64 s19, v144, v144
	v_add3_u32 v30, v145, v30, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s2
	v_bfe_u32 v31, v143, 16, 1
	v_cmp_o_f32_e64 s2, v143, v143
	v_add3_u32 v35, v138, v35, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s3
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s19
	v_bfe_u32 v32, v141, 16, 1
	v_add3_u32 v31, v143, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v142, v142
	v_cmp_o_f32_e64 s19, v141, v141
	v_bfe_u32 v36, v136, 16, 1
	v_add3_u32 v32, v141, v32, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s2
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s3
	v_bfe_u32 v33, v139, 16, 1
	v_cmp_o_f32_e64 s2, v140, v140
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cmp_o_f32_e64 s3, v139, v139
	v_cmp_o_f32_e64 s19, v138, v138
	v_add3_u32 v33, v139, v33, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s2
	v_bfe_u32 v34, v137, 16, 1
	v_cmp_o_f32_e64 s2, v137, v137
	v_add3_u32 v36, v136, v36, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s19
	v_bfe_u32 v35, v135, 16, 1
	v_add3_u32 v34, v137, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v136, v136
	v_bfe_u32 v37, v134, 16, 1
	v_cmp_o_f32_e64 s19, v135, v135
	v_add3_u32 v35, v135, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_bfe_u32 v36, v133, 16, 1
	v_bfe_u32 v38, v132, 16, 1
	v_add3_u32 v37, v134, v37, 0x7fff
	v_cmp_o_f32_e64 s2, v134, v134
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s19
	v_add3_u32 v36, v133, v36, 0x7fff
	v_cmp_o_f32_e64 s3, v133, v133
	v_add3_u32 v38, v132, v38, 0x7fff
	v_cmp_o_f32_e64 s19, v132, v132
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s2
	v_bfe_u32 v37, v131, 16, 1
	v_bfe_u32 v39, v130, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s3
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s19
	v_bfe_u32 v38, v129, 16, 1
	v_add3_u32 v37, v131, v37, 0x7fff
	v_cmp_o_f32_e64 s2, v131, v131
	v_add3_u32 v39, v130, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v130, v130
	v_bfe_u32 v40, v128, 16, 1
	v_add3_u32 v38, v129, v38, 0x7fff
	v_cmp_o_f32_e64 s19, v129, v129
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s2
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s3
	v_bfe_u32 v39, v127, 16, 1
	v_bfe_u32 v41, v126, 16, 1
	v_add3_u32 v40, v128, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v128, v128
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s19
	v_add3_u32 v39, v127, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v127, v127
	v_add3_u32 v41, v126, v41, 0x7fff
	v_cmp_o_f32_e64 s19, v126, v126
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s2
	v_bfe_u32 v40, v124, 16, 1
	v_bfe_u32 v42, v123, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s19
	v_bfe_u32 v41, v122, 16, 1
	v_add3_u32 v40, v124, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v124, v124
	v_add3_u32 v42, v123, v42, 0x7fff
	v_cmp_o_f32_e64 s3, v123, v123
	v_bfe_u32 v43, v121, 16, 1
	v_add3_u32 v41, v122, v41, 0x7fff
	v_cmp_o_f32_e64 s19, v122, v122
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s2
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s3
	v_bfe_u32 v42, v120, 16, 1
	v_bfe_u32 v44, v119, 16, 1
	v_add3_u32 v43, v121, v43, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s19
	v_add3_u32 v42, v120, v42, 0x7fff
	v_cmp_o_f32_e64 s3, v120, v120
	v_add3_u32 v44, v119, v44, 0x7fff
	v_cmp_o_f32_e64 s19, v119, v119
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s2
	v_bfe_u32 v43, v118, 16, 1
	v_bfe_u32 v45, v117, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s3
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s19
	v_bfe_u32 v44, v116, 16, 1
	v_add3_u32 v43, v118, v43, 0x7fff
	v_cmp_o_f32_e64 s2, v118, v118
	v_add3_u32 v45, v117, v45, 0x7fff
	v_cmp_o_f32_e64 s3, v117, v117
	v_bfe_u32 v46, v115, 16, 1
	v_add3_u32 v44, v116, v44, 0x7fff
	v_cmp_o_f32_e64 s19, v116, v116
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s2
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s3
	v_bfe_u32 v45, v114, 16, 1
	v_bfe_u32 v47, v113, 16, 1
	v_add3_u32 v46, v115, v46, 0x7fff
	v_cmp_o_f32_e64 s2, v115, v115
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s19
	v_add3_u32 v45, v114, v45, 0x7fff
	v_cmp_o_f32_e64 s3, v114, v114
	v_add3_u32 v47, v113, v47, 0x7fff
	v_cmp_o_f32_e64 s19, v113, v113
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s2
	v_bfe_u32 v46, v112, 16, 1
	v_bfe_u32 v48, v111, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s3
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s19
	v_bfe_u32 v47, v110, 16, 1
	v_add3_u32 v46, v112, v46, 0x7fff
	v_cmp_o_f32_e64 s2, v112, v112
	v_add3_u32 v48, v111, v48, 0x7fff
	v_cmp_o_f32_e64 s3, v111, v111
	v_bfe_u32 v49, v109, 16, 1
	v_add3_u32 v47, v110, v47, 0x7fff
	v_cmp_o_f32_e64 s19, v110, v110
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s2
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s3
	v_bfe_u32 v48, v108, 16, 1
	v_bfe_u32 v50, v107, 16, 1
	v_add3_u32 v49, v109, v49, 0x7fff
	v_cmp_o_f32_e64 s2, v109, v109
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s19
	v_add3_u32 v48, v108, v48, 0x7fff
	v_cmp_o_f32_e64 s3, v108, v108
	v_add3_u32 v50, v107, v50, 0x7fff
	v_cmp_o_f32_e64 s19, v107, v107
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s2
	v_bfe_u32 v49, v106, 16, 1
	v_bfe_u32 v51, v105, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s3
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s19
	v_bfe_u32 v50, v104, 16, 1
	v_add3_u32 v49, v106, v49, 0x7fff
	v_cmp_o_f32_e64 s2, v106, v106
	v_add3_u32 v51, v105, v51, 0x7fff
	v_cmp_o_f32_e64 s3, v105, v105
	v_add3_u32 v50, v104, v50, 0x7fff
	v_cmp_o_f32_e64 s19, v104, v104
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s2
	v_bfe_u32 v52, v103, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s3
	v_bfe_u32 v51, v102, 16, 1
	v_bfe_u32 v53, v101, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s19
	v_add3_u32 v52, v103, v52, 0x7fff
	v_cmp_o_f32_e64 s2, v103, v103
	v_add3_u32 v51, v102, v51, 0x7fff
	v_cmp_o_f32_e64 s3, v102, v102
	v_add3_u32 v53, v101, v53, 0x7fff
	v_cmp_o_f32_e64 s19, v101, v101
	v_bfe_u32 v54, v99, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s2
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s3
	v_bfe_u32 v52, v100, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s19
	v_add3_u32 v53, v99, v54, 0x7fff
	v_bfe_u32 v54, v98, 16, 1
	v_bfe_u32 v55, v97, 16, 1
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v52, v100, v52, 0x7fff
	v_cmp_o_f32_e64 s3, v100, v100
	v_add3_u32 v54, v98, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v98, v98
	v_add3_u32 v55, v97, v55, 0x7fff
	v_cmp_o_f32_e64 s20, v97, v97
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x87, v13
	v_or_b32_e32 v5, 0x86, v13
	v_or_b32_e32 v7, 0x84, v13
	v_or_b32_e32 v8, 0x83, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s2
	v_cmp_eq_u32_e64 s2, 0, v0
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s19
	v_cndmask_b16 v0.h, 0x7fff, v55.h, s20
	v_mov_b32_e32 v54, 0x5410
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x82, v13
	v_or_b32_e32 v10, 0x81, v13
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v1, s35, v4
	v_or_b32_e32 v2, s35, v5
	v_or_b32_e32 v11, s35, v7
	v_or_b32_e32 v12, s35, v8
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_cndmask_b32_e64 v53, v23, v22, s2
	v_cndmask_b32_e64 v22, v22, v23, s2
	v_cndmask_b32_e64 v23, v25, v24, s2
	v_cndmask_b32_e64 v24, v24, v25, s2
	v_cndmask_b32_e64 v25, v28, v26, s2
	v_cndmask_b32_e64 v26, v26, v28, s2
	v_cndmask_b32_e64 v28, v29, v27, s2
	v_cndmask_b32_e64 v27, v27, v29, s2
	v_cndmask_b32_e64 v29, v32, v30, s2
	v_cndmask_b32_e64 v30, v30, v32, s2
	v_cndmask_b32_e64 v32, v33, v31, s2
	v_cndmask_b32_e64 v31, v31, v33, s2
	v_cndmask_b32_e64 v33, v36, v34, s2
	v_cndmask_b32_e64 v34, v34, v36, s2
	v_cndmask_b32_e64 v36, v37, v35, s2
	v_cndmask_b32_e64 v35, v35, v37, s2
	v_cndmask_b32_e64 v37, v40, v38, s2
	v_cndmask_b32_e64 v38, v38, v40, s2
	v_cndmask_b32_e64 v40, v41, v39, s2
	v_cndmask_b32_e64 v39, v39, v41, s2
	v_cndmask_b32_e64 v41, v44, v42, s2
	v_cndmask_b32_e64 v42, v42, v44, s2
	v_cndmask_b32_e64 v44, v45, v43, s2
	v_cndmask_b32_e64 v43, v43, v45, s2
	v_cndmask_b32_e64 v45, v48, v46, s2
	v_cndmask_b32_e64 v46, v46, v48, s2
	v_cndmask_b32_e64 v48, v49, v47, s2
	v_cndmask_b32_e64 v47, v47, v49, s2
	v_cndmask_b32_e64 v49, v52, v50, s2
	v_cndmask_b32_e64 v50, v50, v52, s2
	v_cndmask_b32_e64 v52, v0, v51, s2
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v51, v0, s2
	v_cndmask_b32_e64 v51, 0x1054, v54, s2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	v_cmp_gt_i32_e64 s0, s27, v2
	v_cmp_gt_i32_e64 s6, s27, v11
	v_cmp_gt_i32_e64 s7, s27, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s35, v9
	v_or_b32_e32 v2, s35, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v13
	v_or_b32_e32 v12, 7, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_cndmask_b32_e64 v54, 0x3276, v55, s2
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s27, v1
	v_cmp_gt_i32_e64 s9, s27, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s35, v11
	v_or_b32_e32 v2, s35, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v15, 5, v13
	v_or_b32_e32 v16, 4, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_lshl_or_b32 v54, v54, 8, v54
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v19, 1, v13
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s27, v1
	v_cmp_gt_i32_e64 s11, s27, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s35, v15
	v_or_b32_e32 v2, s35, v16
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v17, 3, v13
	v_or_b32_e32 v18, 2, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s35, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_and_b32_e32 v54, 0x760076, v54
	v_lshl_or_b32 v51, v51, 4, v51
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v20, s35, v19
	s_mov_b32 s3, 0x76543210
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s27, v1
	v_cmp_gt_i32_e64 s14, s27, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s35, v17
	v_or_b32_e32 v2, s35, v18
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s27, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v22, v22, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v51, 0x5040504, v51
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s27, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v84, v3, v13, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s27, v1
	v_cmp_gt_i32_e64 s16, s27, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s27, 48, v[3:4]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v85, v3, v19, 1
	v_mov_b16_e32 v2.h, 0
	v_permlanex16_b32 v24, v24, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v47, v47, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s2, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v86, v3, v18, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v22, v22, v53, v54
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v53, v24, v23, v51
	v_perm_b32 v23, v24, v23, v54
	v_perm_b32 v24, v26, v25, v51
	v_perm_b32 v25, v26, v25, v54
	v_perm_b32 v26, v27, v28, v51
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v51
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v51
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v34, v33, v51
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v35, v36, v51
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v38, v37, v51
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v39, v40, v51
	v_perm_b32 v39, v39, v40, v54
	v_perm_b32 v40, v42, v41, v51
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v43, v44, v51
	v_perm_b32 v43, v43, v44, v54
	v_perm_b32 v44, v46, v45, v51
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v47, v48, v51
	v_perm_b32 v47, v47, v48, v54
	v_perm_b32 v48, v50, v49, v51
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v0, v52, v51
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v2.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	buffer_store_b16 v55, v84, s[28:31], 0 offen
	v_add_lshl_u32 v55, v3, v17, 1
	v_mov_b16_e32 v2.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[28:31], 0 offen
	buffer_store_b16 v22, v86, s[28:31], 0 offen
	v_add_lshl_u32 v22, v3, v16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v84, v3, v14, 1
	v_cndmask_b32_e64 v51, 0x80000000, v55, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v55, v3, v15, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v52.h, v2.h
	v_mov_b16_e32 v54.h, v2.h
	v_mov_b16_e32 v56.h, v2.h
	v_mov_b16_e32 v57.h, v2.h
	v_mov_b16_e32 v58.h, v2.h
	v_mov_b16_e32 v59.h, v2.h
	v_mov_b16_e32 v60.h, v2.h
	v_mov_b16_e32 v61.h, v2.h
	v_mov_b16_e32 v62.h, v2.h
	v_mov_b16_e32 v63.h, v2.h
	v_mov_b16_e32 v64.h, v2.h
	v_mov_b16_e32 v65.h, v2.h
	v_mov_b16_e32 v66.h, v2.h
	v_mov_b16_e32 v67.h, v2.h
	v_mov_b16_e32 v68.h, v2.h
	v_mov_b16_e32 v69.h, v2.h
	v_mov_b16_e32 v70.h, v2.h
	v_mov_b16_e32 v71.h, v2.h
	v_mov_b16_e32 v72.h, v2.h
	v_mov_b16_e32 v73.h, v2.h
	v_mov_b16_e32 v74.h, v2.h
	v_mov_b16_e32 v75.h, v2.h
	v_mov_b16_e32 v76.h, v2.h
	v_mov_b16_e32 v77.h, v2.h
	v_mov_b16_e32 v78.h, v2.h
	v_mov_b16_e32 v79.h, v2.h
	v_mov_b16_e32 v80.h, v2.h
	v_mov_b16_e32 v81.h, v2.h
	v_mov_b16_e32 v82.h, v2.h
	v_mov_b16_e32 v83.h, v2.h
	s_clause 0x1
	buffer_store_b16 v2, v51, s[28:31], 0 offen
	buffer_store_b16 v53, v22, s[28:31], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v54.l, v53.h
	v_add_lshl_u32 v22, v3, v11, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v52.l, v23.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v54, v55, s[28:31], 0 offen
	buffer_store_b16 v23, v84, s[28:31], 0 offen
	v_add_lshl_u32 v23, v3, v10, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_add_lshl_u32 v51, v3, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v52, v2, s[28:31], 0 offen
	buffer_store_b16 v24, v22, s[28:31], 0 offen
	v_add_lshl_u32 v2, v3, v8, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v57.l, v24.h
	v_add_lshl_u32 v22, v3, v7, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v56.l, v25.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v57, v23, s[28:31], 0 offen
	buffer_store_b16 v25, v51, s[28:31], 0 offen
	v_add_lshl_u32 v23, v3, v6, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_lshl_add_u32 v21, s27, 4, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v24, v3, v5, 1
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s2, s5, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v56, v2, s[28:31], 0 offen
	buffer_store_b16 v26, v22, s[28:31], 0 offen
	v_add_lshl_u32 v2, v3, v4, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v20, s27, 5, v3
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v3, v21, v13, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s2, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.l, v27.h
	v_add_lshl_u32 v22, v21, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_store_b16 v59, v23, s[28:31], 0 offen
	buffer_store_b16 v27, v24, s[28:31], 0 offen
	v_add_lshl_u32 v23, v21, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v58, v2, s[28:31], 0 offen
	buffer_store_b16 v28, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v17, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v61.l, v28.h
	v_add_lshl_u32 v3, v21, v16, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v60.l, v29.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v61, v22, s[28:31], 0 offen
	buffer_store_b16 v29, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v21, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v23, v21, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v60, v2, s[28:31], 0 offen
	buffer_store_b16 v30, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v12, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v63.l, v30.h
	v_add_lshl_u32 v3, v21, v11, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v62.l, v31.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v63, v22, s[28:31], 0 offen
	buffer_store_b16 v31, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v21, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v23, v21, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v62, v2, s[28:31], 0 offen
	buffer_store_b16 v32, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v8, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v65.l, v32.h
	v_add_lshl_u32 v3, v21, v7, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v64.l, v33.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v65, v22, s[28:31], 0 offen
	buffer_store_b16 v33, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v21, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v23, v21, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v64, v2, s[28:31], 0 offen
	buffer_store_b16 v34, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v4, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v13, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v66.l, v35.h
	v_add_lshl_u32 v21, v20, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_store_b16 v67, v22, s[28:31], 0 offen
	buffer_store_b16 v35, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v20, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v66, v2, s[28:31], 0 offen
	buffer_store_b16 v36, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.l, v36.h
	v_add_lshl_u32 v3, v20, v16, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v68.l, v37.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v69, v21, s[28:31], 0 offen
	buffer_store_b16 v37, v22, s[28:31], 0 offen
	v_add_lshl_u32 v21, v20, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v68, v2, s[28:31], 0 offen
	buffer_store_b16 v38, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v71.l, v38.h
	v_add_lshl_u32 v3, v20, v11, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v70.l, v39.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v71, v21, s[28:31], 0 offen
	buffer_store_b16 v39, v22, s[28:31], 0 offen
	v_add_lshl_u32 v21, v20, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v70, v2, s[28:31], 0 offen
	buffer_store_b16 v40, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v8, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v73.l, v40.h
	v_add_lshl_u32 v3, v20, v7, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v73, v21, s[28:31], 0 offen
	buffer_store_b16 v41, v22, s[28:31], 0 offen
	v_add_lshl_u32 v21, v20, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v72, v2, s[28:31], 0 offen
	buffer_store_b16 v42, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v4, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v13, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s25, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v74.l, v43.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v75.l, v42.h
	v_add_lshl_u32 v13, v1, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v18, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v75, v21, s[28:31], 0 offen
	buffer_store_b16 v43, v22, s[28:31], 0 offen
	buffer_store_b16 v74, v2, s[28:31], 0 offen
	buffer_store_b16 v44, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v1, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v77.l, v44.h
	v_add_lshl_u32 v3, v1, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v76.l, v45.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v77, v13, s[28:31], 0 offen
	buffer_store_b16 v45, v18, s[28:31], 0 offen
	v_add_lshl_u32 v13, v1, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v14, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v76, v2, s[28:31], 0 offen
	buffer_store_b16 v46, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v1, v12, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v11, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v78.l, v47.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v79.l, v46.h
	v_add_lshl_u32 v10, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v9, v1, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v79, v13, s[28:31], 0 offen
	buffer_store_b16 v47, v14, s[28:31], 0 offen
	buffer_store_b16 v78, v2, s[28:31], 0 offen
	buffer_store_b16 v48, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v1, v8, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v6, v1, v6, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s24, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 1
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s24, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s24, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v4, 0x80000000, v6, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s24, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v81, v10, s[28:31], 0 offen
	buffer_store_b16 v49, v9, s[28:31], 0 offen
	buffer_store_b16 v80, v2, s[28:31], 0 offen
	buffer_store_b16 v50, v3, s[28:31], 0 offen
	buffer_store_b16 v83, v4, s[28:31], 0 offen
	buffer_store_b16 v0, v5, s[28:31], 0 offen
	buffer_store_b16 v82, v1, s[28:31], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 222
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 222
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12516
; TotalNumSgprs: 62
; NumVgprs: 222
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 222
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     222
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
