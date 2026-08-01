	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[58:59], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 64, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v3, 2, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s58, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s59, 63
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
	s_sub_i32 s38, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s38, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s40, s38, s58
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v60, v3, v1
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v59, 32, v60
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
	s_ashr_i32 s39, s38, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[38:39], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s73, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s73, v60
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s39, s[6:7], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s73, v59
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s35, s58, v3
	v_cmp_gt_i32_e64 s2, s58, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s34, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s34, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge101_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s74, s73, s40
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr74
.LBB0_3:                                ; %Flow456
	s_load_b64 s[56:57], s[0:1], 0x28
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s72, s4, 6
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph100
	s_clause 0x1
	s_load_b256 s[48:55], s[0:1], 0x0
	s_load_b64 s[36:37], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v4, 5, v0
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v108, 6, v2
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v33, 31, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v6, 28, v4
	v_or_b32_e32 v8, 60, v4
	v_mad_u64_u32 v[34:35], null, s58, v108, v[3:4]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s41, s34, 31
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v5, 32, v0
	s_add_i32 s41, s34, s41
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	s_ashr_i32 s75, s41, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s41, s39, 31
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_u32 v9, v0, 4, 1
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[35:36], null, s36, v4, v[33:34]
	v_mad_u64_u32 v[36:37], null, s36, v6, v[33:34]
	v_mad_u64_u32 v[37:38], null, s36, v8, v[33:34]
	v_lshrrev_b32_e32 v10, 1, v5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s41, s39, s41
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[38:39], null, s58, 6, v[34:35]
	v_mad_u64_u32 v[39:40], null, s58, 10, v[34:35]
	v_mad_u64_u32 v[40:41], null, s58, 12, v[34:35]
	v_mad_u64_u32 v[41:42], null, s58, 14, v[34:35]
	v_mad_u64_u32 v[42:43], null, s58, 18, v[34:35]
	v_mad_u64_u32 v[43:44], null, s58, 20, v[34:35]
	v_mad_u64_u32 v[44:45], null, s58, 22, v[34:35]
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s76, s3, 5
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s38, s59
	v_mad_u64_u32 v[45:46], null, s58, 24, v[34:35]
	v_mad_u64_u32 v[46:47], null, s58, 26, v[34:35]
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v11, s73, v3
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s77, s41, 1
	s_and_b32 s61, s49, 0xffff
	s_add_i32 s80, s72, s3
	s_and_b32 s65, s51, 0xffff
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v1, 5, v1
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v2, 24, v2
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v3, 4, v5
	v_mad_u64_u32 v[47:48], null, s58, 28, v[34:35]
	s_bitcmp1_b32 s39, 0
	v_mad_u64_u32 v[48:49], null, s58, 30, v[34:35]
	v_mad_u64_u32 v[49:50], null, s36, 12, v[35:36]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v7, s72, v4
	v_or3_b32 v91, v9, v10, s72
	s_cselect_b32 s82, -1, 0
	s_add_i32 s74, s73, s40
	v_mad_u64_u32 v[50:51], null, s36, 20, v[35:36]
	v_mad_u64_u32 v[51:52], null, s36, 24, v[35:36]
	v_or3_b32 v137, v1, v2, v3
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, s74, v60
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, s74, v59
	v_mad_u64_u32 v[52:53], null, s36, 36, v[35:36]
	v_mad_u64_u32 v[53:54], null, s36, 40, v[35:36]
	v_mad_u64_u32 v[54:55], null, s36, 44, v[35:36]
	v_or_b32_e32 v12, 4, v7
	v_or_b32_e32 v13, 8, v7
	v_or_b32_e32 v14, 12, v7
	v_or_b32_e32 v15, 16, v7
	v_or_b32_e32 v16, 20, v7
	v_or_b32_e32 v17, 24, v7
	v_or_b32_e32 v18, s72, v6
	v_or_b32_e32 v19, 32, v7
	v_or_b32_e32 v20, 36, v7
	v_or_b32_e32 v21, 40, v7
	v_or_b32_e32 v22, 44, v7
	v_or_b32_e32 v9, 48, v7
	v_or_b32_e32 v10, 52, v7
	v_or_b32_e32 v23, 56, v7
	v_or_b32_e32 v24, s72, v8
	v_or_b32_e32 v92, 2, v91
	v_or_b32_e32 v93, 4, v91
	v_or_b32_e32 v94, 6, v91
	v_or_b32_e32 v95, 8, v91
	v_or_b32_e32 v96, 10, v91
	v_or_b32_e32 v98, 12, v91
	v_or_b32_e32 v99, 14, v91
	v_or_b32_e32 v100, 32, v91
	v_or_b32_e32 v101, 34, v91
	v_or_b32_e32 v102, 36, v91
	v_or_b32_e32 v103, 38, v91
	v_or_b32_e32 v104, 40, v91
	v_or_b32_e32 v105, 42, v91
	v_or_b32_e32 v106, 44, v91
	v_or_b32_e32 v107, 46, v91
	v_mad_u64_u32 v[55:56], null, s36, 48, v[35:36]
	v_mad_u64_u32 v[56:57], null, s36, 52, v[35:36]
	v_mul_lo_u32 v142, v1, s37
	v_mul_lo_u32 v143, v2, s37
	v_mad_u64_u32 v[57:58], null, s36, 56, v[35:36]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s59, v7
	v_cmp_gt_i32_e64 s1, s59, v12
	v_cmp_gt_i32_e64 s4, s59, v13
	v_cmp_gt_i32_e64 s5, s59, v14
	v_cmp_gt_i32_e64 s6, s59, v15
	v_cmp_gt_i32_e64 s7, s59, v16
	v_cmp_gt_i32_e64 s8, s59, v17
	v_cmp_gt_i32_e64 s9, s59, v18
	v_cmp_gt_i32_e64 s10, s59, v19
	v_cmp_gt_i32_e64 s11, s59, v20
	v_cmp_gt_i32_e64 s12, s59, v21
	v_cmp_gt_i32_e64 s13, s59, v22
	v_cmp_gt_i32_e64 s14, s59, v9
	v_cmp_gt_i32_e64 s15, s59, v10
	v_cmp_gt_i32_e64 s16, s59, v23
	v_cmp_gt_i32_e64 s17, s59, v24
	v_cmp_gt_i32_e64 s18, s59, v91
	v_cmp_gt_i32_e64 s19, s59, v92
	v_cmp_gt_i32_e64 s20, s59, v93
	v_cmp_gt_i32_e64 s21, s59, v94
	v_cmp_gt_i32_e64 s22, s59, v95
	v_cmp_gt_i32_e64 s23, s59, v96
	v_cmp_gt_i32_e64 s24, s59, v98
	v_cmp_gt_i32_e64 s25, s59, v99
	v_cmp_gt_i32_e64 s26, s59, v100
	v_cmp_gt_i32_e64 s27, s59, v101
	v_cmp_gt_i32_e64 s28, s59, v102
	v_cmp_gt_i32_e64 s29, s59, v103
	v_cmp_gt_i32_e64 s30, s59, v104
	v_cmp_gt_i32_e64 s31, s59, v105
	v_cmp_gt_i32_e64 s33, s59, v106
	v_cmp_gt_i32_e64 s34, s59, v107
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v109, 2, v108
	v_or_b32_e32 v110, 4, v108
	v_or_b32_e32 v111, 6, v108
	v_or_b32_e32 v112, 8, v108
	v_or_b32_e32 v113, 10, v108
	v_or_b32_e32 v114, 12, v108
	v_or_b32_e32 v115, 14, v108
	v_or_b32_e32 v116, 16, v108
	v_or_b32_e32 v117, 18, v108
	v_or_b32_e32 v118, 20, v108
	v_or_b32_e32 v119, 22, v108
	v_or_b32_e32 v120, 24, v108
	v_or_b32_e32 v121, 26, v108
	v_or_b32_e32 v122, 28, v108
	v_or_b32_e32 v123, 30, v108
	v_lshl_add_u32 v124, s58, 1, v34
	v_lshl_add_u32 v125, s58, 2, v34
	v_lshl_add_u32 v126, s58, 3, v34
	v_lshl_add_u32 v127, s58, 4, v34
	v_lshl_add_u32 v128, s36, 2, v35
	v_lshl_add_u32 v129, s36, 3, v35
	v_lshl_add_u32 v130, s36, 4, v35
	v_lshl_add_u32 v131, s36, 5, v35
	v_or_b32_e32 v132, 0x380, v0
	v_or_b32_e32 v133, 0x780, v0
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v134, 0, v60
	v_xor_b32_e32 v135, 0x88, v0
	v_xor_b32_e32 v136, 0x110, v0
	v_xor_b32_e32 v138, 0x198, v0
	v_xor_b32_e32 v139, 8, v137
	v_xor_b32_e32 v140, 16, v137
	v_xor_b32_e32 v141, 24, v137
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v61, 0
	s_add_i32 s83, s75, -1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s78, s38, s36
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s79, s38, s37
	s_mov_b32 s60, s48
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_mul_i32 s80, s80, s36
	s_mov_b32 s64, s50
	s_mov_b32 s81, 0
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s69, s55, 0xffff
	s_mov_b32 s68, s54
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s84, s83, 7
	s_mov_b32 s3, 0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s58, v11
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v144, v142, s81, 1
	v_add_lshl_u32 v145, v143, s81, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s81, s79
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s54, s62
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s59
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v144, 0x80000000, v144, s35
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v155, v101, s3, 1
	v_add_lshl_u32 v154, v100, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s55, s63
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v157, v103, s3, 1
	v_add_lshl_u32 v146, v91, s3, 1
	v_add_lshl_u32 v156, v102, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v144, v144, s[52:55], 0 offen
	buffer_load_u16 v145, v145, s[52:55], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v147, v92, s3, 1
	v_add_lshl_u32 v158, v104, s3, 1
	v_add_lshl_u32 v159, v105, s3, 1
	v_add_lshl_u32 v160, v106, s3, 1
	v_add_lshl_u32 v161, v107, s3, 1
	v_add_lshl_u32 v148, v93, s3, 1
	v_cndmask_b32_e64 v155, 0x80000000, v155, s27
	v_add_lshl_u32 v149, v94, s3, 1
	v_cndmask_b32_e64 v154, 0x80000000, v154, s26
	v_add_lshl_u32 v150, v95, s3, 1
	v_add_lshl_u32 v151, v96, s3, 1
	v_add_lshl_u32 v152, v98, s3, 1
	v_add_lshl_u32 v153, v99, s3, 1
	v_cndmask_b32_e64 v157, 0x80000000, v157, s29
	v_cndmask_b32_e64 v146, 0x80000000, v146, s18
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	v_cndmask_b32_e64 v156, 0x80000000, v156, s28
	v_cndmask_b32_e64 v147, 0x80000000, v147, s19
	v_cndmask_b32_e64 v158, 0x80000000, v158, s30
	v_cndmask_b32_e64 v159, 0x80000000, v159, s31
	v_cndmask_b32_e64 v160, 0x80000000, v160, s33
	v_cndmask_b32_e64 v161, 0x80000000, v161, s34
	v_cndmask_b32_e64 v148, 0x80000000, v148, s20
	s_clause 0x7
	buffer_load_u16 v155, v155, s[68:71], 0 offen
	buffer_load_u16 v154, v154, s[68:71], 0 offen
	buffer_load_u16 v157, v157, s[68:71], 0 offen
	buffer_load_u16 v156, v156, s[68:71], 0 offen
	buffer_load_u16 v159, v159, s[68:71], 0 offen
	buffer_load_u16 v158, v158, s[68:71], 0 offen
	buffer_load_u16 v161, v161, s[68:71], 0 offen
	buffer_load_u16 v160, v160, s[68:71], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v149, s21
	v_cndmask_b32_e64 v150, 0x80000000, v150, s22
	v_cndmask_b32_e64 v151, 0x80000000, v151, s23
	v_cndmask_b32_e64 v152, 0x80000000, v152, s24
	v_cndmask_b32_e64 v153, 0x80000000, v153, s25
	s_clause 0x7
	buffer_load_u16 v146, v146, s[68:71], 0 offen
	buffer_load_u16 v147, v147, s[68:71], 0 offen
	buffer_load_u16 v148, v148, s[68:71], 0 offen
	buffer_load_u16 v149, v149, s[68:71], 0 offen
	buffer_load_u16 v150, v150, s[68:71], 0 offen
	buffer_load_u16 v151, v151, s[68:71], 0 offen
	buffer_load_u16 v152, v152, s[68:71], 0 offen
	buffer_load_u16 v153, v153, s[68:71], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
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
	v_cvt_f32_i32_e32 v11, v11
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
	s_add_i32 s36, s81, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s36, 7
	s_cmp_lg_u32 s81, s84
	s_mov_b32 s81, s36
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v9, v145, v9 :: v_dual_lshlrev_b32 v144, 16, v144
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v26, v26, v144
	v_mul_f32_e32 v28, v28, v144
	v_mul_f32_e32 v10, v145, v10
	v_mul_f32_e32 v25, v25, v144
	v_mul_f32_e32 v27, v27, v144
	v_mul_f32_e32 v29, v29, v144
	v_mul_f32_e32 v30, v30, v144
	v_mul_f32_e32 v31, v31, v144
	v_mul_f32_e32 v32, v32, v144
	v_mul_f32_e32 v18, v18, v144
	v_dual_mul_f32 v19, v19, v144 :: v_dual_mul_f32 v14, v145, v14
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v20, v20, v144 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v22, v22, v144 :: v_dual_lshlrev_b32 v157, 16, v157
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v15, v145, v15 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v147, 16, v147
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v12, v145, v12 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v11, v145, v11 :: v_dual_lshlrev_b32 v148, 16, v148
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v151, 16, v151
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v13, v145, v13 :: v_dual_lshlrev_b32 v152, 16, v152
	v_dual_mul_f32 v24, v24, v144 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v1, v145, v1 :: v_dual_lshlrev_b32 v160, 16, v160
	v_dual_mul_f32 v17, v17, v144 :: v_dual_fmac_f32 v90, v26, v147
	v_dual_mul_f32 v21, v21, v144 :: v_dual_fmac_f32 v88, v28, v149
	v_dual_mul_f32 v23, v23, v144 :: v_dual_mul_f32 v2, v145, v2
	v_dual_mul_f32 v4, v145, v4 :: v_dual_fmac_f32 v71, v14, v151
	v_dual_mul_f32 v3, v145, v3 :: v_dual_fmac_f32 v84, v32, v153
	v_dual_mul_f32 v6, v145, v6 :: v_dual_fmac_f32 v89, v27, v148
	v_dual_mul_f32 v5, v145, v5 :: v_dual_fmac_f32 v86, v30, v151
	v_dual_mul_f32 v7, v145, v7 :: v_dual_fmac_f32 v80, v20, v157
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v75, v10, v147 :: v_dual_mul_f32 v16, v145, v16
	v_dual_fmac_f32 v73, v12, v149 :: v_dual_mul_f32 v8, v145, v8
	v_dual_fmac_f32 v97, v25, v146 :: v_dual_fmac_f32 v82, v18, v155
	v_dual_fmac_f32 v87, v29, v150 :: v_dual_fmac_f32 v78, v22, v159
	v_dual_fmac_f32 v85, v31, v152 :: v_dual_fmac_f32 v76, v24, v161
	v_dual_fmac_f32 v83, v17, v154 :: v_dual_fmac_f32 v72, v11, v148
	v_dual_fmac_f32 v81, v19, v156 :: v_dual_fmac_f32 v74, v9, v146
	v_dual_fmac_f32 v79, v21, v158 :: v_dual_fmac_f32 v68, v15, v152
	v_dual_fmac_f32 v77, v23, v160 :: v_dual_fmac_f32 v70, v13, v150
	v_fmac_f32_e32 v69, v16, v153
	v_dual_fmac_f32 v65, v1, v154 :: v_dual_fmac_f32 v66, v2, v155
	v_dual_fmac_f32 v64, v3, v156 :: v_dual_fmac_f32 v67, v4, v157
	v_dual_fmac_f32 v62, v5, v158 :: v_dual_fmac_f32 v63, v6, v159
	v_dual_fmac_f32 v61, v7, v160 :: v_dual_fmac_f32 v58, v8, v161
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s36, s77, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s36, 0, 0x80
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s36, v1
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
	s_and_b32 s37, s36, 0xe0
	s_mov_b32 s36, s76
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s76, s37
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s36, s76
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
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1462 30 is_stmt 1             ; ragged.py:1462:30
	s_add_i32 s38, s36, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s66, s62
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s39, s38, s78
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_add_i32 s38, s38, s80
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s39, s39, s58
	v_add_nc_u32_e32 v144, s38, v35
	v_add_nc_u32_e32 v145, s38, v128
	v_add_nc_u32_e32 v146, s38, v129
	s_add_i32 s39, s39, s73
	v_add_nc_u32_e32 v147, s38, v49
	v_add_nc_u32_e32 v148, s38, v130
	v_add_nc_u32_e32 v149, s38, v50
	v_add_nc_u32_e32 v150, s38, v51
	v_add_nc_u32_e32 v151, s38, v36
	v_add_nc_u32_e32 v152, s38, v131
	v_add_nc_u32_e32 v153, s38, v52
	v_add_nc_u32_e32 v154, s38, v53
	v_add_nc_u32_e32 v155, s38, v54
	v_add_nc_u32_e32 v156, s38, v55
	v_add_nc_u32_e32 v157, s38, v56
	v_add_nc_u32_e32 v158, s38, v57
	v_add_nc_u32_e32 v159, s38, v37
	v_add_nc_u32_e32 v160, s39, v34
	v_add_nc_u32_e32 v161, s39, v124
	v_add_nc_u32_e32 v162, s39, v125
	v_add_nc_u32_e32 v163, s39, v38
	v_add_nc_u32_e32 v164, s39, v126
	v_add_nc_u32_e32 v165, s39, v39
	v_add_nc_u32_e32 v166, s39, v40
	v_add_nc_u32_e32 v167, s39, v41
	v_add_nc_u32_e32 v168, s39, v127
	v_add_nc_u32_e32 v169, s39, v42
	v_add_nc_u32_e32 v170, s39, v43
	v_add_nc_u32_e32 v171, s39, v44
	v_add_nc_u32_e32 v172, s39, v45
	v_add_nc_u32_e32 v173, s39, v46
	v_add_nc_u32_e32 v174, s39, v47
	v_add_nc_u32_e32 v175, s39, v48
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	v_cndmask_b32_e64 v145, 0x80000000, v145, s1
	v_cndmask_b32_e64 v146, 0x80000000, v146, s4
	s_mov_b32 s67, s63
	v_cndmask_b32_e64 v147, 0x80000000, v147, s5
	v_cndmask_b32_e64 v148, 0x80000000, v148, s6
	v_cndmask_b32_e64 v149, 0x80000000, v149, s7
	v_cndmask_b32_e64 v150, 0x80000000, v150, s8
	v_cndmask_b32_e64 v151, 0x80000000, v151, s9
	v_cndmask_b32_e64 v152, 0x80000000, v152, s10
	v_cndmask_b32_e64 v153, 0x80000000, v153, s11
	v_cndmask_b32_e64 v154, 0x80000000, v154, s12
	v_cndmask_b32_e64 v155, 0x80000000, v155, s13
	v_cndmask_b32_e64 v156, 0x80000000, v156, s14
	v_cndmask_b32_e64 v157, 0x80000000, v157, s15
	v_cndmask_b32_e64 v158, 0x80000000, v158, s16
	v_cndmask_b32_e64 v159, 0x80000000, v159, s17
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v160, 0x80000000, v160 :: v_dual_cndmask_b32 v161, 0x80000000, v161
	v_dual_cndmask_b32 v162, 0x80000000, v162 :: v_dual_cndmask_b32 v163, 0x80000000, v163
	v_dual_cndmask_b32 v164, 0x80000000, v164 :: v_dual_cndmask_b32 v165, 0x80000000, v165
	v_dual_cndmask_b32 v166, 0x80000000, v166 :: v_dual_cndmask_b32 v167, 0x80000000, v167
	v_dual_cndmask_b32 v168, 0x80000000, v168 :: v_dual_cndmask_b32 v169, 0x80000000, v169
	v_dual_cndmask_b32 v170, 0x80000000, v170 :: v_dual_cndmask_b32 v171, 0x80000000, v171
	v_dual_cndmask_b32 v172, 0x80000000, v172 :: v_dual_cndmask_b32 v173, 0x80000000, v173
	v_dual_cndmask_b32 v174, 0x80000000, v174 :: v_dual_cndmask_b32 v175, 0x80000000, v175
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xe
	buffer_load_u8 v144, v144, s[64:67], 0 offen
	buffer_load_u8 v145, v145, s[64:67], 0 offen
	buffer_load_u8 v146, v146, s[64:67], 0 offen
	buffer_load_u8 v147, v147, s[64:67], 0 offen
	buffer_load_u8 v148, v148, s[64:67], 0 offen
	buffer_load_u8 v149, v149, s[64:67], 0 offen
	buffer_load_u8 v150, v150, s[64:67], 0 offen
	buffer_load_u8 v151, v151, s[64:67], 0 offen
	buffer_load_u8 v152, v152, s[64:67], 0 offen
	buffer_load_u8 v153, v153, s[64:67], 0 offen
	buffer_load_u8 v154, v154, s[64:67], 0 offen
	buffer_load_u8 v155, v155, s[64:67], 0 offen
	buffer_load_u8 v156, v156, s[64:67], 0 offen
	buffer_load_u8 v157, v157, s[64:67], 0 offen
	buffer_load_u8 v158, v158, s[64:67], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0xf
	buffer_load_u8 v160, v160, s[60:63], 0 offen
	buffer_load_u8 v161, v161, s[60:63], 0 offen
	buffer_load_u8 v162, v162, s[60:63], 0 offen
	buffer_load_u8 v163, v163, s[60:63], 0 offen
	buffer_load_u8 v164, v164, s[60:63], 0 offen
	buffer_load_u8 v165, v165, s[60:63], 0 offen
	buffer_load_u8 v166, v166, s[60:63], 0 offen
	buffer_load_u8 v168, v168, s[60:63], 0 offen
	buffer_load_u8 v169, v169, s[60:63], 0 offen
	buffer_load_u8 v170, v170, s[60:63], 0 offen
	buffer_load_u8 v171, v171, s[60:63], 0 offen
	buffer_load_u8 v172, v172, s[60:63], 0 offen
	buffer_load_u8 v173, v173, s[60:63], 0 offen
	buffer_load_u8 v167, v167, s[60:63], 0 offen
	buffer_load_u8 v174, v174, s[60:63], 0 offen
	buffer_load_u8 v175, v175, s[60:63], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_u8 v159, v159, s[64:67], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v176, 0, v0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v182, 0, v137
	v_add_nc_u32_e32 v183, 0, v139
	v_add_nc_u32_e32 v184, 0, v140
	v_add_nc_u32_e32 v185, 0, v141
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v177, 0, v132
	v_add_nc_u32_e32 v178, 0, v133
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v179, 0, v135
	v_add_nc_u32_e32 v180, 0, v136
	v_add_nc_u32_e32 v181, 0, v138
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s36, s36, 32
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(16)
	ds_store_b8 v176, v160
	s_waitcnt vmcnt(15)
	ds_store_b8 v176, v161 offset:128
	s_waitcnt vmcnt(14)
	ds_store_b8 v176, v162 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v176, v163 offset:384
	s_waitcnt vmcnt(12)
	ds_store_b8 v176, v164 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v176, v165 offset:640
	s_waitcnt vmcnt(10)
	ds_store_b8 v176, v166 offset:768
	s_waitcnt vmcnt(9)
	ds_store_b8 v176, v168 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v176, v169 offset:1152
	s_waitcnt vmcnt(7)
	ds_store_b8 v176, v170 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v176, v171 offset:1408
	s_waitcnt vmcnt(5)
	ds_store_b8 v176, v172 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v176, v173 offset:1664
	s_waitcnt vmcnt(3)
	ds_store_b8 v177, v167
	s_waitcnt vmcnt(2)
	ds_store_b8 v176, v174 offset:1792
	s_waitcnt vmcnt(1)
	ds_store_b8 v178, v175
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v160, v134 offset:448
	ds_load_u8 v161, v134 offset:384
	ds_load_u8 v162, v134 offset:320
	ds_load_u8 v163, v134 offset:256
	ds_load_u8 v164, v134 offset:480
	ds_load_u8 v165, v134 offset:416
	ds_load_u8 v166, v134 offset:352
	ds_load_u8 v167, v134 offset:288
	ds_load_u8 v168, v134 offset:192
	ds_load_u8 v169, v134 offset:128
	ds_load_u8 v170, v134 offset:64
	ds_load_u8 v171, v134 offset:224
	ds_load_u8 v172, v134 offset:160
	ds_load_u8 v173, v134 offset:96
	ds_load_u8 v174, v134
	ds_load_u8 v175, v134 offset:32
	ds_load_u8 v177, v134 offset:704
	ds_load_u8 v178, v134 offset:640
	ds_load_u8 v186, v134 offset:576
	ds_load_u8 v187, v134 offset:512
	ds_load_u8 v188, v134 offset:736
	ds_load_u8 v189, v134 offset:672
	ds_load_u8 v190, v134 offset:608
	ds_load_u8 v191, v134 offset:544
	ds_load_u8 v192, v134 offset:960
	ds_load_u8 v193, v134 offset:896
	ds_load_u8 v194, v134 offset:832
	ds_load_u8 v195, v134 offset:768
	ds_load_u8 v196, v134 offset:992
	ds_load_u8 v197, v134 offset:928
	ds_load_u8 v198, v134 offset:864
	ds_load_u8 v199, v134 offset:800
	ds_load_u8 v200, v134 offset:1216
	ds_load_u8 v201, v134 offset:1152
	ds_load_u8 v202, v134 offset:1088
	ds_load_u8 v203, v134 offset:1024
	ds_load_u8 v204, v134 offset:1248
	ds_load_u8 v205, v134 offset:1184
	ds_load_u8 v206, v134 offset:1120
	ds_load_u8 v207, v134 offset:1056
	ds_load_u8 v208, v134 offset:1472
	ds_load_u8 v209, v134 offset:1408
	ds_load_u8 v210, v134 offset:1344
	ds_load_u8 v211, v134 offset:1280
	ds_load_u8 v212, v134 offset:1504
	ds_load_u8 v213, v134 offset:1440
	ds_load_u8 v214, v134 offset:1376
	ds_load_u8 v215, v134 offset:1312
	ds_load_u8 v216, v134 offset:1728
	ds_load_u8 v217, v134 offset:1664
	ds_load_u8 v218, v134 offset:1600
	ds_load_u8 v219, v134 offset:1536
	ds_load_u8 v220, v134 offset:1760
	ds_load_u8 v221, v134 offset:1696
	ds_load_u8 v222, v134 offset:1632
	ds_load_u8 v223, v134 offset:1568
	ds_load_u8 v224, v134 offset:1984
	ds_load_u8 v225, v134 offset:1920
	ds_load_u8 v226, v134 offset:1856
	ds_load_u8 v227, v134 offset:1792
	ds_load_u8 v228, v134 offset:2016
	ds_load_u8 v229, v134 offset:1952
	ds_load_u8 v230, v134 offset:1888
	ds_load_u8 v231, v134 offset:1824
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v176, v144
	ds_store_b8 v176, v148 offset:512
	ds_store_b8 v176, v152 offset:1024
	ds_store_b8 v176, v156 offset:1536
	ds_store_b8 v179, v145
	ds_store_b8 v179, v149 offset:512
	ds_store_b8 v179, v153 offset:1024
	ds_store_b8 v179, v157 offset:1536
	ds_store_b8 v180, v146
	ds_store_b8 v180, v150 offset:512
	ds_store_b8 v180, v154 offset:1024
	ds_store_b8 v180, v158 offset:1536
	ds_store_b8 v181, v147
	ds_store_b8 v181, v151 offset:512
	ds_store_b8 v181, v155 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v181, v159 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[144:147], v182 offset1:2
	ds_load_2addr_stride64_b64 v[148:151], v183 offset1:2
	ds_load_2addr_stride64_b64 v[152:155], v184 offset1:2
	ds_load_2addr_stride64_b64 v[156:159], v185 offset1:2
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v163, v174, v170, 0xc0c0004
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v169, v195, v194, 0xc0c0004
	v_perm_b32 v170, v193, v192, 0xc0c0004
	v_perm_b32 v174, v187, v186, 0xc0c0004
	v_perm_b32 v185, v167, v166, 0xc0c0004
	v_perm_b32 v186, v165, v164, 0xc0c0004
	v_perm_b32 v173, v175, v173, 0xc0c0004
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_perm_b32 v176, v178, v177, 0xc0c0004
	v_perm_b32 v172, v199, v198, 0xc0c0004
	v_perm_b32 v175, v197, v196, 0xc0c0004
	v_perm_b32 v187, v191, v190, 0xc0c0004
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_lshl_or_b32 v161, v160, 16, v162
	v_lshl_or_b32 v160, v168, 16, v163
	v_lshl_or_b32 v163, v170, 16, v169
	v_lshl_or_b32 v169, v186, 16, v185
	v_lshl_or_b32 v168, v171, 16, v173
	v_perm_b32 v177, v211, v210, 0xc0c0004
	v_perm_b32 v178, v209, v208, 0xc0c0004
	v_perm_b32 v179, v203, v202, 0xc0c0004
	v_perm_b32 v180, v201, v200, 0xc0c0004
	v_perm_b32 v189, v215, v214, 0xc0c0004
	v_perm_b32 v190, v213, v212, 0xc0c0004
	v_perm_b32 v191, v207, v206, 0xc0c0004
	v_perm_b32 v192, v205, v204, 0xc0c0004
	v_lshl_or_b32 v162, v176, 16, v174
	v_lshl_or_b32 v171, v175, 16, v172
	v_lshl_or_b32 v170, v188, 16, v187
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[144:145], v[160:161], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[146:147], v[160:161], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[168:169], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[146:147], v[168:169], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v181, v227, v226, 0xc0c0004
	v_perm_b32 v182, v225, v224, 0xc0c0004
	v_perm_b32 v183, v219, v218, 0xc0c0004
	v_perm_b32 v184, v217, v216, 0xc0c0004
	v_perm_b32 v193, v231, v230, 0xc0c0004
	v_perm_b32 v194, v229, v228, 0xc0c0004
	v_perm_b32 v195, v223, v222, 0xc0c0004
	v_perm_b32 v196, v221, v220, 0xc0c0004
	v_lshl_or_b32 v165, v178, 16, v177
	v_lshl_or_b32 v164, v180, 16, v179
	v_lshl_or_b32 v173, v190, 16, v189
	v_lshl_or_b32 v172, v192, 16, v191
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[148:149], v[162:163], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[150:151], v[162:163], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[148:149], v[170:171], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[170:171], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v182, 16, v181
	v_lshl_or_b32 v166, v184, 16, v183
	v_lshl_or_b32 v145, v194, 16, v193
	v_lshl_or_b32 v144, v196, 16, v195
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[164:165], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[164:165], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[172:173], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[154:155], v[172:173], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s36, s37
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[166:167], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[166:167], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[144:145], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[144:145], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s37, s75, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s51, s37, 0x80
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s36, s51
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s54, s36, s3
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s66, s62
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v145, s54, v108
	v_or_b32_e32 v146, s54, v109
	v_or_b32_e32 v147, s54, v110
	v_or_b32_e32 v144, s54, v33
	v_or_b32_e32 v148, s54, v111
	v_or_b32_e32 v149, s54, v112
	v_or_b32_e32 v150, s54, v113
	v_or_b32_e32 v151, s54, v114
	v_or_b32_e32 v152, s54, v115
	v_or_b32_e32 v153, s54, v116
	v_or_b32_e32 v154, s54, v117
	v_or_b32_e32 v155, s54, v118
	v_or_b32_e32 v156, s54, v119
	v_or_b32_e32 v157, s54, v120
	v_or_b32_e32 v158, s54, v121
	v_or_b32_e32 v159, s54, v122
	v_or_b32_e32 v160, s54, v123
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v161, s3, v145
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s50, s54, s78
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v162, s3, v146
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s55, s50, s58
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v163, s3, v147
	v_subrev_nc_u32_e32 v164, s3, v148
	v_subrev_nc_u32_e32 v165, s3, v149
	v_subrev_nc_u32_e32 v166, s3, v150
	v_subrev_nc_u32_e32 v167, s3, v151
	v_subrev_nc_u32_e32 v168, s3, v152
	v_subrev_nc_u32_e32 v169, s3, v153
	v_subrev_nc_u32_e32 v170, s3, v154
	v_subrev_nc_u32_e32 v171, s3, v155
	v_subrev_nc_u32_e32 v172, s3, v156
	v_subrev_nc_u32_e32 v173, s3, v157
	v_subrev_nc_u32_e32 v174, s3, v158
	v_subrev_nc_u32_e32 v175, s3, v159
	v_subrev_nc_u32_e32 v176, s3, v160
	v_subrev_nc_u32_e32 v177, s3, v144
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s51, v161
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s55, s55, s73
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s36, s51, v162
	v_add_nc_u32_e32 v161, s55, v34
	v_cmp_gt_i32_e64 s37, s51, v163
	v_add_nc_u32_e32 v162, s55, v124
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s38, s51, v164
	v_add_nc_u32_e32 v163, s55, v125
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s36
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s39, s51, v165
	v_add_nc_u32_e32 v164, s55, v38
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s37
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s40, s51, v166
	v_add_nc_u32_e32 v165, s55, v126
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s38
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s41, s51, v167
	v_add_nc_u32_e32 v166, s55, v39
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v164, 0x80000000, v164, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s39
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s42, s51, v168
	v_add_nc_u32_e32 v167, s55, v40
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v165, 0x80000000, v165, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s40
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s43, s51, v169
	v_add_nc_u32_e32 v168, s55, v41
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v166, 0x80000000, v166, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s41
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s44, s51, v170
	v_add_nc_u32_e32 v169, s55, v127
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v167, 0x80000000, v167, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s42
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s45, s51, v171
	v_add_nc_u32_e32 v170, s55, v42
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v168, 0x80000000, v168, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s43
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s46, s51, v172
	v_add_nc_u32_e32 v171, s55, v43
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s44
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s47, s51, v173
	v_add_nc_u32_e32 v172, s55, v44
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v170, 0x80000000, v170, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s45
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s48, s51, v174
	v_add_nc_u32_e32 v173, s55, v45
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v171, 0x80000000, v171, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s46
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s49, s51, v175
	v_add_nc_u32_e32 v174, s55, v46
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v172, 0x80000000, v172, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s47
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s50, s51, v176
	v_add_nc_u32_e32 v175, s55, v47
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v173, 0x80000000, v173, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s48
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s51, s51, v177
	v_add_nc_u32_e32 v176, s55, v48
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s54, s54, s80
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v174, 0x80000000, v174, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s49
	v_add_nc_u32_e32 v177, s54, v35
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s50
	v_add_nc_u32_e32 v178, s54, v128
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s3
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s3, s0, s51
	v_add_nc_u32_e32 v179, s54, v129
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v177, 0x80000000, v177, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s1, s51
	v_add_nc_u32_e32 v180, s54, v49
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v178, 0x80000000, v178, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s4, s51
	v_add_nc_u32_e32 v181, s54, v130
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v179, 0x80000000, v179, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s5, s51
	v_add_nc_u32_e32 v182, s54, v50
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s6, s51
	v_add_nc_u32_e32 v183, s54, v51
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v181, 0x80000000, v181, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s7, s51
	v_add_nc_u32_e32 v184, s54, v36
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v182, 0x80000000, v182, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s8, s51
	v_add_nc_u32_e32 v185, s54, v131
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v183, 0x80000000, v183, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s9, s51
	v_add_nc_u32_e32 v186, s54, v52
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v184, 0x80000000, v184, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s10, s51
	v_add_nc_u32_e32 v187, s54, v53
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v185, 0x80000000, v185, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s11, s51
	v_add_nc_u32_e32 v188, s54, v54
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s12, s51
	v_add_nc_u32_e32 v189, s54, v55
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s13, s51
	v_add_nc_u32_e32 v190, s54, v56
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s14, s51
	v_add_nc_u32_e32 v191, s54, v57
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v189, 0x80000000, v189, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s15, s51
	v_add_nc_u32_e32 v192, s54, v37
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s16, s51
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	s_clause 0xf
	buffer_load_u8 v161, v161, s[60:63], 0 offen
	buffer_load_u8 v162, v162, s[60:63], 0 offen
	buffer_load_u8 v163, v163, s[60:63], 0 offen
	buffer_load_u8 v164, v164, s[60:63], 0 offen
	buffer_load_u8 v165, v165, s[60:63], 0 offen
	buffer_load_u8 v166, v166, s[60:63], 0 offen
	buffer_load_u8 v167, v167, s[60:63], 0 offen
	buffer_load_u8 v168, v168, s[60:63], 0 offen
	buffer_load_u8 v169, v169, s[60:63], 0 offen
	buffer_load_u8 v170, v170, s[60:63], 0 offen
	buffer_load_u8 v171, v171, s[60:63], 0 offen
	buffer_load_u8 v172, v172, s[60:63], 0 offen
	buffer_load_u8 v173, v173, s[60:63], 0 offen
	buffer_load_u8 v174, v174, s[60:63], 0 offen
	buffer_load_u8 v175, v175, s[60:63], 0 offen
	buffer_load_u8 v176, v176, s[60:63], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s67, s63
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s17, s51
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v177, v177, s[64:67], 0 offen
	buffer_load_u8 v178, v178, s[64:67], 0 offen
	buffer_load_u8 v179, v179, s[64:67], 0 offen
	buffer_load_u8 v180, v180, s[64:67], 0 offen
	buffer_load_u8 v181, v181, s[64:67], 0 offen
	buffer_load_u8 v182, v182, s[64:67], 0 offen
	buffer_load_u8 v183, v183, s[64:67], 0 offen
	buffer_load_u8 v184, v184, s[64:67], 0 offen
	v_cndmask_b32_e64 v192, 0x80000000, v192, s3
	s_clause 0x7
	buffer_load_u8 v185, v185, s[64:67], 0 offen
	buffer_load_u8 v186, v186, s[64:67], 0 offen
	buffer_load_u8 v187, v187, s[64:67], 0 offen
	buffer_load_u8 v188, v188, s[64:67], 0 offen
	buffer_load_u8 v189, v189, s[64:67], 0 offen
	buffer_load_u8 v190, v190, s[64:67], 0 offen
	buffer_load_u8 v191, v191, s[64:67], 0 offen
	buffer_load_u8 v192, v192, s[64:67], 0 offen
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s83, v145
	v_cmp_eq_u32_e64 s36, s83, v146
	v_cmp_eq_u32_e64 s37, s83, v147
	v_cmp_eq_u32_e64 s51, s83, v144
	v_cmp_eq_u32_e64 s38, s83, v148
	v_cmp_eq_u32_e64 s39, s83, v149
	v_cmp_eq_u32_e64 s40, s83, v150
	v_cmp_eq_u32_e64 s41, s83, v151
	v_cmp_eq_u32_e64 s42, s83, v152
	v_cmp_eq_u32_e64 s43, s83, v153
	v_cmp_eq_u32_e64 s44, s83, v154
	v_cmp_eq_u32_e64 s45, s83, v155
	v_cmp_eq_u32_e64 s46, s83, v156
	v_cmp_eq_u32_e64 s47, s83, v157
	v_cmp_eq_u32_e64 s48, s83, v158
	v_cmp_eq_u32_e64 s49, s83, v159
	v_cmp_eq_u32_e64 s50, s83, v160
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s3, s3, s82
	s_and_b32 s36, s36, s82
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v193, 0, v0
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s37, s37, s82
	s_and_b32 s38, s38, s82
	s_and_b32 s39, s39, s82
	s_and_b32 s40, s40, s82
	s_and_b32 s51, s51, s82
	s_and_b32 s41, s41, s82
	s_and_b32 s42, s42, s82
	s_and_b32 s43, s43, s82
	s_and_b32 s44, s44, s82
	s_and_b32 s45, s45, s82
	s_and_b32 s46, s46, s82
	s_and_b32 s47, s47, s82
	s_and_b32 s48, s48, s82
	s_and_b32 s49, s49, s82
	s_and_b32 s50, s50, s82
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v194, 0, v132
	v_add_nc_u32_e32 v195, 0, v133
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(31)
	v_and_b16 v144.l, v161.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v144.h, v162.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v145.l, v163.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v145.h, v164.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v146.l, v165.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v146.h, v166.l, 15
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v152.l, v177.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v147.l, v167.l, 15
	v_and_b16 v147.h, v168.l, 15
	v_and_b16 v148.l, v169.l, 15
	v_and_b16 v148.h, v170.l, 15
	v_and_b16 v149.l, v171.l, 15
	v_and_b16 v149.h, v172.l, 15
	v_and_b16 v150.l, v173.l, 15
	v_and_b16 v150.h, v174.l, 15
	v_and_b16 v151.l, v175.l, 15
	v_and_b16 v151.h, v176.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v153.l, v179.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v154.l, v181.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v144.l, v161.l, v144.l, s3
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v155.l, v183.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v156.l, v185.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v144.h, v162.l, v144.h, s36
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v157.l, v187.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v158.l, v189.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v145.l, v163.l, v145.l, s37
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v152.h, v178.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v159.l, v191.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v145.h, v164.l, v145.h, s38
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v153.h, v180.l, 15
	v_and_b16 v154.h, v182.l, 15
	v_and_b16 v155.h, v184.l, 15
	v_and_b16 v156.h, v186.l, 15
	v_and_b16 v157.h, v188.l, 15
	v_and_b16 v158.h, v190.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v159.h, v192.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v146.l, v165.l, v146.l, s39
	v_cndmask_b16 v146.h, v166.l, v146.h, s40
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v152.l, v177.l, v152.l, s51
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v147.l, v167.l, v147.l, s41
	v_cndmask_b16 v147.h, v168.l, v147.h, s42
	v_cndmask_b16 v148.l, v169.l, v148.l, s43
	v_cndmask_b16 v148.h, v170.l, v148.h, s44
	v_cndmask_b16 v149.l, v171.l, v149.l, s45
	v_cndmask_b16 v149.h, v172.l, v149.h, s46
	v_cndmask_b16 v150.l, v173.l, v150.l, s47
	v_cndmask_b16 v150.h, v174.l, v150.h, s48
	v_cndmask_b16 v151.l, v175.l, v151.l, s49
	v_cndmask_b16 v151.h, v176.l, v151.h, s50
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v153.l, v179.l, v153.l, s51
	v_cndmask_b16 v154.l, v181.l, v154.l, s51
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b8 v193, v144
	ds_store_b8_d16_hi v193, v144 offset:128
	ds_store_b8 v193, v145 offset:256
	ds_store_b8_d16_hi v193, v145 offset:384
	ds_store_b8 v193, v146 offset:512
	ds_store_b8_d16_hi v193, v146 offset:640
	ds_store_b8 v193, v147 offset:768
	ds_store_b8 v193, v148 offset:1024
	ds_store_b8_d16_hi v193, v148 offset:1152
	ds_store_b8 v193, v149 offset:1280
	ds_store_b8_d16_hi v193, v149 offset:1408
	ds_store_b8 v193, v150 offset:1536
	ds_store_b8_d16_hi v193, v150 offset:1664
	ds_store_b8_d16_hi v194, v147
	ds_store_b8 v193, v151 offset:1792
	ds_store_b8_d16_hi v195, v151
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v145, 0, v136
	v_add_nc_u32_e32 v146, 0, v137
	v_cndmask_b16 v155.l, v183.l, v155.l, s51
	v_cndmask_b16 v156.l, v185.l, v156.l, s51
	v_cndmask_b16 v157.l, v187.l, v157.l, s51
	v_cndmask_b16 v158.l, v189.l, v158.l, s51
	v_cndmask_b16 v152.h, v178.l, v152.h, s51
	v_cndmask_b16 v159.l, v191.l, v159.l, s51
	v_add_nc_u32_e32 v144, 0, v135
	v_cndmask_b16 v153.h, v180.l, v153.h, s51
	v_cndmask_b16 v154.h, v182.l, v154.h, s51
	v_cndmask_b16 v155.h, v184.l, v155.h, s51
	v_cndmask_b16 v156.h, v186.l, v156.h, s51
	v_cndmask_b16 v157.h, v188.l, v157.h, s51
	v_cndmask_b16 v158.h, v190.l, v158.h, s51
	v_cndmask_b16 v159.h, v192.l, v159.h, s51
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v148, v134 offset:448
	ds_load_u8 v149, v134 offset:384
	ds_load_u8 v150, v134 offset:320
	ds_load_u8 v151, v134 offset:256
	ds_load_u8 v166, v134 offset:480
	ds_load_u8 v167, v134 offset:416
	ds_load_u8 v168, v134 offset:352
	ds_load_u8 v169, v134 offset:288
	ds_load_u8 v160, v134 offset:192
	ds_load_u8 v161, v134 offset:128
	ds_load_u8 v162, v134 offset:64
	ds_load_u8 v170, v134 offset:224
	ds_load_u8 v171, v134 offset:160
	ds_load_u8 v172, v134 offset:96
	ds_load_u8 v163, v134
	ds_load_u8 v173, v134 offset:32
	ds_load_u8 v164, v134 offset:704
	ds_load_u8 v165, v134 offset:640
	ds_load_u8 v174, v134 offset:576
	ds_load_u8 v175, v134 offset:512
	ds_load_u8 v176, v134 offset:736
	ds_load_u8 v177, v134 offset:672
	ds_load_u8 v178, v134 offset:608
	ds_load_u8 v179, v134 offset:544
	ds_load_u8 v180, v134 offset:960
	ds_load_u8 v181, v134 offset:896
	ds_load_u8 v182, v134 offset:832
	ds_load_u8 v183, v134 offset:768
	ds_load_u8 v184, v134 offset:992
	ds_load_u8 v185, v134 offset:928
	ds_load_u8 v186, v134 offset:864
	ds_load_u8 v187, v134 offset:800
	ds_load_u8 v188, v134 offset:1216
	ds_load_u8 v189, v134 offset:1152
	ds_load_u8 v190, v134 offset:1088
	ds_load_u8 v191, v134 offset:1024
	ds_load_u8 v192, v134 offset:1248
	ds_load_u8 v194, v134 offset:1184
	ds_load_u8 v195, v134 offset:1120
	ds_load_u8 v196, v134 offset:1056
	ds_load_u8 v197, v134 offset:1472
	ds_load_u8 v198, v134 offset:1408
	ds_load_u8 v199, v134 offset:1344
	ds_load_u8 v200, v134 offset:1280
	ds_load_u8 v201, v134 offset:1504
	ds_load_u8 v202, v134 offset:1440
	ds_load_u8 v203, v134 offset:1376
	ds_load_u8 v204, v134 offset:1312
	ds_load_u8 v205, v134 offset:1728
	ds_load_u8 v206, v134 offset:1664
	ds_load_u8 v207, v134 offset:1600
	ds_load_u8 v208, v134 offset:1536
	ds_load_u8 v209, v134 offset:1760
	ds_load_u8 v210, v134 offset:1696
	ds_load_u8 v211, v134 offset:1632
	ds_load_u8 v212, v134 offset:1568
	ds_load_u8 v213, v134 offset:1984
	ds_load_u8 v214, v134 offset:1920
	ds_load_u8 v215, v134 offset:1856
	ds_load_u8 v216, v134 offset:1792
	ds_load_u8 v217, v134 offset:2016
	ds_load_u8 v218, v134 offset:1952
	ds_load_u8 v219, v134 offset:1888
	ds_load_u8 v220, v134 offset:1824
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v193, v152
	ds_store_b8 v193, v154 offset:512
	ds_store_b8 v193, v156 offset:1024
	ds_store_b8 v193, v158 offset:1536
	ds_store_b8_d16_hi v144, v152
	ds_store_b8_d16_hi v144, v154 offset:512
	ds_store_b8_d16_hi v144, v156 offset:1024
	ds_store_b8_d16_hi v144, v158 offset:1536
	v_add_nc_u32_e32 v144, 0, v138
	ds_store_b8 v145, v153
	ds_store_b8 v145, v155 offset:512
	ds_store_b8 v145, v157 offset:1024
	ds_store_b8 v145, v159 offset:1536
	ds_store_b8_d16_hi v144, v153
	ds_store_b8_d16_hi v144, v155 offset:512
	ds_store_b8_d16_hi v144, v157 offset:1024
	ds_store_b8_d16_hi v144, v159 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[144:147], v146 offset1:2
	v_add_nc_u32_e32 v152, 0, v139
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v153, v151, v150, 0xc0c0004
	v_perm_b32 v154, v149, v148, 0xc0c0004
	v_perm_b32 v155, v163, v162, 0xc0c0004
	v_perm_b32 v156, v161, v160, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[148:151], v152 offset1:2
	v_add_nc_u32_e32 v152, 0, v140
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v161, v154, 16, v153
	v_perm_b32 v157, v181, v180, 0xc0c0004
	v_lshl_or_b32 v160, v156, 16, v155
	v_perm_b32 v156, v183, v182, 0xc0c0004
	v_perm_b32 v158, v175, v174, 0xc0c0004
	v_perm_b32 v159, v165, v164, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[152:155], v152 offset1:2
	v_add_nc_u32_e32 v164, 0, v141
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v166, v167, v166, 0xc0c0004
	v_perm_b32 v172, v173, v172, 0xc0c0004
	v_perm_b32 v170, v171, v170, 0xc0c0004
	v_lshl_or_b32 v163, v157, 16, v156
	v_lshl_or_b32 v162, v159, 16, v158
	v_perm_b32 v165, v200, v199, 0xc0c0004
	v_perm_b32 v174, v198, v197, 0xc0c0004
	v_perm_b32 v175, v191, v190, 0xc0c0004
	v_perm_b32 v180, v189, v188, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[156:159], v164 offset1:2
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v169, v166, 16, v168
	v_lshl_or_b32 v168, v170, 16, v172
	v_perm_b32 v166, v187, v186, 0xc0c0004
	v_perm_b32 v170, v185, v184, 0xc0c0004
	v_perm_b32 v172, v179, v178, 0xc0c0004
	v_perm_b32 v173, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[144:145], v[160:161], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v174, 16, v165
	v_lshl_or_b32 v164, v180, 16, v175
	v_perm_b32 v174, v216, v215, 0xc0c0004
	v_perm_b32 v175, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[146:147], v[160:161], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[168:169], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v170, 16, v166
	v_lshl_or_b32 v144, v173, 16, v172
	v_perm_b32 v160, v204, v203, 0xc0c0004
	v_perm_b32 v161, v202, v201, 0xc0c0004
	v_perm_b32 v170, v196, v195, 0xc0c0004
	v_perm_b32 v172, v194, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[146:147], v[168:169], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[148:149], v[162:163], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v175, 16, v174
	v_perm_b32 v171, v208, v207, 0xc0c0004
	v_perm_b32 v174, v206, v205, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[150:151], v[162:163], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[148:149], v[144:145], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v161, 16, v160
	v_lshl_or_b32 v148, v172, 16, v170
	v_perm_b32 v146, v220, v219, 0xc0c0004
	v_perm_b32 v147, v218, v217, 0xc0c0004
	v_perm_b32 v160, v212, v211, 0xc0c0004
	v_perm_b32 v161, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[144:145], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[164:165], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v166, v174, 16, v171
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[164:165], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[148:149], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v147, 16, v146
	v_lshl_or_b32 v144, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[1:8], v[154:155], v[148:149], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[166:167], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[166:167], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[144:145], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[144:145], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge101
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s74, s59
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v22, v89, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s3, s72
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v97, v97
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_and_b32_e32 v14, 24, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v23, v88, 16, 1
	v_add3_u32 v22, v89, v22, 0x7fff
	v_cmp_o_f32_e64 s17, v89, v89
	v_bfe_u32 v24, v86, 16, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v5, 39, v14
	v_or_b32_e32 v10, 34, v14
	v_or_b32_e32 v9, 35, v14
	v_or_b32_e32 v6, 38, v14
	v_or_b32_e32 v11, 33, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s72, v5
	v_or_b32_e32 v16, s72, v10
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v7, 37, v14
	v_or_b32_e32 v8, 36, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s72, v9
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v12, 32, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s72, v6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s59, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s72, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s59, v16
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v16, 5, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s72, v7
	v_or_b32_e32 v4, s72, v8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s59, v13
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v13, 7, v14
	v_or_b32_e32 v15, 6, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s59, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s72, v12
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s59, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v17, 4, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s72, v16
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v19, 2, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s59, v3
	v_cmp_gt_i32_e64 s4, s59, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s72, v13
	v_or_b32_e32 v4, s72, v15
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v18, 3, v14
	v_or_b32_e32 v20, 1, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s59, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s72, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s59, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s72, v19
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s59, v3
	v_cmp_gt_i32_e64 s10, s59, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s72, v18
	v_or_b32_e32 v4, s72, v20
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s59, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s72, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s59, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v1, v97, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s59, v3
	v_cmp_gt_i32_e64 s15, s59, v4
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s59, v60, s[18:19]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s59, v2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v4, v97, v1, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s59, v59, s[18:19]
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v2, v90, 16, 1
	v_add3_u32 v23, v88, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cmp_o_f32_e64 s3, v90, v90
	v_cmp_o_f32_e64 s18, v88, v88
	v_add3_u32 v2, v90, v2, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s17
	v_add3_u32 v24, v86, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v86, v86
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s18
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v87, 16, 1
	v_bfe_u32 v23, v85, 16, 1
	v_cmp_o_f32_e64 s3, v87, v87
	v_bfe_u32 v25, v84, 16, 1
	v_cmp_o_f32_e64 s18, v85, v85
	v_add3_u32 v2, v87, v2, 0x7fff
	v_add3_u32 v23, v85, v23, 0x7fff
	v_bfe_u32 v26, v82, 16, 1
	v_add3_u32 v25, v84, v25, 0x7fff
	v_bfe_u32 v27, v80, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v24.h, s17
	v_bfe_u32 v24, v83, 16, 1
	v_cmp_o_f32_e64 s3, v84, v84
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s18
	v_cmp_o_f32_e64 s17, v83, v83
	v_add3_u32 v26, v82, v26, 0x7fff
	v_add3_u32 v24, v83, v24, 0x7fff
	v_cmp_o_f32_e64 s18, v82, v82
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v81, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s17
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s18
	v_bfe_u32 v26, v79, 16, 1
	v_add3_u32 v25, v81, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v81, v81
	v_add3_u32 v27, v80, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v80, v80
	v_bfe_u32 v28, v78, 16, 1
	v_bfe_u32 v29, v77, 16, 1
	v_add3_u32 v26, v79, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v79, v79
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s17
	v_add3_u32 v27, v78, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v78, v78
	v_add3_u32 v28, v77, v29, 0x7fff
	v_mov_b16_e32 v29.l, v74.h
	v_mov_b16_e32 v29.h, v21.h
	v_mov_b16_e32 v21.l, v75.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s18
	v_bfe_u32 v30, v76, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v21.l, v73.h
	v_cmp_o_f32_e64 s17, v77, v77
	v_add3_u32 v30, v76, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v76, v76
	v_add3_u32 v27, v74, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v74, v74
	v_mov_b16_e32 v31.l, v72.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_add3_u32 v29, v75, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v73, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v73, v73
	v_mov_b16_e32 v21.l, v71.h
	v_mov_b16_e32 v31.l, v70.h
	v_add3_u32 v27, v72, v27, 0x7fff
	v_mov_b16_e32 v33.l, v68.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	v_and_b32_e32 v32, 1, v21
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v69.h
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	v_add3_u32 v31, v70, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v21.l, v66.h
	v_add3_u32 v32, v71, v32, 0x7fff
	v_cmp_o_f32_e64 s17, v75, v75
	v_add3_u32 v27, v68, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v68, v68
	v_mov_b16_e32 v34.l, v65.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s3
	v_and_b32_e32 v31, 1, v21
	v_mov_b16_e32 v21.l, v67.h
	v_add3_u32 v33, v69, v33, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s17
	v_cmp_o_f32_e64 s17, v71, v71
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v34
	v_add3_u32 v31, v66, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_mov_b16_e32 v34.l, v64.h
	v_and_b32_e32 v35, 1, v21
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s17
	v_cmp_o_f32_e64 s17, v69, v69
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s3
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v35, v67, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v67, v67
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s17
	v_add3_u32 v27, v65, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v65, v65
	v_add3_u32 v34, v64, v34, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	v_mov_b16_e32 v21.l, v63.h
	v_cmp_o_f32_e64 s3, v64, v64
	v_mov_b16_e32 v36.l, v61.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s17
	v_mov_b16_e32 v27.l, v62.h
	v_mov_b16_e32 v27.h, v21.h
	v_and_b32_e32 v37, 1, v21
	v_mov_b16_e32 v21.l, v58.h
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s3
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v36, v63, v37, 0x7fff
	v_and_b32_e32 v37, 1, v21
	v_cmp_o_f32_e64 s3, v63, v63
	v_add3_u32 v34, v61, v34, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v61, v61
	v_add3_u32 v27, v62, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v62, v62
	v_add3_u32 v37, v58, v37, 0x7fff
	v_cmp_o_f32_e64 s18, v58, v58
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s19
	v_mov_b32_e32 v34, 0x5410
	v_cndmask_b16 v36.l, 0x7fff, v27.h, s17
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s18
	v_cndmask_b32_e64 v27, v2, v4, s3
	v_cndmask_b32_e64 v2, v4, v2, s3
	v_cndmask_b32_e64 v4, v23, v22, s3
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v26, v24, s3
	v_cndmask_b32_e64 v24, v24, v26, s3
	v_cndmask_b32_e64 v26, v28, v25, s3
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v25, v25, v28, s3
	v_cndmask_b32_e64 v28, v32, v29, s3
	v_cndmask_b32_e64 v29, v29, v32, s3
	v_cndmask_b32_e64 v32, 0x1054, v34, s3
	v_cndmask_b32_e64 v34, 0x3276, v37, s3
	s_mov_b32 s17, 0x76543210
	v_cndmask_b32_e64 v37, v33, v30, s3
	v_cndmask_b32_e64 v30, v30, v33, s3
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v34, v34, 8, v34
	v_cndmask_b32_e64 v33, v36, v31, s3
	v_cndmask_b32_e64 v31, v31, v36, s3
	v_permlanex16_b32 v2, v2, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v34, 0x760076, v34
	v_add_lshl_u32 v50, v3, v14, 1
	v_cndmask_b32_e64 v36, v0, v35, s3
	v_cndmask_b32_e64 v0, v35, v0, s3
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v34, v34, 4, v34
	v_permlanex16_b32 v22, v22, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v32
	v_permlanex16_b32 v29, v29, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v34, 0x7060706, v34
	v_permlanex16_b32 v30, v30, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s17, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v2, v27, v32
	v_add_lshl_u32 v51, v3, v20, 1
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s35, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v52, v3, v19, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v2, v27, v34
	v_perm_b32 v27, v22, v4, v32
	v_perm_b32 v4, v22, v4, v34
	v_perm_b32 v22, v24, v23, v32
	v_perm_b32 v23, v24, v23, v34
	v_perm_b32 v24, v25, v26, v32
	v_perm_b32 v25, v25, v26, v34
	v_perm_b32 v26, v29, v28, v32
	v_perm_b32 v28, v29, v28, v34
	v_perm_b32 v29, v30, v37, v32
	v_perm_b32 v30, v30, v37, v34
	v_perm_b32 v37, v31, v33, v32
	v_perm_b32 v31, v31, v33, v34
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e32 v33.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v35, v50, s[56:59], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s3
	v_add_lshl_u32 v35, v3, v18, 1
	buffer_store_b16 v33, v51, s[56:59], 0 offen
	v_add_lshl_u32 v33, v3, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v21.l, v2.h
	buffer_store_b16 v2, v50, s[56:59], 0 offen
	v_add_lshl_u32 v2, v3, v16, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v32, v0, v36, v32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v0, v0, v36, v34
	v_mov_b16_e32 v36.l, v27.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_mov_b16_e32 v34.h, v21.h
	v_mov_b16_e32 v38.h, v21.h
	v_mov_b16_e32 v39.h, v21.h
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v41.h, v21.h
	v_mov_b16_e32 v42.h, v21.h
	v_mov_b16_e32 v43.h, v21.h
	v_mov_b16_e32 v44.h, v21.h
	v_mov_b16_e32 v45.h, v21.h
	v_mov_b16_e32 v46.h, v21.h
	v_mov_b16_e32 v47.h, v21.h
	v_mov_b16_e32 v48.h, v21.h
	v_mov_b16_e32 v49.h, v21.h
	buffer_store_b16 v21, v35, s[56:59], 0 offen
	v_add_lshl_u32 v21, v3, v15, 1
	buffer_store_b16 v27, v33, s[56:59], 0 offen
	v_add_lshl_u32 v27, v3, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v36, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v34.l, v4.h
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v4, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v21, v3, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v34, v27, s[56:59], 0 offen
	buffer_store_b16 v22, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v39, v4, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v23, v21, s[56:59], 0 offen
	v_add_lshl_u32 v21, v3, v7, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v38, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_store_b16 v24, v4, s[56:59], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s35, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v41, v21, s[56:59], 0 offen
	buffer_store_b16 v25, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v1, v20, 1
	v_mov_b16_e32 v40.l, v25.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v43.l, v26.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v40, v3, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v19, 1
	buffer_store_b16 v26, v4, s[56:59], 0 offen
	v_add_lshl_u32 v4, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v43, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v1, v17, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v42.l, v28.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v28, v3, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v16, 1
	buffer_store_b16 v42, v4, s[56:59], 0 offen
	v_add_lshl_u32 v4, v1, v15, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v29, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v1, v13, 1
	v_mov_b16_e32 v45.l, v29.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v44.l, v30.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v45, v3, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v30, v4, s[56:59], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v44, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v47.l, v37.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v37, v3, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v4, s[56:59], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v31, v2, s[56:59], 0 offen
	v_add_lshl_u32 v2, v1, v7, 1
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v5, 1
	v_mov_b16_e32 v46.l, v31.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v49.l, v32.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v46, v3, s[56:59], 0 offen
	buffer_store_b16 v32, v4, s[56:59], 0 offen
	buffer_store_b16 v49, v2, s[56:59], 0 offen
	buffer_store_b16 v0, v5, s[56:59], 0 offen
	buffer_store_b16 v48, v1, s[56:59], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 232
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 232
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 85
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12256
; TotalNumSgprs: 87
; NumVgprs: 232
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 87
; NumVGPRsForWavesPerEU: 232
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     87
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     232
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
