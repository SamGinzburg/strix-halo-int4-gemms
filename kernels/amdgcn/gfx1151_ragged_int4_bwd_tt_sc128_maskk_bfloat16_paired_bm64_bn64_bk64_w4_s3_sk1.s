	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x30
	s_load_b128 s[56:59], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v74, 5, v0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s73, 63
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
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_and_b32 v76, 15, v0
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v78, 32, v0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v134, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v77, 64, v0
	v_and_b32_e32 v75, 16, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_and_b32_e32 v33, 31, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v73, 4, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v72, 8, v74
	v_or_b32_e32 v71, 12, v74
	v_or_b32_e32 v70, 16, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_cvt_u32_f32 s7, s7
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v69, 20, v74
	v_or_b32_e32 v68, 24, v74
	v_or_b32_e32 v67, 28, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_mul_i32 s8, s8, s7
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v66, 32, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_mul_hi_u32 s8, s7, s8
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v65, 36, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v64, 40, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v63, 44, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v62, 48, v74
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_cselect_b32 s5, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s38, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s38, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v61, 52, v74
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v60, 56, v74
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_ashr_i32 s8, s8, 31
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v59, 60, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
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
	s_ashr_i32 s39, s38, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[38:39], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s74, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s75, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	s_mov_b32 s57, 0
	s_load_b32 s39, s[4:5], 0x0
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s56, s38, s72
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s34, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s34, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph70
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b256 s[48:55], s[0:1], 0x0
	s_load_b64 s[36:37], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 2, v77
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v124, 6, v77
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 4, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v2, v2, v76
	v_lshrrev_b32_e32 v4, 1, v78
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s41, s34, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s40, s75, 6
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s41, s34, s41
	v_mad_u64_u32 v[34:35], null, s72, v124, v[1:2]
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v10, s74, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v101, v3, v4, s40
	v_or_b32_e32 v3, s40, v62
	v_or_b32_e32 v4, s40, v61
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s76, s41, 1
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[35:36], null, s36, v74, v[33:34]
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s41, s39, 31
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s77, s3, 5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s41, s39, s41
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s38, s73
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v7, 32, v2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s73, v3
	v_mad_u64_u32 v[36:37], null, s72, 6, v[34:35]
	v_mad_u64_u32 v[37:38], null, s72, 10, v[34:35]
	v_mad_u64_u32 v[38:39], null, s72, 12, v[34:35]
	v_mad_u64_u32 v[39:40], null, s72, 14, v[34:35]
	v_mad_u64_u32 v[40:41], null, s72, 18, v[34:35]
	v_mad_u64_u32 v[41:42], null, s72, 20, v[34:35]
	v_mad_u64_u32 v[42:43], null, s72, 22, v[34:35]
	v_mad_u64_u32 v[43:44], null, s72, 24, v[34:35]
	v_mad_u64_u32 v[44:45], null, s72, 26, v[34:35]
	v_mad_u64_u32 v[45:46], null, s72, 28, v[34:35]
	v_mad_u64_u32 v[46:47], null, s72, 30, v[34:35]
	v_cmp_gt_i32_e64 s15, s73, v4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s78, s41, 1
	s_and_b32 s61, s49, 0xffff
	s_add_i32 s81, s40, s3
	s_and_b32 s65, s51, 0xffff
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v3, 5, v76
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v1, 24, v1
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v4, 4, v78
	v_mad_u64_u32 v[47:48], null, s36, 12, v[35:36]
	s_bitcmp1_b32 s39, 0
	v_mad_u64_u32 v[48:49], null, s36, 20, v[35:36]
	v_mad_u64_u32 v[49:50], null, s36, 24, v[35:36]
	s_cselect_b32 s82, -1, 0
	s_add_i32 s3, s74, s56
	v_mad_u64_u32 v[50:51], null, s36, 28, v[35:36]
	v_mad_u64_u32 v[51:52], null, s36, 36, v[35:36]
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v11, s74, v2
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v142, 0, v2
	v_or3_b32 v145, v3, v1, v4
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v1, s3, v2
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, s3, v7
	v_mad_u64_u32 v[52:53], null, s36, 40, v[35:36]
	v_mad_u64_u32 v[53:54], null, s36, 44, v[35:36]
	v_mad_u64_u32 v[54:55], null, s36, 48, v[35:36]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, s40, v74
	v_or_b32_e32 v6, s40, v73
	v_or_b32_e32 v8, s40, v72
	v_or_b32_e32 v9, s40, v71
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v12, s74, v7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s40, v70
	v_or_b32_e32 v14, s40, v69
	v_or_b32_e32 v15, s40, v68
	v_or_b32_e32 v16, s40, v67
	v_or_b32_e32 v17, s40, v66
	v_or_b32_e32 v18, s40, v65
	v_or_b32_e32 v19, s40, v64
	v_or_b32_e32 v20, s40, v63
	v_or_b32_e32 v21, s40, v60
	v_or_b32_e32 v22, s40, v59
	v_or_b32_e32 v102, 2, v101
	v_or_b32_e32 v103, 4, v101
	v_or_b32_e32 v104, 6, v101
	v_or_b32_e32 v106, 8, v101
	v_or_b32_e32 v107, 10, v101
	v_or_b32_e32 v109, 12, v101
	v_or_b32_e32 v110, 14, v101
	v_or_b32_e32 v112, 32, v101
	v_or_b32_e32 v113, 34, v101
	v_or_b32_e32 v114, 36, v101
	v_or_b32_e32 v115, 38, v101
	v_or_b32_e32 v116, 40, v101
	v_or_b32_e32 v117, 42, v101
	v_or_b32_e32 v118, 44, v101
	v_or_b32_e32 v120, 46, v101
	v_mad_u64_u32 v[55:56], null, s36, 52, v[35:36]
	v_mad_u64_u32 v[56:57], null, s36, 56, v[35:36]
	v_mul_lo_u32 v150, v1, s37
	v_mul_lo_u32 v151, v2, s37
	v_mad_u64_u32 v[57:58], null, s36, 60, v[35:36]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v11
	v_cmp_gt_i32_e64 s1, s72, v12
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s73, v5
	v_cmp_gt_i32_e64 s35, s73, v6
	v_cmp_gt_i32_e64 s4, s73, v8
	v_cmp_gt_i32_e64 s5, s73, v9
	v_cmp_gt_i32_e64 s6, s73, v13
	v_cmp_gt_i32_e64 s7, s73, v14
	v_cmp_gt_i32_e64 s8, s73, v15
	v_cmp_gt_i32_e64 s9, s73, v16
	v_cmp_gt_i32_e64 s10, s73, v17
	v_cmp_gt_i32_e64 s11, s73, v18
	v_cmp_gt_i32_e64 s12, s73, v19
	v_cmp_gt_i32_e64 s13, s73, v20
	v_cmp_gt_i32_e64 s16, s73, v21
	v_cmp_gt_i32_e64 s17, s73, v22
	v_cmp_gt_i32_e64 s18, s73, v101
	v_cmp_gt_i32_e64 s19, s73, v102
	v_cmp_gt_i32_e64 s20, s73, v103
	v_cmp_gt_i32_e64 s21, s73, v104
	v_cmp_gt_i32_e64 s22, s73, v106
	v_cmp_gt_i32_e64 s23, s73, v107
	v_cmp_gt_i32_e64 s24, s73, v109
	v_cmp_gt_i32_e64 s25, s73, v110
	v_cmp_gt_i32_e64 s26, s73, v112
	v_cmp_gt_i32_e64 s27, s73, v113
	v_cmp_gt_i32_e64 s28, s73, v114
	v_cmp_gt_i32_e64 s29, s73, v115
	v_cmp_gt_i32_e64 s30, s73, v116
	v_cmp_gt_i32_e64 s31, s73, v117
	v_cmp_gt_i32_e64 s33, s73, v118
	v_cmp_gt_i32_e64 s34, s73, v120
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v126, 22, v124
	v_or_b32_e32 v127, 24, v124
	v_or_b32_e32 v128, 26, v124
	v_or_b32_e32 v129, 28, v124
	v_or_b32_e32 v130, 30, v124
	v_lshl_add_u32 v131, s72, 1, v34
	v_lshl_add_u32 v132, s72, 2, v34
	v_lshl_add_u32 v133, s72, 3, v34
	v_lshl_add_u32 v135, s72, 4, v34
	v_lshl_add_u32 v136, s36, 2, v35
	v_lshl_add_u32 v137, s36, 3, v35
	v_lshl_add_u32 v138, s36, 4, v35
	v_lshl_add_u32 v139, s36, 5, v35
	v_or_b32_e32 v140, 0x380, v0
	v_or_b32_e32 v141, 0x780, v0
	v_xor_b32_e32 v143, 0x88, v0
	v_xor_b32_e32 v144, 0x110, v0
	v_xor_b32_e32 v146, 0x198, v0
	v_xor_b32_e32 v147, 8, v145
	v_xor_b32_e32 v148, 16, v145
	v_xor_b32_e32 v149, 24, v145
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v93, 0
	s_add_i32 s83, s76, -1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s79, s38, s36
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s80, s38, s37
	s_mov_b32 s60, s48
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_mul_i32 s81, s81, s36
	s_mov_b32 s64, s50
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s69, s55, 0xffff
	s_mov_b32 s68, s54
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s84, s83, 6
	s_mov_b32 s3, 0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s72, v10
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v152, v150, s57, 1
	v_add_lshl_u32 v153, v151, s57, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s57, s80
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s54, s62
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s73
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v152, 0x80000000, v152, s0
	v_cndmask_b32_e64 v153, 0x80000000, v153, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v154, v101, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s55, s63
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v155, v102, s3, 1
	v_add_lshl_u32 v156, v103, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v152, v152, s[52:55], 0 offen
	buffer_load_u16 v153, v153, s[52:55], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v157, v104, s3, 1
	v_add_lshl_u32 v162, v112, s3, 1
	v_add_lshl_u32 v158, v106, s3, 1
	v_add_lshl_u32 v159, v107, s3, 1
	v_add_lshl_u32 v160, v109, s3, 1
	v_add_lshl_u32 v161, v110, s3, 1
	v_add_lshl_u32 v163, v113, s3, 1
	v_cndmask_b32_e64 v154, 0x80000000, v154, s18
	v_add_lshl_u32 v164, v114, s3, 1
	v_cndmask_b32_e64 v155, 0x80000000, v155, s19
	v_add_lshl_u32 v165, v115, s3, 1
	v_cndmask_b32_e64 v156, 0x80000000, v156, s20
	v_add_lshl_u32 v166, v116, s3, 1
	v_add_lshl_u32 v167, v117, s3, 1
	v_add_lshl_u32 v168, v118, s3, 1
	v_add_lshl_u32 v169, v120, s3, 1
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	v_cndmask_b32_e64 v157, 0x80000000, v157, s21
	v_cndmask_b32_e64 v162, 0x80000000, v162, s26
	v_cndmask_b32_e64 v158, 0x80000000, v158, s22
	v_cndmask_b32_e64 v159, 0x80000000, v159, s23
	v_cndmask_b32_e64 v160, 0x80000000, v160, s24
	v_cndmask_b32_e64 v161, 0x80000000, v161, s25
	v_cndmask_b32_e64 v163, 0x80000000, v163, s27
	s_clause 0x7
	buffer_load_u16 v154, v154, s[68:71], 0 offen
	buffer_load_u16 v155, v155, s[68:71], 0 offen
	buffer_load_u16 v156, v156, s[68:71], 0 offen
	buffer_load_u16 v157, v157, s[68:71], 0 offen
	buffer_load_u16 v158, v158, s[68:71], 0 offen
	buffer_load_u16 v159, v159, s[68:71], 0 offen
	buffer_load_u16 v160, v160, s[68:71], 0 offen
	buffer_load_u16 v161, v161, s[68:71], 0 offen
	v_cndmask_b32_e64 v164, 0x80000000, v164, s28
	v_cndmask_b32_e64 v165, 0x80000000, v165, s29
	v_cndmask_b32_e64 v166, 0x80000000, v166, s30
	v_cndmask_b32_e64 v167, 0x80000000, v167, s31
	v_cndmask_b32_e64 v168, 0x80000000, v168, s33
	v_cndmask_b32_e64 v169, 0x80000000, v169, s34
	s_clause 0x7
	buffer_load_u16 v162, v162, s[68:71], 0 offen
	buffer_load_u16 v163, v163, s[68:71], 0 offen
	buffer_load_u16 v164, v164, s[68:71], 0 offen
	buffer_load_u16 v165, v165, s[68:71], 0 offen
	buffer_load_u16 v166, v166, s[68:71], 0 offen
	buffer_load_u16 v167, v167, s[68:71], 0 offen
	buffer_load_u16 v168, v168, s[68:71], 0 offen
	buffer_load_u16 v169, v169, s[68:71], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v29, v29
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
	s_add_i32 s36, s57, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s36, 6
	s_cmp_lg_u32 s57, s84
	s_mov_b32 s57, s36
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v26, v152, v26 :: v_dual_lshlrev_b32 v153, 16, v153
	v_mul_f32_e32 v1, v1, v153
	v_mul_f32_e32 v27, v152, v27
	v_mul_f32_e32 v28, v152, v28
	v_mul_f32_e32 v30, v152, v30
	v_mul_f32_e32 v29, v152, v29
	v_mul_f32_e32 v31, v152, v31
	v_mul_f32_e32 v32, v152, v32
	v_mul_f32_e32 v17, v152, v17
	v_mul_f32_e32 v18, v152, v18
	v_mul_f32_e32 v19, v152, v19
	v_mul_f32_e32 v20, v152, v20
	v_mul_f32_e32 v21, v152, v21
	v_mul_f32_e32 v22, v152, v22
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v23, v152, v23 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v160, 16, v160
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v24, v152, v24 :: v_dual_lshlrev_b32 v167, 16, v167
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v3, v153, v3 :: v_dual_lshlrev_b32 v168, 16, v168
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, v153, v2 :: v_dual_lshlrev_b32 v169, 16, v169
	v_dual_mul_f32 v25, v25, v152 :: v_dual_fmac_f32 v134, v26, v155
	v_dual_mul_f32 v4, v153, v4 :: v_dual_fmac_f32 v123, v28, v157
	v_dual_mul_f32 v5, v153, v5 :: v_dual_fmac_f32 v100, v19, v164
	v_dual_mul_f32 v6, v153, v6 :: v_dual_fmac_f32 v125, v27, v156
	v_dual_mul_f32 v7, v153, v7 :: v_dual_fmac_f32 v96, v23, v168
	v_dual_mul_f32 v8, v153, v8 :: v_dual_fmac_f32 v121, v30, v159
	v_dual_mul_f32 v9, v153, v9 :: v_dual_fmac_f32 v92, v2, v155
	v_dual_mul_f32 v10, v153, v10 :: v_dual_fmac_f32 v119, v31, v160
	v_dual_mul_f32 v11, v153, v11 :: v_dual_fmac_f32 v90, v4, v157
	v_dual_mul_f32 v12, v153, v12 :: v_dual_fmac_f32 v111, v32, v161
	v_dual_mul_f32 v13, v153, v13 :: v_dual_fmac_f32 v88, v6, v159
	v_dual_mul_f32 v14, v153, v14 :: v_dual_fmac_f32 v105, v18, v163
	v_dual_mul_f32 v15, v153, v15 :: v_dual_fmac_f32 v86, v8, v161
	v_dual_mul_f32 v16, v153, v16 :: v_dual_fmac_f32 v99, v20, v165
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v122, v29, v158 :: v_dual_fmac_f32 v97, v22, v167
	v_dual_fmac_f32 v108, v17, v162 :: v_dual_fmac_f32 v95, v24, v169
	v_dual_fmac_f32 v98, v21, v166 :: v_dual_fmac_f32 v91, v3, v156
	v_dual_fmac_f32 v93, v25, v154 :: v_dual_fmac_f32 v84, v10, v163
	v_dual_fmac_f32 v94, v1, v154 :: v_dual_fmac_f32 v87, v7, v160
	v_dual_fmac_f32 v89, v5, v158 :: v_dual_fmac_f32 v82, v12, v165
	v_dual_fmac_f32 v85, v9, v162 :: v_dual_fmac_f32 v80, v14, v167
	v_dual_fmac_f32 v83, v11, v164 :: v_dual_fmac_f32 v58, v16, v169
	v_fmac_f32_e32 v81, v13, v166
	v_fmac_f32_e32 v79, v15, v168
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s36, s78, s3
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v2, s36, 0, 64
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s36, v2
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
	s_and_b32 s37, s36, 0x60
	s_mov_b32 s36, s77
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s77, s37
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s36, s77
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
	s_add_i32 s38, s36, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s66, s62
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s39, s38, s79
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_add_i32 s38, s38, s81
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s39, s39, s72
	v_add_nc_u32_e32 v152, s38, v35
	v_add_nc_u32_e32 v153, s38, v136
	v_add_nc_u32_e32 v154, s38, v137
	s_add_i32 s39, s39, s74
	v_add_nc_u32_e32 v155, s38, v47
	v_add_nc_u32_e32 v156, s38, v138
	v_add_nc_u32_e32 v157, s38, v48
	v_add_nc_u32_e32 v158, s38, v49
	v_add_nc_u32_e32 v159, s38, v50
	v_add_nc_u32_e32 v160, s38, v139
	v_add_nc_u32_e32 v161, s38, v51
	v_add_nc_u32_e32 v162, s38, v52
	v_add_nc_u32_e32 v163, s38, v53
	v_add_nc_u32_e32 v164, s38, v54
	v_add_nc_u32_e32 v165, s38, v55
	v_add_nc_u32_e32 v166, s38, v56
	v_add_nc_u32_e32 v167, s38, v57
	v_add_nc_u32_e32 v168, s39, v34
	v_add_nc_u32_e32 v169, s39, v131
	v_add_nc_u32_e32 v170, s39, v132
	v_add_nc_u32_e32 v171, s39, v36
	v_add_nc_u32_e32 v172, s39, v133
	v_add_nc_u32_e32 v173, s39, v37
	v_add_nc_u32_e32 v174, s39, v38
	v_add_nc_u32_e32 v175, s39, v39
	v_add_nc_u32_e32 v176, s39, v135
	v_add_nc_u32_e32 v177, s39, v40
	v_add_nc_u32_e32 v178, s39, v41
	v_add_nc_u32_e32 v179, s39, v42
	v_add_nc_u32_e32 v180, s39, v43
	v_add_nc_u32_e32 v181, s39, v44
	v_add_nc_u32_e32 v182, s39, v45
	v_add_nc_u32_e32 v183, s39, v46
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s35
	v_cndmask_b32_e64 v154, 0x80000000, v154, s4
	s_mov_b32 s67, s63
	v_cndmask_b32_e64 v155, 0x80000000, v155, s5
	v_cndmask_b32_e64 v156, 0x80000000, v156, s6
	v_cndmask_b32_e64 v157, 0x80000000, v157, s7
	v_cndmask_b32_e64 v158, 0x80000000, v158, s8
	v_cndmask_b32_e64 v159, 0x80000000, v159, s9
	v_cndmask_b32_e64 v160, 0x80000000, v160, s10
	v_cndmask_b32_e64 v161, 0x80000000, v161, s11
	v_cndmask_b32_e64 v162, 0x80000000, v162, s12
	v_cndmask_b32_e64 v163, 0x80000000, v163, s13
	v_cndmask_b32_e64 v164, 0x80000000, v164, s14
	v_cndmask_b32_e64 v165, 0x80000000, v165, s15
	v_cndmask_b32_e64 v166, 0x80000000, v166, s16
	v_cndmask_b32_e64 v167, 0x80000000, v167, s17
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v168, 0x80000000, v168 :: v_dual_cndmask_b32 v169, 0x80000000, v169
	v_dual_cndmask_b32 v170, 0x80000000, v170 :: v_dual_cndmask_b32 v171, 0x80000000, v171
	v_dual_cndmask_b32 v172, 0x80000000, v172 :: v_dual_cndmask_b32 v173, 0x80000000, v173
	v_dual_cndmask_b32 v174, 0x80000000, v174 :: v_dual_cndmask_b32 v175, 0x80000000, v175
	v_dual_cndmask_b32 v176, 0x80000000, v176 :: v_dual_cndmask_b32 v177, 0x80000000, v177
	v_dual_cndmask_b32 v178, 0x80000000, v178 :: v_dual_cndmask_b32 v179, 0x80000000, v179
	v_dual_cndmask_b32 v180, 0x80000000, v180 :: v_dual_cndmask_b32 v181, 0x80000000, v181
	v_dual_cndmask_b32 v182, 0x80000000, v182 :: v_dual_cndmask_b32 v183, 0x80000000, v183
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xe
	buffer_load_u8 v152, v152, s[64:67], 0 offen
	buffer_load_u8 v153, v153, s[64:67], 0 offen
	buffer_load_u8 v154, v154, s[64:67], 0 offen
	buffer_load_u8 v155, v155, s[64:67], 0 offen
	buffer_load_u8 v156, v156, s[64:67], 0 offen
	buffer_load_u8 v157, v157, s[64:67], 0 offen
	buffer_load_u8 v158, v158, s[64:67], 0 offen
	buffer_load_u8 v159, v159, s[64:67], 0 offen
	buffer_load_u8 v160, v160, s[64:67], 0 offen
	buffer_load_u8 v161, v161, s[64:67], 0 offen
	buffer_load_u8 v162, v162, s[64:67], 0 offen
	buffer_load_u8 v163, v163, s[64:67], 0 offen
	buffer_load_u8 v164, v164, s[64:67], 0 offen
	buffer_load_u8 v165, v165, s[64:67], 0 offen
	buffer_load_u8 v166, v166, s[64:67], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0xf
	buffer_load_u8 v168, v168, s[60:63], 0 offen
	buffer_load_u8 v169, v169, s[60:63], 0 offen
	buffer_load_u8 v170, v170, s[60:63], 0 offen
	buffer_load_u8 v171, v171, s[60:63], 0 offen
	buffer_load_u8 v172, v172, s[60:63], 0 offen
	buffer_load_u8 v173, v173, s[60:63], 0 offen
	buffer_load_u8 v174, v174, s[60:63], 0 offen
	buffer_load_u8 v176, v176, s[60:63], 0 offen
	buffer_load_u8 v177, v177, s[60:63], 0 offen
	buffer_load_u8 v178, v178, s[60:63], 0 offen
	buffer_load_u8 v179, v179, s[60:63], 0 offen
	buffer_load_u8 v180, v180, s[60:63], 0 offen
	buffer_load_u8 v181, v181, s[60:63], 0 offen
	buffer_load_u8 v175, v175, s[60:63], 0 offen
	buffer_load_u8 v182, v182, s[60:63], 0 offen
	buffer_load_u8 v183, v183, s[60:63], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_u8 v167, v167, s[64:67], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v184, 0, v0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v190, 0, v145
	v_add_nc_u32_e32 v191, 0, v147
	v_add_nc_u32_e32 v192, 0, v148
	v_add_nc_u32_e32 v193, 0, v149
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v185, 0, v140
	v_add_nc_u32_e32 v186, 0, v141
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v187, 0, v143
	v_add_nc_u32_e32 v188, 0, v144
	v_add_nc_u32_e32 v189, 0, v146
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s36, s36, 32
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(16)
	ds_store_b8 v184, v168
	s_waitcnt vmcnt(15)
	ds_store_b8 v184, v169 offset:128
	s_waitcnt vmcnt(14)
	ds_store_b8 v184, v170 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v184, v171 offset:384
	s_waitcnt vmcnt(12)
	ds_store_b8 v184, v172 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v184, v173 offset:640
	s_waitcnt vmcnt(10)
	ds_store_b8 v184, v174 offset:768
	s_waitcnt vmcnt(9)
	ds_store_b8 v184, v176 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v184, v177 offset:1152
	s_waitcnt vmcnt(7)
	ds_store_b8 v184, v178 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v184, v179 offset:1408
	s_waitcnt vmcnt(5)
	ds_store_b8 v184, v180 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v184, v181 offset:1664
	s_waitcnt vmcnt(3)
	ds_store_b8 v185, v175
	s_waitcnt vmcnt(2)
	ds_store_b8 v184, v182 offset:1792
	s_waitcnt vmcnt(1)
	ds_store_b8 v186, v183
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v168, v142 offset:448
	ds_load_u8 v169, v142 offset:384
	ds_load_u8 v170, v142 offset:320
	ds_load_u8 v171, v142 offset:256
	ds_load_u8 v172, v142 offset:480
	ds_load_u8 v173, v142 offset:416
	ds_load_u8 v174, v142 offset:352
	ds_load_u8 v175, v142 offset:288
	ds_load_u8 v176, v142 offset:192
	ds_load_u8 v177, v142 offset:128
	ds_load_u8 v178, v142 offset:64
	ds_load_u8 v179, v142 offset:224
	ds_load_u8 v180, v142 offset:160
	ds_load_u8 v181, v142 offset:96
	ds_load_u8 v182, v142
	ds_load_u8 v183, v142 offset:32
	ds_load_u8 v185, v142 offset:704
	ds_load_u8 v186, v142 offset:640
	ds_load_u8 v194, v142 offset:576
	ds_load_u8 v195, v142 offset:512
	ds_load_u8 v196, v142 offset:736
	ds_load_u8 v197, v142 offset:672
	ds_load_u8 v198, v142 offset:608
	ds_load_u8 v199, v142 offset:544
	ds_load_u8 v200, v142 offset:960
	ds_load_u8 v201, v142 offset:896
	ds_load_u8 v202, v142 offset:832
	ds_load_u8 v203, v142 offset:768
	ds_load_u8 v204, v142 offset:992
	ds_load_u8 v205, v142 offset:928
	ds_load_u8 v206, v142 offset:864
	ds_load_u8 v207, v142 offset:800
	ds_load_u8 v208, v142 offset:1216
	ds_load_u8 v209, v142 offset:1152
	ds_load_u8 v210, v142 offset:1088
	ds_load_u8 v211, v142 offset:1024
	ds_load_u8 v212, v142 offset:1248
	ds_load_u8 v213, v142 offset:1184
	ds_load_u8 v214, v142 offset:1120
	ds_load_u8 v215, v142 offset:1056
	ds_load_u8 v216, v142 offset:1472
	ds_load_u8 v217, v142 offset:1408
	ds_load_u8 v218, v142 offset:1344
	ds_load_u8 v219, v142 offset:1280
	ds_load_u8 v220, v142 offset:1504
	ds_load_u8 v221, v142 offset:1440
	ds_load_u8 v222, v142 offset:1376
	ds_load_u8 v223, v142 offset:1312
	ds_load_u8 v224, v142 offset:1728
	ds_load_u8 v225, v142 offset:1664
	ds_load_u8 v226, v142 offset:1600
	ds_load_u8 v227, v142 offset:1536
	ds_load_u8 v228, v142 offset:1760
	ds_load_u8 v229, v142 offset:1696
	ds_load_u8 v230, v142 offset:1632
	ds_load_u8 v231, v142 offset:1568
	ds_load_u8 v232, v142 offset:1984
	ds_load_u8 v233, v142 offset:1920
	ds_load_u8 v234, v142 offset:1856
	ds_load_u8 v235, v142 offset:1792
	ds_load_u8 v236, v142 offset:2016
	ds_load_u8 v237, v142 offset:1952
	ds_load_u8 v238, v142 offset:1888
	ds_load_u8 v239, v142 offset:1824
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v184, v152
	ds_store_b8 v184, v156 offset:512
	ds_store_b8 v184, v160 offset:1024
	ds_store_b8 v184, v164 offset:1536
	ds_store_b8 v187, v153
	ds_store_b8 v187, v157 offset:512
	ds_store_b8 v187, v161 offset:1024
	ds_store_b8 v187, v165 offset:1536
	ds_store_b8 v188, v154
	ds_store_b8 v188, v158 offset:512
	ds_store_b8 v188, v162 offset:1024
	ds_store_b8 v188, v166 offset:1536
	ds_store_b8 v189, v155
	ds_store_b8 v189, v159 offset:512
	ds_store_b8 v189, v163 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v189, v167 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[152:155], v190 offset1:2
	ds_load_2addr_stride64_b64 v[156:159], v191 offset1:2
	ds_load_2addr_stride64_b64 v[160:163], v192 offset1:2
	ds_load_2addr_stride64_b64 v[164:167], v193 offset1:2
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v170, v171, v170, 0xc0c0004
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v171, v182, v178, 0xc0c0004
	v_perm_b32 v176, v177, v176, 0xc0c0004
	v_perm_b32 v177, v203, v202, 0xc0c0004
	v_perm_b32 v178, v201, v200, 0xc0c0004
	v_perm_b32 v182, v195, v194, 0xc0c0004
	v_perm_b32 v193, v175, v174, 0xc0c0004
	v_perm_b32 v194, v173, v172, 0xc0c0004
	v_perm_b32 v181, v183, v181, 0xc0c0004
	v_perm_b32 v179, v180, v179, 0xc0c0004
	v_perm_b32 v184, v186, v185, 0xc0c0004
	v_perm_b32 v180, v207, v206, 0xc0c0004
	v_perm_b32 v183, v205, v204, 0xc0c0004
	v_perm_b32 v195, v199, v198, 0xc0c0004
	v_perm_b32 v196, v197, v196, 0xc0c0004
	v_lshl_or_b32 v169, v168, 16, v170
	v_lshl_or_b32 v168, v176, 16, v171
	v_lshl_or_b32 v171, v178, 16, v177
	v_lshl_or_b32 v177, v194, 16, v193
	v_lshl_or_b32 v176, v179, 16, v181
	v_perm_b32 v185, v219, v218, 0xc0c0004
	v_perm_b32 v186, v217, v216, 0xc0c0004
	v_perm_b32 v187, v211, v210, 0xc0c0004
	v_perm_b32 v188, v209, v208, 0xc0c0004
	v_perm_b32 v197, v223, v222, 0xc0c0004
	v_perm_b32 v198, v221, v220, 0xc0c0004
	v_perm_b32 v199, v215, v214, 0xc0c0004
	v_perm_b32 v200, v213, v212, 0xc0c0004
	v_lshl_or_b32 v170, v184, 16, v182
	v_lshl_or_b32 v179, v183, 16, v180
	v_lshl_or_b32 v178, v196, 16, v195
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[168:169], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[168:169], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[176:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[176:177], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v189, v235, v234, 0xc0c0004
	v_perm_b32 v190, v233, v232, 0xc0c0004
	v_perm_b32 v191, v227, v226, 0xc0c0004
	v_perm_b32 v192, v225, v224, 0xc0c0004
	v_perm_b32 v201, v239, v238, 0xc0c0004
	v_perm_b32 v202, v237, v236, 0xc0c0004
	v_perm_b32 v203, v231, v230, 0xc0c0004
	v_perm_b32 v204, v229, v228, 0xc0c0004
	v_lshl_or_b32 v173, v186, 16, v185
	v_lshl_or_b32 v172, v188, 16, v187
	v_lshl_or_b32 v181, v198, 16, v197
	v_lshl_or_b32 v180, v200, 16, v199
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[170:171], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[170:171], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[156:157], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[178:179], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v190, 16, v189
	v_lshl_or_b32 v174, v192, 16, v191
	v_lshl_or_b32 v153, v202, 16, v201
	v_lshl_or_b32 v152, v204, 16, v203
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[172:173], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[162:163], v[172:173], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[160:161], v[180:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[180:181], v[9:16] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s36, s37
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[174:175], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[174:175], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[152:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[152:153], v[9:16] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s37, s76, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s51, s37, 64
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s36, s51
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v154, 2, v124
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_add_i32 s54, s36, s3
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v155, 4, v124
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v153, s54, v124
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v156, 6, v124
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v154, s54, v154
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v157, 8, v124
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v155, s54, v155
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v158, 10, v124
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v169, s3, v153
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v156, s54, v156
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s50, s54, s79
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v159, 12, v124
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v170, s3, v154
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v157, s54, v157
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s55, s50, s72
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v160, 14, v124
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v171, s3, v155
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v158, s54, v158
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s37, s51, v169
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s55, s55, s74
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v161, 16, v124
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v172, s3, v156
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v159, s54, v159
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s38, s51, v170
	v_add_nc_u32_e32 v169, s55, v34
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v162, 18, v124
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v173, s3, v157
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v160, s54, v160
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s39, s51, v171
	v_add_nc_u32_e32 v170, s55, v131
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v163, 20, v124
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v174, s3, v158
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s37
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v161, s54, v161
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s40, s51, v172
	v_add_nc_u32_e32 v171, s55, v132
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s3, v159
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s38
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v162, s54, v162
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s41, s51, v173
	v_add_nc_u32_e32 v172, s55, v36
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v176, s3, v160
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v170, 0x80000000, v170, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s39
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v163, s54, v163
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s42, s51, v174
	v_add_nc_u32_e32 v173, s55, v133
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v177, s3, v161
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v171, 0x80000000, v171, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s40
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v164, s54, v126
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s43, s51, v175
	v_add_nc_u32_e32 v174, s55, v37
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v178, s3, v162
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v172, 0x80000000, v172, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s41
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v152, s54, v33
	v_or_b32_e32 v165, s54, v127
	v_or_b32_e32 v166, s54, v128
	v_or_b32_e32 v167, s54, v129
	v_or_b32_e32 v168, s54, v130
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s44, s51, v176
	v_add_nc_u32_e32 v175, s55, v38
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v179, s3, v163
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v173, 0x80000000, v173, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s42
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s45, s51, v177
	v_add_nc_u32_e32 v176, s55, v39
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v180, s3, v164
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v174, 0x80000000, v174, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s43
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s46, s51, v178
	v_add_nc_u32_e32 v177, s55, v135
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v181, s3, v165
	v_subrev_nc_u32_e32 v182, s3, v166
	v_subrev_nc_u32_e32 v183, s3, v167
	v_subrev_nc_u32_e32 v184, s3, v168
	v_subrev_nc_u32_e32 v185, s3, v152
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s44
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s47, s51, v179
	v_add_nc_u32_e32 v178, s55, v40
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s45
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s48, s51, v180
	v_add_nc_u32_e32 v179, s55, v41
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v177, 0x80000000, v177, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s46
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s36, s51, v181
	v_cmp_gt_i32_e64 s3, s51, v182
	v_cmp_gt_i32_e64 s49, s51, v183
	v_cmp_gt_i32_e64 s50, s51, v184
	v_cmp_gt_i32_e64 s51, s51, v185
	v_add_nc_u32_e32 v180, s55, v42
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_add_i32 s54, s54, s81
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v178, 0x80000000, v178, s37
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s47
	v_add_nc_u32_e32 v185, s54, v35
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v179, 0x80000000, v179, s37
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s37, vcc_lo, s48
	v_add_nc_u32_e32 v186, s54, v136
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s37
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s37, s2, s51
	v_add_nc_u32_e32 v187, s54, v137
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v185, 0x80000000, v185, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s35, s51
	v_add_nc_u32_e32 v188, s54, v47
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s4, s51
	v_add_nc_u32_e32 v189, s54, v138
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s5, s51
	v_add_nc_u32_e32 v190, s54, v48
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s6, s51
	v_add_nc_u32_e32 v191, s54, v49
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v189, 0x80000000, v189, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s7, s51
	v_add_nc_u32_e32 v192, s54, v50
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s8, s51
	v_add_nc_u32_e32 v193, s54, v139
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s9, s51
	v_add_nc_u32_e32 v194, s54, v51
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v192, 0x80000000, v192, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s10, s51
	v_add_nc_u32_e32 v195, s54, v52
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v193, 0x80000000, v193, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s11, s51
	v_add_nc_u32_e32 v196, s54, v53
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v194, 0x80000000, v194, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s12, s51
	v_add_nc_u32_e32 v197, s54, v54
	v_add_nc_u32_e32 v182, s55, v44
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v195, 0x80000000, v195, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s13, s51
	v_add_nc_u32_e32 v198, s54, v55
	v_add_nc_u32_e32 v183, s55, v45
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v196, 0x80000000, v196, s37
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s37, s14, s51
	v_add_nc_u32_e32 v199, s54, v56
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	v_add_nc_u32_e32 v181, s55, v43
	v_add_nc_u32_e32 v184, s55, v46
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v197, 0x80000000, v197, s37
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s37, s15, s51
	v_add_nc_u32_e32 v200, s54, v57
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v182, 0x80000000, v182, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s49
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v198, 0x80000000, v198, s37
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s37, s16, s51
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s36
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v183, 0x80000000, v183, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s50
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	v_cndmask_b32_e64 v199, 0x80000000, v199, s37
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s37, s17, s51
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v181, 0x80000000, v181, s36
	v_cndmask_b32_e64 v184, 0x80000000, v184, s3
	s_clause 0x7
	buffer_load_u8 v169, v169, s[60:63], 0 offen
	buffer_load_u8 v170, v170, s[60:63], 0 offen
	buffer_load_u8 v171, v171, s[60:63], 0 offen
	buffer_load_u8 v172, v172, s[60:63], 0 offen
	buffer_load_u8 v173, v173, s[60:63], 0 offen
	buffer_load_u8 v174, v174, s[60:63], 0 offen
	buffer_load_u8 v175, v175, s[60:63], 0 offen
	buffer_load_u8 v176, v176, s[60:63], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v185, v185, s[64:67], 0 offen
	buffer_load_u8 v186, v186, s[64:67], 0 offen
	buffer_load_u8 v187, v187, s[64:67], 0 offen
	buffer_load_u8 v188, v188, s[64:67], 0 offen
	buffer_load_u8 v189, v189, s[64:67], 0 offen
	buffer_load_u8 v190, v190, s[64:67], 0 offen
	buffer_load_u8 v191, v191, s[64:67], 0 offen
	buffer_load_u8 v192, v192, s[64:67], 0 offen
	v_cndmask_b32_e64 v200, 0x80000000, v200, s37
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x7
	buffer_load_u8 v177, v177, s[60:63], 0 offen
	buffer_load_u8 v178, v178, s[60:63], 0 offen
	buffer_load_u8 v179, v179, s[60:63], 0 offen
	buffer_load_u8 v180, v180, s[60:63], 0 offen
	buffer_load_u8 v181, v181, s[60:63], 0 offen
	buffer_load_u8 v182, v182, s[60:63], 0 offen
	buffer_load_u8 v183, v183, s[60:63], 0 offen
	buffer_load_u8 v184, v184, s[60:63], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v193, v193, s[64:67], 0 offen
	buffer_load_u8 v194, v194, s[64:67], 0 offen
	buffer_load_u8 v195, v195, s[64:67], 0 offen
	buffer_load_u8 v196, v196, s[64:67], 0 offen
	buffer_load_u8 v197, v197, s[64:67], 0 offen
	buffer_load_u8 v198, v198, s[64:67], 0 offen
	buffer_load_u8 v199, v199, s[64:67], 0 offen
	buffer_load_u8 v200, v200, s[64:67], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s83, v153
	v_cmp_eq_u32_e64 s41, s83, v152
	v_cmp_eq_u32_e64 s42, s83, v154
	v_cmp_eq_u32_e64 s43, s83, v155
	v_cmp_eq_u32_e64 s44, s83, v156
	v_cmp_eq_u32_e64 s48, s83, v160
	v_cmp_eq_u32_e64 s36, s83, v164
	v_cmp_eq_u32_e64 s37, s83, v165
	v_cmp_eq_u32_e64 s38, s83, v166
	v_cmp_eq_u32_e64 s39, s83, v167
	v_cmp_eq_u32_e64 s40, s83, v168
	v_cmp_eq_u32_e64 s45, s83, v157
	v_cmp_eq_u32_e64 s46, s83, v158
	v_cmp_eq_u32_e64 s47, s83, v159
	v_cmp_eq_u32_e64 s49, s83, v161
	v_cmp_eq_u32_e64 s50, s83, v162
	v_cmp_eq_u32_e64 s51, s83, v163
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s3, s3, s82
	s_and_b32 s41, s41, s82
	s_and_b32 s42, s42, s82
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v201, 0, v0
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s43, s43, s82
	s_and_b32 s44, s44, s82
	s_and_b32 s36, s36, s82
	s_and_b32 s37, s37, s82
	s_and_b32 s38, s38, s82
	s_and_b32 s39, s39, s82
	s_and_b32 s40, s40, s82
	s_and_b32 s45, s45, s82
	s_and_b32 s46, s46, s82
	s_and_b32 s47, s47, s82
	s_and_b32 s48, s48, s82
	s_and_b32 s49, s49, s82
	s_and_b32 s50, s50, s82
	s_and_b32 s51, s51, s82
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v202, 0, v140
	v_add_nc_u32_e32 v203, 0, v141
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v227, 0, v144
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(31)
	v_and_b16 v152.l, v169.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(23)
	v_and_b16 v152.h, v185.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v160.h, v170.l, 15
	v_and_b16 v161.l, v171.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v156.h, v193.l, 15
	v_and_b16 v154.h, v189.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v161.h, v172.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v153.l, v186.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v158.h, v197.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v162.l, v173.l, 15
	v_and_b16 v162.h, v174.l, 15
	v_and_b16 v163.l, v175.l, 15
	v_and_b16 v163.h, v176.l, 15
	v_and_b16 v164.l, v177.l, 15
	v_and_b16 v164.h, v178.l, 15
	v_and_b16 v165.l, v179.l, 15
	v_and_b16 v165.h, v180.l, 15
	v_and_b16 v166.l, v181.l, 15
	v_and_b16 v166.h, v182.l, 15
	v_and_b16 v167.l, v183.l, 15
	v_and_b16 v167.h, v184.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v153.h, v187.l, 15
	v_and_b16 v154.l, v188.l, 15
	v_and_b16 v155.l, v190.l, 15
	v_and_b16 v155.h, v191.l, 15
	v_and_b16 v156.l, v192.l, 15
	v_and_b16 v157.l, v194.l, 15
	v_and_b16 v157.h, v195.l, 15
	v_and_b16 v158.l, v196.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v159.l, v198.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v159.h, v199.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v160.l, v200.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v152.l, v169.l, v152.l, s3
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v152.h, v185.l, v152.h, s41
	v_cndmask_b16 v154.h, v189.l, v154.h, s41
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v160.h, v170.l, v160.h, s42
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v156.h, v193.l, v156.h, s41
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v161.l, v171.l, v161.l, s43
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v158.h, v197.l, v158.h, s41
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v161.h, v172.l, v161.h, s44
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v153.l, v186.l, v153.l, s41
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v162.l, v173.l, v162.l, s45
	v_cndmask_b16 v162.h, v174.l, v162.h, s46
	v_cndmask_b16 v163.l, v175.l, v163.l, s47
	v_cndmask_b16 v163.h, v176.l, v163.h, s48
	v_cndmask_b16 v164.l, v177.l, v164.l, s49
	v_cndmask_b16 v164.h, v178.l, v164.h, s50
	v_cndmask_b16 v165.l, v179.l, v165.l, s51
	v_cndmask_b16 v165.h, v180.l, v165.h, s36
	v_cndmask_b16 v166.l, v181.l, v166.l, s37
	v_cndmask_b16 v166.h, v182.l, v166.h, s38
	v_cndmask_b16 v167.l, v183.l, v167.l, s39
	v_cndmask_b16 v167.h, v184.l, v167.h, s40
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v169, 0, v143
	v_cndmask_b16 v153.h, v187.l, v153.h, s41
	v_cndmask_b16 v154.l, v188.l, v154.l, s41
	v_cndmask_b16 v155.l, v190.l, v155.l, s41
	v_cndmask_b16 v155.h, v191.l, v155.h, s41
	v_cndmask_b16 v156.l, v192.l, v156.l, s41
	v_cndmask_b16 v157.l, v194.l, v157.l, s41
	v_cndmask_b16 v157.h, v195.l, v157.h, s41
	v_cndmask_b16 v158.l, v196.l, v158.l, s41
	v_cndmask_b16 v159.l, v198.l, v159.l, s41
	v_cndmask_b16 v159.h, v199.l, v159.h, s41
	v_cndmask_b16 v160.l, v200.l, v160.l, s41
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b8 v201, v152
	ds_store_b8_d16_hi v201, v160 offset:128
	ds_store_b8 v201, v161 offset:256
	ds_store_b8_d16_hi v201, v161 offset:384
	ds_store_b8 v201, v162 offset:512
	ds_store_b8_d16_hi v201, v162 offset:640
	ds_store_b8 v201, v163 offset:768
	ds_store_b8 v201, v164 offset:1024
	ds_store_b8_d16_hi v201, v164 offset:1152
	ds_store_b8 v201, v165 offset:1280
	ds_store_b8_d16_hi v201, v165 offset:1408
	ds_store_b8 v201, v166 offset:1536
	ds_store_b8_d16_hi v201, v166 offset:1664
	ds_store_b8_d16_hi v202, v163
	ds_store_b8 v201, v167 offset:1792
	ds_store_b8_d16_hi v203, v167
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v161, v142 offset:448
	ds_load_u8 v162, v142 offset:384
	ds_load_u8 v163, v142 offset:320
	ds_load_u8 v164, v142 offset:256
	ds_load_u8 v174, v142 offset:480
	ds_load_u8 v175, v142 offset:416
	ds_load_u8 v176, v142 offset:352
	ds_load_u8 v177, v142 offset:288
	ds_load_u8 v165, v142 offset:192
	ds_load_u8 v166, v142 offset:128
	ds_load_u8 v167, v142 offset:64
	ds_load_u8 v178, v142 offset:224
	ds_load_u8 v179, v142 offset:160
	ds_load_u8 v180, v142 offset:96
	ds_load_u8 v168, v142
	ds_load_u8 v181, v142 offset:32
	ds_load_u8 v170, v142 offset:704
	ds_load_u8 v171, v142 offset:640
	ds_load_u8 v172, v142 offset:576
	ds_load_u8 v173, v142 offset:512
	ds_load_u8 v182, v142 offset:736
	ds_load_u8 v183, v142 offset:672
	ds_load_u8 v184, v142 offset:608
	ds_load_u8 v185, v142 offset:544
	ds_load_u8 v186, v142 offset:960
	ds_load_u8 v187, v142 offset:896
	ds_load_u8 v188, v142 offset:832
	ds_load_u8 v189, v142 offset:768
	ds_load_u8 v190, v142 offset:992
	ds_load_u8 v191, v142 offset:928
	ds_load_u8 v192, v142 offset:864
	ds_load_u8 v193, v142 offset:800
	ds_load_u8 v194, v142 offset:1216
	ds_load_u8 v195, v142 offset:1152
	ds_load_u8 v196, v142 offset:1088
	ds_load_u8 v197, v142 offset:1024
	ds_load_u8 v198, v142 offset:1248
	ds_load_u8 v199, v142 offset:1184
	ds_load_u8 v200, v142 offset:1120
	ds_load_u8 v202, v142 offset:1056
	ds_load_u8 v203, v142 offset:1472
	ds_load_u8 v204, v142 offset:1408
	ds_load_u8 v205, v142 offset:1344
	ds_load_u8 v206, v142 offset:1280
	ds_load_u8 v207, v142 offset:1504
	ds_load_u8 v208, v142 offset:1440
	ds_load_u8 v209, v142 offset:1376
	ds_load_u8 v210, v142 offset:1312
	ds_load_u8 v211, v142 offset:1728
	ds_load_u8 v212, v142 offset:1664
	ds_load_u8 v213, v142 offset:1600
	ds_load_u8 v214, v142 offset:1536
	ds_load_u8 v215, v142 offset:1760
	ds_load_u8 v216, v142 offset:1696
	ds_load_u8 v217, v142 offset:1632
	ds_load_u8 v218, v142 offset:1568
	ds_load_u8 v219, v142 offset:1984
	ds_load_u8 v220, v142 offset:1920
	ds_load_u8 v221, v142 offset:1856
	ds_load_u8 v222, v142 offset:1792
	ds_load_u8 v223, v142 offset:2016
	ds_load_u8 v224, v142 offset:1952
	ds_load_u8 v225, v142 offset:1888
	ds_load_u8 v226, v142 offset:1824
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v201, v152
	ds_store_b8_d16_hi v201, v154 offset:512
	ds_store_b8_d16_hi v201, v156 offset:1024
	ds_store_b8_d16_hi v201, v158 offset:1536
	ds_store_b8 v169, v153
	ds_store_b8 v169, v155 offset:512
	ds_store_b8 v169, v157 offset:1024
	ds_store_b8 v169, v159 offset:1536
	v_add_nc_u32_e32 v169, 0, v145
	v_add_nc_u32_e32 v152, 0, v146
	ds_store_b8_d16_hi v227, v153
	ds_store_b8_d16_hi v227, v155 offset:512
	ds_store_b8_d16_hi v227, v157 offset:1024
	ds_store_b8_d16_hi v227, v159 offset:1536
	ds_store_b8 v152, v154
	ds_store_b8 v152, v156 offset:512
	ds_store_b8 v152, v158 offset:1024
	ds_store_b8 v152, v160 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[152:155], v169 offset1:2
	v_add_nc_u32_e32 v156, 0, v147
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v160, v164, v163, 0xc0c0004
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v162, v168, v167, 0xc0c0004
	v_perm_b32 v163, v166, v165, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[156:159], v156 offset1:2
	v_add_nc_u32_e32 v164, 0, v148
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v169, v161, 16, v160
	v_perm_b32 v165, v189, v188, 0xc0c0004
	v_lshl_or_b32 v168, v163, 16, v162
	v_perm_b32 v166, v187, v186, 0xc0c0004
	v_perm_b32 v167, v173, v172, 0xc0c0004
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[160:163], v164 offset1:2
	v_add_nc_u32_e32 v164, 0, v149
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v176, v177, v176, 0xc0c0004
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_lshl_or_b32 v171, v166, 16, v165
	v_lshl_or_b32 v170, v170, 16, v167
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_load_2addr_stride64_b64 v[164:167], v164 offset1:2
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v177, v174, 16, v176
	v_lshl_or_b32 v176, v178, 16, v180
	v_perm_b32 v174, v193, v192, 0xc0c0004
	v_perm_b32 v178, v191, v190, 0xc0c0004
	v_perm_b32 v180, v185, v184, 0xc0c0004
	v_perm_b32 v181, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[168:169], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v172, v206, v205, 0xc0c0004
	v_perm_b32 v173, v204, v203, 0xc0c0004
	v_perm_b32 v186, v197, v196, 0xc0c0004
	v_perm_b32 v187, v195, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[168:169], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[176:177], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v153, v178, 16, v174
	v_lshl_or_b32 v152, v181, 16, v180
	v_perm_b32 v168, v210, v209, 0xc0c0004
	v_perm_b32 v169, v208, v207, 0xc0c0004
	v_perm_b32 v178, v202, v200, 0xc0c0004
	v_perm_b32 v180, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[176:177], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[170:171], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v173, v173, 16, v172
	v_lshl_or_b32 v172, v187, 16, v186
	v_perm_b32 v186, v222, v221, 0xc0c0004
	v_perm_b32 v187, v220, v219, 0xc0c0004
	v_perm_b32 v179, v214, v213, 0xc0c0004
	v_perm_b32 v182, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[170:171], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[156:157], v[152:153], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v169, 16, v168
	v_lshl_or_b32 v156, v180, 16, v178
	v_perm_b32 v154, v226, v225, 0xc0c0004
	v_perm_b32 v155, v224, v223, 0xc0c0004
	v_perm_b32 v168, v218, v217, 0xc0c0004
	v_perm_b32 v169, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[152:153], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[172:173], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v187, 16, v186
	v_lshl_or_b32 v174, v182, 16, v179
	v_wmma_i32_16x16x16_iu4 v[17:24], v[162:163], v[172:173], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[160:161], v[156:157], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v153, v155, 16, v154
	v_lshl_or_b32 v152, v169, 16, v168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[156:157], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[174:175], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[174:175], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[152:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[152:153], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %Flow329
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v134, 16, 1
	v_bfe_u32 v5, v122, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_bfe_u32 v3, v125, 16, 1
	v_bfe_u32 v4, v123, 16, 1
	v_add3_u32 v1, v134, v1, 0x7fff
	v_add3_u32 v5, v122, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_bfe_u32 v9, v108, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_cmp_o_f32_e64 s0, v125, v125
	v_add3_u32 v3, v125, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v4, v123, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	v_bfe_u32 v7, v119, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_bfe_u32 v8, v111, 16, 1
	v_add3_u32 v9, v108, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v108, v108
	v_bfe_u32 v13, v98, 16, 1
	v_mov_b16_e32 v2.l, v94.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v7, v119, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_add3_u32 v8, v111, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v111, v111
	v_bfe_u32 v11, v100, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_bfe_u32 v12, v99, 16, 1
	v_add3_u32 v13, v98, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v98, v98
	v_mov_b16_e32 v17.h, v2.h
	v_and_b32_e32 v2, 1, v2
	v_bfe_u32 v6, v121, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_add3_u32 v11, v100, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v12, v99, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v99, v99
	v_bfe_u32 v15, v96, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_bfe_u32 v16, v95, 16, 1
	v_mov_b16_e32 v17.l, v93.h
	v_add3_u32 v2, v94, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_bfe_u32 v19, v91, 16, 1
	v_add3_u32 v6, v121, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_bfe_u32 v10, v105, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_add3_u32 v15, v96, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_add3_u32 v16, v95, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v95, v95
	v_and_b32_e32 v17, 1, v17
	v_cndmask_b16 v18.h, 0x7fff, v2.h, s1
	v_add3_u32 v19, v91, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v91, v91
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s2
	v_add3_u32 v10, v105, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v105, v105
	v_bfe_u32 v14, v97, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s0
	v_add3_u32 v16, v93, v17, 0x7fff
	v_bfe_u32 v17, v92, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v87, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s2
	v_add3_u32 v14, v97, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v97, v97
	v_bfe_u32 v20, v90, 16, 1
	v_add3_u32 v17, v92, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v92, v92
	v_cndmask_b16 v18.l, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v89, 16, 1
	v_add3_u32 v19, v87, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v87, v87
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s2
	v_add3_u32 v20, v90, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v90, v90
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v88, 16, 1
	v_add3_u32 v16, v89, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v83, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v86, 16, 1
	v_add3_u32 v17, v88, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v88, v88
	v_cndmask_b16 v5.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v85, 16, 1
	v_add3_u32 v19, v83, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v83, v83
	v_add3_u32 v20, v86, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v86, v86
	v_cndmask_b16 v6.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v84, 16, 1
	v_add3_u32 v16, v85, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v19, 2, v33
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v82, 16, 1
	v_add3_u32 v17, v84, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_cndmask_b16 v9.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v81, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v19, v76, 8, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v20, v82, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v82, v82
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v80, 16, 1
	v_add3_u32 v16, v81, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v19, v19, v78
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v12.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v79, 16, 1
	v_add3_u32 v17, v80, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v80, v80
	v_cndmask_b16 v13.h, 0x7fff, v16.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v16, v77, 1, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v21, v58, 16, 1
	v_add3_u32 v20, v79, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v79, v79
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v17, 0, v16
	v_xad_u32 v24, 0x1040, v16, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v21, v58, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v58, v58
	v_cndmask_b16 v2.h, 0x7fff, v20.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v19, v16, 4, 0
	v_xad_u32 v20, v16, 8, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v27, 0x1044, v16, 0
	ds_store_b32 v17, v18
	ds_store_b32 v24, v9
	v_xad_u32 v9, 0x1048, v16, 0
	v_and_b32_e32 v0, 0x60, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.h, 0x7fff, v21.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v21, v16, 12, 0
	ds_store_b32 v19, v1
	ds_store_b32 v27, v10
	ds_store_b32 v20, v3
	ds_store_b32 v9, v11
	v_lshlrev_b32_e32 v3, 2, v76
	v_xad_u32 v1, 0x104c, v16, 0
	ds_store_b32 v21, v4
	ds_store_b32 v1, v12
	v_lshrrev_b32_e32 v1, 3, v0
	v_lshl_or_b32 v0, v0, 3, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v75
	v_xad_u32 v22, v16, 16, 0
	v_xad_u32 v23, v16, 20, 0
	v_xad_u32 v9, 0x1050, v16, 0
	v_xor_b32_e32 v0, v0, v1
	v_cndmask_b32_e64 v4, 0x1040, 0, vcc_lo
	v_xad_u32 v3, 0x1054, v16, 0
	v_xad_u32 v25, v16, 24, 0
	v_xad_u32 v1, 0x1058, v16, 0
	v_xad_u32 v26, v16, 28, 0
	v_or_b32_e32 v0, v0, v4
	ds_store_b32 v22, v5
	ds_store_b32 v9, v13
	ds_store_b32 v23, v6
	ds_store_b32 v3, v14
	v_xad_u32 v3, 0x105c, v16, 0
	ds_store_b32 v25, v7
	ds_store_b32 v1, v2
	ds_store_b32 v26, v8
	ds_store_b32 v3, v15
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, v0, 64, 0
	v_xad_u32 v3, 0x410, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v1 offset1:32
	ds_load_2addr_b32 v[15:16], v2 offset1:32
	ds_load_2addr_b32 v[9:10], v3 offset1:32
	v_xad_u32 v1, 0x450, v0, 0
	v_xad_u32 v2, 0x820, v0, 0
	v_xad_u32 v3, 0x860, v0, 0
	v_xad_u32 v4, 0xc30, v0, 0
	v_xad_u32 v17, 0xc70, v0, 0
	ds_load_2addr_b32 v[11:12], v1 offset1:32
	ds_load_2addr_b32 v[5:6], v2 offset1:32
	ds_load_2addr_b32 v[7:8], v3 offset1:32
	ds_load_2addr_b32 v[0:1], v4 offset1:32
	ds_load_2addr_b32 v[2:3], v17 offset1:32
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s73, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v74
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v4, s75, 5, v33
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s73, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v4
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v13, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_10:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v9, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v5, v7, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v14, v16, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v10, v12, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v6, v8, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v17, s74, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s56, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v13, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, s74, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s56, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v13, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v9, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, s74, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s56, v9
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v9, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v5, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, s74, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s56, v5
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v5, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v0, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v0, s74, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v0, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s0, s58, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s59, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v0, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, s74, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v0, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s58, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s59, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v0, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, s74, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s58, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s59, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v0, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, s74, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s56, v0
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s58, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s59, v5, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 240
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 240
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 85
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12552
; TotalNumSgprs: 87
; NumVgprs: 240
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 87
; NumVGPRsForWavesPerEU: 240
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     87
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     240
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
