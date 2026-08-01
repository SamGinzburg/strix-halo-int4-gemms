	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b128 s[52:55], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s64, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s65, 63
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
	s_ashr_i32 s6, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s4, s5, 6
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s5, s4, s6
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s5
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v65, 0xc0, v0
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v64, 15, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v63, 16, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1304 20                       ; ragged.py:1304:20
	v_readfirstlane_b32 s7, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 5, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v66, 32, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_and_b32_e32 v33, 31, v0
	s_mov_b32 s68, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v4, 16, v1
	v_or_b32_e32 v3, 24, v1
	v_or_b32_e32 v5, 32, v1
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_cvt_u32_f32 s7, s7
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v6, 40, v1
	v_or_b32_e32 v7, 48, v1
	v_or_b32_e32 v8, 56, v1
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s7, s8
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s5
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_abs_i32 s7, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s56, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s5, s56, s5
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v2, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s5
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s66, s56, s64
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s8, s8, 31
	v_readfirstlane_b32 s9, v2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v2, 8, v1
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s5
	s_mul_hi_u32 s5, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s5, s7
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s9, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s57, s56, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s5, s5, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[56:57], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s4, s5, s4
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s57, s5, 7
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s67, s2, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s52, s6
	s_addc_u32 s5, s53, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v62, s57, v1
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s58, s[4:5], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v61, s57, v2
	v_or_b32_e32 v60, s57, v4
	v_or_b32_e32 v59, s57, v3
	v_or_b32_e32 v58, s57, v5
	v_or_b32_e32 v57, s57, v6
	v_or_b32_e32 v56, s57, v7
	v_or_b32_e32 v55, s57, v8
	v_or_b32_e32 v54, 64, v62
	v_or_b32_e32 v53, 0x48, v62
	v_or_b32_e32 v52, 0x50, v62
	v_or_b32_e32 v51, 0x58, v62
	v_or_b32_e32 v50, 0x60, v62
	v_or_b32_e32 v49, 0x68, v62
	v_or_b32_e32 v48, 0x70, v62
	v_or_b32_e32 v47, 0x78, v62
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s17, s64, v62
	v_cmp_gt_i32_e64 s16, s64, v61
	v_cmp_gt_i32_e64 s15, s64, v60
	v_cmp_gt_i32_e64 s14, s64, v59
	v_cmp_gt_i32_e64 s13, s64, v58
	v_cmp_gt_i32_e64 s12, s64, v57
	v_cmp_gt_i32_e64 s11, s64, v56
	v_cmp_gt_i32_e64 s10, s64, v55
	v_cmp_gt_i32_e64 s9, s64, v54
	v_cmp_gt_i32_e64 s8, s64, v53
	v_cmp_gt_i32_e64 s7, s64, v52
	v_cmp_gt_i32_e64 s6, s64, v51
	v_cmp_gt_i32_e64 s5, s64, v50
	v_cmp_gt_i32_e64 s4, s64, v49
	v_cmp_gt_i32_e64 s43, s64, v48
	v_cmp_gt_i32_e64 s2, s64, v47
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s58, s58, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s58, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b256 s[44:51], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x38
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	s_lshl_b32 s60, s67, 6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v9, 2, v65
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s60, v1
	v_or_b32_e32 v2, s60, v2
	v_or_b32_e32 v3, s60, v3
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v10, 4, v63
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_or_b32_e32 v9, v9, v64
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v11, 1, v66
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s19, s65, v2
	v_bfe_i32 v2, v0, 7, 1
	v_cmp_gt_i32_e64 s21, s65, v3
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v3, 0x7f, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v2, 0x88, v2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v13, 64, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, s60, v5
	v_or_b32_e32 v6, s60, v6
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[34:35], null, s52, v1, v[33:34]
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s62, s58, 1
	v_mov_b32_e32 v94, 0
	s_cmpk_lt_i32 s3, 0x80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 24, v1
	v_mad_u64_u32 v[35:36], null, s52, 24, v[34:35]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v4, s60, v4
	v_or3_b32 v97, v10, v11, s60
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v64, 5, v1
	v_or_b32_e32 v7, s60, v7
	v_or_b32_e32 v8, s60, v8
	s_cselect_b32 s69, -1, 0
	v_mad_u64_u32 v[36:37], null, s52, 40, v[34:35]
	v_mad_u64_u32 v[37:38], null, s52, 48, v[34:35]
	s_add_i32 s61, s57, s66
	v_mad_u64_u32 v[38:39], null, s52, 56, v[34:35]
	v_xor_b32_e32 v118, v2, v3
	v_lshl_or_b32 v119, v65, 3, v1
	v_lshl_or_b32 v120, v66, 4, v1
	v_mad_u64_u32 v[39:40], null, 0x48, s52, v[34:35]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s22, s65, v5
	v_cmp_gt_i32_e64 s23, s65, v6
	v_mad_u64_u32 v[40:41], null, 0x50, s52, v[34:35]
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v5, s61, v9
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v6, s61, v13
	v_mad_u64_u32 v[41:42], null, 0x58, s52, v[34:35]
	v_mad_u64_u32 v[42:43], null, 0x60, s52, v[34:35]
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v10, s57, v9
	v_or_b32_e32 v11, s57, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, 2, v97
	v_or_b32_e32 v99, 4, v97
	v_or_b32_e32 v100, 6, v97
	v_or_b32_e32 v101, 8, v97
	v_or_b32_e32 v102, 10, v97
	v_or_b32_e32 v103, 12, v97
	v_or_b32_e32 v104, 14, v97
	v_or_b32_e32 v105, 32, v97
	v_or_b32_e32 v106, 34, v97
	v_or_b32_e32 v107, 36, v97
	v_or_b32_e32 v108, 38, v97
	v_or_b32_e32 v109, 40, v97
	v_or_b32_e32 v110, 42, v97
	v_or_b32_e32 v111, 44, v97
	v_or_b32_e32 v112, 46, v97
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s20, s65, v4
	v_cmp_gt_i32_e64 s24, s65, v7
	v_cmp_gt_i32_e64 s25, s65, v8
	v_mad_u64_u32 v[43:44], null, 0x68, s52, v[34:35]
	v_xor_b32_e32 v2, 0x110, v118
	v_xor_b32_e32 v3, 8, v119
	v_xor_b32_e32 v1, 16, v119
	v_xor_b32_e32 v4, 24, v119
	v_xor_b32_e32 v7, 8, v120
	v_xor_b32_e32 v8, 16, v120
	v_xor_b32_e32 v9, 24, v120
	v_mad_u64_u32 v[44:45], null, 0x70, s52, v[34:35]
	v_mul_lo_u32 v121, v5, s53
	v_mul_lo_u32 v122, v6, s53
	v_mad_u64_u32 v[45:46], null, 0x78, s52, v[34:35]
	.loc	1 1433 43                       ; ragged.py:1433:43
	s_mul_i32 s63, s56, s65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s64, v10
	v_cmp_gt_i32_e64 s1, s64, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s65, v12
	v_cmp_gt_i32_e64 s26, s65, v97
	v_cmp_gt_i32_e64 s27, s65, v98
	v_cmp_gt_i32_e64 s28, s65, v99
	v_cmp_gt_i32_e64 s29, s65, v100
	v_cmp_gt_i32_e64 s30, s65, v101
	v_cmp_gt_i32_e64 s31, s65, v102
	v_cmp_gt_i32_e64 s33, s65, v103
	v_cmp_gt_i32_e64 s34, s65, v104
	v_cmp_gt_i32_e64 s35, s65, v105
	v_cmp_gt_i32_e64 s36, s65, v106
	v_cmp_gt_i32_e64 s37, s65, v107
	v_cmp_gt_i32_e64 s38, s65, v108
	v_cmp_gt_i32_e64 s39, s65, v109
	v_cmp_gt_i32_e64 s40, s65, v110
	v_cmp_gt_i32_e64 s41, s65, v111
	v_cmp_gt_i32_e64 s42, s65, v112
	v_lshl_add_u32 v114, s52, 3, v34
	v_lshl_add_u32 v115, s52, 4, v34
	v_lshl_add_u32 v116, s52, 5, v34
	v_lshl_add_u32 v117, s52, 6, v34
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v123, 0, v2
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v124, 0, v3
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v125, 0, v1
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v126, 0, v4
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v127, 0, v7
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v128, 0, v8
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v129, 0, v9
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v81, 0
	s_add_i32 s71, s60, s63
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s62, s62, -1
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s64, s56, s53
	s_mul_i32 s70, s61, s52
	s_and_b32 s57, s45, 0xffff
	s_mov_b32 s56, s44
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_mul_i32 s71, s71, s52
	s_and_b32 s45, s47, 0xffff
	s_mov_b32 s44, s46
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s61, s51, 0xffff
	s_mov_b32 s60, s50
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s52, s62, 7
	s_mov_b32 s50, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v14, v121, s68, 1
	v_add_lshl_u32 v15, v122, s68, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s46, s68, s64
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s50, s58
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s46, s46, s65
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v16, v97, s46, 1
	v_add_lshl_u32 v24, v105, s46, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v17, v98, s46, 1
	v_add_lshl_u32 v31, v106, s46, 1
	v_add_lshl_u32 v18, v99, s46, 1
	v_add_lshl_u32 v32, v107, s46, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s51, s59
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v100, s46, 1
	v_add_lshl_u32 v143, v108, s46, 1
	v_add_lshl_u32 v20, v101, s46, 1
	v_add_lshl_u32 v21, v102, s46, 1
	v_add_lshl_u32 v22, v103, s46, 1
	v_add_lshl_u32 v23, v104, s46, 1
	v_add_lshl_u32 v144, v109, s46, 1
	v_add_lshl_u32 v145, v110, s46, 1
	v_add_lshl_u32 v146, v111, s46, 1
	v_add_lshl_u32 v147, v112, s46, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v14, v14, s[48:51], 0 offen
	buffer_load_u16 v15, v15, s[48:51], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s26
	v_cndmask_b32_e64 v24, 0x80000000, v24, s35
	v_cndmask_b32_e64 v17, 0x80000000, v17, s27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s28
	v_cndmask_b32_e64 v32, 0x80000000, v32, s37
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	v_cndmask_b32_e64 v19, 0x80000000, v19, s29
	v_cndmask_b32_e64 v143, 0x80000000, v143, s38
	v_cndmask_b32_e64 v20, 0x80000000, v20, s30
	v_cndmask_b32_e64 v21, 0x80000000, v21, s31
	v_cndmask_b32_e64 v22, 0x80000000, v22, s33
	v_cndmask_b32_e64 v23, 0x80000000, v23, s34
	v_cndmask_b32_e64 v144, 0x80000000, v144, s39
	v_cndmask_b32_e64 v145, 0x80000000, v145, s40
	v_cndmask_b32_e64 v146, 0x80000000, v146, s41
	v_cndmask_b32_e64 v147, 0x80000000, v147, s42
	s_clause 0xf
	buffer_load_u16 v16, v16, s[60:63], 0 offen
	buffer_load_u16 v17, v17, s[60:63], 0 offen
	buffer_load_u16 v18, v18, s[60:63], 0 offen
	buffer_load_u16 v19, v19, s[60:63], 0 offen
	buffer_load_u16 v20, v20, s[60:63], 0 offen
	buffer_load_u16 v21, v21, s[60:63], 0 offen
	buffer_load_u16 v22, v22, s[60:63], 0 offen
	buffer_load_u16 v23, v23, s[60:63], 0 offen
	buffer_load_u16 v24, v24, s[60:63], 0 offen
	buffer_load_u16 v31, v31, s[60:63], 0 offen
	buffer_load_u16 v32, v32, s[60:63], 0 offen
	buffer_load_u16 v143, v143, s[60:63], 0 offen
	buffer_load_u16 v144, v144, s[60:63], 0 offen
	buffer_load_u16 v145, v145, s[60:63], 0 offen
	buffer_load_u16 v146, v146, s[60:63], 0 offen
	buffer_load_u16 v147, v147, s[60:63], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s46, s68, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s50, s46, 7
	s_cmp_lg_u32 s68, s52
	s_mov_b32 s68, s46
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v142, v142, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v2, v2, v15
	v_mul_f32_e32 v27, v27, v15
	v_mul_f32_e32 v141, v141, v14
	v_mul_f32_e32 v140, v140, v14
	v_mul_f32_e32 v139, v139, v14
	v_mul_f32_e32 v138, v138, v14
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v137, v137, v14 :: v_dual_lshlrev_b32 v16, 16, v16
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
	v_dual_mul_f32 v136, v136, v14 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v13, v13, v15 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v134, v134, v14 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v132, v132, v14 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v135, v135, v14 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v130, v130, v14 :: v_dual_lshlrev_b32 v143, 16, v143
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v133, v133, v14 :: v_dual_lshlrev_b32 v144, 16, v144
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v30, v30, v14 :: v_dual_lshlrev_b32 v145, 16, v145
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v11, v11, v15 :: v_dual_lshlrev_b32 v146, 16, v146
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v96, v141, v18 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v131, v131, v14
	v_mul_f32_e32 v29, v29, v14
	v_dual_mul_f32 v1, v1, v14 :: v_dual_mul_f32 v26, v26, v15
	v_mul_f32_e32 v14, v28, v15
	v_dual_mul_f32 v12, v12, v15 :: v_dual_fmac_f32 v113, v142, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v10, v10, v15 :: v_dual_fmac_f32 v81, v1, v16
	v_dual_mul_f32 v9, v9, v15 :: v_dual_fmac_f32 v94, v139, v20
	v_dual_mul_f32 v8, v8, v15 :: v_dual_fmac_f32 v93, v138, v21
	v_dual_mul_f32 v7, v7, v15 :: v_dual_fmac_f32 v92, v137, v22
	v_dual_mul_f32 v6, v6, v15 :: v_dual_fmac_f32 v79, v27, v18
	v_dual_mul_f32 v5, v5, v15 :: v_dual_fmac_f32 v90, v135, v24
	v_dual_mul_f32 v4, v4, v15 :: v_dual_fmac_f32 v85, v130, v145
	v_dual_mul_f32 v3, v3, v15 :: v_dual_fmac_f32 v88, v133, v32
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v95, v140, v19 :: v_dual_fmac_f32 v86, v131, v144
	v_dual_fmac_f32 v91, v136, v23 :: v_dual_fmac_f32 v84, v30, v146
	v_dual_fmac_f32 v89, v134, v31 :: v_dual_fmac_f32 v76, v13, v21
	v_dual_fmac_f32 v87, v132, v143 :: v_dual_fmac_f32 v82, v2, v16
	v_dual_fmac_f32 v83, v29, v147 :: v_dual_fmac_f32 v80, v14, v17
	v_dual_fmac_f32 v78, v26, v19 :: v_dual_fmac_f32 v77, v25, v20
	v_dual_fmac_f32 v75, v12, v22 :: v_dual_fmac_f32 v74, v11, v23
	v_dual_fmac_f32 v73, v10, v24 :: v_dual_fmac_f32 v72, v9, v31
	v_dual_fmac_f32 v71, v8, v32 :: v_dual_fmac_f32 v70, v7, v143
	v_dual_fmac_f32 v69, v6, v144 :: v_dual_fmac_f32 v68, v5, v145
	v_dual_fmac_f32 v67, v4, v146 :: v_dual_fmac_f32 v46, v3, v147
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
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s69
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s51, s3
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
	s_add_i32 s53, s51, s50
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s46, s58
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s62, s53, s70
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s53, s53, s71
	.loc	1 1436 46                       ; ragged.py:1436:46
	v_add_nc_u32_e32 v130, s62, v34
	v_add_nc_u32_e32 v132, s62, v115
	v_add_nc_u32_e32 v134, s62, v116
	v_add_nc_u32_e32 v136, s62, v37
	v_add_nc_u32_e32 v131, s62, v114
	v_add_nc_u32_e32 v133, s62, v35
	v_add_nc_u32_e32 v135, s62, v36
	v_add_nc_u32_e32 v137, s62, v38
	v_add_nc_u32_e32 v138, s62, v117
	v_add_nc_u32_e32 v139, s62, v39
	v_add_nc_u32_e32 v140, s62, v40
	v_add_nc_u32_e32 v141, s62, v41
	v_add_nc_u32_e32 v142, s62, v42
	v_add_nc_u32_e32 v143, s62, v43
	v_add_nc_u32_e32 v144, s62, v44
	v_add_nc_u32_e32 v145, s62, v45
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v146, s53, v34
	v_add_nc_u32_e32 v147, s53, v114
	v_add_nc_u32_e32 v148, s53, v115
	v_add_nc_u32_e32 v149, s53, v35
	v_add_nc_u32_e32 v150, s53, v116
	v_add_nc_u32_e32 v151, s53, v36
	v_add_nc_u32_e32 v152, s53, v37
	v_add_nc_u32_e32 v153, s53, v38
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v130, 0x80000000, v130, s17
	v_cndmask_b32_e64 v132, 0x80000000, v132, s15
	v_cndmask_b32_e64 v134, 0x80000000, v134, s13
	v_cndmask_b32_e64 v136, 0x80000000, v136, s11
	v_cndmask_b32_e64 v131, 0x80000000, v131, s16
	v_cndmask_b32_e64 v133, 0x80000000, v133, s14
	v_cndmask_b32_e64 v135, 0x80000000, v135, s12
	v_cndmask_b32_e64 v137, 0x80000000, v137, s10
	v_cndmask_b32_e64 v138, 0x80000000, v138, s9
	v_cndmask_b32_e64 v139, 0x80000000, v139, s8
	v_cndmask_b32_e64 v140, 0x80000000, v140, s7
	v_cndmask_b32_e64 v141, 0x80000000, v141, s6
	v_cndmask_b32_e64 v142, 0x80000000, v142, s5
	v_cndmask_b32_e64 v143, 0x80000000, v143, s4
	v_cndmask_b32_e64 v144, 0x80000000, v144, s43
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v146, 0x80000000, v146, s18
	v_cndmask_b32_e64 v147, 0x80000000, v147, s19
	v_cndmask_b32_e64 v148, 0x80000000, v148, s20
	v_cndmask_b32_e64 v149, 0x80000000, v149, s21
	v_cndmask_b32_e64 v150, 0x80000000, v150, s22
	v_cndmask_b32_e64 v151, 0x80000000, v151, s23
	v_cndmask_b32_e64 v152, 0x80000000, v152, s24
	v_cndmask_b32_e64 v153, 0x80000000, v153, s25
	s_mov_b32 s47, s59
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0xf
	buffer_load_u8 v130, v130, s[56:59], 0 offen
	buffer_load_u8 v132, v132, s[56:59], 0 offen
	buffer_load_u8 v134, v134, s[56:59], 0 offen
	buffer_load_u8 v136, v136, s[56:59], 0 offen
	buffer_load_u8 v138, v138, s[56:59], 0 offen
	buffer_load_u8 v140, v140, s[56:59], 0 offen
	buffer_load_u8 v142, v142, s[56:59], 0 offen
	buffer_load_u8 v144, v144, s[56:59], 0 offen
	buffer_load_u8 v131, v131, s[56:59], 0 offen
	buffer_load_u8 v133, v133, s[56:59], 0 offen
	buffer_load_u8 v135, v135, s[56:59], 0 offen
	buffer_load_u8 v137, v137, s[56:59], 0 offen
	buffer_load_u8 v139, v139, s[56:59], 0 offen
	buffer_load_u8 v141, v141, s[56:59], 0 offen
	buffer_load_u8 v143, v143, s[56:59], 0 offen
	buffer_load_u8 v145, v145, s[56:59], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0x7
	buffer_load_u8 v146, v146, s[44:47], 0 offen
	buffer_load_u8 v148, v148, s[44:47], 0 offen
	buffer_load_u8 v150, v150, s[44:47], 0 offen
	buffer_load_u8 v152, v152, s[44:47], 0 offen
	buffer_load_u8 v147, v147, s[44:47], 0 offen
	buffer_load_u8 v149, v149, s[44:47], 0 offen
	buffer_load_u8 v151, v151, s[44:47], 0 offen
	buffer_load_u8 v153, v153, s[44:47], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_add_nc_u32_e32 v154, 0, v118
	v_add_nc_u32_e32 v155, 0, v119
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_add_nc_u32_e32 v156, 0, v120
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s46, s51, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmpk_lt_i32 s51, 0x60
	s_mov_b32 s51, s46
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(23)
	ds_store_b8 v154, v130
	s_waitcnt vmcnt(22)
	ds_store_b8 v154, v132 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v154, v134 offset:1024
	s_waitcnt vmcnt(20)
	ds_store_b8 v154, v136 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v154, v138 offset:2048
	s_waitcnt vmcnt(18)
	ds_store_b8 v154, v140 offset:2560
	s_waitcnt vmcnt(17)
	ds_store_b8 v154, v142 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b8 v154, v144 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v123, v131
	s_waitcnt vmcnt(14)
	ds_store_b8 v123, v133 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b8 v123, v135 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b8 v123, v137 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b8 v123, v139 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b8 v123, v141 offset:2560
	s_waitcnt vmcnt(9)
	ds_store_b8 v123, v143 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b8 v123, v145 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[130:133], v155 offset1:4
	ds_load_2addr_stride64_b64 v[134:137], v124 offset1:4
	ds_load_2addr_stride64_b64 v[138:141], v125 offset1:4
	ds_load_2addr_stride64_b64 v[142:145], v126 offset1:4
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v154, v146
	s_waitcnt vmcnt(6)
	ds_store_b8 v154, v148 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v154, v150 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v154, v152 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v123, v147
	s_waitcnt vmcnt(2)
	ds_store_b8 v123, v149 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v123, v151 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v123, v153 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[146:149], v156 offset1:2
	ds_load_2addr_stride64_b64 v[150:153], v127 offset1:2
	ds_load_2addr_stride64_b64 v[154:157], v128 offset1:2
	ds_load_2addr_stride64_b64 v[158:161], v129 offset1:2
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[146:147], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[148:149], v[130:131], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[132:133], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[148:149], v[132:133], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[134:135], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[134:135], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[136:137], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[136:137], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[154:155], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[138:139], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[140:141], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[156:157], v[140:141], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[142:143], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[142:143], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[144:145], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[160:161], v[144:145], v[17:24] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v142, v2
	v_cvt_f32_i32_e32 v141, v3
	v_cvt_f32_i32_e32 v140, v4
	v_cvt_f32_i32_e32 v139, v5
	v_cvt_f32_i32_e32 v138, v6
	v_cvt_f32_i32_e32 v137, v7
	v_cvt_f32_i32_e32 v136, v8
	v_cvt_f32_i32_e32 v135, v25
	v_cvt_f32_i32_e32 v134, v26
	v_cvt_f32_i32_e32 v133, v27
	v_cvt_f32_i32_e32 v132, v28
	v_cvt_f32_i32_e32 v131, v29
	v_cvt_f32_i32_e32 v130, v30
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
.LBB0_7:                                ; %Flow126
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v113, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_bfe_u32 v3, v96, 16, 1
	v_bfe_u32 v4, v95, 16, 1
	v_cmp_o_f32_e64 s0, v96, v96
	v_add3_u32 v1, v113, v1, 0x7fff
	v_bfe_u32 v7, v92, 16, 1
	v_add3_u32 v3, v96, v3, 0x7fff
	v_add3_u32 v4, v95, v4, 0x7fff
	v_bfe_u32 v8, v91, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_add3_u32 v7, v92, v7, 0x7fff
	v_add3_u32 v8, v91, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v91, v91
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_bfe_u32 v11, v88, 16, 1
	v_bfe_u32 v12, v87, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_mov_b16_e32 v2.l, v82.h
	v_bfe_u32 v5, v94, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_add3_u32 v11, v88, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_add3_u32 v12, v87, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v87, v87
	v_bfe_u32 v15, v84, 16, 1
	v_bfe_u32 v16, v83, 16, 1
	v_mov_b16_e32 v17.h, v2.h
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v5, v94, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_bfe_u32 v9, v90, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_add3_u32 v15, v84, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_mov_b16_e32 v17.l, v81.h
	v_add3_u32 v16, v83, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v2, v82, v2, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v9, v90, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v90, v90
	v_bfe_u32 v13, v86, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, vcc_lo
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_cndmask_b16 v2.l, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v80, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_add3_u32 v13, v86, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v86, v86
	v_add3_u32 v17, v81, v17, 0x7fff
	v_bfe_u32 v18, v79, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_add3_u32 v16, v80, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v80, v80
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_add3_u32 v18, v79, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v79, v79
	v_cndmask_b16 v19.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v78, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v77, 16, 1
	v_bfe_u32 v6, v93, 16, 1
	v_cndmask_b16 v3.h, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v76, 16, 1
	v_add3_u32 v17, v78, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v16, v77, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v77, v77
	v_add3_u32 v6, v93, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v93, v93
	v_add3_u32 v18, v76, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_cndmask_b16 v4.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v75, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v74, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v73, 16, 1
	v_add3_u32 v17, v75, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_add3_u32 v16, v74, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v74, v74
	v_bfe_u32 v10, v89, 16, 1
	v_add3_u32 v18, v73, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
	v_cndmask_b16 v7.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v72, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v71, 16, 1
	v_add3_u32 v10, v89, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v89, v89
	v_cndmask_b16 v9.h, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v70, 16, 1
	v_add3_u32 v17, v72, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_add3_u32 v16, v71, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v71, v71
	v_bfe_u32 v20, v69, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_bfe_u32 v14, v85, 16, 1
	v_add3_u32 v18, v70, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	v_cndmask_b16 v10.h, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v68, 16, 1
	v_add3_u32 v17, v69, v20, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v20, 2, v33
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v14, v85, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v85, v85
	v_cndmask_b16 v12.h, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v67, 16, 1
	v_add3_u32 v16, v68, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v68, v68
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v20, v64, 9, v20
	v_lshl_or_b32 v22, v65, 1, v66
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s3
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_add3_u32 v18, v67, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v67, v67
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v16, v20, v22
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v21, v46, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v18.h, s1
	v_and_b32_e32 v0, 0xe0, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v17, 0, v16
	v_xad_u32 v18, v16, 4, 0
	v_xad_u32 v24, 0x2040, v16, 0
	v_xad_u32 v27, 0x2044, v16, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v21, v46, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v46, v46
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v20, v16, 8, 0
	ds_store_b32 v17, v19
	ds_store_b32 v24, v9
	ds_store_b32 v18, v1
	ds_store_b32 v27, v10
	v_lshlrev_b32_e32 v1, 2, v64
	v_xad_u32 v9, 0x2048, v16, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v2.h, 0x7fff, v21.h, s3
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v21, v16, 12, 0
	ds_store_b32 v20, v3
	ds_store_b32 v9, v11
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshl_or_b32 v0, v0, 4, v1
	v_cmp_eq_u32_e32 vcc_lo, 0, v63
	v_xad_u32 v10, 0x204c, v16, 0
	ds_store_b32 v21, v4
	ds_store_b32 v10, v12
	v_cndmask_b32_e64 v4, 0x2040, 0, vcc_lo
	v_xor_b32_e32 v0, v0, v3
	v_xad_u32 v22, v16, 16, 0
	v_xad_u32 v23, v16, 20, 0
	v_xad_u32 v1, 0x2050, v16, 0
	v_xad_u32 v3, 0x2054, v16, 0
	v_xad_u32 v25, v16, 24, 0
	v_xad_u32 v26, v16, 28, 0
	v_or_b32_e32 v0, v0, v4
	ds_store_b32 v22, v5
	ds_store_b32 v1, v13
	v_xad_u32 v1, 0x2058, v16, 0
	ds_store_b32 v23, v6
	ds_store_b32 v3, v14
	v_xad_u32 v3, 0x205c, v16, 0
	ds_store_b32 v25, v7
	ds_store_b32 v1, v15
	v_add_nc_u32_e32 v1, 0, v0
	ds_store_b32 v26, v8
	ds_store_b32 v3, v2
	v_xad_u32 v2, v0, 64, 0
	v_xad_u32 v3, 0x1020, v0, 0
	v_xad_u32 v4, 0x1060, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v1 offset1:32
	ds_load_2addr_b32 v[5:6], v1 offset0:64 offset1:96
	ds_load_2addr_b32 v[15:16], v2 offset1:32
	ds_load_2addr_b32 v[7:8], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v3 offset1:32
	ds_load_2addr_b32 v[0:1], v3 offset0:64 offset1:96
	ds_load_2addr_b32 v[11:12], v4 offset1:32
	ds_load_2addr_b32 v[2:3], v4 offset0:64 offset1:96
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s65, 31
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v4, s67, 5, v33
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s65, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v4
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s17, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_24
; %bb.8:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s16, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_25
.LBB0_9:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s15, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_26
.LBB0_10:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s14, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_27
.LBB0_11:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s13, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_28
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s12, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_29
.LBB0_13:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s11, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_30
.LBB0_14:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s10, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_31
.LBB0_15:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s9, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_32
.LBB0_16:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s8, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_33
.LBB0_17:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s7, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_34
.LBB0_18:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s6, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_35
.LBB0_19:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s5, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_36
.LBB0_20:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_37
.LBB0_21:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s43, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execnz .LBB0_38
.LBB0_22:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s2, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execnz .LBB0_39
.LBB0_23:
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.LBB0_24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v62
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v13, v15, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s16, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_9
.LBB0_25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v61
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v9, v11, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s15, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_10
.LBB0_26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v60
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v14, v16, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s14, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_11
.LBB0_27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v59
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v10, v12, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s13, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_12
.LBB0_28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v58
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v5, v7, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s12, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_13
.LBB0_29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v57
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
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s11, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_14
.LBB0_30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v56
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v6, v8, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s10, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_15
.LBB0_31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v55
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
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s9, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_16
.LBB0_32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s66, v54
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v15, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v13, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s8, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_17
.LBB0_33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(7)
	v_add_nc_u32_e32 v13, s66, v53
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[17:18], null, v13, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v9, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s7, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_18
.LBB0_34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v9, s66, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v9, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s0, s54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v14, null, s55, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v9, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s6, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_19
.LBB0_35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v9, s66, v51
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v10, v12, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[13:14], null, v9, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s54, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s55, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v11, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s5, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_20
.LBB0_36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v9, s66, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v9, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s54, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s55, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v5, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s4, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_21
.LBB0_37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(6)
	v_add_nc_u32_e32 v5, s66, v49
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[9:10], null, v5, s1, v[4:5]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s54, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s55, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s43, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_22
.LBB0_38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	v_add_nc_u32_e32 v0, s66, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s54, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v6, null, s55, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s2, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
.LBB0_39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	v_add_nc_u32_e32 v0, s66, v47
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
	v_add_co_u32 v0, vcc_lo, s54, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s55, v5, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 162
		.amdhsa_next_free_sgpr 72
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 162
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 72
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7808
; TotalNumSgprs: 74
; NumVgprs: 162
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 74
; NumVGPRsForWavesPerEU: 162
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     74
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     162
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
