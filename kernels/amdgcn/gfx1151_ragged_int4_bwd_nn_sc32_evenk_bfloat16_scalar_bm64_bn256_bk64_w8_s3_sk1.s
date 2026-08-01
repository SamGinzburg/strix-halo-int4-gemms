	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v65, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_sub_i32 s12, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s12, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_ashr_i32 s10, s10, 31
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
	s_mul_i32 s11, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s13, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s13, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s13, s12, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[12:13], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1307 17 is_stmt 0             ; ragged.py:1307:17
	s_sub_i32 s9, s2, s6
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_lshl_b32 s6, s7, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s6, v65
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s8, s[4:5], 0x0
	s_mov_b32 s10, 0
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s7, s12, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s30, v1
	v_cmp_gt_i32_e64 s4, s30, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s30, v3
	v_cmp_gt_i32_e64 s2, s30, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s8, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge70_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s16, s6, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $sgpr16
.LBB0_3:                                ; %Flow247
	s_load_b64 s[28:29], s[0:1], 0x28
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v123, 0xf0, v0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
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
	v_mov_b32_e32 v144, 0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s17, s9, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[10:11], s[0:1], 0x38
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 4, v123
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v66, s17, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s9, s8, 1
	s_cmp_lt_i32 s3, 16
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s6, v1
	s_cselect_b32 s35, -1, 0
	s_add_i32 s16, s6, s7
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v3, 0, v65
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v4, 16, v2
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s30, v2
	v_bfe_i32 v2, v0, 7, 1
	v_cmp_gt_i32_e64 s6, s30, v4
	v_cmp_gt_i32_e64 s7, s30, v5
	v_bfe_i32 v4, v0, 3, 1
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s10, v1, v[65:66]
	v_dual_mov_b32 v142, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v2, 0x88, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_mov_b32_e32 v134, 0
	v_mad_u64_u32 v[68:69], null, s10, 48, v[67:68]
	v_and_or_b32 v150, 0x88, v4, v1
	v_xor_b32_e32 v1, v2, v5
	v_add_nc_u32_e32 v5, s16, v65
	v_mad_u64_u32 v[69:70], null, s31, 3, v[66:67]
	v_mad_u64_u32 v[70:71], null, s31, 5, v[66:67]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v10, 16, v5
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v11, 32, v5
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v12, 48, v5
	v_mul_lo_u32 v152, v5, s11
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	v_mad_u64_u32 v[71:72], null, s31, 6, v[66:67]
	v_cmp_gt_i32_e64 s8, s30, v6
	v_lshrrev_b32_e32 v6, 1, v0
	v_mul_lo_u32 v153, v10, s11
	v_mul_lo_u32 v154, v11, s11
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v11, 2, v123
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v5, 32, v5
	v_mad_u64_u32 v[72:73], null, s31, 7, v[66:67]
	v_mad_u64_u32 v[73:74], null, s31, 9, v[66:67]
	v_mad_u64_u32 v[74:75], null, s31, 10, v[66:67]
	v_mad_u64_u32 v[75:76], null, s31, 11, v[66:67]
	v_mad_u64_u32 v[76:77], null, s31, 12, v[66:67]
	v_xor_b32_e32 v2, 8, v150
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_mul_lo_u32 v155, v12, s11
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v10, 28, v10
	v_cndmask_b32_e64 v12, 0, 1, s35
	v_add3_u32 v5, 0, v11, v5
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v11, 1, v123
	v_mad_u64_u32 v[77:78], null, s31, 13, v[66:67]
	v_mad_u64_u32 v[78:79], null, s31, 14, v[66:67]
	v_mad_u64_u32 v[79:80], null, s31, 15, v[66:67]
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s9, s9, -1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s31, v66
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s33, s12, s11
	v_lshl_add_u32 v145, s10, 4, v67
	v_lshl_add_u32 v146, s10, 5, v67
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v147, s31, v66
	v_lshl_add_u32 v148, s31, 1, v66
	v_lshl_add_u32 v149, s31, 2, v66
	v_lshl_add_u32 v151, s31, 3, v66
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s11, s9, 4
	v_cmp_ne_u32_e64 s9, 1, v12
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v156, 0, v1
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v157, 0, v2
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v158, 0, v0
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v159, 0, v4
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v160, 0, v7
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v161, 0, v8
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v162, 0, v9
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v163, v3, v6
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v164, v5, v10
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v165, 0, v11
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
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	s_mov_b32 s18, 0
	.loc	1 1435 43                       ; ragged.py:1435:43
	s_mul_i32 s30, s12, s10
	s_mul_i32 s34, s16, s10
	s_and_b32 s13, s21, 0xffff
	s_mov_b32 s12, s20
	s_and_b32 s21, s23, 0xffff
	s_mov_b32 s20, s22
	s_mov_b32 s36, s24
	s_mov_b32 s37, s25
	s_mov_b32 s38, s14
	s_mov_b32 s39, s15
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_mov_b32 s10, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v33, v152, s18, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s10, s18, s33
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v34, v153, s18, 1
	v_add_lshl_u32 v35, v154, s18, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s10, s10, s31
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v36, v155, s18, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v37, v66, s10, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[36:39], 0 offen
	buffer_load_u16 v34, v34, s[36:39], 0 offen
	buffer_load_u16 v35, v35, s[36:39], 0 offen
	buffer_load_u16 v36, v36, s[36:39], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s22, s18, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s10, s22, 4
	s_cmp_lg_u32 s18, s11
	s_mov_b32 s18, s22
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v54, v180, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v197, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v194, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v196, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v178, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v195, v33 :: v_dual_mul_f32 v53, v181, v34
	v_dual_mul_f32 v42, v193, v33 :: v_dual_mul_f32 v55, v179, v34
	v_dual_mul_f32 v43, v192, v33 :: v_dual_mul_f32 v60, v174, v34
	v_dual_mul_f32 v44, v191, v33 :: v_dual_mul_f32 v57, v177, v34
	v_dual_mul_f32 v45, v190, v33 :: v_dual_mul_f32 v58, v176, v34
	v_dual_mul_f32 v46, v189, v33 :: v_dual_mul_f32 v59, v175, v34
	v_dual_mul_f32 v47, v188, v33 :: v_dual_mul_f32 v64, v170, v34
	v_dual_mul_f32 v48, v187, v33 :: v_dual_mul_f32 v61, v173, v34
	v_dual_mul_f32 v49, v186, v33 :: v_dual_mul_f32 v62, v172, v34
	v_dual_mul_f32 v50, v185, v33 :: v_dual_mul_f32 v63, v171, v34
	v_mul_f32_e32 v51, v184, v33
	v_dual_mul_f32 v52, v183, v33 :: v_dual_mul_f32 v169, v169, v34
	v_dual_mul_f32 v33, v182, v33 :: v_dual_mul_f32 v168, v168, v34
	v_dual_mul_f32 v167, v167, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v34, v166, v34 :: v_dual_mul_f32 v31, v31, v35
	v_mul_f32_e32 v16, v16, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v182, v11, v36
	v_mul_f32_e32 v166, v28, v35
	v_dual_mul_f32 v170, v27, v35 :: v_dual_mul_f32 v181, v12, v36
	v_dual_mul_f32 v171, v26, v35 :: v_dual_mul_f32 v180, v13, v36
	v_dual_mul_f32 v172, v25, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v173, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v174, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v175, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v176, v21, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v177, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v178, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v179, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v164, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v165
	ds_load_b128 v[21:24], v165 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v165 offset:512
	ds_load_b128 v[25:28], v165 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v144, v38, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v143, v39, v18 :: v_dual_fmac_f32 v142, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v141, v41, v20 :: v_dual_fmac_f32 v140, v42, v21
	v_dual_fmac_f32 v139, v43, v22 :: v_dual_fmac_f32 v138, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v137, v45, v24 :: v_dual_fmac_f32 v136, v46, v11
	v_dual_fmac_f32 v135, v47, v12 :: v_dual_fmac_f32 v134, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v133, v49, v14 :: v_dual_fmac_f32 v132, v50, v25
	v_dual_fmac_f32 v131, v51, v26 :: v_dual_fmac_f32 v130, v52, v27
	v_dual_fmac_f32 v129, v33, v28 :: v_dual_fmac_f32 v126, v55, v19
	v_dual_fmac_f32 v128, v53, v17 :: v_dual_fmac_f32 v127, v54, v18
	v_dual_fmac_f32 v125, v56, v20 :: v_dual_fmac_f32 v124, v57, v21
	v_dual_fmac_f32 v122, v58, v22 :: v_dual_fmac_f32 v121, v59, v23
	v_dual_fmac_f32 v120, v60, v24 :: v_dual_fmac_f32 v119, v61, v11
	v_dual_fmac_f32 v118, v62, v12 :: v_dual_fmac_f32 v117, v63, v13
	v_dual_fmac_f32 v116, v64, v14 :: v_dual_fmac_f32 v115, v169, v25
	v_dual_fmac_f32 v114, v168, v26 :: v_dual_fmac_f32 v113, v167, v27
	v_dual_fmac_f32 v112, v34, v28 :: v_dual_fmac_f32 v111, v32, v17
	v_dual_fmac_f32 v110, v31, v18 :: v_dual_fmac_f32 v109, v30, v19
	v_dual_fmac_f32 v108, v29, v20 :: v_dual_fmac_f32 v107, v166, v21
	v_dual_fmac_f32 v106, v170, v22 :: v_dual_fmac_f32 v105, v171, v23
	v_dual_fmac_f32 v104, v172, v24 :: v_dual_fmac_f32 v103, v173, v11
	v_dual_fmac_f32 v102, v174, v12 :: v_dual_fmac_f32 v101, v175, v13
	v_dual_fmac_f32 v100, v176, v14 :: v_dual_fmac_f32 v99, v177, v25
	v_dual_fmac_f32 v98, v178, v26 :: v_dual_fmac_f32 v97, v179, v27
	v_dual_fmac_f32 v96, v35, v28 :: v_dual_fmac_f32 v95, v16, v17
	v_dual_fmac_f32 v94, v15, v18 :: v_dual_fmac_f32 v93, v37, v19
	v_dual_fmac_f32 v92, v180, v20 :: v_dual_fmac_f32 v91, v181, v21
	v_dual_fmac_f32 v90, v182, v22 :: v_dual_fmac_f32 v87, v8, v11
	v_dual_fmac_f32 v89, v10, v23 :: v_dual_fmac_f32 v88, v9, v24
	v_dual_fmac_f32 v86, v7, v12 :: v_dual_fmac_f32 v85, v6, v13
	v_dual_fmac_f32 v84, v5, v14 :: v_dual_fmac_f32 v81, v2, v27
	v_dual_fmac_f32 v82, v4, v25 :: v_dual_fmac_f32 v83, v3, v26
	v_fmac_f32_e32 v80, v1, v28
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
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s35, s3
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
	s_add_i32 s40, s35, s10
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s22, s14
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s41, s40, s34
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s40, s40, s30
	v_add_nc_u32_e32 v166, s41, v67
	v_add_nc_u32_e32 v167, s41, v145
	v_add_nc_u32_e32 v168, s41, v146
	s_mul_i32 s40, s40, s31
	v_add_nc_u32_e32 v169, s41, v68
	v_add_nc_u32_e32 v170, s40, v66
	v_add_nc_u32_e32 v182, s40, v76
	v_add_nc_u32_e32 v183, s40, v77
	v_add_nc_u32_e32 v184, s40, v78
	v_add_nc_u32_e32 v185, s40, v79
	v_add_nc_u32_e32 v171, s40, v147
	v_add_nc_u32_e32 v172, s40, v148
	v_add_nc_u32_e32 v173, s40, v69
	v_add_nc_u32_e32 v174, s40, v149
	v_add_nc_u32_e32 v175, s40, v70
	v_add_nc_u32_e32 v176, s40, v71
	v_add_nc_u32_e32 v177, s40, v72
	v_add_nc_u32_e32 v178, s40, v151
	v_add_nc_u32_e32 v179, s40, v73
	v_add_nc_u32_e32 v180, s40, v74
	v_add_nc_u32_e32 v181, s40, v75
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v166, 0x80000000, v166, s1
	v_cndmask_b32_e64 v167, 0x80000000, v167, s6
	v_cndmask_b32_e64 v168, 0x80000000, v168, s7
	v_cndmask_b32_e64 v169, 0x80000000, v169, s8
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	v_cndmask_b32_e64 v182, 0x80000000, v182, s0
	v_cndmask_b32_e64 v183, 0x80000000, v183, s0
	v_cndmask_b32_e64 v184, 0x80000000, v184, s0
	v_cndmask_b32_e64 v185, 0x80000000, v185, s0
	s_mov_b32 s23, s15
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	v_cndmask_b32_e64 v172, 0x80000000, v172, s0
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	v_cndmask_b32_e64 v174, 0x80000000, v174, s0
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	v_cndmask_b32_e64 v177, 0x80000000, v177, s0
	v_cndmask_b32_e64 v178, 0x80000000, v178, s0
	v_cndmask_b32_e64 v179, 0x80000000, v179, s0
	v_cndmask_b32_e64 v180, 0x80000000, v180, s0
	v_cndmask_b32_e64 v181, 0x80000000, v181, s0
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x3
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v167, v167, s[12:15], 0 offen
	buffer_load_u8 v168, v168, s[12:15], 0 offen
	buffer_load_u8 v169, v169, s[12:15], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0xf
	buffer_load_u8 v186, v170, s[20:23], 0 offen
	buffer_load_u8 v187, v171, s[20:23], 0 offen
	buffer_load_u8 v188, v172, s[20:23], 0 offen
	buffer_load_u8 v189, v174, s[20:23], 0 offen
	buffer_load_u8 v190, v175, s[20:23], 0 offen
	buffer_load_u8 v191, v176, s[20:23], 0 offen
	buffer_load_u8 v192, v178, s[20:23], 0 offen
	buffer_load_u8 v193, v179, s[20:23], 0 offen
	buffer_load_u8 v194, v180, s[20:23], 0 offen
	buffer_load_u8 v182, v182, s[20:23], 0 offen
	buffer_load_u8 v183, v183, s[20:23], 0 offen
	buffer_load_u8 v195, v173, s[20:23], 0 offen
	buffer_load_u8 v196, v177, s[20:23], 0 offen
	buffer_load_u8 v197, v181, s[20:23], 0 offen
	buffer_load_u8 v184, v184, s[20:23], 0 offen
	buffer_load_u8 v185, v185, s[20:23], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_add_nc_u32_e32 v170, 0, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s22, s35, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s35, 0
	s_mov_b32 s35, s22
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(19)
	ds_store_b8 v156, v166
	s_waitcnt vmcnt(18)
	ds_store_b8 v156, v167 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v156, v168 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v156, v169 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[166:169], v170 offset1:32
	ds_load_2addr_b64 v[170:173], v170 offset0:64 offset1:96
	ds_load_2addr_b64 v[174:177], v157 offset1:32
	ds_load_2addr_b64 v[178:181], v157 offset0:64 offset1:96
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v158, v186
	s_waitcnt vmcnt(14)
	ds_store_b8 v158, v187 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v158, v188 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v158, v189 offset:1024
	s_waitcnt vmcnt(11)
	ds_store_b8 v158, v190 offset:1280
	s_waitcnt vmcnt(10)
	ds_store_b8 v158, v191 offset:1536
	s_waitcnt vmcnt(9)
	ds_store_b8 v158, v192 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b8 v158, v193 offset:2304
	s_waitcnt vmcnt(7)
	ds_store_b8 v158, v194 offset:2560
	s_waitcnt vmcnt(6)
	ds_store_b8 v158, v182 offset:3072
	s_waitcnt vmcnt(5)
	ds_store_b8 v158, v183 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b8 v159, v195
	s_waitcnt vmcnt(3)
	ds_store_b8 v160, v196
	s_waitcnt vmcnt(2)
	ds_store_b8 v161, v197
	s_waitcnt vmcnt(1)
	ds_store_b8 v158, v184 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v162, v185
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v182, v163 offset:3328
	ds_load_u8 v183, v163 offset:3072
	ds_load_u8 v184, v163 offset:3840
	ds_load_u8 v185, v163 offset:3584
	ds_load_u8 v186, v163 offset:2304
	ds_load_u8 v187, v163 offset:2048
	ds_load_u8 v188, v163 offset:2816
	ds_load_u8 v189, v163 offset:2560
	ds_load_u8 v190, v163 offset:1280
	ds_load_u8 v191, v163 offset:1024
	ds_load_u8 v192, v163 offset:1792
	ds_load_u8 v193, v163 offset:1536
	ds_load_u8 v194, v163 offset:1920
	ds_load_u8 v195, v163 offset:1664
	ds_load_u8 v196, v163 offset:1408
	ds_load_u8 v197, v163 offset:1152
	ds_load_u8 v198, v163 offset:256
	ds_load_u8 v199, v163
	ds_load_u8 v200, v163 offset:768
	ds_load_u8 v201, v163 offset:512
	ds_load_u8 v202, v163 offset:896
	ds_load_u8 v203, v163 offset:640
	ds_load_u8 v204, v163 offset:384
	ds_load_u8 v205, v163 offset:128
	ds_load_u8 v206, v163 offset:3968
	ds_load_u8 v207, v163 offset:3712
	ds_load_u8 v208, v163 offset:3456
	ds_load_u8 v209, v163 offset:3200
	ds_load_u8 v210, v163 offset:2944
	ds_load_u8 v211, v163 offset:2432
	ds_load_u8 v212, v163 offset:2176
	ds_load_u8 v213, v163 offset:2688
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v191, v193, v192, 0xc0c0004
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v192, v199, v198, 0xc0c0004
	v_perm_b32 v199, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v193, v201, v200, 0xc0c0004
	v_perm_b32 v186, v197, v196, 0xc0c0004
	v_perm_b32 v187, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v194, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v189, v205, v204, 0xc0c0004
	v_perm_b32 v198, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v207, v206, 0xc0c0004
	v_lshl_or_b32 v183, v191, 16, v190
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v195, v209, v208, 0xc0c0004
	v_lshl_or_b32 v182, v193, 16, v192
	v_lshl_or_b32 v187, v187, 16, v186
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v197, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v213, v210, 0xc0c0004
	v_lshl_or_b32 v186, v194, 16, v189
	v_lshl_or_b32 v185, v184, 16, v198
	v_lshl_or_b32 v184, v188, 16, v199
	v_lshl_or_b32 v189, v196, 16, v195
	v_lshl_or_b32 v188, v200, 16, v197
	v_wmma_i32_16x16x16_iu4 v[1:8], v[182:183], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[166:167], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[182:183], v[168:169], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[168:169], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[182:183], v[170:171], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[170:171], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[182:183], v[172:173], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[172:173], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[174:175], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[176:177], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[176:177], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[178:179], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[178:179], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[180:181], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[180:181], v[57:64] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v197, v1
	v_cvt_f32_i32_e32 v196, v2
	v_cvt_f32_i32_e32 v195, v3
	v_cvt_f32_i32_e32 v194, v4
	v_cvt_f32_i32_e32 v193, v5
	v_cvt_f32_i32_e32 v192, v6
	v_cvt_f32_i32_e32 v191, v7
	v_cvt_f32_i32_e32 v190, v8
	v_cvt_f32_i32_e32 v189, v9
	v_cvt_f32_i32_e32 v188, v10
	v_cvt_f32_i32_e32 v187, v11
	v_cvt_f32_i32_e32 v186, v12
	v_cvt_f32_i32_e32 v185, v13
	v_cvt_f32_i32_e32 v184, v14
	v_cvt_f32_i32_e32 v183, v15
	v_cvt_f32_i32_e32 v182, v16
	v_cvt_f32_i32_e32 v181, v17
	v_cvt_f32_i32_e32 v180, v18
	v_cvt_f32_i32_e32 v179, v19
	v_cvt_f32_i32_e32 v178, v20
	v_cvt_f32_i32_e32 v177, v21
	v_cvt_f32_i32_e32 v176, v22
	v_cvt_f32_i32_e32 v175, v23
	v_cvt_f32_i32_e32 v174, v24
	v_cvt_f32_i32_e32 v173, v25
	v_cvt_f32_i32_e32 v172, v26
	v_cvt_f32_i32_e32 v171, v27
	v_cvt_f32_i32_e32 v170, v28
	v_cvt_f32_i32_e32 v169, v29
	v_cvt_f32_i32_e32 v168, v30
	v_cvt_f32_i32_e32 v167, v31
	v_cvt_f32_i32_e32 v166, v32
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
.LBB0_10:                               ; %._crit_edge70
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v13, 1, v123
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v22, v144, 16, 1
	v_bfe_u32 v23, v143, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s3, s16, s31
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v24, v142, 16, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x85, v13
	v_or_b32_e32 v14, 6, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v22, v144, v22, 0x7fff
	v_add3_u32 v23, v143, v23, 0x7fff
	v_cmp_o_f32_e64 s20, v143, v143
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s17, v6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v25, v141, 16, 1
	v_add3_u32 v24, v142, v24, 0x7fff
	v_cmp_o_f32_e64 s21, v142, v142
	v_bfe_u32 v26, v139, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s31, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s17, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v25, v141, v25, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v26, v139, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v139, v139
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s31, v3
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v3, s31, v65
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v27, v137, 16, 1
	v_bfe_u32 v28, v135, 16, 1
	v_bfe_u32 v29, v133, 16, 1
	v_bfe_u32 v30, v131, 16, 1
	v_bfe_u32 v31, v129, 16, 1
	v_add3_u32 v27, v137, v27, 0x7fff
	v_add3_u32 v28, v135, v28, 0x7fff
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v3, s3, s17, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v144, v144
	v_add3_u32 v29, v133, v29, 0x7fff
	v_add3_u32 v30, v131, v30, 0x7fff
	v_bfe_u32 v32, v127, 16, 1
	v_add3_u32 v31, v129, v31, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s3
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s20
	v_bfe_u32 v23, v140, 16, 1
	v_cmp_o_f32_e64 s3, v141, v141
	v_cmp_o_f32_e64 s20, v140, v140
	v_add3_u32 v32, v127, v32, 0x7fff
	v_bfe_u32 v33, v125, 16, 1
	v_add3_u32 v23, v140, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v138, 16, 1
	v_cmp_o_f32_e64 s3, v138, v138
	v_add3_u32 v33, v125, v33, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s20
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v136, 16, 1
	v_add3_u32 v25, v138, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v137, v137
	v_cmp_o_f32_e64 s21, v136, v136
	v_bfe_u32 v34, v122, 16, 1
	v_add3_u32 v26, v136, v26, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v134, 16, 1
	v_cmp_o_f32_e64 s3, v135, v135
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_cmp_o_f32_e64 s20, v134, v134
	v_cmp_o_f32_e64 s21, v133, v133
	v_add3_u32 v27, v134, v27, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s3
	v_bfe_u32 v28, v132, 16, 1
	v_cmp_o_f32_e64 s3, v132, v132
	v_bfe_u32 v35, v120, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v130, 16, 1
	v_add3_u32 v28, v132, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v131, v131
	v_cmp_o_f32_e64 s21, v130, v130
	v_add3_u32 v34, v122, v34, 0x7fff
	v_add3_u32 v29, v130, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v128, 16, 1
	v_cmp_o_f32_e64 s3, v129, v129
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_cmp_o_f32_e64 s20, v128, v128
	v_cmp_o_f32_e64 s21, v127, v127
	v_add3_u32 v30, v128, v30, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v126, 16, 1
	v_cmp_o_f32_e64 s3, v126, v126
	v_add3_u32 v35, v120, v35, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v124, 16, 1
	v_add3_u32 v31, v126, v31, 0x7fff
	v_cmp_o_f32_e64 s20, v125, v125
	v_cmp_o_f32_e64 s21, v124, v124
	v_bfe_u32 v36, v118, 16, 1
	v_add3_u32 v32, v124, v32, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v121, 16, 1
	v_cmp_o_f32_e64 s3, v122, v122
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_cmp_o_f32_e64 s20, v121, v121
	v_cmp_o_f32_e64 s21, v120, v120
	v_add3_u32 v33, v121, v33, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	v_bfe_u32 v34, v119, 16, 1
	v_cmp_o_f32_e64 s3, v119, v119
	v_add3_u32 v36, v118, v36, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v117, 16, 1
	v_add3_u32 v34, v119, v34, 0x7fff
	v_cmp_o_f32_e64 s20, v118, v118
	v_bfe_u32 v37, v116, 16, 1
	v_cmp_o_f32_e64 s21, v117, v117
	v_add3_u32 v35, v117, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v115, 16, 1
	v_bfe_u32 v38, v114, 16, 1
	v_add3_u32 v37, v116, v37, 0x7fff
	v_cmp_o_f32_e64 s3, v116, v116
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v115, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v115, v115
	v_add3_u32 v38, v114, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v114, v114
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s3
	v_bfe_u32 v37, v113, 16, 1
	v_bfe_u32 v39, v112, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v111, 16, 1
	v_add3_u32 v37, v113, v37, 0x7fff
	v_cmp_o_f32_e64 s3, v113, v113
	v_add3_u32 v39, v112, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v112, v112
	v_bfe_u32 v40, v110, 16, 1
	v_add3_u32 v38, v111, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v111, v111
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s3
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v109, 16, 1
	v_bfe_u32 v41, v108, 16, 1
	v_add3_u32 v40, v110, v40, 0x7fff
	v_cmp_o_f32_e64 s3, v110, v110
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v109, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v109, v109
	v_add3_u32 v41, v108, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v108, v108
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s3
	v_bfe_u32 v40, v107, 16, 1
	v_bfe_u32 v42, v106, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v105, 16, 1
	v_add3_u32 v40, v107, v40, 0x7fff
	v_cmp_o_f32_e64 s3, v107, v107
	v_add3_u32 v42, v106, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v106, v106
	v_bfe_u32 v43, v104, 16, 1
	v_add3_u32 v41, v105, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v105, v105
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v103, 16, 1
	v_bfe_u32 v44, v102, 16, 1
	v_add3_u32 v43, v104, v43, 0x7fff
	v_cmp_o_f32_e64 s3, v104, v104
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v103, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v103, v103
	v_add3_u32 v44, v102, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v102, v102
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s3
	v_bfe_u32 v43, v101, 16, 1
	v_bfe_u32 v45, v100, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v99, 16, 1
	v_add3_u32 v43, v101, v43, 0x7fff
	v_cmp_o_f32_e64 s3, v101, v101
	v_add3_u32 v45, v100, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v100, v100
	v_bfe_u32 v46, v98, 16, 1
	v_add3_u32 v44, v99, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v99, v99
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s3
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v97, 16, 1
	v_bfe_u32 v47, v96, 16, 1
	v_add3_u32 v46, v98, v46, 0x7fff
	v_cmp_o_f32_e64 s3, v98, v98
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v97, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v97, v97
	v_add3_u32 v47, v96, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v96, v96
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s3
	v_bfe_u32 v46, v95, 16, 1
	v_bfe_u32 v48, v94, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v93, 16, 1
	v_add3_u32 v46, v95, v46, 0x7fff
	v_cmp_o_f32_e64 s3, v95, v95
	v_add3_u32 v48, v94, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v94, v94
	v_bfe_u32 v49, v92, 16, 1
	v_add3_u32 v47, v93, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v93, v93
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s3
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v91, 16, 1
	v_bfe_u32 v50, v90, 16, 1
	v_add3_u32 v49, v92, v49, 0x7fff
	v_cmp_o_f32_e64 s3, v92, v92
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v91, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v91, v91
	v_add3_u32 v50, v90, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v90, v90
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s3
	v_bfe_u32 v49, v89, 16, 1
	v_bfe_u32 v51, v88, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v87, 16, 1
	v_add3_u32 v49, v89, v49, 0x7fff
	v_cmp_o_f32_e64 s3, v89, v89
	v_add3_u32 v51, v88, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v88, v88
	v_add3_u32 v50, v87, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v87, v87
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s3
	v_bfe_u32 v52, v86, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v85, 16, 1
	v_bfe_u32 v53, v84, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v86, v52, 0x7fff
	v_cmp_o_f32_e64 s3, v86, v86
	v_add3_u32 v51, v85, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v85, v85
	v_add3_u32 v53, v84, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v84, v84
	v_bfe_u32 v54, v82, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s3
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v83, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v82, v54, 0x7fff
	v_bfe_u32 v54, v81, 16, 1
	v_bfe_u32 v55, v80, 16, 1
	v_cmp_o_f32_e64 s3, v82, v82
	v_add3_u32 v52, v83, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v83, v83
	v_add3_u32 v54, v81, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v81, v81
	v_add3_u32 v55, v80, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v80, v80
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x87, v13
	v_or_b32_e32 v5, 0x86, v13
	v_or_b32_e32 v7, 0x84, v13
	v_or_b32_e32 v8, 0x83, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v55.h, s22
	v_mov_b32_e32 v54, 0x5410
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x82, v13
	v_or_b32_e32 v10, 0x81, v13
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v1, s17, v4
	v_or_b32_e32 v2, s17, v5
	v_or_b32_e32 v11, s17, v7
	v_or_b32_e32 v12, s17, v8
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
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	v_cmp_gt_i32_e64 s0, s31, v2
	v_cmp_gt_i32_e64 s6, s31, v11
	v_cmp_gt_i32_e64 s7, s31, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s17, v9
	v_or_b32_e32 v2, s17, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v13
	v_or_b32_e32 v12, 7, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_cndmask_b32_e64 v54, 0x3276, v55, s3
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s31, v1
	v_cmp_gt_i32_e64 s9, s31, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s17, v11
	v_or_b32_e32 v2, s17, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v15, 5, v13
	v_or_b32_e32 v16, 4, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_lshl_or_b32 v54, v54, 8, v54
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v19, 1, v13
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s31, v1
	v_cmp_gt_i32_e64 s11, s31, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s17, v15
	v_or_b32_e32 v2, s17, v16
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v17, 3, v13
	v_or_b32_e32 v18, 2, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s17, v13
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_and_b32_e32 v54, 0x760076, v54
	v_lshl_or_b32 v51, v51, 4, v51
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v20, s17, v19
	s_mov_b32 s20, 0x76543210
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s31, v1
	v_cmp_gt_i32_e64 s14, s31, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s17, v17
	v_or_b32_e32 v2, s17, v18
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s31, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v51, 0x5040504, v51
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s31, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v84, v3, v13, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s31, v1
	v_cmp_gt_i32_e64 s16, s31, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s31, 48, v[3:4]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v85, v3, v19, 1
	v_mov_b16_e32 v2.h, 0
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v86, v3, v18, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v22, v22, v53, v54
	v_cndmask_b32_e64 v85, 0x80000000, v85, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s16
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
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_lshl_add_u32 v21, s31, 4, v3
	v_lshl_add_u32 v20, s31, 5, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_cndmask_b32_e64 v86, 0x80000000, v86, s3
	buffer_store_b16 v55, v84, s[28:31], 0 offen
	v_add_lshl_u32 v55, v3, v17, 1
	v_mov_b16_e32 v2.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[28:31], 0 offen
	buffer_store_b16 v22, v86, s[28:31], 0 offen
	v_add_lshl_u32 v22, v3, v16, 1
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v84, v3, v14, 1
	v_cndmask_b32_e64 v51, 0x80000000, v55, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v55, v3, v15, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s13
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
	v_cndmask_b32_e64 v55, 0x80000000, v55, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v54.l, v53.h
	v_add_lshl_u32 v22, v3, v11, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v52.l, v23.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v54, v55, s[28:31], 0 offen
	buffer_store_b16 v23, v84, s[28:31], 0 offen
	v_add_lshl_u32 v23, v3, v10, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v51, v3, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v52, v2, s[28:31], 0 offen
	buffer_store_b16 v24, v22, s[28:31], 0 offen
	v_add_lshl_u32 v2, v3, v8, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v57.l, v24.h
	v_add_lshl_u32 v22, v3, v7, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v56.l, v25.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v57, v23, s[28:31], 0 offen
	buffer_store_b16 v25, v51, s[28:31], 0 offen
	v_add_lshl_u32 v23, v3, v6, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v24, v3, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v56, v2, s[28:31], 0 offen
	buffer_store_b16 v26, v22, s[28:31], 0 offen
	v_add_lshl_u32 v2, v3, v4, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v21, v13, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.l, v27.h
	v_add_lshl_u32 v22, v21, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_store_b16 v59, v23, s[28:31], 0 offen
	buffer_store_b16 v27, v24, s[28:31], 0 offen
	v_add_lshl_u32 v23, v21, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v58, v2, s[28:31], 0 offen
	buffer_store_b16 v28, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v17, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v61.l, v28.h
	v_add_lshl_u32 v3, v21, v16, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v60.l, v29.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v61, v22, s[28:31], 0 offen
	buffer_store_b16 v29, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v21, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v23, v21, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v60, v2, s[28:31], 0 offen
	buffer_store_b16 v30, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v12, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v63.l, v30.h
	v_add_lshl_u32 v3, v21, v11, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v62.l, v31.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v63, v22, s[28:31], 0 offen
	buffer_store_b16 v31, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v21, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v23, v21, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v62, v2, s[28:31], 0 offen
	buffer_store_b16 v32, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v8, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v65.l, v32.h
	v_add_lshl_u32 v3, v21, v7, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v64.l, v33.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v65, v22, s[28:31], 0 offen
	buffer_store_b16 v33, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v21, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v23, v21, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v64, v2, s[28:31], 0 offen
	buffer_store_b16 v34, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v21, v4, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v13, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v66.l, v35.h
	v_add_lshl_u32 v21, v20, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_store_b16 v67, v22, s[28:31], 0 offen
	buffer_store_b16 v35, v23, s[28:31], 0 offen
	v_add_lshl_u32 v22, v20, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v66, v2, s[28:31], 0 offen
	buffer_store_b16 v36, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.l, v36.h
	v_add_lshl_u32 v3, v20, v16, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v68.l, v37.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v69, v21, s[28:31], 0 offen
	buffer_store_b16 v37, v22, s[28:31], 0 offen
	v_add_lshl_u32 v21, v20, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v20, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v68, v2, s[28:31], 0 offen
	buffer_store_b16 v38, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v71.l, v38.h
	v_add_lshl_u32 v3, v20, v11, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v70.l, v39.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v71, v21, s[28:31], 0 offen
	buffer_store_b16 v39, v22, s[28:31], 0 offen
	v_add_lshl_u32 v21, v20, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v20, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v70, v2, s[28:31], 0 offen
	buffer_store_b16 v40, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v8, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v73.l, v40.h
	v_add_lshl_u32 v3, v20, v7, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v73, v21, s[28:31], 0 offen
	buffer_store_b16 v41, v22, s[28:31], 0 offen
	v_add_lshl_u32 v21, v20, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v20, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v72, v2, s[28:31], 0 offen
	buffer_store_b16 v42, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v20, v4, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v13, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v74.l, v43.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v75.l, v42.h
	v_add_lshl_u32 v13, v1, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v18, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v75, v21, s[28:31], 0 offen
	buffer_store_b16 v43, v22, s[28:31], 0 offen
	buffer_store_b16 v74, v2, s[28:31], 0 offen
	buffer_store_b16 v44, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v1, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v77.l, v44.h
	v_add_lshl_u32 v3, v1, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v76.l, v45.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v77, v13, s[28:31], 0 offen
	buffer_store_b16 v45, v18, s[28:31], 0 offen
	v_add_lshl_u32 v13, v1, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v14, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v76, v2, s[28:31], 0 offen
	buffer_store_b16 v46, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v1, v12, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v11, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v78.l, v47.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v79.l, v46.h
	v_add_lshl_u32 v10, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v9, v1, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v79, v13, s[28:31], 0 offen
	buffer_store_b16 v47, v14, s[28:31], 0 offen
	buffer_store_b16 v78, v2, s[28:31], 0 offen
	buffer_store_b16 v48, v3, s[28:31], 0 offen
	v_add_lshl_u32 v2, v1, v8, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v6, v1, v6, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 1
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v4, 0x80000000, v6, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 214
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 214
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10920
; TotalNumSgprs: 44
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 214
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
