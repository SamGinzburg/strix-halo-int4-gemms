	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v136, 15, v0
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
	s_sub_i32 s16, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s16, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s33, s16, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s9, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 0xe0, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
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
	s_ashr_i32 s17, s16, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[16:17], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s13, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s6, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s13, v136
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s31, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s34, v2
	v_cmp_gt_i32_e64 s4, s34, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v4
	v_cmp_gt_i32_e64 s2, s34, v5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s31, s31, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s31, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge16_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s17, s13, s33
	s_lshl_b32 s30, s35, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr17
                                        ; implicit-def: $sgpr30
.LBB0_3:                                ; %Flow298
	s_load_b64 s[28:29], s[0:1], 0x28
	v_lshrrev_b32_e32 v167, 1, v1
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
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
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s18, s6, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b64 s[14:15], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 5, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v89, s18, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s40, s31, 1
	s_cmpk_lt_i32 s3, 0x80
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s13, v2
	s_cselect_b32 s41, -1, 0
	s_add_i32 s17, s13, s33
	v_dual_mov_b32 v176, 0 :: v_dual_and_b32 v17, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v3, 8, v1
	v_or_b32_e32 v4, 16, v1
	v_or_b32_e32 v5, 24, v1
	v_or_b32_e32 v6, 32, v1
	v_or_b32_e32 v7, 40, v1
	v_or_b32_e32 v8, 48, v1
	v_or_b32_e32 v9, 56, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	v_dual_mov_b32 v186, 0 :: v_dual_and_b32 v1, 31, v0
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v12, s17, v136
	v_cmp_gt_i32_e64 s1, s34, v3
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[90:91], null, s14, v2, v[1:2]
	v_bfe_i32 v1, v0, 7, 1
	v_dual_mov_b32 v185, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_cmp_gt_i32_e64 s6, s34, v4
	v_dual_mov_b32 v184, 0 :: v_dual_and_b32 v3, 0x7f, v0
	v_mad_u64_u32 v[91:92], null, s14, 24, v[90:91]
	v_dual_mov_b32 v182, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_dual_mov_b32 v183, 0 :: v_dual_and_b32 v4, 24, v2
	v_mul_lo_u32 v197, v12, s15
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v15, 16, v12
	v_mad_u64_u32 v[92:93], null, s14, 40, v[90:91]
	v_mad_u64_u32 v[93:94], null, s14, 48, v[90:91]
	v_mad_u64_u32 v[94:95], null, s14, 56, v[90:91]
	v_mad_u64_u32 v[95:96], null, s35, 3, v[89:90]
	v_mad_u64_u32 v[96:97], null, s35, 5, v[89:90]
	v_mad_u64_u32 v[97:98], null, s35, 6, v[89:90]
	v_mad_u64_u32 v[98:99], null, s35, 7, v[89:90]
	v_mad_u64_u32 v[99:100], null, s35, 9, v[89:90]
	v_mad_u64_u32 v[100:101], null, s35, 10, v[89:90]
	v_mad_u64_u32 v[101:102], null, s35, 11, v[89:90]
	v_mad_u64_u32 v[102:103], null, s35, 12, v[89:90]
	v_mad_u64_u32 v[103:104], null, s35, 13, v[89:90]
	v_mad_u64_u32 v[104:105], null, s35, 14, v[89:90]
	v_mad_u64_u32 v[105:106], null, s35, 15, v[89:90]
	v_mad_u64_u32 v[106:107], null, s35, 17, v[89:90]
	v_mad_u64_u32 v[107:108], null, s35, 18, v[89:90]
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v16, 32, v12
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v12, 48, v12
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v18, 5, v0
	v_mad_u64_u32 v[108:109], null, s35, 19, v[89:90]
	v_mad_u64_u32 v[109:110], null, s35, 20, v[89:90]
	v_mad_u64_u32 v[110:111], null, s35, 21, v[89:90]
	v_mad_u64_u32 v[111:112], null, s35, 22, v[89:90]
	v_mad_u64_u32 v[112:113], null, s35, 23, v[89:90]
	v_xor_b32_e32 v193, v1, v3
	v_lshl_or_b32 v194, v136, 5, v4
	v_mul_lo_u32 v198, v15, s15
	v_mul_lo_u32 v200, v12, s15
	v_dual_mov_b32 v173, 0 :: v_dual_lshlrev_b32 v12, 2, v17
	v_dual_mov_b32 v174, 0 :: v_dual_and_b32 v15, 32, v18
	v_mad_u64_u32 v[113:114], null, s35, 24, v[89:90]
	v_mad_u64_u32 v[114:115], null, s35, 25, v[89:90]
	v_mad_u64_u32 v[115:116], null, s35, 26, v[89:90]
	v_mad_u64_u32 v[116:117], null, s35, 27, v[89:90]
	v_mad_u64_u32 v[117:118], null, s35, 28, v[89:90]
	v_cmp_gt_i32_e64 s7, s34, v5
	v_cmp_gt_i32_e64 s8, s34, v6
	v_cmp_gt_i32_e64 s9, s34, v7
	v_cmp_gt_i32_e64 s10, s34, v8
	v_cmp_gt_i32_e64 s11, s34, v9
	v_xor_b32_e32 v1, 0x110, v193
	v_xor_b32_e32 v3, 8, v194
	v_xor_b32_e32 v4, 16, v194
	v_xor_b32_e32 v5, 24, v194
	v_or_b32_e32 v6, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_or_b32_e32 v10, 0x1300, v0
	v_or_b32_e32 v11, 0x1700, v0
	v_or_b32_e32 v13, 0x1b00, v0
	v_or_b32_e32 v14, 0x1f00, v0
	v_mul_lo_u32 v199, v16, s15
	v_dual_mov_b32 v171, 0 :: v_dual_and_b32 v2, 28, v2
	v_cndmask_b32_e64 v16, 0, 1, s41
	v_add3_u32 v12, 0, v12, v15
	v_dual_mov_b32 v172, 0 :: v_dual_lshlrev_b32 v15, 1, v17
	v_mad_u64_u32 v[118:119], null, s35, 29, v[89:90]
	v_mad_u64_u32 v[119:120], null, s35, 30, v[89:90]
	v_mad_u64_u32 v[120:121], null, s35, 31, v[89:90]
	s_lshl_b32 s30, s35, 4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v89
	v_lshl_add_u32 v187, s14, 3, v90
	v_lshl_add_u32 v188, s14, 4, v90
	v_lshl_add_u32 v189, s14, 5, v90
	v_lshl_add_u32 v190, s35, 1, v89
	v_lshl_add_u32 v191, s35, 2, v89
	v_lshl_add_u32 v192, s35, 3, v89
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v195, s30, v89
	v_add3_u32 v196, 0, v167, v136
	v_cmp_ne_u32_e64 s13, 1, v16
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v201, 0, v1
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v202, 0, v3
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v203, 0, v4
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v204, 0, v5
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v205, 0, v0
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v206, 0, v6
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v207, 0, v7
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v208, 0, v8
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v209, 0, v9
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v210, 0, v10
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v211, 0, v11
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v212, 0, v13
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v213, 0, v14
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v214, v12, v2
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v215, 0, v15
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_mov_b32_e32 v121, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s40, s40, -1
	.loc	1 1435 43                       ; ragged.py:1435:43
	s_mul_i32 s31, s16, s14
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s16, s16, s15
	s_mul_i32 s33, s17, s14
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_and_b32 s21, s23, 0xffff
	s_mov_b32 s20, s22
	s_mov_b32 s34, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s15, s40, 7
	s_mov_b32 s40, s24
	s_mov_b32 s41, s25
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	s_mov_b32 s14, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v33, v197, s34, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s14, s34, s16
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v34, v198, s34, 1
	v_add_lshl_u32 v35, v199, s34, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s14, s14, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v36, v200, s34, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v37, v89, s14, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s12
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[40:43], 0 offen
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s22, s34, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s14, s22, 7
	s_cmp_lg_u32 s34, s15
	s_mov_b32 s34, s22
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v54, v79, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v223, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v220, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v222, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v77, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v221, v33 :: v_dual_mul_f32 v53, v80, v34
	v_dual_mul_f32 v42, v219, v33 :: v_dual_mul_f32 v55, v78, v34
	v_dual_mul_f32 v43, v218, v33 :: v_dual_mul_f32 v58, v75, v34
	v_dual_mul_f32 v44, v217, v33 :: v_dual_mul_f32 v57, v76, v34
	v_dual_mul_f32 v45, v216, v33 :: v_dual_mul_f32 v60, v73, v34
	v_dual_mul_f32 v46, v88, v33 :: v_dual_mul_f32 v59, v74, v34
	v_dual_mul_f32 v47, v87, v33 :: v_dual_mul_f32 v64, v69, v34
	v_dual_mul_f32 v48, v86, v33 :: v_dual_mul_f32 v61, v72, v34
	v_dual_mul_f32 v49, v85, v33 :: v_dual_mul_f32 v62, v71, v34
	v_dual_mul_f32 v50, v84, v33 :: v_dual_mul_f32 v63, v70, v34
	v_dual_mul_f32 v51, v83, v33 :: v_dual_mul_f32 v68, v68, v34
	v_dual_mul_f32 v52, v82, v33 :: v_dual_mul_f32 v67, v67, v34
	v_dual_mul_f32 v33, v81, v33 :: v_dual_mul_f32 v66, v66, v34
	v_dual_mul_f32 v34, v65, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v32, v32, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v79, v13, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v16, v16, v36
	v_dual_mul_f32 v65, v28, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v69, v27, v35 :: v_dual_mul_f32 v80, v12, v36
	v_dual_mul_f32 v70, v26, v35 :: v_dual_mul_f32 v81, v11, v36
	v_dual_mul_f32 v71, v25, v35 :: v_dual_mul_f32 v8, v8, v36
	v_mul_f32_e32 v72, v24, v35
	v_dual_mul_f32 v73, v23, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v74, v22, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v75, v21, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v76, v20, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v77, v19, v35 :: v_dual_mul_f32 v2, v2, v36
	v_dual_mul_f32 v78, v18, v35 :: v_dual_mul_f32 v5, v5, v36
	v_mul_f32_e32 v35, v17, v35
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v214, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v215
	ds_load_b128 v[21:24], v215 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v215 offset:512
	ds_load_b128 v[25:28], v215 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v3, v3, v36
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v186, v38, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v185, v39, v18 :: v_dual_fmac_f32 v180, v44, v23
	v_dual_fmac_f32 v184, v40, v19 :: v_dual_fmac_f32 v183, v41, v20
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v178, v46, v11
	v_dual_fmac_f32 v182, v42, v21 :: v_dual_fmac_f32 v181, v43, v22
	v_dual_fmac_f32 v176, v48, v13 :: v_dual_fmac_f32 v179, v45, v24
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v174, v50, v25 :: v_dual_fmac_f32 v177, v47, v12
	v_dual_fmac_f32 v172, v52, v27 :: v_dual_fmac_f32 v175, v49, v14
	v_fmac_f32_e32 v168, v55, v19
	v_dual_fmac_f32 v173, v51, v26 :: v_dual_fmac_f32 v170, v53, v17
	v_dual_fmac_f32 v171, v33, v28 :: v_dual_fmac_f32 v164, v58, v22
	v_dual_fmac_f32 v169, v54, v18 :: v_dual_fmac_f32 v166, v56, v20
	v_dual_fmac_f32 v165, v57, v21 :: v_dual_fmac_f32 v162, v60, v24
	v_dual_fmac_f32 v163, v59, v23 :: v_dual_fmac_f32 v160, v62, v12
	v_dual_fmac_f32 v161, v61, v11 :: v_dual_fmac_f32 v158, v64, v14
	v_dual_fmac_f32 v159, v63, v13 :: v_dual_fmac_f32 v154, v34, v28
	v_dual_fmac_f32 v157, v68, v25 :: v_dual_fmac_f32 v156, v67, v26
	v_dual_fmac_f32 v155, v66, v27 :: v_dual_fmac_f32 v152, v31, v18
	v_dual_fmac_f32 v153, v32, v17 :: v_dual_fmac_f32 v150, v29, v20
	v_dual_fmac_f32 v151, v30, v19 :: v_dual_fmac_f32 v148, v69, v22
	v_dual_fmac_f32 v149, v65, v21 :: v_dual_fmac_f32 v146, v71, v24
	v_dual_fmac_f32 v147, v70, v23 :: v_dual_fmac_f32 v144, v73, v12
	v_dual_fmac_f32 v145, v72, v11 :: v_dual_fmac_f32 v142, v75, v14
	v_dual_fmac_f32 v143, v74, v13 :: v_dual_fmac_f32 v140, v77, v26
	v_dual_fmac_f32 v141, v76, v25 :: v_dual_fmac_f32 v138, v35, v28
	v_dual_fmac_f32 v139, v78, v27 :: v_dual_fmac_f32 v132, v80, v21
	v_dual_fmac_f32 v137, v16, v17 :: v_dual_fmac_f32 v134, v37, v19
	v_dual_fmac_f32 v135, v15, v18 :: v_dual_fmac_f32 v130, v10, v23
	v_dual_fmac_f32 v133, v79, v20 :: v_dual_fmac_f32 v126, v8, v11
	v_dual_fmac_f32 v131, v81, v22 :: v_dual_fmac_f32 v124, v6, v13
	v_dual_fmac_f32 v127, v9, v24 :: v_dual_fmac_f32 v122, v4, v25
	v_dual_fmac_f32 v125, v7, v12 :: v_dual_fmac_f32 v128, v2, v27
	v_fmac_f32_e32 v123, v5, v14
	v_fmac_f32_e32 v129, v3, v26
	v_fmac_f32_e32 v121, v1, v28
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s13
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s44, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s45, s44, s14
	v_add_nc_u32_e32 v74, s35, v89
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s46, s45, s31
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s45, s45, s33
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_mul_i32 s46, s46, s35
	v_add_nc_u32_e32 v65, s45, v90
	v_add_nc_u32_e32 v67, s45, v188
	v_add_nc_u32_e32 v69, s45, v189
	v_add_nc_u32_e32 v71, s45, v93
	v_add_nc_u32_e32 v66, s45, v187
	v_add_nc_u32_e32 v68, s45, v91
	v_add_nc_u32_e32 v70, s45, v92
	v_add_nc_u32_e32 v72, s45, v94
	v_add_nc_u32_e32 v224, s46, v113
	v_add_nc_u32_e32 v225, s46, v114
	v_add_nc_u32_e32 v226, s46, v115
	v_add_nc_u32_e32 v227, s46, v116
	v_add_nc_u32_e32 v228, s46, v117
	v_add_nc_u32_e32 v229, s46, v118
	v_add_nc_u32_e32 v230, s46, v119
	v_add_nc_u32_e32 v231, s46, v120
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v73, s46, v89
	v_add_nc_u32_e32 v74, s46, v74
	v_add_nc_u32_e32 v75, s46, v190
	v_add_nc_u32_e32 v76, s46, v95
	v_add_nc_u32_e32 v77, s46, v191
	v_add_nc_u32_e32 v78, s46, v96
	v_add_nc_u32_e32 v79, s46, v97
	v_add_nc_u32_e32 v80, s46, v98
	v_add_nc_u32_e32 v81, s46, v192
	v_add_nc_u32_e32 v82, s46, v99
	v_add_nc_u32_e32 v83, s46, v100
	v_add_nc_u32_e32 v84, s46, v101
	v_add_nc_u32_e32 v85, s46, v102
	v_add_nc_u32_e32 v86, s46, v103
	v_add_nc_u32_e32 v87, s46, v104
	v_add_nc_u32_e32 v88, s46, v105
	v_add_nc_u32_e32 v216, s46, v195
	v_add_nc_u32_e32 v217, s46, v106
	v_add_nc_u32_e32 v218, s46, v107
	v_add_nc_u32_e32 v219, s46, v108
	v_add_nc_u32_e32 v220, s46, v109
	v_add_nc_u32_e32 v221, s46, v110
	v_add_nc_u32_e32 v222, s46, v111
	v_add_nc_u32_e32 v223, s46, v112
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s6
	v_cndmask_b32_e64 v69, 0x80000000, v69, s8
	v_cndmask_b32_e64 v71, 0x80000000, v71, s10
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_cndmask_b32_e64 v70, 0x80000000, v70, s9
	v_cndmask_b32_e64 v72, 0x80000000, v72, s11
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v224, 0x80000000, v224, s12
	v_cndmask_b32_e64 v225, 0x80000000, v225, s12
	v_cndmask_b32_e64 v226, 0x80000000, v226, s12
	v_cndmask_b32_e64 v227, 0x80000000, v227, s12
	v_cndmask_b32_e64 v228, 0x80000000, v228, s12
	v_cndmask_b32_e64 v229, 0x80000000, v229, s12
	v_cndmask_b32_e64 v230, 0x80000000, v230, s12
	v_cndmask_b32_e64 v231, 0x80000000, v231, s12
	s_mov_b32 s22, s38
	s_mov_b32 s23, s39
	v_cndmask_b32_e64 v73, 0x80000000, v73, s12
	v_cndmask_b32_e64 v74, 0x80000000, v74, s12
	v_cndmask_b32_e64 v75, 0x80000000, v75, s12
	v_cndmask_b32_e64 v76, 0x80000000, v76, s12
	v_cndmask_b32_e64 v77, 0x80000000, v77, s12
	v_cndmask_b32_e64 v78, 0x80000000, v78, s12
	v_cndmask_b32_e64 v79, 0x80000000, v79, s12
	v_cndmask_b32_e64 v80, 0x80000000, v80, s12
	v_cndmask_b32_e64 v81, 0x80000000, v81, s12
	v_cndmask_b32_e64 v82, 0x80000000, v82, s12
	v_cndmask_b32_e64 v83, 0x80000000, v83, s12
	v_cndmask_b32_e64 v84, 0x80000000, v84, s12
	v_cndmask_b32_e64 v85, 0x80000000, v85, s12
	v_cndmask_b32_e64 v86, 0x80000000, v86, s12
	v_cndmask_b32_e64 v87, 0x80000000, v87, s12
	v_cndmask_b32_e64 v88, 0x80000000, v88, s12
	v_cndmask_b32_e64 v216, 0x80000000, v216, s12
	v_cndmask_b32_e64 v217, 0x80000000, v217, s12
	v_cndmask_b32_e64 v218, 0x80000000, v218, s12
	v_cndmask_b32_e64 v219, 0x80000000, v219, s12
	v_cndmask_b32_e64 v220, 0x80000000, v220, s12
	v_cndmask_b32_e64 v221, 0x80000000, v221, s12
	v_cndmask_b32_e64 v222, 0x80000000, v222, s12
	v_cndmask_b32_e64 v223, 0x80000000, v223, s12
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x7
	buffer_load_u8 v65, v65, s[36:39], 0 offen
	buffer_load_u8 v67, v67, s[36:39], 0 offen
	buffer_load_u8 v69, v69, s[36:39], 0 offen
	buffer_load_u8 v71, v71, s[36:39], 0 offen
	buffer_load_u8 v72, v72, s[36:39], 0 offen
	buffer_load_u8 v70, v70, s[36:39], 0 offen
	buffer_load_u8 v68, v68, s[36:39], 0 offen
	buffer_load_u8 v66, v66, s[36:39], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0x1f
	buffer_load_u8 v232, v73, s[20:23], 0 offen
	buffer_load_u8 v233, v74, s[20:23], 0 offen
	buffer_load_u8 v234, v75, s[20:23], 0 offen
	buffer_load_u8 v235, v77, s[20:23], 0 offen
	buffer_load_u8 v236, v78, s[20:23], 0 offen
	buffer_load_u8 v237, v79, s[20:23], 0 offen
	buffer_load_u8 v238, v81, s[20:23], 0 offen
	buffer_load_u8 v239, v82, s[20:23], 0 offen
	buffer_load_u8 v240, v83, s[20:23], 0 offen
	buffer_load_u8 v241, v85, s[20:23], 0 offen
	buffer_load_u8 v242, v86, s[20:23], 0 offen
	buffer_load_u8 v243, v87, s[20:23], 0 offen
	buffer_load_u8 v244, v216, s[20:23], 0 offen
	buffer_load_u8 v245, v217, s[20:23], 0 offen
	buffer_load_u8 v246, v218, s[20:23], 0 offen
	buffer_load_u8 v247, v220, s[20:23], 0 offen
	buffer_load_u8 v248, v221, s[20:23], 0 offen
	buffer_load_u8 v249, v222, s[20:23], 0 offen
	buffer_load_u8 v224, v224, s[20:23], 0 offen
	buffer_load_u8 v225, v225, s[20:23], 0 offen
	buffer_load_u8 v226, v226, s[20:23], 0 offen
	buffer_load_u8 v228, v228, s[20:23], 0 offen
	buffer_load_u8 v229, v229, s[20:23], 0 offen
	buffer_load_u8 v230, v230, s[20:23], 0 offen
	buffer_load_u8 v250, v80, s[20:23], 0 offen
	buffer_load_u8 v251, v76, s[20:23], 0 offen
	buffer_load_u8 v252, v88, s[20:23], 0 offen
	buffer_load_u8 v253, v84, s[20:23], 0 offen
	buffer_load_u8 v254, v223, s[20:23], 0 offen
	buffer_load_u8 v255, v219, s[20:23], 0 offen
	buffer_load_u8 v231, v231, s[20:23], 0 offen
	buffer_load_u8 v227, v227, s[20:23], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_add_nc_u32_e32 v73, 0, v193
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s22, s44, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmpk_lt_i32 s44, 0x60
	s_mov_b32 s44, s22
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(39)
	ds_store_b8 v73, v65
	s_waitcnt vmcnt(38)
	ds_store_b8 v73, v67 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v73, v69 offset:1024
	s_waitcnt vmcnt(36)
	ds_store_b8 v73, v71 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v201, v66
	ds_store_b8 v201, v68 offset:512
	ds_store_b8 v201, v70 offset:1024
	ds_store_b8 v201, v72 offset:1536
	v_add_nc_u32_e32 v65, 0, v194
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[216:219], v65 offset1:1
	ds_load_2addr_stride64_b64 v[220:223], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v202 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v202 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v203 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v203 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v204 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v204 offset0:2 offset1:3
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v205, v232
	s_waitcnt vmcnt(30)
	ds_store_b8 v205, v233 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b8 v205, v234 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b8 v205, v235 offset:1024
	s_waitcnt vmcnt(27)
	ds_store_b8 v205, v236 offset:1280
	s_waitcnt vmcnt(26)
	ds_store_b8 v205, v237 offset:1536
	s_waitcnt vmcnt(25)
	ds_store_b8 v205, v238 offset:2048
	s_waitcnt vmcnt(24)
	ds_store_b8 v205, v239 offset:2304
	s_waitcnt vmcnt(23)
	ds_store_b8 v205, v240 offset:2560
	s_waitcnt vmcnt(22)
	ds_store_b8 v205, v241 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b8 v205, v242 offset:3328
	s_waitcnt vmcnt(20)
	ds_store_b8 v205, v243 offset:3584
	s_waitcnt vmcnt(19)
	ds_store_b8 v205, v244 offset:4096
	s_waitcnt vmcnt(18)
	ds_store_b8 v205, v245 offset:4352
	s_waitcnt vmcnt(17)
	ds_store_b8 v205, v246 offset:4608
	s_waitcnt vmcnt(16)
	ds_store_b8 v205, v247 offset:5120
	s_waitcnt vmcnt(15)
	ds_store_b8 v205, v248 offset:5376
	s_waitcnt vmcnt(14)
	ds_store_b8 v205, v249 offset:5632
	s_waitcnt vmcnt(13)
	ds_store_b8 v205, v224 offset:6144
	s_waitcnt vmcnt(12)
	ds_store_b8 v205, v225 offset:6400
	s_waitcnt vmcnt(11)
	ds_store_b8 v205, v226 offset:6656
	s_waitcnt vmcnt(10)
	ds_store_b8 v205, v228 offset:7168
	s_waitcnt vmcnt(9)
	ds_store_b8 v205, v229 offset:7424
	s_waitcnt vmcnt(8)
	ds_store_b8 v205, v230 offset:7680
	s_waitcnt vmcnt(6)
	ds_store_b8 v206, v251
	ds_store_b8 v207, v250
	s_waitcnt vmcnt(4)
	ds_store_b8 v208, v253
	ds_store_b8 v209, v252
	s_waitcnt vmcnt(2)
	ds_store_b8 v210, v255
	ds_store_b8 v211, v254
	s_waitcnt vmcnt(0)
	ds_store_b8 v212, v227
	ds_store_b8 v213, v231
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v224, v196 offset:1280
	ds_load_u8 v225, v196 offset:1024
	ds_load_u8 v226, v196 offset:1920
	ds_load_u8 v227, v196 offset:1664
	ds_load_u8 v228, v196 offset:1408
	ds_load_u8 v229, v196 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	ds_load_u8 v225, v196 offset:1792
	ds_load_u8 v230, v196 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v226, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v227, v226, 16, v228
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v225, v230, v225, 0xc0c0004
	ds_load_u8 v230, v196 offset:256
	ds_load_u8 v231, v196
	ds_load_u8 v232, v196 offset:896
	ds_load_u8 v233, v196 offset:640
	ds_load_u8 v234, v196 offset:384
	ds_load_u8 v235, v196 offset:128
	v_lshl_or_b32 v225, v225, 16, v224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	ds_load_u8 v231, v196 offset:768
	ds_load_u8 v236, v196 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v229, v235, v234, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v231, v236, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v224, v231, 16, v230
	v_perm_b32 v230, v233, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[224:225], v[216:217], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v226, v230, 16, v229
	v_wmma_i32_16x16x16_iu4 v[17:24], v[224:225], v[218:219], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[224:225], v[220:221], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[224:225], v[222:223], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[226:227], v[216:217], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[226:227], v[218:219], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[226:227], v[220:221], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v216, v196 offset:3328
	ds_load_u8 v217, v196 offset:3072
	ds_load_u8 v218, v196 offset:3968
	ds_load_u8 v219, v196 offset:3712
	ds_load_u8 v220, v196 offset:3456
	ds_load_u8 v221, v196 offset:3200
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[222:223], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v216, v217, v216, 0xc0c0004
	ds_load_u8 v217, v196 offset:3840
	ds_load_u8 v222, v196 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v219, v218, 16, v220
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v222, v217, 0xc0c0004
	ds_load_u8 v222, v196 offset:2304
	ds_load_u8 v223, v196 offset:2048
	ds_load_u8 v224, v196 offset:2944
	ds_load_u8 v225, v196 offset:2688
	ds_load_u8 v226, v196 offset:2432
	ds_load_u8 v227, v196 offset:2176
	v_lshl_or_b32 v217, v217, 16, v216
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v223, v196 offset:2816
	ds_load_u8 v228, v196 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v221, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v223, v228, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v216, v223, 16, v222
	v_perm_b32 v222, v225, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[216:217], v[85:86], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v218, v222, 16, v221
	v_wmma_i32_16x16x16_iu4 v[33:40], v[216:217], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[216:217], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[216:217], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[218:219], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[218:219], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[218:219], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v196 offset:5376
	ds_load_u8 v82, v196 offset:5120
	ds_load_u8 v83, v196 offset:6016
	ds_load_u8 v84, v196 offset:5760
	ds_load_u8 v85, v196 offset:5504
	ds_load_u8 v86, v196 offset:5248
	v_wmma_i32_16x16x16_iu4 v[25:32], v[218:219], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v196 offset:5888
	ds_load_u8 v87, v196 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v196 offset:4352
	ds_load_u8 v88, v196 offset:4096
	ds_load_u8 v216, v196 offset:4992
	ds_load_u8 v217, v196 offset:4736
	ds_load_u8 v218, v196 offset:4480
	ds_load_u8 v219, v196 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v196 offset:4864
	ds_load_u8 v220, v196 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v220, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v81, v88, 16, v87
	v_perm_b32 v87, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[77:78], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v83, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v73, v196 offset:7424
	ds_load_u8 v74, v196 offset:7168
	ds_load_u8 v75, v196 offset:8064
	ds_load_u8 v76, v196 offset:7808
	ds_load_u8 v77, v196 offset:7552
	ds_load_u8 v78, v196 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v196 offset:7936
	ds_load_u8 v79, v196 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v196 offset:6400
	ds_load_u8 v80, v196 offset:6144
	ds_load_u8 v81, v196 offset:7040
	ds_load_u8 v82, v196 offset:6784
	ds_load_u8 v83, v196 offset:6528
	ds_load_u8 v84, v196 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v196 offset:6912
	ds_load_u8 v85, v196 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v85, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v80, 16, v79
	v_perm_b32 v79, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v75, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[75:76], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v223, v1
	v_cvt_f32_i32_e32 v222, v2
	v_cvt_f32_i32_e32 v221, v3
	v_cvt_f32_i32_e32 v220, v4
	v_cvt_f32_i32_e32 v219, v5
	v_cvt_f32_i32_e32 v218, v6
	v_cvt_f32_i32_e32 v217, v7
	v_cvt_f32_i32_e32 v216, v8
	v_cvt_f32_i32_e32 v88, v9
	v_cvt_f32_i32_e32 v87, v10
	v_cvt_f32_i32_e32 v86, v11
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v82, v15
	v_cvt_f32_i32_e32 v81, v16
	v_cvt_f32_i32_e32 v80, v17
	v_cvt_f32_i32_e32 v79, v18
	v_cvt_f32_i32_e32 v78, v19
	v_cvt_f32_i32_e32 v77, v20
	v_cvt_f32_i32_e32 v76, v21
	v_cvt_f32_i32_e32 v75, v22
	v_cvt_f32_i32_e32 v74, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v72, v25
	v_cvt_f32_i32_e32 v71, v26
	v_cvt_f32_i32_e32 v70, v27
	v_cvt_f32_i32_e32 v69, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge16
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s17, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_and_or_b32 v3, v0, 1, v167
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v11, s18, v7
	v_or_b32_e32 v12, s18, v8
	v_or_b32_e32 v2, s18, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v4
	v_or_b32_e32 v1, s18, v5
	v_or_b32_e32 v13, s18, v9
	v_or_b32_e32 v14, s18, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s18, v15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v11
	v_or_b32_e32 v1, s18, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v136
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v13
	v_or_b32_e32 v1, s18, v14
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s18, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s18, v16
	v_or_b32_e32 v20, s18, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s3, s18, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s18, v17
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
	v_add_nc_u32_e32 v19, s30, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_mov_b32 s30, 0x7ffffffe
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v186, v22, s[28:31], 0 offen
	buffer_store_b32 v185, v23, s[28:31], 0 offen
	buffer_store_b32 v184, v21, s[28:31], 0 offen
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
	buffer_store_b32 v183, v2, s[28:31], 0 offen
	buffer_store_b32 v182, v21, s[28:31], 0 offen
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
	buffer_store_b32 v181, v22, s[28:31], 0 offen
	buffer_store_b32 v180, v23, s[28:31], 0 offen
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
	buffer_store_b32 v179, v2, s[28:31], 0 offen
	buffer_store_b32 v178, v21, s[28:31], 0 offen
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
	buffer_store_b32 v177, v22, s[28:31], 0 offen
	buffer_store_b32 v176, v23, s[28:31], 0 offen
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
	buffer_store_b32 v175, v2, s[28:31], 0 offen
	buffer_store_b32 v174, v21, s[28:31], 0 offen
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
	buffer_store_b32 v173, v22, s[28:31], 0 offen
	buffer_store_b32 v172, v23, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v171, v0, s[28:31], 0 offen
	buffer_store_b32 v170, v2, s[28:31], 0 offen
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
	buffer_store_b32 v169, v21, s[28:31], 0 offen
	buffer_store_b32 v168, v22, s[28:31], 0 offen
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
	buffer_store_b32 v166, v0, s[28:31], 0 offen
	buffer_store_b32 v165, v2, s[28:31], 0 offen
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
	buffer_store_b32 v164, v21, s[28:31], 0 offen
	buffer_store_b32 v163, v22, s[28:31], 0 offen
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
	buffer_store_b32 v162, v0, s[28:31], 0 offen
	buffer_store_b32 v161, v2, s[28:31], 0 offen
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
	buffer_store_b32 v160, v21, s[28:31], 0 offen
	buffer_store_b32 v159, v22, s[28:31], 0 offen
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
	buffer_store_b32 v158, v0, s[28:31], 0 offen
	buffer_store_b32 v157, v2, s[28:31], 0 offen
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
	buffer_store_b32 v156, v21, s[28:31], 0 offen
	buffer_store_b32 v155, v22, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v154, v0, s[28:31], 0 offen
	buffer_store_b32 v153, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v152, v19, s[28:31], 0 offen
	buffer_store_b32 v151, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v150, v0, s[28:31], 0 offen
	buffer_store_b32 v149, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v148, v19, s[28:31], 0 offen
	buffer_store_b32 v147, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v146, v0, s[28:31], 0 offen
	buffer_store_b32 v145, v2, s[28:31], 0 offen
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
	buffer_store_b32 v144, v19, s[28:31], 0 offen
	buffer_store_b32 v143, v21, s[28:31], 0 offen
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
	buffer_store_b32 v142, v0, s[28:31], 0 offen
	buffer_store_b32 v141, v2, s[28:31], 0 offen
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
	s_and_b32 s3, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v140, v19, s[28:31], 0 offen
	buffer_store_b32 v139, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v138, v0, s[28:31], 0 offen
	buffer_store_b32 v137, v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v135, v3, s[28:31], 0 offen
	buffer_store_b32 v134, v17, s[28:31], 0 offen
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
	buffer_store_b32 v133, v0, s[28:31], 0 offen
	buffer_store_b32 v132, v2, s[28:31], 0 offen
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
	buffer_store_b32 v131, v3, s[28:31], 0 offen
	buffer_store_b32 v130, v13, s[28:31], 0 offen
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
	buffer_store_b32 v127, v0, s[28:31], 0 offen
	buffer_store_b32 v126, v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v125, v3, s[28:31], 0 offen
	buffer_store_b32 v124, v9, s[28:31], 0 offen
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
	buffer_store_b32 v123, v0, s[28:31], 0 offen
	buffer_store_b32 v122, v2, s[28:31], 0 offen
	buffer_store_b32 v129, v3, s[28:31], 0 offen
	buffer_store_b32 v128, v4, s[28:31], 0 offen
	buffer_store_b32 v121, v1, s[28:31], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9044
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
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
