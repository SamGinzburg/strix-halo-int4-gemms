	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[36:39], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v39, 63, v0
	v_and_b32_e32 v37, 15, v0
	v_and_b32_e32 v35, 64, v0
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v36, 32, v0
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
	s_abs_i32 s7, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s18, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s18, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s5
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s9
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s9
	s_mul_i32 s9, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s19, s18, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s6, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[18:19], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s33, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s44, s6, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s19, s33, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s36, s4
	s_addc_u32 s5, s37, s5
	s_load_b32 s2, s[4:5], 0x0
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b32 s1, s[0:1], 0x38
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s44, v39
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s12, s3, 5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v38, s19, v39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v38
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s2, 31
	s_mov_b64 s[28:29], s[26:27]
	s_lshr_b32 s0, s0, 26
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s13, s18, s1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_add_i32 s3, s2, s0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s3, s3, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s3, 5
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s12, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_lshlrev_b32_e32 v4, 1, v0
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v1, 3, v35
	v_cmp_eq_u32_e64 s1, 0, v35
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_xor_b32_e32 v5, v4, v5
	v_mul_lo_u32 v2, s34, v1
	v_mul_lo_u32 v3, s35, v1
	s_lshl_b32 s14, s34, 1
	s_mul_i32 s15, s34, 3
	v_and_b32_e32 v5, 24, v5
	s_lshl_b32 s16, s34, 2
	s_mul_i32 s17, s34, 5
	s_mul_i32 s26, s34, 6
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v33, v39, v2, s44
	v_xor_b32_e32 v1, v5, v1
	v_cndmask_b32_e64 v5, 0x208, 0, s1
	v_cmp_eq_u32_e64 s1, 0, v36
	v_add3_u32 v34, v39, v3, s19
	s_mul_i32 s27, s34, 7
	v_lshl_or_b32 v6, v39, 5, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 24, v4
	v_cndmask_b32_e64 v7, 0x208, 0, s1
	s_lshl_b32 s30, s34, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v8, 16, v6
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v4, v37, 5, v4
	v_add_nc_u32_e32 v40, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v41, 0, v8
	v_mov_b32_e32 v28, v1
	v_xor_b32_e32 v5, v4, v5
	v_xor_b32_e32 v4, v4, v7
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_xor_b32_e32 v9, 8, v5
	v_xor_b32_e32 v10, 16, v5
	v_xor_b32_e32 v7, 24, v5
	v_xor_b32_e32 v11, 0x410, v5
	v_xor_b32_e32 v12, 0x418, v5
	v_xor_b32_e32 v13, 0x408, v5
	v_xor_b32_e32 v14, 8, v4
	v_xor_b32_e32 v15, 16, v4
	v_xor_b32_e32 v16, 24, v4
	v_xor_b32_e32 v17, 0x410, v4
	v_xor_b32_e32 v18, 0x418, v4
	v_xor_b32_e32 v19, 0x408, v4
	v_add_nc_u32_e32 v42, 0, v5
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v43, 0, v9
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v44, 0, v10
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v45, 0, v7
	v_add_nc_u32_e32 v46, 0, v11
	v_mov_b32_e32 v11, v1
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v47, 0, v12
	v_add_nc_u32_e32 v48, 0, v13
	v_mov_b32_e32 v13, v1
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v49, 0, v4
	v_add_nc_u32_e32 v50, 0, v14
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v51, 0, v15
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v52, 0, v16
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v53, 0, v17
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v54, 0, v18
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v55, 0, v19
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	s_mul_i32 s31, s34, 17
	s_mul_i32 s36, s34, 18
	s_mul_i32 s37, s34, 19
	s_mul_i32 s40, s34, 20
	s_mul_i32 s41, s34, 21
	s_mul_i32 s42, s34, 22
	s_mul_i32 s43, s34, 23
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
	s_lshl_b32 s45, s35, 1
	s_mul_i32 s46, s35, 3
	s_lshl_b32 s47, s35, 2
	s_mul_i32 s48, s35, 5
	s_mul_i32 s49, s35, 6
	s_mul_i32 s50, s35, 7
	s_lshl_b32 s51, s35, 4
	s_mul_i32 s52, s35, 17
	s_mul_i32 s53, s35, 18
	s_mul_i32 s54, s35, 19
	s_mul_i32 s55, s35, 20
	s_mul_i32 s56, s35, 21
	s_mul_i32 s57, s35, 22
	s_mul_i32 s58, s35, 23
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 42                       ; ragged.py:1362:42
	s_add_i32 s1, s12, s13
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s12, s12, 32
	v_mad_u64_u32 v[56:57], null, s1, s34, v[33:34]
	v_mad_u64_u32 v[57:58], null, s1, s35, v[34:35]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s12, s3
	v_add_nc_u32_e32 v64, s27, v56
	v_add_nc_u32_e32 v62, s17, v56
	v_add_nc_u32_e32 v60, s15, v56
	v_add_nc_u32_e32 v58, s34, v56
	v_add_nc_u32_e32 v66, s31, v56
	v_add_nc_u32_e32 v67, s36, v56
	v_add_nc_u32_e32 v68, s37, v56
	v_add_nc_u32_e32 v69, s40, v56
	v_add_nc_u32_e32 v70, s41, v56
	v_add_nc_u32_e32 v71, s42, v56
	v_add_nc_u32_e32 v72, s43, v56
	v_add_nc_u32_e32 v73, s35, v57
	v_add_nc_u32_e32 v74, s45, v57
	v_add_nc_u32_e32 v75, s46, v57
	v_add_nc_u32_e32 v76, s47, v57
	v_add_nc_u32_e32 v77, s48, v57
	v_add_nc_u32_e32 v78, s49, v57
	v_add_nc_u32_e32 v79, s50, v57
	v_add_nc_u32_e32 v80, s51, v57
	v_add_nc_u32_e32 v81, s52, v57
	v_add_nc_u32_e32 v82, s53, v57
	v_add_nc_u32_e32 v83, s54, v57
	v_add_nc_u32_e32 v84, s55, v57
	v_add_nc_u32_e32 v85, s56, v57
	v_add_nc_u32_e32 v86, s57, v57
	v_add_nc_u32_e32 v87, s58, v57
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_add_nc_u32_e32 v59, s14, v56
	v_add_nc_u32_e32 v61, s16, v56
	v_add_nc_u32_e32 v63, s26, v56
	v_add_nc_u32_e32 v65, s30, v56
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	.loc	1 1363 34                       ; ragged.py:1363:34
	buffer_load_u8 v88, v57, s[8:11], 0 offen
	v_cndmask_b32_e32 v57, 0x80000000, v73, vcc_lo
	v_dual_cndmask_b32 v73, 0x80000000, v74 :: v_dual_cndmask_b32 v74, 0x80000000, v75
	v_dual_cndmask_b32 v75, 0x80000000, v76 :: v_dual_cndmask_b32 v76, 0x80000000, v77
	v_dual_cndmask_b32 v77, 0x80000000, v78 :: v_dual_cndmask_b32 v78, 0x80000000, v79
	v_dual_cndmask_b32 v79, 0x80000000, v80 :: v_dual_cndmask_b32 v80, 0x80000000, v81
	v_dual_cndmask_b32 v81, 0x80000000, v82 :: v_dual_cndmask_b32 v82, 0x80000000, v83
	v_dual_cndmask_b32 v83, 0x80000000, v84 :: v_dual_cndmask_b32 v84, 0x80000000, v85
	v_dual_cndmask_b32 v85, 0x80000000, v86 :: v_dual_cndmask_b32 v86, 0x80000000, v87
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	s_clause 0x8
	buffer_load_u8 v87, v56, s[4:7], 0 offen
	buffer_load_u8 v56, v64, s[4:7], 0 offen
	buffer_load_u8 v62, v62, s[4:7], 0 offen
	buffer_load_u8 v60, v60, s[4:7], 0 offen
	buffer_load_u8 v58, v58, s[4:7], 0 offen
	buffer_load_u8 v64, v72, s[4:7], 0 offen
	buffer_load_u8 v70, v70, s[4:7], 0 offen
	buffer_load_u8 v68, v68, s[4:7], 0 offen
	buffer_load_u8 v66, v66, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x7
	buffer_load_u8 v72, v78, s[8:11], 0 offen
	buffer_load_u8 v76, v76, s[8:11], 0 offen
	buffer_load_u8 v74, v74, s[8:11], 0 offen
	buffer_load_u8 v78, v57, s[8:11], 0 offen
	buffer_load_u8 v86, v86, s[8:11], 0 offen
	buffer_load_u8 v84, v84, s[8:11], 0 offen
	buffer_load_u8 v82, v82, s[8:11], 0 offen
	buffer_load_u8 v80, v80, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_clause 0x6
	buffer_load_u8 v89, v63, s[4:7], 0 offen
	buffer_load_u8 v90, v61, s[4:7], 0 offen
	buffer_load_u8 v91, v59, s[4:7], 0 offen
	buffer_load_u8 v71, v71, s[4:7], 0 offen
	buffer_load_u8 v69, v69, s[4:7], 0 offen
	buffer_load_u8 v67, v67, s[4:7], 0 offen
	buffer_load_u8 v92, v65, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x6
	buffer_load_u8 v77, v77, s[8:11], 0 offen
	buffer_load_u8 v75, v75, s[8:11], 0 offen
	buffer_load_u8 v73, v73, s[8:11], 0 offen
	buffer_load_u8 v85, v85, s[8:11], 0 offen
	buffer_load_u8 v83, v83, s[8:11], 0 offen
	buffer_load_u8 v81, v81, s[8:11], 0 offen
	buffer_load_u8 v79, v79, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(29)
	v_lshlrev_b16 v56.l, 8, v56.l
	s_waitcnt vmcnt(28)
	v_lshlrev_b16 v56.h, 8, v62.l
	s_waitcnt vmcnt(27)
	v_lshlrev_b16 v57.l, 8, v60.l
	s_waitcnt vmcnt(26)
	v_lshlrev_b16 v57.h, 8, v58.l
	s_waitcnt vmcnt(25)
	v_lshlrev_b16 v58.l, 8, v64.l
	s_waitcnt vmcnt(24)
	v_lshlrev_b16 v58.h, 8, v70.l
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v59.l, 8, v68.l
	s_waitcnt vmcnt(22)
	v_lshlrev_b16 v59.h, 8, v66.l
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(21)
	v_lshlrev_b16 v60.l, 8, v72.l
	s_waitcnt vmcnt(20)
	v_lshlrev_b16 v60.h, 8, v76.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v61.l, 8, v74.l
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v61.h, 8, v78.l
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v62.l, 8, v86.l
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v62.h, 8, v84.l
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v63.l, 8, v82.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v63.h, 8, v80.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(13)
	v_or_b16 v65.h, v89.l, v56.l
	s_waitcnt vmcnt(12)
	v_or_b16 v65.l, v90.l, v56.h
	s_waitcnt vmcnt(11)
	v_or_b16 v64.h, v91.l, v57.l
	v_or_b16 v64.l, v87.l, v57.h
	s_waitcnt vmcnt(10)
	v_or_b16 v57.h, v71.l, v58.l
	s_waitcnt vmcnt(9)
	v_or_b16 v57.l, v69.l, v58.h
	s_waitcnt vmcnt(8)
	v_or_b16 v56.h, v67.l, v59.l
	s_waitcnt vmcnt(7)
	v_or_b16 v56.l, v92.l, v59.h
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(6)
	v_or_b16 v67.h, v77.l, v60.l
	s_waitcnt vmcnt(5)
	v_or_b16 v67.l, v75.l, v60.h
	s_waitcnt vmcnt(4)
	v_or_b16 v66.h, v73.l, v61.l
	v_or_b16 v66.l, v88.l, v61.h
	s_waitcnt vmcnt(3)
	v_or_b16 v61.h, v85.l, v62.l
	s_waitcnt vmcnt(2)
	v_or_b16 v61.l, v83.l, v62.h
	s_waitcnt vmcnt(1)
	v_or_b16 v60.h, v81.l, v63.l
	s_waitcnt vmcnt(0)
	v_or_b16 v60.l, v79.l, v63.h
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_store_b64 v40, v[64:65]
	ds_store_b64 v41, v[56:57]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[56:59], v42 offset1:2
	ds_load_b64 v[64:65], v43
	ds_load_b64 v[68:69], v44
	ds_load_b64 v[70:71], v45
	ds_load_b64 v[72:73], v46
	ds_load_b64 v[74:75], v47
	ds_load_b64 v[76:77], v48
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v40, v[66:67]
	ds_store_b64 v41, v[60:61]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[60:63], v49 offset1:2
	ds_load_b64 v[66:67], v53
	ds_load_b64 v[78:79], v50
	ds_load_b64 v[80:81], v51
	ds_load_b64 v[82:83], v52
	ds_load_b64 v[84:85], v54
	ds_load_b64 v[86:87], v55
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[56:57], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[72:73], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[66:67], v[72:73], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[64:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[64:65], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[80:81], v[58:59], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[58:59], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[70:71], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[76:77], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v16, 0
.LBB0_4:                                ; %._crit_edge
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v33, 2, v35
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_add_i32 s1, s2, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v34, 1, v36
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s3, s1, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s1, s1, s3
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v33, v33, v37
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s27, s1, 1
	.loc	1 1375 20                       ; ragged.py:1375:20
	s_cmp_ge_i32 s12, s27
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v68, 6, v35
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s10, s2, 0x80000001
	s_mov_b32 s43, 0x31027000
	s_cmp_eq_u32 s10, 1
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v56, s34, v68
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s26, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s30, s12, s13
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v40, s12, v68
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s10, s30, s34
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s30, s30, s35
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s10, s10, s44
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	s_and_b32 s41, s21, 0xffff
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v39, s10, v39, v56
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v43, 6, v40
	v_or_b32_e32 v45, 10, v40
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s27, v40
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v46, 12, v40
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[56:57], null, s34, 6, v[39:40]
	v_mad_u64_u32 v[57:58], null, s34, 10, v[39:40]
	v_mad_u64_u32 v[58:59], null, s34, 12, v[39:40]
	v_mad_u64_u32 v[59:60], null, s34, 14, v[39:40]
	v_mad_u64_u32 v[60:61], null, s34, 18, v[39:40]
	v_mad_u64_u32 v[61:62], null, s34, 20, v[39:40]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s27, v43
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[62:63], null, s34, 22, v[39:40]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v47, 14, v40
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[63:64], null, s34, 24, v[39:40]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s27, v45
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[64:65], null, s34, 26, v[39:40]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v49, 18, v40
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[65:66], null, s34, 28, v[39:40]
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s9
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s27, v46
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[66:67], null, s34, 30, v[39:40]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v50, 20, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v67, 0x80000000, v39, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s6
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s1, s27, v47
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v69, s34, 1, v39
	v_lshl_add_u32 v70, s34, 2, v39
	v_lshl_add_u32 v71, s34, 3, v39
	v_lshl_add_u32 v72, s34, 4, v39
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mul_lo_u32 v39, s35, v68
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v51, 22, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v73, 0x80000000, v56, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s4
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s13, s27, v49
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v52, 24, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v74, 0x80000000, v57, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s3
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s15, s27, v50
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v53, 26, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v75, 0x80000000, v58, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s1
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s14, s27, v51
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v54, 28, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v76, 0x80000000, v59, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s13
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s16, s27, v52
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[56:57], null, s35, 6, v[39:40]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v55, 30, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v77, 0x80000000, v60, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s15
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mad_u64_u32 v[57:58], null, s35, 10, v[39:40]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s27, v53
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[58:59], null, s35, 12, v[39:40]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v41, 2, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v78, 0x80000000, v61, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s14
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mad_u64_u32 v[59:60], null, s35, 14, v[39:40]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s11, s27, v54
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[60:61], null, s35, 18, v[39:40]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v42, 4, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v79, 0x80000000, v62, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s16
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s10, s27, v55
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v44, 8, v40
	v_or_b32_e32 v48, 16, v40
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v80, 0x80000000, v63, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s12
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mad_u64_u32 v[61:62], null, s35, 20, v[39:40]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s27, v41
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[62:63], null, s35, 22, v[39:40]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v64, 0x80000000, v64, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s11
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v68, v38, v56, s30
	v_add3_u32 v63, v38, v57, s30
	v_mad_u64_u32 v[56:57], null, s35, 24, v[39:40]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s27, v42
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v81, v38, v58, s30
	v_mad_u64_u32 v[57:58], null, s35, 26, v[39:40]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s10
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v82, v38, v59, s30
	v_mad_u64_u32 v[58:59], null, s35, 28, v[39:40]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s5, s27, v44
	v_cmp_gt_i32_e64 s2, s27, v48
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v83, v38, v60, s30
	v_mad_u64_u32 v[59:60], null, s35, 30, v[39:40]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s17
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_lshl_add_u32 v60, s35, 1, v39
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s17, s0, s8
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_lshl_add_u32 v84, s35, 2, v39
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s7
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_lshl_add_u32 v85, s35, 3, v39
	v_lshl_add_u32 v86, s35, 4, v39
	v_add3_u32 v39, v38, v39, s30
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s2
	s_and_b32 s0, s0, s5
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v60, v38, v60, s30
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1388 42 is_stmt 0             ; ragged.py:1388:42
	v_add3_u32 v84, v38, v84, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v85, v38, v85, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v61, v38, v61, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v84, 0x80000000, v84, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v62, v38, v62, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v56, v38, v56, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v57, v38, v57, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v58, v38, v58, s30
	v_add3_u32 v59, v38, v59, s30
	v_add3_u32 v38, v38, v86, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v81, 0x80000000, v81, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s1
	.loc	1 1387 34 is_stmt 1             ; ragged.py:1387:34
	s_mov_b32 s40, s20
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v82, 0x80000000, v82, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1387 34 is_stmt 1             ; ragged.py:1387:34
	v_cndmask_b32_e64 v72, 0x80000000, v72, s17
	s_clause 0xf
	buffer_load_u8 v67, v67, s[40:43], 0 offen
	buffer_load_u8 v69, v69, s[40:43], 0 offen
	buffer_load_u8 v70, v70, s[40:43], 0 offen
	buffer_load_u8 v73, v73, s[40:43], 0 offen
	buffer_load_u8 v71, v71, s[40:43], 0 offen
	buffer_load_u8 v74, v74, s[40:43], 0 offen
	buffer_load_u8 v75, v75, s[40:43], 0 offen
	buffer_load_u8 v76, v76, s[40:43], 0 offen
	buffer_load_u8 v72, v72, s[40:43], 0 offen
	buffer_load_u8 v77, v77, s[40:43], 0 offen
	buffer_load_u8 v78, v78, s[40:43], 0 offen
	buffer_load_u8 v79, v79, s[40:43], 0 offen
	buffer_load_u8 v80, v80, s[40:43], 0 offen
	buffer_load_u8 v64, v64, s[40:43], 0 offen
	buffer_load_u8 v65, v65, s[40:43], 0 offen
	buffer_load_u8 v66, v66, s[40:43], 0 offen
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s41, s23, 0xffff
	s_mov_b32 s40, s22
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v86, v39, s[40:43], 0 offen
	buffer_load_u8 v60, v60, s[40:43], 0 offen
	buffer_load_u8 v84, v84, s[40:43], 0 offen
	buffer_load_u8 v68, v68, s[40:43], 0 offen
	buffer_load_u8 v85, v85, s[40:43], 0 offen
	buffer_load_u8 v63, v63, s[40:43], 0 offen
	buffer_load_u8 v81, v81, s[40:43], 0 offen
	buffer_load_u8 v82, v82, s[40:43], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v83, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v88, 0, v0
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1386 63 is_stmt 1             ; ragged.py:1386:63
	s_add_i32 s27, s27, -1
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s27, v42
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x4
	buffer_load_u8 v83, v38, s[40:43], 0 offen
	buffer_load_u8 v87, v39, s[40:43], 0 offen
	buffer_load_u8 v61, v61, s[40:43], 0 offen
	buffer_load_u8 v62, v62, s[40:43], 0 offen
	buffer_load_u8 v56, v56, s[40:43], 0 offen
	v_cndmask_b32_e64 v38, 0x80000000, v57, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s11
	s_and_b32 vcc_lo, vcc_lo, s10
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v39, 0x80000000, v58, s0
	v_cndmask_b32_e32 v57, 0x80000000, v59, vcc_lo
	s_clause 0x2
	buffer_load_u8 v58, v38, s[40:43], 0 offen
	buffer_load_u8 v59, v39, s[40:43], 0 offen
	buffer_load_u8 v57, v57, s[40:43], 0 offen
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s27, v40
	v_cmp_eq_u32_e64 s0, s27, v41
	v_cmp_eq_u32_e64 s2, s27, v43
	v_cmp_eq_u32_e64 s3, s27, v44
	v_cmp_eq_u32_e64 s5, s27, v46
	v_cmp_eq_u32_e64 s4, s27, v45
	v_cmp_eq_u32_e64 s6, s27, v47
	v_cmp_eq_u32_e64 s7, s27, v48
	v_cmp_eq_u32_e64 s8, s27, v49
	v_cmp_eq_u32_e64 s9, s27, v50
	v_cmp_eq_u32_e64 s10, s27, v51
	v_cmp_eq_u32_e64 s11, s27, v52
	v_cmp_eq_u32_e64 s12, s27, v53
	v_cmp_eq_u32_e64 s13, s27, v54
	v_cmp_eq_u32_e64 s14, s27, v55
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s15, s26, vcc_lo
	s_and_b32 s0, s26, s0
	s_and_b32 s1, s26, s1
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v89, 0, v33
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s2, s26, s2
	s_and_b32 s3, s26, s3
	s_and_b32 s7, s26, s7
	s_and_b32 s4, s26, s4
	s_and_b32 s5, s26, s5
	s_and_b32 s6, s26, s6
	s_and_b32 s8, s26, s8
	s_and_b32 s9, s26, s9
	s_and_b32 s10, s26, s10
	s_and_b32 s11, s26, s11
	s_and_b32 s12, s26, s12
	s_and_b32 s13, s26, s13
	s_and_b32 s14, s26, s14
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1389 62 is_stmt 0             ; ragged.py:1389:62
	s_waitcnt vmcnt(31)
	v_and_b16 v38.l, v67.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v38.h, v69.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v39.l, v70.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v40.l, v73.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v40.h, v71.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v41.l, v74.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v41.h, v75.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v42.l, v76.l, 15
	s_waitcnt vmcnt(23)
	v_and_b16 v39.h, v72.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v42.h, v77.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v43.l, v78.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v43.h, v79.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v44.l, v80.l, 15
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v46.l, v86.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v46.h, v60.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v47.l, v84.l, 15
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v44.h, v64.l, 15
	v_and_b16 v45.l, v65.l, 15
	v_and_b16 v45.h, v66.l, 15
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(12)
	v_and_b16 v47.h, v68.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v38.l, v67.l, v38.l, s15
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(11)
	v_and_b16 v48.l, v85.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v48.h, v63.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v49.l, v81.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v49.h, v82.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v38.h, v69.l, v38.h, s0
	v_cndmask_b16 v39.l, v70.l, v39.l, s1
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v70.l, v86.l, v46.l, s15
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v50.l, v83.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v50.h, v87.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v51.l, v61.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v51.h, v62.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v52.l, v56.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v70.h, v60.l, v46.h, s0
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_cndmask_b16 v40.l, v73.l, v40.l, s2
	v_cndmask_b16 v40.h, v71.l, v40.h, s3
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v71.l, v84.l, v47.l, s1
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v39.h, v72.l, v39.h, s7
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(2)
	v_and_b16 v52.h, v58.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v53.l, v59.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v53.h, v57.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v41.l, v74.l, v41.l, s4
	v_cndmask_b16 v41.h, v75.l, v41.h, s5
	v_cndmask_b16 v42.l, v76.l, v42.l, s6
	v_cndmask_b16 v42.h, v77.l, v42.h, s8
	v_cndmask_b16 v43.l, v78.l, v43.l, s9
	v_cndmask_b16 v43.h, v79.l, v43.h, s10
	v_cndmask_b16 v44.l, v80.l, v44.l, s11
	v_cndmask_b16 v44.h, v64.l, v44.h, s12
	v_cndmask_b16 v45.l, v65.l, v45.l, s13
	v_cndmask_b16 v45.h, v66.l, v45.h, s14
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v71.h, v68.l, v47.h, s2
	v_cndmask_b16 v72.l, v85.l, v48.l, s3
	v_cndmask_b16 v72.h, v63.l, v48.h, s4
	v_cndmask_b16 v73.l, v81.l, v49.l, s5
	v_cndmask_b16 v73.h, v82.l, v49.h, s6
	v_cndmask_b16 v74.l, v83.l, v50.l, s7
	v_cndmask_b16 v74.h, v87.l, v50.h, s8
	v_cndmask_b16 v75.l, v61.l, v51.l, s9
	v_cndmask_b16 v75.h, v62.l, v51.h, s10
	v_cndmask_b16 v76.l, v56.l, v52.l, s11
	v_cndmask_b16 v76.h, v58.l, v52.h, s12
	v_cndmask_b16 v77.l, v59.l, v53.l, s13
	v_cndmask_b16 v77.h, v57.l, v53.h, s14
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_store_b8 v88, v38
	ds_store_b8_d16_hi v88, v38 offset:128
	ds_store_b8 v88, v39 offset:256
	ds_store_b8 v88, v40 offset:384
	ds_store_b8_d16_hi v88, v40 offset:512
	ds_store_b8 v88, v41 offset:640
	ds_store_b8_d16_hi v88, v41 offset:768
	ds_store_b8 v88, v42 offset:896
	ds_store_b8_d16_hi v88, v39 offset:1024
	ds_store_b8_d16_hi v88, v42 offset:1152
	ds_store_b8 v88, v43 offset:1280
	ds_store_b8_d16_hi v88, v43 offset:1408
	ds_store_b8 v88, v44 offset:1536
	ds_store_b8_d16_hi v88, v44 offset:1664
	ds_store_b8 v88, v45 offset:1792
	ds_store_b8_d16_hi v88, v45 offset:1920
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v78, v89 offset:448
	ds_load_u8 v79, v89 offset:384
	ds_load_u8 v80, v89 offset:320
	ds_load_u8 v81, v89 offset:256
	ds_load_u8 v60, v89 offset:480
	ds_load_u8 v62, v89 offset:416
	ds_load_u8 v64, v89 offset:352
	ds_load_u8 v66, v89 offset:288
	ds_load_u8 v82, v89 offset:192
	ds_load_u8 v83, v89 offset:128
	ds_load_u8 v84, v89 offset:64
	ds_load_u8 v65, v89 offset:224
	ds_load_u8 v67, v89 offset:160
	ds_load_u8 v68, v89 offset:96
	ds_load_u8 v85, v89
	ds_load_u8 v69, v89 offset:32
	ds_load_u8 v86, v89 offset:704
	ds_load_u8 v87, v89 offset:640
	ds_load_u8 v90, v89 offset:576
	ds_load_u8 v91, v89 offset:512
	ds_load_u8 v45, v89 offset:736
	ds_load_u8 v48, v89 offset:672
	ds_load_u8 v51, v89 offset:608
	ds_load_u8 v53, v89 offset:544
	ds_load_u8 v92, v89 offset:960
	ds_load_u8 v93, v89 offset:896
	ds_load_u8 v94, v89 offset:832
	ds_load_u8 v95, v89 offset:768
	ds_load_u8 v56, v89 offset:992
	ds_load_u8 v57, v89 offset:928
	ds_load_u8 v61, v89 offset:864
	ds_load_u8 v63, v89 offset:800
	ds_load_u8 v96, v89 offset:1216
	ds_load_u8 v97, v89 offset:1152
	ds_load_u8 v98, v89 offset:1088
	ds_load_u8 v99, v89 offset:1024
	ds_load_u8 v46, v89 offset:1248
	ds_load_u8 v49, v89 offset:1184
	ds_load_u8 v50, v89 offset:1120
	ds_load_u8 v52, v89 offset:1056
	ds_load_u8 v100, v89 offset:1472
	ds_load_u8 v101, v89 offset:1408
	ds_load_u8 v102, v89 offset:1344
	ds_load_u8 v103, v89 offset:1280
	ds_load_u8 v54, v89 offset:1504
	ds_load_u8 v55, v89 offset:1440
	ds_load_u8 v58, v89 offset:1376
	ds_load_u8 v59, v89 offset:1312
	ds_load_u8 v104, v89 offset:1728
	ds_load_u8 v105, v89 offset:1664
	ds_load_u8 v106, v89 offset:1600
	ds_load_u8 v107, v89 offset:1536
	ds_load_u8 v38, v89 offset:1760
	ds_load_u8 v39, v89 offset:1696
	ds_load_u8 v40, v89 offset:1632
	ds_load_u8 v41, v89 offset:1568
	ds_load_u8 v108, v89 offset:1984
	ds_load_u8 v109, v89 offset:1920
	ds_load_u8 v110, v89 offset:1856
	ds_load_u8 v111, v89 offset:1792
	ds_load_u8 v42, v89 offset:2016
	ds_load_u8 v43, v89 offset:1952
	ds_load_u8 v44, v89 offset:1888
	ds_load_u8 v47, v89 offset:1824
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v88, v70
	ds_store_b8_d16_hi v88, v70 offset:128
	ds_store_b8 v88, v71 offset:256
	ds_store_b8_d16_hi v88, v71 offset:384
	ds_store_b8 v88, v72 offset:512
	ds_store_b8_d16_hi v88, v72 offset:640
	ds_store_b8 v88, v73 offset:768
	ds_store_b8_d16_hi v88, v73 offset:896
	ds_store_b8 v88, v74 offset:1024
	ds_store_b8_d16_hi v88, v74 offset:1152
	ds_store_b8 v88, v75 offset:1280
	ds_store_b8_d16_hi v88, v75 offset:1408
	ds_store_b8 v88, v76 offset:1536
	ds_store_b8_d16_hi v88, v76 offset:1664
	ds_store_b8 v88, v77 offset:1792
	ds_store_b8_d16_hi v88, v77 offset:1920
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v70, v81, v80, 0xc0c0004
	v_perm_b32 v71, v79, v78, 0xc0c0004
	v_perm_b32 v72, v85, v84, 0xc0c0004
	v_perm_b32 v73, v83, v82, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add3_u32 v84, 0, v34, v37
	s_waitcnt lgkmcnt(0)
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v71, v71, 16, v70
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v70, v73, 16, v72
	ds_load_u8 v72, v84 offset:320
	ds_load_u8 v73, v84 offset:256
	ds_load_u8 v74, v84 offset:448
	ds_load_u8 v75, v84 offset:384
	ds_load_u8 v80, v84 offset:352
	ds_load_u8 v81, v84 offset:288
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v64, v66, v64, 0xc0c0004
	v_perm_b32 v60, v62, v60, 0xc0c0004
	v_perm_b32 v62, v69, v68, 0xc0c0004
	v_perm_b32 v66, v67, v65, 0xc0c0004
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_perm_b32 v51, v53, v51, 0xc0c0004
	v_lshl_or_b32 v65, v60, 16, v64
	v_perm_b32 v60, v63, v61, 0xc0c0004
	v_lshl_or_b32 v64, v66, 16, v62
	v_perm_b32 v48, v48, v45, 0xc0c0004
	v_perm_b32 v50, v52, v50, 0xc0c0004
	v_perm_b32 v46, v49, v46, 0xc0c0004
	v_lshl_or_b32 v57, v56, 16, v60
	v_perm_b32 v44, v47, v44, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_lshl_or_b32 v56, v48, 16, v51
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v75, v74, 0xc0c0004
	ds_load_u8 v74, v84 offset:64
	ds_load_u8 v75, v84
	ds_load_u8 v76, v84 offset:192
	ds_load_u8 v77, v84 offset:128
	ds_load_u8 v82, v84 offset:96
	ds_load_u8 v83, v84 offset:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v48, v59, v58, 0xc0c0004
	v_perm_b32 v51, v55, v54, 0xc0c0004
	v_lshl_or_b32 v73, v73, 16, v72
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_lshl_or_b32 v49, v51, 16, v48
	v_lshl_or_b32 v48, v46, 16, v50
	v_lshl_or_b32 v39, v42, 16, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v38, v38, 16, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v77, v76, 0xc0c0004
	v_perm_b32 v76, v91, v90, 0xc0c0004
	v_perm_b32 v77, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v95, v94, 0xc0c0004
	v_perm_b32 v75, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[64:65], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v77, 16, v76
	ds_load_u8 v76, v84 offset:832
	ds_load_u8 v77, v84 offset:768
	ds_load_u8 v78, v84 offset:960
	ds_load_u8 v79, v84 offset:896
	ds_load_u8 v85, v84 offset:864
	ds_load_u8 v86, v84 offset:800
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v79, v78, 0xc0c0004
	ds_load_u8 v78, v84 offset:576
	ds_load_u8 v79, v84 offset:512
	ds_load_u8 v87, v84 offset:704
	ds_load_u8 v88, v84 offset:640
	ds_load_u8 v89, v84 offset:608
	ds_load_u8 v90, v84 offset:544
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v88, v87, 0xc0c0004
	v_perm_b32 v87, v99, v98, 0xc0c0004
	v_perm_b32 v88, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v78, v103, v102, 0xc0c0004
	v_perm_b32 v79, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[74:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[56:57], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v79, 16, v78
	v_lshl_or_b32 v78, v88, 16, v87
	ds_load_u8 v81, v84 offset:416
	ds_load_u8 v87, v84 offset:480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v87, 0xc0c0004
	ds_load_u8 v83, v84 offset:160
	ds_load_u8 v87, v84 offset:224
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v83, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v84 offset:1344
	ds_load_u8 v83, v84 offset:1280
	ds_load_u8 v87, v84 offset:1472
	ds_load_u8 v88, v84 offset:1408
	ds_load_u8 v91, v84 offset:1376
	ds_load_u8 v92, v84 offset:1312
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[64:65], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v88, v87, 0xc0c0004
	ds_load_u8 v87, v84 offset:1088
	ds_load_u8 v88, v84 offset:1024
	ds_load_u8 v93, v84 offset:1216
	ds_load_u8 v94, v84 offset:1152
	ds_load_u8 v95, v84 offset:1120
	ds_load_u8 v96, v84 offset:1056
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v94, v93, 0xc0c0004
	ds_load_u8 v93, v84 offset:928
	ds_load_u8 v94, v84 offset:992
	ds_load_u8 v97, v84 offset:672
	ds_load_u8 v98, v84 offset:736
	ds_load_u8 v99, v84 offset:1440
	ds_load_u8 v100, v84 offset:1504
	v_lshl_or_b32 v82, v88, 16, v87
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[78:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[48:49], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v93, v94, 0xc0c0004
	ds_load_u8 v93, v84 offset:1184
	ds_load_u8 v94, v84 offset:1248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v90, v97, v98, 0xc0c0004
	v_perm_b32 v97, v107, v106, 0xc0c0004
	ds_load_u8 v98, v84 offset:1600
	ds_load_u8 v101, v84 offset:1536
	ds_load_u8 v102, v84 offset:1728
	ds_load_u8 v103, v84 offset:1664
	v_lshl_or_b32 v71, v86, 16, v85
	v_perm_b32 v85, v111, v110, 0xc0c0004
	v_lshl_or_b32 v70, v90, 16, v89
	ds_load_u8 v86, v84 offset:1856
	ds_load_u8 v87, v84 offset:1792
	ds_load_u8 v88, v84 offset:1984
	ds_load_u8 v89, v84 offset:1920
	v_perm_b32 v90, v109, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[70:71], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v74, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v85, v90, 16, v85
	ds_load_u8 v90, v84 offset:1952
	ds_load_u8 v105, v84 offset:2016
	ds_load_u8 v106, v84 offset:1888
	ds_load_u8 v107, v84 offset:1824
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v75, v99, v100, 0xc0c0004
	v_perm_b32 v91, v96, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[56:57], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v93, v94, 0xc0c0004
	v_lshl_or_b32 v75, v75, 16, v74
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v95, v101, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_lshl_or_b32 v74, v92, 16, v91
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v89, v88, 0xc0c0004
	ds_load_u8 v88, v84 offset:1696
	ds_load_u8 v89, v84 offset:1760
	ds_load_u8 v93, v84 offset:1632
	ds_load_u8 v94, v84 offset:1568
	v_lshl_or_b32 v84, v104, 16, v97
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[78:79], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v90, v105, 0xc0c0004
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v107, v106, 0xc0c0004
	v_lshl_or_b32 v86, v96, 16, v95
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[48:49], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v45, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[84:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[38:39], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v88, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v41, 16, v53
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[84:85], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[44:45], v[38:39], v[17:24] neg_lo:[1,1,0]
.LBB0_6:
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v38, 4, v0
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v39, s44, v33
	.loc	1 1404 33 is_stmt 1             ; ragged.py:1404:33
	s_mul_i32 s36, s18, s34
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s25, s25, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s0, s44, s36
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v34, v38, 1, v34
	v_or_b32_e32 v38, 32, v33
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v33, s0, v33, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v39
	s_mov_b32 s27, 0x31027000
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v40, 2, v34
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v55, s44, v38
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v38, s0, v38, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v41, 4, v34
	v_or_b32_e32 v42, 6, v34
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v55
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v43, 8, v34
	v_or_b32_e32 v44, 10, v34
	v_or_b32_e32 v45, 12, v34
	v_or_b32_e32 v46, 14, v34
	v_or_b32_e32 v47, 32, v34
	v_or_b32_e32 v48, 34, v34
	v_or_b32_e32 v49, 36, v34
	v_or_b32_e32 v50, 38, v34
	v_or_b32_e32 v51, 40, v34
	v_or_b32_e32 v52, 42, v34
	v_or_b32_e32 v53, 44, v34
	v_or_b32_e32 v54, 46, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v56, s19, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s0, s18, s35
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v57, s19, v40
	v_or_b32_e32 v58, s19, v41
	v_or_b32_e32 v59, s19, v42
	v_or_b32_e32 v60, s19, v43
	v_or_b32_e32 v61, s19, v44
	v_or_b32_e32 v62, s19, v45
	v_or_b32_e32 v63, s19, v46
	v_or_b32_e32 v64, s19, v47
	v_or_b32_e32 v65, s19, v48
	v_or_b32_e32 v66, s19, v49
	v_or_b32_e32 v67, s19, v50
	v_or_b32_e32 v68, s19, v51
	v_or_b32_e32 v69, s19, v52
	v_or_b32_e32 v70, s19, v53
	v_or_b32_e32 v71, s19, v54
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s19, s19, s0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v39, v33, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v33, s19, v34, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v56
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s19, v40, 1
	v_add_lshl_u32 v40, s19, v41, 1
	v_add_lshl_u32 v41, s19, v42, 1
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v57
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v57, s19, v47, 1
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v58
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v42, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v59
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s19, v43, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v43, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v41, s19, v44, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v44, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v61
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s19, v45, 1
	v_add_lshl_u32 v45, s19, v46, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v46, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v62
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v55, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v63
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v56, 0x80000000, v45, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v64
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v47, v33, s[28:31], 0 offen
	buffer_load_u16 v40, v34, s[28:31], 0 offen
	buffer_load_u16 v41, v42, s[28:31], 0 offen
	buffer_load_u16 v42, v43, s[28:31], 0 offen
	buffer_load_u16 v43, v44, s[28:31], 0 offen
	buffer_load_u16 v44, v46, s[28:31], 0 offen
	buffer_load_u16 v45, v55, s[28:31], 0 offen
	buffer_load_u16 v46, v56, s[28:31], 0 offen
	v_add_lshl_u32 v33, s19, v48, 1
	v_add_lshl_u32 v48, s19, v49, 1
	v_add_lshl_u32 v49, s19, v50, 1
	v_cndmask_b32_e32 v34, 0x80000000, v57, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v65
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v50, s19, v51, 1
	v_add_lshl_u32 v51, s19, v52, 1
	v_add_lshl_u32 v52, s19, v53, 1
	v_add_lshl_u32 v53, s19, v54, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v66
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v57, v1
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v68
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.h, 0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v70
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v71
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	s_clause 0x7
	buffer_load_u16 v54, v34, s[28:31], 0 offen
	buffer_load_u16 v55, v33, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v33, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v70.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	v_mov_b16_e32 v73.h, v1.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v63, 2, v33
	s_barrier
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v72.h, v1.h
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v34, v0, 4, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v26, v26, v38 :: v_dual_lshlrev_b32 v39, 16, v39
	v_dual_mul_f32 v3, v3, v39 :: v_dual_lshlrev_b32 v58, 2, v37
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v37, v37, 8, v63
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v57, v57, v39 :: v_dual_and_b32 v56, 0x60, v0
	v_mul_f32_e32 v5, v5, v39
	v_dual_mul_f32 v2, v2, v39 :: v_dual_mul_f32 v27, v27, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v36, v37, v36
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v4, v4, v39 :: v_dual_mul_f32 v29, v29, v38
	v_dual_mul_f32 v6, v6, v39 :: v_dual_mul_f32 v31, v31, v38
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v35, v35, 1, v36
	v_lshrrev_b32_e32 v36, 3, v56
	v_lshl_or_b32 v56, v56, 3, v58
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v7, v7, v39 :: v_dual_mul_f32 v28, v28, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v25, v25, v38 :: v_dual_add_nc_u32 v58, 0, v35
	v_dual_mul_f32 v8, v8, v39 :: v_dual_mul_f32 v17, v17, v38
	v_dual_mul_f32 v9, v9, v39 :: v_dual_mul_f32 v30, v30, v38
	v_dual_mul_f32 v10, v10, v39 :: v_dual_mul_f32 v19, v19, v38
	v_dual_mul_f32 v11, v11, v39 :: v_dual_mul_f32 v32, v32, v38
	v_dual_mul_f32 v12, v12, v39 :: v_dual_mul_f32 v21, v21, v38
	v_dual_mul_f32 v13, v13, v39 :: v_dual_mul_f32 v18, v18, v38
	v_dual_mul_f32 v14, v14, v39 :: v_dual_mul_f32 v23, v23, v38
	v_dual_mul_f32 v15, v15, v39 :: v_dual_mul_f32 v20, v20, v38
	v_mul_f32_e32 v16, v16, v39
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v22, v22, v38 :: v_dual_lshlrev_b32 v39, 16, v47
	v_mul_f32_e32 v24, v24, v38
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v38, 16, v40
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v40, 16, v41
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v41, 16, v42
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v25, v25, v39
	v_mul_f32_e32 v39, v57, v39
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v3, v3, v40 :: v_dual_lshlrev_b32 v42, 16, v43
	v_mul_f32_e32 v26, v26, v38
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.l, v25.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v43, 16, v44
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v27, v27, v40 :: v_dual_lshlrev_b32 v44, 16, v45
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v59.l, v39.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v38
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v38, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v28, v28, v41
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v40, 1, v59
	v_add3_u32 v25, v25, v38, 0x7fff
	v_and_b32_e32 v38, 1, v1
	v_mov_b16_e32 v1.l, v27.h
	v_cmp_o_f32_e64 s0, v39, v39
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v29, v29, v42
	v_mul_f32_e32 v31, v31, v44
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v60.l, v2.h
	v_cmp_o_f32_e64 s1, v26, v26
	v_add3_u32 v39, v39, v40, 0x7fff
	v_add3_u32 v26, v26, v38, 0x7fff
	v_and_b32_e32 v38, 1, v1
	v_mov_b16_e32 v1.l, v28.h
	v_mov_b16_e32 v37.h, v1.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v4, v4, v41 :: v_dual_lshlrev_b32 v45, 16, v46
	v_dual_mul_f32 v6, v6, v43 :: v_dual_mul_f32 v7, v7, v44
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v40, 1, v60
	v_cndmask_b16 v25.l, 0x7fff, v39.h, s0
	v_and_b32_e32 v39, 1, v1
	v_mov_b16_e32 v1.l, v29.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v5, v5, v42
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s2, v2, v2
	v_mov_b16_e32 v65.l, v6.h
	v_add3_u32 v2, v2, v40, 0x7fff
	v_and_b32_e32 v40, 1, v1
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v46, 16, v54
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v47, 16, v55
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v30, v30, v43 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v18, v18, v47 :: v_dual_lshlrev_b32 v53, 16, v53
	v_dual_mul_f32 v13, v13, v50 :: v_dual_lshlrev_b32 v48, 16, v48
	v_mul_f32_e32 v9, v9, v46
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.l, v30.h
	v_mov_b16_e32 v64.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v13.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v32, v45 :: v_dual_mul_f32 v11, v11, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s24, v13, v13
	v_and_b32_e32 v44, 1, v65
	v_and_b32_e32 v37, 1, v37
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v16, v16, v53 :: v_dual_and_b32 v43, 1, v64
	v_dual_mul_f32 v8, v8, v45 :: v_dual_mul_f32 v17, v17, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v13, v13, v37, 0x7fff
	v_and_b32_e32 v37, 1, v1
	v_mov_b16_e32 v1.l, v31.h
	v_cmp_o_f32_e64 s3, v27, v27
	v_cmp_o_f32_e64 s10, v6, v6
	v_add3_u32 v6, v6, v44, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v2.h, s2
	v_add3_u32 v2, v27, v38, 0x7fff
	v_and_b32_e32 v27, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	v_cmp_o_f32_e64 s8, v5, v5
	v_add3_u32 v5, v5, v43, 0x7fff
	v_mov_b16_e32 v61.l, v3.h
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s10
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v17.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v10, v47 :: v_dual_mul_f32 v19, v19, v48
	v_dual_mul_f32 v22, v22, v51 :: v_dual_and_b32 v41, 1, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v38, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v20, v20, v49 :: v_dual_mul_f32 v15, v15, v52
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s4, v3, v3
	v_mov_b16_e32 v62.l, v4.h
	v_add3_u32 v3, v3, v41, 0x7fff
	v_and_b32_e32 v41, 1, v1
	v_mov_b16_e32 v1.l, v19.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v12, v49 :: v_dual_mul_f32 v21, v21, v50
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s5, v28, v28
	v_mov_b16_e32 v67.l, v8.h
	v_and_b32_e32 v42, 1, v62
	v_add3_u32 v28, v28, v39, 0x7fff
	v_and_b32_e32 v39, 1, v1
	v_mov_b16_e32 v1.l, v20.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v63.l, v9.h
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s7, v29, v29
	v_and_b32_e32 v46, 1, v67
	v_add3_u32 v4, v4, v42, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s4
	v_add3_u32 v29, v29, v40, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v28.h, s5
	v_and_b32_e32 v28, 1, v1
	v_mov_b16_e32 v1.l, v21.h
	v_and_b32_e32 v47, 1, v63
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v14, v14, v51 :: v_dual_mul_f32 v23, v23, v52
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s13, v32, v32
	v_cmp_o_f32_e64 s14, v8, v8
	v_add3_u32 v8, v8, v46, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s6
	v_cndmask_b16 v4.h, 0x7fff, v29.h, s7
	v_add3_u32 v6, v32, v6, 0x7fff
	v_and_b32_e32 v29, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	v_cmp_o_f32_e64 s15, v17, v17
	v_cmp_o_f32_e64 s16, v9, v9
	v_mov_b16_e32 v68.l, v10.h
	v_add3_u32 v9, v9, v47, 0x7fff
	v_add3_u32 v17, v17, v38, 0x7fff
	v_mov_b16_e32 v69.l, v11.h
	v_mov_b16_e32 v66.l, v7.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v24, v24, v53
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s14
	v_cndmask_b16 v8.h, 0x7fff, v6.h, s13
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v23.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v81, 0x1040, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v48, 1, v68
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s16
	v_cndmask_b16 v9.h, 0x7fff, v17.h, s15
	v_and_b32_e32 v49, 1, v69
	v_mov_b16_e32 v70.l, v12.h
	v_mov_b16_e32 v71.l, v14.h
	v_mov_b16_e32 v73.l, v16.h
	v_and_b32_e32 v45, 1, v66
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v58, v25
	ds_store_b32 v81, v9
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v9, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	v_cmp_o_f32_e64 s17, v18, v18
	v_cmp_o_f32_e64 s18, v10, v10
	v_add3_u32 v10, v10, v48, 0x7fff
	v_add3_u32 v18, v18, v41, 0x7fff
	v_cmp_o_f32_e64 s19, v19, v19
	v_cmp_o_f32_e64 s20, v11, v11
	v_mov_b16_e32 v72.l, v15.h
	v_add3_u32 v11, v11, v49, 0x7fff
	v_add3_u32 v17, v19, v39, 0x7fff
	v_and_b32_e32 v50, 1, v70
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v74, v35, 4, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v51, 1, v71
	v_and_b32_e32 v53, 1, v73
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s1
	v_and_b32_e32 v1, 1, v1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v75, v35, 8, 0
	v_xad_u32 v82, 0x1044, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s18
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v10.h, 0x7fff, v18.h, s17
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v83, 0x1048, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v52, 1, v72
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s20
	v_cndmask_b16 v11.h, 0x7fff, v17.h, s19
	v_cmp_o_f32_e64 s21, v20, v20
	v_cmp_o_f32_e64 s22, v12, v12
	v_add3_u32 v12, v12, v50, 0x7fff
	v_add3_u32 v18, v20, v28, 0x7fff
	v_cmp_o_f32_e64 s9, v30, v30
	v_add3_u32 v30, v30, v37, 0x7fff
	v_cmp_o_f32_e64 s23, v21, v21
	v_cmp_o_f32_e64 s25, v22, v22
	v_cmp_o_f32_e64 s26, v14, v14
	v_cmp_o_f32_e64 s29, v24, v24
	v_cmp_o_f32_e64 s30, v16, v16
	v_add3_u32 v14, v14, v51, 0x7fff
	v_add3_u32 v16, v16, v53, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v74, v26
	ds_store_b32 v82, v10
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v10, v21, v29, 0x7fff
	v_add3_u32 v6, v22, v6, 0x7fff
	v_add3_u32 v1, v24, v1, 0x7fff
	v_cmp_o_f32_e64 s11, v31, v31
	v_cmp_o_f32_e64 s12, v7, v7
	v_add3_u32 v7, v7, v45, 0x7fff
	v_add3_u32 v27, v31, v27, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v75, v2
	ds_store_b32 v83, v11
	v_xor_b32_e32 v2, v56, v36
	v_xad_u32 v76, v35, 12, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s27, v23, v23
	v_cmp_o_f32_e64 s28, v15, v15
	v_add3_u32 v15, v15, v52, 0x7fff
	v_add3_u32 v9, v23, v9, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v84, 0x104c, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s22
	v_cndmask_b16 v12.h, 0x7fff, v18.h, s21
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v77, v35, 16, 0
	v_xad_u32 v78, v35, 20, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s8
	v_cndmask_b16 v5.h, 0x7fff, v30.h, s9
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v85, 0x1050, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s24
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s26
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s30
	v_cndmask_b16 v13.h, 0x7fff, v10.h, s23
	v_cndmask_b16 v14.h, 0x7fff, v6.h, s25
	v_cndmask_b16 v16.h, 0x7fff, v1.h, s29
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v1, 0x1054, v35, 0
	v_xad_u32 v79, v35, 24, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s12
	v_cndmask_b16 v7.h, 0x7fff, v27.h, s11
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_or_b32 v2, 0x1040, v34, v2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s28
	v_cndmask_b16 v15.h, 0x7fff, v9.h, s27
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v76, v3
	ds_store_b32 v84, v12
	v_xad_u32 v3, 0x1058, v35, 0
	v_xad_u32 v80, v35, 28, 0
	ds_store_b32 v77, v4
	ds_store_b32 v85, v13
	ds_store_b32 v78, v5
	ds_store_b32 v1, v14
	v_xad_u32 v1, 0x105c, v35, 0
	ds_store_b32 v79, v7
	ds_store_b32 v3, v15
	ds_store_b32 v80, v8
	ds_store_b32 v1, v16
	v_add_nc_u32_e32 v1, 0, v2
	v_xad_u32 v3, v2, 64, 0
	v_xad_u32 v4, 0x410, v2, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v1 offset1:32
	ds_load_2addr_b32 v[15:16], v3 offset1:32
	ds_load_2addr_b32 v[9:10], v4 offset1:32
	v_xad_u32 v1, 0x450, v2, 0
	v_xad_u32 v3, 0x820, v2, 0
	v_xad_u32 v4, 0x860, v2, 0
	v_xad_u32 v17, 0xc30, v2, 0
	v_xad_u32 v18, 0xc70, v2, 0
	ds_load_2addr_b32 v[11:12], v1 offset1:32
	ds_load_2addr_b32 v[5:6], v3 offset1:32
	ds_load_2addr_b32 v[7:8], v4 offset1:32
	ds_load_2addr_b32 v[1:2], v17 offset1:32
	ds_load_2addr_b32 v[3:4], v18 offset1:32
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s35, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s44, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s33, 5, v33
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
	s_cbranch_execz .LBB0_8
; %bb.7:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s36, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v13, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_8:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v9, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v5, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v17
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
	v_add_nc_u32_e32 v18, s36, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
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
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v14, v16, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 20, v17
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
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v10, v12, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
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
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v6, v8, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 28, v17
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
	v_add_nc_u32_e32 v18, s36, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
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
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v13, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s36, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v13, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v9, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s36, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v5, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s36, v5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v5, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v1, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s36, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s36, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s38, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s39, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s36, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s39, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 60, v17
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
	v_add_nc_u32_e32 v1, s36, v1
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
	v_add_co_u32 v0, vcc_lo, s38, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s39, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_38:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 112
		.amdhsa_next_free_sgpr 59
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 112
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 59
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12484
; TotalNumSgprs: 61
; NumVgprs: 112
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 61
; NumVGPRsForWavesPerEU: 112
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     61
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     112
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
