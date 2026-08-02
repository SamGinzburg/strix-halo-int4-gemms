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
	s_load_b128 s[20:23], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v41, 15, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v40, 16, v0
	v_and_b32_e32 v42, 64, v0
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v43, 32, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	.loc	1 1304 20                       ; ragged.py:1304:20
	v_readfirstlane_b32 s7, v1
	s_mov_b32 s45, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v40
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
	s_sub_i32 s36, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s36, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s6
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_mul_i32 s9, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_ashr_i32 s37, s36, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[36:37], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s44, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s33, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s21, s36, s34
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s37, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s37, s37, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s37, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 4, v40
	v_lshrrev_b32_e32 v4, 1, v43
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s38, s33, 6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 2, v42
	s_clause 0x1
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x38
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v67, v3, v4, s38
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s44, v1
	.loc	1 1309 36 is_stmt 0             ; ragged.py:1309:36
	v_or_b32_e32 v2, v2, v41
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 1424 23 is_stmt 1             ; ragged.py:1424:23
	s_lshl_b32 s46, s3, 4
	.loc	1 1433 43                       ; ragged.py:1433:43
	s_mul_i32 s3, s36, s35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v4
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v4, 3, v42
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v6, s38, v5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v3, 32, v2
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v7, s44, v2
	v_add3_u32 v5, s38, s3, v5
	v_mad_u64_u32 v[33:34], null, s34, v4, v[1:2]
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s20, s35, v6
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, s44, v3
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v7
	v_bfe_i32 v7, v0, 3, 1
	v_mad_u64_u32 v[34:35], null, s34, 3, v[33:34]
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v1, 8, v6
	v_cmp_gt_i32_e64 s2, s34, v8
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v8, 4, v0
	v_cmp_eq_u32_e64 s3, 0, v42
	v_mad_u64_u32 v[35:36], null, s34, 5, v[33:34]
	v_mad_u64_u32 v[36:37], null, s34, 6, v[33:34]
	v_mad_u64_u32 v[37:38], null, s34, 7, v[33:34]
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[38:39], null, v5, s40, v[1:2]
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v1, 0x88, v7
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v5, 0x270, v8
	v_cndmask_b32_e64 v7, 0x108, 0, vcc_lo
	v_cndmask_b32_e64 v9, 0x108, 0, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v8, 0x70, v8, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s42, s37, 1
	s_cmp_lt_i32 s46, 16
	v_xor3_b32 v1, v7, v4, v1
	s_cselect_b32 s49, -1, 0
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v4, 0, v5
	v_xor_b32_e32 v5, v8, v9
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v6, 0x378, v6
	v_cndmask_b32_e64 v7, 0x88, 0, vcc_lo
	s_add_i32 s3, s44, s21
	v_lshl_or_b32 v8, v43, 3, v8
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v2, s3, v2
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v3, s3, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v70, 2, v67
	v_or_b32_e32 v71, 4, v67
	v_or_b32_e32 v72, 6, v67
	v_or_b32_e32 v73, 8, v67
	v_or_b32_e32 v75, 10, v67
	v_or_b32_e32 v76, 12, v67
	v_or_b32_e32 v77, 14, v67
	v_or_b32_e32 v78, 32, v67
	v_or_b32_e32 v79, 34, v67
	v_or_b32_e32 v80, 36, v67
	v_or_b32_e32 v81, 38, v67
	v_or_b32_e32 v82, 40, v67
	v_or_b32_e32 v83, 42, v67
	v_or_b32_e32 v84, 44, v67
	v_or_b32_e32 v85, 46, v67
	v_xor_b32_e32 v9, 8, v5
	v_xor_b32_e32 v6, v7, v6
	v_xor_b32_e32 v7, 8, v8
	v_mul_lo_u32 v92, v2, s41
	v_mul_lo_u32 v93, v3, s41
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s35, v67
	v_cmp_gt_i32_e64 s5, s35, v70
	v_cmp_gt_i32_e64 s6, s35, v71
	v_cmp_gt_i32_e64 s7, s35, v72
	v_cmp_gt_i32_e64 s8, s35, v73
	v_cmp_gt_i32_e64 s9, s35, v75
	v_cmp_gt_i32_e64 s10, s35, v76
	v_cmp_gt_i32_e64 s11, s35, v77
	v_cmp_gt_i32_e64 s12, s35, v78
	v_cmp_gt_i32_e64 s13, s35, v79
	v_cmp_gt_i32_e64 s14, s35, v80
	v_cmp_gt_i32_e64 s15, s35, v81
	v_cmp_gt_i32_e64 s16, s35, v82
	v_cmp_gt_i32_e64 s17, s35, v83
	v_cmp_gt_i32_e64 s18, s35, v84
	v_cmp_gt_i32_e64 s19, s35, v85
	v_lshl_add_u32 v91, s34, 2, v33
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v94, v4, v1
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v95, 0, v5
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v96, 0, v9
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v97, 0, v6
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v98, 0, v8
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v99, 0, v7
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v44, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s42, s42, -1
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_mul_i32 s47, s36, s40
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s48, s36, s41
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s3, s42, 4
	s_mov_b32 s30, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v14, v92, s45, 1
	v_add_lshl_u32 v15, v93, s45, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s26, s45, s48
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s30, s38
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s26, s26, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v16, v67, s26, 1
	v_add_lshl_u32 v24, v78, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v17, v70, s26, 1
	v_add_lshl_u32 v31, v79, s26, 1
	v_add_lshl_u32 v18, v71, s26, 1
	v_add_lshl_u32 v32, v80, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s31, s39
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v72, s26, 1
	v_add_lshl_u32 v113, v81, s26, 1
	v_add_lshl_u32 v20, v73, s26, 1
	v_add_lshl_u32 v21, v75, s26, 1
	v_add_lshl_u32 v22, v76, s26, 1
	v_add_lshl_u32 v23, v77, s26, 1
	v_add_lshl_u32 v114, v82, s26, 1
	v_add_lshl_u32 v115, v83, s26, 1
	v_add_lshl_u32 v116, v84, s26, 1
	v_add_lshl_u32 v117, v85, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v14, v14, s[28:31], 0 offen
	buffer_load_u16 v15, v15, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v24, 0x80000000, v24, s12
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	v_cndmask_b32_e64 v31, 0x80000000, v31, s13
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	v_cndmask_b32_e64 v32, 0x80000000, v32, s14
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	v_cndmask_b32_e64 v19, 0x80000000, v19, s7
	v_cndmask_b32_e64 v113, 0x80000000, v113, s15
	v_cndmask_b32_e64 v20, 0x80000000, v20, s8
	v_cndmask_b32_e64 v21, 0x80000000, v21, s9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s10
	v_cndmask_b32_e64 v23, 0x80000000, v23, s11
	v_cndmask_b32_e64 v114, 0x80000000, v114, s16
	v_cndmask_b32_e64 v115, 0x80000000, v115, s17
	v_cndmask_b32_e64 v116, 0x80000000, v116, s18
	v_cndmask_b32_e64 v117, 0x80000000, v117, s19
	s_clause 0xf
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v31, v31, s[40:43], 0 offen
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	buffer_load_u16 v113, v113, s[40:43], 0 offen
	buffer_load_u16 v114, v114, s[40:43], 0 offen
	buffer_load_u16 v115, v115, s[40:43], 0 offen
	buffer_load_u16 v116, v116, s[40:43], 0 offen
	buffer_load_u16 v117, v117, s[40:43], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s26, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s30, s26, 4
	s_cmp_lg_u32 s45, s3
	s_mov_b32 s45, s26
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v112, v112, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v2, v2, v15
	v_mul_f32_e32 v27, v27, v15
	v_mul_f32_e32 v111, v111, v14
	v_mul_f32_e32 v110, v110, v14
	v_mul_f32_e32 v109, v109, v14
	v_mul_f32_e32 v108, v108, v14
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v107, v107, v14 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 1519 40                       ; ragged.py:1519:40
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
	v_dual_mul_f32 v106, v106, v14 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v13, v13, v15 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v104, v104, v14 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v102, v102, v14 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v105, v105, v14 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v100, v100, v14 :: v_dual_lshlrev_b32 v113, 16, v113
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v11, v11, v15 :: v_dual_lshlrev_b32 v114, 16, v114
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v30, v30, v14 :: v_dual_lshlrev_b32 v115, 16, v115
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v103, v103, v14 :: v_dual_lshlrev_b32 v116, 16, v116
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v101, v101, v14
	v_dual_mul_f32 v29, v29, v14 :: v_dual_mul_f32 v26, v26, v15
	v_dual_mul_f32 v1, v1, v14 :: v_dual_mul_f32 v12, v12, v15
	v_mul_f32_e32 v14, v28, v15
	v_dual_mul_f32 v10, v10, v15 :: v_dual_fmac_f32 v89, v111, v18
	v_dual_mul_f32 v9, v9, v15 :: v_dual_fmac_f32 v90, v112, v17
	v_dual_mul_f32 v8, v8, v15 :: v_dual_fmac_f32 v87, v109, v20
	v_dual_mul_f32 v7, v7, v15 :: v_dual_fmac_f32 v86, v108, v21
	v_dual_mul_f32 v6, v6, v15 :: v_dual_fmac_f32 v65, v103, v32
	v_dual_mul_f32 v5, v5, v15 :: v_dual_fmac_f32 v74, v107, v22
	v_dual_mul_f32 v4, v4, v15 :: v_dual_fmac_f32 v63, v101, v114
	v_dual_mul_f32 v3, v3, v15 :: v_dual_fmac_f32 v68, v105, v24
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v88, v110, v19 :: v_dual_fmac_f32 v55, v1, v16
	v_dual_fmac_f32 v69, v106, v23 :: v_dual_fmac_f32 v60, v29, v117
	v_dual_fmac_f32 v66, v104, v31 :: v_dual_fmac_f32 v61, v30, v116
	v_dual_fmac_f32 v64, v102, v113 :: v_dual_fmac_f32 v51, v11, v23
	v_dual_fmac_f32 v62, v100, v115 :: v_dual_fmac_f32 v57, v2, v16
	v_dual_fmac_f32 v59, v14, v17 :: v_dual_fmac_f32 v58, v27, v18
	v_dual_fmac_f32 v56, v26, v19 :: v_dual_fmac_f32 v53, v13, v21
	v_dual_fmac_f32 v54, v25, v20 :: v_dual_fmac_f32 v47, v7, v113
	v_dual_fmac_f32 v52, v12, v22 :: v_dual_fmac_f32 v49, v9, v31
	v_dual_fmac_f32 v50, v10, v24 :: v_dual_fmac_f32 v45, v5, v115
	v_dual_fmac_f32 v48, v8, v32 :: v_dual_fmac_f32 v39, v3, v117
	v_fmac_f32_e32 v46, v6, v114
	v_fmac_f32_e32 v44, v4, v116
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
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s49
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s31, s46
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
	s_add_i32 s42, s31, s30
	v_add_nc_u32_e32 v100, s34, v33
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s43, s42, s47
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v102, s42, v38
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_mul_i32 s42, s43, s34
	v_lshl_add_u32 v101, s34, 1, v33
	s_add_i32 s42, s42, s44
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s26, s38
	v_add_nc_u32_e32 v107, s42, v37
	v_add_nc_u32_e32 v106, s42, v35
	v_add_nc_u32_e32 v104, s42, v34
	v_add_nc_u32_e32 v100, s42, v100
	v_add_nc_u32_e32 v105, s42, v91
	v_add_nc_u32_e32 v108, s42, v36
	v_add_nc_u32_e32 v103, s42, v33
	v_add_nc_u32_e32 v101, s42, v101
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s27, s39
	v_cndmask_b32_e64 v102, 0x80000000, v102, s20
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	s_clause 0x7
	buffer_load_u8 v107, v107, s[36:39], 0 offen
	buffer_load_u8 v106, v106, s[36:39], 0 offen
	buffer_load_u8 v104, v104, s[36:39], 0 offen
	buffer_load_u8 v110, v100, s[36:39], 0 offen
	buffer_load_u8 v111, v108, s[36:39], 0 offen
	buffer_load_u8 v105, v105, s[36:39], 0 offen
	buffer_load_u8 v112, v101, s[36:39], 0 offen
	buffer_load_u8 v113, v103, s[36:39], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_b64 v[108:109], v102, s[24:27], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s26, s31, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s31, 0
	s_mov_b32 s31, s26
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v100.l, 8, v107.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v100.h, 8, v106.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v101.l, 8, v104.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v101.h, 8, v110.l
	s_waitcnt vmcnt(4)
	v_or_b16 v103.h, v111.l, v100.l
	s_waitcnt vmcnt(3)
	v_or_b16 v103.l, v105.l, v100.h
	s_waitcnt vmcnt(2)
	v_or_b16 v102.h, v112.l, v101.l
	s_waitcnt vmcnt(1)
	v_or_b16 v102.l, v113.l, v101.h
	ds_store_b64 v94, v[102:103]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[100:103], v95 offset1:1
	ds_load_2addr_stride64_b64 v[104:107], v96 offset1:1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v97, v[108:109]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[108:111], v98 offset1:1
	ds_load_2addr_stride64_b64 v[112:115], v99 offset1:1
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[102:103], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[106:107], v[17:24] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v112, v2
	v_cvt_f32_i32_e32 v111, v3
	v_cvt_f32_i32_e32 v110, v4
	v_cvt_f32_i32_e32 v109, v5
	v_cvt_f32_i32_e32 v108, v6
	v_cvt_f32_i32_e32 v107, v7
	v_cvt_f32_i32_e32 v106, v8
	v_cvt_f32_i32_e32 v105, v25
	v_cvt_f32_i32_e32 v104, v26
	v_cvt_f32_i32_e32 v103, v27
	v_cvt_f32_i32_e32 v102, v28
	v_cvt_f32_i32_e32 v101, v29
	v_cvt_f32_i32_e32 v100, v30
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
.LBB0_7:                                ; %._crit_edge16
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v90, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_bfe_u32 v5, v88, 16, 1
	v_bfe_u32 v8, v74, 16, 1
	v_bfe_u32 v4, v89, 16, 1
	v_add3_u32 v1, v90, v1, 0x7fff
	v_bfe_u32 v12, v65, 16, 1
	v_add3_u32 v5, v88, v5, 0x7fff
	v_add3_u32 v8, v74, v8, 0x7fff
	v_mov_b16_e32 v3.h, 0
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_cmp_o_f32_e64 s0, v89, v89
	v_bfe_u32 v6, v87, 16, 1
	v_add3_u32 v4, v89, v4, 0x7fff
	v_bfe_u32 v9, v69, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_add3_u32 v12, v65, v12, 0x7fff
	v_bfe_u32 v16, v61, 16, 1
	v_mov_b16_e32 v3.l, v57.h
	v_add3_u32 v6, v87, v6, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cmp_o_f32_e64 s1, v87, v87
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_bfe_u32 v10, v68, 16, 1
	v_add3_u32 v9, v69, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v69, v69
	v_bfe_u32 v13, v64, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v16, v61, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_mov_b16_e32 v18.l, v55.h
	v_mov_b16_e32 v18.h, v3.h
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_add3_u32 v10, v68, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_bfe_u32 v14, v63, 16, 1
	v_add3_u32 v13, v64, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_bfe_u32 v17, v60, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v3, v57, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_add3_u32 v14, v63, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v17, v60, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_add3_u32 v18, v55, v18, 0x7fff
	v_bfe_u32 v19, v58, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v59, 16, 1
	v_add3_u32 v19, v58, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_cndmask_b16 v20.l, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v56, 16, 1
	v_bfe_u32 v7, v86, 16, 1
	v_add3_u32 v17, v59, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v59, v59
	v_cndmask_b16 v4.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v53, 16, 1
	v_add3_u32 v18, v56, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v7, v86, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v86, v86
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v54, 16, 1
	v_add3_u32 v19, v53, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_cndmask_b16 v5.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v52, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v17, v54, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v50, 16, 1
	v_add3_u32 v18, v52, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_bfe_u32 v11, v66, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v51, 16, 1
	v_add3_u32 v19, v50, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_cndmask_b16 v8.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v49, 16, 1
	v_add3_u32 v11, v66, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v66, v66
	v_add3_u32 v17, v51, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v51, v51
	v_cndmask_b16 v10.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v47, 16, 1
	v_add3_u32 v18, v49, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_cndmask_b16 v9.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v48, 16, 1
	v_add3_u32 v19, v47, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_cndmask_b16 v11.h, 0x7fff, v18.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v18, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v17, v48, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	v_cndmask_b16 v13.h, 0x7fff, v19.h, s1
	v_bfe_u32 v15, v62, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v19, 2, v18
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s2, v62, v62
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v45, 16, 1
	v_add3_u32 v15, v62, v15, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v19, v41, 8, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v45, v45
	v_bfe_u32 v21, v46, 16, 1
	v_add3_u32 v17, v45, v17, 0x7fff
	v_bfe_u32 v22, v44, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v19, v19, v43
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v21, v46, v21, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s0
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v17, v42, 1, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v23, v39, 16, 1
	v_add3_u32 v22, v44, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v44, v44
	v_cmp_o_f32_e64 s2, v39, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v19, 0, v17
	v_xad_u32 v26, 0x1040, v17, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v23, v39, v23, 0x7fff
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
	v_lshlrev_b32_e32 v4, 2, v41
	v_xad_u32 v1, 0x104c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v1, v13
	v_lshrrev_b32_e32 v1, 3, v2
	v_lshl_or_b32 v2, v2, 3, v4
	v_cmp_eq_u32_e32 vcc_lo, 0, v40
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
	v_or_b32_e32 v17, s44, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s33, 5, v18
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
	v_add_nc_u32_e32 v18, s21, v17
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v13, s21, v13
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v9, s21, v9
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v5, s21, v5
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
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
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s23, v19, s0
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
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s22, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s23, v14, s0
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
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s22, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s23, v10, s0
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
	v_add_nc_u32_e32 v1, s21, v1
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
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
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
		.amdhsa_next_free_vgpr 118
		.amdhsa_next_free_sgpr 50
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
		.amdhsa_inst_pref_size 54
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
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 118
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6812
; TotalNumSgprs: 52
; NumVgprs: 118
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 118
; Occupancy: 12
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
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     118
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
