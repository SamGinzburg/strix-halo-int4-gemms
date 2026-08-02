	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
	s_sub_i32 s38, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s38, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s40, s38, s34
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
	v_lshrrev_b32_e32 v2, 2, v1
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v41, v0, 15, v2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_hi_u32 s4, s7, s6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v40, 32, v41
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
	s_ashr_i32 s39, s38, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[38:39], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s21, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s5, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s21, v41
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s39, s[6:7], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s21, v40
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s22, s34, v2
	v_cmp_gt_i32_e64 s2, s34, v3
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s39, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s39, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge34_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s33, s21, s40
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s6, -1
                                        ; implicit-def: $sgpr33
.LBB0_3:                                ; %Flow155
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v2, 16, v0
	v_lshrrev_b32_e32 v58, 1, v0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s4, 0, v2
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v68, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s23, s5, 6
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v4, 32, v0
	s_clause 0x1
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b64 s[44:45], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 4, v2
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v5, 3, v0
	v_lshrrev_b32_e32 v3, 1, v4
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s39, s39, 1
	s_cmp_lt_i32 s3, 16
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v1, 2, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v69, v2, v3, s23
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s21, v58
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s23, v58
	v_mov_b32_e32 v65, 0
	s_cselect_b32 s46, -1, 0
	s_add_i32 s33, s21, s40
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v2
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_and_b32_e32 v2, 8, v5
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v70, 2, v69
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s34, s38, s45
	.loc	1 1433 43                       ; ragged.py:1433:43
	s_mul_i32 s38, s38, s35
	v_mad_u64_u32 v[2:3], null, s44, v58, v[2:3]
	s_add_i32 s21, s23, s38
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v71, 4, v69
	v_mov_b32_e32 v66, 0
	v_or_b32_e32 v72, 6, v69
	v_or_b32_e32 v73, 8, v69
	v_or_b32_e32 v74, 10, v69
	v_mad_u64_u32 v[32:33], null, s33, s44, v[2:3]
	v_lshlrev_b32_e32 v3, 4, v0
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v61, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[33:34], null, s21, s44, v[2:3]
	v_and_b32_e32 v2, 0x70, v3
	v_and_b32_e32 v0, 0x88, v0
	v_lshlrev_b32_e32 v3, 3, v4
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v4, 0x378, v5
	v_cndmask_b32_e64 v5, 0x88, 0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v1, v0, v1, v2
	v_or3_b32 v0, v0, v3, v2
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v2, s33, v41
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v3, s33, v40
	v_or_b32_e32 v75, 12, v69
	v_or_b32_e32 v76, 14, v69
	v_or_b32_e32 v77, 32, v69
	v_or_b32_e32 v78, 34, v69
	v_or_b32_e32 v79, 36, v69
	v_or_b32_e32 v80, 38, v69
	v_or_b32_e32 v81, 40, v69
	v_or_b32_e32 v82, 42, v69
	v_or_b32_e32 v83, 44, v69
	v_or_b32_e32 v84, 46, v69
	v_xor_b32_e32 v4, v5, v4
	v_xor_b32_e32 v5, 8, v1
	v_xor_b32_e32 v6, 8, v0
	v_mul_lo_u32 v85, v2, s45
	v_cndmask_b32_e64 v2, 0, 1, s46
	v_mul_lo_u32 v86, v3, s45
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s35, v69
	v_cmp_gt_i32_e64 s6, s35, v70
	v_cmp_gt_i32_e64 s7, s35, v71
	v_cmp_gt_i32_e64 s8, s35, v72
	v_cmp_gt_i32_e64 s9, s35, v73
	v_cmp_gt_i32_e64 s10, s35, v74
	v_cmp_gt_i32_e64 s11, s35, v75
	v_cmp_gt_i32_e64 s12, s35, v76
	v_cmp_gt_i32_e64 s13, s35, v77
	v_cmp_gt_i32_e64 s14, s35, v78
	v_cmp_gt_i32_e64 s15, s35, v79
	v_cmp_gt_i32_e64 s16, s35, v80
	v_cmp_gt_i32_e64 s17, s35, v81
	v_cmp_gt_i32_e64 s18, s35, v82
	v_cmp_gt_i32_e64 s19, s35, v83
	v_cmp_gt_i32_e64 s20, s35, v84
	v_cmp_ne_u32_e64 s21, 1, v2
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v87, 0, v4
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v88, 0, v1
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v89, 0, v5
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v90, 0, v0
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v91, 0, v6
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s29, s29, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s39, s39, -1
	s_and_b32 s31, s31, 0xffff
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_mov_b32 s38, 0
	s_lshr_b32 s39, s39, 4
	s_mov_b32 s44, s28
	s_mov_b32 s45, s29
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s48, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v16, v85, s38, 1
	v_add_lshl_u32 v17, v86, s38, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s26, s38, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_mul_i32 s26, s26, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s22
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v18, v69, s26, 1
	v_add_lshl_u32 v27, v78, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v70, s26, 1
	v_add_lshl_u32 v26, v77, s26, 1
	v_add_lshl_u32 v20, v71, s26, 1
	v_add_lshl_u32 v29, v80, s26, 1
	v_add_lshl_u32 v21, v72, s26, 1
	v_add_lshl_u32 v28, v79, s26, 1
	v_add_lshl_u32 v22, v73, s26, 1
	v_add_lshl_u32 v23, v74, s26, 1
	v_add_lshl_u32 v24, v75, s26, 1
	v_add_lshl_u32 v25, v76, s26, 1
	v_add_lshl_u32 v30, v81, s26, 1
	v_add_lshl_u32 v31, v82, s26, 1
	v_add_lshl_u32 v108, v83, s26, 1
	v_add_lshl_u32 v109, v84, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v16, v16, s[44:47], 0 offen
	buffer_load_u16 v17, v17, s[44:47], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	v_cndmask_b32_e64 v27, 0x80000000, v27, s14
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	v_cndmask_b32_e64 v26, 0x80000000, v26, s13
	v_cndmask_b32_e64 v20, 0x80000000, v20, s7
	v_cndmask_b32_e64 v29, 0x80000000, v29, s16
	v_cndmask_b32_e64 v21, 0x80000000, v21, s8
	v_cndmask_b32_e64 v28, 0x80000000, v28, s15
	v_cndmask_b32_e64 v22, 0x80000000, v22, s9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s10
	v_cndmask_b32_e64 v24, 0x80000000, v24, s11
	v_cndmask_b32_e64 v25, 0x80000000, v25, s12
	v_cndmask_b32_e64 v30, 0x80000000, v30, s17
	v_cndmask_b32_e64 v31, 0x80000000, v31, s18
	v_cndmask_b32_e64 v108, 0x80000000, v108, s19
	v_cndmask_b32_e64 v109, 0x80000000, v109, s20
	s_clause 0xf
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	buffer_load_u16 v20, v20, s[28:31], 0 offen
	buffer_load_u16 v21, v21, s[28:31], 0 offen
	buffer_load_u16 v22, v22, s[28:31], 0 offen
	buffer_load_u16 v23, v23, s[28:31], 0 offen
	buffer_load_u16 v24, v24, s[28:31], 0 offen
	buffer_load_u16 v25, v25, s[28:31], 0 offen
	buffer_load_u16 v27, v27, s[28:31], 0 offen
	buffer_load_u16 v26, v26, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	buffer_load_u16 v28, v28, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	buffer_load_u16 v109, v109, s[28:31], 0 offen
	buffer_load_u16 v108, v108, s[28:31], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s26, s38, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s48, s26, 4
	s_cmp_lg_u32 s38, s39
	s_mov_b32 s38, s26
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v15, v15, v17 :: v_dual_lshlrev_b32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v107, v107, v16
	v_mul_f32_e32 v106, v106, v16
	v_mul_f32_e32 v105, v105, v16
	v_mul_f32_e32 v104, v104, v16
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v11, v11, v17 :: v_dual_lshlrev_b32 v20, 16, v20
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v102, v102, v16 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v100, v100, v16 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v98, v98, v16 :: v_dual_lshlrev_b32 v25, 16, v25
	v_dual_mul_f32 v13, v13, v17 :: v_dual_lshlrev_b32 v24, 16, v24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v96, v96, v16 :: v_dual_lshlrev_b32 v27, 16, v27
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v103, v103, v16 :: v_dual_lshlrev_b32 v26, 16, v26
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v94, v94, v16 :: v_dual_lshlrev_b32 v29, 16, v29
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v9, v9, v17 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v101, v101, v16 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v68, v106, v19 :: v_dual_lshlrev_b32 v109, 16, v109
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v7, v17 :: v_dual_lshlrev_b32 v108, 16, v108
	v_dual_mul_f32 v99, v99, v16 :: v_dual_mul_f32 v14, v14, v17
	v_dual_mul_f32 v97, v97, v16 :: v_dual_mul_f32 v10, v10, v17
	v_dual_mul_f32 v95, v95, v16 :: v_dual_mul_f32 v12, v12, v17
	v_dual_mul_f32 v93, v93, v16 :: v_dual_mul_f32 v8, v8, v17
	v_mul_f32_e32 v16, v92, v16
	v_dual_mul_f32 v6, v6, v17 :: v_dual_fmac_f32 v67, v107, v18
	v_dual_mul_f32 v3, v3, v17 :: v_dual_fmac_f32 v66, v105, v20
	v_dual_mul_f32 v2, v2, v17 :: v_dual_fmac_f32 v57, v97, v28
	v_dual_mul_f32 v5, v5, v17 :: v_dual_fmac_f32 v64, v103, v22
	v_dual_mul_f32 v4, v4, v17 :: v_dual_fmac_f32 v63, v102, v23
	v_dual_mul_f32 v1, v1, v17 :: v_dual_fmac_f32 v60, v99, v26
	v_dual_mul_f32 v0, v0, v17 :: v_dual_fmac_f32 v59, v98, v27
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v65, v104, v21 :: v_dual_fmac_f32 v62, v101, v24
	v_dual_fmac_f32 v61, v100, v25 :: v_dual_fmac_f32 v54, v94, v31
	v_dual_fmac_f32 v56, v96, v29 :: v_dual_fmac_f32 v55, v95, v30
	v_dual_fmac_f32 v53, v93, v108 :: v_dual_fmac_f32 v52, v16, v109
	v_dual_fmac_f32 v50, v14, v18 :: v_dual_fmac_f32 v51, v15, v19
	v_dual_fmac_f32 v48, v10, v20 :: v_dual_fmac_f32 v49, v11, v21
	v_dual_fmac_f32 v46, v12, v22 :: v_dual_fmac_f32 v47, v13, v23
	v_dual_fmac_f32 v44, v8, v24 :: v_dual_fmac_f32 v45, v9, v25
	v_dual_fmac_f32 v42, v6, v26 :: v_dual_fmac_f32 v43, v7, v27
	v_dual_fmac_f32 v38, v2, v28 :: v_dual_fmac_f32 v39, v3, v29
	v_dual_fmac_f32 v36, v4, v30 :: v_dual_fmac_f32 v37, v5, v31
	v_dual_fmac_f32 v35, v0, v108 :: v_dual_fmac_f32 v34, v1, v109
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s21
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v0, 0
	s_mov_b32 s49, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s50, s49, s48
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s26, s42
	v_add_nc_u32_e32 v92, s50, v32
	v_add_nc_u32_e32 v93, s50, v33
	s_mov_b32 s27, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v94, 0x80000000, v93, s1
	.loc	1 1436 38                       ; ragged.py:1436:38
	buffer_load_b64 v[92:93], v92, s[40:43], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_b64 v[100:101], v94, s[24:27], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s26, s49, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s49, 0
	s_mov_b32 s49, s26
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(1)
	ds_store_b64 v87, v[92:93]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[92:95], v88 offset1:1
	ds_load_2addr_stride64_b64 v[96:99], v89 offset1:1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v87, v[100:101]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[100:103], v90 offset1:1
	ds_load_2addr_stride64_b64 v[104:107], v91 offset1:1
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[100:101], v[92:93], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[102:103], v[92:93], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[100:101], v[94:95], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[102:103], v[94:95], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[104:105], v[96:97], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[106:107], v[96:97], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[104:105], v[98:99], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[106:107], v[98:99], v[24:31] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v107, v0
	v_cvt_f32_i32_e32 v106, v1
	v_cvt_f32_i32_e32 v105, v2
	v_cvt_f32_i32_e32 v104, v3
	v_cvt_f32_i32_e32 v103, v4
	v_cvt_f32_i32_e32 v102, v5
	v_cvt_f32_i32_e32 v101, v6
	v_cvt_f32_i32_e32 v100, v7
	v_cvt_f32_i32_e32 v99, v8
	v_cvt_f32_i32_e32 v98, v9
	v_cvt_f32_i32_e32 v97, v10
	v_cvt_f32_i32_e32 v96, v11
	v_cvt_f32_i32_e32 v95, v12
	v_cvt_f32_i32_e32 v94, v13
	v_cvt_f32_i32_e32 v93, v14
	v_cvt_f32_i32_e32 v92, v15
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v8, v22
	v_cvt_f32_i32_e32 v9, v23
	v_cvt_f32_i32_e32 v6, v24
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v0, v30
	v_cvt_f32_i32_e32 v1, v31
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge34
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v11, 24, v58
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s33, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cmp_o_f32_e64 s18, v68, v68
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s20, s3, s23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s3, v67, v67
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_or_b32_e32 v2, 39, v11
	v_or_b32_e32 v4, 37, v11
	v_or_b32_e32 v6, 35, v11
	v_or_b32_e32 v5, 36, v11
	v_or_b32_e32 v7, 34, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s23, v2
	v_or_b32_e32 v8, s23, v4
	v_or_b32_e32 v10, s23, v6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v3, 38, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v9, s23, v5
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s1, s35, v8
	v_cmp_gt_i32_e64 s6, s35, v10
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s23, v7
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v8, 33, v11
	v_or_b32_e32 v10, 7, v11
	v_or_b32_e32 v12, 6, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s23, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s35, v9
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v9, 32, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s35, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s23, v8
	v_or_b32_e32 v14, s23, v10
	v_or_b32_e32 v15, s23, v12
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v13, 5, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s23, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s35, v0
	v_cmp_gt_i32_e64 s10, s35, v14
	v_cmp_gt_i32_e64 s11, s35, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s23, v13
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v14, 4, v11
	v_or_b32_e32 v15, 3, v11
	v_or_b32_e32 v16, 2, v11
	v_or_b32_e32 v17, 1, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s35, v1
	v_cmp_gt_i32_e64 s12, s35, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s23, v14
	v_or_b32_e32 v1, s23, v15
	v_or_b32_e32 v18, s23, v16
	v_or_b32_e32 v19, s23, v17
	v_or_b32_e32 v20, s23, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v0, v67, 16, 1
	v_bfe_u32 v1, v68, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s35, v18
	v_cmp_gt_i32_e64 s16, s35, v19
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[18:19], null, s35, v41, s[20:21]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v19, v67, v0, 0x7fff
	v_add3_u32 v20, v68, v1, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s35, v40, s[20:21]
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v1, v66, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s18
	v_bfe_u32 v20, v65, 16, 1
	v_bfe_u32 v23, v63, 16, 1
	v_bfe_u32 v22, v64, 16, 1
	v_add3_u32 v1, v66, v1, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_add3_u32 v20, v65, v20, 0x7fff
	v_cmp_o_f32_e64 s18, v65, v65
	v_add3_u32 v23, v63, v23, 0x7fff
	v_cmp_o_f32_e64 s20, v63, v63
	v_bfe_u32 v24, v62, 16, 1
	v_add3_u32 v22, v64, v22, 0x7fff
	v_cmp_o_f32_e64 s19, v64, v64
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v20.h, s18
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s20
	v_add3_u32 v23, v62, v24, 0x7fff
	v_bfe_u32 v24, v60, 16, 1
	v_bfe_u32 v25, v59, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v61, 16, 1
	v_cmp_o_f32_e64 s3, v62, v62
	v_add3_u32 v24, v60, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v60, v60
	v_add3_u32 v25, v59, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_add3_u32 v22, v61, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v61, v61
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v57, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s20
	v_bfe_u32 v25, v56, 16, 1
	v_bfe_u32 v26, v55, 16, 1
	v_bfe_u32 v27, v54, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s18
	v_add3_u32 v23, v57, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v57, v57
	v_add3_u32 v25, v56, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v56, v56
	v_add3_u32 v26, v55, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v55, v55
	v_add3_u32 v27, v54, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v54, v54
	v_bfe_u32 v28, v53, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s18
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s19
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_add3_u32 v26, v53, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v53, v53
	v_bfe_u32 v27, v52, 16, 1
	v_mov_b16_e32 v21.l, v51.h
	v_mov_b16_e32 v28.l, v50.h
	v_mov_b16_e32 v28.h, v21.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_add3_u32 v27, v52, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v52, v52
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v30.l, v48.h
	v_mov_b16_e32 v30.h, v21.h
	v_mov_b16_e32 v21.l, v49.h
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v29, v51, v29, 0x7fff
	v_cmp_o_f32_e64 s18, v51, v51
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v30
	v_and_b32_e32 v30, 1, v21
	v_mov_b16_e32 v21.l, v47.h
	v_add3_u32 v28, v50, v28, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s18
	v_cmp_o_f32_e64 s3, v50, v50
	v_add3_u32 v27, v48, v27, 0x7fff
	v_add3_u32 v30, v49, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v49, v49
	v_cmp_o_f32_e64 s19, v48, v48
	v_mov_b16_e32 v31.l, v46.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_cndmask_b16 v29.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s18
	v_cndmask_b16 v28.l, 0x7fff, v27.h, s19
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v47, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v47, v47
	v_mov_b16_e32 v21.l, v45.h
	v_mov_b16_e32 v31.l, v44.h
	v_add3_u32 v27, v46, v27, 0x7fff
	v_mov_b16_e32 v33.l, v42.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_cmp_o_f32_e64 s3, v46, v46
	v_and_b32_e32 v32, 1, v21
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v43.h
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s18, v45, v45
	v_add3_u32 v32, v45, v32, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_add3_u32 v31, v44, v31, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s18
	v_cmp_o_f32_e64 s3, v44, v44
	v_add3_u32 v27, v42, v27, 0x7fff
	v_add3_u32 v33, v43, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v43, v43
	v_cmp_o_f32_e64 s19, v42, v42
	v_mov_b16_e32 v40.l, v38.h
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v21.l, v39.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s19
	v_and_b32_e32 v27, 1, v40
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v40.l, v36.h
	v_mov_b16_e32 v21.l, v37.h
	v_cmp_o_f32_e64 s3, v39, v39
	v_mov_b16_e32 v41.l, v35.h
	v_add3_u32 v33, v39, v33, 0x7fff
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v41.h, v21.h
	v_add3_u32 v27, v38, v27, 0x7fff
	v_and_b32_e32 v39, 1, v21
	v_mov_b16_e32 v21.l, v34.h
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_add3_u32 v38, v36, v40, 0x7fff
	v_and_b32_e32 v40, 1, v41
	v_and_b32_e32 v41, 1, v21
	v_cmp_o_f32_e64 s19, v36, v36
	v_cmp_o_f32_e64 s21, v35, v35
	v_add3_u32 v39, v37, v39, 0x7fff
	v_add3_u32 v36, v35, v40, 0x7fff
	v_cmp_o_f32_e64 s18, v37, v37
	v_add3_u32 v37, v34, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v34, v34
	v_cndmask_b32_e64 v35, v20, v19, s4
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s21
	v_mov_b32_e32 v36, 0x5410
	v_cndmask_b32_e64 v19, v19, v20, s4
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s20
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
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v39.h, s18
	v_cndmask_b16 v27.l, 0x7fff, v38.h, s19
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v36, v36, 8, v36
	v_cndmask_b32_e64 v37, v32, v28, s4
	v_cndmask_b32_e64 v28, v28, v32, s4
	v_cndmask_b32_e64 v32, v27, v31, s4
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v36, 0x760076, v36
	v_cndmask_b32_e64 v27, v31, v27, s4
	v_cndmask_b32_e64 v31, v34, v33, s4
	s_mov_b32 s3, 0x76543210
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
	s_and_b32 s3, s22, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v34, 0x7060706, v34
	v_perm_b32 v36, v19, v35, v30
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	v_add_lshl_u32 v51, v18, v17, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_add_lshl_u32 v52, v18, v16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s16
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
	buffer_store_b16 v36, v50, s[36:39], 0 offen
	v_add_lshl_u32 v36, v18, v15, 1
	v_mov_b16_e32 v32.h, v21.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v21.l, v19.h
	v_cndmask_b32_e64 v50, 0x80000000, v52, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v32, v51, s[36:39], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	v_add_lshl_u32 v32, v18, v14, 1
	buffer_store_b16 v19, v50, s[36:39], 0 offen
	v_add_lshl_u32 v19, v18, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s13
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
	buffer_store_b16 v21, v36, s[36:39], 0 offen
	v_add_lshl_u32 v21, v18, v12, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v34.l, v35.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v35, v32, s[36:39], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v32, v18, v10, 1
	buffer_store_b16 v34, v19, s[36:39], 0 offen
	v_add_lshl_u32 v19, v18, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v33.l, v1.h
	buffer_store_b16 v1, v21, s[36:39], 0 offen
	v_add_lshl_u32 v1, v18, v8, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v39.l, v20.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v18, v7, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	s_clause 0x1
	buffer_store_b16 v33, v32, s[36:39], 0 offen
	buffer_store_b16 v20, v19, s[36:39], 0 offen
	v_add_lshl_u32 v19, v18, v6, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v39, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v18, v5, 1
	v_cndmask_b32_e64 v20, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v22.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v22, v20, s[36:39], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v20, v18, v4, 1
	buffer_store_b16 v38, v19, s[36:39], 0 offen
	v_add_lshl_u32 v19, v18, v3, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v24, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v18, v2, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v40.l, v23.h
	v_cndmask_b32_e64 v18, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s22, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v11, v0, v11, 1
	v_add_lshl_u32 v17, v0, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x2
	buffer_store_b16 v41, v20, s[36:39], 0 offen
	buffer_store_b16 v23, v18, s[36:39], 0 offen
	buffer_store_b16 v40, v1, s[36:39], 0 offen
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
	buffer_store_b16 v25, v11, s[36:39], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v11, v0, v15, 1
	v_add_lshl_u32 v14, v0, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v43, v16, s[36:39], 0 offen
	buffer_store_b16 v26, v1, s[36:39], 0 offen
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
	buffer_store_b16 v42, v11, s[36:39], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v11, v0, v12, 1
	v_add_lshl_u32 v10, v0, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v29, v13, s[36:39], 0 offen
	buffer_store_b16 v45, v1, s[36:39], 0 offen
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
	buffer_store_b16 v28, v11, s[36:39], 0 offen
	buffer_store_b16 v44, v9, s[36:39], 0 offen
	buffer_store_b16 v37, v1, s[36:39], 0 offen
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
	buffer_store_b16 v47, v8, s[36:39], 0 offen
	buffer_store_b16 v27, v6, s[36:39], 0 offen
	buffer_store_b16 v46, v1, s[36:39], 0 offen
	buffer_store_b16 v30, v5, s[36:39], 0 offen
	buffer_store_b16 v49, v2, s[36:39], 0 offen
	buffer_store_b16 v31, v3, s[36:39], 0 offen
	buffer_store_b16 v48, v0, s[36:39], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 110
		.amdhsa_next_free_sgpr 51
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
		.amdhsa_inst_pref_size 49
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 110
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6180
; TotalNumSgprs: 53
; NumVgprs: 110
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 110
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     110
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
