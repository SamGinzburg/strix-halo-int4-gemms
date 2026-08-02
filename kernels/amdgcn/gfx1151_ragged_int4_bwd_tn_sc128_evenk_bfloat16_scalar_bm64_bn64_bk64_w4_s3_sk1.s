	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s23, 63
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
	s_sub_i32 s20, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s20, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s44, s20, s22
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 64, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 2, v1
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v69, v3, v2
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_mul_hi_u32 s4, s7, s6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v68, 32, v69
	.loc	1 1306 17                       ; ragged.py:1306:17
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
	s_ashr_i32 s21, s20, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[20:21], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s38, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s38, v69
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s40, s[6:7], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v5, s38, v68
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s21, s22, v4
	v_cmp_gt_i32_e64 s2, s22, v5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s40, s40, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s40, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge96_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s34, s38, s44
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr34
.LBB0_3:                                ; %Flow162
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v67, 24, v3
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v96, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s33, s4, 6
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v3, 32, v0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_bfe_u32 v4, v0, 4, 1
	s_clause 0x1
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b64 s[34:35], s[0:1], 0x38
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_lshrrev_b32_e32 v5, 1, v3
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s45, s40, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v100, v4, v5, s33
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v5, s38, v3
	.loc	1 1309 36 is_stmt 0             ; ragged.py:1309:36
	v_bfe_i32 v4, v0, 5, 1
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v6, s33, v3
	s_cmp_lt_i32 s3, 64
	v_mov_b32_e32 v97, 0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s22, v5
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v5, 3, v1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s19, s23, v6
	v_lshlrev_b32_e32 v6, 1, v0
	v_cndmask_b32_e64 v1, 0x208, 0, vcc_lo
	v_mov_b32_e32 v95, 0
	v_mad_u64_u32 v[37:38], null, s22, v5, v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v6, 24, v6
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s39, s20, s34
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s48, s20, s35
	s_cselect_b32 s20, -1, 0
	s_add_i32 s34, s38, s44
	v_lshl_or_b32 v2, v2, 5, v6
	v_mad_u64_u32 v[39:40], null, s22, 3, v[37:38]
	v_mad_u64_u32 v[40:41], null, s22, 5, v[37:38]
	v_mad_u64_u32 v[41:42], null, s22, 6, v[37:38]
	v_mad_u64_u32 v[42:43], null, s22, 7, v[37:38]
	v_mad_u64_u32 v[43:44], null, s23, v5, v[3:4]
	v_mad_u64_u32 v[45:46], null, s22, 17, v[37:38]
	v_mad_u64_u32 v[46:47], null, s22, 18, v[37:38]
	v_mad_u64_u32 v[47:48], null, s22, 19, v[37:38]
	v_mad_u64_u32 v[48:49], null, s22, 20, v[37:38]
	v_mad_u64_u32 v[49:50], null, s22, 21, v[37:38]
	v_xor3_b32 v5, v67, v5, v6
	v_xor_b32_e32 v125, v2, v1
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v1, 0x208, v4
	v_mad_u64_u32 v[50:51], null, s22, 22, v[37:38]
	v_mad_u64_u32 v[51:52], null, s22, 23, v[37:38]
	v_mad_u64_u32 v[52:53], null, s23, 3, v[43:44]
	v_mad_u64_u32 v[53:54], null, s23, 5, v[43:44]
	v_mad_u64_u32 v[54:55], null, s23, 6, v[43:44]
	v_lshl_or_b32 v124, v3, 5, v5
	v_xor_b32_e32 v126, v2, v1
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v11, s34, v69
	v_mad_u64_u32 v[55:56], null, s23, 7, v[43:44]
	v_mad_u64_u32 v[56:57], null, s23, 17, v[43:44]
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v12, s34, v68
	v_mad_u64_u32 v[57:58], null, s23, 18, v[43:44]
	v_mad_u64_u32 v[58:59], null, s23, 19, v[43:44]
	v_mad_u64_u32 v[59:60], null, s23, 20, v[43:44]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v101, 2, v100
	v_or_b32_e32 v102, 4, v100
	v_or_b32_e32 v103, 6, v100
	v_or_b32_e32 v104, 8, v100
	v_or_b32_e32 v105, 10, v100
	v_or_b32_e32 v106, 12, v100
	v_or_b32_e32 v107, 14, v100
	v_or_b32_e32 v108, 32, v100
	v_or_b32_e32 v109, 34, v100
	v_or_b32_e32 v110, 36, v100
	v_or_b32_e32 v111, 38, v100
	v_or_b32_e32 v112, 40, v100
	v_or_b32_e32 v113, 42, v100
	v_or_b32_e32 v114, 44, v100
	v_or_b32_e32 v115, 46, v100
	v_xor_b32_e32 v3, 16, v124
	v_xor_b32_e32 v4, 8, v125
	v_xor_b32_e32 v5, 16, v125
	v_xor_b32_e32 v1, 24, v125
	v_xor_b32_e32 v2, 0x410, v125
	v_xor_b32_e32 v6, 0x418, v125
	v_xor_b32_e32 v7, 0x408, v125
	v_xor_b32_e32 v8, 8, v126
	v_xor_b32_e32 v9, 16, v126
	v_xor_b32_e32 v10, 24, v126
	v_xor_b32_e32 v13, 0x410, v126
	v_xor_b32_e32 v14, 0x418, v126
	v_xor_b32_e32 v15, 0x408, v126
	v_mul_lo_u32 v127, v11, s35
	v_cndmask_b32_e64 v11, 0, 1, s20
	v_mad_u64_u32 v[60:61], null, s23, 21, v[43:44]
	v_mad_u64_u32 v[61:62], null, s23, 22, v[43:44]
	v_mul_lo_u32 v128, v12, s35
	v_mad_u64_u32 v[62:63], null, s23, 23, v[43:44]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s23, v100
	v_cmp_gt_i32_e64 s4, s23, v101
	v_cmp_gt_i32_e64 s5, s23, v102
	v_cmp_gt_i32_e64 s6, s23, v103
	v_cmp_gt_i32_e64 s7, s23, v104
	v_cmp_gt_i32_e64 s8, s23, v105
	v_cmp_gt_i32_e64 s9, s23, v106
	v_cmp_gt_i32_e64 s10, s23, v107
	v_cmp_gt_i32_e64 s11, s23, v108
	v_cmp_gt_i32_e64 s12, s23, v109
	v_cmp_gt_i32_e64 s13, s23, v110
	v_cmp_gt_i32_e64 s14, s23, v111
	v_cmp_gt_i32_e64 s15, s23, v112
	v_cmp_gt_i32_e64 s16, s23, v113
	v_cmp_gt_i32_e64 s17, s23, v114
	v_cmp_gt_i32_e64 s18, s23, v115
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v116, s22, v37
	v_lshl_add_u32 v117, s22, 1, v37
	v_lshl_add_u32 v118, s22, 2, v37
	v_lshl_add_u32 v119, s22, 4, v37
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v120, s23, v43
	v_lshl_add_u32 v121, s23, 1, v43
	v_lshl_add_u32 v122, s23, 2, v43
	v_lshl_add_u32 v123, s23, 4, v43
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v129, 0, v3
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v130, 0, v4
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v131, 0, v5
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v132, 0, v1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v133, 0, v2
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v134, 0, v6
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v135, 0, v7
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v136, 0, v8
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v137, 0, v9
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v138, 0, v10
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v139, 0, v13
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v140, 0, v14
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v141, 0, v15
	v_cmp_ne_u32_e64 s20, 1, v11
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v38, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s29, s29, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s45, s45, -1
	s_and_b32 s31, s31, 0xffff
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_mov_b32 s49, 0
	s_lshr_b32 s35, s45, 6
	s_mov_b32 s44, s28
	s_mov_b32 s45, s29
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s26, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v127, s49, 1
	v_add_lshl_u32 v18, v128, s49, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s26, s49, s48
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s27, s49, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s26, s26, s23
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s21
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v100, s26, 1
	v_add_lshl_u32 v28, v109, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v20, v101, s26, 1
	v_add_lshl_u32 v27, v108, s26, 1
	v_add_lshl_u32 v21, v102, s26, 1
	v_add_lshl_u32 v30, v111, s26, 1
	v_add_lshl_u32 v22, v103, s26, 1
	v_add_lshl_u32 v29, v110, s26, 1
	v_add_lshl_u32 v23, v104, s26, 1
	v_add_lshl_u32 v24, v105, s26, 1
	v_add_lshl_u32 v25, v106, s26, 1
	v_add_lshl_u32 v26, v107, s26, 1
	v_add_lshl_u32 v31, v112, s26, 1
	v_add_lshl_u32 v32, v113, s26, 1
	v_add_lshl_u32 v150, v114, s26, 1
	v_add_lshl_u32 v151, v115, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[44:47], 0 offen
	buffer_load_u16 v18, v18, s[44:47], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s12
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_cndmask_b32_e64 v27, 0x80000000, v27, s11
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	v_cndmask_b32_e64 v30, 0x80000000, v30, s14
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	v_cndmask_b32_e64 v29, 0x80000000, v29, s13
	v_cndmask_b32_e64 v23, 0x80000000, v23, s7
	v_cndmask_b32_e64 v24, 0x80000000, v24, s8
	v_cndmask_b32_e64 v25, 0x80000000, v25, s9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s10
	v_cndmask_b32_e64 v31, 0x80000000, v31, s15
	v_cndmask_b32_e64 v32, 0x80000000, v32, s16
	v_cndmask_b32_e64 v150, 0x80000000, v150, s17
	v_cndmask_b32_e64 v151, 0x80000000, v151, s18
	s_clause 0xf
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	buffer_load_u16 v20, v20, s[28:31], 0 offen
	buffer_load_u16 v21, v21, s[28:31], 0 offen
	buffer_load_u16 v22, v22, s[28:31], 0 offen
	buffer_load_u16 v23, v23, s[28:31], 0 offen
	buffer_load_u16 v24, v24, s[28:31], 0 offen
	buffer_load_u16 v25, v25, s[28:31], 0 offen
	buffer_load_u16 v26, v26, s[28:31], 0 offen
	buffer_load_u16 v28, v28, s[28:31], 0 offen
	buffer_load_u16 v27, v27, s[28:31], 0 offen
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v151, v151, s[28:31], 0 offen
	buffer_load_u16 v150, v150, s[28:31], 0 offen
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s26, s27, 6
	s_cmp_lg_u32 s49, s35
	s_mov_b32 s49, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v16, v16, v18 :: v_dual_lshlrev_b32 v17, 16, v17
	v_mul_f32_e32 v149, v149, v17
	v_mul_f32_e32 v148, v148, v17
	v_mul_f32_e32 v147, v147, v17
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v146, v146, v17 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v12, v12, v18 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v145, v145, v17 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v143, v143, v17 :: v_dual_lshlrev_b32 v24, 16, v24
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v65, v65, v17 :: v_dual_lshlrev_b32 v26, 16, v26
	v_dual_mul_f32 v14, v14, v18 :: v_dual_lshlrev_b32 v25, 16, v25
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v63, v63, v17 :: v_dual_lshlrev_b32 v28, 16, v28
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v144, v144, v17 :: v_dual_lshlrev_b32 v27, 16, v27
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v35, v35, v17 :: v_dual_lshlrev_b32 v30, 16, v30
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v10, v10, v18 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v142, v142, v17 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v66, v66, v17 :: v_dual_lshlrev_b32 v151, 16, v151
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v99, v148, v20 :: v_dual_lshlrev_b32 v150, 16, v150
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v64, v64, v17 :: v_dual_mul_f32 v15, v15, v18
	v_dual_mul_f32 v36, v36, v17 :: v_dual_mul_f32 v11, v11, v18
	v_dual_mul_f32 v34, v34, v17 :: v_dual_mul_f32 v13, v13, v18
	v_mul_f32_e32 v17, v33, v17
	v_dual_mul_f32 v9, v9, v18 :: v_dual_fmac_f32 v98, v147, v21
	v_dual_mul_f32 v8, v8, v18 :: v_dual_fmac_f32 v95, v145, v23
	v_dual_mul_f32 v7, v7, v18 :: v_dual_fmac_f32 v96, v149, v19
	v_dual_mul_f32 v4, v4, v18 :: v_dual_fmac_f32 v93, v143, v25
	v_dual_mul_f32 v3, v3, v18 :: v_dual_fmac_f32 v94, v144, v24
	v_dual_mul_f32 v6, v6, v18 :: v_dual_fmac_f32 v89, v64, v29
	v_dual_mul_f32 v5, v5, v18 :: v_dual_fmac_f32 v86, v35, v32
	v_dual_mul_f32 v2, v2, v18 :: v_dual_fmac_f32 v87, v36, v31
	v_dual_mul_f32 v1, v1, v18 :: v_dual_fmac_f32 v82, v15, v19
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v97, v146, v22 :: v_dual_fmac_f32 v90, v65, v28
	v_dual_fmac_f32 v92, v142, v26 :: v_dual_fmac_f32 v83, v16, v20
	v_dual_fmac_f32 v91, v66, v27 :: v_dual_fmac_f32 v88, v63, v30
	v_dual_fmac_f32 v85, v34, v150 :: v_dual_fmac_f32 v84, v17, v151
	v_dual_fmac_f32 v80, v11, v21 :: v_dual_fmac_f32 v81, v12, v22
	v_dual_fmac_f32 v78, v13, v23 :: v_dual_fmac_f32 v79, v14, v24
	v_dual_fmac_f32 v76, v9, v25 :: v_dual_fmac_f32 v77, v10, v26
	v_dual_fmac_f32 v73, v7, v27 :: v_dual_fmac_f32 v74, v8, v28
	v_dual_fmac_f32 v72, v3, v29 :: v_dual_fmac_f32 v75, v4, v30
	v_dual_fmac_f32 v70, v5, v31 :: v_dual_fmac_f32 v71, v6, v32
	v_fmac_f32_e32 v44, v1, v150
	v_fmac_f32_e32 v38, v2, v151
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
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s20
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_add_i32 s50, s26, s39
	s_mov_b32 s51, s3
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
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1436 46 is_stmt 1             ; ragged.py:1436:46
	s_add_i32 s26, s50, s51
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s27, s26, s22
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_mul_i32 s26, s26, s23
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s27, s27, s38
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s26, s26, s33
	v_add_nc_u32_e32 v33, s27, v37
	v_add_nc_u32_e32 v34, s27, v116
	v_add_nc_u32_e32 v149, s27, v45
	v_add_nc_u32_e32 v35, s27, v117
	v_add_nc_u32_e32 v150, s27, v46
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	v_add_nc_u32_e32 v36, s27, v39
	v_add_nc_u32_e32 v151, s27, v47
	v_add_nc_u32_e32 v63, s27, v118
	v_add_nc_u32_e32 v152, s27, v48
	buffer_load_u8 v143, v33, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v34, s0
	v_cndmask_b32_e64 v34, 0x80000000, v149, s0
	v_add_nc_u32_e32 v64, s27, v40
	v_add_nc_u32_e32 v153, s27, v49
	v_add_nc_u32_e32 v65, s27, v41
	s_clause 0x1
	buffer_load_u8 v144, v33, s[40:43], 0 offen
	buffer_load_u8 v34, v34, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v35, s0
	v_cndmask_b32_e64 v35, 0x80000000, v150, s0
	v_add_nc_u32_e32 v154, s27, v50
	v_add_nc_u32_e32 v66, s27, v42
	v_add_nc_u32_e32 v155, s27, v51
	s_clause 0x1
	buffer_load_u8 v145, v33, s[40:43], 0 offen
	buffer_load_u8 v35, v35, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v36, s0
	v_cndmask_b32_e64 v36, 0x80000000, v151, s0
	v_add_nc_u32_e32 v142, s27, v119
	v_add_nc_u32_e32 v149, s26, v120
	v_add_nc_u32_e32 v150, s26, v121
	s_clause 0x1
	buffer_load_u8 v146, v33, s[40:43], 0 offen
	buffer_load_u8 v36, v36, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v63, s0
	v_cndmask_b32_e64 v63, 0x80000000, v152, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v149, 0x80000000, v149, s19
	v_add_nc_u32_e32 v151, s26, v52
	v_add_nc_u32_e32 v152, s26, v122
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x1
	buffer_load_u8 v147, v33, s[40:43], 0 offen
	buffer_load_u8 v63, v63, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v64, s0
	v_cndmask_b32_e64 v64, 0x80000000, v153, s0
	v_add_nc_u32_e32 v153, s26, v53
	v_add_nc_u32_e32 v158, s26, v123
	v_add_nc_u32_e32 v159, s26, v56
	s_clause 0x1
	buffer_load_u8 v148, v33, s[40:43], 0 offen
	buffer_load_u8 v64, v64, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v65, s0
	v_cndmask_b32_e64 v65, 0x80000000, v154, s0
	v_add_nc_u32_e32 v154, s26, v54
	v_add_nc_u32_e32 v160, s26, v57
	v_add_nc_u32_e32 v161, s26, v58
	s_clause 0x1
	buffer_load_u8 v156, v33, s[40:43], 0 offen
	buffer_load_u8 v65, v65, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v66, s0
	v_cndmask_b32_e64 v66, 0x80000000, v155, s0
	v_add_nc_u32_e32 v155, s26, v55
	v_add_nc_u32_e32 v162, s26, v59
	v_add_nc_u32_e32 v163, s26, v60
	s_clause 0x1
	buffer_load_u8 v157, v33, s[40:43], 0 offen
	buffer_load_u8 v66, v66, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v142, s0
	v_add_nc_u32_e32 v142, s26, v43
	v_add_nc_u32_e32 v164, s26, v61
	v_add_nc_u32_e32 v165, s26, v62
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	v_cndmask_b32_e64 v142, 0x80000000, v142, s19
	buffer_load_u8 v166, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v150, s19
	.loc	1 1436 38                       ; ragged.py:1436:38
	buffer_load_u8 v33, v33, s[40:43], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0x1
	buffer_load_u8 v142, v142, s[24:27], 0 offen
	buffer_load_u8 v167, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v151, s19
	buffer_load_u8 v168, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v152, s19
	buffer_load_u8 v169, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v153, s19
	buffer_load_u8 v170, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v154, s19
	buffer_load_u8 v154, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v155, s19
	buffer_load_u8 v155, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v158, s19
	buffer_load_u8 v158, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v159, s19
	buffer_load_u8 v159, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v160, s19
	buffer_load_u8 v160, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v161, s19
	buffer_load_u8 v161, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v162, s19
	buffer_load_u8 v162, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v163, s19
	buffer_load_u8 v163, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v164, s19
	buffer_load_u8 v164, v149, s[24:27], 0 offen
	v_cndmask_b32_e64 v149, 0x80000000, v165, s19
	buffer_load_u8 v165, v149, s[24:27], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s26, s51, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s51, 32
	s_mov_b32 s51, s26
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v33.h, 8, v157.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v147.h, v156.l, v33.h
	v_lshlrev_b16 v33.h, 8, v148.l
	v_or_b16 v147.l, v147.l, v33.h
	v_lshlrev_b16 v33.h, 8, v146.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v146.h, v145.l, v33.h
	v_lshlrev_b16 v33.h, 8, v144.l
	v_add_nc_u32_e32 v145, 0, v124
	v_or_b16 v146.l, v143.l, v33.h
	v_lshlrev_b16 v33.h, 8, v66.l
	ds_store_b64 v145, v[146:147]
	v_or_b16 v64.h, v65.l, v33.h
	v_lshlrev_b16 v33.h, 8, v64.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v64.l, v63.l, v33.h
	v_lshlrev_b16 v33.h, 8, v36.l
	v_or_b16 v63.h, v35.l, v33.h
	v_lshlrev_b16 v33.h, 8, v34.l
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v142.h, 8, v155.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_or_b16 v63.l, v33.l, v33.h
	v_add_nc_u32_e32 v33, 0, v125
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v144.h, v154.l, v142.h
	v_lshlrev_b16 v142.h, 8, v170.l
	.loc	1 1436 38                       ; ragged.py:1436:38
	ds_store_b64 v129, v[63:64]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v33 offset1:2
	ds_load_b64 v[146:147], v130
	ds_load_b64 v[148:149], v131
	ds_load_b64 v[150:151], v132
	ds_load_b64 v[152:153], v133
	ds_load_b64 v[65:66], v134
	ds_load_b64 v[63:64], v135
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v144.l, v169.l, v142.h
	v_lshlrev_b16 v142.h, 8, v168.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v143.h, v167.l, v142.h
	v_lshlrev_b16 v142.h, 8, v166.l
	v_or_b16 v143.l, v142.l, v142.h
	ds_store_b64 v145, v[143:144]
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v142.l, 8, v165.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v143.h, v164.l, v142.l
	v_lshlrev_b16 v142.l, 8, v163.l
	v_or_b16 v143.l, v162.l, v142.l
	v_lshlrev_b16 v142.l, 8, v161.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v142.h, v160.l, v142.l
	v_lshlrev_b16 v142.l, 8, v159.l
	v_or_b16 v142.l, v158.l, v142.l
	ds_store_b64 v129, v[142:143]
	v_add_nc_u32_e32 v142, 0, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[142:145], v142 offset1:2
	ds_load_b64 v[154:155], v136
	ds_load_b64 v[156:157], v137
	ds_load_b64 v[158:159], v138
	ds_load_b64 v[160:161], v139
	ds_load_b64 v[162:163], v140
	ds_load_b64 v[164:165], v141
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[142:143], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[142:143], v[152:153], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[152:153], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[154:155], v[146:147], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[146:147], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[162:163], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[156:157], v[148:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[156:157], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[148:149], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[144:145], v[35:36], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[150:151], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[150:151], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[63:64], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v149, v1
	v_cvt_f32_i32_e32 v148, v2
	v_cvt_f32_i32_e32 v147, v3
	v_cvt_f32_i32_e32 v146, v4
	v_cvt_f32_i32_e32 v145, v5
	v_cvt_f32_i32_e32 v144, v6
	v_cvt_f32_i32_e32 v143, v7
	v_cvt_f32_i32_e32 v142, v8
	v_cvt_f32_i32_e32 v66, v9
	v_cvt_f32_i32_e32 v65, v10
	v_cvt_f32_i32_e32 v64, v11
	v_cvt_f32_i32_e32 v63, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
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
.LBB0_10:                               ; %._crit_edge96
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v5, 39, v67
	v_or_b32_e32 v9, 35, v67
	v_or_b32_e32 v10, 34, v67
	v_or_b32_e32 v6, 38, v67
	v_or_b32_e32 v13, 7, v67
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v5
	v_or_b32_e32 v11, s33, v9
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v7, 37, v67
	v_or_b32_e32 v8, 36, v67
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s23, v11
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v11, 33, v67
	v_or_b32_e32 v15, 5, v67
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s33, v7
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s23, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v13
	v_or_b32_e32 v4, s33, v8
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v12, 32, v67
	v_or_b32_e32 v14, 6, v67
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s23, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v16, 4, v67
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v15
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v18, 2, v67
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s23, v3
	v_cmp_gt_i32_e64 s4, s23, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s33, v12
	v_or_b32_e32 v4, s33, v14
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v17, 3, v67
	v_or_b32_e32 v19, 1, v67
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s23, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v18
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s23, v3
	v_cmp_gt_i32_e64 s10, s23, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s33, v17
	v_or_b32_e32 v4, s33, v19
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v67
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s23, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s34, s23
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v1, v96, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s3, s33
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s23, v3
	v_cmp_gt_i32_e64 s15, s23, v4
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s23, v69, s[18:19]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s23, v2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v4, v96, v1, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s23, v68, s[18:19]
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v96, v96
	v_bfe_u32 v2, v99, 16, 1
	v_bfe_u32 v21, v98, 16, 1
	v_bfe_u32 v22, v97, 16, 1
	v_cmp_o_f32_e64 s17, v98, v98
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_add3_u32 v2, v99, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v99, v99
	v_add3_u32 v21, v98, v21, 0x7fff
	v_add3_u32 v22, v97, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v97, v97
	v_bfe_u32 v23, v94, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v95, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s17
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s18
	v_bfe_u32 v22, v93, 16, 1
	v_cmp_o_f32_e64 s3, v95, v95
	v_add3_u32 v2, v95, v2, 0x7fff
	v_add3_u32 v23, v94, v23, 0x7fff
	v_cmp_o_f32_e64 s17, v94, v94
	v_bfe_u32 v24, v92, 16, 1
	v_add3_u32 v22, v93, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v93, v93
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v23.h, s17
	v_bfe_u32 v23, v91, 16, 1
	v_bfe_u32 v25, v90, 16, 1
	v_add3_u32 v24, v92, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v92, v92
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s18
	v_add3_u32 v23, v91, v23, 0x7fff
	v_cmp_o_f32_e64 s17, v91, v91
	v_add3_u32 v25, v90, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v90, v90
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s3
	v_bfe_u32 v24, v89, 16, 1
	v_bfe_u32 v26, v88, 16, 1
	v_mov_b16_e32 v20.h, 0
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s17
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s18
	v_bfe_u32 v25, v87, 16, 1
	v_add3_u32 v24, v89, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v89, v89
	v_add3_u32 v26, v88, v26, 0x7fff
	v_cmp_o_f32_e64 s17, v88, v88
	v_bfe_u32 v27, v86, 16, 1
	v_bfe_u32 v28, v85, 16, 1
	v_add3_u32 v25, v87, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v87, v87
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s3
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s17
	v_add3_u32 v26, v86, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v86, v86
	v_add3_u32 v27, v85, v28, 0x7fff
	v_mov_b16_e32 v28.l, v82.h
	v_mov_b16_e32 v28.h, v20.h
	v_mov_b16_e32 v20.l, v83.h
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s18
	v_bfe_u32 v29, v84, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s3
	v_and_b32_e32 v26, 1, v28
	v_and_b32_e32 v28, 1, v20
	v_mov_b16_e32 v20.l, v81.h
	v_cmp_o_f32_e64 s17, v85, v85
	v_add3_u32 v29, v84, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v84, v84
	v_add3_u32 v26, v82, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v82, v82
	v_mov_b16_e32 v30.l, v80.h
	v_mov_b16_e32 v30.h, v20.h
	v_and_b32_e32 v31, 1, v20
	v_add3_u32 v28, v83, v28, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s17
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s3
	v_cndmask_b16 v28.l, 0x7fff, v26.h, s18
	v_and_b32_e32 v26, 1, v30
	v_add3_u32 v29, v81, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v81, v81
	v_mov_b16_e32 v20.l, v79.h
	v_mov_b16_e32 v30.l, v78.h
	v_add3_u32 v26, v80, v26, 0x7fff
	v_mov_b16_e32 v32.l, v76.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s3
	v_cmp_o_f32_e64 s3, v80, v80
	v_and_b32_e32 v31, 1, v20
	v_and_b32_e32 v30, 1, v30
	v_mov_b16_e32 v32.h, v20.h
	v_mov_b16_e32 v20.l, v77.h
	v_cndmask_b16 v29.l, 0x7fff, v26.h, s3
	v_cmp_o_f32_e64 s3, v78, v78
	v_add3_u32 v30, v78, v30, 0x7fff
	v_and_b32_e32 v26, 1, v32
	v_and_b32_e32 v32, 1, v20
	v_mov_b16_e32 v20.l, v74.h
	v_add3_u32 v31, v79, v31, 0x7fff
	v_cmp_o_f32_e64 s17, v83, v83
	v_add3_u32 v26, v76, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v76, v76
	v_mov_b16_e32 v33.l, v73.h
	v_mov_b16_e32 v33.h, v20.h
	v_cndmask_b16 v31.l, 0x7fff, v30.h, s3
	v_and_b32_e32 v30, 1, v20
	v_mov_b16_e32 v20.l, v75.h
	v_add3_u32 v32, v77, v32, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s17
	v_cmp_o_f32_e64 s17, v79, v79
	v_cndmask_b16 v32.l, 0x7fff, v26.h, s18
	v_and_b32_e32 v26, 1, v33
	v_add3_u32 v30, v74, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v74, v74
	v_mov_b16_e32 v33.l, v72.h
	v_and_b32_e32 v34, 1, v20
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s17
	v_cmp_o_f32_e64 s17, v77, v77
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v34, v75, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v75, v75
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s17
	v_add3_u32 v26, v73, v26, 0x7fff
	v_cmp_o_f32_e64 s17, v73, v73
	v_add3_u32 v33, v72, v33, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_mov_b16_e32 v20.l, v71.h
	v_cmp_o_f32_e64 s3, v72, v72
	v_mov_b16_e32 v35.l, v44.h
	v_mov_b16_e32 v35.h, v20.h
	v_cndmask_b16 v30.l, 0x7fff, v26.h, s17
	v_mov_b16_e32 v26.l, v70.h
	v_mov_b16_e32 v26.h, v20.h
	v_and_b32_e32 v36, 1, v20
	v_mov_b16_e32 v20.l, v38.h
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s3
	v_and_b32_e32 v33, 1, v35
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v35, v71, v36, 0x7fff
	v_and_b32_e32 v36, 1, v20
	v_cmp_o_f32_e64 s3, v71, v71
	v_add3_u32 v33, v44, v33, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v44, v44
	v_add3_u32 v26, v70, v26, 0x7fff
	v_cmp_o_f32_e64 s17, v70, v70
	v_add3_u32 v36, v38, v36, 0x7fff
	v_cmp_o_f32_e64 s18, v38, v38
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
	v_add_lshl_u32 v49, v3, v67, 1
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
	s_and_b32 s3, s21, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v51, v3, v18, 1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s15
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
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v34, v49, s[36:39], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v51, s3
	v_add_lshl_u32 v34, v3, v17, 1
	buffer_store_b16 v32, v50, s[36:39], 0 offen
	v_add_lshl_u32 v32, v3, v16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v20.l, v2.h
	buffer_store_b16 v2, v49, s[36:39], 0 offen
	v_add_lshl_u32 v2, v3, v15, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v31, v0, v35, v31
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s11
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
	buffer_store_b16 v20, v34, s[36:39], 0 offen
	v_add_lshl_u32 v20, v3, v14, 1
	buffer_store_b16 v26, v32, s[36:39], 0 offen
	v_add_lshl_u32 v26, v3, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v35, v2, s[36:39], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v33.l, v4.h
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v4, v20, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v20, v3, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v33, v26, s[36:39], 0 offen
	buffer_store_b16 v21, v2, s[36:39], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v38.l, v21.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v37.l, v22.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v38, v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v22, v20, s[36:39], 0 offen
	v_add_lshl_u32 v20, v3, v7, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v37, v2, s[36:39], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v40.l, v23.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_store_b16 v23, v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, v1, v67, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v40, v20, s[36:39], 0 offen
	buffer_store_b16 v24, v2, s[36:39], 0 offen
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
	buffer_store_b16 v39, v3, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v18, 1
	buffer_store_b16 v25, v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, v1, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v42, v2, s[36:39], 0 offen
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
	buffer_store_b16 v27, v3, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v15, 1
	buffer_store_b16 v41, v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v28, v2, s[36:39], 0 offen
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
	buffer_store_b16 v44, v3, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v29, v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v43, v2, s[36:39], 0 offen
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
	buffer_store_b16 v36, v3, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v46, v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v30, v2, s[36:39], 0 offen
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
	buffer_store_b16 v45, v3, s[36:39], 0 offen
	buffer_store_b16 v31, v4, s[36:39], 0 offen
	buffer_store_b16 v48, v2, s[36:39], 0 offen
	buffer_store_b16 v0, v5, s[36:39], 0 offen
	buffer_store_b16 v47, v1, s[36:39], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 171
		.amdhsa_next_free_sgpr 52
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
		.amdhsa_inst_pref_size 61
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 171
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7720
; TotalNumSgprs: 54
; NumVgprs: 171
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 171
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     171
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
