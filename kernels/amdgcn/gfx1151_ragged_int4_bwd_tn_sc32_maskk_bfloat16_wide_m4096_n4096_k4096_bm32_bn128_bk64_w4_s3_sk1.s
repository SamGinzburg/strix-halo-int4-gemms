	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[6:7], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s10, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v37, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s6, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s7, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s8, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s9, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s8, s8, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_lshr_b32 s9, s9, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s25, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s24, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s24, s25
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s8
	s_mul_hi_u32 s9, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s8, s10, s8
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s11, s8, s5
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s10, s5
	s_cmp_ge_u32 s10, s5
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s10, s5
	s_cselect_b32 s5, s11, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s24
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s9
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s10, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s18, s5, s9
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s8
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s18, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s10
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s9, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s37, s18, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s11, s9
	s_xor_b32 s12, s9, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s26, s12, 31
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s5
	s_add_i32 s10, s10, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s10, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s10, s8
	s_add_i32 s12, s10, 1
	s_sub_i32 s11, s11, s13
	s_sub_i32 s13, s11, s8
	s_cmp_ge_u32 s11, s8
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s11, s13, s11
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s11, s8
	s_cselect_b32 s8, s12, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s19, s18, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s27, s8, s26
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[18:19], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s12, s27, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s12, s24
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s22, s12, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s9, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s22, v37
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s23, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s6, v1
	v_cmp_gt_i32_e64 s4, s6, v2
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s20, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s20, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge17_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s29, s22, s37
	s_lshl_b32 s28, s7, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr29
                                        ; implicit-def: $sgpr28
