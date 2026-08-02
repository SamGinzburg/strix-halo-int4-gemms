	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 25
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
	s_ashr_i32 s4, s4, 7
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
	s_mul_i32 s21, s22, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v48, v1, 48, v2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v47, 64, v48
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
	s_lshl_b32 s46, s4, 7
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s5, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s46, v48
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s23, s[6:7], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s46, v47
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s20, s34, v2
	v_cmp_gt_i32_e64 s2, s34, v3
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s19, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s19, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge53_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s47, s46, s21
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s6, -1
                                        ; implicit-def: $sgpr47
.LBB0_3:                                ; %Flow303
	s_load_b64 s[44:45], s[0:1], 0x28
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v2, 16, v0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s4, 0, v2
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v90, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s33, s5, 6
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph52
	v_bfe_i32 v8, v0, 3, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v4, 4, v2
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v2, 0x7f, v0
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v3, 32, v0
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_bfe_i32 v10, v0, 6, 1
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v8, 0x88, v8
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v6, s46, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v5, 1, v3
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v10, 0x108, v10
	v_and_or_b32 v12, 0x70, v9, v8
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v6
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v6, 0x80, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s26, s19, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v75, v4, v5, s33
	v_or_b32_e32 v5, s33, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s26, s19, s26
	v_xor_b32_e32 v10, v12, v10
	s_ashr_i32 s56, s26, 1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v7, 4, v6
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s26, s23, 31
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s57, s3, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s3, s23, s26
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v5
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s58, s3, 1
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s22, s35
	v_lshl_or_b32 v109, v6, 2, v10
	v_mad_u64_u32 v[34:35], null, s34, v7, v[2:3]
	s_add_i32 s64, s33, s3
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v33, 12, v5
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v11, s64, v1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v94, 7, v0
	v_lshl_or_b32 v110, v3, 3, v12
	v_xor_b32_e32 v3, 8, v109
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_bfe_i32 v4, v0, 5, 1
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[36:37], null, v11, s24, v[33:34]
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s59, s22, s24
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s60, s22, s25
	s_lshl_b32 s22, s34, 1
	s_lshl_b32 s26, s34, 2
	s_and_b32 s49, s37, 0xffff
	s_and_b32 s37, s39, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[37:38], null, s34, v94, v[2:3]
	s_bitcmp1_b32 s23, 0
	v_cndmask_b32_e64 v11, 0x108, 0, s4
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v9, 0x670, v9
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v5, 0x37c, v5
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v4, 0x88, v4
	s_cselect_b32 s62, -1, 0
	s_add_i32 s47, s46, s21
	v_mad_u64_u32 v[39:40], null, s24, v1, v[33:34]
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v1, s47, v48
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v2, s47, v47
	v_mad_u64_u32 v[40:41], null, s34, 3, v[34:35]
	v_mad_u64_u32 v[41:42], null, s34, 5, v[34:35]
	v_mad_u64_u32 v[42:43], null, s34, 7, v[34:35]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v77, 2, v75
	v_or_b32_e32 v78, 4, v75
	v_or_b32_e32 v79, 6, v75
	v_or_b32_e32 v80, 8, v75
	v_or_b32_e32 v81, 10, v75
	v_or_b32_e32 v82, 12, v75
	v_or_b32_e32 v84, 14, v75
	v_or_b32_e32 v85, 32, v75
	v_or_b32_e32 v86, 34, v75
	v_or_b32_e32 v87, 36, v75
	v_or_b32_e32 v88, 38, v75
	v_or_b32_e32 v89, 40, v75
	v_or_b32_e32 v91, 42, v75
	v_or_b32_e32 v92, 44, v75
	v_or_b32_e32 v93, 46, v75
	v_xor3_b32 v7, v11, v7, v8
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v6, 0, v9
	v_xor_b32_e32 v111, v4, v5
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v5, 0x700, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[43:44], null, s34, 10, v[37:38]
	v_mad_u64_u32 v[44:45], null, s34, 12, v[37:38]
	v_mul_lo_u32 v120, v1, s25
	v_mul_lo_u32 v121, v2, s25
	v_mad_u64_u32 v[45:46], null, s34, 14, v[37:38]
	s_mul_i32 s27, s34, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v75
	v_cmp_gt_i32_e64 s5, s35, v77
	v_cmp_gt_i32_e64 s6, s35, v78
	v_cmp_gt_i32_e64 s7, s35, v79
	v_cmp_gt_i32_e64 s8, s35, v80
	v_cmp_gt_i32_e64 s9, s35, v81
	v_cmp_gt_i32_e64 s10, s35, v82
	v_cmp_gt_i32_e64 s11, s35, v84
	v_cmp_gt_i32_e64 s12, s35, v85
	v_cmp_gt_i32_e64 s13, s35, v86
	v_cmp_gt_i32_e64 s14, s35, v87
	v_cmp_gt_i32_e64 s15, s35, v88
	v_cmp_gt_i32_e64 s16, s35, v89
	v_cmp_gt_i32_e64 s17, s35, v91
	v_cmp_gt_i32_e64 s18, s35, v92
	v_cmp_gt_i32_e64 s19, s35, v93
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v95, 1, v33
	v_or_b32_e32 v96, 2, v33
	v_or_b32_e32 v97, 3, v33
	v_or_b32_e32 v98, 2, v94
	v_or_b32_e32 v99, 4, v94
	v_or_b32_e32 v100, 6, v94
	v_or_b32_e32 v101, 8, v94
	v_or_b32_e32 v102, 10, v94
	v_or_b32_e32 v103, 12, v94
	v_or_b32_e32 v104, 14, v94
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v105, s34, v34
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v106, s22, v34
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v107, s26, v34
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v108, s27, v34
	v_xor_b32_e32 v112, 8, v110
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v113, s22, v37
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v114, s26, v37
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v115, s27, v37
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_lshl_add_u32 v116, s34, 3, v37
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v117, 1, v39
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v118, 2, v39
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v119, 3, v39
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v122, v6, v7
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v123, 0, v3
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v124, 0, v0
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v125, 0, v4
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v126, 0, v5
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	s_add_i32 s63, s56, -1
	s_mov_b32 s48, s36
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mov_b32 s36, s38
	s_mov_b32 s61, 0
	s_mul_i32 s64, s64, s24
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	s_lshr_b32 s65, s63, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v127, v120, s61, 1
	v_add_lshl_u32 v128, v121, s61, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s61, s60
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s42, s50
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v127, 0x80000000, v127, s20
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v129, v75, s3, 1
	v_add_lshl_u32 v138, v86, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v130, v77, s3, 1
	v_add_lshl_u32 v137, v85, s3, 1
	v_add_lshl_u32 v131, v78, s3, 1
	v_add_lshl_u32 v140, v88, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s43, s51
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v132, v79, s3, 1
	v_add_lshl_u32 v139, v87, s3, 1
	v_add_lshl_u32 v133, v80, s3, 1
	v_add_lshl_u32 v134, v81, s3, 1
	v_add_lshl_u32 v135, v82, s3, 1
	v_add_lshl_u32 v136, v84, s3, 1
	v_add_lshl_u32 v141, v89, s3, 1
	v_add_lshl_u32 v142, v91, s3, 1
	v_add_lshl_u32 v143, v92, s3, 1
	v_add_lshl_u32 v144, v93, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v127, v127, s[40:43], 0 offen
	buffer_load_u16 v128, v128, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v129, 0x80000000, v129, s1
	v_cndmask_b32_e64 v138, 0x80000000, v138, s13
	v_cndmask_b32_e64 v130, 0x80000000, v130, s5
	v_cndmask_b32_e64 v137, 0x80000000, v137, s12
	v_cndmask_b32_e64 v131, 0x80000000, v131, s6
	v_cndmask_b32_e64 v140, 0x80000000, v140, s15
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v132, 0x80000000, v132, s7
	v_cndmask_b32_e64 v139, 0x80000000, v139, s14
	v_cndmask_b32_e64 v133, 0x80000000, v133, s8
	v_cndmask_b32_e64 v134, 0x80000000, v134, s9
	v_cndmask_b32_e64 v135, 0x80000000, v135, s10
	v_cndmask_b32_e64 v136, 0x80000000, v136, s11
	v_cndmask_b32_e64 v141, 0x80000000, v141, s16
	v_cndmask_b32_e64 v142, 0x80000000, v142, s17
	v_cndmask_b32_e64 v143, 0x80000000, v143, s18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s19
	s_clause 0xf
	buffer_load_u16 v129, v129, s[52:55], 0 offen
	buffer_load_u16 v130, v130, s[52:55], 0 offen
	buffer_load_u16 v131, v131, s[52:55], 0 offen
	buffer_load_u16 v132, v132, s[52:55], 0 offen
	buffer_load_u16 v133, v133, s[52:55], 0 offen
	buffer_load_u16 v134, v134, s[52:55], 0 offen
	buffer_load_u16 v135, v135, s[52:55], 0 offen
	buffer_load_u16 v136, v136, s[52:55], 0 offen
	buffer_load_u16 v138, v138, s[52:55], 0 offen
	buffer_load_u16 v137, v137, s[52:55], 0 offen
	buffer_load_u16 v140, v140, s[52:55], 0 offen
	buffer_load_u16 v139, v139, s[52:55], 0 offen
	buffer_load_u16 v142, v142, s[52:55], 0 offen
	buffer_load_u16 v141, v141, s[52:55], 0 offen
	buffer_load_u16 v144, v144, s[52:55], 0 offen
	buffer_load_u16 v143, v143, s[52:55], 0 offen
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
	s_add_i32 s21, s61, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s21, 4
	s_cmp_lg_u32 s61, s65
	s_mov_b32 s61, s21
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v10, v128, v10 :: v_dual_lshlrev_b32 v127, 16, v127
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v25, v25, v127
	v_mul_f32_e32 v26, v26, v127
	v_mul_f32_e32 v27, v27, v127
	v_mul_f32_e32 v28, v28, v127
	v_mul_f32_e32 v29, v29, v127
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v30, v30, v127 :: v_dual_lshlrev_b32 v129, 16, v129
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v12, v128, v12 :: v_dual_lshlrev_b32 v131, 16, v131
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v31, v31, v127 :: v_dual_lshlrev_b32 v134, 16, v134
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v17, v17, v127 :: v_dual_lshlrev_b32 v136, 16, v136
	v_dual_mul_f32 v14, v128, v14 :: v_dual_lshlrev_b32 v135, 16, v135
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v19, v19, v127 :: v_dual_lshlrev_b32 v138, 16, v138
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v21, v21, v127 :: v_dual_lshlrev_b32 v140, 16, v140
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v16, v128, v16 :: v_dual_lshlrev_b32 v139, 16, v139
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v23, v23, v127 :: v_dual_lshlrev_b32 v142, 16, v142
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v32, v32, v127 :: v_dual_lshlrev_b32 v141, 16, v141
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v9, v128, v9 :: v_dual_lshlrev_b32 v144, 16, v144
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v128, v2 :: v_dual_lshlrev_b32 v143, 16, v143
	v_dual_mul_f32 v18, v18, v127 :: v_dual_mul_f32 v13, v128, v13
	v_dual_mul_f32 v20, v20, v127 :: v_dual_fmac_f32 v83, v25, v129
	v_dual_mul_f32 v22, v22, v127 :: v_dual_mul_f32 v1, v128, v1
	v_dual_mul_f32 v24, v24, v127 :: v_dual_fmac_f32 v73, v29, v133
	v_dual_mul_f32 v11, v128, v11 :: v_dual_fmac_f32 v90, v26, v130
	v_dual_mul_f32 v15, v128, v15 :: v_dual_fmac_f32 v72, v30, v134
	v_dual_mul_f32 v4, v128, v4 :: v_dual_fmac_f32 v71, v31, v135
	v_dual_mul_f32 v3, v128, v3 :: v_dual_fmac_f32 v68, v18, v138
	v_dual_mul_f32 v6, v128, v6 :: v_dual_fmac_f32 v69, v17, v137
	v_dual_mul_f32 v5, v128, v5 :: v_dual_fmac_f32 v76, v27, v131
	v_dual_mul_f32 v8, v128, v8 :: v_dual_fmac_f32 v67, v19, v139
	v_dual_mul_f32 v7, v128, v7 :: v_dual_fmac_f32 v64, v22, v142
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v74, v28, v132 :: v_dual_fmac_f32 v65, v21, v141
	v_dual_fmac_f32 v70, v32, v136 :: v_dual_fmac_f32 v63, v23, v143
	v_dual_fmac_f32 v66, v20, v140 :: v_dual_fmac_f32 v61, v10, v130
	v_dual_fmac_f32 v62, v24, v144 :: v_dual_fmac_f32 v57, v14, v134
	v_dual_fmac_f32 v60, v9, v129 :: v_dual_fmac_f32 v59, v12, v132
	v_dual_fmac_f32 v58, v11, v131 :: v_dual_fmac_f32 v55, v16, v136
	v_dual_fmac_f32 v56, v13, v133 :: v_dual_fmac_f32 v53, v2, v138
	v_dual_fmac_f32 v54, v15, v135 :: v_dual_fmac_f32 v49, v5, v141
	v_dual_fmac_f32 v52, v1, v137 :: v_dual_fmac_f32 v51, v3, v139
	v_fmac_f32_e32 v46, v4, v140
	v_dual_fmac_f32 v50, v6, v142 :: v_dual_fmac_f32 v35, v8, v144
	v_fmac_f32_e32 v38, v7, v143
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s21, s58, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s21, 0, 16
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s21, v1
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
	s_and_b32 s22, s21, 16
	s_mov_b32 s21, s57
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s57, s22
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s21, s57
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
	s_add_i32 s23, s21, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s38, s50
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s24, s23, s59
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v127, s23, v36
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s23, s24, s34
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s39, s51
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s23, s23, s46
	.loc	1 1471 38 is_stmt 0             ; ragged.py:1471:38
	v_add_nc_u32_e32 v139, 0, v109
	v_add_nc_u32_e32 v134, s23, v42
	v_add_nc_u32_e32 v130, s23, v106
	v_add_nc_u32_e32 v133, s23, v41
	v_add_nc_u32_e32 v131, s23, v40
	v_add_nc_u32_e32 v128, s23, v34
	v_add_nc_u32_e32 v129, s23, v105
	v_add_nc_u32_e32 v132, s23, v107
	v_add_nc_u32_e32 v135, s23, v108
	v_dual_cndmask_b32 v134, 0x80000000, v134 :: v_dual_cndmask_b32 v131, 0x80000000, v131
	v_dual_cndmask_b32 v130, 0x80000000, v130 :: v_dual_cndmask_b32 v133, 0x80000000, v133
	v_dual_cndmask_b32 v128, 0x80000000, v128 :: v_dual_cndmask_b32 v129, 0x80000000, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v132, 0x80000000, v132 :: v_dual_cndmask_b32 v135, 0x80000000, v135
	s_clause 0x7
	buffer_load_u8 v134, v134, s[48:51], 0 offen
	buffer_load_u8 v133, v133, s[48:51], 0 offen
	buffer_load_u8 v131, v131, s[48:51], 0 offen
	buffer_load_u8 v129, v129, s[48:51], 0 offen
	buffer_load_u8 v135, v135, s[48:51], 0 offen
	buffer_load_u8 v132, v132, s[48:51], 0 offen
	buffer_load_u8 v136, v130, s[48:51], 0 offen
	buffer_load_u8 v137, v128, s[48:51], 0 offen
	.loc	1 1472 38 is_stmt 1             ; ragged.py:1472:38
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_add_nc_u32_e32 v140, 0, v111
	v_add_nc_u32_e32 v141, 0, v110
	v_add_nc_u32_e32 v142, 0, v112
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s21, s21, 16
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_b32 v138, v127, s[36:39], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s21, s22
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v127.l, 8, v134.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v127.h, 8, v133.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v128.l, 8, v131.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v128.h, 8, v129.l
	s_waitcnt vmcnt(4)
	v_or_b16 v130.h, v135.l, v127.l
	s_waitcnt vmcnt(3)
	v_or_b16 v130.l, v132.l, v127.h
	s_waitcnt vmcnt(2)
	v_or_b16 v129.h, v136.l, v128.l
	s_waitcnt vmcnt(1)
	v_or_b16 v129.l, v137.l, v128.h
	ds_store_b64 v122, v[129:130]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[127:130], v139 offset1:2
	ds_load_2addr_stride64_b64 v[131:134], v123 offset1:2
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v140, v138
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[135:138], v141 offset1:1
	ds_load_2addr_stride64_b64 v[139:142], v142 offset1:1
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[127:128], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[129:130], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[141:142], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[133:134], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s22, s56, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s31, s22, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s21, s31
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s38, s21, s3
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v151, 0, v48
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v131, s38, v94
	v_or_b32_e32 v132, s38, v98
	v_or_b32_e32 v134, s38, v100
	v_or_b32_e32 v127, s38, v33
	v_or_b32_e32 v128, s38, v95
	v_or_b32_e32 v129, s38, v96
	v_or_b32_e32 v130, s38, v97
	v_or_b32_e32 v133, s38, v99
	v_or_b32_e32 v135, s38, v101
	v_or_b32_e32 v136, s38, v102
	v_or_b32_e32 v137, s38, v103
	v_or_b32_e32 v138, s38, v104
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v139, s3, v131
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s30, s38, s59
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v140, s3, v132
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s39, s30, s34
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v142, s3, v134
	v_subrev_nc_u32_e32 v141, s3, v133
	v_subrev_nc_u32_e32 v143, s3, v135
	v_subrev_nc_u32_e32 v144, s3, v136
	v_subrev_nc_u32_e32 v145, s3, v137
	v_subrev_nc_u32_e32 v146, s3, v138
	v_subrev_nc_u32_e32 v147, s3, v127
	v_subrev_nc_u32_e32 v148, s3, v128
	v_subrev_nc_u32_e32 v149, s3, v129
	v_subrev_nc_u32_e32 v150, s3, v130
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s31, v139
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s39, s39, s46
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s21, s31, v140
	v_add_nc_u32_e32 v139, s39, v37
	v_cmp_gt_i32_e64 s23, s31, v142
	v_add_nc_u32_e32 v140, s39, v113
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s25, s31, v144
	v_add_nc_u32_e32 v142, s39, v115
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v139, 0x80000000, v139, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s21
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s22, s31, v141
	v_cmp_gt_i32_e64 s27, s31, v146
	v_add_nc_u32_e32 v144, s39, v43
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v140, 0x80000000, v140, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s23
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s24, s31, v143
	v_cmp_gt_i32_e64 s28, s31, v147
	v_add_nc_u32_e32 v141, s39, v114
	v_add_nc_u32_e32 v146, s39, v45
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s38, s38, s64
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v142, 0x80000000, v142, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s25
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s26, s31, v145
	v_cmp_gt_i32_e64 s29, s31, v148
	v_add_nc_u32_e32 v143, s39, v116
	v_add_nc_u32_e32 v147, s38, v39
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s21, vcc_lo, s22
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v144, 0x80000000, v144, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s27
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s30, s31, v149
	v_cmp_gt_i32_e64 s31, s31, v150
	v_add_nc_u32_e32 v145, s39, v44
	v_add_nc_u32_e32 v148, s38, v117
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v141, 0x80000000, v141, s21
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s21, vcc_lo, s24
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v146, 0x80000000, v146, s3
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s3, s0, s28
	v_add_nc_u32_e32 v149, s38, v118
	v_add_nc_u32_e32 v150, s38, v119
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v143, 0x80000000, v143, s21
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s21, vcc_lo, s26
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v147, 0x80000000, v147, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s0, s29
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v145, 0x80000000, v145, s21
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v148, 0x80000000, v148, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s0, s30
	s_and_b32 s21, s0, s31
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v149, 0x80000000, v149, s3
	v_cndmask_b32_e64 v150, 0x80000000, v150, s21
	s_mov_b32 s38, s50
	s_mov_b32 s39, s51
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	s_clause 0x7
	buffer_load_u8 v139, v139, s[48:51], 0 offen
	buffer_load_u8 v140, v140, s[48:51], 0 offen
	buffer_load_u8 v141, v141, s[48:51], 0 offen
	buffer_load_u8 v142, v142, s[48:51], 0 offen
	buffer_load_u8 v143, v143, s[48:51], 0 offen
	buffer_load_u8 v144, v144, s[48:51], 0 offen
	buffer_load_u8 v145, v145, s[48:51], 0 offen
	buffer_load_u8 v146, v146, s[48:51], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x3
	buffer_load_u8 v147, v147, s[36:39], 0 offen
	buffer_load_u8 v148, v148, s[36:39], 0 offen
	buffer_load_u8 v149, v149, s[36:39], 0 offen
	buffer_load_u8 v150, v150, s[36:39], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s63, v131
	v_cmp_eq_u32_e64 s21, s63, v132
	v_cmp_eq_u32_e64 s29, s63, v128
	v_cmp_eq_u32_e64 s31, s63, v130
	v_cmp_eq_u32_e64 s22, s63, v133
	v_cmp_eq_u32_e64 s28, s63, v127
	v_cmp_eq_u32_e64 s24, s63, v135
	v_cmp_eq_u32_e64 s25, s63, v136
	v_cmp_eq_u32_e64 s23, s63, v134
	v_cmp_eq_u32_e64 s26, s63, v137
	v_cmp_eq_u32_e64 s27, s63, v138
	v_cmp_eq_u32_e64 s30, s63, v129
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s3, s3, s62
	s_and_b32 s21, s21, s62
	s_and_b32 s29, s29, s62
	s_and_b32 s31, s31, s62
	s_and_b32 s22, s22, s62
	s_and_b32 s24, s24, s62
	s_and_b32 s25, s25, s62
	s_and_b32 s23, s23, s62
	s_and_b32 s26, s26, s62
	s_and_b32 s27, s27, s62
	s_and_b32 s28, s28, s62
	s_and_b32 s30, s30, s62
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v152, 0, v111
	v_add_nc_u32_e32 v153, 0, v110
	v_add_nc_u32_e32 v154, 0, v112
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(11)
	v_and_b16 v127.l, v139.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v127.h, v140.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v128.l, v141.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v128.h, v142.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v129.l, v143.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v129.h, v144.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v130.l, v145.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v130.h, v146.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v131.l, v147.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v131.h, v148.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v132.l, v149.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v132.h, v150.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v127.l, v139.l, v127.l, s3
	v_cndmask_b16 v127.h, v140.l, v127.h, s21
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v131.h, v148.l, v131.h, s29
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v128.l, v141.l, v128.l, s22
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v132.h, v150.l, v132.h, s31
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v129.l, v143.l, v129.l, s24
	v_cndmask_b16 v129.h, v144.l, v129.h, s25
	v_cndmask_b16 v128.h, v142.l, v128.h, s23
	v_cndmask_b16 v130.l, v145.l, v130.l, s26
	v_cndmask_b16 v130.h, v146.l, v130.h, s27
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v131.l, v147.l, v131.l, s28
	v_cndmask_b16 v132.l, v149.l, v132.l, s30
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b8 v124, v127
	ds_store_b8_d16_hi v124, v127 offset:256
	ds_store_b8 v124, v128 offset:512
	ds_store_b8 v124, v129 offset:1024
	ds_store_b8_d16_hi v124, v129 offset:1280
	ds_store_b8_d16_hi v125, v128
	ds_store_b8 v124, v130 offset:1536
	ds_store_b8_d16_hi v126, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v135, v151 offset:1920
	ds_load_u8 v136, v151 offset:1792
	ds_load_u8 v137, v151 offset:1664
	ds_load_u8 v138, v151 offset:1536
	ds_load_u8 v139, v151 offset:384
	ds_load_u8 v140, v151 offset:256
	ds_load_u8 v141, v151 offset:128
	ds_load_u8 v142, v151
	ds_load_u8 v143, v151 offset:448
	ds_load_u8 v144, v151 offset:320
	ds_load_u8 v145, v151 offset:192
	ds_load_u8 v146, v151 offset:64
	ds_load_u8 v147, v151 offset:896
	ds_load_u8 v148, v151 offset:768
	ds_load_u8 v149, v151 offset:640
	ds_load_u8 v150, v151 offset:512
	ds_load_u8 v155, v151 offset:960
	ds_load_u8 v156, v151 offset:832
	ds_load_u8 v157, v151 offset:704
	ds_load_u8 v158, v151 offset:576
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v127.l, 8, v132.h
	v_lshlrev_b16 v127.h, 8, v131.h
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v159, v151 offset:1408
	ds_load_u8 v160, v151 offset:1280
	ds_load_u8 v161, v151 offset:1152
	ds_load_u8 v162, v151 offset:1024
	ds_load_u8 v163, v151 offset:1472
	ds_load_u8 v164, v151 offset:1344
	ds_load_u8 v165, v151 offset:1216
	ds_load_u8 v166, v151 offset:1088
	ds_load_u8 v167, v151 offset:1984
	ds_load_u8 v168, v151 offset:1856
	ds_load_u8 v169, v151 offset:1728
	ds_load_u8 v151, v151 offset:1600
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	v_or_b16 v128.h, v132.l, v127.l
	v_or_b16 v128.l, v131.l, v127.h
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v139, v140, v139, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_store_b32 v152, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[127:130], v153 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v154 offset1:1
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v138, v136, v135, 0xc0c0004
	v_perm_b32 v140, v162, v161, 0xc0c0004
	v_perm_b32 v142, v160, v159, 0xc0c0004
	v_perm_b32 v148, v158, v157, 0xc0c0004
	v_perm_b32 v150, v156, v155, 0xc0c0004
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v144, v151, v169, 0xc0c0004
	v_perm_b32 v146, v168, v167, 0xc0c0004
	v_perm_b32 v151, v166, v165, 0xc0c0004
	v_perm_b32 v152, v164, v163, 0xc0c0004
	v_lshl_or_b32 v136, v147, 16, v149
	v_lshl_or_b32 v135, v139, 16, v141
	v_lshl_or_b32 v138, v138, 16, v137
	v_lshl_or_b32 v137, v142, 16, v140
	v_lshl_or_b32 v140, v150, 16, v148
	v_lshl_or_b32 v139, v143, 16, v145
	v_lshl_or_b32 v142, v146, 16, v144
	v_lshl_or_b32 v141, v152, 16, v151
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[139:140], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[139:140], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[137:138], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[137:138], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[141:142], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[141:142], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge53
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 1, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s47, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cmp_o_f32_e64 s18, v90, v90
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s22, s3, s33
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v83, v83
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_and_b32_e32 v11, 24, v0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v23, v72, 16, 1
	v_bfe_u32 v22, v73, 16, 1
	v_cmp_o_f32_e64 s21, v72, v72
	v_bfe_u32 v24, v71, 16, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 37, v11
	v_or_b32_e32 v5, 36, v11
	v_or_b32_e32 v2, 39, v11
	v_or_b32_e32 v6, 35, v11
	v_or_b32_e32 v7, 34, v11
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v10, s33, v4
	v_or_b32_e32 v12, s33, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v3, 38, v11
	v_or_b32_e32 v8, 33, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v2
	v_or_b32_e32 v13, s33, v6
	v_or_b32_e32 v14, s33, v7
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v10
	v_cmp_gt_i32_e64 s5, s35, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v10, 7, v11
	v_or_b32_e32 v12, 6, v11
	v_or_b32_e32 v9, 32, v11
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s6, s35, v13
	v_cmp_gt_i32_e64 s7, s35, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v8
	v_or_b32_e32 v14, s33, v10
	v_or_b32_e32 v15, s33, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 5, v11
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s35, v0
	v_cmp_gt_i32_e64 s10, s35, v14
	v_cmp_gt_i32_e64 s11, s35, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v13
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v14, 4, v11
	v_or_b32_e32 v15, 3, v11
	v_or_b32_e32 v16, 2, v11
	v_or_b32_e32 v17, 1, v11
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s35, v1
	v_cmp_gt_i32_e64 s12, s35, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v14
	v_or_b32_e32 v1, s33, v15
	v_or_b32_e32 v18, s33, v16
	v_or_b32_e32 v19, s33, v17
	v_or_b32_e32 v20, s33, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v0, v83, 16, 1
	v_bfe_u32 v1, v90, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s35, v18
	v_cmp_gt_i32_e64 s16, s35, v19
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[18:19], null, s35, v48, s[22:23]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v19, v83, v0, 0x7fff
	v_add3_u32 v20, v90, v1, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s35, v47, s[22:23]
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v1, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s18
	v_bfe_u32 v20, v74, 16, 1
	v_cmp_o_f32_e64 s3, v76, v76
	v_add3_u32 v1, v76, v1, 0x7fff
	v_cmp_o_f32_e64 s18, v74, v74
	v_add3_u32 v23, v72, v23, 0x7fff
	v_add3_u32 v20, v74, v20, 0x7fff
	v_add3_u32 v22, v73, v22, 0x7fff
	v_cmp_o_f32_e64 s19, v73, v73
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s3
	v_bfe_u32 v25, v68, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v20.h, s18
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s21
	v_add3_u32 v23, v71, v24, 0x7fff
	v_bfe_u32 v24, v69, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v70, 16, 1
	v_cmp_o_f32_e64 s3, v71, v71
	v_cmp_o_f32_e64 s19, v69, v69
	v_add3_u32 v24, v69, v24, 0x7fff
	v_add3_u32 v25, v68, v25, 0x7fff
	v_cmp_o_f32_e64 s21, v68, v68
	v_add3_u32 v22, v70, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v70, v70
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v67, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s21
	v_bfe_u32 v25, v66, 16, 1
	v_bfe_u32 v26, v65, 16, 1
	v_bfe_u32 v27, v64, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s18
	v_add3_u32 v23, v67, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v67, v67
	v_add3_u32 v25, v66, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v66, v66
	v_add3_u32 v26, v65, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v27, v64, v27, 0x7fff
	v_cmp_o_f32_e64 s21, v64, v64
	v_bfe_u32 v28, v63, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s18
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s19
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s21
	v_add3_u32 v26, v63, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v63, v63
	v_bfe_u32 v27, v62, 16, 1
	v_mov_b16_e32 v21.l, v61.h
	v_mov_b16_e32 v28.l, v60.h
	v_mov_b16_e32 v28.h, v21.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_add3_u32 v27, v62, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v62, v62
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v30.l, v58.h
	v_mov_b16_e32 v30.h, v21.h
	v_mov_b16_e32 v21.l, v59.h
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v29, v61, v29, 0x7fff
	v_cmp_o_f32_e64 s18, v61, v61
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v30
	v_and_b32_e32 v30, 1, v21
	v_mov_b16_e32 v21.l, v57.h
	v_add3_u32 v28, v60, v28, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s18
	v_cmp_o_f32_e64 s3, v60, v60
	v_add3_u32 v27, v58, v27, 0x7fff
	v_add3_u32 v30, v59, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v59, v59
	v_cmp_o_f32_e64 s19, v58, v58
	v_mov_b16_e32 v31.l, v56.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_cndmask_b16 v29.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s18
	v_cndmask_b16 v28.l, 0x7fff, v27.h, s19
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v57, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v57, v57
	v_mov_b16_e32 v21.l, v55.h
	v_mov_b16_e32 v31.l, v54.h
	v_add3_u32 v27, v56, v27, 0x7fff
	v_mov_b16_e32 v33.l, v52.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_cmp_o_f32_e64 s3, v56, v56
	v_and_b32_e32 v32, 1, v21
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v53.h
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s18, v55, v55
	v_add3_u32 v32, v55, v32, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_add3_u32 v31, v54, v31, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s18
	v_cmp_o_f32_e64 s3, v54, v54
	v_cmp_o_f32_e64 s18, v53, v53
	v_add3_u32 v33, v53, v33, 0x7fff
	v_mov_b16_e32 v21.l, v46.h
	v_add3_u32 v27, v52, v27, 0x7fff
	v_cmp_o_f32_e64 s19, v52, v52
	v_mov_b16_e32 v34.l, v51.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v21.l, v50.h
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s19
	v_and_b32_e32 v27, 1, v34
	v_cmp_o_f32_e64 s3, v46, v46
	v_add3_u32 v33, v46, v33, 0x7fff
	v_and_b32_e32 v36, 1, v21
	v_mov_b16_e32 v37.l, v38.h
	v_mov_b16_e32 v37.h, v21.h
	v_mov_b16_e32 v34.l, v49.h
	v_add3_u32 v27, v51, v27, 0x7fff
	v_mov_b16_e32 v21.l, v35.h
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v51, v51
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v36, v50, v36, 0x7fff
	v_cmp_o_f32_e64 s18, v50, v50
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v39, 1, v21
	v_add3_u32 v37, v38, v37, 0x7fff
	v_cmp_o_f32_e64 s22, v38, v38
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v36.h, s18
	v_mov_b32_e32 v36, 0x5410
	v_add3_u32 v34, v49, v34, 0x7fff
	v_add3_u32 v39, v35, v39, 0x7fff
	v_cmp_o_f32_e64 s21, v35, v35
	v_cndmask_b16 v34.l, 0x7fff, v37.h, s22
	v_cndmask_b32_e64 v35, v20, v19, s4
	v_cndmask_b32_e64 v19, v19, v20, s4
	v_cndmask_b32_e64 v20, v22, v1, s4
	v_cndmask_b32_e64 v1, v1, v22, s4
	v_cndmask_b32_e64 v22, v25, v24, s4
	v_cndmask_b32_e64 v24, v24, v25, s4
	v_cndmask_b32_e64 v25, v26, v23, s4
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v23, v23, v26, s4
	v_cndmask_b32_e64 v26, v30, v29, s4
	v_cndmask_b32_e64 v29, v29, v30, s4
	v_cndmask_b32_e64 v30, 0x1054, v36, s4
	v_cndmask_b32_e64 v36, 0x3276, v37, s4
	v_cmp_o_f32_e64 s19, v49, v49
	v_cndmask_b32_e64 v37, v32, v28, s4
	v_cndmask_b32_e64 v28, v28, v32, s4
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v36, v36, 8, v36
	v_cndmask_b16 v27.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v39.h, s21
	s_mov_b32 s3, 0x76543210
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v36, 0x760076, v36
	v_cndmask_b32_e64 v32, v27, v31, s4
	v_cndmask_b32_e64 v27, v31, v27, s4
	v_cndmask_b32_e64 v31, v34, v33, s4
	v_lshl_or_b32 v30, v30, 4, v30
	v_cndmask_b32_e64 v33, v33, v34, s4
	v_permlanex16_b32 v19, v19, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v34, v36, 4, v36
	v_add_lshl_u32 v50, v18, v11, 1
	v_and_b32_e32 v30, 0x5040504, v30
	v_permlanex16_b32 v1, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s20, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v34, 0x7060706, v34
	v_perm_b32 v36, v19, v35, v30
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	v_add_lshl_u32 v51, v18, v17, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_add_lshl_u32 v52, v18, v16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v19, v19, v35, v34
	v_perm_b32 v35, v1, v20, v30
	v_perm_b32 v1, v1, v20, v34
	v_perm_b32 v20, v24, v22, v30
	v_perm_b32 v22, v24, v22, v34
	v_perm_b32 v24, v23, v25, v30
	v_perm_b32 v23, v23, v25, v34
	v_perm_b32 v25, v29, v26, v30
	v_perm_b32 v26, v29, v26, v34
	v_perm_b32 v29, v28, v37, v30
	v_perm_b32 v28, v28, v37, v34
	v_perm_b32 v37, v27, v32, v30
	v_perm_b32 v27, v27, v32, v34
	v_mov_b16_e32 v32.l, v36.h
	buffer_store_b16 v36, v50, s[44:47], 0 offen
	v_add_lshl_u32 v36, v18, v15, 1
	v_mov_b16_e32 v32.h, v21.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v21.l, v19.h
	v_cndmask_b32_e64 v50, 0x80000000, v52, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v32, v51, s[44:47], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	v_add_lshl_u32 v32, v18, v14, 1
	buffer_store_b16 v19, v50, s[44:47], 0 offen
	v_add_lshl_u32 v19, v18, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v30, v33, v31, v30
	v_perm_b32 v31, v33, v31, v34
	v_mov_b16_e32 v33.h, v21.h
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
	buffer_store_b16 v21, v36, s[44:47], 0 offen
	v_add_lshl_u32 v21, v18, v12, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v34.l, v35.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v35, v32, s[44:47], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v32, v18, v10, 1
	buffer_store_b16 v34, v19, s[44:47], 0 offen
	v_add_lshl_u32 v19, v18, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v33.l, v1.h
	buffer_store_b16 v1, v21, s[44:47], 0 offen
	v_add_lshl_u32 v1, v18, v8, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v39.l, v20.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v18, v7, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	s_clause 0x1
	buffer_store_b16 v33, v32, s[44:47], 0 offen
	buffer_store_b16 v20, v19, s[44:47], 0 offen
	v_add_lshl_u32 v19, v18, v6, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v39, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, v18, v5, 1
	v_cndmask_b32_e64 v20, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v22.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v22, v20, s[44:47], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v20, v18, v4, 1
	buffer_store_b16 v38, v19, s[44:47], 0 offen
	v_add_lshl_u32 v19, v18, v3, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v24, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, v18, v2, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v40.l, v23.h
	v_cndmask_b32_e64 v18, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v11, v0, v11, 1
	v_add_lshl_u32 v17, v0, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x2
	buffer_store_b16 v41, v20, s[44:47], 0 offen
	buffer_store_b16 v23, v18, s[44:47], 0 offen
	buffer_store_b16 v40, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, v0, v16, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v43.l, v25.h
	v_cndmask_b32_e64 v16, 0x80000000, v17, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v25, v11, s[44:47], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v11, v0, v15, 1
	v_add_lshl_u32 v14, v0, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v43, v16, s[44:47], 0 offen
	buffer_store_b16 v26, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, v0, v13, 1
	v_mov_b16_e32 v42.l, v26.h
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v45.l, v29.h
	v_cndmask_b32_e64 v13, 0x80000000, v14, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v42, v11, s[44:47], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v11, v0, v12, 1
	v_add_lshl_u32 v10, v0, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v29, v13, s[44:47], 0 offen
	buffer_store_b16 v45, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, v0, v9, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v44.l, v28.h
	v_cndmask_b32_e64 v9, 0x80000000, v10, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v8, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v7, v0, v7, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x2
	buffer_store_b16 v28, v11, s[44:47], 0 offen
	buffer_store_b16 v44, v9, s[44:47], 0 offen
	buffer_store_b16 v37, v1, s[44:47], 0 offen
	v_add_lshl_u32 v1, v0, v6, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v0, v5, 1
	v_cndmask_b32_e64 v6, 0x80000000, v7, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v0, v4, 1
	v_add_lshl_u32 v3, v0, v3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v0, v2, 1
	v_mov_b16_e32 v46.l, v27.h
	v_mov_b16_e32 v47.l, v37.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v49.l, v30.h
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_mov_b16_e32 v48.l, v31.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b16 v47, v8, s[44:47], 0 offen
	buffer_store_b16 v27, v6, s[44:47], 0 offen
	buffer_store_b16 v46, v1, s[44:47], 0 offen
	buffer_store_b16 v30, v5, s[44:47], 0 offen
	buffer_store_b16 v49, v2, s[44:47], 0 offen
	buffer_store_b16 v31, v3, s[44:47], 0 offen
	buffer_store_b16 v48, v0, s[44:47], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 170
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 170
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8408
; TotalNumSgprs: 68
; NumVgprs: 170
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 170
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     170
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
