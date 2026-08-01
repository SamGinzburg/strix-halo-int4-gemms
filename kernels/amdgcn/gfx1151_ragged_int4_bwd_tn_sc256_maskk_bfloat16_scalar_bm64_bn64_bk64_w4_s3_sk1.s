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
	s_load_b64 s[46:47], s[0:1], 0x30
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
	s_add_i32 s4, s46, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s47, 63
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
	s_mul_i32 s24, s20, s46
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
	v_or_b32_e32 v50, v3, v1
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v49, 32, v50
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
	s_lshl_b32 s61, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s61, v50
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s21, s[6:7], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s61, v49
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s19, s46, v3
	v_cmp_gt_i32_e64 s2, s46, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s18, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge69_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s37, s61, s24
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr37
.LBB0_3:                                ; %Flow516
	s_load_b64 s[44:45], s[0:1], 0x28
	v_lshrrev_b32_e32 v65, 1, v0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s60, s4, 6
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph68
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_bfe_u32 v4, v0, 4, 1
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v5, 16, v65
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v3, 63, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[22:23], s[0:1], 0x38
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v80, v4, v5, s60
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v96, 6, v2
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s61, v3
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s25, s18, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v6, s60, v3
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s25, s18, s25
	v_mul_lo_u32 v2, s47, v96
	v_mad_u64_u32 v[33:34], null, s46, v96, v[3:4]
	s_ashr_i32 s62, s25, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s25, s21, 31
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s63, s3, 5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s25, s21, s25
	s_lshl_b32 s3, s47, 1
	s_ashr_i32 s64, s25, 1
	v_mad_u64_u32 v[34:35], null, s46, 6, v[33:34]
	s_lshl_b32 s25, s47, 3
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s37, 0xffff
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s65, s20, s22
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s66, s20, s23
	s_lshl_b32 s20, s47, 2
	s_lshl_b32 s29, s47, 4
	s_and_b32 s53, s39, 0xffff
	s_mul_i32 s37, s47, 30
	s_bitcmp1_b32 s21, 0
	v_mad_u64_u32 v[35:36], null, s46, 10, v[33:34]
	v_mad_u64_u32 v[36:37], null, s46, 12, v[33:34]
	s_mov_b32 s48, s36
	s_mul_i32 s22, s47, 6
	s_mul_i32 s26, s47, 10
	s_mul_i32 s27, s47, 12
	s_mul_i32 s28, s47, 14
	s_mul_i32 s30, s47, 18
	s_mul_i32 s31, s47, 20
	s_mul_i32 s33, s47, 22
	s_mul_i32 s34, s47, 24
	s_mul_i32 s35, s47, 26
	s_mul_i32 s36, s47, 28
	v_add3_u32 v124, v2, s37, v6
	s_mov_b32 s52, s38
	s_cselect_b32 s38, -1, 0
	s_add_i32 s37, s61, s24
	v_mad_u64_u32 v[37:38], null, s46, 14, v[33:34]
	v_mad_u64_u32 v[38:39], null, s46, 18, v[33:34]
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v109, v6, v2
	v_add3_u32 v110, v2, s3, v6
	v_add3_u32 v111, v2, s20, v6
	v_add3_u32 v112, v2, s22, v6
	v_add3_u32 v113, v2, s25, v6
	v_add3_u32 v114, v2, s26, v6
	v_add3_u32 v115, v2, s27, v6
	v_add3_u32 v116, v2, s28, v6
	v_add3_u32 v117, v2, s29, v6
	v_add3_u32 v118, v2, s30, v6
	v_add3_u32 v119, v2, s31, v6
	v_add3_u32 v120, v2, s33, v6
	v_add3_u32 v121, v2, s34, v6
	v_add3_u32 v122, v2, s35, v6
	v_add3_u32 v123, v2, s36, v6
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v2, s37, v50
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v3, s37, v49
	v_mad_u64_u32 v[39:40], null, s46, 20, v[33:34]
	v_mad_u64_u32 v[40:41], null, s46, 22, v[33:34]
	v_mad_u64_u32 v[41:42], null, s46, 24, v[33:34]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v81, 2, v80
	v_or_b32_e32 v82, 4, v80
	v_or_b32_e32 v83, 6, v80
	v_or_b32_e32 v84, 8, v80
	v_or_b32_e32 v85, 10, v80
	v_or_b32_e32 v86, 12, v80
	v_or_b32_e32 v87, 14, v80
	v_or_b32_e32 v88, 32, v80
	v_or_b32_e32 v89, 34, v80
	v_or_b32_e32 v90, 36, v80
	v_or_b32_e32 v91, 38, v80
	v_or_b32_e32 v92, 40, v80
	v_or_b32_e32 v93, 42, v80
	v_or_b32_e32 v94, 44, v80
	v_or_b32_e32 v95, 46, v80
	v_mad_u64_u32 v[42:43], null, s46, 26, v[33:34]
	v_mad_u64_u32 v[43:44], null, s46, 28, v[33:34]
	v_mul_lo_u32 v129, v2, s23
	v_mul_lo_u32 v130, v3, s23
	v_mad_u64_u32 v[44:45], null, s46, 30, v[33:34]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s47, v80
	v_cmp_gt_i32_e64 s1, s47, v81
	v_cmp_gt_i32_e64 s4, s47, v82
	v_cmp_gt_i32_e64 s5, s47, v83
	v_cmp_gt_i32_e64 s6, s47, v84
	v_cmp_gt_i32_e64 s7, s47, v85
	v_cmp_gt_i32_e64 s8, s47, v86
	v_cmp_gt_i32_e64 s9, s47, v87
	v_cmp_gt_i32_e64 s10, s47, v88
	v_cmp_gt_i32_e64 s11, s47, v89
	v_cmp_gt_i32_e64 s12, s47, v90
	v_cmp_gt_i32_e64 s13, s47, v91
	v_cmp_gt_i32_e64 s14, s47, v92
	v_cmp_gt_i32_e64 s15, s47, v93
	v_cmp_gt_i32_e64 s16, s47, v94
	v_cmp_gt_i32_e64 s17, s47, v95
	v_cmp_gt_i32_e64 s18, s47, v6
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v97, 16, v96
	v_or_b32_e32 v98, 18, v96
	v_or_b32_e32 v99, 20, v96
	v_or_b32_e32 v100, 22, v96
	v_or_b32_e32 v101, 24, v96
	v_or_b32_e32 v102, 26, v96
	v_or_b32_e32 v103, 28, v96
	v_or_b32_e32 v104, 30, v96
	v_lshl_add_u32 v105, s46, 1, v33
	v_lshl_add_u32 v106, s46, 2, v33
	v_lshl_add_u32 v107, s46, 3, v33
	v_lshl_add_u32 v108, s46, 4, v33
	v_or_b32_e32 v125, 0x380, v0
	v_or_b32_e32 v126, 0x780, v0
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v127, 0, v50
	v_add3_u32 v128, 0, v5, v1
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v45, 0
	s_add_i32 s67, s62, -1
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mov_b32 s39, 0
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s57, s43, 0xffff
	s_mov_b32 s56, s42
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s68, s67, 7
	s_mov_b32 s3, 0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s46, v4
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v131, v129, s39, 1
	v_add_lshl_u32 v132, v130, s39, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s39, s66
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s42, s50
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s47
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v131, 0x80000000, v131, s19
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v133, v80, s3, 1
	v_add_lshl_u32 v142, v89, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v134, v81, s3, 1
	v_add_lshl_u32 v145, v94, s3, 1
	v_add_lshl_u32 v135, v82, s3, 1
	v_add_lshl_u32 v146, v92, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s43, s51
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v136, v83, s3, 1
	v_add_lshl_u32 v143, v90, s3, 1
	v_add_lshl_u32 v137, v84, s3, 1
	v_add_lshl_u32 v138, v85, s3, 1
	v_add_lshl_u32 v139, v86, s3, 1
	v_add_lshl_u32 v140, v87, s3, 1
	v_add_lshl_u32 v141, v88, s3, 1
	v_add_lshl_u32 v144, v91, s3, 1
	v_add_lshl_u32 v147, v93, s3, 1
	v_add_lshl_u32 v148, v95, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v131, v131, s[40:43], 0 offen
	buffer_load_u16 v132, v132, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	v_cndmask_b32_e64 v142, 0x80000000, v142, s11
	v_cndmask_b32_e64 v134, 0x80000000, v134, s1
	v_cndmask_b32_e64 v145, 0x80000000, v145, s16
	v_cndmask_b32_e64 v135, 0x80000000, v135, s4
	v_cndmask_b32_e64 v146, 0x80000000, v146, s14
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	v_cndmask_b32_e64 v136, 0x80000000, v136, s5
	v_cndmask_b32_e64 v143, 0x80000000, v143, s12
	v_cndmask_b32_e64 v137, 0x80000000, v137, s6
	v_cndmask_b32_e64 v138, 0x80000000, v138, s7
	v_cndmask_b32_e64 v139, 0x80000000, v139, s8
	v_cndmask_b32_e64 v140, 0x80000000, v140, s9
	v_cndmask_b32_e64 v141, 0x80000000, v141, s10
	v_cndmask_b32_e64 v144, 0x80000000, v144, s13
	v_cndmask_b32_e64 v147, 0x80000000, v147, s15
	v_cndmask_b32_e64 v148, 0x80000000, v148, s17
	s_clause 0xf
	buffer_load_u16 v133, v133, s[56:59], 0 offen
	buffer_load_u16 v134, v134, s[56:59], 0 offen
	buffer_load_u16 v135, v135, s[56:59], 0 offen
	buffer_load_u16 v136, v136, s[56:59], 0 offen
	buffer_load_u16 v137, v137, s[56:59], 0 offen
	buffer_load_u16 v138, v138, s[56:59], 0 offen
	buffer_load_u16 v139, v139, s[56:59], 0 offen
	buffer_load_u16 v140, v140, s[56:59], 0 offen
	buffer_load_u16 v142, v142, s[56:59], 0 offen
	buffer_load_u16 v145, v145, s[56:59], 0 offen
	buffer_load_u16 v146, v146, s[56:59], 0 offen
	buffer_load_u16 v143, v143, s[56:59], 0 offen
	buffer_load_u16 v141, v141, s[56:59], 0 offen
	buffer_load_u16 v144, v144, s[56:59], 0 offen
	buffer_load_u16 v147, v147, s[56:59], 0 offen
	buffer_load_u16 v148, v148, s[56:59], 0 offen
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
	s_add_i32 s20, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s20, 7
	s_cmp_lg_u32 s39, s68
	s_mov_b32 s39, s20
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v10, v132, v10 :: v_dual_lshlrev_b32 v131, 16, v131
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v25, v25, v131
	v_mul_f32_e32 v26, v26, v131
	v_mul_f32_e32 v27, v27, v131
	v_mul_f32_e32 v28, v28, v131
	v_mul_f32_e32 v29, v29, v131
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v30, v30, v131 :: v_dual_lshlrev_b32 v133, 16, v133
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v134, 16, v134
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v12, v132, v12 :: v_dual_lshlrev_b32 v135, 16, v135
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v31, v31, v131 :: v_dual_lshlrev_b32 v138, 16, v138
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v17, v17, v131 :: v_dual_lshlrev_b32 v140, 16, v140
	v_dual_mul_f32 v14, v132, v14 :: v_dual_lshlrev_b32 v139, 16, v139
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v19, v19, v131 :: v_dual_lshlrev_b32 v142, 16, v142
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v21, v21, v131 :: v_dual_lshlrev_b32 v144, 16, v144
	v_dual_mul_f32 v16, v132, v16 :: v_dual_lshlrev_b32 v143, 16, v143
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v2, v132, v2 :: v_dual_lshlrev_b32 v147, 16, v147
	v_dual_mul_f32 v23, v23, v131 :: v_dual_lshlrev_b32 v146, 16, v146
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v132, v9 :: v_dual_lshlrev_b32 v148, 16, v148
	v_dual_mul_f32 v32, v32, v131 :: v_dual_lshlrev_b32 v145, 16, v145
	v_dual_mul_f32 v18, v18, v131 :: v_dual_mul_f32 v13, v132, v13
	v_dual_mul_f32 v20, v20, v131 :: v_dual_fmac_f32 v79, v25, v133
	v_dual_mul_f32 v22, v22, v131 :: v_dual_mul_f32 v1, v132, v1
	v_dual_mul_f32 v24, v24, v131 :: v_dual_fmac_f32 v75, v29, v137
	v_dual_mul_f32 v11, v132, v11 :: v_dual_fmac_f32 v78, v26, v134
	v_dual_mul_f32 v15, v132, v15 :: v_dual_fmac_f32 v74, v30, v138
	v_dual_mul_f32 v4, v132, v4 :: v_dual_fmac_f32 v77, v27, v135
	v_dual_mul_f32 v3, v132, v3 :: v_dual_fmac_f32 v70, v18, v142
	v_dual_mul_f32 v6, v132, v6 :: v_dual_fmac_f32 v73, v31, v139
	v_dual_mul_f32 v5, v132, v5 :: v_dual_fmac_f32 v66, v22, v147
	v_dual_mul_f32 v8, v132, v8 :: v_dual_fmac_f32 v71, v17, v141
	v_dual_mul_f32 v7, v132, v7 :: v_dual_fmac_f32 v64, v23, v145
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v76, v28, v136 :: v_dual_fmac_f32 v69, v19, v143
	v_dual_fmac_f32 v72, v32, v140 :: v_dual_fmac_f32 v67, v21, v146
	v_dual_fmac_f32 v68, v20, v144 :: v_dual_fmac_f32 v61, v9, v133
	v_dual_fmac_f32 v63, v24, v148 :: v_dual_fmac_f32 v62, v10, v134
	v_dual_fmac_f32 v59, v11, v135 :: v_dual_fmac_f32 v60, v12, v136
	v_dual_fmac_f32 v57, v13, v137 :: v_dual_fmac_f32 v58, v14, v138
	v_dual_fmac_f32 v55, v15, v139 :: v_dual_fmac_f32 v56, v16, v140
	v_dual_fmac_f32 v52, v1, v141 :: v_dual_fmac_f32 v53, v2, v142
	v_dual_fmac_f32 v51, v3, v143 :: v_dual_fmac_f32 v54, v4, v144
	v_dual_fmac_f32 v47, v5, v146 :: v_dual_fmac_f32 v48, v6, v147
	v_dual_fmac_f32 v46, v7, v145 :: v_dual_fmac_f32 v45, v8, v148
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s20, s64, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s20, 0, 0x80
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s20, v1
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
	s_and_b32 s21, s20, 0xe0
	s_mov_b32 s20, s63
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s63, s21
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_add_i32 s22, s3, s65
	s_mov_b32 s20, s63
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
	s_add_i32 s23, s22, s20
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s54, s50
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s24, s23, s46
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s23, s23, s47
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s24, s24, s61
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v131, s23, v109
	v_add_nc_u32_e32 v132, s23, v110
	v_add_nc_u32_e32 v133, s23, v111
	v_add_nc_u32_e32 v134, s23, v112
	v_add_nc_u32_e32 v135, s23, v113
	v_add_nc_u32_e32 v136, s23, v114
	v_add_nc_u32_e32 v137, s23, v115
	v_add_nc_u32_e32 v138, s23, v116
	v_add_nc_u32_e32 v139, s23, v117
	v_add_nc_u32_e32 v140, s23, v118
	v_add_nc_u32_e32 v141, s23, v119
	v_add_nc_u32_e32 v142, s23, v120
	v_add_nc_u32_e32 v143, s23, v121
	v_add_nc_u32_e32 v144, s23, v122
	v_add_nc_u32_e32 v145, s23, v123
	v_add_nc_u32_e32 v146, s23, v124
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_cndmask_b32_e64 v131, 0x80000000, v131, s18
	v_add_nc_u32_e32 v147, s24, v33
	v_add_nc_u32_e32 v148, s24, v105
	v_add_nc_u32_e32 v149, s24, v106
	v_add_nc_u32_e32 v150, s24, v34
	v_add_nc_u32_e32 v151, s24, v107
	v_add_nc_u32_e32 v152, s24, v35
	v_add_nc_u32_e32 v153, s24, v36
	v_add_nc_u32_e32 v154, s24, v37
	v_add_nc_u32_e32 v155, s24, v108
	v_add_nc_u32_e32 v156, s24, v38
	v_add_nc_u32_e32 v157, s24, v39
	v_add_nc_u32_e32 v158, s24, v40
	v_add_nc_u32_e32 v159, s24, v41
	v_add_nc_u32_e32 v160, s24, v42
	v_add_nc_u32_e32 v161, s24, v43
	v_add_nc_u32_e32 v162, s24, v44
	v_cndmask_b32_e64 v132, 0x80000000, v132, s18
	v_cndmask_b32_e64 v133, 0x80000000, v133, s18
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v134, 0x80000000, v134, s18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s18
	v_cndmask_b32_e64 v136, 0x80000000, v136, s18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s18
	v_cndmask_b32_e64 v139, 0x80000000, v139, s18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s18
	v_cndmask_b32_e64 v141, 0x80000000, v141, s18
	v_cndmask_b32_e64 v142, 0x80000000, v142, s18
	v_cndmask_b32_e64 v143, 0x80000000, v143, s18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s18
	v_cndmask_b32_e64 v145, 0x80000000, v145, s18
	v_cndmask_b32_e64 v146, 0x80000000, v146, s18
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_cndmask_b32 v148, 0x80000000, v148
	v_dual_cndmask_b32 v149, 0x80000000, v149 :: v_dual_cndmask_b32 v150, 0x80000000, v150
	v_dual_cndmask_b32 v151, 0x80000000, v151 :: v_dual_cndmask_b32 v152, 0x80000000, v152
	v_dual_cndmask_b32 v153, 0x80000000, v153 :: v_dual_cndmask_b32 v154, 0x80000000, v154
	v_dual_cndmask_b32 v155, 0x80000000, v155 :: v_dual_cndmask_b32 v156, 0x80000000, v156
	v_dual_cndmask_b32 v157, 0x80000000, v157 :: v_dual_cndmask_b32 v158, 0x80000000, v158
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_cndmask_b32 v160, 0x80000000, v160
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_cndmask_b32 v162, 0x80000000, v162
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xf
	buffer_load_u8 v187, v131, s[52:55], 0 offen
	buffer_load_u8 v188, v132, s[52:55], 0 offen
	buffer_load_u8 v189, v133, s[52:55], 0 offen
	buffer_load_u8 v190, v134, s[52:55], 0 offen
	buffer_load_u8 v191, v135, s[52:55], 0 offen
	buffer_load_u8 v192, v136, s[52:55], 0 offen
	buffer_load_u8 v193, v137, s[52:55], 0 offen
	buffer_load_u8 v194, v138, s[52:55], 0 offen
	buffer_load_u8 v195, v139, s[52:55], 0 offen
	buffer_load_u8 v196, v140, s[52:55], 0 offen
	buffer_load_u8 v197, v141, s[52:55], 0 offen
	buffer_load_u8 v198, v142, s[52:55], 0 offen
	buffer_load_u8 v199, v143, s[52:55], 0 offen
	buffer_load_u8 v200, v144, s[52:55], 0 offen
	buffer_load_u8 v201, v145, s[52:55], 0 offen
	buffer_load_u8 v202, v146, s[52:55], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0xf
	buffer_load_u8 v131, v147, s[48:51], 0 offen
	buffer_load_u8 v132, v148, s[48:51], 0 offen
	buffer_load_u8 v133, v149, s[48:51], 0 offen
	buffer_load_u8 v134, v150, s[48:51], 0 offen
	buffer_load_u8 v135, v151, s[48:51], 0 offen
	buffer_load_u8 v136, v152, s[48:51], 0 offen
	buffer_load_u8 v137, v153, s[48:51], 0 offen
	buffer_load_u8 v138, v155, s[48:51], 0 offen
	buffer_load_u8 v139, v156, s[48:51], 0 offen
	buffer_load_u8 v140, v157, s[48:51], 0 offen
	buffer_load_u8 v141, v158, s[48:51], 0 offen
	buffer_load_u8 v142, v159, s[48:51], 0 offen
	buffer_load_u8 v143, v160, s[48:51], 0 offen
	buffer_load_u8 v144, v154, s[48:51], 0 offen
	buffer_load_u8 v145, v161, s[48:51], 0 offen
	buffer_load_u8 v146, v162, s[48:51], 0 offen
	v_add_nc_u32_e32 v203, 0, v0
	v_add_nc_u32_e32 v204, 0, v125
	v_add_nc_u32_e32 v205, 0, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s20, s20, 32
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(15)
	ds_store_b8 v203, v131
	s_waitcnt vmcnt(14)
	ds_store_b8 v203, v132 offset:128
	s_waitcnt vmcnt(13)
	ds_store_b8 v203, v133 offset:256
	s_waitcnt vmcnt(12)
	ds_store_b8 v203, v134 offset:384
	s_waitcnt vmcnt(11)
	ds_store_b8 v203, v135 offset:512
	s_waitcnt vmcnt(10)
	ds_store_b8 v203, v136 offset:640
	s_waitcnt vmcnt(9)
	ds_store_b8 v203, v137 offset:768
	s_waitcnt vmcnt(8)
	ds_store_b8 v203, v138 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b8 v203, v139 offset:1152
	s_waitcnt vmcnt(6)
	ds_store_b8 v203, v140 offset:1280
	s_waitcnt vmcnt(5)
	ds_store_b8 v203, v141 offset:1408
	s_waitcnt vmcnt(4)
	ds_store_b8 v203, v142 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v203, v143 offset:1664
	s_waitcnt vmcnt(2)
	ds_store_b8 v204, v144
	s_waitcnt vmcnt(1)
	ds_store_b8 v203, v145 offset:1792
	s_waitcnt vmcnt(0)
	ds_store_b8 v205, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v206, v127 offset:448
	ds_load_u8 v207, v127 offset:384
	ds_load_u8 v208, v127 offset:320
	ds_load_u8 v209, v127 offset:256
	ds_load_u8 v179, v127 offset:480
	ds_load_u8 v180, v127 offset:416
	ds_load_u8 v181, v127 offset:352
	ds_load_u8 v182, v127 offset:288
	ds_load_u8 v210, v127 offset:192
	ds_load_u8 v211, v127 offset:128
	ds_load_u8 v212, v127 offset:64
	ds_load_u8 v183, v127 offset:224
	ds_load_u8 v184, v127 offset:160
	ds_load_u8 v185, v127 offset:96
	ds_load_u8 v213, v127
	ds_load_u8 v186, v127 offset:32
	ds_load_u8 v171, v127 offset:704
	ds_load_u8 v172, v127 offset:640
	ds_load_u8 v173, v127 offset:576
	ds_load_u8 v174, v127 offset:512
	ds_load_u8 v156, v127 offset:736
	ds_load_u8 v158, v127 offset:672
	ds_load_u8 v160, v127 offset:608
	ds_load_u8 v162, v127 offset:544
	ds_load_u8 v175, v127 offset:960
	ds_load_u8 v176, v127 offset:896
	ds_load_u8 v177, v127 offset:832
	ds_load_u8 v178, v127 offset:768
	ds_load_u8 v164, v127 offset:992
	ds_load_u8 v166, v127 offset:928
	ds_load_u8 v168, v127 offset:864
	ds_load_u8 v170, v127 offset:800
	ds_load_u8 v155, v127 offset:1216
	ds_load_u8 v157, v127 offset:1152
	ds_load_u8 v159, v127 offset:1088
	ds_load_u8 v161, v127 offset:1024
	ds_load_u8 v140, v127 offset:1248
	ds_load_u8 v142, v127 offset:1184
	ds_load_u8 v144, v127 offset:1120
	ds_load_u8 v146, v127 offset:1056
	ds_load_u8 v163, v127 offset:1472
	ds_load_u8 v165, v127 offset:1408
	ds_load_u8 v167, v127 offset:1344
	ds_load_u8 v169, v127 offset:1280
	ds_load_u8 v148, v127 offset:1504
	ds_load_u8 v150, v127 offset:1440
	ds_load_u8 v152, v127 offset:1376
	ds_load_u8 v154, v127 offset:1312
	ds_load_u8 v139, v127 offset:1728
	ds_load_u8 v141, v127 offset:1664
	ds_load_u8 v143, v127 offset:1600
	ds_load_u8 v145, v127 offset:1536
	ds_load_u8 v131, v127 offset:1760
	ds_load_u8 v132, v127 offset:1696
	ds_load_u8 v133, v127 offset:1632
	ds_load_u8 v134, v127 offset:1568
	ds_load_u8 v147, v127 offset:1984
	ds_load_u8 v149, v127 offset:1920
	ds_load_u8 v151, v127 offset:1856
	ds_load_u8 v153, v127 offset:1792
	ds_load_u8 v135, v127 offset:2016
	ds_load_u8 v136, v127 offset:1952
	ds_load_u8 v137, v127 offset:1888
	ds_load_u8 v138, v127 offset:1824
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v203, v196 offset:1152
	ds_store_b8 v203, v198 offset:1408
	ds_store_b8 v203, v200 offset:1664
	ds_store_b8 v204, v194
	ds_store_b8 v203, v187
	ds_store_b8 v203, v188 offset:128
	ds_store_b8 v203, v189 offset:256
	ds_store_b8 v203, v190 offset:384
	ds_store_b8 v203, v191 offset:512
	ds_store_b8 v203, v192 offset:640
	ds_store_b8 v203, v193 offset:768
	ds_store_b8 v203, v195 offset:1024
	ds_store_b8 v203, v197 offset:1280
	ds_store_b8 v203, v199 offset:1536
	ds_store_b8 v203, v201 offset:1792
	ds_store_b8 v205, v202
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v187, v209, v208, 0xc0c0004
	v_perm_b32 v188, v207, v206, 0xc0c0004
	v_perm_b32 v189, v213, v212, 0xc0c0004
	v_perm_b32 v190, v211, v210, 0xc0c0004
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_lshl_or_b32 v188, v188, 16, v187
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_lshl_or_b32 v187, v190, 16, v189
	ds_load_u8 v189, v128 offset:320
	ds_load_u8 v190, v128 offset:256
	ds_load_u8 v191, v128 offset:480
	ds_load_u8 v192, v128 offset:416
	ds_load_u8 v193, v128 offset:352
	ds_load_u8 v194, v128 offset:288
	v_perm_b32 v175, v176, v175, 0xc0c0004
	v_perm_b32 v173, v174, v173, 0xc0c0004
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_perm_b32 v181, v182, v181, 0xc0c0004
	v_perm_b32 v179, v180, v179, 0xc0c0004
	v_lshl_or_b32 v172, v175, 16, v177
	v_perm_b32 v182, v186, v185, 0xc0c0004
	v_lshl_or_b32 v171, v171, 16, v173
	ds_load_u8 v173, v128 offset:832
	ds_load_u8 v174, v128 offset:768
	ds_load_u8 v175, v128 offset:992
	ds_load_u8 v176, v128 offset:928
	ds_load_u8 v177, v128 offset:864
	ds_load_u8 v178, v128 offset:800
	v_perm_b32 v183, v184, v183, 0xc0c0004
	v_lshl_or_b32 v180, v179, 16, v181
	v_perm_b32 v160, v162, v160, 0xc0c0004
	v_perm_b32 v156, v158, v156, 0xc0c0004
	v_perm_b32 v158, v165, v163, 0xc0c0004
	v_lshl_or_b32 v179, v183, 16, v182
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v128 offset:448
	ds_load_u8 v195, v128 offset:384
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	v_perm_b32 v159, v161, v159, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	v_perm_b32 v155, v157, v155, 0xc0c0004
	v_perm_b32 v168, v170, v168, 0xc0c0004
	v_perm_b32 v164, v166, v164, 0xc0c0004
	v_perm_b32 v144, v146, v144, 0xc0c0004
	v_lshl_or_b32 v192, v191, 16, v193
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	v_lshl_or_b32 v155, v155, 16, v159
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_perm_b32 v142, v149, v147, 0xc0c0004
	v_perm_b32 v143, v145, v143, 0xc0c0004
	v_perm_b32 v139, v141, v139, 0xc0c0004
	v_lshl_or_b32 v176, v175, 16, v177
	v_lshl_or_b32 v177, v156, 16, v160
	v_perm_b32 v156, v169, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v195, v190, 0xc0c0004
	ds_load_u8 v195, v128 offset:64
	ds_load_u8 v196, v128
	ds_load_u8 v197, v128 offset:224
	ds_load_u8 v198, v128 offset:160
	ds_load_u8 v199, v128 offset:96
	ds_load_u8 v200, v128 offset:32
	v_lshl_or_b32 v139, v139, 16, v143
	v_perm_b32 v152, v154, v152, 0xc0c0004
	v_lshl_or_b32 v156, v158, 16, v156
	v_lshl_or_b32 v190, v190, 16, v189
	ds_load_u8 v157, v128 offset:1344
	ds_load_u8 v158, v128 offset:1280
	ds_load_u8 v159, v128 offset:1504
	ds_load_u8 v160, v128 offset:1440
	ds_load_u8 v161, v128 offset:1376
	ds_load_u8 v162, v128 offset:1312
	v_perm_b32 v148, v150, v148, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s20, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_lshl_or_b32 v132, v135, 16, v137
	v_lshl_or_b32 v131, v131, 16, v133
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	ds_load_u8 v196, v128 offset:192
	ds_load_u8 v201, v128 offset:128
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v194, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v128 offset:1472
	ds_load_u8 v163, v128 offset:1408
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v160, v159, 16, v161
	v_lshl_or_b32 v161, v140, 16, v144
	v_perm_b32 v140, v153, v151, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v196, v201, v196, 0xc0c0004
	v_lshl_or_b32 v140, v142, 16, v140
	ds_load_u8 v141, v128 offset:1856
	ds_load_u8 v142, v128 offset:1792
	ds_load_u8 v143, v128 offset:2016
	ds_load_u8 v144, v128 offset:1952
	ds_load_u8 v145, v128 offset:1888
	ds_load_u8 v146, v128 offset:1824
	v_lshl_or_b32 v189, v196, 16, v195
	v_perm_b32 v195, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v163, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[179:180], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v195, 16, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v158, v158, 16, v157
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[179:180], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v174, v128 offset:960
	ds_load_u8 v179, v128 offset:896
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v128 offset:1984
	ds_load_u8 v147, v128 offset:1920
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[187:188], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v145
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v179, v174, 0xc0c0004
	ds_load_u8 v179, v128 offset:576
	ds_load_u8 v180, v128 offset:512
	ds_load_u8 v181, v128 offset:736
	ds_load_u8 v182, v128 offset:672
	ds_load_u8 v183, v128 offset:608
	ds_load_u8 v184, v128 offset:544
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v142, v147, v142, 0xc0c0004
	v_lshl_or_b32 v174, v174, 16, v173
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v142, v142, 16, v141
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v128 offset:704
	ds_load_u8 v185, v128 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v178, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v185, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v173, v180, 16, v179
	v_perm_b32 v179, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[171:172], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v175, v179, 16, v178
	v_lshl_or_b32 v178, v164, 16, v168
	ds_load_u8 v163, v128 offset:1088
	ds_load_u8 v164, v128 offset:1024
	ds_load_u8 v165, v128 offset:1248
	ds_load_u8 v166, v128 offset:1184
	ds_load_u8 v167, v128 offset:1120
	ds_load_u8 v168, v128 offset:1056
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[177:178], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[177:178], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v128 offset:1216
	ds_load_u8 v169, v128 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v169, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v157, v164, 16, v163
	v_perm_b32 v163, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[157:158], v[155:156], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v159, v163, 16, v162
	v_lshl_or_b32 v162, v148, 16, v152
	ds_load_u8 v147, v128 offset:1600
	ds_load_u8 v148, v128 offset:1536
	ds_load_u8 v149, v128 offset:1760
	ds_load_u8 v150, v128 offset:1696
	ds_load_u8 v151, v128 offset:1632
	ds_load_u8 v152, v128 offset:1568
	v_wmma_i32_16x16x16_iu4 v[17:24], v[159:160], v[155:156], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[161:162], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[159:160], v[161:162], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v128 offset:1728
	ds_load_u8 v153, v128 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v153, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v141, v148, 16, v147
	v_perm_b32 v147, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[139:140], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v143, v147, 16, v146
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[143:144], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[143:144], v[131:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s21, s62, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s35, s21, 0x80
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s20, s35
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v131, 2, v96
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_add_i32 s33, s20, s3
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v132, 4, v96
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v133, s33, v96
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v134, 6, v96
	v_or_b32_e32 v135, 8, v96
	v_or_b32_e32 v136, 10, v96
	v_or_b32_e32 v137, 12, v96
	v_or_b32_e32 v138, 14, v96
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v131, s33, v131
	v_or_b32_e32 v132, s33, v132
	v_or_b32_e32 v134, s33, v134
	v_or_b32_e32 v135, s33, v135
	v_or_b32_e32 v136, s33, v136
	v_or_b32_e32 v137, s33, v137
	v_or_b32_e32 v138, s33, v138
	v_or_b32_e32 v139, s33, v97
	v_or_b32_e32 v140, s33, v98
	v_or_b32_e32 v141, s33, v99
	v_or_b32_e32 v142, s33, v100
	v_or_b32_e32 v143, s33, v101
	v_or_b32_e32 v144, s33, v102
	v_or_b32_e32 v145, s33, v103
	v_or_b32_e32 v146, s33, v104
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v147, s3, v133
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s42, s33, s65
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v148, s3, v131
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s36, s42, s46
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v149, s3, v132
	v_subrev_nc_u32_e32 v150, s3, v134
	v_subrev_nc_u32_e32 v151, s3, v135
	v_subrev_nc_u32_e32 v152, s3, v136
	v_subrev_nc_u32_e32 v153, s3, v137
	v_subrev_nc_u32_e32 v154, s3, v138
	v_subrev_nc_u32_e32 v155, s3, v139
	v_subrev_nc_u32_e32 v156, s3, v140
	v_subrev_nc_u32_e32 v157, s3, v141
	v_subrev_nc_u32_e32 v158, s3, v142
	v_subrev_nc_u32_e32 v159, s3, v143
	v_subrev_nc_u32_e32 v160, s3, v144
	v_subrev_nc_u32_e32 v161, s3, v145
	v_subrev_nc_u32_e32 v162, s3, v146
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s28, s35, v147
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s36, s36, s61
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s29, s35, v148
	v_add_nc_u32_e32 v147, s36, v33
	v_cmp_gt_i32_e64 s30, s35, v149
	v_add_nc_u32_e32 v148, s36, v105
	v_cmp_gt_i32_e64 s31, s35, v150
	v_cmp_gt_i32_e64 s22, s35, v151
	v_cmp_gt_i32_e64 s21, s35, v152
	v_cmp_gt_i32_e64 s20, s35, v153
	v_cmp_gt_i32_e64 s3, s35, v154
	v_cmp_gt_i32_e64 s27, s35, v155
	v_cmp_gt_i32_e64 s26, s35, v156
	v_cmp_gt_i32_e64 s25, s35, v157
	v_cmp_gt_i32_e64 s24, s35, v158
	v_cmp_gt_i32_e64 s23, s35, v159
	v_cmp_gt_i32_e64 s33, s35, v160
	v_cmp_gt_i32_e64 s34, s35, v161
	v_cmp_gt_i32_e64 s35, s35, v162
	v_add_nc_u32_e32 v149, s36, v106
	v_add_nc_u32_e32 v150, s36, v34
	v_add_nc_u32_e32 v151, s36, v107
	v_add_nc_u32_e32 v152, s36, v35
	v_add_nc_u32_e32 v153, s36, v36
	v_add_nc_u32_e32 v154, s36, v37
	v_add_nc_u32_e32 v155, s36, v108
	v_add_nc_u32_e32 v156, s36, v38
	v_add_nc_u32_e32 v157, s36, v39
	v_add_nc_u32_e32 v158, s36, v40
	v_add_nc_u32_e32 v159, s36, v41
	v_add_nc_u32_e32 v160, s36, v42
	v_add_nc_u32_e32 v161, s36, v43
	v_add_nc_u32_e32 v162, s36, v44
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s28
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s42, s42, s47
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v147, 0x80000000, v147, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s29
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v163, s42, v109
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v148, 0x80000000, v148, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s30
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v164, s42, v110
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v149, 0x80000000, v149, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s31
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v175, s42, v121
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v150, 0x80000000, v150, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s22
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s28, s18, s28
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v151, 0x80000000, v151, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s21
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v165, s42, v111
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v152, 0x80000000, v152, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s20
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v171, s42, v117
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v153, 0x80000000, v153, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s3
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v176, s42, v122
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v154, 0x80000000, v154, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s27
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s28
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v155, 0x80000000, v155, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s26
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v172, s42, v118
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v156, 0x80000000, v156, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s25
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s28, s18, s29
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v157, 0x80000000, v157, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s24
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v166, s42, v112
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v158, 0x80000000, v158, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s23
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s23, s18, s23
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s33
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v173, s42, v119
	v_add_nc_u32_e32 v177, s42, v123
	v_add_nc_u32_e32 v167, s42, v113
	v_add_nc_u32_e32 v174, s42, v120
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v164, 0x80000000, v164, s28
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s28, s18, s30
	s_and_b32 s27, s18, s27
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s23
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s23, s18, s33
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s34
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v168, s42, v114
	v_add_nc_u32_e32 v169, s42, v115
	v_add_nc_u32_e32 v170, s42, v116
	v_add_nc_u32_e32 v178, s42, v124
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s26, s18, s26
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v165, 0x80000000, v165, s28
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s28, s18, s31
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v163, v163, s[52:55], 0 offen
	v_cndmask_b32_e64 v171, 0x80000000, v171, s27
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s25, s18, s25
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s23
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s23, s18, s34
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s36
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s36, vcc_lo, s35
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v172, 0x80000000, v172, s26
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s24, s18, s24
	s_and_b32 s22, s18, s22
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v166, 0x80000000, v166, s28
	v_cndmask_b32_e64 v173, 0x80000000, v173, s25
	v_cndmask_b32_e64 v177, 0x80000000, v177, s23
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s23, s18, s35
	s_and_b32 s21, s18, s21
	s_and_b32 s20, s18, s20
	s_and_b32 s3, s18, s3
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s36
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v174, 0x80000000, v174, s24
	v_cndmask_b32_e64 v167, 0x80000000, v167, s22
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x7
	buffer_load_u8 v155, v155, s[48:51], 0 offen
	buffer_load_u8 v156, v156, s[48:51], 0 offen
	buffer_load_u8 v157, v157, s[48:51], 0 offen
	buffer_load_u8 v158, v158, s[48:51], 0 offen
	buffer_load_u8 v159, v159, s[48:51], 0 offen
	buffer_load_u8 v160, v160, s[48:51], 0 offen
	buffer_load_u8 v161, v161, s[48:51], 0 offen
	buffer_load_u8 v162, v162, s[48:51], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v178, 0x80000000, v178, s23
	v_cndmask_b32_e64 v168, 0x80000000, v168, s21
	v_cndmask_b32_e64 v169, 0x80000000, v169, s20
	v_cndmask_b32_e64 v170, 0x80000000, v170, s3
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x7
	buffer_load_u8 v147, v147, s[48:51], 0 offen
	buffer_load_u8 v148, v148, s[48:51], 0 offen
	buffer_load_u8 v149, v149, s[48:51], 0 offen
	buffer_load_u8 v150, v150, s[48:51], 0 offen
	buffer_load_u8 v151, v151, s[48:51], 0 offen
	buffer_load_u8 v152, v152, s[48:51], 0 offen
	buffer_load_u8 v153, v153, s[48:51], 0 offen
	buffer_load_u8 v154, v154, s[48:51], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0xe
	buffer_load_u8 v171, v171, s[52:55], 0 offen
	buffer_load_u8 v172, v172, s[52:55], 0 offen
	buffer_load_u8 v173, v173, s[52:55], 0 offen
	buffer_load_u8 v174, v174, s[52:55], 0 offen
	buffer_load_u8 v175, v175, s[52:55], 0 offen
	buffer_load_u8 v176, v176, s[52:55], 0 offen
	buffer_load_u8 v177, v177, s[52:55], 0 offen
	buffer_load_u8 v178, v178, s[52:55], 0 offen
	buffer_load_u8 v164, v164, s[52:55], 0 offen
	buffer_load_u8 v165, v165, s[52:55], 0 offen
	buffer_load_u8 v166, v166, s[52:55], 0 offen
	buffer_load_u8 v167, v167, s[52:55], 0 offen
	buffer_load_u8 v168, v168, s[52:55], 0 offen
	buffer_load_u8 v169, v169, s[52:55], 0 offen
	buffer_load_u8 v170, v170, s[52:55], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s67, v133
	v_cmp_eq_u32_e64 s28, s67, v131
	v_cmp_eq_u32_e64 s29, s67, v132
	v_cmp_eq_u32_e64 s31, s67, v135
	v_cmp_eq_u32_e64 s21, s67, v140
	v_cmp_eq_u32_e64 s24, s67, v143
	v_cmp_eq_u32_e64 s30, s67, v134
	v_cmp_eq_u32_e64 s20, s67, v139
	v_cmp_eq_u32_e64 s22, s67, v141
	v_cmp_eq_u32_e64 s23, s67, v142
	v_cmp_eq_u32_e64 s25, s67, v144
	v_cmp_eq_u32_e64 s26, s67, v145
	v_cmp_eq_u32_e64 s27, s67, v146
	v_cmp_eq_u32_e64 s33, s67, v136
	v_cmp_eq_u32_e64 s34, s67, v137
	v_cmp_eq_u32_e64 s35, s67, v138
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s3, s3, s38
	s_and_b32 s28, s28, s38
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v179, 0, v0
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s29, s29, s38
	s_and_b32 s30, s30, s38
	s_and_b32 s20, s20, s38
	s_and_b32 s21, s21, s38
	s_and_b32 s22, s22, s38
	s_and_b32 s23, s23, s38
	s_and_b32 s24, s24, s38
	s_and_b32 s25, s25, s38
	s_and_b32 s26, s26, s38
	s_and_b32 s27, s27, s38
	s_and_b32 s31, s31, s38
	s_and_b32 s33, s33, s38
	s_and_b32 s34, s34, s38
	s_and_b32 s35, s35, s38
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v180, 0, v125
	v_add_nc_u32_e32 v181, 0, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(31)
	v_and_b16 v135.h, v163.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v135.h, v163.l, v135.h, s3
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(30)
	v_and_b16 v131.h, v155.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v132.l, v156.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v132.h, v157.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v133.l, v158.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v133.h, v159.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v131.l, v147.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v140.l, v148.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v140.h, v149.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v143.h, v164.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v144.l, v165.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v141.l, v150.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v144.h, v166.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v134.l, v160.l, 15
	v_and_b16 v134.h, v161.l, 15
	v_and_b16 v135.l, v162.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v136.l, v171.l, 15
	v_and_b16 v136.h, v172.l, 15
	v_and_b16 v137.l, v173.l, 15
	v_and_b16 v137.h, v174.l, 15
	v_and_b16 v138.l, v175.l, 15
	v_and_b16 v138.h, v176.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v141.h, v151.l, 15
	v_and_b16 v142.l, v152.l, 15
	v_and_b16 v142.h, v153.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v145.l, v167.l, 15
	v_and_b16 v139.l, v177.l, 15
	v_and_b16 v139.h, v178.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v143.l, v154.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v145.h, v168.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v146.l, v169.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v146.h, v170.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v131.l, v147.l, v131.l, s3
	v_cndmask_b16 v140.l, v148.l, v140.l, s28
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v143.h, v164.l, v143.h, s28
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v140.h, v149.l, v140.h, s29
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v144.l, v165.l, v144.l, s29
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v141.l, v150.l, v141.l, s30
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v144.h, v166.l, v144.h, s30
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v131.h, v155.l, v131.h, s20
	v_cndmask_b16 v132.l, v156.l, v132.l, s21
	v_cndmask_b16 v132.h, v157.l, v132.h, s22
	v_cndmask_b16 v133.l, v158.l, v133.l, s23
	v_cndmask_b16 v133.h, v159.l, v133.h, s24
	v_cndmask_b16 v134.l, v160.l, v134.l, s25
	v_cndmask_b16 v134.h, v161.l, v134.h, s26
	v_cndmask_b16 v135.l, v162.l, v135.l, s27
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v136.l, v171.l, v136.l, s20
	v_cndmask_b16 v136.h, v172.l, v136.h, s21
	v_cndmask_b16 v137.l, v173.l, v137.l, s22
	v_cndmask_b16 v137.h, v174.l, v137.h, s23
	v_cndmask_b16 v138.l, v175.l, v138.l, s24
	v_cndmask_b16 v138.h, v176.l, v138.h, s25
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v141.h, v151.l, v141.h, s31
	v_cndmask_b16 v142.l, v152.l, v142.l, s33
	v_cndmask_b16 v142.h, v153.l, v142.h, s34
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v145.l, v167.l, v145.l, s31
	v_cndmask_b16 v139.l, v177.l, v139.l, s26
	v_cndmask_b16 v139.h, v178.l, v139.h, s27
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v143.l, v154.l, v143.l, s35
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v145.h, v168.l, v145.h, s33
	v_cndmask_b16 v146.l, v169.l, v146.l, s34
	v_cndmask_b16 v146.h, v170.l, v146.h, s35
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b8 v179, v131
	ds_store_b8 v179, v140 offset:128
	ds_store_b8_d16_hi v179, v140 offset:256
	ds_store_b8 v179, v141 offset:384
	ds_store_b8_d16_hi v179, v141 offset:512
	ds_store_b8 v179, v142 offset:640
	ds_store_b8_d16_hi v179, v142 offset:768
	ds_store_b8_d16_hi v179, v131 offset:1024
	ds_store_b8 v179, v132 offset:1152
	ds_store_b8_d16_hi v179, v132 offset:1280
	ds_store_b8 v179, v133 offset:1408
	ds_store_b8_d16_hi v179, v133 offset:1536
	ds_store_b8 v179, v134 offset:1664
	ds_store_b8 v180, v143
	ds_store_b8_d16_hi v179, v134 offset:1792
	ds_store_b8 v181, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v131, v127 offset:448
	ds_load_u8 v132, v127 offset:384
	ds_load_u8 v133, v127 offset:320
	ds_load_u8 v134, v127 offset:256
	ds_load_u8 v149, v127 offset:480
	ds_load_u8 v150, v127 offset:416
	ds_load_u8 v151, v127 offset:352
	ds_load_u8 v152, v127 offset:288
	ds_load_u8 v140, v127 offset:192
	ds_load_u8 v141, v127 offset:128
	ds_load_u8 v142, v127 offset:64
	ds_load_u8 v153, v127 offset:224
	ds_load_u8 v154, v127 offset:160
	ds_load_u8 v155, v127 offset:96
	ds_load_u8 v147, v127
	ds_load_u8 v156, v127 offset:32
	ds_load_u8 v148, v127 offset:704
	ds_load_u8 v157, v127 offset:640
	ds_load_u8 v158, v127 offset:576
	ds_load_u8 v159, v127 offset:512
	ds_load_u8 v160, v127 offset:736
	ds_load_u8 v161, v127 offset:672
	ds_load_u8 v162, v127 offset:608
	ds_load_u8 v163, v127 offset:544
	ds_load_u8 v164, v127 offset:960
	ds_load_u8 v165, v127 offset:896
	ds_load_u8 v166, v127 offset:832
	ds_load_u8 v167, v127 offset:768
	ds_load_u8 v168, v127 offset:992
	ds_load_u8 v169, v127 offset:928
	ds_load_u8 v170, v127 offset:864
	ds_load_u8 v171, v127 offset:800
	ds_load_u8 v172, v127 offset:1216
	ds_load_u8 v173, v127 offset:1152
	ds_load_u8 v174, v127 offset:1088
	ds_load_u8 v175, v127 offset:1024
	ds_load_u8 v176, v127 offset:1248
	ds_load_u8 v177, v127 offset:1184
	ds_load_u8 v178, v127 offset:1120
	ds_load_u8 v182, v127 offset:1056
	ds_load_u8 v183, v127 offset:1472
	ds_load_u8 v184, v127 offset:1408
	ds_load_u8 v185, v127 offset:1344
	ds_load_u8 v186, v127 offset:1280
	ds_load_u8 v187, v127 offset:1504
	ds_load_u8 v188, v127 offset:1440
	ds_load_u8 v189, v127 offset:1376
	ds_load_u8 v190, v127 offset:1312
	ds_load_u8 v191, v127 offset:1728
	ds_load_u8 v192, v127 offset:1664
	ds_load_u8 v193, v127 offset:1600
	ds_load_u8 v194, v127 offset:1536
	ds_load_u8 v195, v127 offset:1760
	ds_load_u8 v196, v127 offset:1696
	ds_load_u8 v197, v127 offset:1632
	ds_load_u8 v198, v127 offset:1568
	ds_load_u8 v199, v127 offset:1984
	ds_load_u8 v200, v127 offset:1920
	ds_load_u8 v201, v127 offset:1856
	ds_load_u8 v202, v127 offset:1792
	ds_load_u8 v203, v127 offset:2016
	ds_load_u8 v204, v127 offset:1952
	ds_load_u8 v205, v127 offset:1888
	ds_load_u8 v206, v127 offset:1824
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v179, v135
	ds_store_b8_d16_hi v179, v143 offset:128
	ds_store_b8 v179, v144 offset:256
	ds_store_b8_d16_hi v179, v144 offset:384
	ds_store_b8 v179, v145 offset:512
	ds_store_b8_d16_hi v179, v145 offset:640
	ds_store_b8 v179, v146 offset:768
	ds_store_b8 v179, v136 offset:1024
	ds_store_b8_d16_hi v179, v136 offset:1152
	ds_store_b8 v179, v137 offset:1280
	ds_store_b8_d16_hi v179, v137 offset:1408
	ds_store_b8 v179, v138 offset:1536
	ds_store_b8_d16_hi v179, v138 offset:1664
	ds_store_b8_d16_hi v180, v146
	ds_store_b8 v179, v139 offset:1792
	ds_store_b8_d16_hi v181, v139
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v135, v128 offset:320
	ds_load_u8 v136, v128 offset:256
	ds_load_u8 v137, v128 offset:448
	ds_load_u8 v138, v128 offset:384
	ds_load_u8 v139, v128 offset:64
	ds_load_u8 v143, v128
	ds_load_u8 v144, v128 offset:192
	ds_load_u8 v145, v128 offset:128
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v134, v147, v142, 0xc0c0004
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_perm_b32 v148, v157, v148, 0xc0c0004
	ds_load_u8 v146, v128 offset:480
	ds_load_u8 v147, v128 offset:416
	ds_load_u8 v179, v128 offset:352
	ds_load_u8 v180, v128 offset:288
	v_lshl_or_b32 v132, v131, 16, v133
	ds_load_u8 v181, v128 offset:224
	ds_load_u8 v207, v128 offset:160
	ds_load_u8 v208, v128 offset:96
	ds_load_u8 v209, v128 offset:32
	v_lshl_or_b32 v131, v140, 16, v134
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_perm_b32 v152, v156, v155, 0xc0c0004
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v156, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v150, v149, 16, v151
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v133, v143, v139, 0xc0c0004
	v_perm_b32 v136, v138, v137, 0xc0c0004
	v_perm_b32 v143, v167, v166, 0xc0c0004
	v_lshl_or_b32 v149, v153, 16, v152
	v_perm_b32 v151, v171, v170, 0xc0c0004
	v_perm_b32 v152, v169, v168, 0xc0c0004
	v_lshl_or_b32 v134, v136, 16, v135
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v145, v144, 0xc0c0004
	ds_load_u8 v136, v128 offset:832
	ds_load_u8 v137, v128 offset:768
	ds_load_u8 v138, v128 offset:960
	ds_load_u8 v139, v128 offset:896
	v_perm_b32 v144, v165, v164, 0xc0c0004
	v_perm_b32 v145, v159, v158, 0xc0c0004
	ds_load_u8 v157, v128 offset:992
	ds_load_u8 v158, v128 offset:928
	ds_load_u8 v159, v128 offset:864
	ds_load_u8 v164, v128 offset:800
	v_lshl_or_b32 v133, v135, 16, v133
	ds_load_u8 v135, v128 offset:576
	ds_load_u8 v140, v128 offset:512
	ds_load_u8 v141, v128 offset:704
	ds_load_u8 v142, v128 offset:640
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v147, v209, v208, 0xc0c0004
	v_perm_b32 v180, v207, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[133:134], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v153, v163, v162, 0xc0c0004
	v_lshl_or_b32 v146, v146, 16, v179
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[149:150], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v134, v152, 16, v151
	v_perm_b32 v151, v188, v187, 0xc0c0004
	v_lshl_or_b32 v133, v156, 16, v153
	v_perm_b32 v153, v182, v178, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v137, v137, v136, 0xc0c0004
	v_lshl_or_b32 v136, v144, 16, v143
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v128 offset:1344
	ds_load_u8 v165, v128 offset:1280
	ds_load_u8 v166, v128 offset:1472
	ds_load_u8 v167, v128 offset:1408
	ds_load_u8 v210, v128 offset:736
	ds_load_u8 v211, v128 offset:672
	ds_load_u8 v212, v128 offset:608
	ds_load_u8 v213, v128 offset:544
	v_perm_b32 v143, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v140, v140, v135, 0xc0c0004
	v_lshl_or_b32 v135, v148, 16, v145
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v128 offset:1088
	ds_load_u8 v214, v128 offset:1024
	ds_load_u8 v215, v128 offset:1216
	ds_load_u8 v216, v128 offset:1152
	v_lshl_or_b32 v138, v138, 16, v137
	v_perm_b32 v144, v173, v172, 0xc0c0004
	ds_load_u8 v148, v128 offset:1504
	ds_load_u8 v172, v128 offset:1440
	ds_load_u8 v173, v128 offset:1376
	ds_load_u8 v174, v128 offset:1312
	v_lshl_or_b32 v137, v141, 16, v140
	v_perm_b32 v140, v186, v185, 0xc0c0004
	v_perm_b32 v141, v184, v183, 0xc0c0004
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_perm_b32 v186, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v145, v165, v139, 0xc0c0004
	v_lshl_or_b32 v139, v144, 16, v143
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v165, v167, v166, 0xc0c0004
	v_lshl_or_b32 v140, v141, 16, v140
	ds_load_u8 v166, v128 offset:1248
	ds_load_u8 v167, v128 offset:1184
	ds_load_u8 v175, v128 offset:1120
	ds_load_u8 v183, v128 offset:1056
	v_perm_b32 v143, v202, v201, 0xc0c0004
	v_perm_b32 v144, v200, v199, 0xc0c0004
	ds_load_u8 v181, v128 offset:2016
	ds_load_u8 v199, v128 offset:1952
	ds_load_u8 v200, v128 offset:1888
	ds_load_u8 v201, v128 offset:1824
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v158, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v214, v142, 0xc0c0004
	v_lshl_or_b32 v142, v165, 16, v145
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v185, v216, v215, 0xc0c0004
	v_lshl_or_b32 v144, v144, 16, v143
	v_perm_b32 v143, v194, v193, 0xc0c0004
	ds_load_u8 v191, v128 offset:1600
	ds_load_u8 v192, v128 offset:1536
	ds_load_u8 v193, v128 offset:1728
	ds_load_u8 v194, v128 offset:1664
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v185, 16, v184
	ds_load_u8 v145, v128 offset:1856
	ds_load_u8 v165, v128 offset:1792
	ds_load_u8 v184, v128 offset:1984
	ds_load_u8 v185, v128 offset:1920
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v137, v206, v205, 0xc0c0004
	v_lshl_or_b32 v143, v186, 16, v143
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[139:140], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v155, v199, v181, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v154, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v192, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v165, v165, v145, 0xc0c0004
	v_lshl_or_b32 v145, v180, 16, v147
	v_perm_b32 v147, v164, v159, 0xc0c0004
	v_perm_b32 v159, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v164, v128 offset:1760
	ds_load_u8 v179, v128 offset:1696
	ds_load_u8 v180, v128 offset:1632
	ds_load_u8 v185, v128 offset:1568
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v157, 16, v147
	v_lshl_or_b32 v131, v159, 16, v158
	v_perm_b32 v157, v174, v173, 0xc0c0004
	v_perm_b32 v158, v172, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[145:146], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v145, v198, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v135, v183, v175, 0xc0c0004
	v_lshl_or_b32 v136, v158, 16, v157
	v_perm_b32 v157, v167, v166, 0xc0c0004
	v_perm_b32 v146, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[131:132], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v184, 16, v165
	v_lshl_or_b32 v147, v192, 16, v191
	v_lshl_or_b32 v135, v157, 16, v135
	v_lshl_or_b32 v131, v146, 16, v145
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v179, v164, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[143:144], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v155, 16, v154
	v_perm_b32 v140, v190, v189, 0xc0c0004
	v_perm_b32 v154, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v185, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v152, v151, 16, v140
	v_lshl_or_b32 v151, v154, 16, v153
	v_perm_b32 v140, v204, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v138, v156, 16, v155
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[151:152], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v132, v140, 16, v137
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[151:152], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[143:144], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[138:139], v[131:132], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge69
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v14, 24, v65
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s37, s47
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v22, v77, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s3, s60
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v79, v79
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_or_b32_e32 v5, 39, v14
	v_or_b32_e32 v9, 35, v14
	v_or_b32_e32 v10, 34, v14
	v_or_b32_e32 v6, 38, v14
	v_or_b32_e32 v13, 7, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v5
	v_or_b32_e32 v11, s60, v9
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v7, 37, v14
	v_or_b32_e32 v8, 36, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s47, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s47, v11
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v11, 33, v14
	v_or_b32_e32 v16, 5, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s60, v7
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s47, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v13
	v_or_b32_e32 v4, s60, v8
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v12, 32, v14
	v_or_b32_e32 v15, 6, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s47, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s47, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v17, 4, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v16
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v19, 2, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s47, v3
	v_cmp_gt_i32_e64 s4, s47, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s60, v12
	v_or_b32_e32 v4, s60, v15
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v18, 3, v14
	v_or_b32_e32 v20, 1, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s47, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s47, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s60, v19
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s47, v3
	v_cmp_gt_i32_e64 s10, s47, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s60, v18
	v_or_b32_e32 v4, s60, v20
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s47, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s60, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s47, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v1, v79, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s47, v3
	v_cmp_gt_i32_e64 s15, s47, v4
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s47, v50, s[18:19]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s47, v2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v4, v79, v1, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s47, v49, s[18:19]
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v2, v78, 16, 1
	v_bfe_u32 v23, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cmp_o_f32_e64 s3, v78, v78
	v_add3_u32 v22, v77, v22, 0x7fff
	v_add3_u32 v2, v78, v2, 0x7fff
	v_cmp_o_f32_e64 s17, v77, v77
	v_add3_u32 v23, v76, v23, 0x7fff
	v_cmp_o_f32_e64 s18, v76, v76
	v_bfe_u32 v24, v74, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v75, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s17
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s18
	v_bfe_u32 v23, v73, 16, 1
	v_cmp_o_f32_e64 s3, v75, v75
	v_add3_u32 v2, v75, v2, 0x7fff
	v_add3_u32 v24, v74, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v74, v74
	v_bfe_u32 v25, v72, 16, 1
	v_add3_u32 v23, v73, v23, 0x7fff
	v_cmp_o_f32_e64 s18, v73, v73
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v24.h, s17
	v_bfe_u32 v24, v71, 16, 1
	v_bfe_u32 v26, v70, 16, 1
	v_add3_u32 v25, v72, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v72, v72
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s18
	v_add3_u32 v24, v71, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v71, v71
	v_add3_u32 v26, v70, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v70, v70
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v69, 16, 1
	v_bfe_u32 v27, v68, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s17
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s18
	v_bfe_u32 v26, v67, 16, 1
	v_add3_u32 v25, v69, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v69, v69
	v_add3_u32 v27, v68, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v68, v68
	v_bfe_u32 v28, v66, 16, 1
	v_bfe_u32 v29, v64, 16, 1
	v_add3_u32 v26, v67, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v67, v67
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s17
	v_add3_u32 v27, v66, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_add3_u32 v28, v64, v29, 0x7fff
	v_mov_b16_e32 v29.l, v61.h
	v_mov_b16_e32 v29.h, v21.h
	v_mov_b16_e32 v21.l, v62.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s18
	v_bfe_u32 v30, v63, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v21.l, v60.h
	v_cmp_o_f32_e64 s17, v64, v64
	v_add3_u32 v30, v63, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v63, v63
	v_add3_u32 v27, v61, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v61, v61
	v_mov_b16_e32 v31.l, v59.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_add3_u32 v29, v62, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v60, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v60, v60
	v_mov_b16_e32 v21.l, v58.h
	v_mov_b16_e32 v31.l, v57.h
	v_add3_u32 v27, v59, v27, 0x7fff
	v_mov_b16_e32 v33.l, v55.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_cmp_o_f32_e64 s3, v59, v59
	v_and_b32_e32 v32, 1, v21
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v56.h
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s3
	v_cmp_o_f32_e64 s3, v57, v57
	v_add3_u32 v31, v57, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v21.l, v53.h
	v_add3_u32 v32, v58, v32, 0x7fff
	v_cmp_o_f32_e64 s17, v62, v62
	v_add3_u32 v27, v55, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v55, v55
	v_mov_b16_e32 v34.l, v52.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s3
	v_and_b32_e32 v31, 1, v21
	v_mov_b16_e32 v21.l, v54.h
	v_add3_u32 v33, v56, v33, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s17
	v_cmp_o_f32_e64 s17, v58, v58
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v34
	v_add3_u32 v31, v53, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v53, v53
	v_mov_b16_e32 v34.l, v51.h
	v_and_b32_e32 v35, 1, v21
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s17
	v_cmp_o_f32_e64 s17, v56, v56
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s3
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v35, v54, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v54, v54
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s17
	v_add3_u32 v27, v52, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v52, v52
	v_add3_u32 v34, v51, v34, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	v_mov_b16_e32 v21.l, v48.h
	v_cmp_o_f32_e64 s3, v51, v51
	v_mov_b16_e32 v36.l, v46.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s17
	v_mov_b16_e32 v27.l, v47.h
	v_mov_b16_e32 v27.h, v21.h
	v_and_b32_e32 v37, 1, v21
	v_mov_b16_e32 v21.l, v45.h
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s3
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v36, v48, v37, 0x7fff
	v_and_b32_e32 v37, 1, v21
	v_cmp_o_f32_e64 s3, v48, v48
	v_add3_u32 v34, v46, v34, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s20, v46, v46
	v_add3_u32 v27, v47, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v47, v47
	v_add3_u32 v37, v45, v37, 0x7fff
	v_cmp_o_f32_e64 s18, v45, v45
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s20
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
	s_and_b32 s3, s19, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v52, v3, v19, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
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
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v35, v50, s[44:47], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s3
	v_add_lshl_u32 v35, v3, v18, 1
	buffer_store_b16 v33, v51, s[44:47], 0 offen
	v_add_lshl_u32 v33, v3, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v21.l, v2.h
	buffer_store_b16 v2, v50, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v16, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v32, v0, v36, v32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
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
	buffer_store_b16 v21, v35, s[44:47], 0 offen
	v_add_lshl_u32 v21, v3, v15, 1
	buffer_store_b16 v27, v33, s[44:47], 0 offen
	v_add_lshl_u32 v27, v3, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v36, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v34.l, v4.h
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v4, v21, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v21, v3, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v34, v27, s[44:47], 0 offen
	buffer_store_b16 v22, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v39, v4, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v23, v21, s[44:47], 0 offen
	v_add_lshl_u32 v21, v3, v7, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v38, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_store_b16 v24, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v41, v21, s[44:47], 0 offen
	buffer_store_b16 v25, v2, s[44:47], 0 offen
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
	buffer_store_b16 v40, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v19, 1
	buffer_store_b16 v26, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v43, v2, s[44:47], 0 offen
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
	buffer_store_b16 v28, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v16, 1
	buffer_store_b16 v42, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v15, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v29, v2, s[44:47], 0 offen
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
	buffer_store_b16 v45, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v30, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v44, v2, s[44:47], 0 offen
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
	buffer_store_b16 v37, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v31, v2, s[44:47], 0 offen
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
	buffer_store_b16 v46, v3, s[44:47], 0 offen
	buffer_store_b16 v32, v4, s[44:47], 0 offen
	buffer_store_b16 v49, v2, s[44:47], 0 offen
	buffer_store_b16 v0, v5, s[44:47], 0 offen
	buffer_store_b16 v48, v1, s[44:47], 0 offen
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
		.amdhsa_next_free_vgpr 217
		.amdhsa_next_free_sgpr 69
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
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 217
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14196
; TotalNumSgprs: 71
; NumVgprs: 217
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 217
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
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     217
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