.LBB0_3:                                ; %Flow275
	s_load_b64 s[16:17], s[0:1], 0x28
	v_dual_mov_b32 v36, 0 :: v_dual_and_b32 v43, 0x70, v0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v66, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s19, s8, 7
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph16
	s_clause 0x1
	s_load_b64 s[38:39], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s0, s20, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s23, 31
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s20, s20, s0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s0, s23, s1
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s30, s3, 4
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s31, s20, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s33, s0, 1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v68, 3, v0
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v1, 7, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s25, s25, s18
	v_lshrrev_b32_e32 v4, 1, v0
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v8, 2, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v2, 2, v1
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s3, s18, s38
	s_and_b32 s21, s9, 0xffff
	s_and_b32 s9, s11, 0xffff
	s_bitcmp1_b32 s23, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v9, s3, s30, v68
	s_cselect_b32 s36, -1, 0
	s_add_i32 s29, s22, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v3, s29, v37
	v_mul_lo_u32 v10, s6, v9
	s_mov_b32 s20, s8
	s_mov_b32 s8, s10
	s_sub_i32 s10, s26, s25
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v7, 16, v3
	v_mul_lo_u32 v72, v3, s39
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v73, v7, s39
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v3, 32, v3
	s_sub_i32 s10, s10, s27
	v_mul_lo_u32 v9, s7, v9
	s_mul_i32 s24, s24, s10
	s_lshl_b32 s11, s27, 5
	s_lshl_b32 s10, s24, 7
	s_lshl_b32 s2, s2, 7
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v33, s22, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v34, s19, v1
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v71, 0, v37
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v4, 48, v4
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v7, 28, v7
	v_add3_u32 v3, 0, v8, v3
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v8, 1, v43
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v2, v10, s11, v2
	s_add_i32 s2, s2, s10
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s19, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v75, s2, v9, v1
	s_lshl_b32 s2, s26, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s6, v33
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s7, v34
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v74, s3, v68
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_subrev_nc_u32_e32 v76, s2, v2
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v77, 0, v5
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v78, 0, v6
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v79, v71, v4
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v80, v3, v7
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v81, 0, v8
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v35, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_add_i32 s37, s31, -1
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s34, s18, s39
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s35, 0
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s18, s37, 4
	s_lshl_b32 s28, s7, 4
	s_lshl_b32 s38, s6, 4
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s2, 0
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s7, v65
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s35, s34
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v82, v72, s35, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s7
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v83, v73, s35, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v84, v65, s2, 1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v82, 0x80000000, v82, s5
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v83, 0x80000000, v83, s4
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v82, v82, s[24:27], 0 offen
	buffer_load_u16 v83, v83, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v84, v84, s[12:15], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
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
	v_cvt_f32_i32_e32 v85, v1
	v_cvt_f32_i32_e32 v86, v2
	v_cvt_f32_i32_e32 v87, v3
	v_cvt_f32_i32_e32 v88, v4
	v_cvt_f32_i32_e32 v89, v5
	v_cvt_f32_i32_e32 v90, v6
	v_cvt_f32_i32_e32 v91, v7
	v_cvt_f32_i32_e32 v92, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s3, s35, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v76, s38, v76
	s_lshl_b32 s2, s3, 4
	s_cmp_lg_u32 s35, s18
	s_mov_b32 s35, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v82
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v82, 16, v83
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v84
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v26, v26, v1 :: v_dual_add_nc_u32 v75, s28, v75
	v_mul_f32_e32 v25, v25, v1
	v_mul_f32_e32 v27, v27, v1
	v_dual_mul_f32 v28, v28, v1 :: v_dual_mul_f32 v83, v9, v82
	v_dual_mul_f32 v29, v29, v1 :: v_dual_mul_f32 v84, v10, v82
	v_dual_mul_f32 v30, v30, v1 :: v_dual_mul_f32 v93, v11, v82
	v_dual_mul_f32 v31, v31, v1 :: v_dual_mul_f32 v94, v12, v82
	v_dual_mul_f32 v32, v32, v1 :: v_dual_mul_f32 v95, v13, v82
	v_dual_mul_f32 v17, v17, v1 :: v_dual_mul_f32 v96, v14, v82
	v_dual_mul_f32 v18, v18, v1 :: v_dual_mul_f32 v97, v15, v82
	v_dual_mul_f32 v19, v19, v1 :: v_dual_mul_f32 v98, v16, v82
	v_dual_mul_f32 v20, v20, v1 :: v_dual_mul_f32 v85, v85, v82
	v_dual_mul_f32 v21, v21, v1 :: v_dual_mul_f32 v86, v86, v82
	v_dual_mul_f32 v22, v22, v1 :: v_dual_mul_f32 v87, v87, v82
	v_dual_mul_f32 v23, v23, v1 :: v_dual_mul_f32 v88, v88, v82
	v_dual_mul_f32 v24, v24, v1 :: v_dual_mul_f32 v89, v89, v82
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v80, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v81
	ds_load_b128 v[5:8], v81 offset:16
	ds_load_b128 v[9:12], v81 offset:256
	ds_load_b128 v[13:16], v81 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v90, v90, v82
	v_mul_f32_e32 v91, v91, v82
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v82, v92, v82 :: v_dual_fmac_f32 v49, v94, v4
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v66, v25, v1
	v_dual_fmac_f32 v70, v26, v2 :: v_dual_fmac_f32 v67, v28, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v69, v27, v3 :: v_dual_fmac_f32 v64, v29, v5
	v_dual_fmac_f32 v63, v30, v6 :: v_dual_fmac_f32 v62, v31, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v61, v32, v8 :: v_dual_fmac_f32 v60, v17, v9
	v_dual_fmac_f32 v59, v18, v10 :: v_dual_fmac_f32 v58, v19, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v57, v20, v12 :: v_dual_fmac_f32 v56, v21, v13
	v_dual_fmac_f32 v55, v22, v14 :: v_dual_fmac_f32 v54, v23, v15
	v_dual_fmac_f32 v53, v24, v16 :: v_dual_fmac_f32 v52, v83, v1
	v_dual_fmac_f32 v51, v84, v2 :: v_dual_fmac_f32 v50, v93, v3
	v_dual_fmac_f32 v47, v96, v6 :: v_dual_fmac_f32 v48, v95, v5
	v_dual_fmac_f32 v45, v98, v8 :: v_dual_fmac_f32 v46, v97, v7
	v_dual_fmac_f32 v35, v82, v16 :: v_dual_fmac_f32 v44, v85, v9
	v_dual_fmac_f32 v41, v87, v11 :: v_dual_fmac_f32 v42, v86, v10
	v_dual_fmac_f32 v39, v89, v13 :: v_dual_fmac_f32 v40, v88, v12
	v_fmac_f32_e32 v38, v90, v14
	v_fmac_f32_e32 v36, v91, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s33, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s3, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s3, v1
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	s_and_b32 s39, s3, 16
	s_mov_b32 s3, s30
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s30, s39
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v82, v76
	v_mov_b32_e32 v83, v75
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
	v_cndmask_b32_e64 v84, 0x80000000, v82, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 1461 27                       ; ragged.py:1461:27
	v_add_nc_u32_e32 v82, s38, v82
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 16
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b32 v88, v84, s[20:23], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v84, 0x80000000, v83, s1
	.loc	1 1461 27                       ; ragged.py:1461:27
	v_add_nc_u32_e32 v83, s28, v83
	s_cmp_lt_i32 s3, s39
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_b128 v[84:87], v84, s[8:11], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v77, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v88, v71 offset:96
	ds_load_u8 v89, v71 offset:64
	ds_load_u8 v90, v71 offset:224
	ds_load_u8 v91, v71 offset:192
	ds_load_u8 v92, v71 offset:160
	ds_load_u8 v93, v71 offset:128
	ds_load_u8 v94, v71 offset:352
	ds_load_u8 v95, v71 offset:320
	ds_load_u8 v96, v71 offset:288
	ds_load_u8 v97, v71 offset:256
	ds_load_u8 v98, v71 offset:480
	ds_load_u8 v99, v71 offset:448
	ds_load_u8 v100, v71 offset:416
	ds_load_u8 v101, v71 offset:384
	ds_load_u8 v102, v71 offset:112
	ds_load_u8 v103, v71 offset:80
	ds_load_u8 v104, v71 offset:240
	ds_load_u8 v105, v71 offset:208
	ds_load_u8 v106, v71 offset:176
	ds_load_u8 v107, v71 offset:144
	ds_load_u8 v108, v71
	ds_load_u8 v109, v71 offset:16
	ds_load_u8 v110, v71 offset:32
	ds_load_u8 v111, v71 offset:48
	ds_load_u8 v112, v71 offset:368
	ds_load_u8 v113, v71 offset:336
	ds_load_u8 v114, v71 offset:304
	ds_load_u8 v115, v71 offset:272
	ds_load_u8 v116, v71 offset:496
	ds_load_u8 v117, v71 offset:464
	ds_load_u8 v118, v71 offset:432
	ds_load_u8 v119, v71 offset:400
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[84:87]
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v84, v93, v92, 0xc0c0004
	v_perm_b32 v85, v91, v90, 0xc0c0004
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_perm_b32 v90, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v85, 16, v84
	v_perm_b32 v84, v89, v88, 0xc0c0004
	v_perm_b32 v86, v108, v110, 0xc0c0004
	v_lshl_or_b32 v84, v84, 16, v86
	ds_load_u8 v86, v79 offset:640
	ds_load_u8 v87, v79 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v79 offset:896
	ds_load_u8 v88, v79 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v87, 16, v86
	ds_load_u8 v86, v79 offset:128
	ds_load_u8 v88, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v88, v86, 0xc0c0004
	ds_load_u8 v88, v79 offset:384
	ds_load_u8 v89, v79 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v86, v88, 16, v86
	v_perm_b32 v88, v101, v100, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[84:85], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v89, 16, v88
	v_perm_b32 v88, v97, v96, 0xc0c0004
	v_lshl_or_b32 v88, v90, 16, v88
	ds_load_u8 v90, v79 offset:1664
	ds_load_u8 v91, v79 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v79 offset:1920
	ds_load_u8 v92, v79 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v79 offset:1152
	ds_load_u8 v92, v79 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v79 offset:1408
	ds_load_u8 v93, v79 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	ds_load_u8 v92, v79 offset:704
	ds_load_u8 v93, v79 offset:576
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[88:89], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v79 offset:960
	ds_load_u8 v94, v79 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v79 offset:192
	ds_load_u8 v94, v79 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v94, v92, 0xc0c0004
	ds_load_u8 v94, v79 offset:448
	ds_load_u8 v95, v79 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v94, 16, v92
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[84:85], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v84, v79 offset:1728
	ds_load_u8 v85, v79 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v79 offset:1984
	ds_load_u8 v94, v79 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v94, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v85, 16, v84
	ds_load_u8 v84, v79 offset:1216
	ds_load_u8 v94, v79 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v94, v84, 0xc0c0004
	ds_load_u8 v94, v79 offset:1472
	ds_load_u8 v95, v79 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v84, v94, 16, v84
	v_perm_b32 v94, v109, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[88:89], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v88, v107, v106, 0xc0c0004
	v_perm_b32 v89, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v89, 16, v88
	v_perm_b32 v88, v103, v102, 0xc0c0004
	v_lshl_or_b32 v88, v88, 16, v94
	v_perm_b32 v94, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[88:89], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v86, v119, v118, 0xc0c0004
	v_perm_b32 v87, v117, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[88:89], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v87, v87, 16, v86
	v_perm_b32 v86, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v86, v94, 16, v86
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[86:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[86:87], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s10, s31, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s10, s10, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s10
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s11, s3, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b32_e32 v82, s11, v68
	v_add_nc_u32_e32 v84, s11, v74
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s11, s23
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v83, s2, v82
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s37, v82
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s10, v83
	.loc	1 1496 46                       ; ragged.py:1496:46
	v_mad_u64_u32 v[82:83], null, v84, s6, v[33:34]
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s39, s3, s36
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s10, s22
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s1, s2
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v82, 0x80000000, v82, s3
	buffer_load_b32 v88, v82, s[20:23], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_mad_u64_u32 v[82:83], null, v84, s7, v[34:35]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	buffer_load_b128 v[82:85], v82, s[8:11], 0 offen
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v89, 8, v88
	v_lshrrev_b32_e32 v90, 24, v88
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v86.l, v88.l, 15
	v_and_b16 v87.l, v88.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v86.h, v89.l, 15
	v_and_b16 v87.h, v90.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v86.l, v88.l, v86.l, s39
	v_cndmask_b16 v87.l, v88.h, v87.l, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v86.h, v89.l, v86.h, s39
	v_cndmask_b16 v87.h, v90.l, v87.h, s39
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v99, 8, v82
	v_lshrrev_b32_e32 v100, 8, v83
	v_lshrrev_b32_e32 v101, 24, v83
	v_lshrrev_b32_e32 v104, 8, v84
	v_lshrrev_b32_e32 v105, 8, v85
	v_lshrrev_b64 v[96:97], 24, v[82:83]
	v_lshrrev_b64 v[97:98], 24, v[84:85]
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v88.l, v82.l, 15
	v_and_b16 v89.l, v82.h, 15
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_lshrrev_b32_e32 v106, 24, v85
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v88.h, v99.l, 15
	v_and_b16 v90.l, v83.l, 15
	v_and_b16 v90.h, v100.l, 15
	v_and_b16 v91.h, v101.l, 15
	v_and_b16 v92.l, v84.l, 15
	v_and_b16 v92.h, v104.l, 15
	v_and_b16 v94.l, v85.l, 15
	v_and_b16 v94.h, v105.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v98.l, v82.l, v88.l, s39
	v_cndmask_b16 v102.l, v82.h, v89.l, s39
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_and_b16 v82.l, 0xff, v86.l
	v_lshlrev_b16 v82.h, 8, v86.h
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v89.h, v96.l, 15
	v_and_b16 v91.l, v83.h, 15
	v_and_b16 v93.l, v84.h, 15
	v_and_b16 v93.h, v97.l, 15
	v_and_b16 v95.l, v85.h, 15
	v_and_b16 v95.h, v106.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v98.h, v99.l, v88.h, s39
	v_cndmask_b16 v99.l, v83.l, v90.l, s39
	v_cndmask_b16 v99.h, v100.l, v90.h, s39
	v_cndmask_b16 v103.h, v101.l, v91.h, s39
	v_cndmask_b16 v100.l, v84.l, v92.l, s39
	v_cndmask_b16 v100.h, v104.l, v92.h, s39
	v_cndmask_b16 v101.l, v85.l, v94.l, s39
	v_cndmask_b16 v101.h, v105.l, v94.h, s39
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_or_b16 v83.l, v82.l, v82.h
	v_lshlrev_b16 v82.l, 8, v87.h
	v_and_b16 v82.h, 0xff, v87.l
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v102.h, v96.l, v89.h, s39
	v_cndmask_b16 v103.l, v83.h, v91.l, s39
	v_cndmask_b16 v104.l, v84.h, v93.l, s39
	v_cndmask_b16 v104.h, v97.l, v93.h, s39
	v_cndmask_b16 v105.l, v85.h, v95.l, s39
	v_cndmask_b16 v105.h, v106.l, v95.h, s39
	v_and_b16 v101.l, 0xff, v101.l
	v_lshlrev_b16 v101.h, 8, v101.h
	v_and_b16 v100.l, 0xff, v100.l
	v_lshlrev_b16 v100.h, 8, v100.h
	v_and_b16 v99.l, 0xff, v99.l
	v_lshlrev_b16 v99.h, 8, v99.h
	v_and_b16 v98.l, 0xff, v98.l
	v_lshlrev_b16 v98.h, 8, v98.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v83.h, v82.h, v82.l
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v101.l, v101.l, v101.h
	v_lshlrev_b16 v101.h, 8, v105.h
	v_and_b16 v105.l, 0xff, v105.l
	v_or_b16 v100.l, v100.l, v100.h
	v_lshlrev_b16 v100.h, 8, v104.h
	v_and_b16 v104.l, 0xff, v104.l
	v_or_b16 v99.l, v99.l, v99.h
	v_lshlrev_b16 v99.h, 8, v103.h
	v_and_b16 v103.l, 0xff, v103.l
	v_or_b16 v98.l, v98.l, v98.h
	v_lshlrev_b16 v98.h, 8, v102.h
	v_and_b16 v102.l, 0xff, v102.l
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b32 v77, v83
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v106, v71 offset:96
	ds_load_u8 v107, v71 offset:64
	ds_load_u8 v108, v71 offset:224
	ds_load_u8 v109, v71 offset:192
	ds_load_u8 v110, v71 offset:160
	ds_load_u8 v111, v71 offset:128
	ds_load_u8 v112, v71 offset:352
	ds_load_u8 v113, v71 offset:320
	ds_load_u8 v114, v71 offset:288
	ds_load_u8 v115, v71 offset:256
	ds_load_u8 v116, v71 offset:480
	ds_load_u8 v117, v71 offset:448
	ds_load_u8 v118, v71 offset:416
	ds_load_u8 v119, v71 offset:384
	ds_load_u8 v86, v71 offset:112
	ds_load_u8 v87, v71 offset:80
	ds_load_u8 v91, v71 offset:240
	ds_load_u8 v94, v71 offset:208
	ds_load_u8 v96, v71 offset:176
	ds_load_u8 v97, v71 offset:144
	ds_load_u8 v120, v71
	ds_load_u8 v92, v71 offset:16
	ds_load_u8 v121, v71 offset:32
	ds_load_u8 v95, v71 offset:48
	ds_load_u8 v82, v71 offset:368
	ds_load_u8 v83, v71 offset:336
	ds_load_u8 v84, v71 offset:304
	ds_load_u8 v85, v71 offset:272
	ds_load_u8 v88, v71 offset:496
	ds_load_u8 v89, v71 offset:464
	ds_load_u8 v90, v71 offset:432
	ds_load_u8 v93, v71 offset:400
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v101.h, v105.l, v101.h
	v_or_b16 v100.h, v104.l, v100.h
	v_or_b16 v99.h, v103.l, v99.h
	v_or_b16 v98.h, v102.l, v98.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v104, v113, v112, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	ds_store_b128 v78, v[98:101]
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v98, v111, v110, 0xc0c0004
	v_perm_b32 v99, v109, v108, 0xc0c0004
	v_perm_b32 v100, v120, v121, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v91, v94, v91, 0xc0c0004
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v107, v106, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_perm_b32 v87, v92, v95, 0xc0c0004
	v_lshl_or_b32 v96, v91, 16, v96
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_lshl_or_b32 v98, v98, 16, v100
	ds_load_u8 v100, v79 offset:640
	ds_load_u8 v101, v79 offset:512
	v_lshl_or_b32 v95, v86, 16, v87
	v_perm_b32 v86, v93, v90, 0xc0c0004
	v_perm_b32 v87, v89, v88, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v86, v87, 16, v86
	v_lshl_or_b32 v85, v82, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v79 offset:896
	ds_load_u8 v102, v79 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v101, 16, v100
	ds_load_u8 v100, v79 offset:128
	ds_load_u8 v102, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v102, v100, 0xc0c0004
	ds_load_u8 v102, v79 offset:384
	ds_load_u8 v103, v79 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v103, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v100, v102, 16, v100
	v_perm_b32 v102, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[98:99], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v103, 16, v102
	v_perm_b32 v102, v115, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v104, 16, v102
	ds_load_u8 v104, v79 offset:1664
	ds_load_u8 v105, v79 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v79 offset:1920
	ds_load_u8 v106, v79 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v79 offset:1152
	ds_load_u8 v106, v79 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v106, v104, 0xc0c0004
	ds_load_u8 v106, v79 offset:1408
	ds_load_u8 v107, v79 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v106, 16, v104
	ds_load_u8 v106, v79 offset:704
	ds_load_u8 v107, v79 offset:576
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[102:103], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[85:86], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v79 offset:960
	ds_load_u8 v108, v79 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v107, 16, v106
	ds_load_u8 v106, v79 offset:192
	ds_load_u8 v108, v79 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v108, v106, 0xc0c0004
	ds_load_u8 v108, v79 offset:448
	ds_load_u8 v109, v79 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v108, 16, v106
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[98:99], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v98, v79 offset:1728
	ds_load_u8 v99, v79 offset:1600
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[95:96], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v79 offset:1984
	ds_load_u8 v108, v79 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v108, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v99, 16, v98
	ds_load_u8 v98, v79 offset:1216
	ds_load_u8 v108, v79 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v108, v98, 0xc0c0004
	ds_load_u8 v108, v79 offset:1472
	ds_load_u8 v109, v79 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v108, 16, v98
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[102:103], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[85:86], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s7, v37
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v3, v66, 16, 1
	v_bfe_u32 v5, v70, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s0, s29, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s0, s0, s19
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v4, s19, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v6, v69, 16, 1
	v_add3_u32 v3, v66, v3, 0x7fff
	v_bfe_u32 v8, v67, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_add3_u32 v16, s0, v1, v2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v2, v70, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v7, 64, v4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s7, v4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v1.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v3, v69, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v69, v69
	v_add3_u32 v4, v67, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v67, v67
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v64, 16, 1
	v_bfe_u32 v5, v63, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s3
	v_bfe_u32 v4, v62, 16, 1
	v_add3_u32 v2, v64, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v64, v64
	v_add3_u32 v5, v63, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v63, v63
	v_bfe_u32 v6, v61, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s7, v7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v4, v62, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v62, v62
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s2
	v_bfe_u32 v5, v60, 16, 1
	v_bfe_u32 v7, v59, 16, 1
	v_add3_u32 v6, v61, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v61, v61
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_add3_u32 v5, v60, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v60, v60
	v_add3_u32 v7, v59, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v59, v59
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v58, 16, 1
	v_bfe_u32 v8, v57, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s3
	v_bfe_u32 v7, v56, 16, 1
	v_add3_u32 v6, v58, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_add3_u32 v8, v57, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v57, v57
	v_bfe_u32 v9, v55, 16, 1
	v_add3_u32 v7, v56, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v56, v56
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s2
	v_bfe_u32 v8, v54, 16, 1
	v_bfe_u32 v10, v53, 16, 1
	v_add3_u32 v9, v55, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s3
	v_add3_u32 v8, v54, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v54, v54
	v_add3_u32 v10, v53, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v53, v53
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s1
	v_bfe_u32 v9, v52, 16, 1
	v_bfe_u32 v11, v51, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s3
	v_bfe_u32 v10, v50, 16, 1
	v_add3_u32 v9, v52, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v52, v52
	v_add3_u32 v11, v51, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v51, v51
	v_bfe_u32 v12, v49, 16, 1
	v_add3_u32 v10, v50, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v50, v50
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s2
	v_bfe_u32 v11, v48, 16, 1
	v_bfe_u32 v13, v47, 16, 1
	v_add3_u32 v12, v49, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_add3_u32 v11, v48, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v48, v48
	v_add3_u32 v13, v47, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v47, v47
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v46, 16, 1
	v_bfe_u32 v14, v45, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v44, 16, 1
	v_add3_u32 v12, v46, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v46, v46
	v_add3_u32 v14, v45, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v45, v45
	v_bfe_u32 v15, v42, 16, 1
	v_add3_u32 v13, v44, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_bfe_u32 v14, v41, 16, 1
	v_bfe_u32 v17, v40, 16, 1
	v_add3_u32 v15, v42, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v42, v42
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s3
	v_add3_u32 v14, v41, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v41, v41
	v_add3_u32 v17, v40, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v40, v40
	v_bfe_u32 v18, v39, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v38, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s2
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s3
	v_add3_u32 v17, v39, v18, 0x7fff
	v_bfe_u32 v18, v36, 16, 1
	v_cmp_o_f32_e64 s1, v39, v39
	v_bfe_u32 v19, v35, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v15, v38, v15, 0x7fff
	v_add3_u32 v18, v36, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v19, v35, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v35, v35
	v_cndmask_b16 v15.l, 0x7fff, v17.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s3
	v_cmp_o_f32_e64 s2, v38, v38
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s6
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e64 v17, v2, v1, s1
	v_cndmask_b32_e64 v1, v1, v2, s1
	v_cndmask_b32_e64 v18, v4, v3, s1
	v_cndmask_b32_e64 v2, v3, v4, s1
	v_cndmask_b32_e64 v19, v7, v5, s1
	v_cndmask_b32_e64 v3, v5, v7, s1
	v_mov_b32_e32 v4, 0x5410
	v_mov_b32_e32 v5, 0x7632
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s2
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v7, v8, v6, s1
	v_cndmask_b32_e64 v4, 0x1054, v4, s1
	v_cndmask_b32_e64 v5, 0x3276, v5, s1
	v_cndmask_b32_e64 v6, v6, v8, s1
	v_cndmask_b32_e64 v20, v11, v9, s1
	v_cndmask_b32_e64 v8, v9, v11, s1
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e64 v11, v12, v10, s1
	v_cndmask_b32_e64 v9, v10, v12, s1
	v_permlanex16_b32 v12, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v21, v15, v13, s1
	v_cndmask_b32_e64 v10, v13, v15, s1
	v_cndmask_b32_e64 v15, v0, v14, s1
	v_lshl_or_b32 v2, v4, 4, v4
	v_lshl_or_b32 v4, v5, 4, v5
	v_cndmask_b32_e64 v0, v14, v0, s1
	v_permlanex16_b32 v1, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x5040504, v2
	v_and_b32_e32 v23, 0x7060706, v4
	v_permlanex16_b32 v26, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v17, v22
	v_perm_b32 v1, v1, v17, v23
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_lshlrev_b32_e32 v17, 1, v16
	v_add_lshl_u32 v16, v16, s28, 1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v12, v18, v22
	v_perm_b32 v3, v12, v18, v23
	v_permlanex16_b32 v24, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v18, 0x80, v17
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s1, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v25, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v19, v22
	v_perm_b32 v5, v5, v19, v23
	v_add_nc_u32_e32 v19, 0x80, v16
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s5, vcc_lo
	s_and_b32 s0, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v6, v13, v7, v22
	v_perm_b32 v7, v13, v7, v23
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v8, v14, v20, v22
	v_perm_b32 v9, v14, v20, v23
	v_perm_b32 v10, v24, v11, v22
	v_perm_b32 v11, v24, v11, v23
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_perm_b32 v12, v25, v21, v22
	v_perm_b32 v13, v25, v21, v23
	v_perm_b32 v14, v26, v15, v22
	v_perm_b32 v15, v26, v15, v23
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 122
		.amdhsa_next_free_sgpr 40
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 122
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7412
; TotalNumSgprs: 42
; NumVgprs: 122
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 122
; Occupancy: 10
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     122
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
