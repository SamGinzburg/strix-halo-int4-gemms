	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
	v_and_b32_e32 v2, 64, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v3, 2, v2
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
	s_abs_i32 s7, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s8, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_load_b64 s[10:11], s[0:1], 0x20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_readfirstlane_b32 s9, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 15, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v60, v3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s9, s9
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v61, 32, v60
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s8, s8, s9
	s_mul_hi_u32 s4, s9, s8
	s_abs_i32 s8, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s9
	s_xor_b32 s9, s2, s5
	s_mul_i32 s12, s4, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s8, s8, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s8, s13, s8
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s12, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[12:13], s[6:7], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s4, s4, s9
	s_mov_b32 s9, 0
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s4, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s10, s10, s12
	s_addc_u32 s11, s11, s13
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s4, v60
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s20, s[10:11], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s4, v61
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s5, s6, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s7, s18, v3
	v_cmp_gt_i32_e64 s2, s18, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s20, s20, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s20, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s28, s4, s5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr28
.LBB0_3:                                ; %Flow220
	s_load_b64 s[16:17], s[0:1], 0x28
	v_lshrrev_b32_e32 v67, 1, v0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v86, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s29, s8, 6
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1424 23 is_stmt 1             ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v5, 4, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_u32 v3, v0, 4, 1
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v6, 16, v67
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v4, s4, v67
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s26, s20, 1
	s_cmpk_lt_i32 s3, 0x80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v87, v3, v6, s29
	s_cselect_b32 s27, -1, 0
	s_add_i32 s28, s4, s5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v4
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v3, 16, v5
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v7, s28, v67
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v4, 2, v0
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v2, 3, v2
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[50:51], null, v7, s24, v[3:4]
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v3, 24, v0
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v7, 5, v1
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v8, 24, v8
	v_xor_b32_e32 v3, v5, v3
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v9, s28, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v2, v7, v8, v2
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v10, s28, v61
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_and_or_b32 v49, v5, 48, s29
	v_or_b32_e32 v88, 32, v87
	v_mad_u64_u32 v[51:52], null, s6, s24, v[4:5]
	v_xor_b32_e32 v4, 8, v3
	v_xor_b32_e32 v7, 8, v2
	v_xor_b32_e32 v8, 16, v2
	v_xor_b32_e32 v11, 24, v2
	v_add3_u32 v89, 0, v6, v1
	v_cndmask_b32_e64 v1, 0, 1, s27
	v_mul_lo_u32 v90, v9, s25
	v_mul_lo_u32 v91, v10, s25
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v49
	v_cmp_gt_i32_e64 s4, s19, v87
	v_cmp_gt_i32_e64 s5, s19, v88
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s18, s6, s25
	v_or_b32_e32 v92, 14, v87
	v_or_b32_e32 v93, 34, v87
	v_or_b32_e32 v94, 36, v87
	v_or_b32_e32 v95, 38, v87
	v_or_b32_e32 v96, 40, v87
	v_or_b32_e32 v97, 42, v87
	v_or_b32_e32 v98, 44, v87
	v_or_b32_e32 v99, 46, v87
	v_cmp_ne_u32_e64 s6, 1, v1
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v100, 0, v3
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v101, 0, v4
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v102, 0, v2
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v103, 0, v7
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v104, 0, v8
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v105, 0, v11
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v106, 0, v5
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s26, s26, -1
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_mov_b32 s30, 0
	s_lshr_b32 s31, s26, 7
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s33, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v90, s30, 1
	v_or_b32_e32 v19, 2, v87
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s10, s30, s18
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v18, v91, s30, 1
	v_or_b32_e32 v22, 6, v87
	v_or_b32_e32 v20, 4, v87
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s10, s10, s19
	v_or_b32_e32 v24, 10, v87
	v_or_b32_e32 v23, 8, v87
	v_or_b32_e32 v25, 12, v87
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v21, v87, s10, 1
	v_add_lshl_u32 v19, v19, s10, 1
	v_add_lshl_u32 v27, v93, s10, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v22, v22, s10, 1
	v_add_lshl_u32 v29, v95, s10, 1
	v_add_lshl_u32 v20, v20, s10, 1
	v_add_lshl_u32 v31, v97, s10, 1
	v_add_lshl_u32 v24, v24, s10, 1
	v_add_lshl_u32 v32, v99, s10, 1
	v_add_lshl_u32 v23, v23, s10, 1
	v_add_lshl_u32 v26, v88, s10, 1
	v_add_lshl_u32 v28, v94, s10, 1
	v_add_lshl_u32 v25, v25, s10, 1
	v_add_lshl_u32 v30, v96, s10, 1
	v_add_lshl_u32 v107, v98, s10, 1
	v_add_lshl_u32 v108, v92, s10, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_cndmask_b32_e64 v31, 0x80000000, v31, s5
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	v_cndmask_b32_e64 v30, 0x80000000, v30, s5
	v_cndmask_b32_e64 v107, 0x80000000, v107, s5
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_cndmask_b32_e64 v25, 0x80000000, v25, s4
	v_cndmask_b32_e64 v108, 0x80000000, v108, s4
	s_clause 0xf
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	buffer_load_u16 v32, v32, s[12:15], 0 offen
	buffer_load_u16 v107, v107, s[12:15], 0 offen
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v108, v108, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s10, s30, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s33, s10, 7
	s_cmp_lg_u32 s30, s31
	s_mov_b32 s30, s10
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v16, v16, v18 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v48, v48, v17
	v_mul_f32_e32 v47, v47, v17
	v_mul_f32_e32 v46, v46, v17
	v_mul_f32_e32 v45, v45, v17
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v44, v44, v17 :: v_dual_lshlrev_b32 v27, 16, v27
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v14, v14, v18 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v39, v39, v17 :: v_dual_lshlrev_b32 v32, 16, v32
	v_dual_mul_f32 v12, v12, v18 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v43, v43, v17 :: v_dual_lshlrev_b32 v28, 16, v28
	v_dual_mul_f32 v41, v41, v17 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v42, v42, v17 :: v_dual_lshlrev_b32 v19, 16, v19
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v37, v37, v17 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v35, v35, v17 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v40, v40, v17 :: v_dual_lshlrev_b32 v23, 16, v23
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v15, v15, v18 :: v_dual_lshlrev_b32 v108, 16, v108
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v10, v18 :: v_dual_lshlrev_b32 v25, 16, v25
	v_dual_mul_f32 v38, v38, v17 :: v_dual_mul_f32 v11, v11, v18
	v_dual_mul_f32 v36, v36, v17 :: v_dual_mul_f32 v13, v13, v18
	v_dual_mul_f32 v34, v34, v17 :: v_dual_mul_f32 v9, v9, v18
	v_dual_mul_f32 v17, v33, v17 :: v_dual_mul_f32 v8, v8, v18
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v85, v46, v20
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v7, v7, v18 :: v_dual_fmac_f32 v82, v44, v23
	v_dual_mul_f32 v4, v4, v18 :: v_dual_fmac_f32 v81, v43, v24
	v_dual_mul_f32 v3, v3, v18 :: v_dual_fmac_f32 v80, v42, v25
	v_dual_mul_f32 v6, v6, v18 :: v_dual_fmac_f32 v83, v48, v21
	v_dual_mul_f32 v5, v5, v18 :: v_dual_fmac_f32 v86, v47, v19
	v_dual_mul_f32 v2, v2, v18 :: v_dual_fmac_f32 v79, v41, v108
	v_dual_mul_f32 v1, v1, v18 :: v_dual_fmac_f32 v76, v38, v28
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v84, v45, v22 :: v_dual_fmac_f32 v77, v39, v27
	v_dual_fmac_f32 v78, v40, v26 :: v_dual_fmac_f32 v75, v37, v29
	v_dual_fmac_f32 v74, v36, v30 :: v_dual_fmac_f32 v73, v35, v31
	v_dual_fmac_f32 v72, v34, v107 :: v_dual_fmac_f32 v71, v17, v32
	v_dual_fmac_f32 v69, v15, v21 :: v_dual_fmac_f32 v70, v16, v19
	v_dual_fmac_f32 v66, v11, v20 :: v_dual_fmac_f32 v59, v8, v27
	v_dual_fmac_f32 v68, v12, v22 :: v_dual_fmac_f32 v65, v14, v24
	v_dual_fmac_f32 v64, v13, v23 :: v_dual_fmac_f32 v63, v10, v108
	v_dual_fmac_f32 v62, v9, v25 :: v_dual_fmac_f32 v55, v6, v31
	v_dual_fmac_f32 v58, v7, v26 :: v_dual_fmac_f32 v57, v4, v29
	v_dual_fmac_f32 v56, v3, v28 :: v_dual_fmac_f32 v53, v1, v107
	v_fmac_f32_e32 v54, v5, v30
	v_fmac_f32_e32 v52, v2, v32
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s34, s3
	s_delay_alu instid0(VALU_DEP_1)
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
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s35, s34, s33
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s10, s22
	.loc	1 1437 46 is_stmt 0             ; ragged.py:1437:46
	v_add_nc_u32_e32 v34, s35, v51
	.loc	1 1436 46 is_stmt 1             ; ragged.py:1436:46
	v_add_nc_u32_e32 v33, s35, v50
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s11, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1437 46 is_stmt 0             ; ragged.py:1437:46
	v_mad_u64_u32 v[37:38], null, v34, s19, v[49:50]
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	buffer_load_b128 v[33:36], v33, s[20:23], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	buffer_load_b128 v[107:110], v37, s[8:11], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s10, s34, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmpk_lt_i32 s34, 0x60
	s_mov_b32 s34, s10
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(1)
	ds_store_b64 v100, v[33:34]
	ds_store_b64 v101, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[45:48], v102 offset1:2
	ds_load_2addr_stride64_b64 v[41:44], v103 offset1:2
	ds_load_2addr_stride64_b64 v[37:40], v104 offset1:2
	ds_load_2addr_stride64_b64 v[33:36], v105 offset1:2
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v106, v[107:110]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v107, v89 offset:64
	ds_load_u8 v108, v89
	ds_load_u8 v109, v89 offset:192
	ds_load_u8 v110, v89 offset:128
	ds_load_u8 v111, v89 offset:224
	ds_load_u8 v112, v89 offset:160
	ds_load_u8 v113, v89 offset:96
	ds_load_u8 v114, v89 offset:32
	ds_load_u8 v115, v89 offset:1856
	ds_load_u8 v116, v89 offset:1792
	ds_load_u8 v117, v89 offset:1984
	ds_load_u8 v118, v89 offset:1920
	ds_load_u8 v119, v89 offset:1600
	ds_load_u8 v120, v89 offset:1536
	ds_load_u8 v121, v89 offset:1728
	ds_load_u8 v122, v89 offset:1664
	ds_load_u8 v123, v89 offset:320
	ds_load_u8 v124, v89 offset:256
	ds_load_u8 v125, v89 offset:448
	ds_load_u8 v126, v89 offset:384
	ds_load_u8 v127, v89 offset:480
	ds_load_u8 v128, v89 offset:416
	ds_load_u8 v129, v89 offset:352
	ds_load_u8 v130, v89 offset:288
	ds_load_u8 v131, v89 offset:832
	ds_load_u8 v132, v89 offset:768
	ds_load_u8 v133, v89 offset:960
	ds_load_u8 v134, v89 offset:896
	ds_load_u8 v135, v89 offset:992
	ds_load_u8 v136, v89 offset:928
	ds_load_u8 v137, v89 offset:864
	ds_load_u8 v138, v89 offset:800
	ds_load_u8 v139, v89 offset:576
	ds_load_u8 v140, v89 offset:512
	ds_load_u8 v141, v89 offset:704
	ds_load_u8 v142, v89 offset:640
	ds_load_u8 v143, v89 offset:736
	ds_load_u8 v144, v89 offset:672
	ds_load_u8 v145, v89 offset:608
	ds_load_u8 v146, v89 offset:544
	ds_load_u8 v147, v89 offset:1344
	ds_load_u8 v148, v89 offset:1280
	ds_load_u8 v149, v89 offset:1472
	ds_load_u8 v150, v89 offset:1408
	ds_load_u8 v151, v89 offset:1504
	ds_load_u8 v152, v89 offset:1440
	ds_load_u8 v153, v89 offset:1376
	ds_load_u8 v154, v89 offset:1312
	ds_load_u8 v155, v89 offset:1088
	ds_load_u8 v156, v89 offset:1024
	ds_load_u8 v157, v89 offset:1216
	ds_load_u8 v158, v89 offset:1152
	ds_load_u8 v159, v89 offset:1248
	ds_load_u8 v160, v89 offset:1184
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v89 offset:2016
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v89 offset:1952
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v89 offset:1888
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v89 offset:1824
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v89 offset:1120
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v89 offset:1760
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v89 offset:1696
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v89 offset:1632
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v89 offset:1568
	ds_load_u8 v126, v89 offset:1056
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v116, v118, v117, 0xc0c0004
	v_perm_b32 v117, v120, v119, 0xc0c0004
	v_perm_b32 v118, v122, v121, 0xc0c0004
	v_perm_b32 v119, v130, v129, 0xc0c0004
	v_perm_b32 v120, v128, v127, 0xc0c0004
	v_perm_b32 v121, v114, v113, 0xc0c0004
	v_perm_b32 v122, v112, v111, 0xc0c0004
	v_perm_b32 v127, v138, v137, 0xc0c0004
	v_perm_b32 v128, v136, v135, 0xc0c0004
	v_perm_b32 v129, v146, v145, 0xc0c0004
	v_perm_b32 v130, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v134, v132, 0xc0c0004
	v_perm_b32 v134, v110, v108, 0xc0c0004
	v_lshl_or_b32 v108, v125, 16, v123
	v_lshl_or_b32 v107, v109, 16, v107
	v_lshl_or_b32 v114, v116, 16, v115
	v_lshl_or_b32 v116, v120, 16, v119
	v_lshl_or_b32 v115, v122, 16, v121
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v156, v158, v157, 0xc0c0004
	v_perm_b32 v135, v154, v153, 0xc0c0004
	v_perm_b32 v136, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v126, v124, 0xc0c0004
	v_perm_b32 v126, v160, v159, 0xc0c0004
	v_lshl_or_b32 v110, v133, 16, v131
	v_lshl_or_b32 v109, v141, 16, v139
	v_lshl_or_b32 v113, v118, 16, v117
	v_lshl_or_b32 v118, v128, 16, v127
	v_lshl_or_b32 v117, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v137, v150, v148, 0xc0c0004
	v_perm_b32 v138, v142, v140, 0xc0c0004
	v_lshl_or_b32 v112, v149, 16, v147
	v_lshl_or_b32 v111, v156, 16, v155
	v_lshl_or_b32 v120, v136, 16, v135
	v_lshl_or_b32 v119, v126, 16, v124
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[43:44], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v134, 16, v132
	v_lshl_or_b32 v44, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[1:8], v[111:112], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[119:120], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[35:36], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v45, v4
	v_cvt_f32_i32_e32 v44, v5
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v7
	v_cvt_f32_i32_e32 v41, v8
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v37, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v9, v23
	v_cvt_f32_i32_e32 v10, v24
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v1, v31
	v_cvt_f32_i32_e32 v2, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 24, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v2, v83, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s0, s28, s19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s1, v83, v83
	v_bfe_u32 v5, v86, 16, 1
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v3, s29, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v18, s0, s29, v1
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add3_u32 v2, v83, v2, 0x7fff
	v_bfe_u32 v6, v85, 16, 1
	v_cmp_o_f32_e64 s3, v85, v85
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v1, 32, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v3, v86, v5, 0x7fff
	v_add3_u32 v5, v85, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v84, v84
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v84, 16, 1
	v_cmp_o_f32_e64 s1, v86, v86
	v_bfe_u32 v6, v80, 16, 1
	v_bfe_u32 v7, v79, 16, 1
	v_bfe_u32 v8, v77, 16, 1
	v_add3_u32 v2, v84, v2, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v82, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s3
	v_bfe_u32 v5, v81, 16, 1
	v_cmp_o_f32_e64 s1, v82, v82
	v_cmp_o_f32_e64 s3, v81, v81
	v_add3_u32 v3, v82, v3, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s4
	v_add3_u32 v5, v81, v5, 0x7fff
	v_add3_u32 v6, v80, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v80, v80
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s1
	v_add3_u32 v7, v79, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s3
	v_bfe_u32 v5, v78, 16, 1
	v_cmp_o_f32_e64 s1, v79, v79
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s4
	v_cmp_o_f32_e64 s3, v78, v78
	v_add3_u32 v8, v77, v8, 0x7fff
	v_add3_u32 v5, v78, v5, 0x7fff
	v_cmp_o_f32_e64 s4, v77, v77
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v76, 16, 1
	v_bfe_u32 v9, v75, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s3
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s4
	v_bfe_u32 v8, v74, 16, 1
	v_add3_u32 v7, v76, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_add3_u32 v9, v75, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v75, v75
	v_bfe_u32 v10, v73, 16, 1
	v_bfe_u32 v11, v72, 16, 1
	v_add3_u32 v8, v74, v8, 0x7fff
	v_cmp_o_f32_e64 s4, v74, v74
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s3
	v_add3_u32 v9, v73, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v10, v72, v11, 0x7fff
	v_mov_b16_e32 v11.l, v69.h
	v_mov_b16_e32 v11.h, v4.h
	v_mov_b16_e32 v4.l, v70.h
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s4
	v_bfe_u32 v12, v71, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s1
	v_and_b32_e32 v9, 1, v11
	v_and_b32_e32 v11, 1, v4
	v_mov_b16_e32 v4.l, v68.h
	v_cmp_o_f32_e64 s3, v72, v72
	v_add3_u32 v12, v71, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v71, v71
	v_add3_u32 v9, v69, v9, 0x7fff
	v_cmp_o_f32_e64 s4, v69, v69
	v_mov_b16_e32 v13.l, v66.h
	v_mov_b16_e32 v13.h, v4.h
	v_and_b32_e32 v14, 1, v4
	v_add3_u32 v11, v70, v11, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s4
	v_and_b32_e32 v9, 1, v13
	v_add3_u32 v12, v68, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_mov_b16_e32 v4.l, v65.h
	v_mov_b16_e32 v13.l, v64.h
	v_add3_u32 v9, v66, v9, 0x7fff
	v_mov_b16_e32 v15.l, v62.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s1
	v_cmp_o_f32_e64 s1, v66, v66
	v_and_b32_e32 v14, 1, v4
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v15.h, v4.h
	v_mov_b16_e32 v4.l, v63.h
	v_cmp_o_f32_e64 s3, v70, v70
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s1
	v_add3_u32 v13, v64, v13, 0x7fff
	v_and_b32_e32 v9, 1, v15
	v_and_b32_e32 v15, 1, v4
	v_cmp_o_f32_e64 s1, v64, v64
	v_mov_b16_e32 v4.l, v59.h
	v_add3_u32 v14, v65, v14, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s3
	v_cmp_o_f32_e64 s3, v65, v65
	v_add3_u32 v9, v62, v9, 0x7fff
	v_cmp_o_f32_e64 s4, v62, v62
	v_mov_b16_e32 v20.l, v58.h
	v_mov_b16_e32 v20.h, v4.h
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s1
	v_and_b32_e32 v13, 1, v4
	v_mov_b16_e32 v4.l, v57.h
	v_add3_u32 v15, v63, v15, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_cmp_o_f32_e64 s3, v63, v63
	v_cndmask_b16 v15.l, 0x7fff, v9.h, s4
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v13, v59, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_mov_b16_e32 v20.l, v56.h
	v_and_b32_e32 v21, 1, v4
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s3
	v_add3_u32 v9, v58, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v58, v58
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s1
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v21, v57, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_cndmask_b16 v13.l, 0x7fff, v9.h, s3
	v_mov_b16_e32 v9.l, v54.h
	v_mov_b16_e32 v9.h, v4.h
	v_add3_u32 v20, v56, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s1
	v_mov_b16_e32 v4.l, v55.h
	v_cmp_o_f32_e64 s1, v56, v56
	v_mov_b16_e32 v22.l, v53.h
	v_mov_b16_e32 v22.h, v4.h
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v52.h
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s1
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v9, v54, v9, 0x7fff
	v_add3_u32 v22, v55, v23, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e64 s1, v55, v55
	v_cmp_o_f32_e64 s3, v54, v54
	v_add3_u32 v20, v53, v20, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s5, v53, v53
	v_add3_u32 v4, v52, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v52, v52
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b16 v22.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s5
	v_mov_b32_e32 v9, 0x5410
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s4
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
	s_mov_b32 s3, 0x76543210
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
	v_permlanex16_b32 v21, v2, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mul_lo_u32 v16, s19, v60
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_lshl_or_b32 v2, v9, 4, v9
	v_lshl_or_b32 v9, v14, 4, v14
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v17, s19, v61
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v1, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x5040504, v2
	v_and_b32_e32 v23, 0x7060706, v9
	v_permlanex16_b32 v12, v12, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v19, 32, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v24, v0, s3, 0xfedcba98 op_sel:[1,0]
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
	s_and_b32 s1, s7, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v18, v18, v17, 1
	v_permlanex16_b32 v13, v13, s3, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v17, v19, v17, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s7, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v21, v3, v14
	v_perm_b32 v3, v21, v3, v23
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 161
		.amdhsa_next_free_sgpr 36
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
		.amdhsa_inst_pref_size 47
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 161
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5908
; TotalNumSgprs: 38
; NumVgprs: 161
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 161
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     161
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
