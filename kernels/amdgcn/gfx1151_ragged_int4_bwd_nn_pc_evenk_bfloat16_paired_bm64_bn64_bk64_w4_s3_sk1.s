	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[50:51], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v24, 5, v0
	v_and_b32_e32 v62, 32, v0
	s_mov_b32 s24, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s50, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s51, 63
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
	s_ashr_i32 s8, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s8, s4
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
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s34, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s34, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1329 39                       ; ragged.py:1329:39
	s_mul_i32 s52, s34, s50
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s2
	s_xor_b32 s10, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s9, s6
	s_sub_i32 s7, s7, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s35, s34, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s6, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[34:35], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s19, s9, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s53, s2, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v60, s19, v24
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s36, s3, 5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v59, 4, v60
	v_or_b32_e32 v58, 8, v60
	v_or_b32_e32 v57, 12, v60
	v_or_b32_e32 v56, 16, v60
	v_or_b32_e32 v55, 20, v60
	v_or_b32_e32 v54, 24, v60
	v_or_b32_e32 v53, 28, v60
	v_or_b32_e32 v52, 32, v60
	v_or_b32_e32 v51, 36, v60
	v_or_b32_e32 v50, 40, v60
	v_or_b32_e32 v49, 44, v60
	v_or_b32_e32 v48, 48, v60
	v_or_b32_e32 v47, 52, v60
	v_or_b32_e32 v46, 56, v60
	v_or_b32_e32 v45, 60, v60
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s17, s50, v60
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s16, s50, v59
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s20, s2, 31
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s15, s50, v58
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s20, s2, s20
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s14, s50, v57
	v_cmp_gt_i32_e64 s13, s50, v56
	v_cmp_gt_i32_e64 s12, s50, v55
	v_cmp_gt_i32_e64 s11, s50, v54
	v_cmp_gt_i32_e64 s10, s50, v53
	v_cmp_gt_i32_e64 s9, s50, v52
	v_cmp_gt_i32_e64 s8, s50, v51
	v_cmp_gt_i32_e64 s7, s50, v50
	v_cmp_gt_i32_e64 s6, s50, v49
	v_cmp_gt_i32_e64 s5, s50, v48
	v_cmp_gt_i32_e64 s4, s50, v47
	v_cmp_gt_i32_e64 s18, s50, v46
	v_cmp_gt_i32_e64 s2, s50, v45
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s35, s20, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s36, s35
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s3, s19, s52
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s24, -1
                                        ; implicit-def: $sgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[48:49], s[0:1], 0x28
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v64, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v63, 64, v0
	v_lshrrev_b32_e32 v65, 1, v62
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v61, 31, v0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s24
	s_lshl_b32 s33, s53, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s24, s[0:1], 0x38
	s_load_b128 s[28:31], s[0:1], 0x0
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v2, 6, v63
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_and_or_b32 v1, v0, 63, s33
	s_lshl_b32 s25, s51, 1
	s_lshl_b32 s57, s51, 2
	s_mul_i32 s58, s51, 6
	v_mul_lo_u32 v2, s51, v2
	s_lshl_b32 s59, s51, 3
	s_mul_i32 s60, s51, 10
	s_mul_i32 s61, s51, 12
	s_mul_i32 s62, s51, 14
	s_lshl_b32 s63, s51, 4
	s_mul_i32 s64, s51, 18
	s_mul_i32 s65, s51, 20
	s_mul_i32 s66, s51, 22
	s_mul_i32 s67, s51, 24
	s_mul_i32 s68, s51, 26
	s_mul_i32 s69, s51, 28
	s_mul_i32 s70, s51, 30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s24, v24
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v1
	v_add_nc_u32_e32 v66, v1, v2
	v_add3_u32 v67, v2, s25, v1
	v_add3_u32 v68, v2, s57, v1
	v_add3_u32 v69, v2, s58, v1
	v_add3_u32 v70, v2, s59, v1
	v_add3_u32 v71, v2, s60, v1
	v_add3_u32 v72, v2, s61, v1
	v_add3_u32 v73, v2, s62, v1
	v_add3_u32 v74, v2, s63, v1
	v_add3_u32 v75, v2, s64, v1
	v_add3_u32 v76, v2, s65, v1
	v_add3_u32 v77, v2, s66, v1
	v_add3_u32 v78, v2, s67, v1
	v_add3_u32 v79, v2, s68, v1
	v_add3_u32 v80, v2, s69, v1
	v_add3_u32 v81, v2, s70, v1
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	s_add_i32 s3, s19, s52
	.loc	1 1333 39                       ; ragged.py:1333:39
	s_mul_i32 s0, s34, s24
	s_lshl_b32 s1, s24, 2
	s_lshl_b32 s37, s24, 3
	s_mul_i32 s38, s24, 12
	s_lshl_b32 s39, s24, 4
	s_mul_i32 s40, s24, 20
	s_mul_i32 s41, s24, 24
	s_mul_i32 s42, s24, 28
	s_lshl_b32 s43, s24, 5
	s_mul_i32 s44, s24, 36
	s_mul_i32 s45, s24, 40
	s_mul_i32 s46, s24, 44
	s_mul_i32 s47, s24, 48
	s_mul_i32 s54, s24, 52
	s_mul_i32 s55, s24, 56
	s_mul_i32 s56, s24, 60
	s_mul_i32 s24, s3, s24
	v_lshlrev_b32_e32 v5, 5, v64
	v_lshlrev_b32_e32 v6, 3, v63
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v83, v61, v3, s24
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v4, 24, v4
	v_or_b32_e32 v10, 0x380, v0
	v_or_b32_e32 v11, 0x780, v0
	v_add3_u32 v82, 0, v65, v64
	v_add_nc_u32_e32 v84, 0, v0
	v_or3_b32 v2, v5, v4, v6
	v_xor_b32_e32 v4, 0x88, v0
	v_xor_b32_e32 v5, 0x110, v0
	v_xor_b32_e32 v6, 0x198, v0
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v92, 0, v10
	v_xor_b32_e32 v7, 8, v2
	v_xor_b32_e32 v8, 16, v2
	v_xor_b32_e32 v9, 24, v2
	v_add_nc_u32_e32 v85, 0, v4
	v_mov_b32_e32 v4, v1
	v_add_nc_u32_e32 v86, 0, v5
	v_add_nc_u32_e32 v87, 0, v6
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v88, 0, v2
	v_add_nc_u32_e32 v89, 0, v7
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v90, 0, v8
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v91, 0, v9
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v93, 0, v11
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s31, s31, 0xffff
	s_mov_b32 s24, s28
	s_mov_b32 s25, s29
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1335 42                       ; ragged.py:1335:42
	s_add_i32 s57, s36, s0
	v_add_nc_u32_e32 v33, s36, v83
	s_mul_i32 s57, s57, s51
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s36, s36, 32
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v34, s57, v66
	v_add_nc_u32_e32 v35, s57, v67
	v_add_nc_u32_e32 v36, s57, v68
	v_add_nc_u32_e32 v37, s57, v69
	v_add_nc_u32_e32 v38, s57, v70
	v_add_nc_u32_e32 v39, s57, v71
	v_add_nc_u32_e32 v40, s57, v72
	v_add_nc_u32_e32 v41, s57, v73
	v_add_nc_u32_e32 v42, s57, v74
	v_add_nc_u32_e32 v43, s1, v33
	v_add_nc_u32_e32 v44, s37, v33
	v_add_nc_u32_e32 v94, s38, v33
	v_add_nc_u32_e32 v95, s39, v33
	v_add_nc_u32_e32 v96, s40, v33
	v_add_nc_u32_e32 v97, s41, v33
	v_add_nc_u32_e32 v107, s57, v75
	v_add_nc_u32_e32 v108, s57, v76
	v_add_nc_u32_e32 v109, s57, v77
	v_add_nc_u32_e32 v110, s57, v78
	v_add_nc_u32_e32 v111, s57, v79
	v_add_nc_u32_e32 v112, s57, v80
	v_add_nc_u32_e32 v113, s57, v81
	v_add_nc_u32_e32 v98, s42, v33
	v_add_nc_u32_e32 v99, s43, v33
	v_add_nc_u32_e32 v100, s44, v33
	v_add_nc_u32_e32 v101, s45, v33
	v_add_nc_u32_e32 v102, s46, v33
	v_add_nc_u32_e32 v103, s47, v33
	v_add_nc_u32_e32 v104, s54, v33
	v_add_nc_u32_e32 v105, s55, v33
	v_add_nc_u32_e32 v106, s56, v33
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e64 v33, 0x80000000, v33, s17
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v107, 0x80000000, v107
	v_dual_cndmask_b32 v108, 0x80000000, v108 :: v_dual_cndmask_b32 v109, 0x80000000, v109
	v_dual_cndmask_b32 v110, 0x80000000, v110 :: v_dual_cndmask_b32 v111, 0x80000000, v111
	v_dual_cndmask_b32 v112, 0x80000000, v112 :: v_dual_cndmask_b32 v113, 0x80000000, v113
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e64 v43, 0x80000000, v43, s16
	v_cndmask_b32_e64 v44, 0x80000000, v44, s15
	v_cndmask_b32_e64 v94, 0x80000000, v94, s14
	v_cndmask_b32_e64 v95, 0x80000000, v95, s13
	v_cndmask_b32_e64 v96, 0x80000000, v96, s12
	v_cndmask_b32_e64 v97, 0x80000000, v97, s11
	buffer_load_u8 v33, v33, s[24:27], 0 offen
	v_cndmask_b32_e64 v98, 0x80000000, v98, s10
	v_cndmask_b32_e64 v99, 0x80000000, v99, s9
	v_cndmask_b32_e64 v100, 0x80000000, v100, s8
	v_cndmask_b32_e64 v101, 0x80000000, v101, s7
	v_cndmask_b32_e64 v102, 0x80000000, v102, s6
	v_cndmask_b32_e64 v103, 0x80000000, v103, s5
	v_cndmask_b32_e64 v104, 0x80000000, v104, s4
	v_cndmask_b32_e64 v105, 0x80000000, v105, s18
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_clause 0xf
	buffer_load_u8 v114, v34, s[28:31], 0 offen
	buffer_load_u8 v115, v35, s[28:31], 0 offen
	buffer_load_u8 v116, v36, s[28:31], 0 offen
	buffer_load_u8 v117, v37, s[28:31], 0 offen
	buffer_load_u8 v118, v38, s[28:31], 0 offen
	buffer_load_u8 v119, v39, s[28:31], 0 offen
	buffer_load_u8 v120, v40, s[28:31], 0 offen
	buffer_load_u8 v121, v41, s[28:31], 0 offen
	buffer_load_u8 v122, v42, s[28:31], 0 offen
	buffer_load_u8 v107, v107, s[28:31], 0 offen
	buffer_load_u8 v108, v108, s[28:31], 0 offen
	buffer_load_u8 v109, v109, s[28:31], 0 offen
	buffer_load_u8 v110, v110, s[28:31], 0 offen
	buffer_load_u8 v111, v111, s[28:31], 0 offen
	buffer_load_u8 v112, v112, s[28:31], 0 offen
	buffer_load_u8 v113, v113, s[28:31], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_clause 0xe
	buffer_load_u8 v34, v95, s[24:27], 0 offen
	buffer_load_u8 v35, v99, s[24:27], 0 offen
	buffer_load_u8 v36, v103, s[24:27], 0 offen
	buffer_load_u8 v37, v43, s[24:27], 0 offen
	buffer_load_u8 v38, v96, s[24:27], 0 offen
	buffer_load_u8 v39, v100, s[24:27], 0 offen
	buffer_load_u8 v40, v104, s[24:27], 0 offen
	buffer_load_u8 v41, v44, s[24:27], 0 offen
	buffer_load_u8 v42, v97, s[24:27], 0 offen
	buffer_load_u8 v43, v101, s[24:27], 0 offen
	buffer_load_u8 v44, v105, s[24:27], 0 offen
	buffer_load_u8 v94, v94, s[24:27], 0 offen
	buffer_load_u8 v95, v98, s[24:27], 0 offen
	buffer_load_u8 v96, v102, s[24:27], 0 offen
	buffer_load_u8 v97, v106, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s36, s35
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt vmcnt(31)
	ds_store_b8 v84, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v84, v34 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b8 v84, v35 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b8 v84, v36 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b8 v85, v37
	s_waitcnt vmcnt(10)
	ds_store_b8 v85, v38 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v85, v39 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v85, v40 offset:1536
	s_waitcnt vmcnt(7)
	ds_store_b8 v86, v41
	s_waitcnt vmcnt(6)
	ds_store_b8 v86, v42 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v86, v43 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v86, v44 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v87, v94
	s_waitcnt vmcnt(2)
	ds_store_b8 v87, v95 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v87, v96 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v87, v97 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[94:97], v88 offset1:2
	ds_load_2addr_stride64_b64 v[41:44], v89 offset1:2
	ds_load_2addr_stride64_b64 v[37:40], v90 offset1:2
	ds_load_2addr_stride64_b64 v[33:36], v91 offset1:2
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v84, v114
	ds_store_b8 v84, v115 offset:128
	ds_store_b8 v84, v116 offset:256
	ds_store_b8 v84, v117 offset:384
	ds_store_b8 v84, v118 offset:512
	ds_store_b8 v84, v119 offset:640
	ds_store_b8 v84, v120 offset:768
	ds_store_b8 v92, v121
	ds_store_b8 v84, v122 offset:1024
	ds_store_b8 v84, v107 offset:1152
	ds_store_b8 v84, v108 offset:1280
	ds_store_b8 v84, v109 offset:1408
	ds_store_b8 v84, v110 offset:1536
	ds_store_b8 v84, v111 offset:1664
	ds_store_b8 v84, v112 offset:1792
	ds_store_b8 v93, v113
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1336 31                       ; ragged.py:1336:31
	ds_load_u8 v98, v82 offset:320
	ds_load_u8 v99, v82 offset:256
	ds_load_u8 v100, v82 offset:448
	ds_load_u8 v101, v82 offset:384
	ds_load_u8 v102, v82 offset:64
	ds_load_u8 v103, v82
	ds_load_u8 v104, v82 offset:192
	ds_load_u8 v105, v82 offset:128
	ds_load_u8 v106, v82 offset:352
	ds_load_u8 v107, v82 offset:288
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	ds_load_u8 v100, v82 offset:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v101, v103, v102, 0xc0c0004
	ds_load_u8 v102, v82 offset:480
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v105, v104, 0xc0c0004
	ds_load_u8 v104, v82 offset:416
	v_lshl_or_b32 v99, v99, 16, v98
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v105, v107, v106, 0xc0c0004
	ds_load_u8 v107, v82 offset:768
	ds_load_u8 v106, v82 offset:160
	v_lshl_or_b32 v98, v103, 16, v101
	ds_load_u8 v101, v82 offset:96
	ds_load_u8 v103, v82 offset:224
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[96:97], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v98, v82 offset:512
	ds_load_u8 v99, v82 offset:704
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v104, v102, 0xc0c0004
	ds_load_u8 v104, v82 offset:832
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v103, v106, v103, 0xc0c0004
	v_lshl_or_b32 v101, v102, 16, v105
	ds_load_u8 v106, v82 offset:960
	v_lshl_or_b32 v100, v103, 16, v100
	ds_load_u8 v102, v82 offset:896
	ds_load_u8 v103, v82 offset:576
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[96:97], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v94, v82 offset:640
	ds_load_u8 v96, v82 offset:1344
	ds_load_u8 v97, v82 offset:1280
	ds_load_u8 v100, v82 offset:1472
	ds_load_u8 v101, v82 offset:1408
	ds_load_u8 v105, v82 offset:1088
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v98, v98, v103, 0xc0c0004
	ds_load_u8 v103, v82 offset:1152
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v94, v99, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v99, v82 offset:1856
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v97, v101, v100, 0xc0c0004
	ds_load_u8 v100, v82 offset:1600
	v_perm_b32 v102, v102, v106, 0xc0c0004
	ds_load_u8 v106, v82 offset:1216
	v_lshl_or_b32 v94, v94, 16, v98
	v_lshl_or_b32 v97, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v106, 0xc0c0004
	ds_load_u8 v106, v82 offset:800
	v_perm_b32 v95, v107, v104, 0xc0c0004
	ds_load_u8 v104, v82 offset:1024
	ds_load_u8 v107, v82 offset:1920
	v_lshl_or_b32 v95, v102, 16, v95
	ds_load_u8 v98, v82 offset:1792
	ds_load_u8 v102, v82 offset:1984
	v_wmma_i32_16x16x16_iu4 v[1:8], v[94:95], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[94:95], v[43:44], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v94, v82 offset:1952
	ds_load_u8 v95, v82 offset:1632
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v98, v98, v99, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v107, v102, 0xc0c0004
	ds_load_u8 v107, v82 offset:1504
	ds_load_u8 v102, v82 offset:992
	v_perm_b32 v101, v104, v105, 0xc0c0004
	ds_load_u8 v104, v82 offset:1536
	ds_load_u8 v105, v82 offset:1728
	v_lshl_or_b32 v99, v99, 16, v98
	v_lshl_or_b32 v96, v103, 16, v101
	ds_load_u8 v101, v82 offset:1664
	ds_load_u8 v103, v82 offset:864
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[96:97], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v100, v104, v100, 0xc0c0004
	ds_load_u8 v104, v82 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v101, v105, 0xc0c0004
	ds_load_u8 v105, v82 offset:608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v106, v103, 0xc0c0004
	ds_load_u8 v106, v82 offset:672
	v_lshl_or_b32 v98, v101, 16, v100
	ds_load_u8 v100, v82 offset:544
	ds_load_u8 v101, v82 offset:736
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[35:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v102, v104, v102, 0xc0c0004
	ds_load_u8 v104, v82 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v100, v105, 0xc0c0004
	ds_load_u8 v105, v82 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v106, v101, 0xc0c0004
	v_lshl_or_b32 v101, v102, 16, v103
	ds_load_u8 v102, v82 offset:1440
	ds_load_u8 v103, v82 offset:1120
	v_lshl_or_b32 v100, v106, 16, v100
	ds_load_u8 v106, v82 offset:1248
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[43:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v82 offset:1056
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v102, v102, v107, 0xc0c0004
	ds_load_u8 v107, v82 offset:1888
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v105, v105, v103, 0xc0c0004
	ds_load_u8 v103, v82 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v103, v106, 0xc0c0004
	v_lshl_or_b32 v103, v102, 16, v104
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v102, v106, 16, v105
	ds_load_u8 v104, v82 offset:1824
	ds_load_u8 v105, v82 offset:2016
	ds_load_u8 v106, v82 offset:1568
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v104, v104, v107, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v94, v105, 0xc0c0004
	ds_load_u8 v105, v82 offset:1760
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v106, v106, v95, 0xc0c0004
	ds_load_u8 v95, v82 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v95, v105, 0xc0c0004
	v_lshl_or_b32 v95, v94, 16, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v105, 16, v106
	v_wmma_i32_16x16x16_iu4 v[9:16], v[94:95], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[94:95], v[35:36], v[17:24] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v33, v1
	v_cvt_f32_i32_e32 v1, v25
	v_cvt_f32_i32_e32 v25, v2
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v26, v3
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v27, v4
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v28, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v6
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v9
	v_cvt_f32_i32_e32 v9, v17
	v_cvt_f32_i32_e32 v17, v10
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v20, v13
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v21, v14
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v22, v15
	v_cvt_f32_i32_e32 v15, v23
	v_cvt_f32_i32_e32 v23, v16
	v_cvt_f32_i32_e32 v16, v24
.LBB0_7:                                ; %Flow189
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v24, 2, v63
	v_lshrrev_b32_e32 v35, 4, v0
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s0, s34, s51
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s21, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v24, v24, v64
	v_and_or_b32 v37, v35, 1, v65
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s24, s20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v35, 32, v24
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v36, s19, v24
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v24, s3, v24, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v38, 2, v37
	v_or_b32_e32 v39, 4, v37
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v73, s19, v35
	.loc	1 1311 20 is_stmt 1             ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s50, v36
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v35, s3, v35, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v40, 6, v37
	v_or_b32_e32 v41, 8, v37
	v_or_b32_e32 v42, 10, v37
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s50, v73
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v43, 12, v37
	v_or_b32_e32 v44, 14, v37
	v_or_b32_e32 v65, 32, v37
	v_or_b32_e32 v66, 34, v37
	v_or_b32_e32 v67, 36, v37
	v_or_b32_e32 v68, 38, v37
	v_or_b32_e32 v69, 40, v37
	v_or_b32_e32 v70, 42, v37
	v_or_b32_e32 v71, 44, v37
	v_or_b32_e32 v72, 46, v37
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v74, s33, v37
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v75, s33, v38
	v_or_b32_e32 v76, s33, v39
	v_or_b32_e32 v77, s33, v40
	v_or_b32_e32 v78, s33, v41
	v_or_b32_e32 v79, s33, v42
	v_or_b32_e32 v80, s33, v43
	v_or_b32_e32 v81, s33, v44
	v_or_b32_e32 v82, s33, v65
	v_or_b32_e32 v83, s33, v66
	v_or_b32_e32 v84, s33, v67
	v_or_b32_e32 v85, s33, v68
	v_or_b32_e32 v86, s33, v69
	v_or_b32_e32 v87, s33, v70
	v_or_b32_e32 v88, s33, v71
	v_or_b32_e32 v89, s33, v72
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s33, s33, s0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v36, v24, s[24:27], 0 offen
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v24, s33, v37, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v74
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v37, s33, v38, 1
	v_add_lshl_u32 v38, s33, v39, 1
	v_add_lshl_u32 v39, s33, v40, 1
	v_add_lshl_u32 v40, s33, v41, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v75
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v41, s33, v42, 1
	v_add_lshl_u32 v42, s33, v43, 1
	v_add_lshl_u32 v43, s33, v44, 1
	s_and_b32 s25, s23, 0xffff
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v76
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s24, s22
	v_add_lshl_u32 v44, s33, v65, 1
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_lshlrev_b32 v73, 2, v61
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v77
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v78
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v79
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v80
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v81
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	s_clause 0x7
	buffer_load_u16 v65, v24, s[24:27], 0 offen
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v41, v41, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v82
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v24, s33, v66, 1
	v_add_lshl_u32 v66, s33, v67, 1
	v_add_lshl_u32 v67, s33, v68, 1
	v_add_lshl_u32 v68, s33, v69, 1
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v83
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v69, s33, v70, 1
	v_add_lshl_u32 v70, s33, v71, 1
	v_add_lshl_u32 v71, s33, v72, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v84
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v85
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v86
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v87
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v88
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v33, v33, v36
	v_mul_f32_e32 v25, v25, v36
	v_mul_f32_e32 v26, v26, v36
	v_mul_f32_e32 v27, v27, v36
	v_mul_f32_e32 v28, v28, v36
	v_mul_f32_e32 v29, v29, v36
	v_mul_f32_e32 v30, v30, v36
	v_mul_f32_e32 v31, v31, v36
	v_mul_f32_e32 v32, v32, v36
	v_mul_f32_e32 v17, v17, v36
	v_mul_f32_e32 v18, v18, v36
	v_mul_f32_e32 v19, v19, v36
	v_mul_f32_e32 v21, v21, v36
	v_mul_f32_e32 v22, v22, v36
	v_mul_f32_e32 v23, v23, v36
	v_mul_f32_e32 v20, v20, v36
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v36, 16, v37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v37, 16, v38
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v38, 16, v39
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v39, 16, v40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v40, 16, v41
	v_and_b32_e32 v34, 0x60, v0
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v41, 16, v42
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v43
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v27, v27, v38 :: v_dual_lshlrev_b32 v74, 2, v64
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshrrev_b32_e32 v75, 3, v34
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v0, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v31, v31, v42
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v34, v34, 3, v74
	v_lshl_or_b32 v64, v64, 8, v73
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v25, v25, v36 :: v_dual_mul_f32 v30, v30, v41
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s3, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v34, v34, v75
	v_xor_b32_e32 v62, v64, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v25, v25
	v_cmp_o_f32_e64 s21, v30, v30
	v_cmp_o_f32_e64 s22, v31, v31
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_or_b32 v0, 0x1040, v0, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v89
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v62, v63, 1, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v39 :: v_dual_add_nc_u32 v101, 0, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v102, v0, 64, 0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	s_clause 0x7
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	buffer_load_u16 v72, v24, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	buffer_load_u16 v69, v69, s[24:27], 0 offen
	buffer_load_u16 v70, v70, s[24:27], 0 offen
	buffer_load_u16 v71, v71, s[24:27], 0 offen
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v103, 0x410, v0, 0
	v_xad_u32 v104, 0x450, v0, 0
	v_xad_u32 v105, 0x820, v0, 0
	v_xad_u32 v106, 0x860, v0, 0
	v_xad_u32 v107, 0xc30, v0, 0
	v_xad_u32 v108, 0xc70, v0, 0
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_lshlrev_b32_e32 v0, 16, v35
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v34, 0, v62
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v35, 16, v65
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v24.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v26, v26, v37 :: v_dual_mul_f32 v1, v1, v0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v11, v11, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v94, 0x1040, v62, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v78.h, v24.h
	v_mov_b16_e32 v82.h, v24.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v1, v1, v35
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v76.h, v24.h
	v_mov_b16_e32 v83.h, v24.h
	v_mov_b16_e32 v77.h, v24.h
	v_mov_b16_e32 v79.h, v24.h
	v_mov_b16_e32 v76.l, v1.h
	v_cmp_o_f32_e64 s31, v1, v1
	v_mov_b16_e32 v74.h, v24.h
	v_mov_b16_e32 v80.h, v24.h
	v_cmp_o_f32_e64 s1, v26, v26
	v_mov_b16_e32 v75.h, v24.h
	v_mov_b16_e32 v81.h, v24.h
	v_mov_b16_e32 v63.h, v24.h
	v_mov_b16_e32 v73.h, v24.h
	v_mov_b16_e32 v84.h, v24.h
	v_mov_b16_e32 v64.h, v24.h
	v_mov_b16_e32 v85.h, v24.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v87, v62, 4, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v95, 0x1044, v62, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v86.h, v24.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v88, v62, 8, 0
	v_xad_u32 v96, 0x1048, v62, 0
	v_xad_u32 v89, v62, 12, 0
	v_xad_u32 v90, v62, 16, 0
	v_xad_u32 v91, v62, 20, 0
	v_xad_u32 v97, 0x104c, v62, 0
	v_xad_u32 v98, 0x1050, v62, 0
	v_xad_u32 v99, 0x1054, v62, 0
	v_xad_u32 v92, v62, 24, 0
	v_xad_u32 v100, 0x1058, v62, 0
	v_xad_u32 v93, v62, 28, 0
	v_xad_u32 v62, 0x105c, v62, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s19, v28, v28
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v43, 16, v44
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v65, 16, v66
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v66, 16, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v32, v32, v43 :: v_dual_lshlrev_b32 v67, 16, v68
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v69
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v69, 16, v70
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v3, v3, v0 :: v_dual_mul_f32 v18, v18, v65
	v_mul_f32_e32 v7, v7, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v44, 16, v72
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v15, v15, v0 :: v_dual_lshlrev_b32 v70, 16, v71
	v_mul_f32_e32 v12, v12, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v22, v22, v69
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v4, v4, v0 :: v_dual_mul_f32 v7, v7, v41
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v3, v3, v37
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v5, v5, v0
	v_mul_f32_e32 v2, v2, v0
	v_dual_mul_f32 v8, v8, v0 :: v_dual_mul_f32 v11, v11, v65
	v_dual_mul_f32 v9, v9, v0 :: v_dual_mul_f32 v4, v4, v38
	v_dual_mul_f32 v6, v6, v0 :: v_dual_mul_f32 v15, v15, v69
	v_dual_mul_f32 v13, v13, v0 :: v_dual_mul_f32 v12, v12, v66
	v_mul_f32_e32 v10, v10, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v78.l, v3.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v14, v14, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v82.l, v7.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v0, v16, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v16, v33, v35
	v_mul_f32_e32 v9, v9, v43
	v_dual_mul_f32 v23, v23, v70 :: v_dual_mul_f32 v20, v20, v67
	v_mul_f32_e32 v5, v5, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v24.l, v16.h
	v_mov_b16_e32 v83.l, v9.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v36
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_and_b32_e32 v35, 1, v76
	v_and_b32_e32 v33, 1, v24
	v_mov_b16_e32 v24.l, v25.h
	v_and_b32_e32 v43, 1, v83
	v_mov_b16_e32 v77.l, v2.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v29, v29, v40
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v16, v16, v33, 0x7fff
	v_and_b32_e32 v33, 1, v24
	v_mov_b16_e32 v24.l, v26.h
	v_and_b32_e32 v36, 1, v77
	v_add3_u32 v1, v1, v35, 0x7fff
	v_cmp_o_f32_e64 s33, v2, v2
	v_cndmask_b16 v1.l, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v35, 1, v24
	v_mov_b16_e32 v24.l, v27.h
	v_add3_u32 v2, v2, v36, 0x7fff
	v_add3_u32 v16, v25, v33, 0x7fff
	v_mov_b16_e32 v79.l, v4.h
	v_and_b32_e32 v37, 1, v78
	v_and_b32_e32 v36, 1, v24
	v_mov_b16_e32 v24.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v17, v17, v44 :: v_dual_and_b32 v38, 1, v79
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s34, v3, v3
	v_add3_u32 v3, v3, v37, 0x7fff
	v_and_b32_e32 v25, 1, v24
	v_mov_b16_e32 v24.l, v29.h
	v_cmp_o_f32_e64 s35, v4, v4
	v_add3_u32 v4, v4, v38, 0x7fff
	v_mov_b16_e32 v74.l, v12.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v6, v6, v40
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v33, 1, v24
	v_mov_b16_e32 v24.l, v30.h
	v_mov_b16_e32 v80.l, v5.h
	v_add3_u32 v26, v26, v35, 0x7fff
	v_mov_b16_e32 v75.l, v15.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v14, v14, v68
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v37, 1, v24
	v_mov_b16_e32 v24.l, v31.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v8, v8, v42
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v65, 1, v74
	v_mov_b16_e32 v81.l, v6.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v19, v19, v66 :: v_dual_and_b32 v38, 1, v24
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v24.l, v32.h
	v_and_b32_e32 v39, 1, v80
	v_cndmask_b16 v2.l, 0x7fff, v16.h, s0
	v_add3_u32 v16, v27, v36, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v26.h, s1
	v_and_b32_e32 v35, 1, v24
	v_mov_b16_e32 v24.l, v17.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v13, v13, v67
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v67, 1, v75
	v_mov_b16_e32 v63.l, v14.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v10, v10, v44
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v26, 1, v24
	v_mov_b16_e32 v24.l, v18.h
	v_add3_u32 v25, v28, v25, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v21, v21, v68 :: v_dual_and_b32 v40, 1, v81
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v73.l, v8.h
	v_cmp_o_f32_e64 s20, v29, v29
	v_cmp_o_f32_e64 s36, v5, v5
	v_and_b32_e32 v41, 1, v82
	v_add3_u32 v5, v5, v39, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v16.h, s3
	v_add3_u32 v16, v29, v33, 0x7fff
	v_and_b32_e32 v27, 1, v24
	v_mov_b16_e32 v24.l, v19.h
	v_and_b32_e32 v63, 1, v63
	v_mov_b16_e32 v84.l, v10.h
	v_cndmask_b16 v5.l, 0x7fff, v25.h, s19
	v_add3_u32 v25, v30, v37, 0x7fff
	v_cmp_o_f32_e64 s37, v6, v6
	v_and_b32_e32 v42, 1, v73
	v_add3_u32 v6, v6, v40, 0x7fff
	v_cmp_o_f32_e64 s38, v7, v7
	v_add3_u32 v7, v7, v41, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v16.h, s20
	v_add3_u32 v16, v31, v38, 0x7fff
	v_and_b32_e32 v28, 1, v24
	v_mov_b16_e32 v24.l, v20.h
	v_cmp_o_f32_e64 s23, v32, v32
	v_cmp_o_f32_e64 s40, v9, v9
	v_and_b32_e32 v44, 1, v84
	v_add3_u32 v9, v9, v43, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v25.h, s21
	v_add3_u32 v25, v32, v35, 0x7fff
	v_cmp_o_f32_e64 s39, v8, v8
	v_add3_u32 v8, v8, v42, 0x7fff
	v_cmp_o_f32_e64 s24, v17, v17
	v_cmp_o_f32_e64 s25, v18, v18
	v_mov_b16_e32 v64.l, v11.h
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s31
	v_cndmask_b16 v8.l, 0x7fff, v16.h, s22
	v_add3_u32 v16, v17, v26, 0x7fff
	v_add3_u32 v17, v18, v27, 0x7fff
	v_and_b32_e32 v18, 1, v24
	v_mov_b16_e32 v24.l, v21.h
	v_cmp_o_f32_e64 s41, v10, v10
	v_add3_u32 v10, v10, v44, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s40
	v_cndmask_b16 v9.l, 0x7fff, v25.h, s23
	v_mov_b16_e32 v85.l, v13.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v0, v0, v70
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v64, 1, v64
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s33
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v34, v1
	ds_store_b32 v94, v9
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v1, 1, v24
	v_mov_b16_e32 v24.l, v22.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s41
	v_cndmask_b16 v10.l, 0x7fff, v16.h, s24
	v_and_b32_e32 v66, 1, v85
	v_cmp_o_f32_e64 s27, v20, v20
	v_cmp_o_f32_e64 s42, v11, v11
	v_mov_b16_e32 v86.l, v0.h
	v_add3_u32 v11, v11, v64, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v87, v2
	ds_store_b32 v95, v10
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v2, v20, v18, 0x7fff
	v_and_b32_e32 v10, 1, v24
	v_mov_b16_e32 v24.l, v23.h
	v_cmp_o_f32_e64 s44, v13, v13
	v_add3_u32 v13, v13, v66, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s34
	v_and_b32_e32 v68, 1, v86
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s42
	v_cndmask_b16 v11.l, 0x7fff, v17.h, s25
	v_cndmask_b16 v13.l, 0x7fff, v2.h, s27
	v_and_b32_e32 v2, 1, v24
	v_cmp_o_f32_e64 s26, v19, v19
	v_cmp_o_f32_e64 s28, v21, v21
	v_cmp_o_f32_e64 s43, v12, v12
	v_cmp_o_f32_e64 s45, v14, v14
	v_add3_u32 v12, v12, v65, 0x7fff
	v_add3_u32 v14, v14, v63, 0x7fff
	v_add3_u32 v9, v19, v28, 0x7fff
	v_add3_u32 v1, v21, v1, 0x7fff
	v_cmp_o_f32_e64 s29, v22, v22
	v_cmp_o_f32_e64 s46, v15, v15
	v_add3_u32 v15, v15, v67, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v88, v3
	ds_store_b32 v96, v11
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v3, v22, v10, 0x7fff
	v_cmp_o_f32_e64 s30, v23, v23
	v_cmp_o_f32_e64 s47, v0, v0
	v_add3_u32 v0, v0, v68, 0x7fff
	v_add3_u32 v2, v23, v2, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s35
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s36
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s37
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s43
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s44
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s45
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s26
	v_cndmask_b16 v14.l, 0x7fff, v1.h, s28
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s38
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s46
	v_cndmask_b16 v15.l, 0x7fff, v3.h, s29
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s39
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s47
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s30
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v89, v4
	ds_store_b32 v97, v12
	ds_store_b32 v90, v5
	ds_store_b32 v98, v13
	ds_store_b32 v91, v6
	ds_store_b32 v99, v14
	ds_store_b32 v92, v7
	ds_store_b32 v100, v15
	ds_store_b32 v93, v8
	ds_store_b32 v62, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v101 offset1:32
	ds_load_2addr_b32 v[15:16], v102 offset1:32
	ds_load_2addr_b32 v[9:10], v103 offset1:32
	ds_load_2addr_b32 v[11:12], v104 offset1:32
	ds_load_2addr_b32 v[5:6], v105 offset1:32
	ds_load_2addr_b32 v[7:8], v106 offset1:32
	ds_load_2addr_b32 v[0:1], v107 offset1:32
	ds_load_2addr_b32 v[2:3], v108 offset1:32
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s51, 31
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v4, s53, 5, v61
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s51, s0
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
	s_and_b32 s0, s18, vcc_lo
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
	v_add_nc_u32_e32 v17, s52, v60
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v59
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v58
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v57
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v56
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v55
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v54
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v53
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v17, s52, v52
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	v_add_nc_u32_e32 v13, s52, v51
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
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
	s_waitcnt lgkmcnt(5)
	v_add_nc_u32_e32 v9, s52, v50
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v5, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s6, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_19
.LBB0_35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v5, s52, v49
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
	v_add_co_u32 v17, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s49, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s5, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_20
.LBB0_36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s52, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v0, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s0, s48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v14, null, s49, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s4, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_21
.LBB0_37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s52, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v0, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s48, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s49, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1542 33 is_stmt 1             ; ragged.py:1542:33
	s_and_b32 s0, s18, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s3, s0
	s_cbranch_execz .LBB0_22
.LBB0_38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s52, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s1, v[4:5]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s48, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v6, null, s49, v10, s0
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
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s52, v45
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
	v_add_co_u32 v0, vcc_lo, s48, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s49, v5, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 123
		.amdhsa_next_free_sgpr 71
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 123
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8808
; TotalNumSgprs: 73
; NumVgprs: 123
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 73
; NumVGPRsForWavesPerEU: 123
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
