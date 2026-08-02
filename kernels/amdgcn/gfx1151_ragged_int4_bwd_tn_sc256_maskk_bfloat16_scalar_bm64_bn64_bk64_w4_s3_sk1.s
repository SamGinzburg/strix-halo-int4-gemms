	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[54:55], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 64, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v3, 2, v2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s54, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s55, 63
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
	s_lshr_b32 s7, s7, 26
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
	s_ashr_i32 s5, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
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
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s9, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s7, s9
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s22, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s22, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s19, s22, s54
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 15, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v61, v3, v1
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v60, 32, v61
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s6
	s_add_i32 s4, s7, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s9
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s23, s22, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[22:23], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s66, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s66, v61
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s23, s[6:7], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v5, s66, v60
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s52, s54, v4
	v_cmp_gt_i32_e64 s2, s54, v5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s18, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge103_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s67, s66, s19
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr67
.LBB0_3:                                ; %Flow381
	s_load_b64 s[64:65], s[0:1], 0x28
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v59, 24, v3
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_mov_b32_e32 v121, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s53, s4, 6
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph102
	v_dual_mov_b32 v122, 0 :: v_dual_and_b32 v3, 32, v0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_bfe_u32 v4, v0, 4, 1
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v5, 1, v3
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s24, s18, 31
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v8, 24, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v6, s66, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v80, v4, v5, s53
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v4, v0, 5, 1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s24, s18, s24
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s77, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s54, v6
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v6, 3, v2
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s76, s24, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s24, s23, 31
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v103, 6, v2
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s3, s23, s24
	v_mad_u64_u32 v[33:34], null, s54, v6, v[3:4]
	s_ashr_i32 s78, s3, 1
	v_mad_u64_u32 v[34:35], null, s55, v6, v[3:4]
	v_xor3_b32 v6, v59, v6, v8
	v_cmp_eq_u32_e64 s3, 0, v2
	v_lshl_or_b32 v8, v1, 5, v8
	s_clause 0x1
	s_load_b256 s[56:63], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v7, s53, v3
	v_lshl_or_b32 v134, v3, 5, v6
	v_cndmask_b32_e64 v2, 0x208, 0, s3
	s_lshl_b32 s25, s54, 4
	s_lshl_b32 s29, s55, 1
	s_lshl_b32 s30, s55, 2
	s_lshl_b32 s33, s55, 4
	v_xor_b32_e32 v135, v8, v2
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v2, 0x208, v4
	v_xor_b32_e32 v4, 16, v134
	s_mul_i32 s31, s55, 6
	s_mul_i32 s34, s55, 18
	s_mul_i32 s35, s55, 20
	s_mul_i32 s36, s55, 22
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[35:36], null, s54, v103, v[3:4]
	v_mad_u64_u32 v[36:37], null, s54, 3, v[33:34]
	v_mad_u64_u32 v[37:38], null, s54, 5, v[33:34]
	v_mad_u64_u32 v[38:39], null, s54, 7, v[33:34]
	v_mad_u64_u32 v[39:40], null, s54, 17, v[33:34]
	v_mad_u64_u32 v[40:41], null, s54, 19, v[33:34]
	v_mad_u64_u32 v[41:42], null, s54, 21, v[33:34]
	v_mad_u64_u32 v[42:43], null, s54, 23, v[33:34]
	v_mul_lo_u32 v3, s55, v103
	v_mad_u64_u32 v[43:44], null, s55, 3, v[34:35]
	v_mad_u64_u32 v[44:45], null, s55, 5, v[34:35]
	v_mad_u64_u32 v[45:46], null, s55, 7, v[34:35]
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s79, s22, s20
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s80, s22, s21
	s_lshl_b32 s20, s54, 1
	s_lshl_b32 s22, s54, 2
	s_and_b32 s69, s57, 0xffff
	s_and_b32 s57, s59, 0xffff
	v_mad_u64_u32 v[46:47], null, s55, 17, v[34:35]
	s_bitcmp1_b32 s23, 0
	v_mad_u64_u32 v[47:48], null, s55, 19, v[34:35]
	v_mad_u64_u32 v[48:49], null, s55, 21, v[34:35]
	v_xor_b32_e32 v136, v8, v2
	s_cselect_b32 s82, -1, 0
	s_lshl_b32 s3, s55, 3
	s_mul_i32 s23, s55, 10
	s_mul_i32 s37, s55, 12
	s_mul_i32 s38, s55, 14
	s_mul_i32 s39, s55, 24
	s_mul_i32 s40, s55, 26
	s_mul_i32 s41, s55, 28
	s_mul_i32 s42, s55, 30
	s_add_i32 s67, s66, s19
	v_mad_u64_u32 v[49:50], null, s55, 23, v[34:35]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[50:51], null, s54, 10, v[35:36]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s55, v7
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v137, v7, v3
	v_add3_u32 v138, v3, s29, v7
	v_add3_u32 v139, v3, s30, v7
	v_add3_u32 v140, v3, s31, v7
	v_add3_u32 v141, v3, s3, v7
	v_add3_u32 v142, v3, s23, v7
	v_add3_u32 v143, v3, s37, v7
	v_add3_u32 v144, v3, s38, v7
	v_add3_u32 v145, v3, s33, v7
	v_add3_u32 v146, v3, s34, v7
	v_add3_u32 v147, v3, s35, v7
	v_add3_u32 v148, v3, s36, v7
	v_add3_u32 v149, v3, s39, v7
	v_add3_u32 v150, v3, s40, v7
	v_add3_u32 v151, v3, s41, v7
	v_add3_u32 v152, v3, s42, v7
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v3, s67, v61
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v7, s67, v60
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[51:52], null, s54, 12, v[35:36]
	v_mad_u64_u32 v[52:53], null, s54, 14, v[35:36]
	v_mad_u64_u32 v[53:54], null, s54, 24, v[35:36]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v81, 2, v80
	v_or_b32_e32 v83, 4, v80
	v_or_b32_e32 v84, 6, v80
	v_or_b32_e32 v85, 8, v80
	v_or_b32_e32 v86, 10, v80
	v_or_b32_e32 v87, 12, v80
	v_or_b32_e32 v88, 14, v80
	v_or_b32_e32 v89, 32, v80
	v_or_b32_e32 v90, 34, v80
	v_or_b32_e32 v91, 36, v80
	v_or_b32_e32 v92, 38, v80
	v_or_b32_e32 v93, 40, v80
	v_or_b32_e32 v95, 42, v80
	v_or_b32_e32 v96, 44, v80
	v_or_b32_e32 v98, 46, v80
	v_xor_b32_e32 v6, 8, v135
	v_xor_b32_e32 v9, 16, v135
	v_xor_b32_e32 v2, 24, v135
	v_xor_b32_e32 v8, 0x410, v135
	v_xor_b32_e32 v10, 0x418, v135
	v_xor_b32_e32 v11, 0x408, v135
	v_xor_b32_e32 v12, 8, v136
	v_xor_b32_e32 v13, 16, v136
	v_xor_b32_e32 v14, 24, v136
	v_xor_b32_e32 v15, 0x410, v136
	v_xor_b32_e32 v16, 0x418, v136
	v_xor_b32_e32 v17, 0x408, v136
	v_or_b32_e32 v18, 0x380, v0
	v_add3_u32 v153, 0, v5, v1
	v_or_b32_e32 v1, 0x780, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[54:55], null, s54, 26, v[35:36]
	v_mad_u64_u32 v[55:56], null, s54, 28, v[35:36]
	v_mul_lo_u32 v154, v3, s21
	v_mul_lo_u32 v155, v7, s21
	v_mad_u64_u32 v[56:57], null, s54, 30, v[35:36]
	s_mul_i32 s24, s54, 6
	s_mul_i32 s26, s54, 18
	s_mul_i32 s27, s54, 20
	s_mul_i32 s28, s54, 22
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s55, v80
	v_cmp_gt_i32_e64 s1, s55, v81
	v_cmp_gt_i32_e64 s4, s55, v83
	v_cmp_gt_i32_e64 s5, s55, v84
	v_cmp_gt_i32_e64 s6, s55, v85
	v_cmp_gt_i32_e64 s7, s55, v86
	v_cmp_gt_i32_e64 s8, s55, v87
	v_cmp_gt_i32_e64 s9, s55, v88
	v_cmp_gt_i32_e64 s10, s55, v89
	v_cmp_gt_i32_e64 s11, s55, v90
	v_cmp_gt_i32_e64 s12, s55, v91
	v_cmp_gt_i32_e64 s13, s55, v92
	v_cmp_gt_i32_e64 s14, s55, v93
	v_cmp_gt_i32_e64 s15, s55, v95
	v_cmp_gt_i32_e64 s16, s55, v96
	v_cmp_gt_i32_e64 s17, s55, v98
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v104, 8, v103
	v_or_b32_e32 v105, 10, v103
	v_or_b32_e32 v106, 12, v103
	v_or_b32_e32 v107, 14, v103
	v_or_b32_e32 v108, 16, v103
	v_or_b32_e32 v110, 18, v103
	v_or_b32_e32 v111, 20, v103
	v_or_b32_e32 v113, 22, v103
	v_or_b32_e32 v114, 24, v103
	v_or_b32_e32 v116, 26, v103
	v_or_b32_e32 v117, 28, v103
	v_or_b32_e32 v118, 30, v103
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v123, s20, v33
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v124, s22, v33
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v125, s24, v33
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v126, s25, v33
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v127, s26, v33
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v128, s27, v33
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v129, s28, v33
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v130, s29, v34
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v131, s30, v34
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v132, s31, v34
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v133, s33, v34
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v156, 0, v4
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v157, 0, v6
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v158, 0, v9
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v159, 0, v2
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v160, 0, v8
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v161, 0, v10
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v162, 0, v11
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v163, 0, v12
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v164, 0, v13
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v165, 0, v14
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v166, 0, v15
	v_add_nc_u32_e32 v167, 0, v16
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v168, 0, v17
	v_add_nc_u32_e32 v169, 0, v18
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v170, 0, v1
	v_add_nc_u32_e32 v171, s34, v34
	v_add_nc_u32_e32 v172, s35, v34
	v_add_nc_u32_e32 v173, s36, v34
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v174, s20, v35
	v_add_nc_u32_e32 v175, s22, v35
	v_add_nc_u32_e32 v176, s24, v35
	v_lshl_add_u32 v177, s54, 3, v35
	v_add_nc_u32_e32 v178, s25, v35
	v_add_nc_u32_e32 v179, s26, v35
	v_add_nc_u32_e32 v180, s27, v35
	v_add_nc_u32_e32 v181, s28, v35
	v_add_nc_u32_e32 v182, 0, v61
	v_add_nc_u32_e32 v183, 0, v0
	s_add_i32 s83, s76, -1
	s_mov_b32 s68, s56
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mov_b32 s56, s58
	s_mov_b32 s81, 0
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s73, s63, 0xffff
	s_mov_b32 s72, s62
	s_lshr_b32 s84, s83, 7
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v57, v154, s81, 1
	v_add_lshl_u32 v58, v155, s81, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s81, s80
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s62, s70
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s55
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v57, 0x80000000, v57, s52
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v184, v80, s3, 1
	v_add_lshl_u32 v193, v90, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v185, v81, s3, 1
	v_add_lshl_u32 v196, v96, s3, 1
	v_add_lshl_u32 v186, v83, s3, 1
	v_add_lshl_u32 v197, v93, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s63, s71
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v187, v84, s3, 1
	v_add_lshl_u32 v194, v91, s3, 1
	v_add_lshl_u32 v188, v85, s3, 1
	v_add_lshl_u32 v189, v86, s3, 1
	v_add_lshl_u32 v190, v87, s3, 1
	v_add_lshl_u32 v191, v88, s3, 1
	v_add_lshl_u32 v192, v89, s3, 1
	v_add_lshl_u32 v195, v92, s3, 1
	v_add_lshl_u32 v198, v95, s3, 1
	v_add_lshl_u32 v199, v98, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v57, v57, s[60:63], 0 offen
	buffer_load_u16 v58, v58, s[60:63], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v184, 0x80000000, v184, s0
	v_cndmask_b32_e64 v193, 0x80000000, v193, s11
	v_cndmask_b32_e64 v185, 0x80000000, v185, s1
	v_cndmask_b32_e64 v196, 0x80000000, v196, s16
	v_cndmask_b32_e64 v186, 0x80000000, v186, s4
	v_cndmask_b32_e64 v197, 0x80000000, v197, s14
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	v_cndmask_b32_e64 v187, 0x80000000, v187, s5
	v_cndmask_b32_e64 v194, 0x80000000, v194, s12
	v_cndmask_b32_e64 v188, 0x80000000, v188, s6
	v_cndmask_b32_e64 v189, 0x80000000, v189, s7
	v_cndmask_b32_e64 v190, 0x80000000, v190, s8
	v_cndmask_b32_e64 v191, 0x80000000, v191, s9
	v_cndmask_b32_e64 v192, 0x80000000, v192, s10
	v_cndmask_b32_e64 v195, 0x80000000, v195, s13
	v_cndmask_b32_e64 v198, 0x80000000, v198, s15
	v_cndmask_b32_e64 v199, 0x80000000, v199, s17
	s_clause 0xf
	buffer_load_u16 v184, v184, s[72:75], 0 offen
	buffer_load_u16 v185, v185, s[72:75], 0 offen
	buffer_load_u16 v186, v186, s[72:75], 0 offen
	buffer_load_u16 v187, v187, s[72:75], 0 offen
	buffer_load_u16 v188, v188, s[72:75], 0 offen
	buffer_load_u16 v189, v189, s[72:75], 0 offen
	buffer_load_u16 v190, v190, s[72:75], 0 offen
	buffer_load_u16 v191, v191, s[72:75], 0 offen
	buffer_load_u16 v193, v193, s[72:75], 0 offen
	buffer_load_u16 v196, v196, s[72:75], 0 offen
	buffer_load_u16 v197, v197, s[72:75], 0 offen
	buffer_load_u16 v194, v194, s[72:75], 0 offen
	buffer_load_u16 v192, v192, s[72:75], 0 offen
	buffer_load_u16 v195, v195, s[72:75], 0 offen
	buffer_load_u16 v198, v198, s[72:75], 0 offen
	buffer_load_u16 v199, v199, s[72:75], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
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
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s19, s81, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s19, 7
	s_cmp_lg_u32 s81, s84
	s_mov_b32 s81, s19
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v10, v58, v10 :: v_dual_lshlrev_b32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v25, v25, v57
	v_mul_f32_e32 v26, v26, v57
	v_mul_f32_e32 v27, v27, v57
	v_mul_f32_e32 v28, v28, v57
	v_mul_f32_e32 v29, v29, v57
	v_mul_f32_e32 v30, v30, v57
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v184, 16, v184
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v12, v58, v12 :: v_dual_lshlrev_b32 v185, 16, v185
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v186, 16, v186
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v14, v58, v14 :: v_dual_lshlrev_b32 v189, 16, v189
	v_dual_mul_f32 v31, v31, v57 :: v_dual_lshlrev_b32 v188, 16, v188
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v17, v17, v57 :: v_dual_lshlrev_b32 v190, 16, v190
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v16, v58, v16 :: v_dual_lshlrev_b32 v193, 16, v193
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v19, v19, v57 :: v_dual_lshlrev_b32 v192, 16, v192
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v21, v21, v57 :: v_dual_lshlrev_b32 v194, 16, v194
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v23, v23, v57 :: v_dual_lshlrev_b32 v198, 16, v198
	v_dual_mul_f32 v2, v58, v2 :: v_dual_lshlrev_b32 v197, 16, v197
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v32, v32, v57 :: v_dual_lshlrev_b32 v199, 16, v199
	v_dual_mul_f32 v9, v58, v9 :: v_dual_lshlrev_b32 v196, 16, v196
	v_dual_mul_f32 v18, v18, v57 :: v_dual_fmac_f32 v119, v28, v187
	v_dual_mul_f32 v20, v20, v57 :: v_dual_mul_f32 v11, v58, v11
	v_dual_mul_f32 v22, v22, v57 :: v_dual_fmac_f32 v115, v29, v188
	v_dual_mul_f32 v24, v24, v57 :: v_dual_mul_f32 v15, v58, v15
	v_dual_mul_f32 v13, v58, v13 :: v_dual_fmac_f32 v122, v25, v184
	v_dual_mul_f32 v1, v58, v1 :: v_dual_fmac_f32 v120, v27, v186
	v_dual_mul_f32 v4, v58, v4 :: v_dual_fmac_f32 v109, v31, v190
	v_dual_mul_f32 v3, v58, v3 :: v_dual_fmac_f32 v94, v21, v197
	v_dual_mul_f32 v6, v58, v6 :: v_dual_fmac_f32 v101, v17, v192
	v_dual_mul_f32 v5, v58, v5 :: v_dual_fmac_f32 v102, v32, v191
	v_dual_mul_f32 v8, v58, v8 :: v_dual_fmac_f32 v99, v19, v194
	v_dual_mul_f32 v7, v58, v7 :: v_dual_fmac_f32 v76, v9, v184
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v121, v26, v185 :: v_dual_fmac_f32 v78, v24, v199
	v_dual_fmac_f32 v112, v30, v189 :: v_dual_fmac_f32 v97, v20, v195
	v_dual_fmac_f32 v100, v18, v193 :: v_dual_fmac_f32 v79, v23, v196
	v_dual_fmac_f32 v82, v22, v198 :: v_dual_fmac_f32 v75, v12, v187
	v_dual_fmac_f32 v77, v10, v185 :: v_dual_fmac_f32 v74, v11, v186
	v_dual_fmac_f32 v72, v13, v188 :: v_dual_fmac_f32 v73, v14, v189
	v_dual_fmac_f32 v70, v15, v190 :: v_dual_fmac_f32 v71, v16, v191
	v_dual_fmac_f32 v67, v1, v192 :: v_dual_fmac_f32 v68, v2, v193
	v_dual_fmac_f32 v66, v3, v194 :: v_dual_fmac_f32 v69, v4, v195
	v_dual_fmac_f32 v64, v5, v197 :: v_dual_fmac_f32 v65, v6, v198
	v_dual_fmac_f32 v63, v7, v196 :: v_dual_fmac_f32 v62, v8, v199
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s19, s78, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s19, 0, 0x80
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s19, v1
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	s_and_b32 s20, s19, 0xe0
	s_mov_b32 s19, s77
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s77, s20
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_add_i32 s21, s3, s79
	s_mov_b32 s19, s77
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s22, s21, s19
	v_add_nc_u32_e32 v57, s54, v33
	s_mul_i32 s23, s22, s54
	v_add_nc_u32_e32 v58, s55, v34
	s_add_i32 s23, s23, s66
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s22, s22, s55
	v_add_nc_u32_e32 v189, s23, v125
	v_add_nc_u32_e32 v190, s23, v38
	v_add_nc_u32_e32 v187, s23, v124
	v_add_nc_u32_e32 v188, s23, v37
	s_add_i32 s22, s22, s53
	v_add_nc_u32_e32 v185, s23, v123
	v_add_nc_u32_e32 v186, s23, v36
	v_add_nc_u32_e32 v184, s23, v33
	v_add_nc_u32_e32 v57, s23, v57
	v_add_nc_u32_e32 v191, s23, v126
	v_add_nc_u32_e32 v192, s23, v39
	v_add_nc_u32_e32 v193, s23, v127
	v_add_nc_u32_e32 v194, s23, v40
	v_add_nc_u32_e32 v195, s23, v128
	v_add_nc_u32_e32 v196, s23, v41
	v_add_nc_u32_e32 v197, s23, v129
	v_add_nc_u32_e32 v198, s23, v42
	v_add_nc_u32_e32 v199, s22, v34
	v_add_nc_u32_e32 v200, s22, v130
	v_add_nc_u32_e32 v201, s22, v43
	v_add_nc_u32_e32 v202, s22, v131
	v_add_nc_u32_e32 v203, s22, v44
	v_add_nc_u32_e32 v204, s22, v132
	v_add_nc_u32_e32 v205, s22, v45
	v_add_nc_u32_e32 v206, s22, v133
	v_add_nc_u32_e32 v207, s22, v46
	v_add_nc_u32_e32 v208, s22, v171
	v_add_nc_u32_e32 v209, s22, v47
	v_add_nc_u32_e32 v210, s22, v172
	v_add_nc_u32_e32 v211, s22, v48
	v_add_nc_u32_e32 v212, s22, v173
	v_add_nc_u32_e32 v213, s22, v49
	v_add_nc_u32_e32 v58, s22, v58
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v189, 0x80000000, v189 :: v_dual_cndmask_b32 v190, 0x80000000, v190
	v_dual_cndmask_b32 v187, 0x80000000, v187 :: v_dual_cndmask_b32 v188, 0x80000000, v188
	v_dual_cndmask_b32 v185, 0x80000000, v185 :: v_dual_cndmask_b32 v186, 0x80000000, v186
	v_dual_cndmask_b32 v184, 0x80000000, v184 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	v_dual_cndmask_b32 v191, 0x80000000, v191 :: v_dual_cndmask_b32 v192, 0x80000000, v192
	v_dual_cndmask_b32 v193, 0x80000000, v193 :: v_dual_cndmask_b32 v194, 0x80000000, v194
	v_dual_cndmask_b32 v195, 0x80000000, v195 :: v_dual_cndmask_b32 v196, 0x80000000, v196
	v_dual_cndmask_b32 v197, 0x80000000, v197 :: v_dual_cndmask_b32 v198, 0x80000000, v198
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v199, 0x80000000, v199, s18
	v_cndmask_b32_e64 v200, 0x80000000, v200, s18
	v_cndmask_b32_e64 v201, 0x80000000, v201, s18
	v_cndmask_b32_e64 v202, 0x80000000, v202, s18
	v_cndmask_b32_e64 v203, 0x80000000, v203, s18
	v_cndmask_b32_e64 v204, 0x80000000, v204, s18
	v_cndmask_b32_e64 v205, 0x80000000, v205, s18
	v_cndmask_b32_e64 v206, 0x80000000, v206, s18
	v_cndmask_b32_e64 v207, 0x80000000, v207, s18
	v_cndmask_b32_e64 v208, 0x80000000, v208, s18
	v_cndmask_b32_e64 v209, 0x80000000, v209, s18
	v_cndmask_b32_e64 v210, 0x80000000, v210, s18
	v_cndmask_b32_e64 v211, 0x80000000, v211, s18
	v_cndmask_b32_e64 v212, 0x80000000, v212, s18
	v_cndmask_b32_e64 v213, 0x80000000, v213, s18
	s_mov_b32 s58, s70
	s_mov_b32 s59, s71
	v_cndmask_b32_e64 v58, 0x80000000, v58, s18
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x7
	buffer_load_u8 v190, v190, s[68:71], 0 offen
	buffer_load_u8 v188, v188, s[68:71], 0 offen
	buffer_load_u8 v186, v186, s[68:71], 0 offen
	buffer_load_u8 v214, v57, s[68:71], 0 offen
	buffer_load_u8 v198, v198, s[68:71], 0 offen
	buffer_load_u8 v196, v196, s[68:71], 0 offen
	buffer_load_u8 v194, v194, s[68:71], 0 offen
	buffer_load_u8 v192, v192, s[68:71], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x7
	buffer_load_u8 v205, v205, s[56:59], 0 offen
	buffer_load_u8 v203, v203, s[56:59], 0 offen
	buffer_load_u8 v201, v201, s[56:59], 0 offen
	buffer_load_u8 v215, v58, s[56:59], 0 offen
	buffer_load_u8 v213, v213, s[56:59], 0 offen
	buffer_load_u8 v211, v211, s[56:59], 0 offen
	buffer_load_u8 v209, v209, s[56:59], 0 offen
	buffer_load_u8 v207, v207, s[56:59], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x7
	buffer_load_u8 v216, v189, s[68:71], 0 offen
	buffer_load_u8 v217, v187, s[68:71], 0 offen
	buffer_load_u8 v218, v185, s[68:71], 0 offen
	buffer_load_u8 v219, v184, s[68:71], 0 offen
	buffer_load_u8 v197, v197, s[68:71], 0 offen
	buffer_load_u8 v195, v195, s[68:71], 0 offen
	buffer_load_u8 v193, v193, s[68:71], 0 offen
	buffer_load_u8 v220, v191, s[68:71], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0x7
	buffer_load_u8 v204, v204, s[56:59], 0 offen
	buffer_load_u8 v202, v202, s[56:59], 0 offen
	buffer_load_u8 v200, v200, s[56:59], 0 offen
	buffer_load_u8 v199, v199, s[56:59], 0 offen
	buffer_load_u8 v212, v212, s[56:59], 0 offen
	buffer_load_u8 v210, v210, s[56:59], 0 offen
	buffer_load_u8 v208, v208, s[56:59], 0 offen
	buffer_load_u8 v206, v206, s[56:59], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v221, 0, v134
	v_add_nc_u32_e32 v222, 0, v135
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v223, 0, v136
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s19, s19, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s19, s20
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(31)
	v_lshlrev_b16 v57.l, 8, v190.l
	s_waitcnt vmcnt(30)
	v_lshlrev_b16 v57.h, 8, v188.l
	s_waitcnt vmcnt(29)
	v_lshlrev_b16 v58.l, 8, v186.l
	s_waitcnt vmcnt(28)
	v_lshlrev_b16 v58.h, 8, v214.l
	s_waitcnt vmcnt(27)
	v_lshlrev_b16 v184.l, 8, v198.l
	s_waitcnt vmcnt(26)
	v_lshlrev_b16 v184.h, 8, v196.l
	s_waitcnt vmcnt(25)
	v_lshlrev_b16 v185.l, 8, v194.l
	s_waitcnt vmcnt(24)
	v_lshlrev_b16 v185.h, 8, v192.l
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v186.l, 8, v205.l
	s_waitcnt vmcnt(22)
	v_lshlrev_b16 v186.h, 8, v203.l
	s_waitcnt vmcnt(21)
	v_lshlrev_b16 v187.l, 8, v201.l
	s_waitcnt vmcnt(20)
	v_lshlrev_b16 v187.h, 8, v215.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v188.l, 8, v213.l
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v188.h, 8, v211.l
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v189.l, 8, v209.l
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v189.h, 8, v207.l
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(15)
	v_or_b16 v191.h, v216.l, v57.l
	s_waitcnt vmcnt(14)
	v_or_b16 v191.l, v217.l, v57.h
	s_waitcnt vmcnt(13)
	v_or_b16 v190.h, v218.l, v58.l
	s_waitcnt vmcnt(12)
	v_or_b16 v190.l, v219.l, v58.h
	s_waitcnt vmcnt(11)
	v_or_b16 v58.h, v197.l, v184.l
	s_waitcnt vmcnt(10)
	v_or_b16 v58.l, v195.l, v184.h
	s_waitcnt vmcnt(9)
	v_or_b16 v57.h, v193.l, v185.l
	s_waitcnt vmcnt(8)
	v_or_b16 v57.l, v220.l, v185.h
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(7)
	v_or_b16 v193.h, v204.l, v186.l
	s_waitcnt vmcnt(6)
	v_or_b16 v193.l, v202.l, v186.h
	s_waitcnt vmcnt(5)
	v_or_b16 v192.h, v200.l, v187.l
	s_waitcnt vmcnt(4)
	v_or_b16 v192.l, v199.l, v187.h
	s_waitcnt vmcnt(3)
	v_or_b16 v195.h, v212.l, v188.l
	s_waitcnt vmcnt(2)
	v_or_b16 v195.l, v210.l, v188.h
	s_waitcnt vmcnt(1)
	v_or_b16 v194.h, v208.l, v189.l
	s_waitcnt vmcnt(0)
	v_or_b16 v194.l, v206.l, v189.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_store_b64 v221, v[190:191]
	ds_store_b64 v156, v[57:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[184:187], v222 offset1:2
	ds_load_b64 v[57:58], v157
	ds_load_b64 v[196:197], v158
	ds_load_b64 v[198:199], v159
	ds_load_b64 v[200:201], v160
	ds_load_b64 v[202:203], v161
	ds_load_b64 v[204:205], v162
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v221, v[192:193]
	ds_store_b64 v156, v[194:195]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[188:191], v223 offset1:2
	ds_load_b64 v[192:193], v166
	ds_load_b64 v[194:195], v163
	ds_load_b64 v[206:207], v167
	ds_load_b64 v[208:209], v164
	ds_load_b64 v[210:211], v165
	ds_load_b64 v[212:213], v168
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[184:185], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[192:193], v[184:185], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[200:201], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[192:193], v[200:201], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[194:195], v[57:58], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[206:207], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[194:195], v[202:203], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[206:207], v[202:203], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[208:209], v[196:197], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[190:191], v[196:197], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[208:209], v[186:187], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[190:191], v[186:187], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[210:211], v[198:199], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[212:213], v[198:199], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[210:211], v[204:205], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[212:213], v[204:205], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s20, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s34, s20, 0x80
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s19, s34
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s59, s19, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v57, s59, v103
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v58, s3, v57
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s51, s83, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s19, s34, v58
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v58, 2, v103
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s51, s51, s82
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v58, s59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v184, s3, v58
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s50, s83, v58
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s27, s34, v184
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v184, 4, v103
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s50, s50, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v184, s59, v184
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v185, s3, v184
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s49, s83, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s30, s34, v185
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v185, 6, v103
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s49, s49, s82
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v185, s59, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v186, s3, v185
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s48, s83, v185
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s29, s34, v186
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v186, s59, v104
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s48, s48, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v187, s3, v186
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s47, s83, v186
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s25, s34, v187
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v187, s59, v105
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s47, s47, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v188, s3, v187
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s46, s83, v187
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s28, s34, v188
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v188, s59, v106
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s46, s46, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v189, s3, v188
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s45, s83, v188
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s31, s34, v189
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v189, s59, v107
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s45, s45, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v190, s3, v189
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s44, s83, v189
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s33, s34, v190
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v190, s59, v108
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s44, s44, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v191, s3, v190
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s43, s83, v190
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s26, s34, v191
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v191, s59, v110
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s43, s43, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v192, s3, v191
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s42, s83, v191
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s24, s34, v192
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v192, s59, v111
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s42, s42, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v193, s3, v192
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s41, s83, v192
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s23, s34, v193
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v193, s59, v113
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s41, s41, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v194, s3, v193
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s40, s83, v193
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s21, s34, v194
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v194, s59, v114
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s40, s40, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v195, s3, v194
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s39, s83, v194
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s22, s34, v195
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v195, s59, v116
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s39, s39, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v196, s3, v195
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s38, s83, v195
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s20, s34, v196
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v196, s59, v117
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s38, s38, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v197, s3, v196
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s37, s83, v196
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s35, s34, v197
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v197, s59, v118
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s59, s59, s79
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s37, s37, s82
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s58, s59, s54
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s62, s59, s55
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s58, s58, s66
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v198, s3, v197
	v_add_nc_u32_e32 v57, s58, v35
	v_add_nc_u32_e32 v58, s58, v174
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s19
	v_add_nc_u32_e32 v184, s58, v175
	v_add_nc_u32_e32 v186, s58, v177
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s27
	v_add_nc_u32_e32 v188, s58, v51
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v58, 0x80000000, v58, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s30
	v_add_nc_u32_e32 v191, s58, v54
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v184, 0x80000000, v184, s3
	s_clause 0x2
	buffer_load_u8 v185, v57, s[68:71], 0 offen
	buffer_load_u8 v58, v58, s[68:71], 0 offen
	buffer_load_u8 v184, v184, s[68:71], 0 offen
	v_add_nc_u32_e32 v57, s58, v176
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s29
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s34, s34, v198
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s36, s83, v197
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s59, s71
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s25
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v196, s62, v143
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	s_clause 0x1
	buffer_load_u8 v187, v57, s[68:71], 0 offen
	buffer_load_u8 v186, v186, s[68:71], 0 offen
	v_add_nc_u32_e32 v57, s58, v50
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s28
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s36, s36, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s31
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s3
	s_clause 0x1
	buffer_load_u8 v189, v57, s[68:71], 0 offen
	buffer_load_u8 v188, v188, s[68:71], 0 offen
	v_add_nc_u32_e32 v57, s58, v52
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s33
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s26
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v190, v57, s[68:71], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(7)
	v_and_b16 v57.l, v185.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v57.h, v58.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v57.l, v185.l, v57.l, s51
	v_cndmask_b16 v57.h, v58.l, v57.h, s50
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v58.l, v184.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v58.l, v184.l, v58.l, s49
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(4)
	v_and_b16 v58.h, v187.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v184.l, v186.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v58.h, v187.l, v58.h, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v184.l, v186.l, v184.l, s47
	v_add_nc_u32_e32 v186, s58, v178
	v_add_nc_u32_e32 v187, s58, v179
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s24
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(1)
	v_and_b16 v185.l, v188.l, 15
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v184.h, v189.l, 15
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v185.l, v188.l, v185.l, s45
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x1
	buffer_load_u8 v188, v186, s[68:71], 0 offen
	buffer_load_u8 v187, v187, s[68:71], 0 offen
	v_add_nc_u32_e32 v186, s58, v180
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v184.h, v189.l, v184.h, s46
	v_add_nc_u32_e32 v189, s58, v181
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v185.h, v190.l, 15
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v189, 0x80000000, v189, s3
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_cndmask_b16 v185.h, v190.l, v185.h, s44
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v190, v186, s[68:71], 0 offen
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s22
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v189, v189, s[68:71], 0 offen
	v_add_nc_u32_e32 v186, s58, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s20
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s35
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v192, v186, s[68:71], 0 offen
	v_add_nc_u32_e32 v186, s58, v55
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	s_clause 0x1
	buffer_load_u8 v191, v191, s[68:71], 0 offen
	buffer_load_u8 v193, v186, s[68:71], 0 offen
	v_add_nc_u32_e32 v186, s58, v56
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s34
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	s_mov_b32 s58, s70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s19
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v194, v186, s[68:71], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(7)
	v_and_b16 v186.l, v188.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v186.h, v187.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v186.l, v188.l, v186.l, s43
	v_cndmask_b16 v186.h, v187.l, v186.h, s42
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v187.l, v190.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v187.h, v189.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v187.l, v190.l, v187.l, s41
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v190, s62, v137
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v187.h, v189.l, v187.h, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s18, s27
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v188.l, v192.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v188.l, v192.l, v188.l, s39
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v192, s62, v139
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v188.h, v191.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v189.l, v193.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v188.h, v191.l, v188.h, s38
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v191, s62, v138
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v189.l, v193.l, v189.l, s37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v189.h, v194.l, 15
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s30
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	buffer_load_u8 v193, v191, s[56:59], 0 offen
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_cndmask_b16 v189.h, v194.l, v189.h, s36
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v194, 0x80000000, v192, s3
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v192, s62, v140
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s29
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v194, v194, s[56:59], 0 offen
	v_cndmask_b32_e64 v195, 0x80000000, v192, s3
	buffer_load_u8 v192, v190, s[56:59], 0 offen
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s25
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v195, v195, s[56:59], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v190, s62, v141
	v_add_nc_u32_e32 v191, s62, v142
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s28
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v198, 0x80000000, v196, s3
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v196, s62, v144
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s33
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v199, v198, s[56:59], 0 offen
	v_cndmask_b32_e64 v200, 0x80000000, v196, s3
	s_clause 0x1
	buffer_load_u8 v197, v190, s[56:59], 0 offen
	buffer_load_u8 v196, v191, s[56:59], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v190, s62, v145
	v_add_nc_u32_e32 v191, s62, v146
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s26
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v202, v200, s[56:59], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v198, s62, v147
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s23
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v201, 0x80000000, v198, s3
	s_clause 0x1
	buffer_load_u8 v198, v190, s[56:59], 0 offen
	buffer_load_u8 v200, v191, s[56:59], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v190, s62, v148
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s21
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v191, s62, v149
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s22
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v204, v201, s[56:59], 0 offen
	buffer_load_u8 v203, v190, s[56:59], 0 offen
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v190, s62, v150
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s20
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v205, v191, s[56:59], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v191, s62, v151
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s35
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	s_clause 0x1
	buffer_load_u8 v207, v190, s[56:59], 0 offen
	buffer_load_u8 v206, v191, s[56:59], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v190, s62, v152
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s18, s34
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	buffer_load_u8 v201, v190, s[56:59], 0 offen
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v183, v57
	ds_store_b8_d16_hi v183, v57 offset:128
	ds_store_b8 v183, v58 offset:256
	ds_store_b8_d16_hi v183, v58 offset:384
	ds_store_b8 v183, v184 offset:512
	ds_store_b8_d16_hi v183, v184 offset:640
	ds_store_b8 v183, v185 offset:768
	ds_store_b8 v183, v186 offset:1024
	ds_store_b8_d16_hi v183, v186 offset:1152
	ds_store_b8 v183, v187 offset:1280
	ds_store_b8_d16_hi v183, v187 offset:1408
	ds_store_b8 v183, v188 offset:1536
	ds_store_b8_d16_hi v183, v188 offset:1664
	ds_store_b8_d16_hi v169, v185
	ds_store_b8 v183, v189 offset:1792
	ds_store_b8_d16_hi v170, v189
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v57, v182 offset:320
	ds_load_u8 v58, v182 offset:256
	ds_load_u8 v184, v182 offset:480
	ds_load_u8 v185, v182 offset:416
	ds_load_u8 v186, v182 offset:352
	ds_load_u8 v187, v182 offset:288
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v182 offset:448
	ds_load_u8 v188, v182 offset:384
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v184, 16, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v188, v58, 0xc0c0004
	ds_load_u8 v208, v182 offset:64
	ds_load_u8 v209, v182
	ds_load_u8 v188, v182 offset:224
	ds_load_u8 v189, v182 offset:160
	ds_load_u8 v190, v182 offset:96
	ds_load_u8 v191, v182 offset:32
	v_lshl_or_b32 v58, v58, 16, v57
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v208, v209, v208, 0xc0c0004
	ds_load_u8 v209, v182 offset:192
	ds_load_u8 v210, v182 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v184, v188, 16, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v209, v210, v209, 0xc0c0004
	v_lshl_or_b32 v57, v209, 16, v208
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v192.h, v192.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v216.l, v192.l, v192.h, s51
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v192.l, v193.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v216.h, v193.l, v192.l, s50
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v192.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v217.l, v194.l, v192.l, s49
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v192.l, v195.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v217.h, v195.l, v192.l, s48
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v192.l, v197.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v218.l, v197.l, v192.l, s47
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v192.l, v196.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v218.h, v196.l, v192.l, s46
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v192.l, v199.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v219.l, v199.l, v192.l, s45
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v192.l, v202.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v219.h, v202.l, v192.l, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v192.l, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v220.l, v198.l, v192.l, s43
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v192.l, v200.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v220.h, v200.l, v192.l, s42
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v192.l, v204.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v221.l, v204.l, v192.l, s41
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v192.l, v203.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v221.h, v203.l, v192.l, s40
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v192.l, v205.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v222.l, v205.l, v192.l, s39
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v192.l, v207.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v222.h, v207.l, v192.l, s38
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v192.l, v206.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v223.l, v206.l, v192.l, s37
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v192.l, v201.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v223.h, v201.l, v192.l, s36
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	ds_load_u8 v224, v182 offset:704
	ds_load_u8 v225, v182 offset:640
	ds_load_u8 v226, v182 offset:576
	ds_load_u8 v227, v182 offset:512
	ds_load_u8 v228, v182 offset:736
	ds_load_u8 v229, v182 offset:672
	ds_load_u8 v230, v182 offset:608
	ds_load_u8 v231, v182 offset:544
	ds_load_u8 v232, v182 offset:960
	ds_load_u8 v233, v182 offset:896
	ds_load_u8 v234, v182 offset:832
	ds_load_u8 v235, v182 offset:768
	ds_load_u8 v236, v182 offset:992
	ds_load_u8 v237, v182 offset:928
	ds_load_u8 v238, v182 offset:864
	ds_load_u8 v239, v182 offset:800
	ds_load_u8 v240, v182 offset:1216
	ds_load_u8 v241, v182 offset:1152
	ds_load_u8 v242, v182 offset:1088
	ds_load_u8 v243, v182 offset:1024
	ds_load_u8 v200, v182 offset:1248
	ds_load_u8 v201, v182 offset:1184
	ds_load_u8 v204, v182 offset:1120
	ds_load_u8 v205, v182 offset:1056
	ds_load_u8 v244, v182 offset:1472
	ds_load_u8 v245, v182 offset:1408
	ds_load_u8 v246, v182 offset:1344
	ds_load_u8 v247, v182 offset:1280
	ds_load_u8 v208, v182 offset:1504
	ds_load_u8 v209, v182 offset:1440
	ds_load_u8 v212, v182 offset:1376
	ds_load_u8 v213, v182 offset:1312
	ds_load_u8 v202, v182 offset:1728
	ds_load_u8 v203, v182 offset:1664
	ds_load_u8 v206, v182 offset:1600
	ds_load_u8 v207, v182 offset:1536
	ds_load_u8 v192, v182 offset:1760
	ds_load_u8 v193, v182 offset:1696
	ds_load_u8 v194, v182 offset:1632
	ds_load_u8 v195, v182 offset:1568
	ds_load_u8 v210, v182 offset:1984
	ds_load_u8 v211, v182 offset:1920
	ds_load_u8 v214, v182 offset:1856
	ds_load_u8 v215, v182 offset:1792
	ds_load_u8 v196, v182 offset:2016
	ds_load_u8 v197, v182 offset:1952
	ds_load_u8 v198, v182 offset:1888
	ds_load_u8 v199, v182 offset:1824
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v183, v216
	ds_store_b8_d16_hi v183, v216 offset:128
	ds_store_b8 v183, v217 offset:256
	ds_store_b8_d16_hi v183, v217 offset:384
	ds_store_b8 v183, v218 offset:512
	ds_store_b8_d16_hi v183, v218 offset:640
	ds_store_b8 v183, v219 offset:768
	ds_store_b8 v183, v220 offset:1024
	ds_store_b8_d16_hi v183, v220 offset:1152
	ds_store_b8 v183, v221 offset:1280
	ds_store_b8_d16_hi v183, v221 offset:1408
	ds_store_b8 v183, v222 offset:1536
	ds_store_b8_d16_hi v183, v222 offset:1664
	ds_store_b8_d16_hi v169, v219
	ds_store_b8 v183, v223 offset:1792
	ds_store_b8_d16_hi v170, v223
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v216, v153 offset:320
	ds_load_u8 v217, v153 offset:256
	ds_load_u8 v218, v153 offset:480
	ds_load_u8 v219, v153 offset:416
	ds_load_u8 v220, v153 offset:352
	ds_load_u8 v221, v153 offset:288
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v216, v217, v216, 0xc0c0004
	ds_load_u8 v217, v153 offset:448
	ds_load_u8 v222, v153 offset:384
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v219, v218, 16, v220
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v222, v217, 0xc0c0004
	ds_load_u8 v222, v153 offset:64
	ds_load_u8 v223, v153
	ds_load_u8 v248, v153 offset:224
	ds_load_u8 v249, v153 offset:160
	ds_load_u8 v250, v153 offset:96
	ds_load_u8 v251, v153 offset:32
	v_lshl_or_b32 v217, v217, 16, v216
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v223, v153 offset:192
	ds_load_u8 v252, v153 offset:128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v221, v251, v250, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v223, v252, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v216, v223, 16, v222
	v_perm_b32 v222, v249, v248, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[216:217], v[57:58], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v218, v222, 16, v221
	v_wmma_i32_16x16x16_iu4 v[9:16], v[216:217], v[184:185], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[218:219], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[218:219], v[184:185], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v57, v235, v234, 0xc0c0004
	v_perm_b32 v58, v233, v232, 0xc0c0004
	v_perm_b32 v184, v227, v226, 0xc0c0004
	v_perm_b32 v185, v225, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v58, 16, v57
	v_lshl_or_b32 v57, v185, 16, v184
	ds_load_u8 v184, v153 offset:832
	ds_load_u8 v185, v153 offset:768
	ds_load_u8 v186, v153 offset:992
	ds_load_u8 v187, v153 offset:928
	ds_load_u8 v188, v153 offset:864
	ds_load_u8 v189, v153 offset:800
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v153 offset:960
	ds_load_u8 v190, v153 offset:896
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v186, 16, v188
	v_perm_b32 v188, v239, v238, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v190, v185, 0xc0c0004
	ds_load_u8 v190, v153 offset:576
	ds_load_u8 v191, v153 offset:512
	ds_load_u8 v216, v153 offset:736
	ds_load_u8 v217, v153 offset:672
	ds_load_u8 v218, v153 offset:608
	ds_load_u8 v219, v153 offset:544
	v_lshl_or_b32 v185, v185, 16, v184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v153 offset:704
	ds_load_u8 v220, v153 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v189, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v220, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v184, v191, 16, v190
	v_perm_b32 v190, v217, v216, 0xc0c0004
	v_perm_b32 v191, v229, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[184:185], v[57:58], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v186, v190, 16, v189
	v_perm_b32 v189, v237, v236, 0xc0c0004
	v_perm_b32 v190, v231, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v189, v189, 16, v188
	v_lshl_or_b32 v188, v191, 16, v190
	v_perm_b32 v57, v247, v246, 0xc0c0004
	v_perm_b32 v58, v245, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v184, v243, v242, 0xc0c0004
	v_perm_b32 v185, v241, v240, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[186:187], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v58, 16, v57
	v_lshl_or_b32 v57, v185, 16, v184
	ds_load_u8 v184, v153 offset:1344
	ds_load_u8 v185, v153 offset:1280
	ds_load_u8 v186, v153 offset:1504
	ds_load_u8 v187, v153 offset:1440
	ds_load_u8 v188, v153 offset:1376
	ds_load_u8 v189, v153 offset:1312
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v153 offset:1472
	ds_load_u8 v190, v153 offset:1408
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v186, 16, v188
	v_perm_b32 v188, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v190, v185, 0xc0c0004
	ds_load_u8 v190, v153 offset:1088
	ds_load_u8 v191, v153 offset:1024
	ds_load_u8 v216, v153 offset:1248
	ds_load_u8 v217, v153 offset:1184
	ds_load_u8 v218, v153 offset:1120
	ds_load_u8 v219, v153 offset:1056
	v_lshl_or_b32 v185, v185, 16, v184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v153 offset:1216
	ds_load_u8 v220, v153 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v189, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v220, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v184, v191, 16, v190
	v_perm_b32 v190, v217, v216, 0xc0c0004
	v_perm_b32 v191, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[184:185], v[57:58], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v186, v190, 16, v189
	v_perm_b32 v189, v209, v208, 0xc0c0004
	v_perm_b32 v190, v205, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v189, v189, 16, v188
	v_lshl_or_b32 v188, v191, 16, v190
	v_perm_b32 v57, v215, v214, 0xc0c0004
	v_perm_b32 v58, v211, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v184, v207, v206, 0xc0c0004
	v_perm_b32 v185, v203, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[186:187], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v58, 16, v57
	v_lshl_or_b32 v57, v185, 16, v184
	ds_load_u8 v184, v153 offset:1856
	ds_load_u8 v185, v153 offset:1792
	ds_load_u8 v186, v153 offset:2016
	ds_load_u8 v187, v153 offset:1952
	ds_load_u8 v188, v153 offset:1888
	ds_load_u8 v189, v153 offset:1824
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v153 offset:1984
	ds_load_u8 v190, v153 offset:1920
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v186, 16, v188
	v_perm_b32 v188, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v190, v185, 0xc0c0004
	ds_load_u8 v190, v153 offset:1600
	ds_load_u8 v191, v153 offset:1536
	ds_load_u8 v200, v153 offset:1760
	ds_load_u8 v201, v153 offset:1696
	ds_load_u8 v202, v153 offset:1632
	ds_load_u8 v203, v153 offset:1568
	v_lshl_or_b32 v185, v185, 16, v184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v153 offset:1728
	ds_load_u8 v204, v153 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v189, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v204, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v184, v191, 16, v190
	v_perm_b32 v190, v201, v200, 0xc0c0004
	v_perm_b32 v191, v193, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[184:185], v[57:58], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v186, v190, 16, v189
	v_perm_b32 v189, v197, v196, 0xc0c0004
	v_perm_b32 v190, v195, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v189, v189, 16, v188
	v_lshl_or_b32 v188, v191, 16, v190
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[186:187], v[188:189], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge103
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v5, 39, v59
	v_or_b32_e32 v9, 35, v59
	v_or_b32_e32 v10, 34, v59
	v_or_b32_e32 v6, 38, v59
	v_or_b32_e32 v13, 7, v59
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s53, v5
	v_or_b32_e32 v11, s53, v9
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v7, 37, v59
	v_or_b32_e32 v8, 36, v59
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s53, v6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s55, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s53, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s55, v11
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v11, 33, v59
	v_or_b32_e32 v15, 5, v59
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s53, v7
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s55, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s53, v13
	v_or_b32_e32 v4, s53, v8
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v12, 32, v59
	v_or_b32_e32 v14, 6, v59
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s55, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s53, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s55, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v16, 4, v59
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s53, v15
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v18, 2, v59
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s55, v3
	v_cmp_gt_i32_e64 s4, s55, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s53, v12
	v_or_b32_e32 v4, s53, v14
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v17, 3, v59
	v_or_b32_e32 v19, 1, v59
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s55, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s53, v16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s55, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s53, v18
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s55, v3
	v_cmp_gt_i32_e64 s10, s55, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s53, v17
	v_or_b32_e32 v4, s53, v19
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s55, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s53, v59
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s55, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s67, s55
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v1, v122, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s3, s53
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s55, v3
	v_cmp_gt_i32_e64 s15, s55, v4
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s55, v61, s[18:19]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s55, v2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v4, v122, v1, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s55, v60, s[18:19]
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v122, v122
	v_bfe_u32 v2, v121, 16, 1
	v_bfe_u32 v21, v120, 16, 1
	v_bfe_u32 v22, v119, 16, 1
	v_cmp_o_f32_e64 s17, v120, v120
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_add3_u32 v2, v121, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v121, v121
	v_add3_u32 v21, v120, v21, 0x7fff
	v_add3_u32 v22, v119, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v119, v119
	v_bfe_u32 v23, v112, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v115, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s17
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s18
	v_bfe_u32 v22, v109, 16, 1
	v_cmp_o_f32_e64 s3, v115, v115
	v_add3_u32 v2, v115, v2, 0x7fff
	v_add3_u32 v23, v112, v23, 0x7fff
	v_cmp_o_f32_e64 s17, v112, v112
	v_bfe_u32 v24, v102, 16, 1
	v_add3_u32 v22, v109, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v109, v109
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v23.h, s17
	v_bfe_u32 v23, v101, 16, 1
	v_bfe_u32 v25, v100, 16, 1
	v_add3_u32 v24, v102, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v102, v102
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s18
	v_add3_u32 v23, v101, v23, 0x7fff
	v_cmp_o_f32_e64 s17, v101, v101
	v_add3_u32 v25, v100, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v100, v100
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s3
	v_bfe_u32 v24, v99, 16, 1
	v_bfe_u32 v26, v97, 16, 1
	v_mov_b16_e32 v20.h, 0
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s17
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s18
	v_bfe_u32 v25, v94, 16, 1
	v_add3_u32 v24, v99, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v99, v99
	v_add3_u32 v26, v97, v26, 0x7fff
	v_cmp_o_f32_e64 s17, v97, v97
	v_bfe_u32 v27, v82, 16, 1
	v_bfe_u32 v28, v79, 16, 1
	v_add3_u32 v25, v94, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v94, v94
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s3
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s17
	v_add3_u32 v26, v82, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v82, v82
	v_add3_u32 v27, v79, v28, 0x7fff
	v_mov_b16_e32 v28.l, v76.h
	v_mov_b16_e32 v28.h, v20.h
	v_mov_b16_e32 v20.l, v77.h
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s18
	v_bfe_u32 v29, v78, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s3
	v_and_b32_e32 v26, 1, v28
	v_and_b32_e32 v28, 1, v20
	v_mov_b16_e32 v20.l, v75.h
	v_cmp_o_f32_e64 s17, v79, v79
	v_add3_u32 v29, v78, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v78, v78
	v_add3_u32 v26, v76, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v76, v76
	v_mov_b16_e32 v30.l, v74.h
	v_mov_b16_e32 v30.h, v20.h
	v_and_b32_e32 v31, 1, v20
	v_add3_u32 v28, v77, v28, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s17
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s3
	v_cndmask_b16 v28.l, 0x7fff, v26.h, s18
	v_and_b32_e32 v26, 1, v30
	v_add3_u32 v29, v75, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v75, v75
	v_mov_b16_e32 v20.l, v73.h
	v_mov_b16_e32 v30.l, v72.h
	v_add3_u32 v26, v74, v26, 0x7fff
	v_mov_b16_e32 v32.l, v70.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s3
	v_cmp_o_f32_e64 s3, v74, v74
	v_and_b32_e32 v31, 1, v20
	v_and_b32_e32 v30, 1, v30
	v_mov_b16_e32 v32.h, v20.h
	v_mov_b16_e32 v20.l, v71.h
	v_cndmask_b16 v29.l, 0x7fff, v26.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	v_add3_u32 v30, v72, v30, 0x7fff
	v_and_b32_e32 v26, 1, v32
	v_and_b32_e32 v32, 1, v20
	v_mov_b16_e32 v20.l, v68.h
	v_add3_u32 v31, v73, v31, 0x7fff
	v_cmp_o_f32_e64 s17, v77, v77
	v_add3_u32 v26, v70, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v70, v70
	v_mov_b16_e32 v33.l, v67.h
	v_mov_b16_e32 v33.h, v20.h
	v_cndmask_b16 v31.l, 0x7fff, v30.h, s3
	v_and_b32_e32 v30, 1, v20
	v_mov_b16_e32 v20.l, v69.h
	v_add3_u32 v32, v71, v32, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s17
	v_cmp_o_f32_e64 s17, v73, v73
	v_cndmask_b16 v32.l, 0x7fff, v26.h, s18
	v_and_b32_e32 v26, 1, v33
	v_add3_u32 v30, v68, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v68, v68
	v_mov_b16_e32 v33.l, v66.h
	v_and_b32_e32 v34, 1, v20
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s17
	v_cmp_o_f32_e64 s17, v71, v71
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v34, v69, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v69, v69
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s17
	v_add3_u32 v26, v67, v26, 0x7fff
	v_cmp_o_f32_e64 s17, v67, v67
	v_add3_u32 v33, v66, v33, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_mov_b16_e32 v20.l, v65.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_mov_b16_e32 v35.l, v63.h
	v_mov_b16_e32 v35.h, v20.h
	v_cndmask_b16 v30.l, 0x7fff, v26.h, s17
	v_mov_b16_e32 v26.l, v64.h
	v_mov_b16_e32 v26.h, v20.h
	v_and_b32_e32 v36, 1, v20
	v_mov_b16_e32 v20.l, v62.h
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s3
	v_and_b32_e32 v33, 1, v35
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v35, v65, v36, 0x7fff
	v_and_b32_e32 v36, 1, v20
	v_cmp_o_f32_e64 s3, v65, v65
	v_add3_u32 v33, v63, v33, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v63, v63
	v_add3_u32 v26, v64, v26, 0x7fff
	v_cmp_o_f32_e64 s17, v64, v64
	v_add3_u32 v36, v62, v36, 0x7fff
	v_cmp_o_f32_e64 s18, v62, v62
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v33.h, s19
	v_mov_b32_e32 v33, 0x5410
	v_cndmask_b16 v35.l, 0x7fff, v26.h, s17
	v_cndmask_b16 v0.h, 0x7fff, v36.h, s18
	v_cndmask_b32_e64 v26, v2, v4, s3
	v_cndmask_b32_e64 v2, v4, v2, s3
	v_cndmask_b32_e64 v4, v22, v21, s3
	v_cndmask_b32_e64 v21, v21, v22, s3
	v_cndmask_b32_e64 v22, v25, v23, s3
	v_cndmask_b32_e64 v23, v23, v25, s3
	v_cndmask_b32_e64 v25, v27, v24, s3
	v_mov_b32_e32 v36, 0x7632
	v_cndmask_b32_e64 v24, v24, v27, s3
	v_cndmask_b32_e64 v27, v31, v28, s3
	v_cndmask_b32_e64 v28, v28, v31, s3
	v_cndmask_b32_e64 v31, 0x1054, v33, s3
	v_cndmask_b32_e64 v33, 0x3276, v36, s3
	s_mov_b32 s17, 0x76543210
	v_cndmask_b32_e64 v36, v32, v29, s3
	v_cndmask_b32_e64 v29, v29, v32, s3
	v_lshl_or_b32 v31, v31, 8, v31
	v_lshl_or_b32 v33, v33, 8, v33
	v_cndmask_b32_e64 v32, v35, v30, s3
	v_cndmask_b32_e64 v30, v30, v35, s3
	v_permlanex16_b32 v2, v2, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v31, 0x540054, v31
	v_and_b32_e32 v33, 0x760076, v33
	v_add_lshl_u32 v49, v3, v59, 1
	v_cndmask_b32_e64 v35, v0, v34, s3
	v_cndmask_b32_e64 v0, v34, v0, s3
	v_lshl_or_b32 v31, v31, 4, v31
	v_lshl_or_b32 v33, v33, 4, v33
	v_permlanex16_b32 v21, v21, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v31, 0x5040504, v31
	v_permlanex16_b32 v28, v28, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v29, v29, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s17, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v2, v26, v31
	v_add_lshl_u32 v50, v3, v19, 1
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s52, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v51, v3, v18, 1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v2, v26, v33
	v_perm_b32 v26, v21, v4, v31
	v_perm_b32 v4, v21, v4, v33
	v_perm_b32 v21, v23, v22, v31
	v_perm_b32 v22, v23, v22, v33
	v_perm_b32 v23, v24, v25, v31
	v_perm_b32 v24, v24, v25, v33
	v_perm_b32 v25, v28, v27, v31
	v_perm_b32 v27, v28, v27, v33
	v_perm_b32 v28, v29, v36, v31
	v_perm_b32 v29, v29, v36, v33
	v_perm_b32 v36, v30, v32, v31
	v_perm_b32 v30, v30, v32, v33
	v_mov_b16_e32 v32.l, v34.h
	v_mov_b16_e32 v32.h, v20.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s65, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v34, v49, s[64:67], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v51, s3
	v_add_lshl_u32 v34, v3, v17, 1
	buffer_store_b16 v32, v50, s[64:67], 0 offen
	v_add_lshl_u32 v32, v3, v16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v20.l, v2.h
	buffer_store_b16 v2, v49, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v15, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v31, v0, v35, v31
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v0, v0, v35, v33
	v_mov_b16_e32 v35.l, v26.h
	v_mov_b16_e32 v35.h, v20.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_mov_b16_e32 v33.h, v20.h
	v_mov_b16_e32 v37.h, v20.h
	v_mov_b16_e32 v38.h, v20.h
	v_mov_b16_e32 v39.h, v20.h
	v_mov_b16_e32 v40.h, v20.h
	v_mov_b16_e32 v41.h, v20.h
	v_mov_b16_e32 v42.h, v20.h
	v_mov_b16_e32 v43.h, v20.h
	v_mov_b16_e32 v44.h, v20.h
	v_mov_b16_e32 v45.h, v20.h
	v_mov_b16_e32 v46.h, v20.h
	v_mov_b16_e32 v47.h, v20.h
	v_mov_b16_e32 v48.h, v20.h
	buffer_store_b16 v20, v34, s[64:67], 0 offen
	v_add_lshl_u32 v20, v3, v14, 1
	buffer_store_b16 v26, v32, s[64:67], 0 offen
	v_add_lshl_u32 v26, v3, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v35, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v33.l, v4.h
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v4, v20, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v20, v3, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v33, v26, s[64:67], 0 offen
	buffer_store_b16 v21, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v38.l, v21.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v37.l, v22.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v38, v4, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v22, v20, s[64:67], 0 offen
	v_add_lshl_u32 v20, v3, v7, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v37, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v40.l, v23.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_store_b16 v23, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v59, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s52, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v40, v20, s[64:67], 0 offen
	buffer_store_b16 v24, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v19, 1
	v_mov_b16_e32 v39.l, v24.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v42.l, v25.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v39, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v18, 1
	buffer_store_b16 v25, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v42, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v16, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v27.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v27, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v15, 1
	buffer_store_b16 v41, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v28, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v13, 1
	v_mov_b16_e32 v44.l, v28.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v43.l, v29.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v44, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v29, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v43, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v46.l, v36.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v36, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v46, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v30, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v7, 1
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v5, 1
	v_mov_b16_e32 v45.l, v30.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v48.l, v31.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_mov_b16_e32 v47.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v45, v3, s[64:67], 0 offen
	buffer_store_b16 v31, v4, s[64:67], 0 offen
	buffer_store_b16 v48, v2, s[64:67], 0 offen
	buffer_store_b16 v0, v5, s[64:67], 0 offen
	buffer_store_b16 v47, v1, s[64:67], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 253
		.amdhsa_next_free_sgpr 85
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 253
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 85
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13020
; TotalNumSgprs: 87
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 87
; NumVGPRsForWavesPerEU: 253
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     87
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     253
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
