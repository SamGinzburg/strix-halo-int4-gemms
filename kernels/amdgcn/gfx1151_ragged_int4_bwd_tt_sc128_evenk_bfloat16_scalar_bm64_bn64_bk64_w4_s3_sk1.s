	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[38:39], s[0:1], 0x30
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
	s_add_i32 s4, s38, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s39, 63
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
	s_sub_i32 s36, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s36, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s56, s36, s38
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
	s_ashr_i32 s37, s36, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[36:37], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s61, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s61, v60
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s52, s[6:7], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s61, v59
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s37, s38, v3
	v_cmp_gt_i32_e64 s2, s38, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s52, s52, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s52, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge94_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s50, s61, s56
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr50
.LBB0_3:                                ; %Flow267
	s_load_b64 s[48:49], s[0:1], 0x28
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v106, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s60, s4, 6
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v4, 5, v0
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 6, v2
	s_clause 0x1
	s_load_b256 s[40:47], s[0:1], 0x0
	s_load_b64 s[50:51], s[0:1], 0x38
	v_mov_b32_e32 v105, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v6, 28, v4
	v_or_b32_e32 v8, 60, v4
	v_mad_u64_u32 v[33:34], null, s38, v2, v[3:4]
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_and_b32_e32 v2, 31, v0
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v5, 32, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s58, s52, 1
	s_cmp_lt_i32 s3, 64
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[35:36], null, s38, 6, v[33:34]
	v_mad_u64_u32 v[36:37], null, s38, 10, v[33:34]
	v_mad_u64_u32 v[37:38], null, s38, 12, v[33:34]
	v_mad_u64_u32 v[38:39], null, s38, 14, v[33:34]
	v_mad_u64_u32 v[39:40], null, s38, 18, v[33:34]
	v_mad_u64_u32 v[40:41], null, s38, 20, v[33:34]
	v_mad_u64_u32 v[41:42], null, s38, 22, v[33:34]
	v_mad_u64_u32 v[42:43], null, s38, 24, v[33:34]
	v_mad_u64_u32 v[43:44], null, s38, 26, v[33:34]
	v_mad_u64_u32 v[44:45], null, s38, 28, v[33:34]
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[45:46], null, s50, v4, v[2:3]
	v_mad_u64_u32 v[46:47], null, s38, 30, v[33:34]
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_mul_i32 s62, s36, s50
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s63, s36, s51
	.loc	1 1433 43                       ; ragged.py:1433:43
	s_mul_i32 s36, s36, s39
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v7, s60, v4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_u32 v9, v0, 4, 1
	v_lshrrev_b32_e32 v10, 1, v5
	v_mad_u64_u32 v[47:48], null, s50, 12, v[45:46]
	v_mad_u64_u32 v[48:49], null, s50, 20, v[45:46]
	v_mad_u64_u32 v[49:50], null, s50, 24, v[45:46]
	v_mad_u64_u32 v[50:51], null, s50, v6, v[2:3]
	v_mad_u64_u32 v[51:52], null, s50, 36, v[45:46]
	v_mad_u64_u32 v[52:53], null, s50, 40, v[45:46]
	v_mad_u64_u32 v[53:54], null, s50, 44, v[45:46]
	v_mad_u64_u32 v[54:55], null, s50, 48, v[45:46]
	v_mad_u64_u32 v[55:56], null, s50, 52, v[45:46]
	v_mad_u64_u32 v[56:57], null, s50, 56, v[45:46]
	v_mad_u64_u32 v[57:58], null, s50, v8, v[2:3]
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v1, 5, v1
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v5, 4, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v2, 24, v2
	s_cselect_b32 s59, -1, 0
	s_add_i32 s64, s60, s36
	v_lshl_add_u32 v111, s50, 2, v45
	s_mul_i32 s64, s64, s50
	v_lshl_add_u32 v112, s50, 3, v45
	v_lshl_add_u32 v113, s50, 4, v45
	v_lshl_add_u32 v114, s50, 5, v45
	s_add_i32 s50, s61, s56
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v81, v9, v10, s60
	v_or_b32_e32 v9, 48, v7
	v_or_b32_e32 v10, 52, v7
	v_or3_b32 v116, v1, v2, v5
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, s50, v60
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v5, s50, v59
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v11, s61, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, 4, v7
	v_or_b32_e32 v13, 8, v7
	v_or_b32_e32 v14, 12, v7
	v_or_b32_e32 v15, 16, v7
	v_or_b32_e32 v16, 20, v7
	v_or_b32_e32 v17, 24, v7
	v_or_b32_e32 v18, s60, v6
	v_or_b32_e32 v19, 32, v7
	v_or_b32_e32 v20, 36, v7
	v_or_b32_e32 v21, 40, v7
	v_or_b32_e32 v22, 44, v7
	v_or_b32_e32 v23, 56, v7
	v_or_b32_e32 v24, s60, v8
	v_or_b32_e32 v83, 2, v81
	v_or_b32_e32 v84, 4, v81
	v_or_b32_e32 v86, 6, v81
	v_or_b32_e32 v87, 8, v81
	v_or_b32_e32 v89, 10, v81
	v_or_b32_e32 v90, 12, v81
	v_or_b32_e32 v91, 14, v81
	v_or_b32_e32 v92, 32, v81
	v_or_b32_e32 v93, 34, v81
	v_or_b32_e32 v94, 36, v81
	v_or_b32_e32 v95, 38, v81
	v_or_b32_e32 v96, 40, v81
	v_or_b32_e32 v97, 42, v81
	v_or_b32_e32 v98, 44, v81
	v_or_b32_e32 v99, 46, v81
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s39, v7
	v_cmp_gt_i32_e64 s15, s39, v9
	v_cmp_gt_i32_e64 s16, s39, v10
	v_or_b32_e32 v3, 0x380, v0
	v_or_b32_e32 v4, 0x780, v0
	v_xor_b32_e32 v6, 0x88, v0
	v_xor_b32_e32 v7, 0x110, v0
	v_xor_b32_e32 v1, 0x198, v0
	v_xor_b32_e32 v8, 8, v116
	v_xor_b32_e32 v9, 16, v116
	v_xor_b32_e32 v10, 24, v116
	v_mul_lo_u32 v117, v2, s51
	v_cndmask_b32_e64 v2, 0, 1, s59
	v_mul_lo_u32 v118, v5, s51
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s38, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s39, v12
	v_cmp_gt_i32_e64 s5, s39, v13
	v_cmp_gt_i32_e64 s6, s39, v14
	v_cmp_gt_i32_e64 s7, s39, v15
	v_cmp_gt_i32_e64 s8, s39, v16
	v_cmp_gt_i32_e64 s9, s39, v17
	v_cmp_gt_i32_e64 s10, s39, v18
	v_cmp_gt_i32_e64 s11, s39, v19
	v_cmp_gt_i32_e64 s12, s39, v20
	v_cmp_gt_i32_e64 s13, s39, v21
	v_cmp_gt_i32_e64 s14, s39, v22
	v_cmp_gt_i32_e64 s17, s39, v23
	v_cmp_gt_i32_e64 s18, s39, v24
	v_cmp_gt_i32_e64 s19, s39, v81
	v_cmp_gt_i32_e64 s20, s39, v83
	v_cmp_gt_i32_e64 s21, s39, v84
	v_cmp_gt_i32_e64 s22, s39, v86
	v_cmp_gt_i32_e64 s23, s39, v87
	v_cmp_gt_i32_e64 s24, s39, v89
	v_cmp_gt_i32_e64 s25, s39, v90
	v_cmp_gt_i32_e64 s26, s39, v91
	v_cmp_gt_i32_e64 s27, s39, v92
	v_cmp_gt_i32_e64 s28, s39, v93
	v_cmp_gt_i32_e64 s29, s39, v94
	v_cmp_gt_i32_e64 s30, s39, v95
	v_cmp_gt_i32_e64 s31, s39, v96
	v_cmp_gt_i32_e64 s33, s39, v97
	v_cmp_gt_i32_e64 s34, s39, v98
	v_cmp_gt_i32_e64 s35, s39, v99
	v_lshl_add_u32 v107, s38, 1, v33
	v_lshl_add_u32 v108, s38, 2, v33
	v_lshl_add_u32 v109, s38, 3, v33
	v_lshl_add_u32 v110, s38, 4, v33
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v115, 0, v60
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v119, 0, v0
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v120, 0, v3
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v121, 0, v4
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v122, 0, v6
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v123, 0, v7
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v124, 0, v1
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v125, 0, v8
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v126, 0, v9
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v127, 0, v10
	v_cmp_ne_u32_e64 s36, 1, v2
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v34, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s58, s58, -1
	s_and_b32 s53, s41, 0xffff
	s_mov_b32 s52, s40
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s41, s43, 0xffff
	s_mov_b32 s40, s42
	s_mov_b32 s65, 0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s57, s47, 0xffff
	s_mov_b32 s56, s46
	s_lshr_b32 s51, s58, 6
	s_mov_b32 s46, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v117, s65, 1
	v_add_lshl_u32 v18, v118, s65, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s42, s65, s63
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s46, s54
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s42, s42, s39
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s37
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v81, s42, 1
	v_add_lshl_u32 v28, v93, s42, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v20, v83, s42, 1
	v_add_lshl_u32 v27, v92, s42, 1
	v_add_lshl_u32 v21, v84, s42, 1
	v_add_lshl_u32 v30, v95, s42, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s47, s55
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v22, v86, s42, 1
	v_add_lshl_u32 v29, v94, s42, 1
	v_add_lshl_u32 v23, v87, s42, 1
	v_add_lshl_u32 v24, v89, s42, 1
	v_add_lshl_u32 v25, v90, s42, 1
	v_add_lshl_u32 v26, v91, s42, 1
	v_add_lshl_u32 v31, v96, s42, 1
	v_add_lshl_u32 v32, v97, s42, 1
	v_add_lshl_u32 v144, v98, s42, 1
	v_add_lshl_u32 v145, v99, s42, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[44:47], 0 offen
	buffer_load_u16 v18, v18, s[44:47], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	v_cndmask_b32_e64 v28, 0x80000000, v28, s28
	v_cndmask_b32_e64 v20, 0x80000000, v20, s20
	v_cndmask_b32_e64 v27, 0x80000000, v27, s27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s21
	v_cndmask_b32_e64 v30, 0x80000000, v30, s30
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	v_cndmask_b32_e64 v22, 0x80000000, v22, s22
	v_cndmask_b32_e64 v29, 0x80000000, v29, s29
	v_cndmask_b32_e64 v23, 0x80000000, v23, s23
	v_cndmask_b32_e64 v24, 0x80000000, v24, s24
	v_cndmask_b32_e64 v25, 0x80000000, v25, s25
	v_cndmask_b32_e64 v26, 0x80000000, v26, s26
	v_cndmask_b32_e64 v31, 0x80000000, v31, s31
	v_cndmask_b32_e64 v32, 0x80000000, v32, s33
	v_cndmask_b32_e64 v144, 0x80000000, v144, s34
	v_cndmask_b32_e64 v145, 0x80000000, v145, s35
	s_clause 0xf
	buffer_load_u16 v19, v19, s[56:59], 0 offen
	buffer_load_u16 v20, v20, s[56:59], 0 offen
	buffer_load_u16 v21, v21, s[56:59], 0 offen
	buffer_load_u16 v22, v22, s[56:59], 0 offen
	buffer_load_u16 v23, v23, s[56:59], 0 offen
	buffer_load_u16 v24, v24, s[56:59], 0 offen
	buffer_load_u16 v25, v25, s[56:59], 0 offen
	buffer_load_u16 v26, v26, s[56:59], 0 offen
	buffer_load_u16 v28, v28, s[56:59], 0 offen
	buffer_load_u16 v27, v27, s[56:59], 0 offen
	buffer_load_u16 v30, v30, s[56:59], 0 offen
	buffer_load_u16 v29, v29, s[56:59], 0 offen
	buffer_load_u16 v32, v32, s[56:59], 0 offen
	buffer_load_u16 v31, v31, s[56:59], 0 offen
	buffer_load_u16 v145, v145, s[56:59], 0 offen
	buffer_load_u16 v144, v144, s[56:59], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s42, s65, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s46, s42, 6
	s_cmp_lg_u32 s65, s51
	s_mov_b32 s65, s42
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v16, v16, v18 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v143, v143, v17
	v_mul_f32_e32 v142, v142, v17
	v_mul_f32_e32 v141, v141, v17
	v_mul_f32_e32 v140, v140, v17
	v_mul_f32_e32 v139, v139, v17
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v138, v138, v17 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v12, v12, v18 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v137, v137, v17 :: v_dual_lshlrev_b32 v24, 16, v24
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v135, v135, v17 :: v_dual_lshlrev_b32 v26, 16, v26
	v_dual_mul_f32 v14, v14, v18 :: v_dual_lshlrev_b32 v25, 16, v25
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v133, v133, v17 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v131, v131, v17 :: v_dual_lshlrev_b32 v30, 16, v30
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v10, v10, v18 :: v_dual_lshlrev_b32 v29, 16, v29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v129, v129, v17 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v136, v136, v17 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v8, v8, v18 :: v_dual_lshlrev_b32 v145, 16, v145
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v134, v134, v17 :: v_dual_mul_f32 v15, v15, v18
	v_dual_mul_f32 v132, v132, v17 :: v_dual_mul_f32 v11, v11, v18
	v_dual_mul_f32 v130, v130, v17 :: v_dual_mul_f32 v13, v13, v18
	v_mul_f32_e32 v17, v128, v17
	v_dual_mul_f32 v9, v9, v18 :: v_dual_fmac_f32 v106, v143, v19
	v_dual_mul_f32 v7, v7, v18 :: v_dual_fmac_f32 v104, v141, v21
	v_dual_mul_f32 v4, v4, v18 :: v_dual_fmac_f32 v105, v142, v20
	v_dual_mul_f32 v3, v3, v18 :: v_dual_fmac_f32 v100, v137, v25
	v_dual_mul_f32 v6, v6, v18 :: v_dual_fmac_f32 v85, v135, v27
	v_dual_mul_f32 v5, v5, v18 :: v_dual_fmac_f32 v102, v139, v23
	v_dual_mul_f32 v2, v2, v18 :: v_dual_fmac_f32 v75, v17, v145
	v_dual_mul_f32 v1, v1, v18 :: v_dual_fmac_f32 v82, v134, v28
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v103, v140, v22 :: v_dual_fmac_f32 v80, v133, v29
	v_dual_fmac_f32 v101, v138, v24 :: v_dual_fmac_f32 v88, v136, v26
	v_dual_fmac_f32 v79, v132, v30 :: v_dual_fmac_f32 v78, v131, v31
	v_dual_fmac_f32 v77, v130, v32 :: v_dual_fmac_f32 v72, v12, v22
	v_dual_fmac_f32 v76, v129, v144 :: v_dual_fmac_f32 v73, v15, v19
	v_dual_fmac_f32 v74, v16, v20 :: v_dual_fmac_f32 v71, v11, v21
	v_dual_fmac_f32 v69, v13, v23 :: v_dual_fmac_f32 v70, v14, v24
	v_dual_fmac_f32 v67, v9, v25 :: v_dual_fmac_f32 v68, v10, v26
	v_dual_fmac_f32 v65, v7, v27 :: v_dual_fmac_f32 v66, v8, v28
	v_dual_fmac_f32 v63, v3, v29 :: v_dual_fmac_f32 v64, v4, v30
	v_dual_fmac_f32 v61, v5, v31 :: v_dual_fmac_f32 v62, v6, v32
	v_fmac_f32_e32 v58, v1, v144
	v_fmac_f32_e32 v34, v2, v145
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s36
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s47, s3
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
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s58, s47, s46
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s42, s54
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s59, s58, s62
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s58, s58, s64
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_mul_i32 s59, s59, s38
	v_add_nc_u32_e32 v128, s58, v45
	v_add_nc_u32_e32 v129, s58, v111
	v_add_nc_u32_e32 v130, s58, v112
	s_add_i32 s59, s59, s61
	v_add_nc_u32_e32 v131, s58, v47
	v_add_nc_u32_e32 v132, s58, v113
	v_add_nc_u32_e32 v133, s58, v48
	v_add_nc_u32_e32 v134, s58, v49
	v_add_nc_u32_e32 v135, s58, v50
	v_add_nc_u32_e32 v136, s58, v114
	v_add_nc_u32_e32 v137, s58, v51
	v_add_nc_u32_e32 v138, s58, v52
	v_add_nc_u32_e32 v139, s58, v53
	v_add_nc_u32_e32 v140, s58, v54
	v_add_nc_u32_e32 v141, s58, v55
	v_add_nc_u32_e32 v142, s58, v56
	v_add_nc_u32_e32 v143, s58, v57
	v_add_nc_u32_e32 v144, s59, v33
	v_add_nc_u32_e32 v145, s59, v107
	v_add_nc_u32_e32 v146, s59, v108
	v_add_nc_u32_e32 v147, s59, v35
	v_add_nc_u32_e32 v148, s59, v109
	v_add_nc_u32_e32 v149, s59, v36
	v_add_nc_u32_e32 v150, s59, v37
	v_add_nc_u32_e32 v151, s59, v38
	v_add_nc_u32_e32 v152, s59, v110
	v_add_nc_u32_e32 v153, s59, v39
	v_add_nc_u32_e32 v154, s59, v40
	v_add_nc_u32_e32 v155, s59, v41
	v_add_nc_u32_e32 v156, s59, v42
	v_add_nc_u32_e32 v157, s59, v43
	v_add_nc_u32_e32 v158, s59, v44
	v_add_nc_u32_e32 v159, s59, v46
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	v_cndmask_b32_e64 v129, 0x80000000, v129, s4
	v_cndmask_b32_e64 v130, 0x80000000, v130, s5
	s_mov_b32 s43, s55
	v_cndmask_b32_e64 v131, 0x80000000, v131, s6
	v_cndmask_b32_e64 v132, 0x80000000, v132, s7
	v_cndmask_b32_e64 v133, 0x80000000, v133, s8
	v_cndmask_b32_e64 v134, 0x80000000, v134, s9
	v_cndmask_b32_e64 v135, 0x80000000, v135, s10
	v_cndmask_b32_e64 v136, 0x80000000, v136, s11
	v_cndmask_b32_e64 v137, 0x80000000, v137, s12
	v_cndmask_b32_e64 v138, 0x80000000, v138, s13
	v_cndmask_b32_e64 v139, 0x80000000, v139, s14
	v_cndmask_b32_e64 v140, 0x80000000, v140, s15
	v_cndmask_b32_e64 v141, 0x80000000, v141, s16
	v_cndmask_b32_e64 v142, 0x80000000, v142, s17
	v_cndmask_b32_e64 v143, 0x80000000, v143, s18
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	v_cndmask_b32_e64 v145, 0x80000000, v145, s0
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	v_cndmask_b32_e64 v147, 0x80000000, v147, s0
	v_cndmask_b32_e64 v148, 0x80000000, v148, s0
	v_cndmask_b32_e64 v149, 0x80000000, v149, s0
	v_cndmask_b32_e64 v150, 0x80000000, v150, s0
	v_cndmask_b32_e64 v151, 0x80000000, v151, s0
	v_cndmask_b32_e64 v152, 0x80000000, v152, s0
	v_cndmask_b32_e64 v153, 0x80000000, v153, s0
	v_cndmask_b32_e64 v154, 0x80000000, v154, s0
	v_cndmask_b32_e64 v155, 0x80000000, v155, s0
	v_cndmask_b32_e64 v156, 0x80000000, v156, s0
	v_cndmask_b32_e64 v157, 0x80000000, v157, s0
	v_cndmask_b32_e64 v158, 0x80000000, v158, s0
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0xe
	buffer_load_u8 v128, v128, s[40:43], 0 offen
	buffer_load_u8 v129, v129, s[40:43], 0 offen
	buffer_load_u8 v130, v130, s[40:43], 0 offen
	buffer_load_u8 v131, v131, s[40:43], 0 offen
	buffer_load_u8 v132, v132, s[40:43], 0 offen
	buffer_load_u8 v133, v133, s[40:43], 0 offen
	buffer_load_u8 v134, v134, s[40:43], 0 offen
	buffer_load_u8 v135, v135, s[40:43], 0 offen
	buffer_load_u8 v136, v136, s[40:43], 0 offen
	buffer_load_u8 v137, v137, s[40:43], 0 offen
	buffer_load_u8 v138, v138, s[40:43], 0 offen
	buffer_load_u8 v139, v139, s[40:43], 0 offen
	buffer_load_u8 v140, v140, s[40:43], 0 offen
	buffer_load_u8 v141, v141, s[40:43], 0 offen
	buffer_load_u8 v142, v142, s[40:43], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0xf
	buffer_load_u8 v144, v144, s[52:55], 0 offen
	buffer_load_u8 v145, v145, s[52:55], 0 offen
	buffer_load_u8 v146, v146, s[52:55], 0 offen
	buffer_load_u8 v147, v147, s[52:55], 0 offen
	buffer_load_u8 v148, v148, s[52:55], 0 offen
	buffer_load_u8 v149, v149, s[52:55], 0 offen
	buffer_load_u8 v150, v150, s[52:55], 0 offen
	buffer_load_u8 v152, v152, s[52:55], 0 offen
	buffer_load_u8 v153, v153, s[52:55], 0 offen
	buffer_load_u8 v154, v154, s[52:55], 0 offen
	buffer_load_u8 v155, v155, s[52:55], 0 offen
	buffer_load_u8 v156, v156, s[52:55], 0 offen
	buffer_load_u8 v157, v157, s[52:55], 0 offen
	buffer_load_u8 v151, v151, s[52:55], 0 offen
	buffer_load_u8 v158, v158, s[52:55], 0 offen
	buffer_load_u8 v159, v159, s[52:55], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_u8 v143, v143, s[40:43], 0 offen
	v_add_nc_u32_e32 v160, 0, v116
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s42, s47, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s47, 32
	s_mov_b32 s47, s42
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(16)
	ds_store_b8 v119, v144
	s_waitcnt vmcnt(15)
	ds_store_b8 v119, v145 offset:128
	s_waitcnt vmcnt(14)
	ds_store_b8 v119, v146 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v119, v147 offset:384
	s_waitcnt vmcnt(12)
	ds_store_b8 v119, v148 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v119, v149 offset:640
	s_waitcnt vmcnt(10)
	ds_store_b8 v119, v150 offset:768
	s_waitcnt vmcnt(9)
	ds_store_b8 v119, v152 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v119, v153 offset:1152
	s_waitcnt vmcnt(7)
	ds_store_b8 v119, v154 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v119, v155 offset:1408
	s_waitcnt vmcnt(5)
	ds_store_b8 v119, v156 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v119, v157 offset:1664
	s_waitcnt vmcnt(3)
	ds_store_b8 v120, v151
	s_waitcnt vmcnt(2)
	ds_store_b8 v119, v158 offset:1792
	s_waitcnt vmcnt(1)
	ds_store_b8 v121, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v144, v115 offset:448
	ds_load_u8 v145, v115 offset:384
	ds_load_u8 v146, v115 offset:320
	ds_load_u8 v147, v115 offset:256
	ds_load_u8 v148, v115 offset:480
	ds_load_u8 v149, v115 offset:416
	ds_load_u8 v150, v115 offset:352
	ds_load_u8 v151, v115 offset:288
	ds_load_u8 v152, v115 offset:192
	ds_load_u8 v153, v115 offset:128
	ds_load_u8 v154, v115 offset:64
	ds_load_u8 v155, v115 offset:224
	ds_load_u8 v156, v115 offset:160
	ds_load_u8 v157, v115 offset:96
	ds_load_u8 v158, v115
	ds_load_u8 v159, v115 offset:32
	ds_load_u8 v161, v115 offset:704
	ds_load_u8 v162, v115 offset:640
	ds_load_u8 v163, v115 offset:576
	ds_load_u8 v164, v115 offset:512
	ds_load_u8 v165, v115 offset:736
	ds_load_u8 v166, v115 offset:672
	ds_load_u8 v167, v115 offset:608
	ds_load_u8 v168, v115 offset:544
	ds_load_u8 v169, v115 offset:960
	ds_load_u8 v170, v115 offset:896
	ds_load_u8 v171, v115 offset:832
	ds_load_u8 v172, v115 offset:768
	ds_load_u8 v173, v115 offset:992
	ds_load_u8 v174, v115 offset:928
	ds_load_u8 v175, v115 offset:864
	ds_load_u8 v176, v115 offset:800
	ds_load_u8 v177, v115 offset:1216
	ds_load_u8 v178, v115 offset:1152
	ds_load_u8 v179, v115 offset:1088
	ds_load_u8 v180, v115 offset:1024
	ds_load_u8 v181, v115 offset:1248
	ds_load_u8 v182, v115 offset:1184
	ds_load_u8 v183, v115 offset:1120
	ds_load_u8 v184, v115 offset:1056
	ds_load_u8 v185, v115 offset:1472
	ds_load_u8 v186, v115 offset:1408
	ds_load_u8 v187, v115 offset:1344
	ds_load_u8 v188, v115 offset:1280
	ds_load_u8 v189, v115 offset:1504
	ds_load_u8 v190, v115 offset:1440
	ds_load_u8 v191, v115 offset:1376
	ds_load_u8 v192, v115 offset:1312
	ds_load_u8 v193, v115 offset:1728
	ds_load_u8 v194, v115 offset:1664
	ds_load_u8 v195, v115 offset:1600
	ds_load_u8 v196, v115 offset:1536
	ds_load_u8 v197, v115 offset:1760
	ds_load_u8 v198, v115 offset:1696
	ds_load_u8 v199, v115 offset:1632
	ds_load_u8 v200, v115 offset:1568
	ds_load_u8 v201, v115 offset:1984
	ds_load_u8 v202, v115 offset:1920
	ds_load_u8 v203, v115 offset:1856
	ds_load_u8 v204, v115 offset:1792
	ds_load_u8 v205, v115 offset:2016
	ds_load_u8 v206, v115 offset:1952
	ds_load_u8 v207, v115 offset:1888
	ds_load_u8 v208, v115 offset:1824
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v119, v128
	ds_store_b8 v119, v132 offset:512
	ds_store_b8 v119, v136 offset:1024
	ds_store_b8 v119, v140 offset:1536
	ds_store_b8 v122, v129
	ds_store_b8 v122, v133 offset:512
	ds_store_b8 v122, v137 offset:1024
	ds_store_b8 v122, v141 offset:1536
	ds_store_b8 v123, v130
	ds_store_b8 v123, v134 offset:512
	ds_store_b8 v123, v138 offset:1024
	ds_store_b8 v123, v142 offset:1536
	ds_store_b8 v124, v131
	ds_store_b8 v124, v135 offset:512
	ds_store_b8 v124, v139 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v124, v143 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[128:131], v160 offset1:2
	ds_load_2addr_stride64_b64 v[132:135], v125 offset1:2
	ds_load_2addr_stride64_b64 v[136:139], v126 offset1:2
	ds_load_2addr_stride64_b64 v[140:143], v127 offset1:2
	.loc	1 1438 35                       ; ragged.py:1438:35
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v147, v158, v154, 0xc0c0004
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_perm_b32 v153, v172, v171, 0xc0c0004
	v_perm_b32 v154, v170, v169, 0xc0c0004
	v_perm_b32 v158, v164, v163, 0xc0c0004
	v_perm_b32 v164, v178, v177, 0xc0c0004
	v_perm_b32 v177, v151, v150, 0xc0c0004
	v_perm_b32 v178, v149, v148, 0xc0c0004
	v_perm_b32 v157, v159, v157, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v160, v162, v161, 0xc0c0004
	v_perm_b32 v156, v176, v175, 0xc0c0004
	v_perm_b32 v159, v174, v173, 0xc0c0004
	v_perm_b32 v167, v168, v167, 0xc0c0004
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_lshl_or_b32 v145, v144, 16, v146
	v_lshl_or_b32 v144, v152, 16, v147
	v_lshl_or_b32 v147, v154, 16, v153
	v_lshl_or_b32 v153, v178, 16, v177
	v_lshl_or_b32 v152, v155, 16, v157
	v_perm_b32 v161, v188, v187, 0xc0c0004
	v_perm_b32 v162, v186, v185, 0xc0c0004
	v_perm_b32 v163, v180, v179, 0xc0c0004
	v_perm_b32 v166, v192, v191, 0xc0c0004
	v_perm_b32 v168, v190, v189, 0xc0c0004
	v_perm_b32 v173, v184, v183, 0xc0c0004
	v_perm_b32 v174, v182, v181, 0xc0c0004
	v_lshl_or_b32 v146, v160, 16, v158
	v_lshl_or_b32 v155, v159, 16, v156
	v_lshl_or_b32 v154, v165, 16, v167
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[128:129], v[144:145], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[144:145], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[128:129], v[152:153], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[130:131], v[152:153], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v169, v204, v203, 0xc0c0004
	v_perm_b32 v170, v202, v201, 0xc0c0004
	v_perm_b32 v171, v196, v195, 0xc0c0004
	v_perm_b32 v172, v194, v193, 0xc0c0004
	v_perm_b32 v175, v208, v207, 0xc0c0004
	v_perm_b32 v176, v206, v205, 0xc0c0004
	v_perm_b32 v179, v200, v199, 0xc0c0004
	v_perm_b32 v180, v198, v197, 0xc0c0004
	v_lshl_or_b32 v149, v162, 16, v161
	v_lshl_or_b32 v148, v164, 16, v163
	v_lshl_or_b32 v157, v168, 16, v166
	v_lshl_or_b32 v156, v174, 16, v173
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[132:133], v[146:147], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[146:147], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[132:133], v[154:155], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[134:135], v[154:155], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v151, v170, 16, v169
	v_lshl_or_b32 v150, v172, 16, v171
	v_lshl_or_b32 v129, v176, 16, v175
	v_lshl_or_b32 v128, v180, 16, v179
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[136:137], v[148:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[148:149], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[136:137], v[156:157], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[138:139], v[156:157], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[140:141], v[150:151], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[150:151], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[140:141], v[128:129], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[142:143], v[128:129], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v143, v1
	v_cvt_f32_i32_e32 v142, v2
	v_cvt_f32_i32_e32 v141, v3
	v_cvt_f32_i32_e32 v140, v4
	v_cvt_f32_i32_e32 v139, v5
	v_cvt_f32_i32_e32 v138, v6
	v_cvt_f32_i32_e32 v137, v7
	v_cvt_f32_i32_e32 v136, v8
	v_cvt_f32_i32_e32 v135, v9
	v_cvt_f32_i32_e32 v134, v10
	v_cvt_f32_i32_e32 v133, v11
	v_cvt_f32_i32_e32 v132, v12
	v_cvt_f32_i32_e32 v131, v13
	v_cvt_f32_i32_e32 v130, v14
	v_cvt_f32_i32_e32 v129, v15
	v_cvt_f32_i32_e32 v128, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v9, v23
	v_cvt_f32_i32_e32 v10, v24
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v1, v31
	v_cvt_f32_i32_e32 v2, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge94
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s50, s39
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v22, v104, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s3, s60
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v106, v106
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_and_b32_e32 v14, 24, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v23, v103, 16, 1
	v_add3_u32 v22, v104, v22, 0x7fff
	v_cmp_o_f32_e64 s17, v104, v104
	v_bfe_u32 v24, v101, 16, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v5, 39, v14
	v_or_b32_e32 v10, 34, v14
	v_or_b32_e32 v9, 35, v14
	v_or_b32_e32 v6, 38, v14
	v_or_b32_e32 v11, 33, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v5
	v_or_b32_e32 v16, s60, v10
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v7, 37, v14
	v_or_b32_e32 v8, 36, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s60, v9
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v12, 32, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s39, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s39, v16
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v16, 5, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s60, v7
	v_or_b32_e32 v4, s60, v8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s39, v13
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v13, 7, v14
	v_or_b32_e32 v15, 6, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s39, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v12
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s39, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v17, 4, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v16
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v19, 2, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s39, v3
	v_cmp_gt_i32_e64 s4, s39, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s60, v13
	v_or_b32_e32 v4, s60, v15
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v18, 3, v14
	v_or_b32_e32 v20, 1, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s39, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s39, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v19
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s39, v3
	v_cmp_gt_i32_e64 s10, s39, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s60, v18
	v_or_b32_e32 v4, s60, v20
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s39, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s39, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v1, v106, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s39, v3
	v_cmp_gt_i32_e64 s15, s39, v4
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s39, v60, s[18:19]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s39, v2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v4, v106, v1, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s39, v59, s[18:19]
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v2, v105, 16, 1
	v_add3_u32 v23, v103, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cmp_o_f32_e64 s3, v105, v105
	v_cmp_o_f32_e64 s18, v103, v103
	v_add3_u32 v2, v105, v2, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s17
	v_add3_u32 v24, v101, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v101, v101
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s18
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v102, 16, 1
	v_bfe_u32 v23, v100, 16, 1
	v_cmp_o_f32_e64 s3, v102, v102
	v_bfe_u32 v25, v88, 16, 1
	v_cmp_o_f32_e64 s18, v100, v100
	v_add3_u32 v2, v102, v2, 0x7fff
	v_add3_u32 v23, v100, v23, 0x7fff
	v_bfe_u32 v26, v82, 16, 1
	v_add3_u32 v25, v88, v25, 0x7fff
	v_bfe_u32 v27, v79, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v24.h, s17
	v_bfe_u32 v24, v85, 16, 1
	v_cmp_o_f32_e64 s3, v88, v88
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s18
	v_cmp_o_f32_e64 s17, v85, v85
	v_add3_u32 v26, v82, v26, 0x7fff
	v_add3_u32 v24, v85, v24, 0x7fff
	v_cmp_o_f32_e64 s18, v82, v82
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v80, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s17
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s18
	v_bfe_u32 v26, v78, 16, 1
	v_add3_u32 v25, v80, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v80, v80
	v_add3_u32 v27, v79, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v79, v79
	v_bfe_u32 v28, v77, 16, 1
	v_bfe_u32 v29, v76, 16, 1
	v_add3_u32 v26, v78, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v78, v78
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s17
	v_add3_u32 v27, v77, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v77, v77
	v_add3_u32 v28, v76, v29, 0x7fff
	v_mov_b16_e32 v29.l, v73.h
	v_mov_b16_e32 v29.h, v21.h
	v_mov_b16_e32 v21.l, v74.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s18
	v_bfe_u32 v30, v75, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v21.l, v72.h
	v_cmp_o_f32_e64 s17, v76, v76
	v_add3_u32 v30, v75, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v75, v75
	v_add3_u32 v27, v73, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v73, v73
	v_mov_b16_e32 v31.l, v71.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_add3_u32 v29, v74, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v72, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v72, v72
	v_mov_b16_e32 v21.l, v70.h
	v_mov_b16_e32 v31.l, v69.h
	v_add3_u32 v27, v71, v27, 0x7fff
	v_mov_b16_e32 v33.l, v67.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_cmp_o_f32_e64 s3, v71, v71
	v_and_b32_e32 v32, 1, v21
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v68.h
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s3
	v_cmp_o_f32_e64 s3, v69, v69
	v_add3_u32 v31, v69, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v21.l, v66.h
	v_add3_u32 v32, v70, v32, 0x7fff
	v_cmp_o_f32_e64 s17, v74, v74
	v_add3_u32 v27, v67, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v67, v67
	v_mov_b16_e32 v35.l, v65.h
	v_mov_b16_e32 v35.h, v21.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s3
	v_and_b32_e32 v31, 1, v21
	v_mov_b16_e32 v21.l, v64.h
	v_add3_u32 v33, v68, v33, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s17
	v_cmp_o_f32_e64 s17, v70, v70
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v35
	v_add3_u32 v31, v66, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_mov_b16_e32 v35.l, v63.h
	v_and_b32_e32 v36, 1, v21
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s17
	v_cmp_o_f32_e64 s17, v68, v68
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s3
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v36, v64, v36, 0x7fff
	v_cmp_o_f32_e64 s3, v64, v64
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s17
	v_add3_u32 v27, v65, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v65, v65
	v_add3_u32 v35, v63, v35, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_mov_b16_e32 v21.l, v62.h
	v_cmp_o_f32_e64 s3, v63, v63
	v_mov_b16_e32 v37.l, v58.h
	v_mov_b16_e32 v37.h, v21.h
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s17
	v_mov_b16_e32 v27.l, v61.h
	v_mov_b16_e32 v27.h, v21.h
	v_and_b32_e32 v38, 1, v21
	v_mov_b16_e32 v21.l, v34.h
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s3
	v_and_b32_e32 v35, 1, v37
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v37, v62, v38, 0x7fff
	v_and_b32_e32 v38, 1, v21
	v_cmp_o_f32_e64 s3, v62, v62
	v_add3_u32 v35, v58, v35, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v58, v58
	v_add3_u32 v27, v61, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v61, v61
	v_add3_u32 v38, v34, v38, 0x7fff
	v_cmp_o_f32_e64 s18, v34, v34
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v35.h, s19
	v_mov_b32_e32 v35, 0x5410
	v_cndmask_b16 v34.l, 0x7fff, v27.h, s17
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v27, v2, v4, s3
	v_cndmask_b32_e64 v2, v4, v2, s3
	v_cndmask_b32_e64 v4, v23, v22, s3
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v26, v24, s3
	v_cndmask_b32_e64 v24, v24, v26, s3
	v_cndmask_b32_e64 v26, v28, v25, s3
	v_cndmask_b32_e64 v25, v25, v28, s3
	v_cndmask_b32_e64 v28, v32, v29, s3
	v_cndmask_b32_e64 v29, v29, v32, s3
	v_cndmask_b32_e64 v32, 0x1054, v35, s3
	v_cndmask_b32_e64 v35, 0x3276, v37, s3
	s_mov_b32 s17, 0x76543210
	v_cndmask_b16 v0.h, 0x7fff, v38.h, s18
	v_cndmask_b32_e64 v37, v33, v30, s3
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v35, v35, 8, v35
	v_cndmask_b32_e64 v30, v30, v33, s3
	v_cndmask_b32_e64 v33, v34, v31, s3
	v_cndmask_b32_e64 v31, v31, v34, s3
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v35, 0x760076, v35
	v_permlanex16_b32 v2, v2, s17, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v50, v3, v14, 1
	v_cndmask_b32_e64 v34, v0, v36, s3
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v35, v35, 4, v35
	v_cndmask_b32_e64 v0, v36, v0, s3
	v_permlanex16_b32 v22, v22, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v32
	v_permlanex16_b32 v25, v25, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v35, 0x7060706, v35
	v_permlanex16_b32 v30, v30, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s17, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v2, v27, v32
	v_add_lshl_u32 v51, v3, v20, 1
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s37, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v52, v3, v19, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v2, v27, v35
	v_perm_b32 v27, v22, v4, v32
	v_perm_b32 v4, v22, v4, v35
	v_perm_b32 v22, v24, v23, v32
	v_perm_b32 v23, v24, v23, v35
	v_perm_b32 v24, v25, v26, v32
	v_perm_b32 v25, v25, v26, v35
	v_perm_b32 v26, v29, v28, v32
	v_perm_b32 v28, v29, v28, v35
	v_perm_b32 v29, v30, v37, v32
	v_perm_b32 v30, v30, v37, v35
	v_perm_b32 v37, v31, v33, v32
	v_perm_b32 v31, v31, v33, v35
	v_mov_b16_e32 v33.l, v36.h
	v_mov_b16_e32 v33.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v36, v50, s[48:51], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s3
	v_add_lshl_u32 v36, v3, v18, 1
	buffer_store_b16 v33, v51, s[48:51], 0 offen
	v_add_lshl_u32 v33, v3, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v21.l, v2.h
	buffer_store_b16 v2, v50, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v16, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v32, v0, v34, v32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v0, v0, v34, v35
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v35.h, v21.h
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
	buffer_store_b16 v21, v36, s[48:51], 0 offen
	v_add_lshl_u32 v21, v3, v15, 1
	buffer_store_b16 v27, v33, s[48:51], 0 offen
	v_add_lshl_u32 v27, v3, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v35, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v34.l, v4.h
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v4, v21, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v21, v3, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v34, v27, s[48:51], 0 offen
	buffer_store_b16 v22, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v39, v4, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v23, v21, s[48:51], 0 offen
	v_add_lshl_u32 v21, v3, v7, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v38, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_store_b16 v24, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s37, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v41, v21, s[48:51], 0 offen
	buffer_store_b16 v25, v2, s[48:51], 0 offen
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
	buffer_store_b16 v40, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v19, 1
	buffer_store_b16 v26, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v43, v2, s[48:51], 0 offen
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
	buffer_store_b16 v28, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v16, 1
	buffer_store_b16 v42, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v15, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v29, v2, s[48:51], 0 offen
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
	buffer_store_b16 v45, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v30, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v44, v2, s[48:51], 0 offen
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
	buffer_store_b16 v37, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v31, v2, s[48:51], 0 offen
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
	buffer_store_b16 v46, v3, s[48:51], 0 offen
	buffer_store_b16 v32, v4, s[48:51], 0 offen
	buffer_store_b16 v49, v2, s[48:51], 0 offen
	buffer_store_b16 v0, v5, s[48:51], 0 offen
	buffer_store_b16 v48, v1, s[48:51], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 209
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 209
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8744
; TotalNumSgprs: 68
; NumVgprs: 209
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 209
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     209
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
