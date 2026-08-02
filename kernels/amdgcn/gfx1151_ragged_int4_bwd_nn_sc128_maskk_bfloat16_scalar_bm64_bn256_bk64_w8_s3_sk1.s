	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[30:31], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v136, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s30, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s31, 0xff
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
	s_ashr_i32 s8, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s8, s4
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
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s7, s7, 31
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
	s_abs_i32 s9, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s10
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s10, s5
	s_abs_i32 s7, s2
	s_add_i32 s10, s10, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s10, s7, s10
	s_xor_b32 s11, s2, s8
	s_mul_i32 s12, s10, s9
	s_ashr_i32 s11, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s10, 1
	s_sub_i32 s13, s7, s9
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s7, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s9, s7, s11
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[12:13], s[6:7], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s2, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s2, s9, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s12
	s_addc_u32 s5, s5, s13
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s2, v136
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s7, s[4:5], 0x0
	s_mov_b32 s9, 0
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s12, s6, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s83, s30, v1
	v_cmp_gt_i32_e64 s100, s30, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s96, s30, v3
	v_cmp_gt_i32_e64 s92, s30, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s11, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s11, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge71_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s4, s2, s12
	s_lshl_b32 s5, s31, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr4
                                        ; implicit-def: $sgpr5
.LBB0_3:                                ; %Flow333
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v164, 0xf0, v0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
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
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v188, 0
	v_mov_b32_e32 v187, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s15, s8, 8
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph70
	s_load_b64 s[4:5], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_dual_mov_b32 v187, 0 :: v_dual_lshlrev_b32 v2, 3, v0
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s8, s3, 5
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v254, s24, 0
	s_add_i32 s3, s2, s12
	v_dual_mov_b32 v185, 0 :: v_dual_and_b32 v94, 24, v2
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v4, s3, v1
	v_writelane_b32 v254, s25, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v93, s15, v0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s2, v1
	v_dual_mov_b32 v177, 0 :: v_dual_lshlrev_b32 v10, 4, v0
	v_writelane_b32 v254, s26, 2
	v_dual_mov_b32 v182, 0 :: v_dual_lshlrev_b32 v7, 5, v136
	v_dual_mov_b32 v180, 0 :: v_dual_lshlrev_b32 v9, 5, v0
	v_mad_u64_u32 v[95:96], null, v4, s4, v[94:95]
	v_writelane_b32 v254, s27, 3
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s0, s11, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s7, 31
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s11, s11, s0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s0, s7, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[96:97], null, s4, v1, v[94:95]
	v_mad_u64_u32 v[97:98], null, s31, 3, v[93:94]
	v_mad_u64_u32 v[98:99], null, s31, 5, v[93:94]
	v_mad_u64_u32 v[99:100], null, s31, 6, v[93:94]
	v_writelane_b32 v254, s15, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s101, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s30, v3
	v_lshrrev_b32_e32 v3, 1, v0
	v_dual_mov_b32 v181, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	v_mad_u64_u32 v[100:101], null, s31, 7, v[93:94]
	v_mad_u64_u32 v[101:102], null, s31, 9, v[93:94]
	v_mad_u64_u32 v[102:103], null, s31, 10, v[93:94]
	s_lshl_b32 s1, s31, 4
	v_mad_u64_u32 v[103:104], null, s31, 11, v[93:94]
	v_mad_u64_u32 v[104:105], null, s31, 12, v[93:94]
	v_dual_mov_b32 v186, 0 :: v_dual_and_b32 v5, 24, v3
	v_dual_mov_b32 v179, 0 :: v_dual_and_b32 v6, 24, v4
	v_writelane_b32 v254, s1, 5
	v_xor_b32_e32 v11, v4, v1
	v_mad_u64_u32 v[105:106], null, s31, 13, v[93:94]
	v_mad_u64_u32 v[106:107], null, s31, 14, v[93:94]
	v_mad_u64_u32 v[107:108], null, s31, 15, v[93:94]
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v193, s1, v93
	s_mul_i32 s1, s3, s4
	v_mad_u64_u32 v[108:109], null, s31, 17, v[93:94]
	v_mad_u64_u32 v[109:110], null, s31, 18, v[93:94]
	v_xor_b32_e32 v8, v6, v5
	v_xor_b32_e32 v195, v2, v5
	v_dual_mov_b32 v175, 0 :: v_dual_and_b32 v2, 0xe00, v10
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v5, 24, v11
	v_writelane_b32 v254, s1, 6
	v_dual_mov_b32 v174, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_mad_u64_u32 v[110:111], null, s31, 19, v[93:94]
	v_mad_u64_u32 v[111:112], null, s31, 20, v[93:94]
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v15, s3, v136
	v_mad_u64_u32 v[112:113], null, s31, 21, v[93:94]
	v_mad_u64_u32 v[113:114], null, s31, 22, v[93:94]
	v_mad_u64_u32 v[114:115], null, s31, 23, v[93:94]
	v_or_b32_e32 v196, v8, v9
	v_or3_b32 v200, v2, v5, v7
	v_writelane_b32 v254, s3, 7
	v_add3_u32 v201, 0, v136, v3
	v_dual_mov_b32 v168, 0 :: v_dual_lshlrev_b32 v3, 2, v164
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v9, 32, v9
	v_mad_u64_u32 v[115:116], null, s31, 24, v[93:94]
	v_mad_u64_u32 v[116:117], null, s31, 25, v[93:94]
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v19, 16, v15
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v20, 32, v15
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v21, 48, v15
	v_mad_u64_u32 v[117:118], null, s31, 26, v[93:94]
	v_mad_u64_u32 v[118:119], null, s31, 27, v[93:94]
	v_mad_u64_u32 v[119:120], null, s31, 28, v[93:94]
	v_or_b32_e32 v194, v7, v6
	v_xor_b32_e32 v6, 8, v196
	v_xor_b32_e32 v2, 16, v196
	v_xor_b32_e32 v5, 24, v196
	v_xor_b32_e32 v1, 8, v200
	v_xor_b32_e32 v7, 16, v200
	v_xor_b32_e32 v8, 24, v200
	v_or_b32_e32 v10, 0x300, v0
	v_or_b32_e32 v11, 0x700, v0
	v_or_b32_e32 v12, 0xb00, v0
	v_or_b32_e32 v13, 0xf00, v0
	v_or_b32_e32 v14, 0x1300, v0
	v_or_b32_e32 v16, 0x1700, v0
	v_or_b32_e32 v17, 0x1b00, v0
	v_or_b32_e32 v18, 0x1f00, v0
	v_dual_mov_b32 v171, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v3, 0, v3, v9
	v_dual_mov_b32 v162, 0 :: v_dual_lshlrev_b32 v9, 1, v164
	v_mad_u64_u32 v[120:121], null, s31, 29, v[93:94]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_writelane_b32 v254, s8, 8
	v_mad_u64_u32 v[121:122], null, s31, 30, v[93:94]
	v_mul_lo_u32 v202, v15, s5
	v_mul_lo_u32 v203, v19, s5
	v_mul_lo_u32 v204, v20, s5
	v_mul_lo_u32 v205, v21, s5
	v_mad_u64_u32 v[122:123], null, s31, 31, v[93:94]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s10, s11, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s21, 0xffff
	s_and_b32 s21, s23, 0xffff
	s_bitcmp1_b32 s7, 0
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v189, s31, v93
	v_lshl_add_u32 v190, s31, 1, v93
	v_lshl_add_u32 v191, s31, 2, v93
	v_lshl_add_u32 v192, s31, 3, v93
	v_xor_b32_e32 v197, 8, v194
	v_xor_b32_e32 v198, 16, v194
	v_xor_b32_e32 v199, 24, v194
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v206, 0, v6
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v207, 0, v2
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v208, 0, v5
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v209, 0, v1
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v210, 0, v7
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v211, 0, v8
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v212, 0, v0
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v213, 0, v10
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v214, 0, v11
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v215, 0, v12
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v216, 0, v13
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v217, 0, v14
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v218, 0, v16
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v219, 0, v17
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v220, 0, v18
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v221, v3, v4
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v222, 0, v9
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v123, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_writelane_b32 v254, s10, 9
	s_cselect_b32 s35, -1, 0
	s_add_i32 s44, s10, -1
	.loc	1 1421 13 is_stmt 0             ; ragged.py:1421:13
	s_mov_b32 s9, 0
	.loc	1 1470 43 is_stmt 1             ; ragged.py:1470:43
	s_mul_i32 s30, s6, s4
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s11, s6, s5
	s_mov_b32 s36, s20
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s20, s22
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s5, s27, 0xffff
	s_mov_b32 s4, s26
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s12, s44, 6
	s_mov_b32 s26, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s31, v93
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_writelane_b32 v254, s12, 10
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v65, v202, s9, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s1, s9, s11
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v66, v203, s9, 1
	v_add_lshl_u32 v67, v204, s9, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s1, s1, s31
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v68, v205, s9, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v69, v93, s1, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s83
	v_cndmask_b32_e64 v66, 0x80000000, v66, s100
	v_cndmask_b32_e64 v67, 0x80000000, v67, s96
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	v_cndmask_b32_e64 v68, 0x80000000, v68, s92
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	s_mov_b32 s6, s38
	s_mov_b32 s7, s39
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v42, v42
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
	s_add_i32 s1, s9, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s26, s1, 6
	s_cmp_lg_u32 s9, s12
	s_mov_b32 s9, s1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v66
	v_lshlrev_b32_e32 v1, 16, v65
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v69
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v3, 16, v67
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v65, 16, v68
	v_mul_f32_e32 v60, v60, v1
	v_dual_mul_f32 v57, v57, v1 :: v_dual_mul_f32 v44, v44, v2
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
	ds_store_b32 v221, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v222
	ds_load_b128 v[5:8], v222 offset:16
	ds_load_b128 v[9:12], v222 offset:512
	ds_load_b128 v[13:16], v222 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v75, v75, v65
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v65, v77, v65 :: v_dual_fmac_f32 v186, v59, v3
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v188, v57, v1 :: v_dual_fmac_f32 v187, v58, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v185, v60, v4 :: v_dual_fmac_f32 v184, v61, v5
	v_dual_fmac_f32 v183, v62, v6 :: v_dual_fmac_f32 v182, v63, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v181, v64, v8 :: v_dual_fmac_f32 v180, v49, v9
	v_dual_fmac_f32 v179, v50, v10 :: v_dual_fmac_f32 v178, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v177, v52, v12 :: v_dual_fmac_f32 v176, v53, v13
	v_dual_fmac_f32 v175, v54, v14 :: v_dual_fmac_f32 v174, v55, v15
	v_dual_fmac_f32 v173, v56, v16 :: v_dual_fmac_f32 v172, v41, v1
	v_dual_fmac_f32 v171, v42, v2 :: v_dual_fmac_f32 v170, v43, v3
	v_dual_fmac_f32 v169, v44, v4 :: v_dual_fmac_f32 v168, v45, v5
	v_dual_fmac_f32 v167, v46, v6 :: v_dual_fmac_f32 v166, v47, v7
	v_dual_fmac_f32 v165, v48, v8 :: v_dual_fmac_f32 v158, v38, v14
	v_dual_fmac_f32 v163, v33, v9 :: v_dual_fmac_f32 v160, v36, v12
	v_dual_fmac_f32 v162, v34, v10 :: v_dual_fmac_f32 v161, v35, v11
	v_dual_fmac_f32 v156, v40, v16 :: v_dual_fmac_f32 v159, v37, v13
	v_dual_fmac_f32 v154, v26, v2 :: v_dual_fmac_f32 v157, v39, v15
	v_dual_fmac_f32 v152, v28, v4 :: v_dual_fmac_f32 v155, v25, v1
	v_dual_fmac_f32 v150, v30, v6 :: v_dual_fmac_f32 v153, v27, v3
	v_dual_fmac_f32 v148, v32, v8 :: v_dual_fmac_f32 v151, v29, v5
	v_dual_fmac_f32 v146, v18, v10 :: v_dual_fmac_f32 v149, v31, v7
	v_dual_fmac_f32 v144, v20, v12 :: v_dual_fmac_f32 v147, v17, v9
	v_dual_fmac_f32 v142, v22, v14 :: v_dual_fmac_f32 v145, v19, v11
	v_dual_fmac_f32 v140, v24, v16 :: v_dual_fmac_f32 v143, v21, v13
	v_fmac_f32_e32 v138, v67, v2
	v_dual_fmac_f32 v141, v23, v15 :: v_dual_fmac_f32 v134, v78, v5
	v_dual_fmac_f32 v139, v66, v1 :: v_dual_fmac_f32 v132, v80, v7
	v_dual_fmac_f32 v137, v68, v3 :: v_dual_fmac_f32 v130, v70, v9
	v_dual_fmac_f32 v135, v69, v4 :: v_dual_fmac_f32 v128, v71, v10
	v_dual_fmac_f32 v133, v79, v6 :: v_dual_fmac_f32 v126, v73, v12
	v_dual_fmac_f32 v131, v81, v8 :: v_dual_fmac_f32 v124, v76, v15
	v_fmac_f32_e32 v127, v72, v11
	v_fmac_f32_e32 v125, v74, v13
	v_fmac_f32_e32 v129, v75, v14
	v_fmac_f32_e32 v123, v65, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s1, s101, s26
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s1, 0, 64
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s1, v1
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
	s_and_b32 s3, s1, 0x60
	s_mov_b32 s1, s8
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s8, s3
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s1, s8
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
	s_add_i32 s6, s1, s26
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s22, s38
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	s_add_i32 s7, s6, s30
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	v_add_nc_u32_e32 v65, s6, v95
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s7, s7, s31
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	s_mov_b32 s23, s39
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v66, s7, v93
	v_add_nc_u32_e32 v67, s7, v189
	v_add_nc_u32_e32 v68, s7, v190
	v_add_nc_u32_e32 v69, s7, v97
	v_add_nc_u32_e32 v70, s7, v191
	v_add_nc_u32_e32 v71, s7, v98
	v_add_nc_u32_e32 v72, s7, v99
	v_add_nc_u32_e32 v73, s7, v100
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v74, s7, v192
	v_add_nc_u32_e32 v75, s7, v101
	v_add_nc_u32_e32 v76, s7, v102
	v_add_nc_u32_e32 v77, s7, v103
	v_add_nc_u32_e32 v78, s7, v104
	v_add_nc_u32_e32 v79, s7, v105
	v_add_nc_u32_e32 v80, s7, v106
	v_add_nc_u32_e32 v81, s7, v107
	v_add_nc_u32_e32 v82, s7, v193
	v_add_nc_u32_e32 v83, s7, v108
	v_add_nc_u32_e32 v84, s7, v109
	v_add_nc_u32_e32 v85, s7, v110
	v_add_nc_u32_e32 v86, s7, v111
	v_add_nc_u32_e32 v87, s7, v112
	v_add_nc_u32_e32 v88, s7, v113
	v_add_nc_u32_e32 v89, s7, v114
	v_add_nc_u32_e32 v90, s7, v115
	v_add_nc_u32_e32 v91, s7, v116
	v_add_nc_u32_e32 v92, s7, v117
	v_add_nc_u32_e32 v223, s7, v118
	v_add_nc_u32_e32 v224, s7, v119
	v_add_nc_u32_e32 v225, s7, v120
	v_add_nc_u32_e32 v226, s7, v121
	v_add_nc_u32_e32 v227, s7, v122
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_dual_cndmask_b32 v84, 0x80000000, v84 :: v_dual_cndmask_b32 v85, 0x80000000, v85
	v_dual_cndmask_b32 v86, 0x80000000, v86 :: v_dual_cndmask_b32 v87, 0x80000000, v87
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v89, 0x80000000, v89
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v91, 0x80000000, v91
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_cndmask_b32 v223, 0x80000000, v223
	v_dual_cndmask_b32 v224, 0x80000000, v224 :: v_dual_cndmask_b32 v225, 0x80000000, v225
	v_dual_cndmask_b32 v226, 0x80000000, v226 :: v_dual_cndmask_b32 v227, 0x80000000, v227
	s_clause 0x1f
	buffer_load_u8 v229, v66, s[20:23], 0 offen
	buffer_load_u8 v67, v67, s[20:23], 0 offen
	buffer_load_u8 v68, v68, s[20:23], 0 offen
	buffer_load_u8 v69, v69, s[20:23], 0 offen
	buffer_load_u8 v70, v70, s[20:23], 0 offen
	buffer_load_u8 v71, v71, s[20:23], 0 offen
	buffer_load_u8 v72, v72, s[20:23], 0 offen
	buffer_load_u8 v73, v73, s[20:23], 0 offen
	buffer_load_u8 v230, v74, s[20:23], 0 offen
	buffer_load_u8 v231, v75, s[20:23], 0 offen
	buffer_load_u8 v232, v76, s[20:23], 0 offen
	buffer_load_u8 v233, v77, s[20:23], 0 offen
	buffer_load_u8 v234, v78, s[20:23], 0 offen
	buffer_load_u8 v235, v79, s[20:23], 0 offen
	buffer_load_u8 v236, v80, s[20:23], 0 offen
	buffer_load_u8 v237, v81, s[20:23], 0 offen
	buffer_load_u8 v238, v82, s[20:23], 0 offen
	buffer_load_u8 v239, v83, s[20:23], 0 offen
	buffer_load_u8 v240, v84, s[20:23], 0 offen
	buffer_load_u8 v241, v85, s[20:23], 0 offen
	buffer_load_u8 v242, v86, s[20:23], 0 offen
	buffer_load_u8 v243, v87, s[20:23], 0 offen
	buffer_load_u8 v244, v88, s[20:23], 0 offen
	buffer_load_u8 v245, v89, s[20:23], 0 offen
	buffer_load_u8 v246, v90, s[20:23], 0 offen
	buffer_load_u8 v247, v91, s[20:23], 0 offen
	buffer_load_u8 v248, v92, s[20:23], 0 offen
	buffer_load_u8 v249, v223, s[20:23], 0 offen
	buffer_load_u8 v250, v224, s[20:23], 0 offen
	buffer_load_u8 v251, v225, s[20:23], 0 offen
	buffer_load_u8 v252, v226, s[20:23], 0 offen
	buffer_load_u8 v253, v227, s[20:23], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b64 v[65:66], v65, s[36:39], 0 offen
	v_add_nc_u32_e32 v74, 0, v195
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v77, 0, v197
	v_add_nc_u32_e32 v85, 0, v198
	v_add_nc_u32_e32 v223, 0, v199
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s1, s1, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s1, s3
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[65:66]
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_lshlrev_b16 v65.l, 8, v73.l
	v_lshlrev_b16 v65.h, 8, v71.l
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v228.h, v72.l, v65.l
	v_lshlrev_b16 v65.l, 8, v69.l
	v_or_b16 v228.l, v70.l, v65.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v69, 0, v194
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v227.h, v68.l, v65.l
	v_lshlrev_b16 v65.l, 8, v67.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v227.l, v229.l, v65.l
	v_add_nc_u32_e32 v229, 0, v196
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_load_2addr_stride64_b64 v[65:68], v69 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v69 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[73:76], v77 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v77 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[81:84], v85 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v85 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[89:92], v223 offset1:1
	ds_load_2addr_stride64_b64 v[223:226], v223 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v229, v[227:228]
	v_lshlrev_b16 v227.l, 8, v237.l
	v_lshlrev_b16 v227.h, 8, v235.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v229.h, v236.l, v227.l
	v_lshlrev_b16 v227.l, 8, v233.l
	v_or_b16 v229.l, v234.l, v227.h
	v_lshlrev_b16 v227.h, 8, v243.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v228.h, v232.l, v227.l
	v_lshlrev_b16 v227.l, 8, v231.l
	v_or_b16 v231.l, v242.l, v227.h
	v_lshlrev_b16 v227.h, 8, v251.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v228.l, v230.l, v227.l
	v_lshlrev_b16 v227.l, 8, v245.l
	v_or_b16 v233.l, v250.l, v227.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v231.h, v244.l, v227.l
	v_lshlrev_b16 v227.l, 8, v241.l
	v_or_b16 v230.h, v240.l, v227.l
	v_lshlrev_b16 v227.l, 8, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v230.l, v238.l, v227.l
	v_lshlrev_b16 v227.l, 8, v253.l
	v_or_b16 v233.h, v252.l, v227.l
	v_lshlrev_b16 v227.l, 8, v249.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v232.h, v248.l, v227.l
	v_lshlrev_b16 v227.l, 8, v247.l
	v_or_b16 v232.l, v246.l, v227.l
	v_add_nc_u32_e32 v227, 0, v200
	ds_store_b64 v206, v[228:229]
	ds_store_b64 v207, v[230:231]
	ds_store_b64 v208, v[232:233]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[227:230], v227 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[227:228], v[65:66], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[229:230], v[65:66], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[227:228], v[67:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[229:230], v[67:68], v[33:40] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[65:68], v209 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[25:32], v[227:228], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[229:230], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[227:228], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[229:230], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[65:68], v210 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[81:82], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[87:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[65:68], v211 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[89:90], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[89:90], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[223:224], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[223:224], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[225:226], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[225:226], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s3, s10, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s23, s3, 64
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s1, s23
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 4, v94
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_add_i32 s22, s1, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_or_b32 s27, s22, 1
	s_or_b32 s42, s22, 2
	v_or_b32_e32 v65, s22, v65
	s_or_b32 s43, s22, 3
	s_or_b32 s47, s22, 4
	s_or_b32 s48, s22, 5
	s_or_b32 s49, s22, 6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v66, s26, v65
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s6, s44, v65
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s50, s22, 7
	s_or_b32 s51, s22, 8
	s_or_b32 s52, s22, 9
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s23, v66
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v66, 5, v94
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s53, s22, 10
	s_or_b32 s54, s22, 11
	s_or_b32 s55, s22, 12
	s_or_b32 s56, s22, 13
	v_or_b32_e32 v66, s22, v66
	s_or_b32 s57, s22, 14
	s_or_b32 s58, s22, 15
	s_or_b32 s59, s22, 16
	s_or_b32 s15, s22, 17
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v67, s26, v66
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s45, s22, 18
	s_or_b32 s18, s22, 19
	s_or_b32 s34, s22, 20
	s_or_b32 s17, s22, 21
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s23, v67
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v67, 6, v94
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s16, s22, 22
	s_or_b32 s46, s22, 23
	s_or_b32 s2, s22, 24
	s_or_b32 s19, s22, 25
	v_or_b32_e32 v67, s22, v67
	s_or_b32 s13, s22, 28
	s_or_b32 s28, s22, 29
	s_or_b32 s29, s22, 30
	s_or_b32 s14, s22, 31
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v68, s26, v67
	s_sub_i32 s33, s27, s26
	s_sub_i32 s60, s42, s26
	s_sub_i32 s61, s43, s26
	s_sub_i32 s62, s47, s26
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s23, v68
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v68, 7, v94
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s63, s48, s26
	s_sub_i32 s64, s49, s26
	s_sub_i32 s65, s50, s26
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_writelane_b32 v254, s3, 11
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s22, v68
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s66, s51, s26
	s_sub_i32 s67, s52, s26
	s_sub_i32 s68, s53, s26
	s_sub_i32 s69, s54, s26
	v_subrev_nc_u32_e32 v69, s26, v68
	s_sub_i32 s70, s55, s26
	s_sub_i32 s71, s56, s26
	s_sub_i32 s72, s57, s26
	s_sub_i32 s73, s58, s26
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s23, v69
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s74, s59, s26
	s_sub_i32 s75, s15, s26
	s_sub_i32 s76, s45, s26
	s_sub_i32 s77, s18, s26
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_writelane_b32 v254, s3, 12
	v_cmp_eq_u32_e64 s3, s44, v66
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s78, s34, s26
	s_sub_i32 s79, s17, s26
	s_sub_i32 s80, s16, s26
	s_sub_i32 s81, s46, s26
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_writelane_b32 v254, s3, 13
	v_cmp_eq_u32_e64 s3, s44, v67
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s82, s2, s26
	s_sub_i32 s8, s19, s26
	s_sub_i32 s12, s13, s26
	s_sub_i32 s40, s28, s26
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_writelane_b32 v254, s3, 14
	v_cmp_eq_u32_e64 s3, s44, v68
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s84, s29, s26
	s_sub_i32 s88, s14, s26
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v65, 3, v94
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v69, 3, v96
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_writelane_b32 v254, s3, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s22, v65
	v_writelane_b32 v254, s4, 16
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s26, v68
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_writelane_b32 v254, s5, 17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s23, v65
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v65, 4, v96
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_writelane_b32 v254, s6, 18
	v_writelane_b32 v254, s7, 19
	s_or_b32 s4, s22, 26
	s_or_b32 s5, s22, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s10, s5, s26
	v_writelane_b32 v254, s9, 20
	s_sub_i32 s9, s4, s26
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s33, s23
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s60, s23
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s61, s23
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s62, s23
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s63, s23
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s64, s23
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s65, s23
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s66, s23
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s67, s23
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s68, s23
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s69, s23
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s70, s23
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s71, s23
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s72, s23
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s73, s23
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s74, s23
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s75, s23
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s76, s23
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s77, s23
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s78, s23
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s79, s23
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s80, s23
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s81, s23
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s82, s23
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s8, s23
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s9, s23
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s10, s23
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s12, s23
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s40, s23
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s84, s23
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s88, s23
	s_cselect_b32 s76, -1, 0
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	s_cmp_eq_u32 s22, s44
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s27, s44
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s42, s44
	s_cselect_b32 s73, -1, 0
	s_cmp_eq_u32 s43, s44
	s_cselect_b32 s72, -1, 0
	s_cmp_eq_u32 s47, s44
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s48, s44
	s_cselect_b32 s70, -1, 0
	s_cmp_eq_u32 s49, s44
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s50, s44
	s_cselect_b32 s68, -1, 0
	s_cmp_eq_u32 s51, s44
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s52, s44
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s53, s44
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s54, s44
	s_cselect_b32 s40, -1, 0
	s_cmp_eq_u32 s55, s44
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 s56, s44
	s_cselect_b32 s10, -1, 0
	s_cmp_eq_u32 s57, s44
	s_cselect_b32 s9, -1, 0
	s_cmp_eq_u32 s58, s44
	s_cselect_b32 s8, -1, 0
	s_cmp_eq_u32 s59, s44
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s15, s44
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s45, s44
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s18, s44
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s34, s44
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s17, s44
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s16, s44
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s46, s44
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s2, s44
	.loc	1 1496 46                       ; ragged.py:1496:46
	v_readlane_b32 s2, v254, 6
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s19, s44
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s4, s44
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s5, s44
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s13, s44
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s28, s44
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s29, s44
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s14, s44
	s_cselect_b32 s27, -1, 0
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s2, s22, s2
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s7, s0, s7
	v_add_nc_u32_e32 v65, s2, v65
	s_and_b32 s1, s0, s1
	v_add_nc_u32_e32 v69, s2, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s7
	buffer_load_u8 v66, v65, s[36:39], 0 offen
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v65, 5, v96
	v_add_nc_u32_e32 v65, s2, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	v_readlane_b32 s1, v254, 11
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v67, v65, s[36:39], 0 offen
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v65, 6, v96
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s1, s0, s1
	v_add_nc_u32_e32 v65, s2, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s1, s0, s3
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	s_clause 0x1
	buffer_load_u8 v70, v65, s[36:39], 0 offen
	buffer_load_u8 v69, v69, s[36:39], 0 offen
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s6, s35
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v65.l, v66.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v66.l, v65.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	v_readlane_b32 s1, v254, 13
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v66, 7, v96
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s35
	v_add_nc_u32_e32 v66, s2, v66
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v65.h, v67.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v67.l, v65.h, s1
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	v_readlane_b32 s1, v254, 12
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.h, 8, v65.h
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	v_readlane_b32 s1, v254, 15
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v67, v66, s[36:39], 0 offen
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s35
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v66.h, v70.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v66.l, v67.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v66.l, v67.l, v66.l, s1
	v_or_b16 v67.l, v65.l, v65.h
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v65, 2, v94
	.loc	1 1495 36                       ; ragged.py:1495:36
	v_readlane_b32 s1, v254, 14
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v66.l, 8, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s22, v65
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s35
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v66.h, v70.l, v66.h, s1
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s1, s44, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s3, s44, v65
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s26, v65
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v67.h, v66.h, v66.l
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s23, v65
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v65, 1, v94
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s6, s0, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s22, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s26, v68
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s23, v65
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v65, 2, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v65, s2, v65
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	buffer_load_u8 v66, v65, s[36:39], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v65.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v69.l, v65.l, s1
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v69, 1, v96
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s1, s0, s7
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v69, s2, v69
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s3, s35
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v69, v69, s[36:39], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.h, v66.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v66.l, v65.h, s1
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s1, s44, v68
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v66.h, v65.h, v65.l
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s22, v94
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s44, v65
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v65, s26, v65
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s23, v65
	v_add_nc_u32_e32 v65, s2, v96
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	s_mov_b32 s23, s39
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s6, s0, s6
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	v_readlane_b32 s4, v254, 16
	v_readlane_b32 s5, v254, 17
	v_readlane_b32 s6, v254, 18
	v_readlane_b32 s7, v254, 19
	buffer_load_u8 v68, v65, s[36:39], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v69.l, v65.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s3, s35
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v65.h, v68.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v68.l, v65.h, s1
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s1, s22, s30
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s22, s38
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s2, s1, s31
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s33
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_or_b16 v66.l, v65.h, v65.l
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v93
	v_add_nc_u32_e32 v68, s2, v189
	v_add_nc_u32_e32 v70, s2, v97
	v_add_nc_u32_e32 v72, s2, v98
	v_add_nc_u32_e32 v74, s2, v100
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, vcc_hi
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v76, s2, v101
	v_add_nc_u32_e32 v78, s2, v103
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v69, v65, s[20:23], 0 offen
	buffer_load_u8 v68, v68, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v190
	v_add_nc_u32_e32 v80, s2, v105
	v_add_nc_u32_e32 v82, s2, v107
	v_add_nc_u32_e32 v84, s2, v108
	v_add_nc_u32_e32 v86, s2, v110
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s104
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v88, s2, v112
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s41
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v71, v65, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v90, s2, v114
	v_add_nc_u32_e32 v92, s2, v116
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v70, v70, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v191
	v_add_nc_u32_e32 v224, s2, v118
	v_add_nc_u32_e32 v226, s2, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s103
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v72, 0x80000000, v72, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s102
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v73, v65, s[20:23], 0 offen
	buffer_load_u8 v72, v72, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s97
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v74, 0x80000000, v74, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s62
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v75, v65, s[20:23], 0 offen
	buffer_load_u8 v74, v74, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s99
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v76, 0x80000000, v76, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s98
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v77, v65, s[20:23], 0 offen
	buffer_load_u8 v76, v76, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s93
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v78, 0x80000000, v78, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s61
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v79, v65, s[20:23], 0 offen
	buffer_load_u8 v78, v78, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s95
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v80, 0x80000000, v80, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s94
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v81, v65, s[20:23], 0 offen
	buffer_load_u8 v80, v80, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s89
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v82, 0x80000000, v82, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s60
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v83, v65, s[20:23], 0 offen
	buffer_load_u8 v82, v82, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s91
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v84, 0x80000000, v84, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s90
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v85, v65, s[20:23], 0 offen
	buffer_load_u8 v84, v84, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s85
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v86, 0x80000000, v86, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s63
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v87, v65, s[20:23], 0 offen
	buffer_load_u8 v86, v86, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s87
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v88, 0x80000000, v88, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s86
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v89, v65, s[20:23], 0 offen
	buffer_load_u8 v88, v88, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s64
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v90, 0x80000000, v90, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s65
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v91, v65, s[20:23], 0 offen
	buffer_load_u8 v90, v90, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s82
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v92, 0x80000000, v92, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s81
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v223, v65, s[20:23], 0 offen
	buffer_load_u8 v92, v92, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s80
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v224, 0x80000000, v224, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s79
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v225, v65, s[20:23], 0 offen
	buffer_load_u8 v224, v224, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s78
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v226, 0x80000000, v226, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s77
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v241, v65, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v121
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	s_clause 0x1
	buffer_load_u8 v226, v226, s[20:23], 0 offen
	buffer_load_u8 v242, v65, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v65, s2, v122
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s75, s35
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v243, v65, s[20:23], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v65, 0, v195
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v65, v[66:67]
	v_add_nc_u32_e32 v66, 0, v197
	v_add_nc_u32_e32 v67, 0, v198
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(31)
	v_and_b16 v65.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v227.l, v69.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(30)
	v_and_b16 v65.l, v68.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s74, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v227.h, v68.l, v65.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(29)
	v_and_b16 v65.l, v71.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s73, s35
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v68, 0, v199
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v228.l, v71.l, v65.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(28)
	v_and_b16 v65.l, v70.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s72, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v228.h, v70.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s71, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(27)
	v_and_b16 v65.l, v73.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v229.l, v73.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(26)
	v_and_b16 v65.l, v72.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s70, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v229.h, v72.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s69, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(25)
	v_and_b16 v65.l, v75.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v230.l, v75.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(24)
	v_and_b16 v65.l, v74.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s68, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v230.h, v74.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s67, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(23)
	v_and_b16 v65.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v231.l, v77.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(22)
	v_and_b16 v65.l, v76.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s66, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v231.h, v76.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s84, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(21)
	v_and_b16 v65.l, v79.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v232.l, v79.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(20)
	v_and_b16 v65.l, v78.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s40, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v232.h, v78.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s12, s35
	v_readlane_b32 s12, v254, 10
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(19)
	v_and_b16 v65.l, v81.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v233.l, v81.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(18)
	v_and_b16 v65.l, v80.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s10, s35
	v_readlane_b32 s10, v254, 9
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v233.h, v80.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s9, s35
	v_readlane_b32 s9, v254, 20
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(17)
	v_and_b16 v65.l, v83.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v234.l, v83.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(16)
	v_and_b16 v65.l, v82.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s8, s35
	v_readlane_b32 s8, v254, 8
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v234.h, v82.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s59, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v65.l, v85.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v235.l, v85.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(14)
	v_and_b16 v65.l, v84.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s58, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v235.h, v84.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s57, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v65.l, v87.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v236.l, v87.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v65.l, v86.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s56, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v236.h, v86.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s55, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(11)
	v_and_b16 v65.l, v89.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v237.l, v89.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v65.l, v88.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s54, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v237.h, v88.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s53, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v65.l, v91.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v238.l, v91.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v65.l, v90.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s52, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v238.h, v90.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s51, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v65.l, v223.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v239.l, v223.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v65.l, v92.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s50, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v239.h, v92.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s49, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v65.l, v225.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v240.l, v225.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v65.l, v224.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s48, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v240.h, v224.l, v65.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s47, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v65.l, v241.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v241.l, v241.l, v65.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s43, s35
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v65.l, v226.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v241.h, v226.l, v65.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.l, v242.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s42, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v242.l, v242.l, v65.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v65.l, v243.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s27, s35
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v242.h, v243.l, v65.l, s1
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v65, 0, v194
	ds_load_2addr_stride64_b64 v[223:226], v65 offset1:1
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
	ds_store_b8 v212, v227
	ds_store_b8_d16_hi v212, v227 offset:256
	ds_store_b8 v212, v228 offset:512
	ds_store_b8 v212, v229 offset:1024
	ds_store_b8_d16_hi v212, v229 offset:1280
	ds_store_b8 v212, v230 offset:1536
	ds_store_b8 v212, v231 offset:2048
	ds_store_b8_d16_hi v212, v231 offset:2304
	ds_store_b8 v212, v232 offset:2560
	ds_store_b8 v212, v233 offset:3072
	ds_store_b8_d16_hi v212, v233 offset:3328
	ds_store_b8 v212, v234 offset:3584
	ds_store_b8 v212, v235 offset:4096
	ds_store_b8_d16_hi v212, v235 offset:4352
	ds_store_b8 v212, v236 offset:4608
	ds_store_b8 v212, v237 offset:5120
	ds_store_b8_d16_hi v212, v237 offset:5376
	ds_store_b8 v212, v238 offset:5632
	ds_store_b8 v212, v239 offset:6144
	ds_store_b8_d16_hi v212, v239 offset:6400
	ds_store_b8 v212, v240 offset:6656
	ds_store_b8 v212, v241 offset:7168
	ds_store_b8_d16_hi v212, v241 offset:7424
	ds_store_b8 v212, v242 offset:7680
	ds_store_b8_d16_hi v213, v228
	ds_store_b8_d16_hi v214, v230
	ds_store_b8_d16_hi v215, v232
	ds_store_b8_d16_hi v216, v234
	ds_store_b8_d16_hi v217, v236
	ds_store_b8_d16_hi v218, v238
	ds_store_b8_d16_hi v219, v240
	ds_store_b8_d16_hi v220, v242
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v227, v201 offset:1280
	ds_load_u8 v228, v201 offset:1024
	ds_load_u8 v229, v201 offset:1920
	ds_load_u8 v230, v201 offset:1664
	ds_load_u8 v231, v201 offset:1408
	ds_load_u8 v232, v201 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	ds_load_u8 v228, v201 offset:1792
	ds_load_u8 v233, v201 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v230, v229, 16, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v228, v233, v228, 0xc0c0004
	ds_load_u8 v233, v201 offset:256
	ds_load_u8 v234, v201
	ds_load_u8 v235, v201 offset:896
	ds_load_u8 v236, v201 offset:640
	ds_load_u8 v237, v201 offset:384
	ds_load_u8 v238, v201 offset:128
	v_lshl_or_b32 v228, v228, 16, v227
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	ds_load_u8 v234, v201 offset:768
	ds_load_u8 v239, v201 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v232, v238, v237, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v234, v239, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v227, v234, 16, v233
	v_perm_b32 v233, v236, v235, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[227:228], v[223:224], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v229, v233, 16, v232
	v_wmma_i32_16x16x16_iu4 v[25:32], v[227:228], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[227:228], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[227:228], v[225:226], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[229:230], v[223:224], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[229:230], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[229:230], v[91:92], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v201 offset:3328
	ds_load_u8 v90, v201 offset:3072
	ds_load_u8 v91, v201 offset:3968
	ds_load_u8 v92, v201 offset:3712
	ds_load_u8 v223, v201 offset:3456
	ds_load_u8 v224, v201 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[229:230], v[225:226], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v201 offset:3840
	ds_load_u8 v225, v201 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v91, 16, v223
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v225, v90, 0xc0c0004
	ds_load_u8 v225, v201 offset:2304
	ds_load_u8 v226, v201 offset:2048
	ds_load_u8 v227, v201 offset:2944
	ds_load_u8 v228, v201 offset:2688
	ds_load_u8 v229, v201 offset:2432
	ds_load_u8 v230, v201 offset:2176
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	ds_load_u8 v226, v201 offset:2816
	ds_load_u8 v231, v201 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v224, v230, v229, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v226, v231, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v89, v226, 16, v225
	v_perm_b32 v225, v228, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[85:86], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v91, v225, 16, v224
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[87:88], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[83:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v201 offset:5376
	ds_load_u8 v82, v201 offset:5120
	ds_load_u8 v83, v201 offset:6016
	ds_load_u8 v84, v201 offset:5760
	ds_load_u8 v85, v201 offset:5504
	ds_load_u8 v86, v201 offset:5248
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[87:88], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v201 offset:5888
	ds_load_u8 v87, v201 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v201 offset:4352
	ds_load_u8 v88, v201 offset:4096
	ds_load_u8 v89, v201 offset:4992
	ds_load_u8 v90, v201 offset:4736
	ds_load_u8 v91, v201 offset:4480
	ds_load_u8 v92, v201 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v201 offset:4864
	ds_load_u8 v223, v201 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v223, v88, 0xc0c0004
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
	ds_load_u8 v73, v201 offset:7424
	ds_load_u8 v74, v201 offset:7168
	ds_load_u8 v75, v201 offset:8064
	ds_load_u8 v76, v201 offset:7808
	ds_load_u8 v77, v201 offset:7552
	ds_load_u8 v78, v201 offset:7296
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v201 offset:7936
	ds_load_u8 v79, v201 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v201 offset:6400
	ds_load_u8 v80, v201 offset:6144
	ds_load_u8 v81, v201 offset:7040
	ds_load_u8 v82, v201 offset:6784
	ds_load_u8 v83, v201 offset:6528
	ds_load_u8 v84, v201 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v201 offset:6912
	ds_load_u8 v85, v201 offset:6656
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
.LBB0_11:                               ; %Flow332
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_readlane_b32 s24, v254, 0
	v_readlane_b32 s25, v254, 1
	v_readlane_b32 s4, v254, 7
	v_readlane_b32 s5, v254, 5
	v_readlane_b32 s15, v254, 4
	v_readlane_b32 s26, v254, 2
	v_readlane_b32 s27, v254, 3
.LBB0_12:                               ; %._crit_edge71
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_bfe_u32 v22, v188, 16, 1
	v_bfe_u32 v23, v187, 16, 1
	v_bfe_u32 v24, v186, 16, 1
	v_cmp_o_f32_e64 s3, v188, v188
	v_cmp_o_f32_e64 s20, v187, v187
	v_add3_u32 v22, v188, v22, 0x7fff
	v_add3_u32 v23, v187, v23, 0x7fff
	v_bfe_u32 v25, v185, 16, 1
	v_add3_u32 v24, v186, v24, 0x7fff
	v_cmp_o_f32_e64 s21, v186, v186
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s3
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s20
	v_bfe_u32 v23, v184, 16, 1
	v_bfe_u32 v26, v183, 16, 1
	v_add3_u32 v25, v185, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v185, v185
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v184, v23, 0x7fff
	v_cmp_o_f32_e64 s20, v184, v184
	v_add3_u32 v26, v183, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v183, v183
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v182, 16, 1
	v_bfe_u32 v27, v181, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s20
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v180, 16, 1
	v_add3_u32 v25, v182, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v182, v182
	v_add3_u32 v27, v181, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v181, v181
	v_bfe_u32 v28, v179, 16, 1
	v_add3_u32 v26, v180, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v180, v180
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v178, 16, 1
	v_bfe_u32 v29, v177, 16, 1
	v_add3_u32 v28, v179, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v179, v179
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v178, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v178, v178
	v_add3_u32 v29, v177, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v177, v177
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s3
	v_bfe_u32 v28, v176, 16, 1
	v_bfe_u32 v30, v175, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v174, 16, 1
	v_add3_u32 v28, v176, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v176, v176
	v_add3_u32 v30, v175, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v175, v175
	v_bfe_u32 v31, v173, 16, 1
	v_add3_u32 v29, v174, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v174, v174
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v172, 16, 1
	v_bfe_u32 v32, v171, 16, 1
	v_add3_u32 v31, v173, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v173, v173
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v172, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v172, v172
	v_add3_u32 v32, v171, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v171, v171
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v170, 16, 1
	v_bfe_u32 v33, v169, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v168, 16, 1
	v_add3_u32 v31, v170, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v170, v170
	v_add3_u32 v33, v169, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v169, v169
	v_bfe_u32 v34, v167, 16, 1
	v_add3_u32 v32, v168, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v168, v168
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v166, 16, 1
	v_bfe_u32 v35, v165, 16, 1
	v_add3_u32 v34, v167, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v167, v167
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v166, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v166, v166
	v_add3_u32 v35, v165, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v165, v165
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	v_bfe_u32 v34, v163, 16, 1
	v_bfe_u32 v36, v162, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v161, 16, 1
	v_add3_u32 v34, v163, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v163, v163
	v_add3_u32 v36, v162, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v162, v162
	v_bfe_u32 v37, v160, 16, 1
	v_add3_u32 v35, v161, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v161, v161
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v159, 16, 1
	v_bfe_u32 v38, v158, 16, 1
	v_add3_u32 v37, v160, v37, 0x7fff
	v_cmp_o_f32_e64 s3, v160, v160
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v159, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v159, v159
	v_add3_u32 v38, v158, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v158, v158
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s3
	v_bfe_u32 v37, v157, 16, 1
	v_bfe_u32 v39, v156, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v155, 16, 1
	v_add3_u32 v37, v157, v37, 0x7fff
	v_cmp_o_f32_e64 s3, v157, v157
	v_add3_u32 v39, v156, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v156, v156
	v_bfe_u32 v40, v154, 16, 1
	v_add3_u32 v38, v155, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v155, v155
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s3
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v153, 16, 1
	v_bfe_u32 v41, v152, 16, 1
	v_add3_u32 v40, v154, v40, 0x7fff
	v_cmp_o_f32_e64 s3, v154, v154
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v153, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v153, v153
	v_add3_u32 v41, v152, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v152, v152
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s3
	v_bfe_u32 v40, v151, 16, 1
	v_bfe_u32 v42, v150, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v149, 16, 1
	v_add3_u32 v40, v151, v40, 0x7fff
	v_cmp_o_f32_e64 s3, v151, v151
	v_add3_u32 v42, v150, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v150, v150
	v_bfe_u32 v43, v148, 16, 1
	v_add3_u32 v41, v149, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v149, v149
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v147, 16, 1
	v_bfe_u32 v44, v146, 16, 1
	v_add3_u32 v43, v148, v43, 0x7fff
	v_cmp_o_f32_e64 s3, v148, v148
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v147, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v147, v147
	v_add3_u32 v44, v146, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v146, v146
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s3
	v_bfe_u32 v43, v145, 16, 1
	v_bfe_u32 v45, v144, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v143, 16, 1
	v_add3_u32 v43, v145, v43, 0x7fff
	v_cmp_o_f32_e64 s3, v145, v145
	v_add3_u32 v45, v144, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v144, v144
	v_bfe_u32 v46, v142, 16, 1
	v_add3_u32 v44, v143, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v143, v143
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s3
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v141, 16, 1
	v_bfe_u32 v47, v140, 16, 1
	v_add3_u32 v46, v142, v46, 0x7fff
	v_cmp_o_f32_e64 s3, v142, v142
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v141, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v141, v141
	v_add3_u32 v47, v140, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v140, v140
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s3
	v_bfe_u32 v46, v139, 16, 1
	v_bfe_u32 v48, v138, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v137, 16, 1
	v_add3_u32 v46, v139, v46, 0x7fff
	v_cmp_o_f32_e64 s3, v139, v139
	v_add3_u32 v48, v138, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v138, v138
	v_bfe_u32 v49, v135, 16, 1
	v_add3_u32 v47, v137, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v137, v137
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s3
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v134, 16, 1
	v_bfe_u32 v50, v133, 16, 1
	v_add3_u32 v49, v135, v49, 0x7fff
	v_cmp_o_f32_e64 s3, v135, v135
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v13, 1, v164
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v134, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v134, v134
	v_add3_u32 v50, v133, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v133, v133
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s3
	v_bfe_u32 v49, v132, 16, 1
	v_bfe_u32 v51, v131, 16, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x85, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v130, 16, 1
	v_add3_u32 v49, v132, v49, 0x7fff
	v_cmp_o_f32_e64 s3, v132, v132
	v_add3_u32 v51, v131, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v131, v131
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s15, v6
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v14, 6, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add3_u32 v50, v130, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v130, v130
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s3
	v_bfe_u32 v52, v128, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v127, 16, 1
	v_bfe_u32 v53, v126, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s31, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s15, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v128, v52, 0x7fff
	v_cmp_o_f32_e64 s3, v128, v128
	v_add3_u32 v51, v127, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v127, v127
	v_add3_u32 v53, v126, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v126, v126
	v_bfe_u32 v54, v125, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s31, v3
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v3, s31, v136
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s3
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v129, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v125, v54, 0x7fff
	v_bfe_u32 v54, v124, 16, 1
	v_bfe_u32 v55, v123, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s4, s31
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x87, v13
	v_or_b32_e32 v5, 0x86, v13
	v_or_b32_e32 v7, 0x84, v13
	v_or_b32_e32 v8, 0x83, v13
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v21, s15, v13
	.loc	1 1545 26 is_stmt 1             ; ragged.py:1545:26
	v_add3_u32 v3, s2, s15, v3
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v125, v125
	v_add3_u32 v52, v129, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v129, v129
	v_add3_u32 v54, v124, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v124, v124
	v_add3_u32 v55, v123, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v123, v123
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x82, v13
	v_or_b32_e32 v10, 0x81, v13
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v4
	v_or_b32_e32 v2, s15, v5
	v_or_b32_e32 v11, s15, v7
	v_or_b32_e32 v12, s15, v8
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s31, v21
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v21, s5, v3
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v55.h, s22
	v_mov_b32_e32 v54, 0x5410
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	v_cmp_gt_i32_e64 s0, s31, v2
	v_cmp_gt_i32_e64 s6, s31, v11
	v_cmp_gt_i32_e64 s7, s31, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v9
	v_or_b32_e32 v2, s15, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v13
	v_or_b32_e32 v12, 7, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_cndmask_b32_e64 v53, v23, v22, s3
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v25, v24, s3
	v_cndmask_b32_e64 v24, v24, v25, s3
	v_cndmask_b32_e64 v25, v28, v26, s3
	v_cndmask_b32_e64 v26, v26, v28, s3
	v_cndmask_b32_e64 v28, v29, v27, s3
	v_cndmask_b32_e64 v27, v27, v29, s3
	v_cndmask_b32_e64 v29, v32, v30, s3
	v_cndmask_b32_e64 v30, v30, v32, s3
	v_cndmask_b32_e64 v32, v33, v31, s3
	v_cndmask_b32_e64 v31, v31, v33, s3
	v_cndmask_b32_e64 v33, v36, v34, s3
	v_cndmask_b32_e64 v34, v34, v36, s3
	v_cndmask_b32_e64 v36, v37, v35, s3
	v_cndmask_b32_e64 v35, v35, v37, s3
	v_cndmask_b32_e64 v37, v40, v38, s3
	v_cndmask_b32_e64 v38, v38, v40, s3
	v_cndmask_b32_e64 v40, v41, v39, s3
	v_cndmask_b32_e64 v39, v39, v41, s3
	v_cndmask_b32_e64 v41, v44, v42, s3
	v_cndmask_b32_e64 v42, v42, v44, s3
	v_cndmask_b32_e64 v44, v45, v43, s3
	v_cndmask_b32_e64 v43, v43, v45, s3
	v_cndmask_b32_e64 v45, v48, v46, s3
	v_cndmask_b32_e64 v46, v46, v48, s3
	v_cndmask_b32_e64 v48, v49, v47, s3
	v_cndmask_b32_e64 v47, v47, v49, s3
	v_cndmask_b32_e64 v49, v52, v50, s3
	v_cndmask_b32_e64 v50, v50, v52, s3
	v_cndmask_b32_e64 v52, v0, v51, s3
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v51, v0, s3
	v_cndmask_b32_e64 v51, 0x1054, v54, s3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s31, v1
	v_cmp_gt_i32_e64 s9, s31, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v11
	v_or_b32_e32 v2, s15, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v15, 5, v13
	v_or_b32_e32 v16, 4, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_cndmask_b32_e64 v54, 0x3276, v55, s3
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s31, v1
	v_cmp_gt_i32_e64 s11, s31, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v15
	v_or_b32_e32 v2, s15, v16
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v17, 3, v13
	v_or_b32_e32 v18, 2, v13
	v_or_b32_e32 v19, 1, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_lshl_or_b32 v54, v54, 8, v54
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s31, v1
	v_cmp_gt_i32_e64 s14, s31, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v17
	v_or_b32_e32 v2, s15, v18
	v_or_b32_e32 v20, s15, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v54, 0x760076, v54
	v_lshl_or_b32 v51, v51, 4, v51
	s_mov_b32 s2, 0x76543210
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s31, v1
	v_cmp_gt_i32_e64 s16, s31, v2
	v_cmp_gt_i32_e64 s17, s31, v20
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v20, s31, 5, v3
	v_mad_u64_u32 v[1:2], null, s31, 48, v[3:4]
	v_add_lshl_u32 v3, v3, v13, 1
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_permlanex16_b32 v22, v22, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v51, 0x5040504, v51
	v_mov_b16_e32 v2.h, 0
	v_add_nc_u32_e32 v84, 2, v3
	v_permlanex16_b32 v24, v24, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v47, v47, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s83, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v85, 4, v3
	v_cndmask_b32_e64 v86, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v22, v22, v53, v54
	v_cndmask_b32_e64 v84, 0x80000000, v84, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s16
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
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v85, 0x80000000, v85, s3
	buffer_store_b16 v55, v86, s[24:27], 0 offen
	v_add_nc_u32_e32 v55, 6, v3
	v_mov_b16_e32 v2.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v84, s[24:27], 0 offen
	buffer_store_b16 v22, v85, s[24:27], 0 offen
	v_add_nc_u32_e32 v22, 8, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v84, 12, v3
	v_cndmask_b32_e64 v51, 0x80000000, v55, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v55, 10, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s13
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
	buffer_store_b16 v2, v51, s[24:27], 0 offen
	buffer_store_b16 v53, v22, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 14, v3
	v_cndmask_b32_e64 v55, 0x80000000, v55, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v54.l, v53.h
	v_add_nc_u32_e32 v22, 0x100, v3
	v_cndmask_b32_e64 v84, 0x80000000, v84, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v52.l, v23.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v54, v55, s[24:27], 0 offen
	buffer_store_b16 v23, v84, s[24:27], 0 offen
	v_add_nc_u32_e32 v23, 0x102, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_nc_u32_e32 v51, 0x104, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v52, v2, s[24:27], 0 offen
	buffer_store_b16 v24, v22, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0x106, v3
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v57.l, v24.h
	v_add_nc_u32_e32 v22, 0x108, v3
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v56.l, v25.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v57, v23, s[24:27], 0 offen
	buffer_store_b16 v25, v51, s[24:27], 0 offen
	v_add_nc_u32_e32 v23, 0x10a, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_nc_u32_e32 v24, 0x10c, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v56, v2, s[24:27], 0 offen
	buffer_store_b16 v26, v22, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0x10e, v3
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v21, v13, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s83, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.l, v27.h
	v_add_lshl_u32 v22, v21, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_store_b16 v59, v23, s[24:27], 0 offen
	buffer_store_b16 v27, v24, s[24:27], 0 offen
	v_add_lshl_u32 v23, v21, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v58, v2, s[24:27], 0 offen
	buffer_store_b16 v28, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v17, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v61.l, v28.h
	v_add_lshl_u32 v3, v21, v16, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v60.l, v29.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v61, v22, s[24:27], 0 offen
	buffer_store_b16 v29, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v21, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v23, v21, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v60, v2, s[24:27], 0 offen
	buffer_store_b16 v30, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v12, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v63.l, v30.h
	v_add_lshl_u32 v3, v21, v11, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v62.l, v31.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v63, v22, s[24:27], 0 offen
	buffer_store_b16 v31, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v21, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v23, v21, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v62, v2, s[24:27], 0 offen
	buffer_store_b16 v32, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v8, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v65.l, v32.h
	v_add_lshl_u32 v3, v21, v7, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v64.l, v33.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v65, v22, s[24:27], 0 offen
	buffer_store_b16 v33, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v21, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v23, v21, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v64, v2, s[24:27], 0 offen
	buffer_store_b16 v34, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v4, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v13, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s100, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v66.l, v35.h
	v_add_lshl_u32 v21, v20, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_store_b16 v67, v22, s[24:27], 0 offen
	buffer_store_b16 v35, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v20, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v66, v2, s[24:27], 0 offen
	buffer_store_b16 v36, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.l, v36.h
	v_add_lshl_u32 v3, v20, v16, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v68.l, v37.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v69, v21, s[24:27], 0 offen
	buffer_store_b16 v37, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v20, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v20, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v68, v2, s[24:27], 0 offen
	buffer_store_b16 v38, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v71.l, v38.h
	v_add_lshl_u32 v3, v20, v11, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v70.l, v39.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v71, v21, s[24:27], 0 offen
	buffer_store_b16 v39, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v20, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v20, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v70, v2, s[24:27], 0 offen
	buffer_store_b16 v40, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v8, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v73.l, v40.h
	v_add_lshl_u32 v3, v20, v7, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v73, v21, s[24:27], 0 offen
	buffer_store_b16 v41, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v20, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v20, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v72, v2, s[24:27], 0 offen
	buffer_store_b16 v42, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v4, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v13, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s96, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v74.l, v43.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v75.l, v42.h
	v_add_lshl_u32 v13, v1, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v18, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v75, v21, s[24:27], 0 offen
	buffer_store_b16 v43, v22, s[24:27], 0 offen
	buffer_store_b16 v74, v2, s[24:27], 0 offen
	buffer_store_b16 v44, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v1, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v77.l, v44.h
	v_add_lshl_u32 v3, v1, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v76.l, v45.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v77, v13, s[24:27], 0 offen
	buffer_store_b16 v45, v18, s[24:27], 0 offen
	v_add_lshl_u32 v13, v1, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v14, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v76, v2, s[24:27], 0 offen
	buffer_store_b16 v46, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v1, v12, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v11, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v78.l, v47.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v79.l, v46.h
	v_add_lshl_u32 v10, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v9, v1, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v79, v13, s[24:27], 0 offen
	buffer_store_b16 v47, v14, s[24:27], 0 offen
	buffer_store_b16 v78, v2, s[24:27], 0 offen
	buffer_store_b16 v48, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v1, v8, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v6, v1, v6, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s92, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 1
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s92, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s92, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v4, 0x80000000, v6, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s92, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v81, v10, s[24:27], 0 offen
	buffer_store_b16 v49, v9, s[24:27], 0 offen
	buffer_store_b16 v80, v2, s[24:27], 0 offen
	buffer_store_b16 v50, v3, s[24:27], 0 offen
	buffer_store_b16 v83, v4, s[24:27], 0 offen
	buffer_store_b16 v0, v5, s[24:27], 0 offen
	buffer_store_b16 v82, v1, s[24:27], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 255
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16604
; TotalNumSgprs: 107
; NumVgprs: 255
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 21
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.kd
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
