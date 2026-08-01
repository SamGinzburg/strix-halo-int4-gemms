	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[28:31], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v68, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
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
	s_ashr_i32 s6, s5, 6
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v70, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v76, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v82, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v92, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v46, 16, v0
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v48, 32, v0
	v_mov_b32_e32 v93, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v33, 15, v0
	v_and_b32_e32 v47, 64, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	.loc	1 1304 20                       ; ragged.py:1304:20
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v95, 0
	s_mov_b32 s54, 0
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
	s_sub_i32 s44, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s44, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s33, s44, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s8, s8, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s7
	s_sub_i32 s5, s5, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s45, s44, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[44:45], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s53, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s52, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s28, s4
	s_addc_u32 s5, s29, s5
	s_load_b32 s45, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s45, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s45, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 2, v47
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s46, s52, 6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v4, 1, v48
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x38
	v_or_b32_e32 v66, v2, v33
	v_lshrrev_b32_e32 v2, 4, v46
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, s46, v3
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v71, v2, v4, s46
	v_or_b32_e32 v2, 32, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, s53, v1
	.loc	1 1309 36 is_stmt 0             ; ragged.py:1309:36
	v_or_b32_e32 v7, 56, v3
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s48, s45, 1
	s_cmp_lt_i32 s3, 16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s35, v2
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 6, v47
	.loc	1 1433 43                       ; ragged.py:1433:43
	s_mul_i32 s49, s44, s35
	v_mov_b32_e32 v92, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v6, 32, v66
	s_cselect_b32 s57, -1, 0
	v_mad_u64_u32 v[34:35], null, s34, v2, v[1:2]
	v_lshlrev_b32_e32 v1, 4, v0
	v_bfe_i32 v2, v0, 3, 1
	s_add_i32 s58, s46, s49
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v4, 40, v5
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s55, s44, s28
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_mad_u64_u32 v[36:37], null, s34, 6, v[34:35]
	v_mad_u64_u32 v[37:38], null, s34, 10, v[34:35]
	v_mad_u64_u32 v[38:39], null, s34, 12, v[34:35]
	v_mad_u64_u32 v[39:40], null, s28, v3, v[33:34]
	v_mad_u64_u32 v[40:41], null, s34, 14, v[34:35]
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v3, 3, v48
	s_mul_i32 s58, s58, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v99, s28, 3, v39
	v_mad_u64_u32 v[41:42], null, s28, 24, v[39:40]
	v_mad_u64_u32 v[42:43], null, s28, 40, v[39:40]
	v_mad_u64_u32 v[43:44], null, s28, 48, v[39:40]
	v_lshl_add_u32 v100, s28, 4, v39
	v_lshl_add_u32 v101, s28, 5, v39
	v_mad_u64_u32 v[44:45], null, s28, v7, v[33:34]
	s_add_i32 s28, s53, s33
	v_or3_b32 v102, v2, v3, v1
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, s28, v66
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v2, s28, v6
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v9, s53, v66
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v10, 8, v5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v11, s53, v6
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, 16, v5
	v_or_b32_e32 v13, 24, v5
	v_or_b32_e32 v14, 48, v5
	v_or_b32_e32 v15, s46, v7
	v_or_b32_e32 v72, 2, v71
	v_or_b32_e32 v73, 4, v71
	v_or_b32_e32 v74, 6, v71
	v_or_b32_e32 v75, 8, v71
	v_or_b32_e32 v77, 10, v71
	v_or_b32_e32 v78, 12, v71
	v_or_b32_e32 v80, 14, v71
	v_or_b32_e32 v81, 32, v71
	v_or_b32_e32 v83, 34, v71
	v_or_b32_e32 v84, 36, v71
	v_or_b32_e32 v85, 38, v71
	v_or_b32_e32 v86, 40, v71
	v_or_b32_e32 v87, 42, v71
	v_or_b32_e32 v88, 44, v71
	v_or_b32_e32 v90, 46, v71
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s27, s35, v5
	v_cmp_gt_i32_e64 s8, s35, v4
	v_or_b32_e32 v3, 0x380, v0
	v_xor_b32_e32 v4, 0x88, v0
	v_xor_b32_e32 v5, 8, v102
	v_mul_lo_u32 v103, v1, s29
	v_mul_lo_u32 v104, v2, s29
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v8
	v_cmp_gt_i32_e64 s1, s34, v9
	v_cmp_gt_i32_e64 s2, s34, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s35, v10
	v_cmp_gt_i32_e64 s5, s35, v12
	v_cmp_gt_i32_e64 s6, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	v_cmp_gt_i32_e64 s10, s35, v15
	v_cmp_gt_i32_e64 s11, s35, v71
	v_cmp_gt_i32_e64 s12, s35, v72
	v_cmp_gt_i32_e64 s13, s35, v73
	v_cmp_gt_i32_e64 s14, s35, v74
	v_cmp_gt_i32_e64 s15, s35, v75
	v_cmp_gt_i32_e64 s16, s35, v77
	v_cmp_gt_i32_e64 s17, s35, v78
	v_cmp_gt_i32_e64 s18, s35, v80
	v_cmp_gt_i32_e64 s19, s35, v81
	v_cmp_gt_i32_e64 s20, s35, v83
	v_cmp_gt_i32_e64 s21, s35, v84
	v_cmp_gt_i32_e64 s22, s35, v85
	v_cmp_gt_i32_e64 s23, s35, v86
	v_cmp_gt_i32_e64 s24, s35, v87
	v_cmp_gt_i32_e64 s25, s35, v88
	v_cmp_gt_i32_e64 s26, s35, v90
	v_lshl_add_u32 v96, s34, 1, v34
	v_lshl_add_u32 v97, s34, 2, v34
	v_lshl_add_u32 v98, s34, 3, v34
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v105, 0, v0
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v106, 0, v3
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v107, 0, v4
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v108, 0, v5
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v61, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s28, s48, -1
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s56, s44, s29
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s44, s36
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s37, s39, 0xffff
	s_mov_b32 s36, s38
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s28, s28, 4
	s_mov_b32 s29, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v14, v103, s54, 1
	v_add_lshl_u32 v15, v104, s54, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s29, s54, s56
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s42, s46
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s29, s29, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v16, v71, s29, 1
	v_add_lshl_u32 v24, v81, s29, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v17, v72, s29, 1
	v_add_lshl_u32 v31, v83, s29, 1
	v_add_lshl_u32 v18, v73, s29, 1
	v_add_lshl_u32 v32, v84, s29, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s43, s47
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v74, s29, 1
	v_add_lshl_u32 v122, v85, s29, 1
	v_add_lshl_u32 v20, v75, s29, 1
	v_add_lshl_u32 v21, v77, s29, 1
	v_add_lshl_u32 v22, v78, s29, 1
	v_add_lshl_u32 v23, v80, s29, 1
	v_add_lshl_u32 v123, v86, s29, 1
	v_add_lshl_u32 v124, v87, s29, 1
	v_add_lshl_u32 v125, v88, s29, 1
	v_add_lshl_u32 v126, v90, s29, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s11
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	v_cndmask_b32_e64 v17, 0x80000000, v17, s12
	v_cndmask_b32_e64 v31, 0x80000000, v31, s20
	v_cndmask_b32_e64 v18, 0x80000000, v18, s13
	v_cndmask_b32_e64 v32, 0x80000000, v32, s21
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	v_cndmask_b32_e64 v19, 0x80000000, v19, s14
	v_cndmask_b32_e64 v122, 0x80000000, v122, s22
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	v_cndmask_b32_e64 v123, 0x80000000, v123, s23
	v_cndmask_b32_e64 v124, 0x80000000, v124, s24
	v_cndmask_b32_e64 v125, 0x80000000, v125, s25
	v_cndmask_b32_e64 v126, 0x80000000, v126, s26
	s_clause 0xf
	buffer_load_u16 v16, v16, s[48:51], 0 offen
	buffer_load_u16 v17, v17, s[48:51], 0 offen
	buffer_load_u16 v18, v18, s[48:51], 0 offen
	buffer_load_u16 v19, v19, s[48:51], 0 offen
	buffer_load_u16 v20, v20, s[48:51], 0 offen
	buffer_load_u16 v21, v21, s[48:51], 0 offen
	buffer_load_u16 v22, v22, s[48:51], 0 offen
	buffer_load_u16 v23, v23, s[48:51], 0 offen
	buffer_load_u16 v24, v24, s[48:51], 0 offen
	buffer_load_u16 v31, v31, s[48:51], 0 offen
	buffer_load_u16 v32, v32, s[48:51], 0 offen
	buffer_load_u16 v122, v122, s[48:51], 0 offen
	buffer_load_u16 v123, v123, s[48:51], 0 offen
	buffer_load_u16 v124, v124, s[48:51], 0 offen
	buffer_load_u16 v125, v125, s[48:51], 0 offen
	buffer_load_u16 v126, v126, s[48:51], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s38, s54, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s29, s38, 4
	s_cmp_lg_u32 s54, s28
	s_mov_b32 s54, s38
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v120, v120, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v2, v2, v15
	v_mul_f32_e32 v27, v27, v15
	v_mul_f32_e32 v121, v121, v14
	v_mul_f32_e32 v119, v119, v14
	v_mul_f32_e32 v118, v118, v14
	v_mul_f32_e32 v117, v117, v14
	v_mul_f32_e32 v116, v116, v14
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v25, v25, v15 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v114, v114, v14 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v13, v13, v15 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v112, v112, v14 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v110, v110, v14 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v115, v115, v14 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v11, v11, v15 :: v_dual_lshlrev_b32 v122, 16, v122
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v30, v30, v14 :: v_dual_lshlrev_b32 v123, 16, v123
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v113, v113, v14 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v9, v15 :: v_dual_lshlrev_b32 v126, 16, v126
	v_mul_f32_e32 v111, v111, v14
	v_dual_mul_f32 v109, v109, v14 :: v_dual_mul_f32 v26, v26, v15
	v_dual_mul_f32 v29, v29, v14 :: v_dual_mul_f32 v12, v12, v15
	v_dual_mul_f32 v1, v1, v14 :: v_dual_mul_f32 v10, v10, v15
	v_mul_f32_e32 v14, v28, v15
	v_dual_mul_f32 v8, v8, v15 :: v_dual_fmac_f32 v95, v121, v17
	v_dual_mul_f32 v7, v7, v15 :: v_dual_fmac_f32 v94, v120, v18
	v_dual_mul_f32 v6, v6, v15 :: v_dual_fmac_f32 v91, v117, v21
	v_dual_mul_f32 v5, v5, v15 :: v_dual_fmac_f32 v92, v118, v20
	v_dual_mul_f32 v4, v4, v15 :: v_dual_fmac_f32 v79, v114, v24
	v_dual_mul_f32 v3, v3, v15 :: v_dual_fmac_f32 v70, v112, v32
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v93, v119, v19 :: v_dual_fmac_f32 v64, v29, v126
	v_dual_fmac_f32 v89, v116, v22 :: v_dual_fmac_f32 v82, v115, v23
	v_dual_fmac_f32 v76, v113, v31 :: v_dual_fmac_f32 v69, v111, v122
	v_dual_fmac_f32 v68, v110, v123 :: v_dual_fmac_f32 v67, v109, v124
	v_dual_fmac_f32 v65, v30, v125 :: v_dual_fmac_f32 v58, v1, v16
	v_dual_fmac_f32 v61, v2, v16 :: v_dual_fmac_f32 v62, v27, v18
	v_dual_fmac_f32 v63, v14, v17 :: v_dual_fmac_f32 v56, v12, v22
	v_dual_fmac_f32 v60, v26, v19 :: v_dual_fmac_f32 v59, v25, v20
	v_dual_fmac_f32 v57, v13, v21 :: v_dual_fmac_f32 v54, v10, v24
	v_dual_fmac_f32 v55, v11, v23 :: v_dual_fmac_f32 v52, v8, v32
	v_fmac_f32_e32 v53, v9, v31
	v_dual_fmac_f32 v51, v7, v122 :: v_dual_fmac_f32 v50, v6, v123
	v_fmac_f32_e32 v49, v5, v124
	v_fmac_f32_e32 v45, v4, v125
	v_fmac_f32_e32 v35, v3, v126
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v121, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s57
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s42, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
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
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s43, s42, s29
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s38, s46
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s50, s43, s55
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s43, s43, s58
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_mul_i32 s50, s50, s34
	v_add_nc_u32_e32 v109, s43, v39
	v_add_nc_u32_e32 v110, s43, v99
	v_add_nc_u32_e32 v111, s43, v100
	s_add_i32 s50, s50, s53
	v_add_nc_u32_e32 v112, s43, v41
	v_add_nc_u32_e32 v113, s43, v101
	v_add_nc_u32_e32 v114, s43, v42
	v_add_nc_u32_e32 v115, s43, v43
	v_add_nc_u32_e32 v116, s43, v44
	v_add_nc_u32_e32 v117, s50, v34
	v_add_nc_u32_e32 v118, s50, v96
	v_add_nc_u32_e32 v119, s50, v97
	v_add_nc_u32_e32 v120, s50, v36
	v_add_nc_u32_e32 v121, s50, v98
	v_add_nc_u32_e32 v122, s50, v37
	v_add_nc_u32_e32 v123, s50, v38
	v_add_nc_u32_e32 v124, s50, v40
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v109, 0x80000000, v109, s27
	v_cndmask_b32_e64 v110, 0x80000000, v110, s4
	v_cndmask_b32_e64 v111, 0x80000000, v111, s5
	s_mov_b32 s39, s47
	v_cndmask_b32_e64 v112, 0x80000000, v112, s6
	v_cndmask_b32_e64 v113, 0x80000000, v113, s7
	v_cndmask_b32_e64 v114, 0x80000000, v114, s8
	v_cndmask_b32_e64 v115, 0x80000000, v115, s9
	v_cndmask_b32_e64 v116, 0x80000000, v116, s10
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0x6
	buffer_load_u8 v109, v109, s[36:39], 0 offen
	buffer_load_u8 v110, v110, s[36:39], 0 offen
	buffer_load_u8 v111, v111, s[36:39], 0 offen
	buffer_load_u8 v112, v112, s[36:39], 0 offen
	buffer_load_u8 v113, v113, s[36:39], 0 offen
	buffer_load_u8 v114, v114, s[36:39], 0 offen
	buffer_load_u8 v115, v115, s[36:39], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x7
	buffer_load_u8 v117, v117, s[44:47], 0 offen
	buffer_load_u8 v118, v118, s[44:47], 0 offen
	buffer_load_u8 v119, v119, s[44:47], 0 offen
	buffer_load_u8 v120, v120, s[44:47], 0 offen
	buffer_load_u8 v121, v121, s[44:47], 0 offen
	buffer_load_u8 v122, v122, s[44:47], 0 offen
	buffer_load_u8 v123, v123, s[44:47], 0 offen
	buffer_load_u8 v124, v124, s[44:47], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_u8 v116, v116, s[36:39], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_add_nc_u32_e32 v125, 0, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_add_nc_u32_e32 v126, 0, v102
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s38, s42, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s42, 0
	s_mov_b32 s42, s38
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(8)
	ds_store_b8 v105, v117
	s_waitcnt vmcnt(7)
	ds_store_b8 v105, v118 offset:128
	s_waitcnt vmcnt(6)
	ds_store_b8 v105, v119 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v105, v120 offset:384
	s_waitcnt vmcnt(4)
	ds_store_b8 v105, v121 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v105, v122 offset:640
	s_waitcnt vmcnt(2)
	ds_store_b8 v105, v123 offset:768
	s_waitcnt vmcnt(1)
	ds_store_b8 v106, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v117, v125 offset:448
	ds_load_u8 v118, v125 offset:384
	ds_load_u8 v119, v125 offset:320
	ds_load_u8 v120, v125 offset:256
	ds_load_u8 v121, v125 offset:480
	ds_load_u8 v122, v125 offset:416
	ds_load_u8 v123, v125 offset:352
	ds_load_u8 v124, v125 offset:288
	ds_load_u8 v127, v125 offset:192
	ds_load_u8 v128, v125 offset:128
	ds_load_u8 v129, v125 offset:64
	ds_load_u8 v130, v125 offset:224
	ds_load_u8 v131, v125 offset:160
	ds_load_u8 v132, v125 offset:96
	ds_load_u8 v133, v125
	ds_load_u8 v134, v125 offset:32
	ds_load_u8 v135, v125 offset:704
	ds_load_u8 v136, v125 offset:640
	ds_load_u8 v137, v125 offset:576
	ds_load_u8 v138, v125 offset:512
	ds_load_u8 v139, v125 offset:736
	ds_load_u8 v140, v125 offset:672
	ds_load_u8 v141, v125 offset:608
	ds_load_u8 v142, v125 offset:544
	ds_load_u8 v143, v125 offset:960
	ds_load_u8 v144, v125 offset:896
	ds_load_u8 v145, v125 offset:832
	ds_load_u8 v146, v125 offset:768
	ds_load_u8 v147, v125 offset:992
	ds_load_u8 v148, v125 offset:928
	ds_load_u8 v149, v125 offset:864
	ds_load_u8 v125, v125 offset:800
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v105, v109
	ds_store_b8 v105, v111 offset:256
	ds_store_b8 v105, v113 offset:512
	ds_store_b8 v105, v115 offset:768
	ds_store_b8 v107, v110
	ds_store_b8 v107, v112 offset:256
	ds_store_b8 v107, v114 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v107, v116 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[109:112], v126 offset1:1
	ds_load_2addr_stride64_b64 v[113:116], v108 offset1:1
	.loc	1 1438 35                       ; ragged.py:1438:35
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v120, v133, v129, 0xc0c0004
	v_perm_b32 v126, v128, v127, 0xc0c0004
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v124, v134, v132, 0xc0c0004
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_perm_b32 v128, v144, v143, 0xc0c0004
	v_perm_b32 v127, v146, v145, 0xc0c0004
	v_perm_b32 v129, v138, v137, 0xc0c0004
	v_perm_b32 v133, v136, v135, 0xc0c0004
	v_perm_b32 v131, v148, v147, 0xc0c0004
	v_perm_b32 v125, v125, v149, 0xc0c0004
	v_perm_b32 v132, v142, v141, 0xc0c0004
	v_perm_b32 v134, v140, v139, 0xc0c0004
	v_lshl_or_b32 v118, v117, 16, v119
	v_lshl_or_b32 v117, v126, 16, v120
	v_lshl_or_b32 v122, v121, 16, v123
	v_lshl_or_b32 v121, v130, 16, v124
	v_lshl_or_b32 v120, v128, 16, v127
	v_lshl_or_b32 v119, v133, 16, v129
	v_lshl_or_b32 v124, v131, 16, v125
	v_lshl_or_b32 v123, v134, 16, v132
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[117:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[117:118], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[109:110], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[121:122], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[119:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[113:114], v[123:124], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v121, v2
	v_cvt_f32_i32_e32 v120, v3
	v_cvt_f32_i32_e32 v119, v4
	v_cvt_f32_i32_e32 v118, v5
	v_cvt_f32_i32_e32 v117, v6
	v_cvt_f32_i32_e32 v116, v7
	v_cvt_f32_i32_e32 v115, v8
	v_cvt_f32_i32_e32 v114, v25
	v_cvt_f32_i32_e32 v113, v26
	v_cvt_f32_i32_e32 v112, v27
	v_cvt_f32_i32_e32 v111, v28
	v_cvt_f32_i32_e32 v110, v29
	v_cvt_f32_i32_e32 v109, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v29, v32
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v28, v10
	v_cvt_f32_i32_e32 v27, v11
	v_cvt_f32_i32_e32 v26, v12
	v_cvt_f32_i32_e32 v25, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v12, v15
	v_cvt_f32_i32_e32 v11, v16
	v_cvt_f32_i32_e32 v10, v17
	v_cvt_f32_i32_e32 v9, v18
	v_cvt_f32_i32_e32 v8, v19
	v_cvt_f32_i32_e32 v7, v20
	v_cvt_f32_i32_e32 v6, v21
	v_cvt_f32_i32_e32 v5, v22
	v_cvt_f32_i32_e32 v4, v23
	v_cvt_f32_i32_e32 v3, v24
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge32
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v95, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_bfe_u32 v5, v93, 16, 1
	v_bfe_u32 v8, v89, 16, 1
	v_bfe_u32 v4, v94, 16, 1
	v_add3_u32 v1, v95, v1, 0x7fff
	v_bfe_u32 v12, v70, 16, 1
	v_add3_u32 v5, v93, v5, 0x7fff
	v_add3_u32 v8, v89, v8, 0x7fff
	v_mov_b16_e32 v3.h, 0
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_cmp_o_f32_e64 s0, v94, v94
	v_bfe_u32 v6, v92, 16, 1
	v_add3_u32 v4, v94, v4, 0x7fff
	v_bfe_u32 v9, v82, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_add3_u32 v12, v70, v12, 0x7fff
	v_bfe_u32 v16, v65, 16, 1
	v_mov_b16_e32 v3.l, v61.h
	v_add3_u32 v6, v92, v6, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cmp_o_f32_e64 s1, v92, v92
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_bfe_u32 v10, v79, 16, 1
	v_add3_u32 v9, v82, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v82, v82
	v_bfe_u32 v13, v69, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v16, v65, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_mov_b16_e32 v18.l, v58.h
	v_mov_b16_e32 v18.h, v3.h
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_add3_u32 v10, v79, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v79, v79
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_bfe_u32 v14, v68, 16, 1
	v_add3_u32 v13, v69, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v69, v69
	v_bfe_u32 v17, v64, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v3, v61, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_add3_u32 v14, v68, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v17, v64, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_add3_u32 v18, v58, v18, 0x7fff
	v_bfe_u32 v19, v62, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v63, 16, 1
	v_add3_u32 v19, v62, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v62, v62
	v_cndmask_b16 v20.l, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v60, 16, 1
	v_bfe_u32 v7, v91, 16, 1
	v_add3_u32 v17, v63, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v63, v63
	v_cndmask_b16 v4.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v57, 16, 1
	v_add3_u32 v18, v60, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_add3_u32 v7, v91, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v91, v91
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v59, 16, 1
	v_add3_u32 v19, v57, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_cndmask_b16 v5.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v56, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v17, v59, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v59, v59
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v54, 16, 1
	v_add3_u32 v18, v56, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_bfe_u32 v11, v76, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v55, 16, 1
	v_add3_u32 v19, v54, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	v_cndmask_b16 v8.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v53, 16, 1
	v_add3_u32 v11, v76, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v76, v76
	v_add3_u32 v17, v55, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_cndmask_b16 v10.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v51, 16, 1
	v_add3_u32 v18, v53, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_cndmask_b16 v9.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v52, 16, 1
	v_add3_u32 v19, v51, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v51, v51
	v_cndmask_b16 v11.h, 0x7fff, v18.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v18, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v17, v52, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v52, v52
	v_cndmask_b16 v13.h, 0x7fff, v19.h, s1
	v_bfe_u32 v15, v67, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v19, 2, v18
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s2, v67, v67
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v49, 16, 1
	v_add3_u32 v15, v67, v15, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v19, v33, 8, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v49, v49
	v_bfe_u32 v21, v50, 16, 1
	v_add3_u32 v17, v49, v17, 0x7fff
	v_bfe_u32 v22, v45, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v19, v19, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v21, v50, v21, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s0
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v17, v47, 1, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v23, v35, 16, 1
	v_add3_u32 v22, v45, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v45, v45
	v_cmp_o_f32_e64 s2, v35, v35
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v19, 0, v17
	v_xad_u32 v26, 0x1040, v17, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v23, v35, v23, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v22.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v21, v17, 4, 0
	v_xad_u32 v22, v17, 8, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v29, 0x1044, v17, 0
	ds_store_b32 v19, v20
	ds_store_b32 v26, v10
	v_xad_u32 v10, 0x1048, v17, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v3.h, 0x7fff, v23.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v23, v17, 12, 0
	ds_store_b32 v21, v1
	ds_store_b32 v29, v11
	ds_store_b32 v22, v4
	ds_store_b32 v10, v12
	v_lshlrev_b32_e32 v4, 2, v33
	v_xad_u32 v1, 0x104c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v1, v13
	v_lshrrev_b32_e32 v1, 3, v2
	v_lshl_or_b32 v2, v2, 3, v4
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	v_xad_u32 v24, v17, 16, 0
	v_xad_u32 v25, v17, 20, 0
	v_xad_u32 v10, 0x1050, v17, 0
	v_xor_b32_e32 v1, v2, v1
	v_cndmask_b32_e64 v5, 0x1040, 0, vcc_lo
	v_xad_u32 v4, 0x1054, v17, 0
	v_xad_u32 v27, v17, 24, 0
	v_xad_u32 v2, 0x1058, v17, 0
	v_xad_u32 v28, v17, 28, 0
	v_or_b32_e32 v1, v1, v5
	ds_store_b32 v24, v6
	ds_store_b32 v10, v14
	ds_store_b32 v25, v7
	ds_store_b32 v4, v15
	v_xad_u32 v4, 0x105c, v17, 0
	ds_store_b32 v27, v8
	ds_store_b32 v2, v16
	ds_store_b32 v28, v9
	ds_store_b32 v4, v3
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	v_xad_u32 v4, 0x410, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v2 offset1:32
	ds_load_2addr_b32 v[15:16], v3 offset1:32
	ds_load_2addr_b32 v[9:10], v4 offset1:32
	v_xad_u32 v2, 0x450, v1, 0
	v_xad_u32 v3, 0x820, v1, 0
	v_xad_u32 v4, 0x860, v1, 0
	v_xad_u32 v17, 0xc30, v1, 0
	v_xad_u32 v19, 0xc70, v1, 0
	ds_load_2addr_b32 v[11:12], v2 offset1:32
	ds_load_2addr_b32 v[5:6], v3 offset1:32
	ds_load_2addr_b32 v[7:8], v4 offset1:32
	ds_load_2addr_b32 v[1:2], v17 offset1:32
	ds_load_2addr_b32 v[3:4], v19 offset1:32
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s35, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s53, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s52, 5, v18
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_9
; %bb.8:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v13, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v9, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v5, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v14, v16, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v10, v12, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v6, v8, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 28, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v2, v4, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v13, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s33, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v13, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v9, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s33, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v5, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s33, v5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v5, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v1, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s30, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s31, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s30, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s31, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s30, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s31, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v4, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[0:1], null, v1, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 150
		.amdhsa_next_free_sgpr 59
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 150
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 59
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7604
; TotalNumSgprs: 61
; NumVgprs: 150
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 61
; NumVGPRsForWavesPerEU: 150
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     61
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     150
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
