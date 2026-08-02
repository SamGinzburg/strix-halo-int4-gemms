	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[40:43], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v38, 63, v0
	v_and_b32_e32 v36, 15, v0
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v39, 64, v0
	v_and_b32_e32 v40, 32, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	s_sub_i32 s34, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s34, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s5
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v35, 24, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s7
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
	s_ashr_i32 s35, s34, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s6, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[34:35], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s35, s6, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s33, s2, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s40, s4
	s_addc_u32 s5, s41, s5
	s_load_b32 s14, s[4:5], 0x0
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b32 s1, s[0:1], 0x38
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s35, v38
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v37, s33, v38
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s12, s3, 5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v37
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s14, 31
	s_lshr_b32 s0, s0, 26
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s13, s34, s1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_add_i32 s2, s14, s0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s2, s2, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s2, s2, 5
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s12, s2
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v1, 3, v39
	v_cmp_eq_u32_e64 s1, 0, v39
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_and_b32_e32 v4, 24, v4
	v_mul_lo_u32 v2, s18, v1
	v_mul_lo_u32 v3, s19, v1
	v_cndmask_b32_e64 v5, 0x208, 0, s1
	v_cmp_eq_u32_e64 s1, 0, v40
	v_xor3_b32 v1, v35, v1, v4
	s_lshl_b32 s3, s18, 1
	s_mul_i32 s15, s18, 3
	s_lshl_b32 s16, s18, 2
	v_cndmask_b32_e64 v7, 0x208, 0, s1
	v_lshl_or_b32 v6, v38, 5, v1
	v_mov_b32_e32 v1, 0
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v34, v38, v3, s33
	v_add3_u32 v33, v38, v2, s35
	s_mul_i32 s17, s18, 5
	v_xor_b32_e32 v8, 16, v6
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v4, v36, 5, v4
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v41, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v42, 0, v8
	v_mov_b32_e32 v20, v1
	v_xor_b32_e32 v5, v4, v5
	v_xor_b32_e32 v4, v4, v7
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v22, v1
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
	v_add_nc_u32_e32 v43, 0, v5
	v_add_nc_u32_e32 v44, 0, v9
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v45, 0, v10
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v46, 0, v7
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v47, 0, v11
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v48, 0, v12
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v49, 0, v13
	v_add_nc_u32_e32 v50, 0, v4
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v51, 0, v14
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v52, 0, v15
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v53, 0, v16
	v_add_nc_u32_e32 v54, 0, v17
	v_mov_b32_e32 v17, v1
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v55, 0, v18
	v_add_nc_u32_e32 v56, 0, v19
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	s_mul_i32 s28, s18, 6
	s_mul_i32 s29, s18, 7
	s_lshl_b32 s30, s18, 4
	s_mul_i32 s31, s18, 17
	s_mul_i32 s36, s18, 18
	s_mul_i32 s37, s18, 19
	s_mul_i32 s38, s18, 20
	s_mul_i32 s39, s18, 21
	s_mul_i32 s40, s18, 22
	s_mul_i32 s41, s18, 23
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
	s_lshl_b32 s44, s19, 1
	s_mul_i32 s45, s19, 3
	s_lshl_b32 s46, s19, 2
	s_mul_i32 s47, s19, 5
	s_mul_i32 s48, s19, 6
	s_mul_i32 s49, s19, 7
	s_lshl_b32 s50, s19, 4
	s_mul_i32 s51, s19, 17
	s_mul_i32 s52, s19, 18
	s_mul_i32 s53, s19, 19
	s_mul_i32 s54, s19, 20
	s_mul_i32 s55, s19, 21
	s_mul_i32 s56, s19, 22
	s_mul_i32 s57, s19, 23
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 42                       ; ragged.py:1362:42
	s_add_i32 s1, s12, s13
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s12, s12, 32
	v_mad_u64_u32 v[57:58], null, s1, s18, v[33:34]
	v_mad_u64_u32 v[58:59], null, s1, s19, v[34:35]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s12, s2
	v_add_nc_u32_e32 v65, s29, v57
	v_add_nc_u32_e32 v63, s17, v57
	v_add_nc_u32_e32 v61, s15, v57
	v_add_nc_u32_e32 v59, s18, v57
	v_add_nc_u32_e32 v67, s31, v57
	v_add_nc_u32_e32 v68, s36, v57
	v_add_nc_u32_e32 v69, s37, v57
	v_add_nc_u32_e32 v70, s38, v57
	v_add_nc_u32_e32 v71, s39, v57
	v_add_nc_u32_e32 v72, s40, v57
	v_add_nc_u32_e32 v73, s41, v57
	v_add_nc_u32_e32 v74, s19, v58
	v_add_nc_u32_e32 v75, s44, v58
	v_add_nc_u32_e32 v76, s45, v58
	v_add_nc_u32_e32 v77, s46, v58
	v_add_nc_u32_e32 v78, s47, v58
	v_add_nc_u32_e32 v79, s48, v58
	v_add_nc_u32_e32 v80, s49, v58
	v_add_nc_u32_e32 v81, s50, v58
	v_add_nc_u32_e32 v82, s51, v58
	v_add_nc_u32_e32 v83, s52, v58
	v_add_nc_u32_e32 v84, s53, v58
	v_add_nc_u32_e32 v85, s54, v58
	v_add_nc_u32_e32 v86, s55, v58
	v_add_nc_u32_e32 v87, s56, v58
	v_add_nc_u32_e32 v88, s57, v58
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	v_add_nc_u32_e32 v60, s3, v57
	v_add_nc_u32_e32 v62, s16, v57
	v_add_nc_u32_e32 v64, s28, v57
	v_add_nc_u32_e32 v66, s30, v57
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	.loc	1 1363 34                       ; ragged.py:1363:34
	buffer_load_u8 v89, v58, s[8:11], 0 offen
	v_cndmask_b32_e32 v58, 0x80000000, v74, vcc_lo
	v_dual_cndmask_b32 v74, 0x80000000, v75 :: v_dual_cndmask_b32 v75, 0x80000000, v76
	v_dual_cndmask_b32 v76, 0x80000000, v77 :: v_dual_cndmask_b32 v77, 0x80000000, v78
	v_dual_cndmask_b32 v78, 0x80000000, v79 :: v_dual_cndmask_b32 v79, 0x80000000, v80
	v_dual_cndmask_b32 v80, 0x80000000, v81 :: v_dual_cndmask_b32 v81, 0x80000000, v82
	v_dual_cndmask_b32 v82, 0x80000000, v83 :: v_dual_cndmask_b32 v83, 0x80000000, v84
	v_dual_cndmask_b32 v84, 0x80000000, v85 :: v_dual_cndmask_b32 v85, 0x80000000, v86
	v_dual_cndmask_b32 v86, 0x80000000, v87 :: v_dual_cndmask_b32 v87, 0x80000000, v88
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	s_clause 0x8
	buffer_load_u8 v88, v57, s[4:7], 0 offen
	buffer_load_u8 v57, v65, s[4:7], 0 offen
	buffer_load_u8 v63, v63, s[4:7], 0 offen
	buffer_load_u8 v61, v61, s[4:7], 0 offen
	buffer_load_u8 v59, v59, s[4:7], 0 offen
	buffer_load_u8 v65, v73, s[4:7], 0 offen
	buffer_load_u8 v71, v71, s[4:7], 0 offen
	buffer_load_u8 v69, v69, s[4:7], 0 offen
	buffer_load_u8 v67, v67, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x7
	buffer_load_u8 v73, v79, s[8:11], 0 offen
	buffer_load_u8 v77, v77, s[8:11], 0 offen
	buffer_load_u8 v75, v75, s[8:11], 0 offen
	buffer_load_u8 v79, v58, s[8:11], 0 offen
	buffer_load_u8 v87, v87, s[8:11], 0 offen
	buffer_load_u8 v85, v85, s[8:11], 0 offen
	buffer_load_u8 v83, v83, s[8:11], 0 offen
	buffer_load_u8 v81, v81, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_clause 0x6
	buffer_load_u8 v90, v64, s[4:7], 0 offen
	buffer_load_u8 v91, v62, s[4:7], 0 offen
	buffer_load_u8 v92, v60, s[4:7], 0 offen
	buffer_load_u8 v72, v72, s[4:7], 0 offen
	buffer_load_u8 v70, v70, s[4:7], 0 offen
	buffer_load_u8 v68, v68, s[4:7], 0 offen
	buffer_load_u8 v93, v66, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x6
	buffer_load_u8 v78, v78, s[8:11], 0 offen
	buffer_load_u8 v76, v76, s[8:11], 0 offen
	buffer_load_u8 v74, v74, s[8:11], 0 offen
	buffer_load_u8 v86, v86, s[8:11], 0 offen
	buffer_load_u8 v84, v84, s[8:11], 0 offen
	buffer_load_u8 v82, v82, s[8:11], 0 offen
	buffer_load_u8 v80, v80, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(29)
	v_lshlrev_b16 v57.l, 8, v57.l
	s_waitcnt vmcnt(28)
	v_lshlrev_b16 v57.h, 8, v63.l
	s_waitcnt vmcnt(27)
	v_lshlrev_b16 v58.l, 8, v61.l
	s_waitcnt vmcnt(26)
	v_lshlrev_b16 v58.h, 8, v59.l
	s_waitcnt vmcnt(25)
	v_lshlrev_b16 v59.l, 8, v65.l
	s_waitcnt vmcnt(24)
	v_lshlrev_b16 v59.h, 8, v71.l
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v60.l, 8, v69.l
	s_waitcnt vmcnt(22)
	v_lshlrev_b16 v60.h, 8, v67.l
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(21)
	v_lshlrev_b16 v61.l, 8, v73.l
	s_waitcnt vmcnt(20)
	v_lshlrev_b16 v61.h, 8, v77.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v62.l, 8, v75.l
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v62.h, 8, v79.l
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v63.l, 8, v87.l
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v63.h, 8, v85.l
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v64.l, 8, v83.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v64.h, 8, v81.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(13)
	v_or_b16 v66.h, v90.l, v57.l
	s_waitcnt vmcnt(12)
	v_or_b16 v66.l, v91.l, v57.h
	s_waitcnt vmcnt(11)
	v_or_b16 v65.h, v92.l, v58.l
	v_or_b16 v65.l, v88.l, v58.h
	s_waitcnt vmcnt(10)
	v_or_b16 v58.h, v72.l, v59.l
	s_waitcnt vmcnt(9)
	v_or_b16 v58.l, v70.l, v59.h
	s_waitcnt vmcnt(8)
	v_or_b16 v57.h, v68.l, v60.l
	s_waitcnt vmcnt(7)
	v_or_b16 v57.l, v93.l, v60.h
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(6)
	v_or_b16 v68.h, v78.l, v61.l
	s_waitcnt vmcnt(5)
	v_or_b16 v68.l, v76.l, v61.h
	s_waitcnt vmcnt(4)
	v_or_b16 v67.h, v74.l, v62.l
	v_or_b16 v67.l, v89.l, v62.h
	s_waitcnt vmcnt(3)
	v_or_b16 v62.h, v86.l, v63.l
	s_waitcnt vmcnt(2)
	v_or_b16 v62.l, v84.l, v63.h
	s_waitcnt vmcnt(1)
	v_or_b16 v61.h, v82.l, v64.l
	s_waitcnt vmcnt(0)
	v_or_b16 v61.l, v80.l, v64.h
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_store_b64 v41, v[65:66]
	ds_store_b64 v42, v[57:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[57:60], v43 offset1:2
	ds_load_b64 v[65:66], v44
	ds_load_b64 v[69:70], v45
	ds_load_b64 v[71:72], v46
	ds_load_b64 v[73:74], v47
	ds_load_b64 v[75:76], v48
	ds_load_b64 v[77:78], v49
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v41, v[67:68]
	ds_store_b64 v42, v[61:62]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[61:64], v50 offset1:2
	ds_load_b64 v[67:68], v54
	ds_load_b64 v[79:80], v51
	ds_load_b64 v[81:82], v52
	ds_load_b64 v[83:84], v53
	ds_load_b64 v[85:86], v55
	ds_load_b64 v[87:88], v56
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[57:58], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[73:74], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[59:60], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v15, v16
	v_mov_b32_e32 v12, v16
	v_mov_b32_e32 v11, v16
	v_mov_b32_e32 v14, v16
	v_mov_b32_e32 v13, v16
	v_mov_b32_e32 v10, v16
	v_mov_b32_e32 v9, v16
	v_mov_b32_e32 v24, v16
	v_mov_b32_e32 v23, v16
	v_mov_b32_e32 v20, v16
	v_mov_b32_e32 v19, v16
	v_mov_b32_e32 v22, v16
	v_mov_b32_e32 v21, v16
	v_mov_b32_e32 v18, v16
	v_mov_b32_e32 v17, v16
	v_mov_b32_e32 v32, v16
	v_mov_b32_e32 v31, v16
	v_mov_b32_e32 v30, v16
	v_mov_b32_e32 v29, v16
	v_mov_b32_e32 v28, v16
	v_mov_b32_e32 v27, v16
	v_mov_b32_e32 v26, v16
	v_mov_b32_e32 v25, v16
	v_mov_b32_e32 v8, v16
	v_mov_b32_e32 v7, v16
	v_mov_b32_e32 v6, v16
	v_mov_b32_e32 v5, v16
	v_mov_b32_e32 v4, v16
	v_mov_b32_e32 v3, v16
	v_mov_b32_e32 v2, v16
	v_mov_b32_e32 v1, v16
.LBB0_4:                                ; %._crit_edge
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v33, 2, v39
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_add_i32 s1, s14, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v34, 1, v40
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s2, s1, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s1, s1, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v33, v33, v36
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s36, s1, 1
	.loc	1 1375 20                       ; ragged.py:1375:20
	s_cmp_ge_i32 s12, s36
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v51, 6, v39
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s6, s14, 0x80000001
	s_mov_b32 s31, 0x31027000
	s_cmp_eq_u32 s6, 1
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v39, s18, v51
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s37, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s14, s12, s13
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v52, s12, v51
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s6, s14, s18
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s38, s14, s19
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s6, s6, s35
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	s_and_b32 s29, s21, 0xffff
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v38, s6, v38, v39
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s5, s36, v52
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v53, 6, v52
	v_or_b32_e32 v54, 10, v52
	v_or_b32_e32 v55, 12, v52
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[39:40], null, s18, 6, v[38:39]
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s5
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s36, v53
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v64, s18, 1, v38
	v_lshl_add_u32 v65, s18, 2, v38
	v_lshl_add_u32 v66, s18, 3, v38
	v_lshl_add_u32 v67, s18, 4, v38
	v_mad_u64_u32 v[40:41], null, s18, 10, v[38:39]
	v_mad_u64_u32 v[41:42], null, s18, 12, v[38:39]
	v_mad_u64_u32 v[42:43], null, s18, 14, v[38:39]
	v_mad_u64_u32 v[43:44], null, s18, 18, v[38:39]
	v_mad_u64_u32 v[44:45], null, s18, 20, v[38:39]
	v_mad_u64_u32 v[45:46], null, s18, 22, v[38:39]
	v_mad_u64_u32 v[46:47], null, s18, 24, v[38:39]
	v_mad_u64_u32 v[47:48], null, s18, 26, v[38:39]
	v_mad_u64_u32 v[48:49], null, s18, 28, v[38:39]
	v_mad_u64_u32 v[49:50], null, s18, 30, v[38:39]
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v50, 0x80000000, v38, s13
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mul_lo_u32 v38, s19, v51
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s36, v54
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v56, 14, v52
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s13, s0, s4
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v57, 18, v52
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s1, s36, v55
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v68, 0x80000000, v39, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s2
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v58, 20, v52
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s36, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v69, 0x80000000, v40, s13
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[39:40], null, s19, 6, v[38:39]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v59, 22, v52
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s36, v57
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v60, 24, v52
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s13, s0, s1
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s11, s36, v58
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v70, 0x80000000, v41, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s3
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s10, s36, v59
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v71, 0x80000000, v42, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s12
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s36, v60
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[40:41], null, s19, 10, v[38:39]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v72, 0x80000000, v43, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s11
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mad_u64_u32 v[41:42], null, s19, 12, v[38:39]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v73, 0x80000000, v44, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s10
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mad_u64_u32 v[42:43], null, s19, 14, v[38:39]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v74, 0x80000000, v45, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s9
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mad_u64_u32 v[43:44], null, s19, 18, v[38:39]
	v_mad_u64_u32 v[44:45], null, s19, 20, v[38:39]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v61, 26, v52
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v51, 0x80000000, v46, s13
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[45:46], null, s19, 22, v[38:39]
	v_add3_u32 v46, v37, v39, s38
	v_add3_u32 v79, v37, v40, s38
	v_mad_u64_u32 v[39:40], null, s19, 24, v[38:39]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v62, 28, v52
	v_or_b32_e32 v63, 30, v52
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s36, v61
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v80, v37, v41, s38
	v_add3_u32 v81, v37, v42, s38
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s36, v62
	v_cmp_gt_i32_e64 s6, s36, v63
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[40:41], null, s19, 26, v[38:39]
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s13, s0, s8
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[41:42], null, s19, 28, v[38:39]
	v_lshl_add_u32 v75, s19, 1, v38
	v_lshl_add_u32 v76, s19, 2, v38
	v_lshl_add_u32 v77, s19, 3, v38
	v_lshl_add_u32 v78, s19, 4, v38
	v_add3_u32 v82, v37, v43, s38
	v_add3_u32 v83, v37, v38, s38
	v_mad_u64_u32 v[42:43], null, s19, 30, v[38:39]
	v_add3_u32 v38, v37, v39, s38
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v39, 2, v52
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v47, 0x80000000, v47, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s7
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v43, 4, v52
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v48, 0x80000000, v48, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s0, s6
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v84, 8, v52
	v_or_b32_e32 v85, 16, v52
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v49, 0x80000000, v49, s13
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s13, s36, v39
	v_cmp_gt_i32_e64 s14, s36, v43
	v_cmp_gt_i32_e64 s15, s36, v84
	v_cmp_gt_i32_e64 s16, s36, v85
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_mov_b32 s28, s20
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s13
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v44, v37, v44, s38
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v64, 0x80000000, v64, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s14
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v45, v37, v45, s38
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s17
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s17, s0, s15
	s_and_b32 s0, s0, s16
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s17
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	s_clause 0xf
	buffer_load_u8 v50, v50, s[28:31], 0 offen
	buffer_load_u8 v64, v64, s[28:31], 0 offen
	buffer_load_u8 v65, v65, s[28:31], 0 offen
	buffer_load_u8 v68, v68, s[28:31], 0 offen
	buffer_load_u8 v66, v66, s[28:31], 0 offen
	buffer_load_u8 v69, v69, s[28:31], 0 offen
	buffer_load_u8 v70, v70, s[28:31], 0 offen
	buffer_load_u8 v71, v71, s[28:31], 0 offen
	buffer_load_u8 v67, v67, s[28:31], 0 offen
	buffer_load_u8 v72, v72, s[28:31], 0 offen
	buffer_load_u8 v73, v73, s[28:31], 0 offen
	buffer_load_u8 v74, v74, s[28:31], 0 offen
	buffer_load_u8 v86, v51, s[28:31], 0 offen
	buffer_load_u8 v87, v47, s[28:31], 0 offen
	buffer_load_u8 v88, v48, s[28:31], 0 offen
	buffer_load_u8 v89, v49, s[28:31], 0 offen
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v47, v37, v75, s38
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v48, v37, v76, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v51, 0x80000000, v83, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v49, v37, v77, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v40, v37, v40, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v48, 0x80000000, v48, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v41, v37, v41, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v42, v37, v42, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v37, v37, v78, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v75, 0x80000000, v79, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s1
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s29, s23, 0xffff
	v_cndmask_b32_e64 v76, 0x80000000, v80, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_mov_b32 s28, s22
	v_cndmask_b32_e64 v77, 0x80000000, v81, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v78, v51, s[28:31], 0 offen
	buffer_load_u8 v79, v47, s[28:31], 0 offen
	buffer_load_u8 v80, v48, s[28:31], 0 offen
	buffer_load_u8 v81, v46, s[28:31], 0 offen
	buffer_load_u8 v83, v49, s[28:31], 0 offen
	buffer_load_u8 v75, v75, s[28:31], 0 offen
	buffer_load_u8 v76, v76, s[28:31], 0 offen
	buffer_load_u8 v77, v77, s[28:31], 0 offen
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v97, 0, v0
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v46, 0x80000000, v82, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1386 63 is_stmt 1             ; ragged.py:1386:63
	s_add_i32 s36, s36, -1
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s4, s36, v54
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s9, s36, v58
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s36, v43
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s0, vcc_lo, s7
	s_and_b32 vcc_lo, vcc_lo, s6
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	s_clause 0x7
	buffer_load_u8 v82, v37, s[28:31], 0 offen
	buffer_load_u8 v90, v46, s[28:31], 0 offen
	buffer_load_u8 v91, v44, s[28:31], 0 offen
	buffer_load_u8 v92, v45, s[28:31], 0 offen
	buffer_load_u8 v93, v38, s[28:31], 0 offen
	buffer_load_u8 v94, v40, s[28:31], 0 offen
	buffer_load_u8 v95, v41, s[28:31], 0 offen
	buffer_load_u8 v96, v42, s[28:31], 0 offen
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s36, v52
	v_cmp_eq_u32_e64 s0, s36, v39
	v_cmp_eq_u32_e64 s7, s36, v85
	v_cmp_eq_u32_e64 s8, s36, v57
	v_cmp_eq_u32_e64 s3, s36, v84
	v_cmp_eq_u32_e64 s5, s36, v55
	v_cmp_eq_u32_e64 s10, s36, v59
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s15, s37, vcc_lo
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s2, s36, v53
	v_cmp_eq_u32_e64 s6, s36, v56
	v_cmp_eq_u32_e64 s11, s36, v60
	v_cmp_eq_u32_e64 s12, s36, v61
	v_cmp_eq_u32_e64 s13, s36, v62
	v_cmp_eq_u32_e64 s14, s36, v63
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s0, s37, s0
	s_and_b32 s4, s37, s4
	s_and_b32 s7, s37, s7
	s_and_b32 s9, s37, s9
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v98, 0, v33
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s1, s37, s1
	s_and_b32 s8, s37, s8
	s_and_b32 s3, s37, s3
	s_and_b32 s5, s37, s5
	s_and_b32 s10, s37, s10
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add3_u32 v36, 0, v34, v36
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s2, s37, s2
	s_and_b32 s6, s37, s6
	s_and_b32 s11, s37, s11
	s_and_b32 s12, s37, s12
	s_and_b32 s13, s37, s13
	s_and_b32 s14, s37, s14
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1389 62 is_stmt 0             ; ragged.py:1389:62
	s_waitcnt vmcnt(31)
	v_and_b16 v37.l, v50.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v37.h, v64.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v38.l, v65.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v39.h, v68.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v39.l, v66.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v40.l, v69.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v37.l, v50.l, v37.l, s15
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(25)
	v_and_b16 v40.h, v70.l, 15
	s_waitcnt vmcnt(23)
	v_and_b16 v38.h, v67.l, 15
	v_and_b16 v41.l, v71.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v42.l, v73.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v42.h, v74.l, 15
	v_and_b16 v41.h, v72.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v43.l, v86.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v43.h, v87.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v44.l, v88.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v44.h, v89.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v37.h, v64.l, v37.h, s0
	v_cndmask_b16 v40.l, v69.l, v40.l, s4
	v_cndmask_b16 v42.l, v73.l, v42.l, s9
	v_cndmask_b16 v38.l, v65.l, v38.l, s1
	v_cndmask_b16 v39.l, v66.l, v39.l, s3
	v_cndmask_b16 v40.h, v70.l, v40.h, s5
	v_cndmask_b16 v42.h, v74.l, v42.h, s10
	v_cndmask_b16 v38.h, v67.l, v38.h, s7
	v_cndmask_b16 v39.h, v68.l, v39.h, s2
	v_cndmask_b16 v41.l, v71.l, v41.l, s6
	v_cndmask_b16 v41.h, v72.l, v41.h, s8
	v_cndmask_b16 v43.l, v86.l, v43.l, s11
	v_cndmask_b16 v43.h, v87.l, v43.h, s12
	v_cndmask_b16 v44.l, v88.l, v44.l, s13
	v_cndmask_b16 v44.h, v89.l, v44.h, s14
	ds_store_b8 v97, v37
	ds_store_b8_d16_hi v97, v37 offset:128
	ds_store_b8 v97, v38 offset:256
	ds_store_b8 v97, v39 offset:512
	ds_store_b8_d16_hi v97, v39 offset:384
	ds_store_b8 v97, v40 offset:640
	ds_store_b8_d16_hi v97, v40 offset:768
	ds_store_b8 v97, v41 offset:896
	ds_store_b8_d16_hi v97, v38 offset:1024
	ds_store_b8_d16_hi v97, v41 offset:1152
	ds_store_b8 v97, v42 offset:1280
	ds_store_b8_d16_hi v97, v42 offset:1408
	ds_store_b8 v97, v43 offset:1536
	ds_store_b8_d16_hi v97, v43 offset:1664
	ds_store_b8 v97, v44 offset:1792
	ds_store_b8_d16_hi v97, v44 offset:1920
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v45.l, v78.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v45.h, v79.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v46.l, v80.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v46.h, v81.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v47.l, v83.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v47.h, v75.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v48.l, v76.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v48.h, v77.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v69.l, v78.l, v45.l, s15
	v_cndmask_b16 v69.h, v79.l, v45.h, s0
	v_cndmask_b16 v70.l, v80.l, v46.l, s1
	v_cndmask_b16 v70.h, v81.l, v46.h, s2
	v_cndmask_b16 v71.l, v83.l, v47.l, s3
	v_cndmask_b16 v71.h, v75.l, v47.h, s4
	v_cndmask_b16 v72.l, v76.l, v48.l, s5
	v_cndmask_b16 v72.h, v77.l, v48.h, s6
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v49.l, v82.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v49.h, v90.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v50.l, v91.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v50.h, v92.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v51.l, v93.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v51.h, v94.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v52.l, v95.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v52.h, v96.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v73.l, v82.l, v49.l, s7
	v_cndmask_b16 v73.h, v90.l, v49.h, s8
	v_cndmask_b16 v74.l, v91.l, v50.l, s9
	v_cndmask_b16 v74.h, v92.l, v50.h, s10
	v_cndmask_b16 v75.l, v93.l, v51.l, s11
	v_cndmask_b16 v75.h, v94.l, v51.h, s12
	v_cndmask_b16 v76.l, v95.l, v52.l, s13
	v_cndmask_b16 v76.h, v96.l, v52.h, s14
	.loc	1 1391 31 is_stmt 1             ; ragged.py:1391:31
	ds_load_u8 v77, v98 offset:448
	ds_load_u8 v78, v98 offset:384
	ds_load_u8 v79, v98 offset:320
	ds_load_u8 v80, v98 offset:256
	ds_load_u8 v48, v98 offset:480
	ds_load_u8 v51, v98 offset:416
	ds_load_u8 v54, v98 offset:352
	ds_load_u8 v56, v98 offset:288
	ds_load_u8 v81, v98 offset:192
	ds_load_u8 v82, v98 offset:128
	ds_load_u8 v83, v98 offset:64
	ds_load_u8 v57, v98 offset:224
	ds_load_u8 v58, v98 offset:160
	ds_load_u8 v59, v98 offset:96
	ds_load_u8 v84, v98
	ds_load_u8 v62, v98 offset:32
	ds_load_u8 v85, v98 offset:704
	ds_load_u8 v86, v98 offset:640
	ds_load_u8 v87, v98 offset:576
	ds_load_u8 v88, v98 offset:512
	ds_load_u8 v45, v98 offset:736
	ds_load_u8 v46, v98 offset:672
	ds_load_u8 v49, v98 offset:608
	ds_load_u8 v52, v98 offset:544
	ds_load_u8 v89, v98 offset:960
	ds_load_u8 v90, v98 offset:896
	ds_load_u8 v91, v98 offset:832
	ds_load_u8 v92, v98 offset:768
	ds_load_u8 v60, v98 offset:992
	ds_load_u8 v61, v98 offset:928
	ds_load_u8 v64, v98 offset:864
	ds_load_u8 v66, v98 offset:800
	ds_load_u8 v93, v98 offset:1216
	ds_load_u8 v94, v98 offset:1152
	ds_load_u8 v95, v98 offset:1088
	ds_load_u8 v96, v98 offset:1024
	ds_load_u8 v47, v98 offset:1248
	ds_load_u8 v50, v98 offset:1184
	ds_load_u8 v53, v98 offset:1120
	ds_load_u8 v55, v98 offset:1056
	ds_load_u8 v99, v98 offset:1472
	ds_load_u8 v100, v98 offset:1408
	ds_load_u8 v101, v98 offset:1344
	ds_load_u8 v102, v98 offset:1280
	ds_load_u8 v63, v98 offset:1504
	ds_load_u8 v65, v98 offset:1440
	ds_load_u8 v67, v98 offset:1376
	ds_load_u8 v68, v98 offset:1312
	ds_load_u8 v103, v98 offset:1728
	ds_load_u8 v104, v98 offset:1664
	ds_load_u8 v105, v98 offset:1600
	ds_load_u8 v106, v98 offset:1536
	ds_load_u8 v37, v98 offset:1760
	ds_load_u8 v38, v98 offset:1696
	ds_load_u8 v39, v98 offset:1632
	ds_load_u8 v40, v98 offset:1568
	ds_load_u8 v107, v98 offset:1984
	ds_load_u8 v108, v98 offset:1920
	ds_load_u8 v109, v98 offset:1856
	ds_load_u8 v110, v98 offset:1792
	ds_load_u8 v41, v98 offset:2016
	ds_load_u8 v42, v98 offset:1952
	ds_load_u8 v43, v98 offset:1888
	ds_load_u8 v44, v98 offset:1824
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v97, v69
	ds_store_b8_d16_hi v97, v69 offset:128
	ds_store_b8 v97, v70 offset:256
	ds_store_b8_d16_hi v97, v70 offset:384
	ds_store_b8 v97, v71 offset:512
	ds_store_b8_d16_hi v97, v71 offset:640
	ds_store_b8 v97, v72 offset:768
	ds_store_b8_d16_hi v97, v72 offset:896
	ds_store_b8 v97, v73 offset:1024
	ds_store_b8_d16_hi v97, v73 offset:1152
	ds_store_b8 v97, v74 offset:1280
	ds_store_b8_d16_hi v97, v74 offset:1408
	ds_store_b8 v97, v75 offset:1536
	ds_store_b8_d16_hi v97, v75 offset:1664
	ds_store_b8 v97, v76 offset:1792
	ds_store_b8_d16_hi v97, v76 offset:1920
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v71, v36 offset:320
	ds_load_u8 v72, v36 offset:256
	ds_load_u8 v73, v36 offset:448
	ds_load_u8 v74, v36 offset:384
	v_perm_b32 v69, v80, v79, 0xc0c0004
	v_perm_b32 v70, v78, v77, 0xc0c0004
	ds_load_u8 v77, v36 offset:64
	ds_load_u8 v78, v36
	ds_load_u8 v79, v36 offset:192
	ds_load_u8 v80, v36 offset:128
	v_perm_b32 v75, v84, v83, 0xc0c0004
	v_perm_b32 v76, v82, v81, 0xc0c0004
	ds_load_u8 v81, v36 offset:480
	ds_load_u8 v82, v36 offset:416
	ds_load_u8 v83, v36 offset:352
	ds_load_u8 v84, v36 offset:288
	v_lshl_or_b32 v70, v70, 16, v69
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_lshl_or_b32 v69, v76, 16, v75
	ds_load_u8 v75, v36 offset:832
	ds_load_u8 v76, v36 offset:768
	ds_load_u8 v97, v36 offset:960
	ds_load_u8 v98, v36 offset:896
	ds_load_u8 v111, v36 offset:224
	ds_load_u8 v112, v36 offset:160
	ds_load_u8 v113, v36 offset:96
	ds_load_u8 v114, v36 offset:32
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v54, v56, v54, 0xc0c0004
	v_perm_b32 v48, v51, v48, 0xc0c0004
	v_perm_b32 v51, v62, v59, 0xc0c0004
	v_perm_b32 v58, v58, v57, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v59, v48, 16, v54
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v72, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v73, v78, v77, 0xc0c0004
	v_perm_b32 v77, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v79, v88, v87, 0xc0c0004
	v_perm_b32 v80, v86, v85, 0xc0c0004
	ds_load_u8 v85, v36 offset:576
	ds_load_u8 v86, v36 offset:512
	ds_load_u8 v87, v36 offset:704
	ds_load_u8 v88, v36 offset:640
	v_perm_b32 v78, v90, v89, 0xc0c0004
	v_lshl_or_b32 v72, v72, 16, v71
	v_lshl_or_b32 v71, v74, 16, v73
	v_lshl_or_b32 v73, v80, 16, v79
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_lshl_or_b32 v74, v78, 16, v77
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v76, v98, v97, 0xc0c0004
	ds_load_u8 v77, v36 offset:1344
	ds_load_u8 v78, v36 offset:1280
	ds_load_u8 v79, v36 offset:1472
	ds_load_u8 v80, v36 offset:1408
	ds_load_u8 v97, v36 offset:736
	ds_load_u8 v98, v36 offset:672
	ds_load_u8 v115, v36 offset:608
	ds_load_u8 v116, v36 offset:544
	ds_load_u8 v89, v36 offset:992
	ds_load_u8 v90, v36 offset:928
	ds_load_u8 v91, v36 offset:864
	ds_load_u8 v92, v36 offset:800
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v84, v114, v113, 0xc0c0004
	v_lshl_or_b32 v58, v58, 16, v51
	v_perm_b32 v54, v66, v64, 0xc0c0004
	v_lshl_or_b32 v82, v81, 16, v83
	v_perm_b32 v83, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v52, v52, v49, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v88, v87, 0xc0c0004
	ds_load_u8 v87, v36 offset:1088
	ds_load_u8 v88, v36 offset:1024
	v_perm_b32 v46, v46, v45, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v75, v86, 16, v85
	v_perm_b32 v85, v102, v101, 0xc0c0004
	v_perm_b32 v101, v78, v77, 0xc0c0004
	ds_load_u8 v77, v36 offset:1216
	ds_load_u8 v78, v36 offset:1152
	v_perm_b32 v86, v100, v99, 0xc0c0004
	ds_load_u8 v94, v36 offset:1504
	ds_load_u8 v96, v36 offset:1440
	ds_load_u8 v99, v36 offset:1376
	ds_load_u8 v100, v36 offset:1312
	ds_load_u8 v102, v36 offset:1248
	ds_load_u8 v117, v36 offset:1184
	ds_load_u8 v118, v36 offset:1120
	ds_load_u8 v119, v36 offset:1056
	v_lshl_or_b32 v80, v79, 16, v101
	v_perm_b32 v101, v106, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[58:59], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v60, 16, v54
	v_perm_b32 v50, v50, v47, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[73:74], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v38, v38, v37, 0xc0c0004
	v_lshl_or_b32 v37, v41, 16, v43
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v78, v77, 0xc0c0004
	v_lshl_or_b32 v77, v93, 16, v95
	v_lshl_or_b32 v78, v86, 16, v85
	v_perm_b32 v85, v112, v111, 0xc0c0004
	v_perm_b32 v86, v108, v107, 0xc0c0004
	v_lshl_or_b32 v79, v88, 16, v87
	ds_load_u8 v87, v36 offset:1856
	ds_load_u8 v88, v36 offset:1792
	ds_load_u8 v93, v36 offset:1984
	ds_load_u8 v95, v36 offset:1920
	ds_load_u8 v104, v36 offset:1600
	ds_load_u8 v105, v36 offset:1536
	ds_load_u8 v106, v36 offset:1728
	ds_load_u8 v107, v36 offset:1664
	v_lshl_or_b32 v81, v85, 16, v84
	v_lshl_or_b32 v84, v86, 16, v83
	v_perm_b32 v85, v92, v91, 0xc0c0004
	v_perm_b32 v86, v90, v89, 0xc0c0004
	v_perm_b32 v90, v98, v97, 0xc0c0004
	ds_load_u8 v91, v36 offset:2016
	ds_load_u8 v92, v36 offset:1952
	ds_load_u8 v97, v36 offset:1888
	ds_load_u8 v98, v36 offset:1824
	v_lshl_or_b32 v83, v103, 16, v101
	v_perm_b32 v89, v116, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v86, 16, v85
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[58:59], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v90, 16, v89
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v89, v119, v118, 0xc0c0004
	v_perm_b32 v90, v117, v102, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v105, v104, 0xc0c0004
	v_perm_b32 v88, v95, v93, 0xc0c0004
	ds_load_u8 v93, v36 offset:1760
	ds_load_u8 v95, v36 offset:1696
	ds_load_u8 v101, v36 offset:1632
	ds_load_u8 v36, v36 offset:1568
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v104, v107, v106, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v56, v90, 16, v89
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v92, v91, 0xc0c0004
	v_lshl_or_b32 v86, v88, 16, v87
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v98, v97, 0xc0c0004
	v_perm_b32 v87, v100, v99, 0xc0c0004
	v_perm_b32 v88, v96, v94, 0xc0c0004
	v_lshl_or_b32 v85, v104, 16, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v45, v51, 16, v48
	v_lshl_or_b32 v48, v46, 16, v52
	v_perm_b32 v46, v68, v67, 0xc0c0004
	v_perm_b32 v51, v65, v63, 0xc0c0004
	v_perm_b32 v52, v55, v53, 0xc0c0004
	v_lshl_or_b32 v57, v88, 16, v87
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[48:49], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v95, v93, 0xc0c0004
	v_lshl_or_b32 v47, v51, 16, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v101, 0xc0c0004
	v_lshl_or_b32 v46, v50, 16, v52
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[48:49], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v53, 16, v36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[46:47], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v38, 16, v39
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[46:47], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[83:84], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[36:37], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[36:37], v[9:16] neg_lo:[1,1,0]
.LBB0_6:
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v65, s35, v33
	.loc	1 1404 33 is_stmt 1             ; ragged.py:1404:33
	s_mul_i32 s0, s34, s18
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s1, s34, s19
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s2, s35, s0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v34, v36, 1, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v66, s2, v33, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v65
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s3, s33, s1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v59, 32, v33
	v_or_b32_e32 v57, 2, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v63, s33, v34
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v56, 4, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v66, s3, v34, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v62, s33, v57
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v63
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v55, 6, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v61, s33, v56
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v57, s3, v57, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v53, 8, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v63, 0x80000000, v66, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v62
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v60, s33, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v56, s3, v56, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v44, 10, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v58, s33, v53
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v61
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v55, s3, v55, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v43, 12, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v54, s33, v44
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v53, s3, v53, 1
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v60
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v42, 14, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v52, s33, v43
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v44, s3, v44, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v41, 32, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v58
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v51, s33, v42
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v43, s3, v43, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v40, 34, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v50, s33, v41
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v54
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v42, s3, v42, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v39, 36, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v49, s33, v40
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v64, s35, v59
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v52
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v41, s3, v41, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v38, 38, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v48, s33, v39
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v67, s2, v59, 1
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v51
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v64
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s3, v40, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v37, 40, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v47, s33, v38
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v50
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v39, s3, v39, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v70, v1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v64, 0x80000000, v67, vcc_lo
	s_and_b32 s45, s25, 0xffff
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v49
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s44, s24
	s_clause 0x1
	buffer_load_u16 v65, v65, s[44:47], 0 offen
	buffer_load_u16 v64, v64, s[44:47], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v48
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v36, 42, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v46, s33, v37
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v38, s3, v38, 1
	v_add_lshl_u32 v37, s3, v37, 1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v47
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v45, s33, v36
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s45, s27, 0xffff
	s_mov_b32 s44, s26
	s_clause 0x7
	buffer_load_u16 v52, v63, s[44:47], 0 offen
	buffer_load_u16 v54, v57, s[44:47], 0 offen
	buffer_load_u16 v56, v56, s[44:47], 0 offen
	buffer_load_u16 v55, v55, s[44:47], 0 offen
	buffer_load_u16 v53, v53, s[44:47], 0 offen
	buffer_load_u16 v57, v44, s[44:47], 0 offen
	buffer_load_u16 v58, v43, s[44:47], 0 offen
	buffer_load_u16 v60, v42, s[44:47], 0 offen
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v46
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v36, s3, v36, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s2, s19
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s2, s2, s33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v45
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s19, v33, s[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	s_clause 0x5
	buffer_load_u16 v61, v40, s[44:47], 0 offen
	buffer_load_u16 v62, v41, s[44:47], 0 offen
	buffer_load_u16 v63, v38, s[44:47], 0 offen
	buffer_load_u16 v66, v39, s[44:47], 0 offen
	buffer_load_u16 v67, v36, s[44:47], 0 offen
	buffer_load_u16 v68, v37, s[44:47], 0 offen
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v36, 44, v34
	v_or_b32_e32 v34, 46, v34
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s19, v59, s[2:3]
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v74, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v37, s33, v36
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v36, s3, v36, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v38, s33, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s3, v34, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v37
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v38
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	s_clause 0x1
	buffer_load_u16 v51, v36, s[44:47], 0 offen
	buffer_load_u16 v50, v34, s[44:47], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v34, 39, v35
	v_or_b32_e32 v36, 38, v35
	v_or_b32_e32 v37, 37, v35
	v_or_b32_e32 v38, 36, v35
	v_or_b32_e32 v39, 35, v35
	v_or_b32_e32 v40, 34, v35
	v_or_b32_e32 v41, 33, v35
	v_or_b32_e32 v42, 32, v35
	v_or_b32_e32 v43, 7, v35
	v_or_b32_e32 v44, 6, v35
	v_or_b32_e32 v45, 5, v35
	v_or_b32_e32 v46, 4, v35
	v_or_b32_e32 v47, 3, v35
	v_or_b32_e32 v48, 2, v35
	v_or_b32_e32 v49, 1, v35
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v5.h, 0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s33, v35
	v_or_b32_e32 v75, s33, v34
	v_or_b32_e32 v76, s33, v36
	v_or_b32_e32 v77, s33, v37
	v_or_b32_e32 v78, s33, v38
	v_or_b32_e32 v79, s33, v39
	v_or_b32_e32 v80, s33, v40
	v_or_b32_e32 v81, s33, v41
	v_or_b32_e32 v82, s33, v42
	v_or_b32_e32 v83, s33, v43
	v_or_b32_e32 v84, s33, v44
	v_or_b32_e32 v85, s33, v45
	v_or_b32_e32 v86, s33, v46
	v_or_b32_e32 v87, s33, v47
	v_or_b32_e32 v88, s33, v48
	v_or_b32_e32 v89, s33, v49
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v69
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.h, v5.h
	v_mov_b16_e32 v92.h, v5.h
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s19, v75
	v_cmp_gt_i32_e64 s3, s19, v76
	v_cmp_gt_i32_e64 s4, s19, v77
	v_cmp_gt_i32_e64 s5, s19, v78
	v_cmp_gt_i32_e64 s6, s19, v79
	v_cmp_gt_i32_e64 s7, s19, v80
	v_cmp_gt_i32_e64 s8, s19, v81
	v_cmp_gt_i32_e64 s9, s19, v82
	v_cmp_gt_i32_e64 s10, s19, v83
	v_cmp_gt_i32_e64 s11, s19, v84
	v_cmp_gt_i32_e64 s12, s19, v85
	v_cmp_gt_i32_e64 s13, s19, v86
	v_cmp_gt_i32_e64 s14, s19, v87
	v_cmp_gt_i32_e64 s15, s19, v88
	v_cmp_gt_i32_e64 s16, s19, v89
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v90.h, v5.h
	v_mov_b16_e32 v91.h, v5.h
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v93.h, v5.h
	v_mov_b16_e32 v94.h, v5.h
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v4, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v19, v4, v19 :: v_dual_lshlrev_b32 v2, 16, v65
	v_mul_f32_e32 v33, v70, v2
	v_mul_f32_e32 v59, v71, v2
	v_mul_f32_e32 v64, v72, v2
	v_mul_f32_e32 v65, v73, v2
	v_dual_mul_f32 v70, v74, v2 :: v_dual_mul_f32 v17, v4, v17
	v_dual_mul_f32 v6, v6, v2 :: v_dual_mul_f32 v21, v4, v21
	v_dual_mul_f32 v7, v7, v2 :: v_dual_mul_f32 v20, v4, v20
	v_mul_f32_e32 v8, v8, v2
	v_dual_mul_f32 v25, v25, v2 :: v_dual_mul_f32 v24, v4, v24
	v_dual_mul_f32 v26, v26, v2 :: v_dual_mul_f32 v23, v4, v23
	v_dual_mul_f32 v27, v27, v2 :: v_dual_mul_f32 v12, v4, v12
	v_mul_f32_e32 v28, v28, v2
	v_mul_f32_e32 v29, v29, v2
	v_dual_mul_f32 v30, v30, v2 :: v_dual_mul_f32 v9, v4, v9
	v_mul_f32_e32 v31, v31, v2
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v2, v32, v2 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v32, 16, v52
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v18, v4, v18
	v_dual_mul_f32 v11, v4, v11 :: v_dual_lshlrev_b32 v52, 16, v54
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v54, 16, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v33, v33, v32
	v_dual_mul_f32 v17, v17, v32 :: v_dual_lshlrev_b32 v32, 16, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v55, 16, v57
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v57, 16, v58
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v22, v4, v22
	v_dual_mul_f32 v10, v4, v10 :: v_dual_mul_f32 v59, v59, v52
	v_dual_mul_f32 v14, v4, v14 :: v_dual_mul_f32 v65, v65, v32
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v13, v4, v13 :: v_dual_lshlrev_b32 v56, 16, v60
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v19, v19, v54 :: v_dual_lshlrev_b32 v58, 16, v61
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v21, v21, v53 :: v_dual_lshlrev_b32 v60, 16, v62
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v18, v18, v52 :: v_dual_lshlrev_b32 v61, 16, v63
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v7, v7, v57 :: v_dual_lshlrev_b32 v62, 16, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v52, v33, 16, 1
	v_mov_b16_e32 v5.l, v17.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v64, v64, v54 :: v_dual_mul_f32 v25, v25, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v20, v20, v32 :: v_dual_mul_f32 v27, v27, v62
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v63, 16, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v23, v23, v57 :: v_dual_lshlrev_b32 v66, 16, v68
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v33, v33
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v70, v53 :: v_dual_mul_f32 v9, v9, v60
	v_dual_mul_f32 v6, v6, v55 :: v_dual_mul_f32 v11, v11, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v22, v22, v55 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v8, v8, v56 :: v_dual_and_b32 v53, 1, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v33, v33, v52, 0x7fff
	v_bfe_u32 v52, v59, 16, 1
	v_bfe_u32 v54, v64, 16, 1
	v_bfe_u32 v55, v65, 16, 1
	v_mov_b16_e32 v5.l, v20.h
	v_cmp_o_f32_e64 s18, v17, v17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v26, v26, v58
	v_dual_mul_f32 v28, v28, v61 :: v_dual_mul_f32 v13, v13, v66
	v_mul_f32_e32 v12, v12, v61
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s19, v59, v59
	v_mov_b16_e32 v69.l, v18.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v24, v24, v56
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v57, v6, 16, 1
	v_bfe_u32 v60, v8, 16, 1
	v_mov_b16_e32 v92.l, v23.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v10, v10, v58
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v58, v7, 16, 1
	v_bfe_u32 v61, v25, 16, 1
	v_add3_u32 v52, v59, v52, 0x7fff
	v_add3_u32 v17, v17, v53, 0x7fff
	v_add3_u32 v53, v64, v54, 0x7fff
	v_add3_u32 v54, v65, v55, 0x7fff
	v_and_b32_e32 v55, 1, v5
	v_mov_b16_e32 v5.l, v22.h
	v_cmp_o_f32_e64 s26, v6, v6
	v_cmp_o_f32_e64 s29, v7, v7
	v_cmp_o_f32_e64 s30, v8, v8
	v_cmp_o_f32_e64 s34, v25, v25
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s17
	v_and_b32_e32 v59, 1, v69
	v_add3_u32 v6, v6, v57, 0x7fff
	v_add3_u32 v7, v7, v58, 0x7fff
	v_add3_u32 v8, v8, v60, 0x7fff
	v_and_b32_e32 v57, 1, v92
	v_add3_u32 v25, v25, v61, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v52.h, s19
	v_and_b32_e32 v52, 1, v5
	v_mov_b16_e32 v5.l, v24.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v30, v30, v63
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s33, v23, v23
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s29
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s30
	v_add3_u32 v8, v23, v57, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s34
	v_and_b32_e32 v25, 1, v5
	v_mov_b16_e32 v5.l, v10.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v14, v14, v63
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v63, v27, 16, 1
	v_mov_b16_e32 v90.l, v19.h
	v_bfe_u32 v56, v32, 16, 1
	v_mov_b16_e32 v91.l, v21.h
	v_bfe_u32 v62, v26, 16, 1
	v_cmp_o_f32_e64 s38, v27, v27
	v_add3_u32 v27, v27, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v64, v64
	v_cmp_o_f32_e64 s25, v32, v32
	v_mov_b16_e32 v93.l, v9.h
	v_mov_b16_e32 v94.l, v11.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v15, v4, v15 :: v_dual_and_b32 v64, 1, v90
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v32, v32, v56, 0x7fff
	v_and_b32_e32 v56, 1, v91
	v_cmp_o_f32_e64 s35, v26, v26
	v_add3_u32 v26, v26, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v18, v18
	v_cmp_o_f32_e64 s23, v20, v20
	v_add3_u32 v18, v18, v59, 0x7fff
	v_add3_u32 v20, v20, v55, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s38
	v_and_b32_e32 v27, 1, v5
	v_mov_b16_e32 v5.l, v12.h
	v_cmp_o_f32_e64 s24, v19, v19
	v_cmp_o_f32_e64 s28, v21, v21
	v_and_b32_e32 v58, 1, v93
	v_and_b32_e32 v60, 1, v94
	v_add3_u32 v19, v19, v64, 0x7fff
	v_add3_u32 v21, v21, v56, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s25
	v_cndmask_b16 v32.h, 0x7fff, v6.h, s26
	v_cndmask_b16 v6.h, 0x7fff, v18.h, s20
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s23
	v_and_b32_e32 v20, 1, v5
	v_cmp_o_f32_e64 s27, v22, v22
	v_cmp_o_f32_e64 s31, v24, v24
	v_cmp_o_f32_e64 s37, v9, v9
	v_cmp_o_f32_e64 s41, v11, v11
	v_bfe_u32 v68, v29, 16, 1
	v_add3_u32 v9, v9, v58, 0x7fff
	v_add3_u32 v11, v11, v60, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s24
	v_add3_u32 v19, v22, v52, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v21.h, s28
	v_add3_u32 v21, v24, v25, 0x7fff
	v_mov_b16_e32 v5.l, v14.h
	v_cmp_o_f32_e64 s36, v10, v10
	v_cmp_o_f32_e64 s40, v12, v12
	v_add3_u32 v10, v10, v27, 0x7fff
	v_add3_u32 v12, v12, v20, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s33
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s37
	v_cndmask_b16 v8.h, 0x7fff, v19.h, s27
	v_cndmask_b16 v9.h, 0x7fff, v21.h, s31
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s41
	v_add3_u32 v11, v29, v68, 0x7fff
	v_bfe_u32 v19, v30, 16, 1
	v_mov_b16_e32 v20.l, v13.h
	v_mov_b16_e32 v20.h, v5.h
	v_cmp_o_f32_e64 s17, v29, v29
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v4, v4, v16 :: v_dual_and_b32 v21, 1, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v6.l, 0x7fff, v17.h, s18
	v_add3_u32 v19, v30, v19, 0x7fff
	v_cmp_o_f32_e64 s18, v30, v30
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s17
	v_add3_u32 v21, v14, v21, 0x7fff
	v_cmp_o_f32_e64 s17, v14, v14
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s18
	v_add3_u32 v14, v13, v20, 0x7fff
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v51
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s22, v65, v65
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s17
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v50
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v13, v13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v16, v31, v19
	v_mul_f32_e32 v15, v15, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v19.h, v5.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v4, v4, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v20.l, 0x7fff, v14.h, s17
	v_bfe_u32 v13, v16, 16, 1
	v_mov_b16_e32 v19.l, v15.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v5.l, v4.h
	v_cmp_o_f32_e64 s17, v16, v16
	v_add3_u32 v13, v16, v13, 0x7fff
	v_and_b32_e32 v19, 1, v19
	v_bfe_u32 v14, v2, 16, 1
	v_and_b32_e32 v16, 1, v5
	v_cndmask_b16 v17.l, 0x7fff, v53.h, s21
	v_cndmask_b16 v17.h, 0x7fff, v54.h, s22
	v_cmp_o_f32_e64 s18, v2, v2
	v_add3_u32 v14, v2, v14, 0x7fff
	v_add3_u32 v16, v4, v16, 0x7fff
	v_cmp_o_f32_e64 s19, v4, v4
	v_cndmask_b16 v4.l, 0x7fff, v13.h, s17
	v_cmp_eq_u32_e64 s17, 0, v0
	v_cndmask_b16 v4.h, 0x7fff, v14.h, s18
	v_add3_u32 v2, v15, v19, 0x7fff
	v_mov_b32_e32 v19, 0x7632
	v_bfe_u32 v67, v28, 16, 1
	v_cndmask_b32_e64 v14, v7, v17, s17
	v_cndmask_b32_e64 v7, v17, v7, s17
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b32_e64 v21, v8, v6, s17
	v_cndmask_b32_e64 v6, v6, v8, s17
	v_cmp_o_f32_e64 s39, v28, v28
	v_add3_u32 v28, v28, v67, 0x7fff
	v_cndmask_b32_e64 v8, 0x1054, v17, s17
	v_cndmask_b32_e64 v17, 0x3276, v19, s17
	v_cmp_o_f32_e64 s20, v15, v15
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s35
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s39
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v17, v17, 8, v17
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s40
	v_cndmask_b16 v0.h, 0x7fff, v16.h, s19
	v_and_b32_e32 v8, 0x540054, v8
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s20
	v_cndmask_b32_e64 v13, v33, v32, s17
	v_and_b32_e32 v17, 0x760076, v17
	s_mov_b32 s18, 0x76543210
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v2, v32, v33, s17
	v_cndmask_b32_e64 v15, v11, v23, s17
	v_cndmask_b32_e64 v11, v23, v11, s17
	v_cndmask_b32_e64 v16, v4, v26, s17
	v_cndmask_b32_e64 v4, v26, v4, s17
	v_cndmask_b32_e64 v19, v9, v18, s17
	v_cndmask_b32_e64 v9, v18, v9, s17
	v_cndmask_b32_e64 v18, v20, v10, s17
	v_cndmask_b32_e64 v10, v10, v20, s17
	v_cndmask_b32_e64 v20, v0, v12, s17
	v_cndmask_b32_e64 v0, v12, v0, s17
	v_permlanex16_b32 v12, v13, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v13, v17, 4, v17
	v_and_b32_e32 v8, 0x5040504, v8
	v_add_lshl_u32 v50, v3, v35, 1
	v_permlanex16_b32 v7, v7, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x7060706, v13
	v_permlanex16_b32 v9, v9, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v12, v2, v8
	v_add_lshl_u32 v51, v3, v49, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v52, v3, v48, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v12, v2, v13
	v_perm_b32 v12, v7, v14, v8
	v_perm_b32 v7, v7, v14, v13
	v_perm_b32 v14, v11, v15, v8
	v_perm_b32 v11, v11, v15, v13
	v_perm_b32 v15, v4, v16, v8
	v_perm_b32 v4, v4, v16, v13
	v_perm_b32 v16, v6, v21, v8
	v_perm_b32 v6, v6, v21, v13
	v_perm_b32 v21, v9, v19, v8
	v_perm_b32 v9, v9, v19, v13
	v_perm_b32 v19, v10, v18, v8
	v_perm_b32 v10, v10, v18, v13
	v_perm_b32 v8, v0, v20, v8
	v_perm_b32 v0, v0, v20, v13
	v_mov_b16_e32 v13.l, v17.h
	v_mov_b16_e32 v13.h, v5.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v17, v50, s[44:47], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	v_add_lshl_u32 v17, v3, v47, 1
	buffer_store_b16 v13, v51, s[44:47], 0 offen
	v_add_lshl_u32 v13, v3, v46, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v5.l, v2.h
	buffer_store_b16 v2, v50, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v45, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v20.l, v12.h
	v_cndmask_b32_e64 v13, 0x80000000, v13, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v20.h, v5.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_mov_b16_e32 v18.h, v5.h
	v_mov_b16_e32 v22.h, v5.h
	v_mov_b16_e32 v23.h, v5.h
	v_mov_b16_e32 v24.h, v5.h
	v_mov_b16_e32 v25.h, v5.h
	v_mov_b16_e32 v26.h, v5.h
	v_mov_b16_e32 v27.h, v5.h
	v_mov_b16_e32 v28.h, v5.h
	v_mov_b16_e32 v29.h, v5.h
	v_mov_b16_e32 v30.h, v5.h
	v_mov_b16_e32 v31.h, v5.h
	v_mov_b16_e32 v32.h, v5.h
	v_mov_b16_e32 v33.h, v5.h
	buffer_store_b16 v5, v17, s[44:47], 0 offen
	v_add_lshl_u32 v5, v3, v44, 1
	buffer_store_b16 v12, v13, s[44:47], 0 offen
	v_add_lshl_u32 v12, v3, v43, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v20, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v42, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v18.l, v7.h
	v_cndmask_b32_e64 v12, 0x80000000, v12, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v7, v5, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v5, v3, v41, 1
	v_add_lshl_u32 v7, v3, v40, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v18, v12, s[44:47], 0 offen
	buffer_store_b16 v14, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v39, 1
	v_mov_b16_e32 v23.l, v14.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v22.l, v11.h
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v23, v5, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v5, v3, v38, 1
	buffer_store_b16 v11, v7, s[44:47], 0 offen
	v_add_lshl_u32 v7, v3, v37, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v22, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v36, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v25.l, v15.h
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v34, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	buffer_store_b16 v15, v5, s[44:47], 0 offen
	v_add_lshl_u32 v5, v1, v35, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v25, v7, s[44:47], 0 offen
	buffer_store_b16 v4, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v49, 1
	v_mov_b16_e32 v24.l, v4.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v27.l, v16.h
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v24, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v48, 1
	buffer_store_b16 v16, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v47, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v27, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v46, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v26.l, v6.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v6, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v45, 1
	buffer_store_b16 v26, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v21, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v43, 1
	v_mov_b16_e32 v29.l, v21.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v28.l, v9.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v29, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v42, 1
	buffer_store_b16 v9, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v41, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v28, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v40, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v31.l, v19.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v19, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v39, 1
	buffer_store_b16 v31, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v38, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v10, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v37, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v1, v36, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_lshl_u32 v1, v1, v34, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v30.l, v10.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v33.l, v8.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_mov_b16_e32 v32.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v30, v3, s[44:47], 0 offen
	buffer_store_b16 v8, v4, s[44:47], 0 offen
	buffer_store_b16 v33, v2, s[44:47], 0 offen
	buffer_store_b16 v0, v5, s[44:47], 0 offen
	buffer_store_b16 v32, v1, s[44:47], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 120
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 120
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12104
; TotalNumSgprs: 60
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 120
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
