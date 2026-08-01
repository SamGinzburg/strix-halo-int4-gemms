	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v62, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s19, 63
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
	s_ashr_i32 s27, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s26, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s26, s27
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s26
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s24, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s24, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s7, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s35, s24, s18
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s9, s7
	s_xor_b32 s10, s7, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s39, s10, 31
	v_readfirstlane_b32 s8, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 15, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v51, v62, 16, v1
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v52, 32, v51
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s5
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s8, s6
	s_add_i32 s10, s8, 1
	s_sub_i32 s9, s9, s11
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s25, s24, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s38, s6, s39
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[24:25], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s38, s39
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s10, s6, s26
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s25, s6, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s7, s7, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s25, v51
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s34, s[4:5], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s25, v52
	s_mov_b32 s8, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s6, s18, v2
	v_cmp_gt_i32_e64 s5, s18, v3
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s4, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge15_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s28, s25, s35
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr28
.LBB0_3:                                ; %Flow466
	s_load_b64 s[16:17], s[0:1], 0x28
	v_lshrrev_b32_e32 v57, 1, v0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s7, s7, 6
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph14
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s0, s4, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s21, s34, 31
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s20, s4, s0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s29, s20, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s20, s34, s21
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v4, 16, v57
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s30, s3, 5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s31, s20, 1
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v75, v3, v4, s7
	v_add3_u32 v82, 0, v4, v1
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s27, s27, s24
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v5, 48, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v80, 32, v75
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s3, s24, s36
	s_and_b32 s21, s9, 0xffff
	s_and_b32 s9, s11, 0xffff
	s_bitcmp1_b32 s34, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v1, s3, s30, v62
	s_cselect_b32 s34, -1, 0
	s_add_i32 s28, s25, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v3, s28, v51
	s_mov_b32 s20, s8
	s_mov_b32 s8, s10
	s_sub_i32 s10, s39, s27
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v6, s28, v52
	v_mul_lo_u32 v83, v3, s37
	v_mul_lo_u32 v3, s18, v1
	s_sub_i32 s10, s10, s38
	v_mul_lo_u32 v1, s19, v1
	s_mul_i32 s26, s26, s10
	s_lshl_b32 s10, s38, 6
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v91, s3, v62
	s_lshl_b32 s3, s26, 6
	s_lshl_b32 s2, s2, 6
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v41, s25, v5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v42, s7, v5
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v3, v3, s10, v5
	s_add_i32 s2, s2, s3
	v_mul_lo_u32 v84, v6, s37
	v_add3_u32 v92, s2, v1, v5
	s_lshl_b32 s2, s39, 6
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v41
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v42
	v_cmp_gt_i32_e64 s4, s19, v80
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v81, 0, v51
	v_or_b32_e32 v85, 36, v75
	v_or_b32_e32 v86, 38, v75
	v_or_b32_e32 v87, 40, v75
	v_or_b32_e32 v88, 42, v75
	v_or_b32_e32 v89, 44, v75
	v_or_b32_e32 v90, 46, v75
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_subrev_nc_u32_e32 v93, s2, v3
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v94, 0, v2
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_add_i32 s36, s29, -1
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s33, s24, s37
	s_mov_b32 s35, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s37, s36, 6
	s_lshl_b32 s38, s19, 6
	s_lshl_b32 s39, s19, 5
	s_lshl_b32 s40, s18, 6
	s_lshl_b32 s41, s18, 5
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s2, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v75
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v33, v83, s35, 1
	v_or_b32_e32 v35, 2, v75
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s35, s33
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v34, v84, s35, 1
	v_or_b32_e32 v36, 4, v75
	v_or_b32_e32 v38, 6, v75
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s19
	v_or_b32_e32 v39, 8, v75
	v_or_b32_e32 v40, 10, v75
	v_or_b32_e32 v95, 12, v75
	v_or_b32_e32 v96, 14, v75
	v_or_b32_e32 v97, 34, v75
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s6
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v37, v75, s2, 1
	v_add_lshl_u32 v35, v35, s2, 1
	v_add_lshl_u32 v100, v86, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v36, v36, s2, 1
	v_add_lshl_u32 v101, v88, s2, 1
	v_add_lshl_u32 v38, v38, s2, 1
	v_add_lshl_u32 v102, v90, s2, 1
	v_add_lshl_u32 v39, v39, s2, 1
	v_add_lshl_u32 v103, v89, s2, 1
	v_add_lshl_u32 v40, v40, s2, 1
	v_add_lshl_u32 v95, v95, s2, 1
	v_add_lshl_u32 v96, v96, s2, 1
	v_add_lshl_u32 v98, v80, s2, 1
	v_add_lshl_u32 v97, v97, s2, 1
	v_add_lshl_u32 v99, v85, s2, 1
	v_add_lshl_u32 v104, v87, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s4
	v_cndmask_b32_e64 v101, 0x80000000, v101, s4
	v_cndmask_b32_e64 v102, 0x80000000, v102, s4
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	v_cndmask_b32_e64 v103, 0x80000000, v103, s4
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_cndmask_b32_e64 v98, 0x80000000, v98, s4
	v_cndmask_b32_e64 v97, 0x80000000, v97, s4
	v_cndmask_b32_e64 v104, 0x80000000, v104, s4
	v_cndmask_b32_e64 v99, 0x80000000, v99, s4
	s_clause 0xf
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	buffer_load_u16 v100, v100, s[12:15], 0 offen
	buffer_load_u16 v101, v101, s[12:15], 0 offen
	buffer_load_u16 v102, v102, s[12:15], 0 offen
	buffer_load_u16 v103, v103, s[12:15], 0 offen
	buffer_load_u16 v104, v104, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	buffer_load_u16 v39, v39, s[12:15], 0 offen
	buffer_load_u16 v40, v40, s[12:15], 0 offen
	buffer_load_u16 v95, v95, s[12:15], 0 offen
	buffer_load_u16 v96, v96, s[12:15], 0 offen
	buffer_load_u16 v97, v97, s[12:15], 0 offen
	buffer_load_u16 v99, v99, s[12:15], 0 offen
	buffer_load_u16 v98, v98, s[12:15], 0 offen
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
	s_add_i32 s3, s35, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v93, s40, v93
	s_lshl_b32 s2, s3, 6
	s_cmp_lg_u32 s35, s37
	s_mov_b32 s35, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v10, v34, v10 :: v_dual_lshlrev_b32 v33, 16, v33
	v_dual_mul_f32 v25, v25, v33 :: v_dual_add_nc_u32 v92, s38, v92
	v_mul_f32_e32 v26, v26, v33
	v_mul_f32_e32 v27, v27, v33
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v28, v28, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v19, v19, v33 :: v_dual_lshlrev_b32 v38, 16, v38
	v_dual_mul_f32 v29, v29, v33 :: v_dual_lshlrev_b32 v100, 16, v100
	v_dual_mul_f32 v14, v34, v14 :: v_dual_lshlrev_b32 v101, 16, v101
	v_dual_mul_f32 v12, v34, v12 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v31, v31, v33 :: v_dual_lshlrev_b32 v104, 16, v104
	v_dual_mul_f32 v17, v17, v33 :: v_dual_lshlrev_b32 v102, 16, v102
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v21, v21, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v23, v23, v33 :: v_dual_lshlrev_b32 v40, 16, v40
	v_dual_mul_f32 v30, v30, v33 :: v_dual_lshlrev_b32 v39, 16, v39
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v9, v34, v9 :: v_dual_lshlrev_b32 v96, 16, v96
	v_dual_mul_f32 v32, v32, v33 :: v_dual_lshlrev_b32 v95, 16, v95
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v16, v34, v16 :: v_dual_lshlrev_b32 v97, 16, v97
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v34, v11 :: v_dual_lshlrev_b32 v98, 16, v98
	v_dual_mul_f32 v18, v18, v33 :: v_dual_lshlrev_b32 v99, 16, v99
	v_dual_mul_f32 v20, v20, v33 :: v_dual_mul_f32 v15, v34, v15
	v_dual_mul_f32 v22, v22, v33 :: v_dual_fmac_f32 v77, v27, v36
	v_dual_mul_f32 v24, v24, v33 :: v_dual_mul_f32 v3, v34, v3
	v_dual_mul_f32 v13, v34, v13 :: v_dual_fmac_f32 v76, v28, v38
	v_dual_mul_f32 v2, v34, v2 :: v_dual_fmac_f32 v79, v25, v37
	v_dual_mul_f32 v1, v34, v1 :: v_dual_fmac_f32 v74, v29, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v4, v34, v4 :: v_dual_fmac_f32 v63, v24, v102
	v_dual_mul_f32 v6, v34, v6 :: v_dual_fmac_f32 v71, v32, v96
	v_dual_mul_f32 v5, v34, v5 :: v_dual_fmac_f32 v72, v31, v95
	v_dual_mul_f32 v8, v34, v8 :: v_dual_fmac_f32 v59, v12, v38
	v_dual_mul_f32 v7, v34, v7 :: v_dual_fmac_f32 v70, v17, v98
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v78, v26, v35 :: v_dual_fmac_f32 v67, v20, v100
	v_dual_fmac_f32 v73, v30, v40 :: v_dual_fmac_f32 v68, v19, v99
	v_dual_fmac_f32 v69, v18, v97 :: v_dual_fmac_f32 v66, v21, v104
	v_dual_fmac_f32 v65, v22, v101 :: v_dual_fmac_f32 v64, v23, v103
	v_dual_fmac_f32 v60, v9, v37 :: v_dual_fmac_f32 v61, v10, v35
	v_dual_fmac_f32 v58, v11, v36 :: v_dual_fmac_f32 v55, v13, v39
	v_dual_fmac_f32 v56, v14, v40 :: v_dual_fmac_f32 v53, v15, v95
	v_dual_fmac_f32 v54, v16, v96 :: v_dual_fmac_f32 v49, v1, v98
	v_dual_fmac_f32 v50, v2, v97 :: v_dual_fmac_f32 v47, v3, v99
	v_fmac_f32_e32 v48, v4, v100
	v_dual_fmac_f32 v45, v5, v104 :: v_dual_fmac_f32 v46, v6, v101
	v_dual_fmac_f32 v44, v7, v103 :: v_dual_fmac_f32 v43, v8, v102
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s31, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s3, 0, 64
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s3, v1
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
	s_and_b32 s42, s3, 0x60
	s_mov_b32 s3, s30
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s30, s42
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v96, v92
	v_mov_b32_e32 v95, v93
	s_mov_b32 s3, s30
	s_delay_alu instid0(VALU_DEP_2)
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
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v33, 0x80000000, v95, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v34, 0x80000000, v96, s1
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 1461 27                       ; ragged.py:1461:27
	v_add_nc_u32_e32 v96, s39, v96
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b128 v[37:40], v33, s[20:23], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_b128 v[33:36], v34, s[8:11], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1461 27                       ; ragged.py:1461:27
	v_add_nc_u32_e32 v95, s41, v95
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s42
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(1)
	ds_store_b128 v94, v[37:40]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v37, v81 offset:448
	ds_load_u8 v38, v81 offset:384
	ds_load_u8 v39, v81 offset:320
	ds_load_u8 v40, v81 offset:256
	ds_load_u8 v97, v81 offset:480
	ds_load_u8 v98, v81 offset:416
	ds_load_u8 v99, v81 offset:352
	ds_load_u8 v100, v81 offset:288
	ds_load_u8 v101, v81 offset:192
	ds_load_u8 v102, v81 offset:128
	ds_load_u8 v103, v81 offset:64
	ds_load_u8 v104, v81 offset:224
	ds_load_u8 v105, v81 offset:160
	ds_load_u8 v106, v81 offset:96
	ds_load_u8 v107, v81
	ds_load_u8 v108, v81 offset:32
	ds_load_u8 v109, v81 offset:704
	ds_load_u8 v110, v81 offset:640
	ds_load_u8 v111, v81 offset:576
	ds_load_u8 v112, v81 offset:512
	ds_load_u8 v113, v81 offset:736
	ds_load_u8 v114, v81 offset:672
	ds_load_u8 v115, v81 offset:608
	ds_load_u8 v116, v81 offset:544
	ds_load_u8 v117, v81 offset:960
	ds_load_u8 v118, v81 offset:896
	ds_load_u8 v119, v81 offset:832
	ds_load_u8 v120, v81 offset:768
	ds_load_u8 v121, v81 offset:992
	ds_load_u8 v122, v81 offset:928
	ds_load_u8 v123, v81 offset:864
	ds_load_u8 v124, v81 offset:800
	ds_load_u8 v125, v81 offset:1216
	ds_load_u8 v126, v81 offset:1152
	ds_load_u8 v127, v81 offset:1088
	ds_load_u8 v128, v81 offset:1024
	ds_load_u8 v129, v81 offset:1248
	ds_load_u8 v130, v81 offset:1184
	ds_load_u8 v131, v81 offset:1120
	ds_load_u8 v132, v81 offset:1056
	ds_load_u8 v133, v81 offset:1472
	ds_load_u8 v134, v81 offset:1408
	ds_load_u8 v135, v81 offset:1344
	ds_load_u8 v136, v81 offset:1280
	ds_load_u8 v137, v81 offset:1504
	ds_load_u8 v138, v81 offset:1440
	ds_load_u8 v139, v81 offset:1376
	ds_load_u8 v140, v81 offset:1312
	ds_load_u8 v141, v81 offset:1728
	ds_load_u8 v142, v81 offset:1664
	ds_load_u8 v143, v81 offset:1600
	ds_load_u8 v144, v81 offset:1536
	ds_load_u8 v145, v81 offset:1760
	ds_load_u8 v146, v81 offset:1696
	ds_load_u8 v147, v81 offset:1632
	ds_load_u8 v148, v81 offset:1568
	ds_load_u8 v149, v81 offset:1984
	ds_load_u8 v150, v81 offset:1920
	ds_load_u8 v151, v81 offset:1856
	ds_load_u8 v152, v81 offset:1792
	ds_load_u8 v153, v81 offset:2016
	ds_load_u8 v154, v81 offset:1952
	ds_load_u8 v155, v81 offset:1888
	ds_load_u8 v156, v81 offset:1824
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v94, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v33, v82 offset:64
	ds_load_u8 v34, v82
	ds_load_u8 v35, v82 offset:192
	ds_load_u8 v36, v82 offset:128
	ds_load_u8 v157, v82 offset:224
	ds_load_u8 v158, v82 offset:160
	ds_load_u8 v159, v82 offset:96
	ds_load_u8 v160, v82 offset:32
	ds_load_u8 v161, v82 offset:320
	ds_load_u8 v162, v82 offset:256
	ds_load_u8 v163, v82 offset:448
	ds_load_u8 v164, v82 offset:384
	ds_load_u8 v165, v82 offset:480
	ds_load_u8 v166, v82 offset:416
	ds_load_u8 v167, v82 offset:352
	ds_load_u8 v168, v82 offset:288
	ds_load_u8 v169, v82 offset:832
	ds_load_u8 v170, v82 offset:768
	ds_load_u8 v171, v82 offset:960
	ds_load_u8 v172, v82 offset:896
	ds_load_u8 v173, v82 offset:992
	ds_load_u8 v174, v82 offset:928
	ds_load_u8 v175, v82 offset:864
	ds_load_u8 v176, v82 offset:800
	ds_load_u8 v177, v82 offset:576
	ds_load_u8 v178, v82 offset:512
	ds_load_u8 v179, v82 offset:704
	ds_load_u8 v180, v82 offset:640
	ds_load_u8 v181, v82 offset:736
	ds_load_u8 v182, v82 offset:672
	ds_load_u8 v183, v82 offset:608
	ds_load_u8 v184, v82 offset:544
	ds_load_u8 v185, v82 offset:1344
	ds_load_u8 v186, v82 offset:1280
	ds_load_u8 v187, v82 offset:1472
	ds_load_u8 v188, v82 offset:1408
	ds_load_u8 v189, v82 offset:1504
	ds_load_u8 v190, v82 offset:1440
	ds_load_u8 v191, v82 offset:1376
	ds_load_u8 v192, v82 offset:1312
	ds_load_u8 v193, v82 offset:1088
	ds_load_u8 v194, v82 offset:1024
	ds_load_u8 v195, v82 offset:1216
	ds_load_u8 v196, v82 offset:1152
	ds_load_u8 v197, v82 offset:1248
	ds_load_u8 v198, v82 offset:1184
	ds_load_u8 v199, v82 offset:1120
	ds_load_u8 v200, v82 offset:1056
	ds_load_u8 v201, v82 offset:1856
	ds_load_u8 v202, v82 offset:1792
	ds_load_u8 v203, v82 offset:1984
	ds_load_u8 v204, v82 offset:1920
	ds_load_u8 v205, v82 offset:2016
	ds_load_u8 v206, v82 offset:1952
	ds_load_u8 v207, v82 offset:1888
	ds_load_u8 v208, v82 offset:1824
	ds_load_u8 v209, v82 offset:1600
	ds_load_u8 v210, v82 offset:1536
	ds_load_u8 v211, v82 offset:1728
	ds_load_u8 v212, v82 offset:1664
	ds_load_u8 v213, v82 offset:1760
	ds_load_u8 v214, v82 offset:1696
	ds_load_u8 v215, v82 offset:1632
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v82 offset:1568
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v107, v103, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v102, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v103, v164, v163, 0xc0c0004
	v_perm_b32 v107, v34, v33, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v161, v168, v167, 0xc0c0004
	v_perm_b32 v162, v166, v165, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v158, v176, v175, 0xc0c0004
	v_perm_b32 v160, v174, v173, 0xc0c0004
	v_perm_b32 v173, v100, v99, 0xc0c0004
	v_perm_b32 v174, v98, v97, 0xc0c0004
	v_perm_b32 v175, v108, v106, 0xc0c0004
	v_perm_b32 v176, v105, v104, 0xc0c0004
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v110, v170, v169, 0xc0c0004
	v_perm_b32 v112, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v118, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v120, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v163, v184, v183, 0xc0c0004
	v_perm_b32 v164, v182, v181, 0xc0c0004
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v122, v114, v113, 0xc0c0004
	v_lshl_or_b32 v34, v37, 16, v39
	v_lshl_or_b32 v33, v101, 16, v38
	v_lshl_or_b32 v36, v103, 16, v102
	v_lshl_or_b32 v35, v35, 16, v107
	v_lshl_or_b32 v106, v162, 16, v161
	v_lshl_or_b32 v105, v157, 16, v159
	v_lshl_or_b32 v114, v174, 16, v173
	v_lshl_or_b32 v113, v176, 16, v175
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v126, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v128, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v134, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v136, v196, v195, 0xc0c0004
	v_perm_b32 v165, v192, v191, 0xc0c0004
	v_perm_b32 v166, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v167, v200, v199, 0xc0c0004
	v_perm_b32 v168, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v40, v215, 0xc0c0004
	v_perm_b32 v124, v140, v139, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_lshl_or_b32 v38, v117, 16, v119
	v_lshl_or_b32 v37, v109, 16, v111
	v_lshl_or_b32 v40, v112, 16, v110
	v_lshl_or_b32 v39, v120, 16, v118
	v_lshl_or_b32 v108, v160, 16, v158
	v_lshl_or_b32 v107, v164, 16, v163
	v_lshl_or_b32 v116, v121, 16, v123
	v_lshl_or_b32 v115, v122, 16, v115
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[105:106], v[33:34], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[113:114], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[105:106], v[113:114], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v142, v202, v201, 0xc0c0004
	v_perm_b32 v144, v204, v203, 0xc0c0004
	v_perm_b32 v150, v210, v209, 0xc0c0004
	v_perm_b32 v152, v212, v211, 0xc0c0004
	v_perm_b32 v169, v208, v207, 0xc0c0004
	v_perm_b32 v170, v206, v205, 0xc0c0004
	v_perm_b32 v172, v214, v213, 0xc0c0004
	v_perm_b32 v130, v156, v155, 0xc0c0004
	v_perm_b32 v132, v154, v153, 0xc0c0004
	v_perm_b32 v138, v148, v147, 0xc0c0004
	v_perm_b32 v139, v146, v145, 0xc0c0004
	v_lshl_or_b32 v98, v133, 16, v135
	v_lshl_or_b32 v97, v125, 16, v127
	v_lshl_or_b32 v100, v128, 16, v126
	v_lshl_or_b32 v99, v136, 16, v134
	v_lshl_or_b32 v110, v166, 16, v165
	v_lshl_or_b32 v109, v168, 16, v167
	v_lshl_or_b32 v118, v137, 16, v124
	v_lshl_or_b32 v117, v129, 16, v131
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[37:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[115:116], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[115:116], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v149, 16, v151
	v_lshl_or_b32 v101, v141, 16, v143
	v_lshl_or_b32 v104, v144, 16, v142
	v_lshl_or_b32 v103, v152, 16, v150
	v_lshl_or_b32 v112, v170, 16, v169
	v_lshl_or_b32 v111, v172, 16, v171
	v_lshl_or_b32 v34, v132, 16, v130
	v_lshl_or_b32 v33, v139, 16, v138
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[97:98], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[97:98], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[117:118], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[117:118], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[103:104], v[101:102], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[101:102], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[103:104], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[111:112], v[33:34], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s10, s29, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s10, s10, 64
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s10
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s3, s3, s2
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s11, s23
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v36, s3, v62
	v_add_nc_u32_e32 v35, s3, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v37, s2, v36
	.loc	1 1496 46                       ; ragged.py:1496:46
	v_mad_u64_u32 v[33:34], null, v35, s18, v[41:42]
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_mad_u64_u32 v[34:35], null, v35, s19, v[42:43]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s10, v37
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s10, s22
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s1, s2
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	buffer_load_b128 v[95:98], v33, s[20:23], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v33, 0x80000000, v34, s2
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s36, v36
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_b128 v[99:102], v33, s[8:11], 0 offen
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s2, s2, s34
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_waitcnt vmcnt(1)
	v_lshrrev_b64 v[33:34], 24, v[95:96]
	v_lshrrev_b64 v[34:35], 24, v[97:98]
	v_lshrrev_b32_e32 v108, 8, v95
	v_lshrrev_b32_e32 v109, 8, v96
	v_lshrrev_b32_e32 v110, 24, v96
	v_lshrrev_b32_e32 v111, 8, v97
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_waitcnt vmcnt(0)
	v_lshrrev_b64 v[35:36], 24, v[99:100]
	v_lshrrev_b64 v[36:37], 24, v[101:102]
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_lshrrev_b32_e32 v112, 8, v98
	v_lshrrev_b32_e32 v113, 24, v98
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_lshrrev_b32_e32 v114, 8, v99
	v_lshrrev_b32_e32 v115, 8, v100
	v_lshrrev_b32_e32 v116, 24, v100
	v_lshrrev_b32_e32 v117, 8, v101
	v_lshrrev_b32_e32 v118, 8, v102
	v_lshrrev_b32_e32 v119, 24, v102
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v33.h, v95.l, 15
	v_and_b16 v34.h, v95.h, 15
	v_and_b16 v35.h, v96.l, 15
	v_and_b16 v36.h, v96.h, 15
	v_and_b16 v37.l, v97.l, 15
	v_and_b16 v37.h, v97.h, 15
	v_and_b16 v38.l, v98.l, 15
	v_and_b16 v38.h, v98.h, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v40.l, v100.l, 15
	v_and_b16 v40.h, v100.h, 15
	v_and_b16 v103.l, v101.l, 15
	v_and_b16 v103.h, v101.h, 15
	v_and_b16 v39.l, v99.l, 15
	v_and_b16 v39.h, v99.h, 15
	v_and_b16 v104.l, v102.l, 15
	v_and_b16 v104.h, v102.h, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v105.l, v108.l, 15
	v_and_b16 v105.h, v109.l, 15
	v_and_b16 v106.l, v110.l, 15
	v_and_b16 v106.h, v111.l, 15
	v_and_b16 v107.l, v112.l, 15
	v_and_b16 v107.h, v113.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v33.h, v95.l, v33.h, s2
	v_cndmask_b16 v34.h, v95.h, v34.h, s2
	v_cndmask_b16 v35.h, v96.l, v35.h, s2
	v_cndmask_b16 v36.h, v96.h, v36.h, s2
	v_cndmask_b16 v37.l, v97.l, v37.l, s2
	v_cndmask_b16 v37.h, v97.h, v37.h, s2
	v_cndmask_b16 v38.l, v98.l, v38.l, s2
	v_cndmask_b16 v38.h, v98.h, v38.h, s2
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	v_and_b16 v95.l, v114.l, 15
	v_and_b16 v95.h, v115.l, 15
	v_and_b16 v96.l, v116.l, 15
	v_and_b16 v96.h, v117.l, 15
	v_and_b16 v97.l, v118.l, 15
	v_and_b16 v97.h, v119.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v40.l, v100.l, v40.l, s2
	v_cndmask_b16 v40.h, v100.h, v40.h, s2
	v_cndmask_b16 v98.l, v101.l, v103.l, s2
	v_cndmask_b16 v98.h, v101.h, v103.h, s2
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	v_and_b16 v100.l, v33.l, 15
	v_and_b16 v100.h, v34.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v101.l, v35.l, 15
	v_and_b16 v101.h, v36.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v39.l, v99.l, v39.l, s2
	v_cndmask_b16 v39.h, v99.h, v39.h, s2
	v_cndmask_b16 v99.l, v102.l, v104.l, s2
	v_cndmask_b16 v99.h, v102.h, v104.h, s2
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_cndmask_b16 v102.l, v108.l, v105.l, s2
	v_cndmask_b16 v102.h, v109.l, v105.h, s2
	v_cndmask_b16 v103.l, v110.l, v106.l, s2
	v_cndmask_b16 v103.h, v111.l, v106.h, s2
	v_cndmask_b16 v104.l, v112.l, v107.l, s2
	v_cndmask_b16 v104.h, v113.l, v107.h, s2
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v95.l, v114.l, v95.l, s2
	v_cndmask_b16 v95.h, v115.l, v95.h, s2
	v_cndmask_b16 v96.l, v116.l, v96.l, s2
	v_cndmask_b16 v96.h, v117.l, v96.h, s2
	v_cndmask_b16 v97.l, v118.l, v97.l, s2
	v_cndmask_b16 v97.h, v119.l, v97.h, s2
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_and_b16 v105.h, 0xff, v34.h
	v_cndmask_b16 v33.l, v33.l, v100.l, s2
	v_cndmask_b16 v34.l, v34.l, v100.h, s2
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v34.h, v35.l, v101.l, s2
	v_cndmask_b16 v35.l, v36.l, v101.h, s2
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_and_b16 v38.l, 0xff, v38.l
	v_and_b16 v38.h, 0xff, v38.h
	v_and_b16 v37.l, 0xff, v37.l
	v_and_b16 v37.h, 0xff, v37.h
	v_and_b16 v35.h, 0xff, v35.h
	v_and_b16 v105.l, 0xff, v36.h
	v_and_b16 v33.h, 0xff, v33.h
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_and_b16 v99.l, 0xff, v99.l
	v_and_b16 v99.h, 0xff, v99.h
	v_and_b16 v98.l, 0xff, v98.l
	v_and_b16 v98.h, 0xff, v98.h
	v_and_b16 v40.l, 0xff, v40.l
	v_and_b16 v40.h, 0xff, v40.h
	v_and_b16 v39.l, 0xff, v39.l
	v_and_b16 v39.h, 0xff, v39.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v36.l, 8, v104.l
	v_lshlrev_b16 v36.h, 8, v104.h
	v_lshlrev_b16 v100.l, 8, v103.h
	v_lshlrev_b16 v100.h, 8, v102.h
	v_lshlrev_b16 v101.l, 8, v103.l
	v_lshlrev_b16 v101.h, 8, v102.l
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v97.l, 8, v97.l
	v_lshlrev_b16 v97.h, 8, v97.h
	v_lshlrev_b16 v96.h, 8, v96.h
	v_lshlrev_b16 v95.h, 8, v95.h
	v_lshlrev_b16 v96.l, 8, v96.l
	v_lshlrev_b16 v95.l, 8, v95.l
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v102.l, 8, v34.l
	v_lshlrev_b16 v102.h, 8, v33.l
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v103.l, 8, v35.l
	v_lshlrev_b16 v103.h, 8, v34.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v36.l, v38.l, v36.l
	v_or_b16 v36.h, v38.h, v36.h
	v_or_b16 v35.l, v37.l, v100.l
	v_or_b16 v34.l, v35.h, v100.h
	v_or_b16 v34.h, v105.l, v101.l
	v_or_b16 v33.l, v33.h, v101.h
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v154.l, v99.l, v97.l
	v_or_b16 v154.h, v99.h, v97.h
	v_or_b16 v153.l, v98.l, v96.h
	v_or_b16 v152.l, v40.l, v95.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v35.h, v37.h, v102.l
	v_or_b16 v33.h, v105.h, v102.h
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v152.h, v40.h, v96.l
	v_or_b16 v151.l, v39.l, v95.l
	v_or_b16 v153.h, v98.h, v103.l
	v_or_b16 v151.h, v39.h, v103.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b128 v94, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v143, v81 offset:448
	ds_load_u8 v144, v81 offset:384
	ds_load_u8 v145, v81 offset:320
	ds_load_u8 v146, v81 offset:256
	ds_load_u8 v100, v81 offset:480
	ds_load_u8 v103, v81 offset:416
	ds_load_u8 v107, v81 offset:352
	ds_load_u8 v111, v81 offset:288
	ds_load_u8 v147, v81 offset:192
	ds_load_u8 v148, v81 offset:128
	ds_load_u8 v149, v81 offset:64
	ds_load_u8 v102, v81 offset:224
	ds_load_u8 v104, v81 offset:160
	ds_load_u8 v110, v81 offset:96
	ds_load_u8 v150, v81
	ds_load_u8 v114, v81 offset:32
	ds_load_u8 v119, v81 offset:704
	ds_load_u8 v120, v81 offset:640
	ds_load_u8 v121, v81 offset:576
	ds_load_u8 v122, v81 offset:512
	ds_load_u8 v39, v81 offset:736
	ds_load_u8 v95, v81 offset:672
	ds_load_u8 v97, v81 offset:608
	ds_load_u8 v98, v81 offset:544
	ds_load_u8 v125, v81 offset:960
	ds_load_u8 v126, v81 offset:896
	ds_load_u8 v129, v81 offset:832
	ds_load_u8 v130, v81 offset:768
	ds_load_u8 v112, v81 offset:992
	ds_load_u8 v115, v81 offset:928
	ds_load_u8 v117, v81 offset:864
	ds_load_u8 v118, v81 offset:800
	ds_load_u8 v123, v81 offset:1216
	ds_load_u8 v124, v81 offset:1152
	ds_load_u8 v127, v81 offset:1088
	ds_load_u8 v128, v81 offset:1024
	ds_load_u8 v35, v81 offset:1248
	ds_load_u8 v37, v81 offset:1184
	ds_load_u8 v40, v81 offset:1120
	ds_load_u8 v96, v81 offset:1056
	ds_load_u8 v133, v81 offset:1472
	ds_load_u8 v134, v81 offset:1408
	ds_load_u8 v137, v81 offset:1344
	ds_load_u8 v138, v81 offset:1280
	ds_load_u8 v105, v81 offset:1504
	ds_load_u8 v108, v81 offset:1440
	ds_load_u8 v113, v81 offset:1376
	ds_load_u8 v116, v81 offset:1312
	ds_load_u8 v131, v81 offset:1728
	ds_load_u8 v132, v81 offset:1664
	ds_load_u8 v135, v81 offset:1600
	ds_load_u8 v136, v81 offset:1536
	ds_load_u8 v33, v81 offset:1760
	ds_load_u8 v34, v81 offset:1696
	ds_load_u8 v36, v81 offset:1632
	ds_load_u8 v38, v81 offset:1568
	ds_load_u8 v139, v81 offset:1984
	ds_load_u8 v140, v81 offset:1920
	ds_load_u8 v141, v81 offset:1856
	ds_load_u8 v142, v81 offset:1792
	ds_load_u8 v99, v81 offset:2016
	ds_load_u8 v101, v81 offset:1952
	ds_load_u8 v106, v81 offset:1888
	ds_load_u8 v109, v81 offset:1824
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v94, v[151:154]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v151, v82 offset:64
	ds_load_u8 v152, v82
	ds_load_u8 v153, v82 offset:192
	ds_load_u8 v154, v82 offset:128
	ds_load_u8 v155, v82 offset:224
	ds_load_u8 v156, v82 offset:160
	ds_load_u8 v157, v82 offset:96
	ds_load_u8 v158, v82 offset:32
	ds_load_u8 v159, v82 offset:320
	ds_load_u8 v160, v82 offset:256
	ds_load_u8 v161, v82 offset:448
	ds_load_u8 v162, v82 offset:384
	ds_load_u8 v163, v82 offset:480
	ds_load_u8 v164, v82 offset:416
	ds_load_u8 v165, v82 offset:352
	ds_load_u8 v166, v82 offset:288
	ds_load_u8 v167, v82 offset:832
	ds_load_u8 v168, v82 offset:768
	ds_load_u8 v169, v82 offset:960
	ds_load_u8 v170, v82 offset:896
	ds_load_u8 v171, v82 offset:992
	ds_load_u8 v172, v82 offset:928
	ds_load_u8 v173, v82 offset:864
	ds_load_u8 v174, v82 offset:800
	ds_load_u8 v175, v82 offset:576
	ds_load_u8 v176, v82 offset:512
	ds_load_u8 v177, v82 offset:704
	ds_load_u8 v178, v82 offset:640
	ds_load_u8 v179, v82 offset:736
	ds_load_u8 v180, v82 offset:672
	ds_load_u8 v181, v82 offset:608
	ds_load_u8 v182, v82 offset:544
	ds_load_u8 v183, v82 offset:1344
	ds_load_u8 v184, v82 offset:1280
	ds_load_u8 v185, v82 offset:1472
	ds_load_u8 v186, v82 offset:1408
	ds_load_u8 v187, v82 offset:1504
	ds_load_u8 v188, v82 offset:1440
	ds_load_u8 v189, v82 offset:1376
	ds_load_u8 v190, v82 offset:1312
	ds_load_u8 v191, v82 offset:1088
	ds_load_u8 v192, v82 offset:1024
	ds_load_u8 v193, v82 offset:1216
	ds_load_u8 v194, v82 offset:1152
	ds_load_u8 v195, v82 offset:1248
	ds_load_u8 v196, v82 offset:1184
	ds_load_u8 v197, v82 offset:1120
	ds_load_u8 v198, v82 offset:1056
	ds_load_u8 v199, v82 offset:1856
	ds_load_u8 v200, v82 offset:1792
	ds_load_u8 v201, v82 offset:1984
	ds_load_u8 v202, v82 offset:1920
	ds_load_u8 v203, v82 offset:2016
	ds_load_u8 v204, v82 offset:1952
	ds_load_u8 v205, v82 offset:1888
	ds_load_u8 v206, v82 offset:1824
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v144, v150, v149, 0xc0c0004
	v_perm_b32 v146, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v147, v160, v159, 0xc0c0004
	ds_load_u8 v148, v82 offset:1600
	ds_load_u8 v149, v82 offset:1536
	ds_load_u8 v150, v82 offset:1728
	ds_load_u8 v159, v82 offset:1664
	ds_load_u8 v160, v82 offset:1760
	ds_load_u8 v207, v82 offset:1696
	ds_load_u8 v208, v82 offset:1632
	ds_load_u8 v209, v82 offset:1568
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v152, v154, v153, 0xc0c0004
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v120, v168, v167, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v139, v140, v139, 0xc0c0004
	v_perm_b32 v153, v156, v155, 0xc0c0004
	v_perm_b32 v111, v111, v107, 0xc0c0004
	v_perm_b32 v167, v103, v100, 0xc0c0004
	v_perm_b32 v114, v114, v110, 0xc0c0004
	v_perm_b32 v168, v104, v102, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v149, v148, 0xc0c0004
	v_perm_b32 v148, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v142, v159, v150, 0xc0c0004
	v_perm_b32 v149, v164, v163, 0xc0c0004
	v_perm_b32 v150, v158, v157, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v122, v170, v169, 0xc0c0004
	v_perm_b32 v126, v176, v175, 0xc0c0004
	v_perm_b32 v130, v178, v177, 0xc0c0004
	v_perm_b32 v154, v174, v173, 0xc0c0004
	v_perm_b32 v155, v172, v171, 0xc0c0004
	v_perm_b32 v156, v182, v181, 0xc0c0004
	v_perm_b32 v157, v180, v179, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v115, v115, v112, 0xc0c0004
	v_perm_b32 v118, v98, v97, 0xc0c0004
	v_perm_b32 v169, v95, v39, 0xc0c0004
	v_perm_b32 v172, v37, v35, 0xc0c0004
	v_perm_b32 v175, v38, v36, 0xc0c0004
	v_perm_b32 v176, v34, v33, 0xc0c0004
	v_lshl_or_b32 v34, v143, 16, v145
	v_lshl_or_b32 v33, v146, 16, v144
	v_lshl_or_b32 v36, v161, 16, v147
	v_lshl_or_b32 v35, v152, 16, v151
	v_lshl_or_b32 v104, v149, 16, v148
	v_lshl_or_b32 v103, v153, 16, v150
	v_lshl_or_b32 v112, v167, 16, v111
	v_lshl_or_b32 v111, v168, 16, v114
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_perm_b32 v124, v184, v183, 0xc0c0004
	v_perm_b32 v128, v186, v185, 0xc0c0004
	v_perm_b32 v134, v192, v191, 0xc0c0004
	v_perm_b32 v138, v194, v193, 0xc0c0004
	v_perm_b32 v158, v190, v189, 0xc0c0004
	v_perm_b32 v159, v188, v187, 0xc0c0004
	v_perm_b32 v162, v198, v197, 0xc0c0004
	v_perm_b32 v163, v196, v195, 0xc0c0004
	v_perm_b32 v116, v116, v113, 0xc0c0004
	v_perm_b32 v170, v108, v105, 0xc0c0004
	v_perm_b32 v171, v96, v40, 0xc0c0004
	v_perm_b32 v173, v109, v106, 0xc0c0004
	v_lshl_or_b32 v38, v125, 16, v129
	v_lshl_or_b32 v37, v119, 16, v121
	v_lshl_or_b32 v40, v122, 16, v120
	v_lshl_or_b32 v39, v130, 16, v126
	v_lshl_or_b32 v106, v155, 16, v154
	v_lshl_or_b32 v105, v157, 16, v156
	v_lshl_or_b32 v114, v115, 16, v117
	v_lshl_or_b32 v113, v169, 16, v118
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[33:34], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[111:112], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v132, v200, v199, 0xc0c0004
	v_perm_b32 v136, v202, v201, 0xc0c0004
	v_perm_b32 v164, v206, v205, 0xc0c0004
	v_perm_b32 v165, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v209, v208, 0xc0c0004
	v_perm_b32 v160, v207, v160, 0xc0c0004
	v_perm_b32 v174, v101, v99, 0xc0c0004
	v_lshl_or_b32 v96, v133, 16, v137
	v_lshl_or_b32 v95, v123, 16, v127
	v_lshl_or_b32 v98, v128, 16, v124
	v_lshl_or_b32 v97, v138, 16, v134
	v_lshl_or_b32 v108, v159, 16, v158
	v_lshl_or_b32 v107, v163, 16, v162
	v_lshl_or_b32 v116, v170, 16, v116
	v_lshl_or_b32 v115, v172, 16, v171
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[105:106], v[37:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[113:114], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[105:106], v[113:114], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v139, 16, v141
	v_lshl_or_b32 v99, v131, 16, v135
	v_lshl_or_b32 v102, v136, 16, v132
	v_lshl_or_b32 v101, v142, 16, v140
	v_lshl_or_b32 v110, v165, 16, v164
	v_lshl_or_b32 v109, v160, 16, v166
	v_lshl_or_b32 v34, v174, 16, v173
	v_lshl_or_b32 v33, v176, 16, v175
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[95:96], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[115:116], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[115:116], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[99:100], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge15
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 24, v57
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v2, v79, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s0, s28, s19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s1, v79, v79
	v_bfe_u32 v5, v78, 16, 1
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v3, s7, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v18, s0, s7, v1
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add3_u32 v2, v79, v2, 0x7fff
	v_bfe_u32 v6, v77, 16, 1
	v_cmp_o_f32_e64 s2, v77, v77
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v1, 32, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v3, v78, v5, 0x7fff
	v_add3_u32 v5, v77, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v76, v76
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v76, 16, 1
	v_cmp_o_f32_e64 s1, v78, v78
	v_bfe_u32 v6, v72, 16, 1
	v_bfe_u32 v7, v71, 16, 1
	v_bfe_u32 v8, v69, 16, 1
	v_add3_u32 v2, v76, v2, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v74, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	v_bfe_u32 v5, v73, 16, 1
	v_cmp_o_f32_e64 s1, v74, v74
	v_cmp_o_f32_e64 s2, v73, v73
	v_add3_u32 v3, v74, v3, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	v_add3_u32 v5, v73, v5, 0x7fff
	v_add3_u32 v6, v72, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v72, v72
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s1
	v_add3_u32 v7, v71, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s2
	v_bfe_u32 v5, v70, 16, 1
	v_cmp_o_f32_e64 s1, v71, v71
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s3
	v_cmp_o_f32_e64 s2, v70, v70
	v_add3_u32 v8, v69, v8, 0x7fff
	v_add3_u32 v5, v70, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v69, v69
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v68, 16, 1
	v_bfe_u32 v9, v67, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s3
	v_bfe_u32 v8, v66, 16, 1
	v_add3_u32 v7, v68, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_add3_u32 v9, v67, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v67, v67
	v_bfe_u32 v10, v65, 16, 1
	v_bfe_u32 v11, v64, 16, 1
	v_add3_u32 v8, v66, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s2
	v_add3_u32 v9, v65, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v65, v65
	v_add3_u32 v10, v64, v11, 0x7fff
	v_mov_b16_e32 v11.l, v60.h
	v_mov_b16_e32 v11.h, v4.h
	v_mov_b16_e32 v4.l, v61.h
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s3
	v_bfe_u32 v12, v63, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s1
	v_and_b32_e32 v9, 1, v11
	v_and_b32_e32 v11, 1, v4
	v_mov_b16_e32 v4.l, v59.h
	v_cmp_o_f32_e64 s2, v64, v64
	v_add3_u32 v12, v63, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v9, v60, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v60, v60
	v_mov_b16_e32 v13.l, v58.h
	v_mov_b16_e32 v13.h, v4.h
	v_and_b32_e32 v14, 1, v4
	v_add3_u32 v11, v61, v11, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s3
	v_and_b32_e32 v9, 1, v13
	v_add3_u32 v12, v59, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_mov_b16_e32 v4.l, v56.h
	v_mov_b16_e32 v13.l, v55.h
	v_add3_u32 v9, v58, v9, 0x7fff
	v_mov_b16_e32 v15.l, v53.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s1
	v_cmp_o_f32_e64 s1, v58, v58
	v_and_b32_e32 v14, 1, v4
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v15.h, v4.h
	v_mov_b16_e32 v4.l, v54.h
	v_cmp_o_f32_e64 s2, v61, v61
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s1
	v_add3_u32 v13, v55, v13, 0x7fff
	v_and_b32_e32 v9, 1, v15
	v_and_b32_e32 v15, 1, v4
	v_cmp_o_f32_e64 s1, v55, v55
	v_mov_b16_e32 v4.l, v50.h
	v_add3_u32 v14, v56, v14, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s2
	v_cmp_o_f32_e64 s2, v56, v56
	v_add3_u32 v9, v53, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v53, v53
	v_mov_b16_e32 v20.l, v49.h
	v_mov_b16_e32 v20.h, v4.h
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s1
	v_and_b32_e32 v13, 1, v4
	v_mov_b16_e32 v4.l, v48.h
	v_add3_u32 v15, v54, v15, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	v_cmp_o_f32_e64 s2, v54, v54
	v_cndmask_b16 v15.l, 0x7fff, v9.h, s3
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v13, v50, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_mov_b16_e32 v20.l, v47.h
	v_and_b32_e32 v21, 1, v4
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s2
	v_add3_u32 v9, v49, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v49, v49
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s1
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v21, v48, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v48, v48
	v_cndmask_b16 v13.l, 0x7fff, v9.h, s2
	v_mov_b16_e32 v9.l, v45.h
	v_mov_b16_e32 v9.h, v4.h
	v_add3_u32 v20, v47, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s1
	v_mov_b16_e32 v4.l, v46.h
	v_cmp_o_f32_e64 s1, v47, v47
	v_mov_b16_e32 v22.l, v44.h
	v_mov_b16_e32 v22.h, v4.h
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v43.h
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s1
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v9, v45, v9, 0x7fff
	v_add3_u32 v22, v46, v23, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e64 s1, v46, v46
	v_cmp_o_f32_e64 s2, v45, v45
	v_add3_u32 v20, v44, v20, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s4, v44, v44
	v_add3_u32 v4, v43, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v43, v43
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b16 v22.l, 0x7fff, v9.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s4
	v_mov_b32_e32 v9, 0x5410
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s3
	v_cndmask_b32_e64 v4, v3, v1, s1
	v_cndmask_b32_e64 v1, v1, v3, s1
	v_cndmask_b32_e64 v3, v6, v2, s1
	v_cndmask_b32_e64 v2, v2, v6, s1
	v_cndmask_b32_e64 v6, v8, v5, s1
	v_cndmask_b32_e64 v5, v5, v8, s1
	v_cndmask_b32_e64 v8, v10, v7, s1
	v_cndmask_b32_e64 v7, v7, v10, s1
	v_cndmask_b32_e64 v10, v14, v11, s1
	v_cndmask_b32_e64 v11, v11, v14, s1
	v_cndmask_b32_e64 v9, 0x1054, v9, s1
	v_cndmask_b32_e64 v14, 0x3276, v20, s1
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v20, v15, v12, s1
	v_cndmask_b32_e64 v12, v12, v15, s1
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e64 v15, v22, v13, s1
	v_cndmask_b32_e64 v13, v13, v22, s1
	v_cndmask_b32_e64 v22, v0, v21, s1
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v14, 0x760076, v14
	v_cndmask_b32_e64 v0, v21, v0, s1
	v_permlanex16_b32 v21, v2, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mul_lo_u32 v16, s19, v51
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_lshl_or_b32 v2, v9, 4, v9
	v_lshl_or_b32 v9, v14, 4, v14
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v17, s19, v52
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v1, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x5040504, v2
	v_and_b32_e32 v23, 0x7060706, v9
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v19, 32, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v4, v14
	v_perm_b32 v1, v1, v4, v23
	v_perm_b32 v4, v5, v6, v14
	v_perm_b32 v5, v5, v6, v23
	v_perm_b32 v6, v7, v8, v14
	v_perm_b32 v7, v7, v8, v23
	v_perm_b32 v8, v11, v10, v14
	v_perm_b32 v9, v11, v10, v23
	v_perm_b32 v10, v12, v20, v14
	v_perm_b32 v11, v12, v20, v23
	v_add_lshl_u32 v20, v18, v16, 1
	v_add_lshl_u32 v16, v19, v16, 1
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s1, s6, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v18, v18, v17, 1
	v_permlanex16_b32 v13, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v17, v19, v17, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s6, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v21, v3, v14
	v_perm_b32 v3, v21, v3, v23
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_perm_b32 v12, v13, v15, v14
	v_perm_b32 v13, v13, v15, v23
	v_perm_b32 v14, v24, v22, v14
	v_perm_b32 v15, v24, v22, v23
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v20, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v16, s[16:19], 0 offen
	buffer_store_b128 v[8:11], v18, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v17, s[16:19], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 216
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 216
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10316
; TotalNumSgprs: 45
; NumVgprs: 216
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 216
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
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
