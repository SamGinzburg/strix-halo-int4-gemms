	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v45, 16, v0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
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
	s_ashr_i32 s6, s5, 6
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v81, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v47, 0xc0, v0
	v_mov_b32_e32 v104, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v46, 15, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v48, 32, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	.loc	1 1304 20                       ; ragged.py:1304:20
	v_readfirstlane_b32 s7, v1
	v_cmp_eq_u32_e64 s20, 0, v45
	v_mov_b32_e32 v108, 0
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
	s_sub_i32 s24, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s24, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s31, s24, s34
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
	s_ashr_i32 s25, s24, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[24:25], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s56, s7, 7
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s33, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	s_mov_b32 s44, 0
	s_load_b32 s21, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s18, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph22
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 2, v47
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v3, 4, v45
	v_lshrrev_b32_e32 v4, 1, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	s_lshl_b32 s25, s33, 6
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v1, 0x7f, v0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_or_b32_e32 v65, v2, v46
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or3_b32 v66, v3, v4, s25
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x38
	s_load_b256 s[36:43], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_or_b32_e32 v3, 64, v65
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, s25, v2
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v6, s56, v65
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s26, s18, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s56, v1
	v_or_b32_e32 v7, s56, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s35, v5
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v5, 0x80, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s26, s18, s26
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v7
	v_bfe_i32 v7, v0, 3, 1
	v_cmp_gt_i32_e64 s0, s34, v6
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s45, s26, 1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v6, 4, v5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s26, s21, 31
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s57, s3, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s3, s21, s26
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s58, s3, 1
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s24, s35
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v8, 4, v0
	v_bfe_i32 v9, v0, 6, 1
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v7, 0x88, v7
	v_mad_u64_u32 v[34:35], null, s34, v6, v[1:2]
	s_add_i32 s63, s25, s3
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v33, 12, v4
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v10, s63, v2
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v9, 0x108, v9
	v_and_or_b32 v11, 0x70, v8, v7
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v88, 7, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[35:36], null, v10, s22, v[33:34]
	v_cmp_eq_u32_e64 s3, 0, v48
	v_xor_b32_e32 v9, v11, v9
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[36:37], null, s34, v88, v[1:2]
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s59, s24, s22
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s60, s24, s23
	s_lshl_b32 s24, s34, 1
	s_lshl_b32 s26, s34, 2
	s_and_b32 s49, s37, 0xffff
	s_and_b32 s37, s39, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[37:38], null, s22, v2, v[33:34]
	s_bitcmp1_b32 s21, 0
	v_cndmask_b32_e64 v10, 0x108, 0, s20
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v8, 0x670, v8
	v_lshl_or_b32 v109, v5, 2, v9
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v4, 0x37c, v4
	v_cndmask_b32_e64 v5, 0x88, 0, s3
	s_cselect_b32 s61, -1, 0
	s_add_i32 s3, s56, s31
	v_mad_u64_u32 v[38:39], null, s34, 3, v[34:35]
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v1, s3, v65
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v2, s3, v3
	v_mad_u64_u32 v[39:40], null, s34, 5, v[34:35]
	v_mad_u64_u32 v[40:41], null, s34, 7, v[34:35]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v67, 2, v66
	v_or_b32_e32 v68, 4, v66
	v_or_b32_e32 v69, 6, v66
	v_or_b32_e32 v70, 8, v66
	v_or_b32_e32 v71, 10, v66
	v_or_b32_e32 v72, 12, v66
	v_or_b32_e32 v73, 14, v66
	v_or_b32_e32 v74, 32, v66
	v_or_b32_e32 v75, 34, v66
	v_or_b32_e32 v76, 36, v66
	v_or_b32_e32 v77, 38, v66
	v_or_b32_e32 v79, 40, v66
	v_or_b32_e32 v80, 42, v66
	v_or_b32_e32 v82, 44, v66
	v_or_b32_e32 v83, 46, v66
	v_xor3_b32 v6, v10, v6, v7
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v7, 0, v8
	v_lshl_or_b32 v110, v48, 3, v11
	v_xor_b32_e32 v8, 8, v109
	v_xor_b32_e32 v111, v5, v4
	v_or_b32_e32 v3, 0x300, v0
	v_or_b32_e32 v4, 0x700, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[41:42], null, s34, 10, v[36:37]
	v_mad_u64_u32 v[42:43], null, s34, 12, v[36:37]
	v_mul_lo_u32 v120, v1, s23
	v_mul_lo_u32 v121, v2, s23
	v_mad_u64_u32 v[43:44], null, s34, 14, v[36:37]
	s_mul_i32 s27, s34, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s19, s35, v66
	v_cmp_gt_i32_e64 s4, s35, v67
	v_cmp_gt_i32_e64 s5, s35, v68
	v_cmp_gt_i32_e64 s6, s35, v69
	v_cmp_gt_i32_e64 s7, s35, v70
	v_cmp_gt_i32_e64 s8, s35, v71
	v_cmp_gt_i32_e64 s9, s35, v72
	v_cmp_gt_i32_e64 s10, s35, v73
	v_cmp_gt_i32_e64 s11, s35, v74
	v_cmp_gt_i32_e64 s12, s35, v75
	v_cmp_gt_i32_e64 s13, s35, v76
	v_cmp_gt_i32_e64 s14, s35, v77
	v_cmp_gt_i32_e64 s15, s35, v79
	v_cmp_gt_i32_e64 s16, s35, v80
	v_cmp_gt_i32_e64 s17, s35, v82
	v_cmp_gt_i32_e64 s18, s35, v83
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v89, 2, v88
	v_or_b32_e32 v90, 4, v88
	v_or_b32_e32 v91, 6, v88
	v_or_b32_e32 v93, 8, v88
	v_or_b32_e32 v94, 10, v88
	v_or_b32_e32 v96, 12, v88
	v_or_b32_e32 v97, 14, v88
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v101, s34, v34
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v103, s24, v34
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v105, s26, v34
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v106, s27, v34
	v_xor_b32_e32 v112, 8, v110
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v113, s24, v36
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v114, s26, v36
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v115, s27, v36
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_lshl_add_u32 v116, s34, 3, v36
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v117, 1, v37
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v118, 2, v37
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v119, 3, v37
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v122, v7, v6
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v123, 0, v8
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v124, 0, v0
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v125, 0, v3
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v126, 0, v4
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	s_add_i32 s62, s45, -1
	s_mov_b32 s48, s36
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mov_b32 s36, s38
	s_mul_i32 s63, s63, s22
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	s_lshr_b32 s64, s62, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v127, v120, s44, 1
	v_add_lshl_u32 v128, v121, s44, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s44, s60
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s42, s50
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v129, v66, s3, 1
	v_add_lshl_u32 v137, v74, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v130, v67, s3, 1
	v_add_lshl_u32 v138, v75, s3, 1
	v_add_lshl_u32 v131, v68, s3, 1
	v_add_lshl_u32 v139, v76, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s43, s51
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v132, v69, s3, 1
	v_add_lshl_u32 v140, v77, s3, 1
	v_add_lshl_u32 v133, v70, s3, 1
	v_add_lshl_u32 v134, v71, s3, 1
	v_add_lshl_u32 v135, v72, s3, 1
	v_add_lshl_u32 v136, v73, s3, 1
	v_add_lshl_u32 v141, v79, s3, 1
	v_add_lshl_u32 v142, v80, s3, 1
	v_add_lshl_u32 v143, v82, s3, 1
	v_add_lshl_u32 v144, v83, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v127, v127, s[40:43], 0 offen
	buffer_load_u16 v128, v128, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v129, 0x80000000, v129, s19
	v_cndmask_b32_e64 v137, 0x80000000, v137, s11
	v_cndmask_b32_e64 v130, 0x80000000, v130, s4
	v_cndmask_b32_e64 v138, 0x80000000, v138, s12
	v_cndmask_b32_e64 v131, 0x80000000, v131, s5
	v_cndmask_b32_e64 v139, 0x80000000, v139, s13
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v132, 0x80000000, v132, s6
	v_cndmask_b32_e64 v140, 0x80000000, v140, s14
	v_cndmask_b32_e64 v133, 0x80000000, v133, s7
	v_cndmask_b32_e64 v134, 0x80000000, v134, s8
	v_cndmask_b32_e64 v135, 0x80000000, v135, s9
	v_cndmask_b32_e64 v136, 0x80000000, v136, s10
	v_cndmask_b32_e64 v141, 0x80000000, v141, s15
	v_cndmask_b32_e64 v142, 0x80000000, v142, s16
	v_cndmask_b32_e64 v143, 0x80000000, v143, s17
	v_cndmask_b32_e64 v144, 0x80000000, v144, s18
	s_clause 0xf
	buffer_load_u16 v129, v129, s[52:55], 0 offen
	buffer_load_u16 v130, v130, s[52:55], 0 offen
	buffer_load_u16 v131, v131, s[52:55], 0 offen
	buffer_load_u16 v132, v132, s[52:55], 0 offen
	buffer_load_u16 v133, v133, s[52:55], 0 offen
	buffer_load_u16 v134, v134, s[52:55], 0 offen
	buffer_load_u16 v135, v135, s[52:55], 0 offen
	buffer_load_u16 v136, v136, s[52:55], 0 offen
	buffer_load_u16 v137, v137, s[52:55], 0 offen
	buffer_load_u16 v138, v138, s[52:55], 0 offen
	buffer_load_u16 v139, v139, s[52:55], 0 offen
	buffer_load_u16 v140, v140, s[52:55], 0 offen
	buffer_load_u16 v141, v141, s[52:55], 0 offen
	buffer_load_u16 v142, v142, s[52:55], 0 offen
	buffer_load_u16 v143, v143, s[52:55], 0 offen
	buffer_load_u16 v144, v144, s[52:55], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v1, v1
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
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s20, s44, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s20, 4
	s_cmp_lg_u32 s44, s64
	s_mov_b32 s44, s20
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v27, v127, v27 :: v_dual_lshlrev_b32 v128, 16, v128
	v_dual_mul_f32 v1, v1, v128 :: v_dual_mul_f32 v2, v128, v2
	v_mul_f32_e32 v26, v127, v26
	v_mul_f32_e32 v28, v127, v28
	v_mul_f32_e32 v29, v127, v29
	v_mul_f32_e32 v30, v127, v30
	v_mul_f32_e32 v31, v127, v31
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v129, 16, v129
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v130, 16, v130
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v17, v127, v17 :: v_dual_lshlrev_b32 v134, 16, v134
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v32, v127, v32 :: v_dual_lshlrev_b32 v135, 16, v135
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v19, v127, v19 :: v_dual_lshlrev_b32 v136, 16, v136
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v18, v127, v18 :: v_dual_lshlrev_b32 v137, 16, v137
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v21, v127, v21 :: v_dual_lshlrev_b32 v138, 16, v138
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v127, v20 :: v_dual_lshlrev_b32 v139, 16, v139
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v23, v127, v23 :: v_dual_lshlrev_b32 v140, 16, v140
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v22, v127, v22 :: v_dual_lshlrev_b32 v141, 16, v141
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v24, v127, v24 :: v_dual_lshlrev_b32 v143, 16, v143
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v25, v25, v127 :: v_dual_lshlrev_b32 v144, 16, v144
	v_dual_mul_f32 v3, v128, v3 :: v_dual_fmac_f32 v108, v26, v130
	v_dual_mul_f32 v4, v128, v4 :: v_dual_fmac_f32 v107, v27, v131
	v_dual_mul_f32 v5, v128, v5 :: v_dual_fmac_f32 v100, v30, v134
	v_dual_mul_f32 v6, v128, v6 :: v_dual_fmac_f32 v99, v31, v135
	v_dual_mul_f32 v7, v128, v7 :: v_dual_fmac_f32 v102, v29, v133
	v_dual_mul_f32 v8, v128, v8 :: v_dual_fmac_f32 v95, v17, v137
	v_dual_mul_f32 v9, v128, v9 :: v_dual_fmac_f32 v92, v18, v138
	v_dual_mul_f32 v10, v128, v10 :: v_dual_fmac_f32 v87, v19, v139
	v_dual_mul_f32 v11, v128, v11 :: v_dual_fmac_f32 v84, v22, v142
	v_dual_mul_f32 v12, v128, v12 :: v_dual_fmac_f32 v85, v21, v141
	v_dual_mul_f32 v13, v128, v13 :: v_dual_fmac_f32 v64, v2, v130
	v_dual_mul_f32 v14, v128, v14 :: v_dual_fmac_f32 v81, v23, v143
	v_dual_mul_f32 v15, v128, v15 :: v_dual_fmac_f32 v60, v25, v129
	v_dual_mul_f32 v16, v128, v16 :: v_dual_fmac_f32 v63, v1, v129
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v104, v28, v132 :: v_dual_fmac_f32 v59, v5, v133
	v_dual_fmac_f32 v98, v32, v136 :: v_dual_fmac_f32 v57, v7, v135
	v_dual_fmac_f32 v86, v20, v140 :: v_dual_fmac_f32 v55, v9, v137
	v_dual_fmac_f32 v78, v24, v144 :: v_dual_fmac_f32 v53, v11, v139
	v_dual_fmac_f32 v62, v3, v131 :: v_dual_fmac_f32 v61, v4, v132
	v_dual_fmac_f32 v58, v6, v134 :: v_dual_fmac_f32 v51, v13, v141
	v_dual_fmac_f32 v56, v8, v136 :: v_dual_fmac_f32 v49, v15, v143
	v_fmac_f32_e32 v54, v10, v138
	v_fmac_f32_e32 v52, v12, v140
	v_fmac_f32_e32 v50, v14, v142
	v_fmac_f32_e32 v44, v16, v144
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s20, s58, s3
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v2, s20, 0, 16
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s20, v2
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	s_and_b32 s21, s20, 16
	s_mov_b32 s20, s57
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s57, s21
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s20, s57
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
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1462 30 is_stmt 1             ; ragged.py:1462:30
	s_add_i32 s22, s20, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s38, s50
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s23, s22, s59
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v127, s22, v35
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s22, s23, s34
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s39, s51
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s22, s22, s56
	.loc	1 1471 38 is_stmt 0             ; ragged.py:1471:38
	v_add_nc_u32_e32 v139, 0, v109
	v_add_nc_u32_e32 v134, s22, v40
	v_add_nc_u32_e32 v130, s22, v103
	v_add_nc_u32_e32 v133, s22, v39
	v_add_nc_u32_e32 v131, s22, v38
	v_add_nc_u32_e32 v128, s22, v34
	v_add_nc_u32_e32 v129, s22, v101
	v_add_nc_u32_e32 v132, s22, v105
	v_add_nc_u32_e32 v135, s22, v106
	v_dual_cndmask_b32 v134, 0x80000000, v134 :: v_dual_cndmask_b32 v131, 0x80000000, v131
	v_dual_cndmask_b32 v130, 0x80000000, v130 :: v_dual_cndmask_b32 v133, 0x80000000, v133
	v_dual_cndmask_b32 v128, 0x80000000, v128 :: v_dual_cndmask_b32 v129, 0x80000000, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v132, 0x80000000, v132 :: v_dual_cndmask_b32 v135, 0x80000000, v135
	.loc	1 1472 38 is_stmt 1             ; ragged.py:1472:38
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x7
	buffer_load_u8 v134, v134, s[48:51], 0 offen
	buffer_load_u8 v133, v133, s[48:51], 0 offen
	buffer_load_u8 v131, v131, s[48:51], 0 offen
	buffer_load_u8 v129, v129, s[48:51], 0 offen
	buffer_load_u8 v135, v135, s[48:51], 0 offen
	buffer_load_u8 v132, v132, s[48:51], 0 offen
	buffer_load_u8 v136, v130, s[48:51], 0 offen
	buffer_load_u8 v137, v128, s[48:51], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_b32 v138, v127, s[36:39], 0 offen
	v_add_nc_u32_e32 v140, 0, v111
	v_add_nc_u32_e32 v141, 0, v110
	v_add_nc_u32_e32 v142, 0, v112
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s20, s20, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s20, s21
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
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[129:130], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[141:142], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[133:134], v[9:16] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s21, s45, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s30, s21, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s20, s30
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s38, s20, s3
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v127, 1, v33
	v_or_b32_e32 v128, 2, v33
	v_or_b32_e32 v129, 3, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v131, s38, v88
	v_or_b32_e32 v132, s38, v89
	v_or_b32_e32 v133, s38, v90
	v_or_b32_e32 v130, s38, v33
	v_or_b32_e32 v127, s38, v127
	v_or_b32_e32 v128, s38, v128
	v_or_b32_e32 v129, s38, v129
	v_or_b32_e32 v134, s38, v91
	v_or_b32_e32 v135, s38, v93
	v_or_b32_e32 v136, s38, v94
	v_or_b32_e32 v137, s38, v96
	v_or_b32_e32 v138, s38, v97
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v139, s3, v131
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s29, s38, s59
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v140, s3, v132
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s39, s29, s34
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v141, s3, v133
	v_subrev_nc_u32_e32 v142, s3, v134
	v_subrev_nc_u32_e32 v143, s3, v135
	v_subrev_nc_u32_e32 v144, s3, v136
	v_subrev_nc_u32_e32 v145, s3, v137
	v_subrev_nc_u32_e32 v146, s3, v138
	v_subrev_nc_u32_e32 v147, s3, v130
	v_subrev_nc_u32_e32 v148, s3, v127
	v_subrev_nc_u32_e32 v149, s3, v128
	v_subrev_nc_u32_e32 v150, s3, v129
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s30, v139
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s39, s39, s56
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s20, s30, v140
	v_add_nc_u32_e32 v139, s39, v36
	v_cmp_gt_i32_e64 s21, s30, v141
	v_add_nc_u32_e32 v140, s39, v113
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s22, s30, v142
	v_add_nc_u32_e32 v141, s39, v114
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v139, 0x80000000, v139, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s20
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s23, s30, v143
	v_add_nc_u32_e32 v142, s39, v115
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v140, 0x80000000, v140, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s21
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s24, s30, v144
	v_add_nc_u32_e32 v143, s39, v116
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v141, 0x80000000, v141, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s22
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s25, s30, v145
	v_add_nc_u32_e32 v144, s39, v41
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v142, 0x80000000, v142, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s23
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s26, s30, v146
	v_add_nc_u32_e32 v145, s39, v42
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v143, 0x80000000, v143, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s24
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s27, s30, v147
	v_add_nc_u32_e32 v146, s39, v43
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s38, s38, s63
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v144, 0x80000000, v144, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s25
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s28, s30, v148
	v_add_nc_u32_e32 v147, s38, v37
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v145, 0x80000000, v145, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s26
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s29, s30, v149
	v_add_nc_u32_e32 v148, s38, v117
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v146, 0x80000000, v146, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s27
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s30, s30, v150
	v_add_nc_u32_e32 v149, s38, v118
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v147, 0x80000000, v147, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s2, s28
	v_add_nc_u32_e32 v150, s38, v119
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v148, 0x80000000, v148, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s29
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s38, s50
	v_cndmask_b32_e64 v149, 0x80000000, v149, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s30
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s39, s51
	v_cndmask_b32_e64 v150, 0x80000000, v150, s3
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
	v_cmp_eq_u32_e64 s3, s62, v131
	v_cmp_eq_u32_e64 s20, s62, v132
	v_cmp_eq_u32_e64 s28, s62, v127
	v_cmp_eq_u32_e64 s30, s62, v129
	v_cmp_eq_u32_e64 s21, s62, v133
	v_cmp_eq_u32_e64 s23, s62, v135
	v_cmp_eq_u32_e64 s24, s62, v136
	v_cmp_eq_u32_e64 s29, s62, v128
	v_cmp_eq_u32_e64 s22, s62, v134
	v_cmp_eq_u32_e64 s25, s62, v137
	v_cmp_eq_u32_e64 s26, s62, v138
	v_cmp_eq_u32_e64 s27, s62, v130
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s3, s3, s61
	s_and_b32 s20, s20, s61
	s_and_b32 s28, s28, s61
	s_and_b32 s30, s30, s61
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v151, 0, v65
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s21, s21, s61
	s_and_b32 s23, s23, s61
	s_and_b32 s24, s24, s61
	s_and_b32 s22, s22, s61
	s_and_b32 s25, s25, s61
	s_and_b32 s26, s26, s61
	s_and_b32 s27, s27, s61
	s_and_b32 s29, s29, s61
	.loc	1 1498 38                       ; ragged.py:1498:38
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
	v_cndmask_b16 v127.h, v140.l, v127.h, s20
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v131.h, v148.l, v131.h, s28
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v128.l, v141.l, v128.l, s21
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v132.h, v150.l, v132.h, s30
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v129.l, v143.l, v129.l, s23
	v_cndmask_b16 v129.h, v144.l, v129.h, s24
	v_cndmask_b16 v128.h, v142.l, v128.h, s22
	v_cndmask_b16 v130.l, v145.l, v130.l, s25
	v_cndmask_b16 v130.h, v146.l, v130.h, s26
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v131.l, v147.l, v131.l, s27
	v_cndmask_b16 v132.l, v149.l, v132.l, s29
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
	v_perm_b32 v140, v138, v137, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_store_b32 v152, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[127:130], v153 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v154 offset1:1
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v138, v156, v155, 0xc0c0004
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v137, v158, v157, 0xc0c0004
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v142, v136, v135, 0xc0c0004
	v_perm_b32 v148, v162, v161, 0xc0c0004
	v_perm_b32 v150, v160, v159, 0xc0c0004
	v_perm_b32 v144, v151, v169, 0xc0c0004
	v_perm_b32 v146, v168, v167, 0xc0c0004
	v_perm_b32 v151, v166, v165, 0xc0c0004
	v_perm_b32 v152, v164, v163, 0xc0c0004
	v_lshl_or_b32 v136, v147, 16, v149
	v_lshl_or_b32 v135, v139, 16, v141
	v_lshl_or_b32 v138, v138, 16, v137
	v_lshl_or_b32 v137, v143, 16, v145
	v_lshl_or_b32 v140, v142, 16, v140
	v_lshl_or_b32 v139, v150, 16, v148
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[127:128], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v146, 16, v144
	v_lshl_or_b32 v127, v152, 16, v151
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[137:138], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[131:132], v[127:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[127:128], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge23
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v108, 16, 1
	v_bfe_u32 v6, v102, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_bfe_u32 v4, v107, 16, 1
	v_bfe_u32 v5, v104, 16, 1
	v_add3_u32 v1, v108, v1, 0x7fff
	v_add3_u32 v6, v102, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v102, v102
	v_bfe_u32 v10, v95, 16, 1
	v_mov_b16_e32 v3.h, 0
	v_cmp_o_f32_e64 s0, v107, v107
	v_add3_u32 v4, v107, v4, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v5, v104, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_bfe_u32 v8, v99, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_bfe_u32 v9, v98, 16, 1
	v_add3_u32 v10, v95, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v95, v95
	v_bfe_u32 v14, v85, 16, 1
	v_mov_b16_e32 v3.l, v63.h
	v_bfe_u32 v7, v100, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v8, v99, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_add3_u32 v9, v98, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_bfe_u32 v12, v87, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_bfe_u32 v13, v86, 16, 1
	v_add3_u32 v14, v85, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v85, v85
	v_mov_b16_e32 v18.h, v3.h
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v7, v100, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v100, v100
	v_bfe_u32 v11, v92, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_add3_u32 v12, v87, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_add3_u32 v13, v86, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v86, v86
	v_bfe_u32 v16, v81, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_bfe_u32 v17, v78, 16, 1
	v_mov_b16_e32 v18.l, v60.h
	v_add3_u32 v3, v63, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_bfe_u32 v20, v62, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v11, v92, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v92, v92
	v_bfe_u32 v15, v84, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v16, v81, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_add3_u32 v17, v78, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v78, v78
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v19.h, 0x7fff, v3.h, s1
	v_add3_u32 v20, v62, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v62, v62
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_add3_u32 v15, v84, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v84, v84
	v_cndmask_b16 v3.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_add3_u32 v17, v60, v18, 0x7fff
	v_bfe_u32 v18, v64, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_bfe_u32 v21, v61, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v57, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v18, v64, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_add3_u32 v21, v61, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v61, v61
	v_cndmask_b16 v19.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v59, 16, 1
	v_add3_u32 v20, v57, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_cndmask_b16 v1.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v21.h, s2
	v_bfe_u32 v18, v58, 16, 1
	v_add3_u32 v17, v59, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_bfe_u32 v21, v56, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v53, 16, 1
	v_add3_u32 v18, v58, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v21, v56, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v56, v56
	v_cndmask_b16 v6.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v55, 16, 1
	v_add3_u32 v20, v53, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_cndmask_b16 v7.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v9.h, 0x7fff, v21.h, s2
	v_bfe_u32 v18, v54, 16, 1
	v_add3_u32 v17, v55, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_bfe_u32 v21, v52, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v20.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v20, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v18, v54, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_add3_u32 v21, v52, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_cndmask_b16 v10.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v51, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v22, 2, v20
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v11.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v13.h, 0x7fff, v21.h, s2
	v_bfe_u32 v18, v50, 16, 1
	v_add3_u32 v17, v51, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v21, v49, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v22, v46, 9, v22
	v_lshl_or_b32 v24, v47, 1, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v18, v50, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_add3_u32 v21, v49, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v17, v22, v24
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v23, v44, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v21.h, s1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 0xe0, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v18, 0, v17
	v_xad_u32 v21, v17, 4, 0
	v_xad_u32 v26, 0x2040, v17, 0
	v_xad_u32 v29, 0x2044, v17, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v23, v44, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v44, v44
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v22, v17, 8, 0
	ds_store_b32 v18, v19
	ds_store_b32 v26, v10
	ds_store_b32 v21, v1
	ds_store_b32 v29, v11
	v_lshlrev_b32_e32 v1, 2, v46
	v_xad_u32 v10, 0x2048, v17, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v23, v17, 12, 0
	ds_store_b32 v22, v4
	ds_store_b32 v10, v12
	v_lshrrev_b32_e32 v4, 3, v2
	v_lshl_or_b32 v1, v2, 4, v1
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	v_xad_u32 v11, 0x204c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v11, v13
	v_cndmask_b32_e64 v5, 0x2040, 0, vcc_lo
	v_xor_b32_e32 v1, v1, v4
	v_xad_u32 v24, v17, 16, 0
	v_xad_u32 v2, 0x2050, v17, 0
	v_xad_u32 v25, v17, 20, 0
	v_xad_u32 v4, 0x2054, v17, 0
	v_xad_u32 v27, v17, 24, 0
	v_or_b32_e32 v1, v1, v5
	ds_store_b32 v24, v6
	ds_store_b32 v2, v14
	v_xad_u32 v2, 0x2058, v17, 0
	v_xad_u32 v28, v17, 28, 0
	ds_store_b32 v25, v7
	ds_store_b32 v4, v15
	v_xad_u32 v4, 0x205c, v17, 0
	ds_store_b32 v27, v8
	ds_store_b32 v2, v3
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	ds_store_b32 v28, v9
	ds_store_b32 v4, v16
	v_xad_u32 v4, 0x1020, v1, 0
	v_xad_u32 v17, 0x1060, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v2 offset1:32
	ds_load_2addr_b32 v[5:6], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[15:16], v3 offset1:32
	ds_load_2addr_b32 v[7:8], v3 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v4 offset1:32
	ds_load_2addr_b32 v[1:2], v4 offset0:64 offset1:96
	ds_load_2addr_b32 v[11:12], v17 offset1:32
	ds_load_2addr_b32 v[3:4], v17 offset0:64 offset1:96
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s35, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s56, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s33, 5, v20
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
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v13, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_10:
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
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v9, v11, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
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
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v14, v16, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
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
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v10, v12, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
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
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v5, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
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
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v8, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
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
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 64, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v13, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 0x48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s31, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v13, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v9, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v9, 0x50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s31, v9
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v9, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v9, 0x58, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s31, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v10, v12, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[13:14], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s46, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v11, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v9, 0x60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s31, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[9:10], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v5, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v5, 0x68, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s31, v5
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v5, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v1, 0x70, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s47, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 0x78, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s31, v1
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
	v_add_co_u32 v0, vcc_lo, s46, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s47, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_40:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_sgpr 65
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 170
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 65
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8684
; TotalNumSgprs: 67
; NumVgprs: 170
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 67
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     67
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
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
