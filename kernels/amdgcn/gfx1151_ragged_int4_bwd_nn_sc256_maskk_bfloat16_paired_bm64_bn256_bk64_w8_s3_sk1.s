	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v14, 0x7f, v0
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
	s_ashr_i32 s10, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s10, s4
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
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s10
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s24, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s8
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s24, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3)
	s_mul_i32 s7, s5, s6
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s5, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s2, s6, s7
	s_abs_i32 s4, s5
	s_add_i32 s2, s6, s2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s2, s4, s2
	s_xor_b32 s9, s5, s10
	s_mul_i32 s11, s2, s8
	s_ashr_i32 s12, s9, 31
	s_sub_i32 s4, s4, s11
	s_add_i32 s9, s2, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s4, s11, s4
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s4, s8
	s_mov_b32 s4, 0
	s_cselect_b32 s2, s9, s2
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s25, s24, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s2, s2, s12
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[24:25], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s2, s2, s12
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	s_load_b32 s28, s[6:7], 0x0
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s2, s10
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s25, s28, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s25, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge25_crit_edge
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v32, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr32
.LBB0_3:                                ; %Flow459
	s_load_b64 s[8:9], s[0:1], 0x28
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v41, 0x80, v0
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v38, 0xe0, v0
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v40, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s12, 0, v41
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v197, 0
	v_mov_b32_e32 v196, 0
	s_sub_i32 s5, s5, s6
	s_lshl_b32 s10, s2, 6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mul_i32 s7, s24, s34
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph24
	s_clause 0x1
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b64 s[14:15], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 5, v38
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v3, s10, v40
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s8, 0
	.loc	1 1424 23 is_stmt 1             ; ragged.py:1424:23
	s_lshl_b32 s38, s3, 5
	s_add_i32 s3, s10, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s10, v1
	v_or_b32_e32 v11, 16, v3
	v_writelane_b32 v255, s9, 1
	v_or_b32_e32 v12, 32, v3
	v_or_b32_e32 v13, 48, v3
	v_or_b32_e32 v4, 8, v2
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 24, v2
	v_or_b32_e32 v7, 32, v2
	v_or_b32_e32 v8, 40, v2
	v_or_b32_e32 v9, 48, v2
	v_or_b32_e32 v10, 56, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v2
	v_dual_mov_b32 v197, 0 :: v_dual_and_b32 v2, 31, v0
	v_cmp_gt_i32_e64 s8, s34, v3
	v_mov_b32_e32 v194, 0
	v_cmp_gt_i32_e64 s0, s34, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[99:100], null, s14, v1, v[2:3]
	v_cndmask_b32_e64 v3, 0x88, 0, s12
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v1, s3, v1
	v_dual_mov_b32 v195, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s34, v6
	v_xor_b32_e32 v205, v3, v14
	v_lshrrev_b32_e32 v3, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v193, 0 :: v_dual_and_b32 v4, 24, v2
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mul_lo_u32 v6, v1, s14
	v_mov_b32_e32 v192, 0
	v_add3_u32 v220, 0, v40, v3
	v_add_nc_u32_e32 v3, 8, v1
	v_lshl_or_b32 v206, v40, 5, v4
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v4, 16, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mul_lo_u32 v3, v3, s14
	scratch_store_b32 off, v6, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v5, 24, v1
	v_mad_u64_u32 v[100:101], null, s14, 24, v[99:100]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v97, s5, 8, v0
	v_mov_b32_e32 v189, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	scratch_store_b32 off, v3, off offset:4 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, v4, s14
	v_add_nc_u32_e32 v4, 40, v1
	v_mov_b32_e32 v186, 0
	v_mad_u64_u32 v[101:102], null, s14, 40, v[99:100]
	v_mad_u64_u32 v[102:103], null, s14, 48, v[99:100]
	v_mov_b32_e32 v188, 0
	scratch_store_b32 off, v3, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, v5, s14
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v5, 48, v1
	v_mad_u64_u32 v[103:104], null, s14, 56, v[99:100]
	v_mad_u64_u32 v[104:105], null, s35, 3, v[97:98]
	v_mad_u64_u32 v[105:106], null, s35, 5, v[97:98]
	scratch_store_b32 off, v3, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 32, v1
	v_add_nc_u32_e32 v1, 56, v1
	v_mad_u64_u32 v[106:107], null, s35, 6, v[97:98]
	v_mad_u64_u32 v[107:108], null, s35, 7, v[97:98]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v3, v3, s14
	v_mul_lo_u32 v1, v1, s14
	v_mad_u64_u32 v[108:109], null, s35, 9, v[97:98]
	v_mad_u64_u32 v[109:110], null, s35, 10, v[97:98]
	v_mad_u64_u32 v[110:111], null, s35, 11, v[97:98]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:16
	scratch_store_b32 off, v1, off offset:28
	v_mul_lo_u32 v3, v4, s14
	v_mad_u64_u32 v[111:112], null, s35, 12, v[97:98]
	v_mad_u64_u32 v[112:113], null, s35, 13, v[97:98]
	v_mad_u64_u32 v[113:114], null, s35, 14, v[97:98]
	v_mad_u64_u32 v[114:115], null, s35, 15, v[97:98]
	scratch_store_b32 off, v3, off offset:20 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, v5, s14
	v_mad_u64_u32 v[115:116], null, s35, 17, v[97:98]
	v_mad_u64_u32 v[116:117], null, s35, 18, v[97:98]
	v_writelane_b32 v255, s5, 2
	v_dual_mov_b32 v182, 0 :: v_dual_and_b32 v1, 0xf0, v0
	scratch_store_b32 off, v3, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v180, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	v_mad_u64_u32 v[117:118], null, s35, 19, v[97:98]
	v_mad_u64_u32 v[118:119], null, s35, 20, v[97:98]
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v6, s3, v40
	v_mad_u64_u32 v[119:120], null, s35, 21, v[97:98]
	v_mad_u64_u32 v[120:121], null, s35, 22, v[97:98]
	v_mad_u64_u32 v[121:122], null, s35, 23, v[97:98]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s13, s34, v7
	v_writelane_b32 v255, s7, 3
	v_dual_mov_b32 v176, 0 :: v_dual_lshlrev_b32 v7, 2, v1
	v_dual_mov_b32 v174, 0 :: v_dual_and_b32 v3, 32, v3
	v_mad_u64_u32 v[122:123], null, s35, 24, v[97:98]
	v_mad_u64_u32 v[123:124], null, s35, 25, v[97:98]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s26, s25, 31
	v_mul_lo_u32 v229, v6, s15
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v4, 16, v6
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v5, 32, v6
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v6, 48, v6
	v_mad_u64_u32 v[124:125], null, s35, 26, v[97:98]
	v_mad_u64_u32 v[125:126], null, s35, 27, v[97:98]
	s_add_i32 s25, s25, s26
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s26, s28, 31
	v_mad_u64_u32 v[126:127], null, s35, 28, v[97:98]
	v_writelane_b32 v255, s10, 4
	v_dual_mov_b32 v181, 0 :: v_dual_and_b32 v2, 28, v2
	v_add3_u32 v3, 0, v7, v3
	v_dual_mov_b32 v172, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mad_u64_u32 v[127:128], null, s35, 29, v[97:98]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s95, s25, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s25, s28, s26
	v_mad_u64_u32 v[128:129], null, s35, 30, v[97:98]
	v_mul_lo_u32 v230, v4, s15
	v_mul_lo_u32 v231, v5, s15
	v_mul_lo_u32 v232, v6, s15
	v_mad_u64_u32 v[129:130], null, s35, 31, v[97:98]
	s_ashr_i32 s39, s25, 1
	s_and_b32 s25, s17, 0xffff
	s_and_b32 s17, s19, 0xffff
	s_bitcmp1_b32 s28, 0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s4, s34, v8
	v_cmp_gt_i32_e64 s5, s34, v9
	v_cmp_gt_i32_e64 s6, s34, v10
	v_cmp_gt_i32_e64 s92, s34, v11
	v_cmp_gt_i32_e64 s93, s34, v12
	v_cmp_gt_i32_e64 s94, s34, v13
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s35, v97
	v_lshl_add_u32 v198, s14, 3, v99
	v_lshl_add_u32 v199, s14, 4, v99
	v_lshl_add_u32 v200, s14, 5, v99
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v201, s35, v97
	v_lshl_add_u32 v202, s35, 1, v97
	v_lshl_add_u32 v203, s35, 2, v97
	v_lshl_add_u32 v204, s35, 3, v97
	v_lshl_add_u32 v207, s35, 4, v97
	v_xor_b32_e32 v208, 0x110, v205
	v_xor_b32_e32 v209, 8, v206
	v_xor_b32_e32 v210, 16, v206
	v_xor_b32_e32 v211, 24, v206
	v_or_b32_e32 v212, 0x300, v0
	v_or_b32_e32 v213, 0x700, v0
	v_or_b32_e32 v214, 0xb00, v0
	v_or_b32_e32 v215, 0xf00, v0
	v_or_b32_e32 v216, 0x1300, v0
	v_or_b32_e32 v217, 0x1700, v0
	v_or_b32_e32 v218, 0x1b00, v0
	v_or_b32_e32 v219, 0x1f00, v0
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v233, v3, v2
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v234, 0, v1
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v130, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v135, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_writelane_b32 v255, s38, 5
	s_cselect_b32 s47, -1, 0
	s_add_i32 s48, s95, -1
	.loc	1 1470 43                       ; ragged.py:1470:43
	s_mul_i32 s43, s24, s14
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s96, s24, s15
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s98, 0
	s_mul_i32 s45, s3, s14
	s_mov_b32 s24, s16
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s16, s18
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s29, s23, 0xffff
	s_mov_b32 s28, s22
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s97, s48, 7
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40 is_stmt 1             ; ragged.py:1512:40
	v_add_lshl_u32 v65, v229, s98, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s98, s96
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v66, v230, s98, 1
	v_add_lshl_u32 v67, v231, s98, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v68, v232, s98, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v69, v97, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s8
	v_cndmask_b32_e64 v66, 0x80000000, v66, s92
	v_cndmask_b32_e64 v67, 0x80000000, v67, s93
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	v_cndmask_b32_e64 v68, 0x80000000, v68, s94
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v69, 0x80000000, v69, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	buffer_load_u16 v67, v67, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v69, v69, s[28:31], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v71, v2
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
	s_add_i32 s7, s98, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s7, 7
	s_cmp_lg_u32 s98, s97
	s_mov_b32 s98, s7
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v66
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v1, 16, v65
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v3, 16, v67
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v60, v60, v1 :: v_dual_lshlrev_b32 v65, 16, v68
	v_mul_f32_e32 v57, v57, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v69
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
	ds_store_b32 v233, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v234
	ds_load_b128 v[5:8], v234 offset:16
	ds_load_b128 v[9:12], v234 offset:512
	ds_load_b128 v[13:16], v234 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v65, v77, v65 :: v_dual_fmac_f32 v196, v58, v2
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v197, v57, v1 :: v_dual_fmac_f32 v194, v60, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v195, v59, v3 :: v_dual_fmac_f32 v192, v62, v6
	v_dual_fmac_f32 v193, v61, v5 :: v_dual_fmac_f32 v190, v64, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v191, v63, v7 :: v_dual_fmac_f32 v188, v50, v10
	v_dual_fmac_f32 v189, v49, v9 :: v_dual_fmac_f32 v186, v52, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v187, v51, v11 :: v_dual_fmac_f32 v184, v54, v14
	v_dual_fmac_f32 v185, v53, v13 :: v_dual_fmac_f32 v182, v56, v16
	v_dual_fmac_f32 v183, v55, v15 :: v_dual_fmac_f32 v180, v42, v2
	v_dual_fmac_f32 v181, v41, v1 :: v_dual_fmac_f32 v178, v44, v4
	v_dual_fmac_f32 v179, v43, v3 :: v_dual_fmac_f32 v176, v46, v6
	v_dual_fmac_f32 v177, v45, v5 :: v_dual_fmac_f32 v174, v48, v8
	v_dual_fmac_f32 v175, v47, v7 :: v_dual_fmac_f32 v172, v34, v10
	v_dual_fmac_f32 v173, v33, v9 :: v_dual_fmac_f32 v170, v36, v12
	v_dual_fmac_f32 v171, v35, v11 :: v_dual_fmac_f32 v168, v38, v14
	v_dual_fmac_f32 v169, v37, v13 :: v_dual_fmac_f32 v166, v40, v16
	v_dual_fmac_f32 v167, v39, v15 :: v_dual_fmac_f32 v164, v26, v2
	v_dual_fmac_f32 v165, v25, v1 :: v_dual_fmac_f32 v162, v28, v4
	v_dual_fmac_f32 v163, v27, v3 :: v_dual_fmac_f32 v160, v30, v6
	v_dual_fmac_f32 v161, v29, v5 :: v_dual_fmac_f32 v154, v19, v11
	v_dual_fmac_f32 v159, v31, v7 :: v_dual_fmac_f32 v156, v17, v9
	v_dual_fmac_f32 v157, v32, v8 :: v_dual_fmac_f32 v152, v21, v13
	v_dual_fmac_f32 v155, v18, v10 :: v_dual_fmac_f32 v150, v23, v15
	v_dual_fmac_f32 v153, v20, v12 :: v_dual_fmac_f32 v148, v66, v1
	v_dual_fmac_f32 v151, v22, v14 :: v_dual_fmac_f32 v146, v68, v3
	v_dual_fmac_f32 v149, v24, v16 :: v_dual_fmac_f32 v144, v78, v5
	v_dual_fmac_f32 v147, v67, v2 :: v_dual_fmac_f32 v142, v80, v7
	v_dual_fmac_f32 v145, v69, v4 :: v_dual_fmac_f32 v140, v70, v9
	v_dual_fmac_f32 v143, v79, v6 :: v_dual_fmac_f32 v136, v73, v12
	v_dual_fmac_f32 v141, v81, v8 :: v_dual_fmac_f32 v138, v71, v10
	v_dual_fmac_f32 v137, v72, v11 :: v_dual_fmac_f32 v134, v74, v13
	v_dual_fmac_f32 v139, v75, v14 :: v_dual_fmac_f32 v130, v65, v16
	v_fmac_f32_e32 v135, v76, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s12, s39, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s12, 0, 0x80
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s12, v1
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
	s_and_b32 s14, s12, 0xe0
	s_mov_b32 s12, s38
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s38, s14
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s12, s38
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
	s_add_i32 s22, s12, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s18, s26
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	s_add_i32 s23, s22, s43
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s22, s22, s45
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s23, s23, s35
	v_add_nc_u32_e32 v65, s22, v99
	v_add_nc_u32_e32 v67, s22, v199
	v_add_nc_u32_e32 v69, s22, v200
	v_add_nc_u32_e32 v71, s22, v102
	v_add_nc_u32_e32 v66, s22, v198
	v_add_nc_u32_e32 v68, s22, v100
	v_add_nc_u32_e32 v70, s22, v101
	v_add_nc_u32_e32 v72, s22, v103
	v_add_nc_u32_e32 v235, s23, v122
	v_add_nc_u32_e32 v236, s23, v123
	v_add_nc_u32_e32 v237, s23, v124
	v_add_nc_u32_e32 v238, s23, v125
	v_add_nc_u32_e32 v239, s23, v126
	v_add_nc_u32_e32 v240, s23, v127
	v_add_nc_u32_e32 v241, s23, v128
	v_add_nc_u32_e32 v242, s23, v129
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v73, s23, v97
	v_add_nc_u32_e32 v74, s23, v201
	v_add_nc_u32_e32 v75, s23, v202
	v_add_nc_u32_e32 v76, s23, v104
	v_add_nc_u32_e32 v77, s23, v203
	v_add_nc_u32_e32 v78, s23, v105
	v_add_nc_u32_e32 v79, s23, v106
	v_add_nc_u32_e32 v80, s23, v107
	v_add_nc_u32_e32 v81, s23, v204
	v_add_nc_u32_e32 v82, s23, v108
	v_add_nc_u32_e32 v83, s23, v109
	v_add_nc_u32_e32 v84, s23, v110
	v_add_nc_u32_e32 v85, s23, v111
	v_add_nc_u32_e32 v86, s23, v112
	v_add_nc_u32_e32 v87, s23, v113
	v_add_nc_u32_e32 v88, s23, v114
	v_add_nc_u32_e32 v89, s23, v207
	v_add_nc_u32_e32 v90, s23, v115
	v_add_nc_u32_e32 v91, s23, v116
	v_add_nc_u32_e32 v92, s23, v117
	v_add_nc_u32_e32 v93, s23, v118
	v_add_nc_u32_e32 v94, s23, v119
	v_add_nc_u32_e32 v95, s23, v120
	v_add_nc_u32_e32 v96, s23, v121
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s13
	v_cndmask_b32_e64 v71, 0x80000000, v71, s5
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s4
	v_cndmask_b32_e64 v72, 0x80000000, v72, s6
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v235, 0x80000000, v235, s11
	v_cndmask_b32_e64 v236, 0x80000000, v236, s11
	v_cndmask_b32_e64 v237, 0x80000000, v237, s11
	v_cndmask_b32_e64 v238, 0x80000000, v238, s11
	v_cndmask_b32_e64 v239, 0x80000000, v239, s11
	v_cndmask_b32_e64 v240, 0x80000000, v240, s11
	v_cndmask_b32_e64 v241, 0x80000000, v241, s11
	v_cndmask_b32_e64 v242, 0x80000000, v242, s11
	s_mov_b32 s19, s27
	v_cndmask_b32_e64 v73, 0x80000000, v73, s11
	v_cndmask_b32_e64 v74, 0x80000000, v74, s11
	v_cndmask_b32_e64 v75, 0x80000000, v75, s11
	v_cndmask_b32_e64 v76, 0x80000000, v76, s11
	v_cndmask_b32_e64 v77, 0x80000000, v77, s11
	v_cndmask_b32_e64 v78, 0x80000000, v78, s11
	v_cndmask_b32_e64 v79, 0x80000000, v79, s11
	v_cndmask_b32_e64 v80, 0x80000000, v80, s11
	v_cndmask_b32_e64 v81, 0x80000000, v81, s11
	v_cndmask_b32_e64 v82, 0x80000000, v82, s11
	v_cndmask_b32_e64 v83, 0x80000000, v83, s11
	v_cndmask_b32_e64 v84, 0x80000000, v84, s11
	v_cndmask_b32_e64 v85, 0x80000000, v85, s11
	v_cndmask_b32_e64 v86, 0x80000000, v86, s11
	v_cndmask_b32_e64 v87, 0x80000000, v87, s11
	v_cndmask_b32_e64 v88, 0x80000000, v88, s11
	v_cndmask_b32_e64 v89, 0x80000000, v89, s11
	v_cndmask_b32_e64 v90, 0x80000000, v90, s11
	v_cndmask_b32_e64 v91, 0x80000000, v91, s11
	v_cndmask_b32_e64 v92, 0x80000000, v92, s11
	v_cndmask_b32_e64 v93, 0x80000000, v93, s11
	v_cndmask_b32_e64 v94, 0x80000000, v94, s11
	v_cndmask_b32_e64 v95, 0x80000000, v95, s11
	v_cndmask_b32_e64 v96, 0x80000000, v96, s11
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x7
	buffer_load_u8 v65, v65, s[24:27], 0 offen
	buffer_load_u8 v67, v67, s[24:27], 0 offen
	buffer_load_u8 v69, v69, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	buffer_load_u8 v72, v72, s[24:27], 0 offen
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	buffer_load_u8 v68, v68, s[24:27], 0 offen
	buffer_load_u8 v66, v66, s[24:27], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x1f
	buffer_load_u8 v243, v73, s[16:19], 0 offen
	buffer_load_u8 v244, v74, s[16:19], 0 offen
	buffer_load_u8 v245, v75, s[16:19], 0 offen
	buffer_load_u8 v246, v77, s[16:19], 0 offen
	buffer_load_u8 v247, v78, s[16:19], 0 offen
	buffer_load_u8 v248, v79, s[16:19], 0 offen
	buffer_load_u8 v249, v81, s[16:19], 0 offen
	buffer_load_u8 v250, v82, s[16:19], 0 offen
	buffer_load_u8 v251, v83, s[16:19], 0 offen
	buffer_load_u8 v252, v85, s[16:19], 0 offen
	buffer_load_u8 v253, v86, s[16:19], 0 offen
	buffer_load_u8 v254, v87, s[16:19], 0 offen
	buffer_load_u8 v158, v89, s[16:19], 0 offen
	buffer_load_u8 v133, v90, s[16:19], 0 offen
	buffer_load_u8 v131, v91, s[16:19], 0 offen
	buffer_load_u8 v132, v93, s[16:19], 0 offen
	buffer_load_u8 v98, v94, s[16:19], 0 offen
	buffer_load_u8 v221, v95, s[16:19], 0 offen
	buffer_load_u8 v235, v235, s[16:19], 0 offen
	buffer_load_u8 v236, v236, s[16:19], 0 offen
	buffer_load_u8 v237, v237, s[16:19], 0 offen
	buffer_load_u8 v239, v239, s[16:19], 0 offen
	buffer_load_u8 v240, v240, s[16:19], 0 offen
	buffer_load_u8 v241, v241, s[16:19], 0 offen
	buffer_load_u8 v222, v80, s[16:19], 0 offen
	buffer_load_u8 v223, v76, s[16:19], 0 offen
	buffer_load_u8 v224, v88, s[16:19], 0 offen
	buffer_load_u8 v225, v84, s[16:19], 0 offen
	buffer_load_u8 v226, v96, s[16:19], 0 offen
	buffer_load_u8 v227, v92, s[16:19], 0 offen
	buffer_load_u8 v242, v242, s[16:19], 0 offen
	buffer_load_u8 v238, v238, s[16:19], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v73, 0, v205
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v228, 0, v0
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s12, s12, 32
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(39)
	ds_store_b8 v73, v65
	s_waitcnt vmcnt(38)
	ds_store_b8 v73, v67 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v73, v69 offset:1024
	v_add_nc_u32_e32 v65, 0, v208
	s_waitcnt vmcnt(36)
	ds_store_b8 v73, v71 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v65, v66
	ds_store_b8 v65, v68 offset:512
	ds_store_b8 v65, v70 offset:1024
	ds_store_b8 v65, v72 offset:1536
	v_add_nc_u32_e32 v65, 0, v206
	v_add_nc_u32_e32 v66, 0, v209
	v_add_nc_u32_e32 v67, 0, v210
	v_add_nc_u32_e32 v68, 0, v211
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[93:96], v65 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v66 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v67 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v67 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v68 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v68 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v228, v243
	s_waitcnt vmcnt(30)
	ds_store_b8 v228, v244 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b8 v228, v245 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b8 v228, v246 offset:1024
	s_waitcnt vmcnt(27)
	ds_store_b8 v228, v247 offset:1280
	s_waitcnt vmcnt(26)
	ds_store_b8 v228, v248 offset:1536
	s_waitcnt vmcnt(25)
	ds_store_b8 v228, v249 offset:2048
	s_waitcnt vmcnt(24)
	ds_store_b8 v228, v250 offset:2304
	s_waitcnt vmcnt(23)
	ds_store_b8 v228, v251 offset:2560
	s_waitcnt vmcnt(22)
	ds_store_b8 v228, v252 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b8 v228, v253 offset:3328
	s_waitcnt vmcnt(20)
	ds_store_b8 v228, v254 offset:3584
	s_waitcnt vmcnt(19)
	ds_store_b8 v228, v158 offset:4096
	s_waitcnt vmcnt(18)
	ds_store_b8 v228, v133 offset:4352
	s_waitcnt vmcnt(17)
	ds_store_b8 v228, v131 offset:4608
	s_waitcnt vmcnt(16)
	ds_store_b8 v228, v132 offset:5120
	s_waitcnt vmcnt(15)
	ds_store_b8 v228, v98 offset:5376
	s_waitcnt vmcnt(14)
	ds_store_b8 v228, v221 offset:5632
	s_waitcnt vmcnt(13)
	ds_store_b8 v228, v235 offset:6144
	s_waitcnt vmcnt(12)
	ds_store_b8 v228, v236 offset:6400
	s_waitcnt vmcnt(11)
	ds_store_b8 v228, v237 offset:6656
	s_waitcnt vmcnt(10)
	ds_store_b8 v228, v239 offset:7168
	s_waitcnt vmcnt(9)
	ds_store_b8 v228, v240 offset:7424
	s_waitcnt vmcnt(8)
	ds_store_b8 v228, v241 offset:7680
	v_add_nc_u32_e32 v98, 0, v212
	v_add_nc_u32_e32 v131, 0, v213
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s12, s14
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(6)
	ds_store_b8 v98, v223
	ds_store_b8 v131, v222
	v_add_nc_u32_e32 v98, 0, v214
	v_add_nc_u32_e32 v131, 0, v215
	s_waitcnt vmcnt(4)
	ds_store_b8 v98, v225
	ds_store_b8 v131, v224
	v_add_nc_u32_e32 v98, 0, v216
	v_add_nc_u32_e32 v131, 0, v217
	s_waitcnt vmcnt(2)
	ds_store_b8 v98, v227
	ds_store_b8 v131, v226
	v_add_nc_u32_e32 v98, 0, v218
	v_add_nc_u32_e32 v131, 0, v219
	s_waitcnt vmcnt(0)
	ds_store_b8 v98, v238
	ds_store_b8 v131, v242
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v98, v220 offset:1280
	ds_load_u8 v131, v220 offset:1024
	ds_load_u8 v132, v220 offset:1920
	ds_load_u8 v133, v220 offset:1664
	ds_load_u8 v158, v220 offset:1408
	ds_load_u8 v221, v220 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v131, v98, 0xc0c0004
	ds_load_u8 v131, v220 offset:1792
	ds_load_u8 v222, v220 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v222, v131, 0xc0c0004
	ds_load_u8 v222, v220 offset:256
	ds_load_u8 v223, v220
	ds_load_u8 v224, v220 offset:896
	ds_load_u8 v225, v220 offset:640
	ds_load_u8 v226, v220 offset:384
	ds_load_u8 v227, v220 offset:128
	v_lshl_or_b32 v236, v131, 16, v98
	v_perm_b32 v98, v221, v158, 0xc0c0004
	v_perm_b32 v131, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v238, v131, 16, v98
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v223, v220 offset:768
	ds_load_u8 v228, v220 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v133, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v227, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v237, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[49:56], v[237:238], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[237:238], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[237:238], v[91:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[237:238], v[95:96], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v223, v228, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v235, v223, 16, v222
	v_wmma_i32_16x16x16_iu4 v[57:64], v[235:236], v[93:94], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[235:236], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[235:236], v[91:92], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v220 offset:3328
	ds_load_u8 v90, v220 offset:3072
	ds_load_u8 v91, v220 offset:3968
	ds_load_u8 v92, v220 offset:3712
	ds_load_u8 v93, v220 offset:3456
	ds_load_u8 v94, v220 offset:3200
	v_wmma_i32_16x16x16_iu4 v[41:48], v[235:236], v[95:96], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v220 offset:3840
	ds_load_u8 v95, v220 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v91, 16, v93
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	ds_load_u8 v95, v220 offset:2304
	ds_load_u8 v96, v220 offset:2048
	ds_load_u8 v98, v220 offset:2944
	ds_load_u8 v131, v220 offset:2688
	ds_load_u8 v132, v220 offset:2432
	ds_load_u8 v133, v220 offset:2176
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v220 offset:2816
	ds_load_u8 v158, v220 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v158, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v89, v96, 16, v95
	v_perm_b32 v95, v131, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[85:86], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v91, v95, 16, v94
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[87:88], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[83:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v220 offset:5376
	ds_load_u8 v82, v220 offset:5120
	ds_load_u8 v83, v220 offset:6016
	ds_load_u8 v84, v220 offset:5760
	ds_load_u8 v85, v220 offset:5504
	ds_load_u8 v86, v220 offset:5248
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[87:88], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v220 offset:5888
	ds_load_u8 v87, v220 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v220 offset:4352
	ds_load_u8 v88, v220 offset:4096
	ds_load_u8 v89, v220 offset:4992
	ds_load_u8 v90, v220 offset:4736
	ds_load_u8 v91, v220 offset:4480
	ds_load_u8 v92, v220 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v220 offset:4864
	ds_load_u8 v93, v220 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v93, v88, 0xc0c0004
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
	ds_load_u8 v73, v220 offset:7424
	ds_load_u8 v74, v220 offset:7168
	ds_load_u8 v75, v220 offset:8064
	ds_load_u8 v76, v220 offset:7808
	ds_load_u8 v77, v220 offset:7552
	ds_load_u8 v78, v220 offset:7296
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v220 offset:7936
	ds_load_u8 v79, v220 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v220 offset:6400
	ds_load_u8 v80, v220 offset:6144
	ds_load_u8 v81, v220 offset:7040
	ds_load_u8 v82, v220 offset:6784
	ds_load_u8 v83, v220 offset:6528
	ds_load_u8 v84, v220 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v220 offset:6912
	ds_load_u8 v85, v220 offset:6656
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
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s14, s95, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s14, s14, 0x80
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s12, s14
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_and_b32_e32 v65, 31, v0
	s_add_i32 s18, s12, s3
	s_mov_b32 s91, s8
	s_or_b32 s19, s18, 1
	s_or_b32 s22, s18, 2
	v_or_b32_e32 v65, s18, v65
	s_or_b32 s23, s18, 3
	s_or_b32 s30, s18, 4
	s_or_b32 s31, s18, 5
	s_or_b32 s49, s18, 6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v66, s3, v65
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s50, s18, 7
	s_or_b32 s51, s18, 8
	s_or_b32 s52, s18, 9
	s_or_b32 s53, s18, 10
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s12, s14, v66
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v66, off, off
	scratch_load_b32 v68, off, off offset:20
	scratch_load_b32 v70, off, off offset:4
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s54, s18, 11
	s_or_b32 s55, s18, 12
	s_or_b32 s56, s18, 13
	s_or_b32 s57, s18, 14
	s_or_b32 s58, s18, 15
	s_or_b32 s60, s18, 16
	s_or_b32 s61, s18, 17
	s_or_b32 s62, s18, 18
	s_or_b32 s65, s18, 19
	s_or_b32 s33, s18, 20
	s_or_b32 s7, s18, 21
	s_or_b32 s8, s18, 22
	s_or_b32 s9, s18, 23
	s_or_b32 s10, s18, 24
	s_or_b32 s42, s18, 25
	s_or_b32 s44, s18, 26
	s_or_b32 s40, s18, 27
	s_or_b32 s15, s18, 28
	s_or_b32 s36, s18, 29
	s_or_b32 s37, s18, 30
	s_or_b32 s41, s18, 31
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s38, s19, s3
	s_sub_i32 s59, s22, s3
	s_sub_i32 s63, s23, s3
	s_sub_i32 s64, s30, s3
	s_sub_i32 s66, s31, s3
	s_sub_i32 s67, s49, s3
	s_sub_i32 s68, s50, s3
	s_sub_i32 s69, s51, s3
	s_sub_i32 s70, s52, s3
	s_sub_i32 s71, s53, s3
	s_sub_i32 s72, s54, s3
	s_sub_i32 s73, s55, s3
	s_sub_i32 s74, s56, s3
	s_sub_i32 s75, s57, s3
	s_sub_i32 s76, s58, s3
	s_sub_i32 s77, s60, s3
	s_sub_i32 s80, s61, s3
	s_sub_i32 s82, s62, s3
	s_sub_i32 s83, s65, s3
	s_sub_i32 s84, s33, s3
	s_sub_i32 s85, s7, s3
	s_sub_i32 s86, s8, s3
	s_sub_i32 s87, s9, s3
	s_sub_i32 s88, s10, s3
	s_sub_i32 s89, s42, s3
	s_sub_i32 s46, s44, s3
	s_sub_i32 s78, s40, s3
	s_sub_i32 s79, s15, s3
	s_sub_i32 s81, s36, s3
	s_sub_i32 s90, s37, s3
	s_sub_i32 s3, s41, s3
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s38, s14
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v224, 0, v0
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s59, s14
	scratch_load_b32 v69, off, off offset:28 ; 4-byte Folded Reload
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s63, s14
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s64, s14
	v_writelane_b32 v255, s59, 6
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s66, s14
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s67, s14
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s68, s14
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s69, s14
	v_writelane_b32 v255, s63, 7
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s70, s14
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s71, s14
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s72, s14
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s73, s14
	v_writelane_b32 v255, s63, 8
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s74, s14
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s75, s14
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s76, s14
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s77, s14
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s80, s14
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s82, s14
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s83, s14
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s84, s14
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s85, s14
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s86, s14
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s87, s14
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s88, s14
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s89, s14
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s46, s14
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s78, s14
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s79, s14
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s81, s14
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s90, s14
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s3, s14
	s_cselect_b32 s84, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s18, s48
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s19, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s19, s27
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s22, s48
	s_cselect_b32 s22, -1, 0
	s_cmp_eq_u32 s23, s48
	s_cselect_b32 s3, -1, 0
	s_cmp_eq_u32 s30, s48
	v_writelane_b32 v255, s3, 9
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s31, s48
	s_cselect_b32 s23, -1, 0
	s_cmp_eq_u32 s49, s48
	s_cselect_b32 s31, -1, 0
	s_cmp_eq_u32 s50, s48
	s_cselect_b32 s3, -1, 0
	s_cmp_eq_u32 s51, s48
	v_writelane_b32 v255, s3, 10
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s52, s48
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s53, s48
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s54, s48
	s_cselect_b32 s3, -1, 0
	s_cmp_eq_u32 s55, s48
	v_writelane_b32 v255, s3, 11
	s_cselect_b32 s30, -1, 0
	s_cmp_eq_u32 s56, s48
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s57, s48
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s58, s48
	s_cselect_b32 s3, -1, 0
	s_cmp_eq_u32 s60, s48
	v_writelane_b32 v255, s3, 12
	s_cselect_b32 s90, -1, 0
	s_cmp_eq_u32 s61, s48
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s62, s48
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s65, s48
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s33, s48
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s7, s48
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s8, s48
	s_mov_b32 s8, s91
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s9, s48
	s_cselect_b32 s91, -1, 0
	s_cmp_eq_u32 s10, s48
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s42, s48
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s44, s48
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s40, s48
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s15, s48
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s36, s48
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s37, s48
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s41, s48
	s_cselect_b32 s52, -1, 0
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s12
	s_and_b32 s14, s2, s12
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v66, v65, v66
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, v65, v68
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, v65, v70
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s48, v65
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v67, v66, s[24:27], 0 offen
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, v65, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v66, 0x80000000, v66, s14
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s14, s4, s12
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v68, 0x80000000, v68, s14
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s14, s6, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s14
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s14, s0, s12
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v70, 0x80000000, v70, s14
	s_clause 0x3
	buffer_load_u8 v69, v69, s[24:27], 0 offen
	buffer_load_u8 v68, v68, s[24:27], 0 offen
	buffer_load_u8 v71, v66, s[24:27], 0 offen
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	v_and_b16 v66.l, v67.l, 15
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s14, s3, s47
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s1, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v66.l, v67.l, v66.l, s14
	scratch_load_b32 v67, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, v65, v67
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, s13, s12
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v67, v67, s[24:27], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v66.h, v67.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v66.h, v67.l, v66.h, s14
	scratch_load_b32 v67, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, v65, v67
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, s5, s12
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v72, v67, s[24:27], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v67.l, v72.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v67.l, v72.l, v67.l, s14
	scratch_load_b32 v72, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, v65, v72
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s3, s18, s43
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s18, s26
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s7, s3, s35
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s38
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v72, v65, s[24:27], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v65.h, v70.l, 15
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v73, s7, v202
	v_add_nc_u32_e32 v74, s7, v203
	v_add_nc_u32_e32 v75, s7, v105
	v_add_nc_u32_e32 v76, s7, v106
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.h, v70.l, v65.h, s14
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v70, s7, v97
	v_add_nc_u32_e32 v77, s7, v204
	v_add_nc_u32_e32 v78, s7, v108
	v_add_nc_u32_e32 v79, s7, v109
	v_add_nc_u32_e32 v80, s7, v111
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v70, 0x80000000, v70, s11
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v81, s7, v112
	v_add_nc_u32_e32 v82, s7, v113
	v_add_nc_u32_e32 v83, s7, v207
	v_add_nc_u32_e32 v84, s7, v115
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v70, v70, s[16:19], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v85, s7, v116
	v_add_nc_u32_e32 v86, s7, v118
	v_add_nc_u32_e32 v87, s7, v119
	v_add_nc_u32_e32 v88, s7, v120
	v_add_nc_u32_e32 v89, s7, v122
	v_add_nc_u32_e32 v90, s7, v123
	v_add_nc_u32_e32 v91, s7, v124
	v_add_nc_u32_e32 v92, s7, v126
	v_add_nc_u32_e32 v93, s7, v127
	v_add_nc_u32_e32 v94, s7, v128
	v_add_nc_u32_e32 v95, s7, v107
	v_add_nc_u32_e32 v96, s7, v104
	v_readlane_b32 s38, v255, 5
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.l, v72.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v72.l, v65.l, s14
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v72, s7, v201
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, vcc_hi
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v73, 0x80000000, v73, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s59
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v72, v72, s[16:19], 0 offen
	v_cndmask_b32_e64 v74, 0x80000000, v74, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s104
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v73, v73, s[16:19], 0 offen
	v_cndmask_b32_e64 v75, 0x80000000, v75, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s102
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v74, v74, s[16:19], 0 offen
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s103
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v75, v75, s[16:19], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s101
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v76, v76, s[16:19], 0 offen
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s99
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v77, v77, s[16:19], 0 offen
	v_cndmask_b32_e64 v79, 0x80000000, v79, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s100
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v78, v78, s[16:19], 0 offen
	v_cndmask_b32_e64 v80, 0x80000000, v80, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s63
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v79, v79, s[16:19], 0 offen
	v_cndmask_b32_e64 v81, 0x80000000, v81, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s66
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v80, v80, s[16:19], 0 offen
	v_cndmask_b32_e64 v82, 0x80000000, v82, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s64
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v81, v81, s[16:19], 0 offen
	v_cndmask_b32_e64 v83, 0x80000000, v83, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s67
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v82, v82, s[16:19], 0 offen
	v_cndmask_b32_e64 v84, 0x80000000, v84, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s69
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v83, v83, s[16:19], 0 offen
	v_cndmask_b32_e64 v85, 0x80000000, v85, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s68
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v84, v84, s[16:19], 0 offen
	v_cndmask_b32_e64 v86, 0x80000000, v86, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s70
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v85, v85, s[16:19], 0 offen
	v_cndmask_b32_e64 v87, 0x80000000, v87, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s71
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v86, v86, s[16:19], 0 offen
	v_cndmask_b32_e64 v88, 0x80000000, v88, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s72
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v87, v87, s[16:19], 0 offen
	v_cndmask_b32_e64 v89, 0x80000000, v89, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s89
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v88, v88, s[16:19], 0 offen
	v_cndmask_b32_e64 v90, 0x80000000, v90, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s87
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v89, v89, s[16:19], 0 offen
	v_cndmask_b32_e64 v91, 0x80000000, v91, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s88
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v90, v90, s[16:19], 0 offen
	v_cndmask_b32_e64 v92, 0x80000000, v92, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s86
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v91, v91, s[16:19], 0 offen
	v_cndmask_b32_e64 v93, 0x80000000, v93, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s85
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v92, v92, s[16:19], 0 offen
	buffer_load_u8 v93, v93, s[16:19], 0 offen
	v_cndmask_b32_e64 v94, 0x80000000, v94, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	v_readlane_b32 s3, v255, 7
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v94, v94, s[16:19], 0 offen
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	v_readlane_b32 s3, v255, 6
	s_and_b32 s3, s11, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	s_clause 0x1
	buffer_load_u8 v98, v95, s[16:19], 0 offen
	buffer_load_u8 v131, v96, s[16:19], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v95, s7, v114
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s73
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v96, s7, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	v_readlane_b32 s3, v255, 8
	s_and_b32 s3, s11, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	s_clause 0x1
	buffer_load_u8 v132, v95, s[16:19], 0 offen
	buffer_load_u8 v133, v96, s[16:19], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v95, s7, v121
	v_add_nc_u32_e32 v96, s7, v117
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s83
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s80
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	s_clause 0x1
	buffer_load_u8 v158, v95, s[16:19], 0 offen
	buffer_load_u8 v221, v96, s[16:19], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v95, s7, v129
	v_add_nc_u32_e32 v96, s7, v125
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s84
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s82
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	s_clause 0x1
	buffer_load_u8 v222, v95, s[16:19], 0 offen
	buffer_load_u8 v223, v96, s[16:19], 0 offen
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v95, 0, v205
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v95, v66
	ds_store_b8_d16_hi v95, v66 offset:512
	ds_store_b8 v95, v67 offset:1024
	ds_store_b8 v95, v65 offset:1536
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	v_and_b16 v65.l, v71.l, 15
	v_and_b16 v66.l, v68.l, 15
	v_and_b16 v66.h, v69.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v67, 0, v208
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s77, s47
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v71.l, v65.l, s14
	v_cndmask_b16 v66.l, v68.l, v66.l, s14
	v_cndmask_b16 v66.h, v69.l, v66.h, s14
	ds_store_b8_d16_hi v67, v65
	ds_store_b8 v67, v65 offset:512
	ds_store_b8 v67, v66 offset:1024
	ds_store_b8_d16_hi v67, v66 offset:1536
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(31)
	v_and_b16 v65.l, v70.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v66, 0, v209
	v_add_nc_u32_e32 v67, 0, v210
	v_add_nc_u32_e32 v68, 0, v211
	s_waitcnt lgkmcnt(0)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v235.l, v70.l, v65.l, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s75, s47
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_barrier
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(30)
	v_and_b16 v65.l, v72.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v235.h, v72.l, v65.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(29)
	v_and_b16 v65.l, v73.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s22, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v236.l, v73.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(28)
	v_and_b16 v65.l, v74.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s76, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v236.h, v74.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(27)
	v_and_b16 v65.l, v75.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s23, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v237.l, v75.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(26)
	v_and_b16 v65.l, v76.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s31, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v237.h, v76.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(25)
	v_and_b16 v65.l, v77.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s74, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v238.l, v77.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(24)
	v_and_b16 v65.l, v78.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s50, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v238.h, v78.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(23)
	v_and_b16 v65.l, v79.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s79, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v239.l, v79.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(22)
	v_and_b16 v65.l, v80.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s30, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v239.h, v80.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(21)
	v_and_b16 v65.l, v81.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s81, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v240.l, v81.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(20)
	v_and_b16 v65.l, v82.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s46, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v240.h, v82.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(19)
	v_and_b16 v65.l, v83.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s90, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v241.l, v83.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(18)
	v_and_b16 v65.l, v84.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s78, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v241.h, v84.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(17)
	v_and_b16 v65.l, v85.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s60, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v242.l, v85.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(16)
	v_and_b16 v65.l, v86.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s65, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v242.h, v86.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v65.l, v87.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s61, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v243.l, v87.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(14)
	v_and_b16 v65.l, v88.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s56, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v243.h, v88.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v65.l, v89.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s62, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v244.l, v89.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v65.l, v90.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s57, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v244.h, v90.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(11)
	v_and_b16 v65.l, v91.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s54, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v245.l, v91.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v65.l, v92.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s58, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v245.h, v92.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v65.l, v93.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s55, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v246.l, v93.l, v65.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v65.l, v94.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s53, s47
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v246.h, v94.l, v65.l, s3
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v65, 0, v206
	.loc	1 1495 36                       ; ragged.py:1495:36
	v_readlane_b32 s3, v255, 9
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_load_2addr_stride64_b64 v[93:96], v65 offset1:1
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
	ds_store_b8 v224, v235
	ds_store_b8_d16_hi v224, v235 offset:256
	ds_store_b8 v224, v236 offset:512
	ds_store_b8_d16_hi v224, v236 offset:1024
	ds_store_b8 v224, v237 offset:1280
	ds_store_b8_d16_hi v224, v237 offset:1536
	ds_store_b8 v224, v238 offset:2048
	ds_store_b8_d16_hi v224, v238 offset:2304
	ds_store_b8 v224, v239 offset:2560
	ds_store_b8_d16_hi v224, v239 offset:3072
	ds_store_b8 v224, v240 offset:3328
	ds_store_b8_d16_hi v224, v240 offset:3584
	ds_store_b8 v224, v241 offset:4096
	ds_store_b8_d16_hi v224, v241 offset:4352
	ds_store_b8 v224, v242 offset:4608
	ds_store_b8_d16_hi v224, v242 offset:5120
	ds_store_b8 v224, v243 offset:5376
	ds_store_b8_d16_hi v224, v243 offset:5632
	ds_store_b8 v224, v244 offset:6144
	ds_store_b8_d16_hi v224, v244 offset:6400
	ds_store_b8 v224, v245 offset:6656
	ds_store_b8_d16_hi v224, v245 offset:7168
	ds_store_b8 v224, v246 offset:7424
	ds_store_b8_d16_hi v224, v246 offset:7680
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v235.l, v131.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s3, s47
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v235.h, v98.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v235.l, v131.l, v235.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	v_readlane_b32 s3, v255, 10
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v131, 0, v213
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s47
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v235.h, v98.l, v235.h, s3
	v_add_nc_u32_e32 v98, 0, v212
	.loc	1 1495 36                       ; ragged.py:1495:36
	v_readlane_b32 s3, v255, 11
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_store_b8_d16_hi v131, v235
	ds_store_b8 v98, v235
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v235.l, v133.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s3, s47
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v235.h, v132.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_add_nc_u32_e32 v98, 0, v214
	v_add_nc_u32_e32 v131, 0, v215
	v_cndmask_b16 v235.l, v133.l, v235.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	v_readlane_b32 s3, v255, 12
	s_and_b32 s3, s3, s47
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v235.h, v132.l, v235.h, s3
	ds_store_b8 v98, v235
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v235.l, v221.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s49, s47
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v98, 0, v216
	ds_store_b8_d16_hi v131, v235
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v235.h, v158.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v235.l, v221.l, v235.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s91, s47
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v131, 0, v217
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v235.h, v158.l, v235.h, s3
	ds_store_b8 v98, v235
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v235.l, v223.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s51, s47
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v98, 0, v218
	ds_store_b8_d16_hi v131, v235
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v235.h, v222.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v235.l, v223.l, v235.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s52, s47
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v131, 0, v219
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v235.h, v222.l, v235.h, s3
	ds_store_b8 v98, v235
	ds_store_b8_d16_hi v131, v235
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v98, v220 offset:1280
	ds_load_u8 v131, v220 offset:1024
	ds_load_u8 v132, v220 offset:1920
	ds_load_u8 v133, v220 offset:1664
	ds_load_u8 v158, v220 offset:1408
	ds_load_u8 v221, v220 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v131, v98, 0xc0c0004
	ds_load_u8 v131, v220 offset:1792
	ds_load_u8 v222, v220 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v222, v131, 0xc0c0004
	ds_load_u8 v222, v220 offset:256
	ds_load_u8 v223, v220
	ds_load_u8 v224, v220 offset:896
	ds_load_u8 v225, v220 offset:640
	ds_load_u8 v226, v220 offset:384
	ds_load_u8 v227, v220 offset:128
	v_lshl_or_b32 v236, v131, 16, v98
	v_perm_b32 v98, v221, v158, 0xc0c0004
	v_perm_b32 v131, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v238, v131, 16, v98
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v223, v220 offset:768
	ds_load_u8 v228, v220 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v133, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v227, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v237, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[49:56], v[237:238], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[237:238], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[237:238], v[91:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[237:238], v[95:96], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v223, v228, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v235, v223, 16, v222
	v_wmma_i32_16x16x16_iu4 v[57:64], v[235:236], v[93:94], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[235:236], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[235:236], v[91:92], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v220 offset:3328
	ds_load_u8 v90, v220 offset:3072
	ds_load_u8 v91, v220 offset:3968
	ds_load_u8 v92, v220 offset:3712
	ds_load_u8 v93, v220 offset:3456
	ds_load_u8 v94, v220 offset:3200
	v_wmma_i32_16x16x16_iu4 v[41:48], v[235:236], v[95:96], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v220 offset:3840
	ds_load_u8 v95, v220 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v91, 16, v93
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	ds_load_u8 v95, v220 offset:2304
	ds_load_u8 v96, v220 offset:2048
	ds_load_u8 v98, v220 offset:2944
	ds_load_u8 v131, v220 offset:2688
	ds_load_u8 v132, v220 offset:2432
	ds_load_u8 v133, v220 offset:2176
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v220 offset:2816
	ds_load_u8 v158, v220 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v158, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v89, v96, 16, v95
	v_perm_b32 v95, v131, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[85:86], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v91, v95, 16, v94
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[87:88], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[83:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v220 offset:5376
	ds_load_u8 v82, v220 offset:5120
	ds_load_u8 v83, v220 offset:6016
	ds_load_u8 v84, v220 offset:5760
	ds_load_u8 v85, v220 offset:5504
	ds_load_u8 v86, v220 offset:5248
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[87:88], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v220 offset:5888
	ds_load_u8 v87, v220 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v220 offset:4352
	ds_load_u8 v88, v220 offset:4096
	ds_load_u8 v89, v220 offset:4992
	ds_load_u8 v90, v220 offset:4736
	ds_load_u8 v91, v220 offset:4480
	ds_load_u8 v92, v220 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v220 offset:4864
	ds_load_u8 v93, v220 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v93, v88, 0xc0c0004
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
	ds_load_u8 v73, v220 offset:7424
	ds_load_u8 v74, v220 offset:7168
	ds_load_u8 v75, v220 offset:8064
	ds_load_u8 v76, v220 offset:7808
	ds_load_u8 v77, v220 offset:7552
	ds_load_u8 v78, v220 offset:7296
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v220 offset:7936
	ds_load_u8 v79, v220 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v220 offset:6400
	ds_load_u8 v80, v220 offset:6144
	ds_load_u8 v81, v220 offset:7040
	ds_load_u8 v82, v220 offset:6784
	ds_load_u8 v83, v220 offset:6528
	ds_load_u8 v84, v220 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v220 offset:6912
	ds_load_u8 v85, v220 offset:6656
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
.LBB0_11:                               ; %Flow458
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_readlane_b32 s8, v255, 0
	v_and_b32_e32 v32, 0x7f, v0
	v_readlane_b32 s9, v255, 1
	v_readlane_b32 s7, v255, 3
	v_readlane_b32 s5, v255, 2
	v_readlane_b32 s10, v255, 4
	v_and_b32_e32 v41, 0x80, v0
	v_and_b32_e32 v40, 15, v0
	v_and_b32_e32 v38, 0xe0, v0
.LBB0_12:                               ; %._crit_edge25
	.loc	1 1532 33 is_stmt 1             ; ragged.py:1532:33
	v_bfe_u32 v2, v196, 16, 1
	v_bfe_u32 v3, v195, 16, 1
	v_cmp_o_f32_e64 s0, v196, v196
	v_bfe_u32 v1, v197, 16, 1
	v_cmp_o_f32_e64 s1, v195, v195
	v_add3_u32 v2, v196, v2, 0x7fff
	v_add3_u32 v3, v195, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_add3_u32 v1, v197, v1, 0x7fff
	v_bfe_u32 v4, v194, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v192, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v3.h, s1
	v_cmp_o_f32_e64 s1, v192, v192
	v_cndmask_b16 v3.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v4, v194, v4, 0x7fff
	v_add3_u32 v2, v192, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_bfe_u32 v1, v193, 16, 1
	v_cmp_o_f32_e64 s0, v193, v193
	v_bfe_u32 v6, v190, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v189, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v191, 16, 1
	v_cmp_o_f32_e64 s1, v189, v189
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	v_add3_u32 v2, v189, v2, 0x7fff
	v_add3_u32 v1, v193, v1, 0x7fff
	v_add3_u32 v4, v191, v4, 0x7fff
	v_add3_u32 v6, v190, v6, 0x7fff
	v_bfe_u32 v14, v160, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v186, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v188, 16, 1
	v_cmp_o_f32_e64 s1, v186, v186
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	v_add3_u32 v2, v186, v2, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_add3_u32 v4, v188, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v190, v190
	v_bfe_u32 v20, v155, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v183, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v185, 16, 1
	v_cmp_o_f32_e64 s1, v183, v183
	v_cndmask_b16 v15.l, 0x7fff, v6.h, s0
	v_add3_u32 v2, v183, v2, 0x7fff
	v_bfe_u32 v6, v187, 16, 1
	v_add3_u32 v4, v185, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_cmp_o_f32_e64 s0, v187, v187
	v_cndmask_b16 v29.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v180, 16, 1
	v_add3_u32 v6, v187, v6, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v182, 16, 1
	v_cmp_o_f32_e64 s1, v180, v180
	v_add3_u32 v2, v180, v2, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v184, 16, 1
	v_add3_u32 v4, v182, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_cndmask_b16 v5.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v177, 16, 1
	v_add3_u32 v6, v184, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v184, v184
	v_cndmask_b16 v33.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v179, 16, 1
	v_add3_u32 v2, v177, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v177, v177
	v_cndmask_b16 v27.l, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v181, 16, 1
	v_add3_u32 v4, v179, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v174, 16, 1
	v_add3_u32 v6, v181, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v181, v181
	v_cndmask_b16 v7.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v176, 16, 1
	v_add3_u32 v2, v174, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v174, v174
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v178, 16, 1
	v_add3_u32 v4, v176, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_cndmask_b16 v15.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v171, 16, 1
	v_add3_u32 v6, v178, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v178, v178
	v_cndmask_b16 v11.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v173, 16, 1
	v_add3_u32 v2, v171, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v171, v171
	v_cndmask_b16 v9.h, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v175, 16, 1
	v_add3_u32 v4, v173, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_cndmask_b16 v21.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v168, 16, 1
	v_add3_u32 v6, v175, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v175, v175
	v_cndmask_b16 v17.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v170, 16, 1
	v_add3_u32 v2, v168, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v168, v168
	v_cndmask_b16 v13.h, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v172, 16, 1
	v_add3_u32 v4, v170, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_cndmask_b16 v27.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v165, 16, 1
	v_add3_u32 v6, v172, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v172, v172
	v_cndmask_b16 v23.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v167, 16, 1
	v_add3_u32 v2, v165, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v165, v165
	v_cndmask_b16 v19.h, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v169, 16, 1
	v_add3_u32 v4, v167, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v169, v169
	v_cndmask_b16 v4.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v162, 16, 1
	v_add3_u32 v6, v169, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v162, v162
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_bfe_u32 v8, v164, 16, 1
	v_add3_u32 v2, v162, v2, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v166, 16, 1
	v_cmp_o_f32_e64 s0, v166, v166
	v_add3_u32 v14, v160, v14, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v159, 16, 1
	v_add3_u32 v6, v166, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v159, v159
	v_add3_u32 v20, v155, v20, 0x7fff
	v_bfe_u32 v26, v152, 16, 1
	v_add3_u32 v2, v159, v2, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v6.h, s0
	v_bfe_u32 v6, v163, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v8, v164, v8, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v2.h, s1
	v_cmp_o_f32_e64 s1, v155, v155
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_bfe_u32 v12, v161, 16, 1
	v_add3_u32 v6, v163, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v163, v163
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s1
	v_add3_u32 v26, v152, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v152, v152
	v_bfe_u32 v31, v149, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v12, v161, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_bfe_u32 v16, v157, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v6.h, s0
	v_cmp_o_f32_e64 s0, v160, v160
	v_bfe_u32 v18, v156, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_add3_u32 v31, v149, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v149, v149
	v_cndmask_b16 v2.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v16, v157, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_bfe_u32 v22, v154, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v14.h, s0
	v_add3_u32 v18, v156, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v156, v156
	v_bfe_u32 v24, v153, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v146, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_add3_u32 v22, v154, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_bfe_u32 v28, v151, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s0
	v_add3_u32 v24, v153, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v153, v153
	v_bfe_u32 v30, v150, 16, 1
	v_add3_u32 v31, v146, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v146, v146
	v_cndmask_b16 v22.l, 0x7fff, v22.h, vcc_lo
	v_add3_u32 v28, v151, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_bfe_u32 v35, v148, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s0
	v_add3_u32 v30, v150, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v150, v150
	v_bfe_u32 v36, v147, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v143, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v35, v148, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s0
	v_add3_u32 v36, v147, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v147, v147
	v_add3_u32 v31, v143, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v143, v143
	v_cndmask_b16 v4.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v145, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v144, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v140, 16, 1
	v_add3_u32 v35, v145, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_add3_u32 v36, v144, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v144, v144
	v_add3_u32 v31, v140, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v140, v140
	v_cndmask_b16 v10.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v142, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v141, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v136, 16, 1
	v_add3_u32 v35, v142, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_add3_u32 v36, v141, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v141, v141
	v_add3_u32 v31, v136, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v136, v136
	v_bfe_u32 v37, v134, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v138, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v137, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v31.h, s1
	v_add3_u32 v31, v134, v37, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v37, 3, v40
	v_lshlrev_b32_e32 v0, 6, v0
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v35, v138, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_add3_u32 v36, v137, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v137, v137
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v40, 11, v40
	v_and_b32_e32 v0, 0x400, v0
	v_xor_b32_e32 v37, v37, v38
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v20.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v139, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v135, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_or3_b32 v0, v40, v0, v37
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v35, v139, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v139, v139
	v_add3_u32 v36, v135, v36, 0x7fff
	v_cmp_o_f32_e64 s1, v135, v135
	v_cndmask_b16 v26.h, 0x7fff, v31.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v31, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v28.h, 0x7fff, v35.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v35, v0, 8, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v30.h, 0x7fff, v36.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v36, v0, 16, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v39, v130, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v37, v0, 24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v31, v[3:4], v[17:18] offset1:1
	ds_store_2addr_stride64_b64 v35, v[5:6], v[19:20] offset1:1
	ds_store_2addr_stride64_b64 v36, v[7:8], v[21:22] offset1:1
	ds_store_2addr_stride64_b64 v37, v[9:10], v[23:24] offset1:1
	v_lshlrev_b32_e32 v3, 3, v32
	v_cndmask_b32_e64 v4, 0x808, 0, vcc_lo
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v38, v130, v39, 0x7fff
	v_cmp_o_f32_e64 s2, v130, v130
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v5, v0, 32, 0
	v_xad_u32 v6, v0, 40, 0
	v_xor_b32_e32 v3, v4, v3
	v_xad_u32 v7, v0, 48, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v0, v0, 56, 0
	ds_store_2addr_stride64_b64 v5, v[1:2], v[25:26] offset1:1
	ds_store_2addr_stride64_b64 v6, v[11:12], v[27:28] offset1:1
	ds_store_2addr_stride64_b64 v7, v[13:14], v[29:30] offset1:1
	ds_store_2addr_stride64_b64 v0, v[15:16], v[33:34] offset1:1
	v_add_nc_u32_e32 v0, 0, v3
	v_xad_u32 v1, 0x1010, v3, 0
	v_xad_u32 v2, 0x2020, v3, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[28:31], v0 offset1:2
	ds_load_2addr_stride64_b64 v[24:27], v1 offset1:2
	ds_load_2addr_stride64_b64 v[20:23], v2 offset1:2
	v_xad_u32 v0, 0x3030, v3, 0
	v_xad_u32 v1, 0x4040, v3, 0
	v_xad_u32 v2, 0x5050, v3, 0
	v_xad_u32 v4, 0x6060, v3, 0
	v_xad_u32 v3, 0x7070, v3, 0
	ds_load_2addr_stride64_b64 v[16:19], v0 offset1:2
	ds_load_2addr_stride64_b64 v[12:15], v1 offset1:2
	ds_load_2addr_stride64_b64 v[8:11], v2 offset1:2
	ds_load_2addr_stride64_b64 v[4:7], v4 offset1:2
	ds_load_2addr_stride64_b64 v[0:3], v3 offset1:2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v33, 7, v41
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v32, s5, 7, v32
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v33, s10, v33
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v33
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v33
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v28, v30, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 2, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v24, v26, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v20, v22, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v16, v18, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 8, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v12, v14, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v8, v10, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v4, v6, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s7, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v28, v28, v30, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v28, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v28, 18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v28
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v28, s7, v28
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v24, v26, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v28, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v24, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v24, 20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v24
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v24, s7, v24
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v20, v22, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v24, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v20, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v20, 22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v20
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v20, s7, v20
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v16, v18, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v20, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v16, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(4)
	v_or_b32_e32 v16, 24, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s7, v16
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v12, v14, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v16, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v12, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v12, 26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s7, v12
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v10, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v12, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v8, off
.LBB0_40:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v8, 28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_42
; %bb.41:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s7, v8
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v4, v6, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v8, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v4, off
.LBB0_42:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v4, 30, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v4
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_44
; %bb.43:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v4, s7, v4
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v4, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_44:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v0, 32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_46
; %bb.45:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v29, v31, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_46:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_48
; %bb.47:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v25, v27, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_48:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_50
; %bb.49:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v21, v23, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_50:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_52
; %bb.51:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v17, v19, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_52:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_54
; %bb.53:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v13, v15, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_54:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_56
; %bb.55:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v9, v11, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_56:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 44, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_58
; %bb.57:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v5, v7, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_58:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_60
; %bb.59:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v1, v3, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_60:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_62
; %bb.61:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v29, v31, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v28, s0, s8, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s9, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[28:29], v0, off
.LBB0_62:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 50, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_64
; %bb.63:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[28:29], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v25, v27, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v24, s0, s8, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s9, v29, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[24:25], v0, off
.LBB0_64:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_66
; %bb.65:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[24:25], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v21, v23, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v20, s0, s8, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s9, v25, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[20:21], v0, off
.LBB0_66:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 54, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_68
; %bb.67:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[20:21], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v17, v19, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v16, s0, s8, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s9, v21, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v0, off
.LBB0_68:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 56, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_70
; %bb.69:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[16:17], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v13, v15, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v12, s0, s8, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s9, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v0, off
.LBB0_70:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_72
; %bb.71:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[12:13], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v9, v11, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v8, s0, s8, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s9, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v0, off
.LBB0_72:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_74
; %bb.73:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[8:9], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v5, v7, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v4, s0, s8, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s9, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v0, off
.LBB0_74:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_76
; %bb.75:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s7, v0
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s8, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s9, v5, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_76:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 36
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 36
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18248
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 36
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 36
    .sgpr_count:     107
    .sgpr_spill_count: 13
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 8
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
