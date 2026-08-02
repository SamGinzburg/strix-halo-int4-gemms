	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v35, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s19, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_lshr_b32 s7, s7, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s26, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s5, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s26
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
	s_sub_i32 s24, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s24, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s4, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s31, s24, s18
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s4
	s_xor_b32 s11, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s27, s11, 31
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s6
	s_add_i32 s10, s7, s6
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s10, s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s10, s9
	s_add_i32 s11, s10, 1
	s_sub_i32 s8, s8, s12
	s_sub_i32 s12, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s8, s11, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s25, s24, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s33, s8, s27
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[24:25], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s9, s33, s27
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s25, s9, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s10
	s_addc_u32 s7, s7, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s25, v35
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s4, s[6:7], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s7, s18, v1
	v_cmp_gt_i32_e64 s6, s18, v2
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s4, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge11_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s29, s25, s31
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr29
.LBB0_3:                                ; %Flow188
	s_load_b64 s[16:17], s[0:1], 0x28
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v36, 0x70, v0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v64, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s28, s8, 7
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v1, 3, v0
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v2, 7, v0
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v4, 24, v1
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v5, 4, v2
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v6, s25, v4
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s37, s4, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v7, s28, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v8, 30, v3
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s18, v6
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v6, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s19, v7
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v7, 0x60, v0
	v_xor_b32_e32 v9, v4, v8
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v10, 24, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_lshrrev_b32_e32 v11, 2, v7
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s36, s3, 5
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s34, s24, s34
	s_cmp_lt_i32 s36, 32
	v_lshl_or_b32 v2, v2, 9, v9
	s_cselect_b32 s38, -1, 0
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v9, 5, v35
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v7, 4, v7
	v_xor_b32_e32 v10, v10, v11
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s34, s34, s36
	s_add_i32 s29, s25, s31
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v3, s34, v3
	s_mul_i32 s26, s26, s24
	v_or3_b32 v7, v9, v7, v10
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v10, s29, v35
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v16, 5, v0
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v8, s34, v8
	s_mov_b32 s20, s8
	s_mov_b32 s8, s10
	s_sub_i32 s10, s27, s26
	v_mul_lo_u32 v3, s18, v3
	s_sub_i32 s10, s10, s33
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v17, 16, v10
	v_mul_lo_u32 v69, v10, s35
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v10, 2, v36
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v16, 32, v16
	s_mul_i32 s5, s5, s10
	v_mul_lo_u32 v8, s19, v8
	s_lshl_b32 s5, s5, 7
	s_lshl_b32 s10, s2, 7
	s_and_b32 s21, s9, 0xffff
	s_and_b32 s9, s11, 0xffff
	s_lshl_b32 s11, s33, 5
	s_add_i32 s5, s10, s5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v57, s28, v0
	v_or_b32_e32 v11, 0x3f0, v0
	v_xor_b32_e32 v12, 0x88, v2
	v_xor_b32_e32 v9, 0x110, v2
	v_xor_b32_e32 v13, 0x198, v2
	v_xor_b32_e32 v14, 8, v7
	v_xor_b32_e32 v15, 16, v7
	v_xor_b32_e32 v18, 24, v7
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v6, 28, v6
	v_add3_u32 v10, 0, v10, v16
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v16, 1, v36
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v3, v3, s11, v4
	v_cndmask_b32_e64 v4, 0, 1, s38
	s_add_i32 s10, s5, s19
	v_mul_lo_u32 v70, v17, s35
	v_add3_u32 v71, s10, v8, v5
	s_lshl_b32 s10, s27, 5
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v57
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v68, 0, v35
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v72, s5, v8, v5
	v_subrev_nc_u32_e32 v73, s10, v3
	v_cmp_ne_u32_e64 s5, 1, v4
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v74, 0, v1
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v75, 0, v11
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v76, 0, v2
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v77, 0, v12
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v78, 0, v9
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v79, 0, v13
	v_add_nc_u32_e32 v80, 0, v7
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v81, 0, v14
	v_add_nc_u32_e32 v82, 0, v15
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v83, 0, v18
	v_add_nc_u32_e32 v84, v10, v6
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v85, 0, v16
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v34, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s37, s37, -1
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s3, s24, s35
	s_mov_b32 s30, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s2, s37, 5
	s_sub_i32 s31, s36, 32
	s_lshl_b32 s33, s19, 5
	s_lshl_b32 s18, s18, 5
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s10, s30, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v69, s30, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s10, s10, s19
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v18, v70, s30, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v57, s10, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v73, s18, v73
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s10, s30, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lg_u32 s30, s2
	s_mov_b32 s30, s10
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v19
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v71, s33, v71
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v31, v100, v17 :: v_dual_add_nc_u32 v72, s33, v72
	v_mul_f32_e32 v30, v101, v17
	v_mul_f32_e32 v32, v99, v17
	v_mul_f32_e32 v97, v97, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v84, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v99, v14, v29
	v_mul_f32_e32 v101, v12, v29
	v_mul_f32_e32 v102, v11, v29
	v_mul_f32_e32 v100, v13, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v85 offset:256
	ds_load_b128 v[25:28], v85 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v98, v98, v17
	v_mul_f32_e32 v96, v96, v17
	v_mul_f32_e32 v95, v95, v17
	v_mul_f32_e32 v94, v94, v17
	v_mul_f32_e32 v93, v93, v17
	v_mul_f32_e32 v92, v92, v17
	v_mul_f32_e32 v91, v91, v17
	v_mul_f32_e32 v88, v88, v17
	v_mul_f32_e32 v90, v90, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[21:24], v85 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v3, v3, v29
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v4, v4, v29 :: v_dual_fmac_f32 v41, v7, v12
	v_dual_mul_f32 v15, v15, v29 :: v_dual_fmac_f32 v42, v8, v11
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v86, v86, v17 :: v_dual_fmac_f32 v33, v1, v28
	v_dual_mul_f32 v9, v9, v29 :: v_dual_fmac_f32 v34, v2, v27
	v_mul_f32_e32 v10, v10, v29
	v_mul_f32_e32 v87, v87, v17
	v_mul_f32_e32 v89, v89, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[17:20], v85
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v53, v88, v26
	v_fmac_f32_e32 v55, v90, v14
	v_dual_fmac_f32 v39, v5, v14 :: v_dual_fmac_f32 v40, v6, v13
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v63, v97, v21
	v_fmac_f32_e32 v45, v102, v22
	v_dual_fmac_f32 v43, v9, v24 :: v_dual_fmac_f32 v44, v10, v23
	v_fmac_f32_e32 v52, v87, v27
	v_dual_fmac_f32 v54, v89, v25 :: v_dual_fmac_f32 v37, v3, v26
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v38, v4, v25 :: v_dual_fmac_f32 v49, v15, v18
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v16, v16, v29 :: v_dual_fmac_f32 v51, v86, v28
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v64, v30, v17 :: v_dual_fmac_f32 v67, v31, v18
	v_dual_fmac_f32 v66, v32, v19 :: v_dual_fmac_f32 v65, v98, v20
	v_dual_fmac_f32 v62, v96, v22 :: v_dual_fmac_f32 v61, v95, v23
	v_dual_fmac_f32 v60, v94, v24 :: v_dual_fmac_f32 v59, v93, v11
	v_fmac_f32_e32 v58, v92, v12
	v_fmac_f32_e32 v56, v91, v13
	v_fmac_f32_e32 v50, v16, v17
	v_dual_fmac_f32 v48, v99, v19 :: v_dual_fmac_f32 v47, v100, v20
	v_fmac_f32_e32 v46, v101, v21
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v86, v73
	v_dual_mov_b32 v87, v72 :: v_dual_mov_b32 v88, v71
	s_mov_b32 s34, s31
	s_delay_alu instid0(VALU_DEP_2)
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
	.loc	1 1437 38 is_stmt 1             ; ragged.py:1437:38
	v_cndmask_b32_e64 v89, 0x80000000, v87, s4
	v_cndmask_b32_e64 v93, 0x80000000, v88, s4
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v97, 0x80000000, v86, s1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_clause 0x1
	buffer_load_b128 v[89:92], v89, s[8:11], 0 offen
	buffer_load_b128 v[93:96], v93, s[8:11], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	buffer_load_b64 v[97:98], v97, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1426 27                       ; ragged.py:1426:27
	v_add_nc_u32_e32 v88, s33, v88
	v_add_nc_u32_e32 v87, s33, v87
	v_add_nc_u32_e32 v86, s18, v86
	s_add_i32 s34, s34, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s34, 0
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt vmcnt(1)
	v_perm_b32 v99, v95, v91, 0x5010400
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[97:98]
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_perm_b32 v97, v93, v89, 0x5010400
	v_perm_b32 v93, v93, v89, 0x7030602
	v_perm_b32 v98, v94, v90, 0x5010400
	v_perm_b32 v94, v94, v90, 0x7030602
	v_perm_b32 v95, v95, v91, 0x7030602
	v_perm_b32 v100, v96, v92, 0x5010400
	v_perm_b32 v101, v96, v92, 0x7030602
	v_lshrrev_b32_e32 v102, 8, v97
	v_lshrrev_b32_e32 v103, 24, v97
	v_lshrrev_b32_e32 v104, 8, v93
	v_lshrrev_b32_e32 v169, 24, v93
	v_lshrrev_b32_e32 v170, 8, v98
	v_lshrrev_b32_e32 v171, 24, v98
	v_lshrrev_b32_e32 v172, 8, v94
	v_lshrrev_b32_e32 v173, 24, v94
	v_and_b16 v89.l, 0xff, v97.l
	v_lshrrev_b32_e32 v174, 8, v99
	v_lshrrev_b32_e32 v175, 24, v99
	v_lshrrev_b32_e32 v176, 8, v95
	v_lshrrev_b32_e32 v177, 24, v95
	v_lshrrev_b32_e32 v178, 8, v100
	v_lshrrev_b32_e32 v179, 24, v100
	v_lshrrev_b32_e32 v180, 8, v101
	v_lshrrev_b32_e32 v181, 24, v101
	v_lshlrev_b16 v97.l, 8, v102.l
	v_and_b16 v89.h, 0xff, v97.h
	v_lshlrev_b16 v97.h, 8, v103.l
	v_and_b16 v90.l, 0xff, v93.l
	v_and_b16 v91.l, 0xff, v98.l
	v_lshlrev_b16 v98.l, 8, v104.l
	v_and_b16 v90.h, 0xff, v93.h
	v_and_b16 v91.h, 0xff, v98.h
	v_lshlrev_b16 v98.h, 8, v169.l
	v_and_b16 v92.l, 0xff, v94.l
	v_and_b16 v92.h, 0xff, v94.h
	v_and_b16 v93.l, 0xff, v99.l
	v_and_b16 v93.h, 0xff, v99.h
	v_and_b16 v94.l, 0xff, v95.l
	v_and_b16 v94.h, 0xff, v95.h
	v_and_b16 v95.l, 0xff, v100.l
	v_and_b16 v95.h, 0xff, v100.h
	v_lshlrev_b16 v99.l, 8, v170.l
	v_lshlrev_b16 v99.h, 8, v171.l
	v_lshlrev_b16 v100.l, 8, v172.l
	v_lshlrev_b16 v100.h, 8, v173.l
	v_and_b16 v96.l, 0xff, v101.l
	v_and_b16 v96.h, 0xff, v101.h
	v_lshlrev_b16 v101.l, 8, v174.l
	v_lshlrev_b16 v101.h, 8, v175.l
	v_lshlrev_b16 v102.l, 8, v176.l
	v_lshlrev_b16 v102.h, 8, v177.l
	v_lshlrev_b16 v103.l, 8, v178.l
	v_lshlrev_b16 v103.h, 8, v179.l
	v_lshlrev_b16 v104.l, 8, v180.l
	v_lshlrev_b16 v104.h, 8, v181.l
	v_or_b16 v89.l, v89.l, v97.l
	v_or_b16 v89.h, v89.h, v97.h
	v_or_b16 v90.l, v90.l, v98.l
	v_or_b16 v90.h, v90.h, v98.h
	v_or_b16 v91.l, v91.l, v99.l
	v_or_b16 v91.h, v91.h, v99.h
	v_or_b16 v92.l, v92.l, v100.l
	v_or_b16 v92.h, v92.h, v100.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v105, v68 offset:224
	ds_load_u8 v106, v68 offset:192
	ds_load_u8 v107, v68 offset:160
	ds_load_u8 v108, v68 offset:128
	ds_load_u8 v109, v68 offset:240
	ds_load_u8 v110, v68 offset:208
	ds_load_u8 v111, v68 offset:176
	ds_load_u8 v112, v68 offset:144
	ds_load_u8 v113, v68 offset:96
	ds_load_u8 v114, v68 offset:64
	ds_load_u8 v115, v68 offset:112
	ds_load_u8 v116, v68 offset:80
	ds_load_u8 v117, v68
	ds_load_u8 v118, v68 offset:16
	ds_load_u8 v119, v68 offset:32
	ds_load_u8 v120, v68 offset:48
	ds_load_u8 v121, v68 offset:352
	ds_load_u8 v122, v68 offset:320
	ds_load_u8 v123, v68 offset:288
	ds_load_u8 v124, v68 offset:256
	ds_load_u8 v125, v68 offset:368
	ds_load_u8 v126, v68 offset:336
	ds_load_u8 v127, v68 offset:304
	ds_load_u8 v128, v68 offset:272
	ds_load_u8 v129, v68 offset:480
	ds_load_u8 v130, v68 offset:448
	ds_load_u8 v131, v68 offset:416
	ds_load_u8 v132, v68 offset:384
	ds_load_u8 v133, v68 offset:496
	ds_load_u8 v134, v68 offset:464
	ds_load_u8 v135, v68 offset:432
	ds_load_u8 v136, v68 offset:400
	ds_load_u8 v137, v68 offset:608
	ds_load_u8 v138, v68 offset:576
	ds_load_u8 v139, v68 offset:544
	ds_load_u8 v140, v68 offset:512
	ds_load_u8 v141, v68 offset:624
	ds_load_u8 v142, v68 offset:592
	ds_load_u8 v143, v68 offset:560
	ds_load_u8 v144, v68 offset:528
	ds_load_u8 v145, v68 offset:736
	ds_load_u8 v146, v68 offset:704
	ds_load_u8 v147, v68 offset:672
	ds_load_u8 v148, v68 offset:640
	ds_load_u8 v149, v68 offset:752
	ds_load_u8 v150, v68 offset:720
	ds_load_u8 v151, v68 offset:688
	ds_load_u8 v152, v68 offset:656
	ds_load_u8 v153, v68 offset:992
	ds_load_u8 v154, v68 offset:960
	ds_load_u8 v155, v68 offset:928
	ds_load_u8 v156, v68 offset:896
	ds_load_u8 v157, v75
	ds_load_u8 v158, v68 offset:976
	ds_load_u8 v159, v68 offset:944
	ds_load_u8 v160, v68 offset:912
	ds_load_u8 v161, v68 offset:864
	ds_load_u8 v162, v68 offset:832
	ds_load_u8 v163, v68 offset:800
	ds_load_u8 v164, v68 offset:768
	ds_load_u8 v165, v68 offset:880
	ds_load_u8 v166, v68 offset:848
	ds_load_u8 v167, v68 offset:816
	ds_load_u8 v168, v68 offset:784
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v93.l, v93.l, v101.l
	v_or_b16 v93.h, v93.h, v101.h
	v_or_b16 v94.l, v94.l, v102.l
	v_or_b16 v94.h, v94.h, v102.h
	v_or_b16 v95.l, v95.l, v103.l
	v_or_b16 v95.h, v95.h, v103.h
	v_or_b16 v96.l, v96.l, v104.l
	v_or_b16 v96.h, v96.h, v104.h
	ds_store_b16 v76, v89
	ds_store_b16_d16_hi v76, v89 offset:32
	ds_store_b16 v76, v90 offset:64
	ds_store_b16_d16_hi v76, v90 offset:96
	ds_store_b16 v77, v91
	ds_store_b16_d16_hi v77, v91 offset:32
	ds_store_b16 v77, v92 offset:64
	ds_store_b16_d16_hi v77, v92 offset:96
	ds_store_b16 v78, v93
	ds_store_b16_d16_hi v78, v93 offset:32
	ds_store_b16 v78, v94 offset:64
	ds_store_b16_d16_hi v78, v94 offset:96
	ds_store_b16 v79, v95
	ds_store_b16_d16_hi v79, v95 offset:32
	ds_store_b16 v79, v96 offset:64
	ds_store_b16_d16_hi v79, v96 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[89:92], v80 offset1:4
	ds_load_2addr_stride64_b64 v[93:96], v81 offset1:4
	.loc	1 1438 35                       ; ragged.py:1438:35
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v108, v114, v113, 0xc0c0004
	v_perm_b32 v113, v117, v119, 0xc0c0004
	v_perm_b32 v114, v132, v131, 0xc0c0004
	v_perm_b32 v117, v130, v129, 0xc0c0004
	v_perm_b32 v119, v124, v123, 0xc0c0004
	v_perm_b32 v124, v140, v139, 0xc0c0004
	v_perm_b32 v129, v138, v137, 0xc0c0004
	v_perm_b32 v138, v112, v111, 0xc0c0004
	v_perm_b32 v139, v110, v109, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v116, v118, v120, 0xc0c0004
	.loc	1 1437 38                       ; ragged.py:1437:38
	ds_load_2addr_stride64_b64 v[97:100], v82 offset1:4
	.loc	1 1438 35                       ; ragged.py:1438:35
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v118, v136, v135, 0xc0c0004
	v_perm_b32 v120, v134, v133, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	.loc	1 1437 38                       ; ragged.py:1437:38
	ds_load_2addr_stride64_b64 v[101:104], v83 offset1:4
	.loc	1 1438 35                       ; ragged.py:1438:35
	v_lshl_or_b32 v106, v105, 16, v107
	v_lshl_or_b32 v105, v108, 16, v113
	v_lshl_or_b32 v108, v117, 16, v114
	v_lshl_or_b32 v114, v139, 16, v138
	v_lshl_or_b32 v113, v115, 16, v116
	v_perm_b32 v122, v148, v147, 0xc0c0004
	v_perm_b32 v123, v146, v145, 0xc0c0004
	v_perm_b32 v126, v152, v151, 0xc0c0004
	v_perm_b32 v128, v150, v149, 0xc0c0004
	v_perm_b32 v133, v144, v143, 0xc0c0004
	v_perm_b32 v134, v142, v141, 0xc0c0004
	v_lshl_or_b32 v107, v121, 16, v119
	v_lshl_or_b32 v116, v120, 16, v118
	v_lshl_or_b32 v115, v125, 16, v127
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[105:106], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[105:106], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[113:114], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[113:114], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v130, v156, v155, 0xc0c0004
	v_perm_b32 v131, v154, v153, 0xc0c0004
	v_perm_b32 v132, v164, v163, 0xc0c0004
	v_perm_b32 v137, v162, v161, 0xc0c0004
	v_perm_b32 v135, v168, v167, 0xc0c0004
	v_perm_b32 v136, v166, v165, 0xc0c0004
	v_perm_b32 v140, v160, v159, 0xc0c0004
	v_perm_b32 v141, v158, v157, 0xc0c0004
	v_lshl_or_b32 v110, v123, 16, v122
	v_lshl_or_b32 v109, v129, 16, v124
	v_lshl_or_b32 v118, v128, 16, v126
	v_lshl_or_b32 v117, v134, 16, v133
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[107:108], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[93:94], v[115:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[95:96], v[115:116], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v131, 16, v130
	v_lshl_or_b32 v111, v137, 16, v132
	v_lshl_or_b32 v89, v136, 16, v135
	v_lshl_or_b32 v90, v141, 16, v140
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[109:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[109:110], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[97:98], v[117:118], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[117:118], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[101:102], v[111:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[103:104], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[101:102], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[103:104], v[89:90], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v101, v1
	v_cvt_f32_i32_e32 v100, v2
	v_cvt_f32_i32_e32 v99, v3
	v_cvt_f32_i32_e32 v98, v4
	v_cvt_f32_i32_e32 v97, v5
	v_cvt_f32_i32_e32 v96, v6
	v_cvt_f32_i32_e32 v95, v7
	v_cvt_f32_i32_e32 v94, v8
	v_cvt_f32_i32_e32 v93, v9
	v_cvt_f32_i32_e32 v92, v10
	v_cvt_f32_i32_e32 v91, v11
	v_cvt_f32_i32_e32 v90, v12
	v_cvt_f32_i32_e32 v89, v13
	v_cvt_f32_i32_e32 v88, v14
	v_cvt_f32_i32_e32 v87, v15
	v_cvt_f32_i32_e32 v86, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge11
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v36
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v3, v64, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mul_lo_u32 v2, s19, v35
	s_mul_i32 s0, s29, s19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v4, s28, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v5, v67, 16, 1
	v_add3_u32 v3, v64, v3, 0x7fff
	v_bfe_u32 v7, v66, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_add_i32 s0, s0, s28
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v6, 64, v4
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v16, s0, v1, v2
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v2, v65, 16, 1
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v1.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v3, v67, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v67, v67
	v_add3_u32 v4, v66, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v66, v66
	v_add3_u32 v2, v65, v2, 0x7fff
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v63, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s2
	v_bfe_u32 v4, v62, 16, 1
	v_cmp_o_f32_e64 s3, v65, v65
	v_bfe_u32 v5, v61, 16, 1
	v_add3_u32 v3, v63, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v4, v62, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v62, v62
	v_bfe_u32 v6, v60, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	v_add3_u32 v5, v61, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v61, v61
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s2
	v_bfe_u32 v4, v59, 16, 1
	v_bfe_u32 v7, v58, 16, 1
	v_add3_u32 v6, v60, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v60, v60
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s3
	v_add3_u32 v4, v59, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v59, v59
	v_add3_u32 v7, v58, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v58, v58
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v56, 16, 1
	v_bfe_u32 v8, v55, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s2
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s3
	v_bfe_u32 v7, v54, 16, 1
	v_add3_u32 v6, v56, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v56, v56
	v_add3_u32 v8, v55, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v55, v55
	v_bfe_u32 v9, v53, 16, 1
	v_add3_u32 v7, v54, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v54, v54
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s2
	v_bfe_u32 v8, v52, 16, 1
	v_bfe_u32 v10, v51, 16, 1
	v_add3_u32 v9, v53, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s3
	v_add3_u32 v8, v52, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_add3_u32 v10, v51, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v51, v51
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s1
	v_bfe_u32 v9, v50, 16, 1
	v_bfe_u32 v11, v49, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s3
	v_bfe_u32 v10, v48, 16, 1
	v_add3_u32 v9, v50, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_add3_u32 v11, v49, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v49, v49
	v_bfe_u32 v12, v47, 16, 1
	v_add3_u32 v10, v48, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v48, v48
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s2
	v_bfe_u32 v11, v46, 16, 1
	v_bfe_u32 v13, v45, 16, 1
	v_add3_u32 v12, v47, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_add3_u32 v11, v46, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v46, v46
	v_add3_u32 v13, v45, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v45, v45
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v44, 16, 1
	v_bfe_u32 v14, v43, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v42, 16, 1
	v_add3_u32 v12, v44, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v44, v44
	v_add3_u32 v14, v43, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v43, v43
	v_add3_u32 v13, v42, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v42, v42
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_bfe_u32 v17, v39, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_bfe_u32 v14, v40, 16, 1
	v_bfe_u32 v15, v41, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s3
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v17, v39, v17, 0x7fff
	v_add3_u32 v14, v40, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v39, v39
	v_bfe_u32 v18, v38, 16, 1
	v_add3_u32 v15, v41, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v41, v41
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s2
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s3
	v_add3_u32 v17, v38, v18, 0x7fff
	v_bfe_u32 v18, v34, 16, 1
	v_bfe_u32 v19, v33, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v37, 16, 1
	v_cmp_o_f32_e64 s1, v38, v38
	v_add3_u32 v18, v34, v18, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v19, v33, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v33, v33
	v_add3_u32 v15, v37, v15, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v17.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s3
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s4
	v_mov_b32_e32 v18, 0x5410
	v_mov_b32_e32 v19, 0x7632
	v_cndmask_b32_e64 v17, v3, v1, s1
	v_cndmask_b32_e64 v1, v1, v3, s1
	v_cndmask_b32_e64 v3, v5, v2, s1
	v_cndmask_b32_e64 v2, v2, v5, s1
	v_cndmask_b32_e64 v5, v7, v4, s1
	v_cndmask_b32_e64 v4, v4, v7, s1
	v_cndmask_b32_e64 v7, v8, v6, s1
	v_cndmask_b32_e64 v6, v6, v8, s1
	v_cndmask_b32_e64 v20, v11, v9, s1
	v_cndmask_b32_e64 v8, v9, v11, s1
	v_cndmask_b32_e64 v9, 0x1054, v18, s1
	v_cndmask_b32_e64 v11, 0x3276, v19, s1
	v_cmp_o_f32_e64 s2, v37, v37
	v_cndmask_b32_e64 v18, v12, v10, s1
	v_cndmask_b32_e64 v10, v10, v12, s1
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s2
	s_mov_b32 s2, 0x76543210
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_lshl_b32 s5, s19, 4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b32_e64 v19, v15, v13, s1
	v_cndmask_b32_e64 v12, v13, v15, s1
	v_permlanex16_b32 v13, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v9, 4, v9
	v_lshl_or_b32 v9, v11, 4, v11
	v_cndmask_b32_e64 v15, v0, v14, s1
	v_cndmask_b32_e64 v0, v14, v0, s1
	v_permlanex16_b32 v1, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x5040504, v2
	v_and_b32_e32 v23, 0x7060706, v9
	v_permlanex16_b32 v11, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v17, v22
	v_perm_b32 v1, v1, v17, v23
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshlrev_b32_e32 v17, 1, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v25, v12, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_lshl_u32 v16, v16, s5, 1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v14, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v11, v5, v22
	v_perm_b32 v5, v11, v5, v23
	v_perm_b32 v10, v24, v18, v22
	v_perm_b32 v11, v24, v18, v23
	v_add_nc_u32_e32 v18, 0x80, v17
	v_permlanex16_b32 v21, v8, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s1, s7, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v13, v3, v22
	v_perm_b32 v3, v13, v3, v23
	v_perm_b32 v12, v25, v19, v22
	v_perm_b32 v13, v25, v19, v23
	v_add_nc_u32_e32 v19, 0x80, v16
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s7, vcc_lo
	s_and_b32 s0, s6, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v6, v14, v7, v22
	v_perm_b32 v7, v14, v7, v23
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s6, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v8, v21, v20, v22
	v_perm_b32 v9, v21, v20, v23
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_perm_b32 v14, v26, v15, v22
	v_perm_b32 v15, v26, v15, v23
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v17, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v18, s[16:19], 0 offen
	buffer_store_b128 v[8:11], v16, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v19, s[16:19], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 182
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 182
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6228
; TotalNumSgprs: 41
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 182
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
