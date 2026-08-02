	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b128 s[36:39], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v105, 15, v0
	s_load_b256 s[24:31], s[0:1], 0x0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v94, 2, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v92, 3, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v106, 0xf0, v0
	v_lshlrev_b32_e32 v93, 4, v105
	v_lshrrev_b32_e32 v97, 1, v0
	v_lshlrev_b32_e32 v107, 1, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v89, 24, v92
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s23, 0xff
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
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s11, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s10, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s10, s11
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
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s10
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s34, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s34, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s7, s2, s4
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s40, s34, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_abs_i32 s5, s7
	s_add_i32 s8, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s8
	s_xor_b32 s8, s7, s10
	s_mul_i32 s9, s4, s6
	s_ashr_i32 s13, s8, 31
	s_sub_i32 s5, s5, s9
	s_add_i32 s8, s4, 1
	s_sub_i32 s9, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s9, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s35, s34, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s14, s4, s13
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[34:35], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s6, s10
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s33, s6, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s7, s7, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v94
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s21, s7, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s36, s4
	s_addc_u32 s5, s37, s5
	s_load_b32 s37, s[0:1], 0x38
	s_load_b32 s12, s[4:5], 0x0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s21, v93
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s35, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s22, v1
	.loc	1 1361 39                       ; ragged.py:1361:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s36, s34, s37
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s0, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s0, s12, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s23, v2
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s3, 5
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s35, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	v_lshlrev_b32_e32 v3, 5, v105
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v1, 3, v106
	v_lshlrev_b32_e32 v9, 4, v0
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_mul_i32 s11, s11, s34
	v_mov_b32_e32 v34, v33
	v_and_or_b32 v6, v4, 24, v3
	v_xor_b32_e32 v4, v4, v94
	v_xor_b32_e32 v7, v89, v1
	v_dual_mov_b32 v38, v33 :: v_dual_and_b32 v9, 0xe00, v9
	v_mov_b32_e32 v40, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v35, v33 :: v_dual_and_b32 v4, 24, v4
	v_add3_u32 v1, s36, s35, v1
	s_sub_i32 s11, s13, s11
	v_dual_mov_b32 v36, v33 :: v_dual_and_b32 v5, 24, v97
	v_lshl_or_b32 v7, v105, 9, v7
	v_or3_b32 v3, v9, v4, v3
	s_sub_i32 s11, s11, s14
	v_add3_u32 v2, s33, s40, v94
	s_mul_i32 s10, s10, s11
	v_mul_lo_u32 v1, s23, v1
	s_lshl_b32 s10, s10, 8
	s_lshl_b32 s2, s2, 8
	v_xor_b32_e32 v5, v92, v5
	v_xor_b32_e32 v8, 8, v6
	v_xor_b32_e32 v10, 16, v6
	v_xor_b32_e32 v11, 24, v6
	v_xor_b32_e32 v12, 0x88, v7
	v_xor_b32_e32 v13, 0x110, v7
	v_xor_b32_e32 v4, 0x198, v7
	v_xor_b32_e32 v9, 8, v3
	v_xor_b32_e32 v14, 16, v3
	v_xor_b32_e32 v15, 24, v3
	s_add_i32 s2, s2, s10
	v_mad_u64_u32 v[90:91], null, v2, s37, v[89:90]
	s_add_i32 s10, s2, s23
	v_add3_u32 v95, s2, v1, v93
	v_add3_u32 v96, s10, v1, v93
	v_dual_mov_b32 v58, v33 :: v_dual_add_nc_u32 v91, 0, v5
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v98, 0, v6
	v_dual_mov_b32 v60, v33 :: v_dual_add_nc_u32 v99, 0, v8
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v100, 0, v10
	v_dual_mov_b32 v62, v33 :: v_dual_add_nc_u32 v101, 0, v11
	v_dual_mov_b32 v57, v33 :: v_dual_add_nc_u32 v102, 0, v7
	v_dual_mov_b32 v64, v33 :: v_dual_add_nc_u32 v103, 0, v12
	v_dual_mov_b32 v59, v33 :: v_dual_add_nc_u32 v104, 0, v13
	v_dual_mov_b32 v61, v33 :: v_dual_add_nc_u32 v108, 0, v4
	v_dual_mov_b32 v50, v33 :: v_dual_add_nc_u32 v109, 0, v3
	v_dual_mov_b32 v63, v33 :: v_dual_add_nc_u32 v110, 0, v9
	v_dual_mov_b32 v52, v33 :: v_dual_add_nc_u32 v111, 0, v14
	v_dual_mov_b32 v49, v33 :: v_dual_add_nc_u32 v112, 0, v15
	v_mov_b32_e32 v51, v33
	v_mov_b32_e32 v53, v33
	v_mov_b32_e32 v54, v33
	v_mov_b32_e32 v55, v33
	v_mov_b32_e32 v56, v33
	v_mov_b32_e32 v41, v33
	v_mov_b32_e32 v42, v33
	v_mov_b32_e32 v43, v33
	v_mov_b32_e32 v44, v33
	v_mov_b32_e32 v45, v33
	v_mov_b32_e32 v46, v33
	v_mov_b32_e32 v47, v33
	v_mov_b32_e32 v48, v33
	v_mov_b32_e32 v25, v33
	v_mov_b32_e32 v26, v33
	v_mov_b32_e32 v27, v33
	v_mov_b32_e32 v28, v33
	v_mov_b32_e32 v29, v33
	v_mov_b32_e32 v30, v33
	v_mov_b32_e32 v31, v33
	v_mov_b32_e32 v32, v33
	v_mov_b32_e32 v17, v33
	v_mov_b32_e32 v18, v33
	v_mov_b32_e32 v19, v33
	v_mov_b32_e32 v20, v33
	v_mov_b32_e32 v21, v33
	v_mov_b32_e32 v22, v33
	v_mov_b32_e32 v23, v33
	v_mov_b32_e32 v24, v33
	v_mov_b32_e32 v9, v33
	v_mov_b32_e32 v10, v33
	v_mov_b32_e32 v11, v33
	v_mov_b32_e32 v12, v33
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v14, v33
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v5, v33
	v_mov_b32_e32 v6, v33
	v_mov_b32_e32 v7, v33
	v_mov_b32_e32 v8, v33
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s25, 0xffff
	s_mov_b32 s4, s24
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	s_lshl_b32 s2, s23, 5
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v65, 0x80000000, v95, s0
	v_cndmask_b32_e64 v69, 0x80000000, v96, s0
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_add_nc_u32_e32 v73, s35, v90
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add_nc_u32_e32 v95, s2, v95
	v_add_nc_u32_e32 v96, s2, v96
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[8:11], 0 offen
	buffer_load_b128 v[69:72], v69, s[8:11], 0 offen
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s35, s35, 32
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s1
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s35, s3
	.loc	1 1362 34                       ; ragged.py:1362:34
	buffer_load_b64 v[73:74], v73, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(1)
	v_perm_b32 v75, v69, v65, 0x5010400
	v_perm_b32 v69, v69, v65, 0x7030602
	v_perm_b32 v76, v70, v66, 0x5010400
	v_perm_b32 v70, v70, v66, 0x7030602
	v_perm_b32 v77, v71, v67, 0x5010400
	v_perm_b32 v71, v71, v67, 0x7030602
	v_lshrrev_b32_e32 v79, 8, v75
	v_perm_b32 v78, v72, v68, 0x5010400
	v_perm_b32 v72, v72, v68, 0x7030602
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v91, v[73:74]
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_and_b16 v65.l, 0xff, v75.l
	v_lshrrev_b32_e32 v73, 24, v75
	v_and_b16 v65.h, 0xff, v75.h
	v_lshrrev_b32_e32 v74, 8, v69
	v_and_b16 v66.l, 0xff, v69.l
	v_lshrrev_b32_e32 v75, 24, v69
	v_and_b16 v66.h, 0xff, v69.h
	v_lshrrev_b32_e32 v80, 8, v76
	v_and_b16 v67.l, 0xff, v76.l
	v_lshrrev_b32_e32 v81, 24, v76
	v_and_b16 v67.h, 0xff, v76.h
	v_lshrrev_b32_e32 v76, 8, v70
	v_lshrrev_b32_e32 v82, 24, v70
	v_and_b16 v68.h, 0xff, v70.h
	v_lshrrev_b32_e32 v85, 8, v77
	v_and_b16 v69.l, 0xff, v77.l
	v_lshrrev_b32_e32 v86, 24, v77
	v_and_b16 v69.h, 0xff, v77.h
	v_lshrrev_b32_e32 v77, 8, v71
	v_lshrrev_b32_e32 v87, 24, v71
	v_and_b16 v70.h, 0xff, v71.h
	v_lshlrev_b16 v71.h, 8, v79.l
	v_and_b16 v68.l, 0xff, v70.l
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v113, 8, v78
	v_lshrrev_b32_e32 v79, 24, v78
	v_or_b16 v121.l, v65.l, v71.h
	v_lshlrev_b16 v71.h, 8, v73.l
	v_lshrrev_b32_e32 v73, 8, v72
	v_and_b16 v71.l, 0xff, v78.l
	v_and_b16 v65.l, 0xff, v78.h
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_or_b16 v121.h, v65.h, v71.h
	v_lshlrev_b16 v65.h, 8, v74.l
	v_lshrrev_b32_e32 v74, 24, v72
	v_lshlrev_b16 v71.h, 8, v81.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_barrier
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_or_b16 v122.l, v66.l, v65.h
	v_lshlrev_b16 v66.l, 8, v75.l
	v_and_b16 v65.h, 0xff, v72.l
	v_lshlrev_b16 v72.l, 8, v76.l
	v_or_b16 v123.h, v67.h, v71.h
	v_lshlrev_b16 v67.h, 8, v77.l
	v_or_b16 v122.h, v66.h, v66.l
	v_lshlrev_b16 v66.h, 8, v80.l
	v_or_b16 v124.l, v68.l, v72.l
	v_lshlrev_b16 v68.l, 8, v87.l
	v_and_b16 v66.l, 0xff, v72.h
	v_lshlrev_b16 v72.h, 8, v82.l
	v_or_b16 v123.l, v67.l, v66.h
	v_lshlrev_b16 v66.h, 8, v85.l
	v_lshlrev_b16 v67.l, 8, v86.l
	v_or_b16 v126.l, v70.l, v67.h
	v_or_b16 v126.h, v70.h, v68.l
	v_lshlrev_b16 v67.h, 8, v73.l
	v_or_b16 v125.l, v69.l, v66.h
	v_or_b16 v125.h, v69.h, v67.l
	v_lshlrev_b16 v66.h, 8, v113.l
	v_lshlrev_b16 v67.l, 8, v79.l
	v_lshlrev_b16 v68.l, 8, v74.l
	v_or_b16 v124.h, v68.h, v72.h
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[81:84], v98 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v98 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_or_b16 v127.l, v71.l, v66.h
	v_or_b16 v127.h, v65.l, v67.l
	v_or_b16 v128.l, v65.h, v67.h
	v_or_b16 v128.h, v66.l, v68.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[113:116], v99 offset1:1
	ds_load_2addr_stride64_b64 v[117:120], v99 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v100 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v100 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v101 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v101 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v102, v121
	ds_store_b16_d16_hi v102, v121 offset:32
	ds_store_b16 v102, v122 offset:64
	ds_store_b16_d16_hi v102, v122 offset:96
	ds_store_b16 v103, v123
	ds_store_b16_d16_hi v103, v123 offset:32
	ds_store_b16 v103, v124 offset:64
	ds_store_b16_d16_hi v103, v124 offset:96
	ds_store_b16 v104, v125
	ds_store_b16_d16_hi v104, v125 offset:32
	ds_store_b16 v104, v126 offset:64
	ds_store_b16_d16_hi v104, v126 offset:96
	ds_store_b16 v108, v127
	ds_store_b16_d16_hi v108, v127 offset:32
	ds_store_b16 v108, v128 offset:64
	ds_store_b16_d16_hi v108, v128 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[121:124], v109 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[121:122], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[123:124], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[121:122], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[123:124], v[83:84], v[41:48] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[81:84], v110 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[121:122], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[121:122], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[87:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[85:88], v111 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[113:114], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[113:114], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[115:116], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[117:118], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[117:118], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[119:120], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[119:120], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[81:84], v112 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[79:80], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[69:70], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[71:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[67:68], v[1:8] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s2, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s3, s2, 31
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s11, s2, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s35, s11
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s8, s33, s40
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s4, s23, 4
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v107, v65
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr8
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $sgpr4
.LBB0_8:
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v68, s35, v89
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshrrev_b32_e32 v65, 4, v106
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s12, s12, 0x80000001
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_eq_u32 s12, 1
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v69, 1, v68
	v_or_b32_e32 v70, 2, v68
	v_or_b32_e32 v71, 3, v68
	v_or_b32_e32 v72, 4, v68
	v_or_b32_e32 v73, 5, v68
	v_or_b32_e32 v74, 6, v68
	v_or_b32_e32 v75, 7, v68
	v_or_b32_e32 v66, s35, v65
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e32 vcc_lo, s11, v68
	v_cmp_gt_i32_e64 s2, s11, v69
	v_cmp_gt_i32_e64 s3, s11, v70
	v_cmp_gt_i32_e64 s4, s11, v71
	v_cmp_gt_i32_e64 s5, s11, v72
	v_cmp_gt_i32_e64 s6, s11, v73
	v_cmp_gt_i32_e64 s7, s11, v74
	v_cmp_gt_i32_e64 s8, s11, v75
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s47, -1, 0
	.loc	1 1386 63 is_stmt 0             ; ragged.py:1386:63
	s_add_i32 s20, s11, -1
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v67, 16, v66
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s12, s20, v69
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s11, v66
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s19, s20, v66
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v66, s37, v94
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, vcc_lo
	s_and_b32 s2, s1, s2
	s_and_b32 s3, s1, s3
	s_and_b32 s4, s1, s4
	s_and_b32 s5, s1, s5
	s_and_b32 s6, s1, s6
	s_and_b32 s7, s1, s7
	s_and_b32 s1, s1, s8
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s8, s33, s40
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s42, s47, s12
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s12, s8, s37
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s13, s20, v70
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s12, s35, s12
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s14, s20, v71
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v66, s12, v66, v89
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s15, s20, v72
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s10, s11, v67
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s11, s20, v68
	v_cmp_eq_u32_e64 s16, s20, v73
	v_cmp_eq_u32_e64 s17, s20, v74
	v_cmp_eq_u32_e64 s18, s20, v75
	v_cmp_eq_u32_e64 s20, s20, v67
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v67, 1, v66
	v_add_nc_u32_e32 v68, 2, v66
	v_add_nc_u32_e32 v69, 3, v66
	v_add_nc_u32_e32 v70, 4, v66
	v_add_nc_u32_e32 v71, 5, v66
	v_add_nc_u32_e32 v72, 6, v66
	v_add_nc_u32_e32 v73, 7, v66
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s43, s47, s13
	s_and_b32 s44, s47, s14
	s_and_b32 s45, s47, s15
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s13, s25, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s24
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mul_lo_u32 v65, s23, v65
	.loc	1 1387 34                       ; ragged.py:1387:34
	buffer_load_u8 v77, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v67, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s9
	s_and_b32 s0, s0, s10
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s41, s47, s11
	s_and_b32 s46, s47, s16
	.loc	1 1387 34                       ; ragged.py:1387:34
	buffer_load_u8 v78, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v68, s3
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s18, s47, s18
	s_and_b32 s16, s47, s19
	s_and_b32 s17, s47, s17
	s_and_b32 s11, s47, s20
	.loc	1 1387 34                       ; ragged.py:1387:34
	buffer_load_u8 v79, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v69, s4
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s4, s23, 4
	.loc	1 1387 34                       ; ragged.py:1387:34
	buffer_load_u8 v80, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v70, s5
	buffer_load_u8 v81, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v71, s6
	buffer_load_u8 v82, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v72, s7
	buffer_load_u8 v83, v66, s[12:15], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v73, s1
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_add_i32 s1, s35, s36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s1, s1, s23
	s_add_i32 s1, s1, s21
	.loc	1 1387 34                       ; ragged.py:1387:34
	buffer_load_u8 v84, v66, s[12:15], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v65, s1, v93, v65
	.loc	1 1388 34 is_stmt 0             ; ragged.py:1388:34
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v69, s4, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[12:15], 0 offen
	buffer_load_b128 v[69:72], v69, s[12:15], 0 offen
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1389 62 is_stmt 0             ; ragged.py:1389:62
	s_waitcnt vmcnt(9)
	v_and_b16 v73.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v73.l, v77.l, v73.l, s41
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(8)
	v_and_b16 v73.h, v78.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v73.h, v78.l, v73.h, s42
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(7)
	v_and_b16 v74.l, v79.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v74.l, v79.l, v74.l, s43
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(6)
	v_and_b16 v74.h, v80.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v74.h, v80.l, v74.h, s44
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(5)
	v_and_b16 v75.l, v81.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v75.l, v81.l, v75.l, s45
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(4)
	v_and_b16 v75.h, v82.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v75.h, v82.l, v75.h, s46
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(3)
	v_and_b16 v76.l, v83.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v76.l, v83.l, v76.l, s17
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(2)
	v_and_b16 v76.h, v84.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v76.h, v84.l, v76.h, s18
	.loc	1 1388 34 is_stmt 1             ; ragged.py:1388:34
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v100, 8, v66
	v_lshrrev_b32_e32 v104, 8, v67
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v77.l, v65.l, 15
	v_and_b16 v78.l, v65.h, 15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_lshrrev_b32_e32 v99, 8, v65
	v_lshrrev_b64 v[94:95], 24, v[65:66]
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v79.h, v100.l, 15
	v_and_b16 v81.l, v67.l, 15
	v_and_b16 v81.h, v104.l, 15
	v_and_b16 v82.l, v67.h, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v98.l, v65.l, v77.l, s16
	v_cndmask_b16 v102.l, v65.h, v78.l, s16
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_and_b32_e32 v65, 24, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_lshrrev_b64 v[95:96], 24, v[67:68]
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v80.l, v66.h, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v99.h, v100.l, v79.h, s16
	v_cndmask_b16 v100.l, v67.l, v81.l, s16
	v_cndmask_b16 v100.h, v104.l, v81.h, s16
	v_cndmask_b16 v104.l, v67.h, v82.l, s16
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v67, v92, v65, 0
	v_lshlrev_b16 v65.l, 8, v76.h
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_lshrrev_b32_e32 v101, 24, v66
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v77.h, v99.l, 15
	v_and_b16 v79.l, v66.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v103.l, v66.h, v80.l, s16
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_or_b16 v66.h, v76.l, v65.l
	v_lshlrev_b16 v65.l, 8, v75.h
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v98.h, v99.l, v77.h, s16
	v_cndmask_b16 v99.l, v66.l, v79.l, s16
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_lshrrev_b32_e32 v96, 8, v68
	v_lshrrev_b32_e32 v109, 24, v68
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_or_b16 v66.l, v75.l, v65.l
	v_lshlrev_b16 v65.l, 8, v74.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v80.h, v101.l, 15
	v_and_b16 v83.l, v68.l, 15
	v_and_b16 v83.h, v96.l, 15
	v_and_b16 v78.h, v94.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_or_b16 v65.h, v74.l, v65.l
	v_lshlrev_b16 v65.l, 8, v73.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v82.h, v95.l, 15
	v_and_b16 v84.l, v68.h, 15
	v_and_b16 v84.h, v109.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v103.h, v101.l, v80.h, s16
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_or_b16 v65.l, v73.l, v65.l
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v101.l, v68.l, v83.l, s16
	v_cndmask_b16 v101.h, v96.l, v83.h, s16
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b64 v[111:112], 24, v[69:70]
	v_lshrrev_b64 v[115:116], 24, v[71:72]
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_store_b64 v67, v[65:66]
	v_and_b32_e32 v65, 24, v107
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_lshrrev_b32_e32 v110, 8, v69
	v_lshrrev_b32_e32 v112, 8, v70
	v_lshrrev_b32_e32 v113, 24, v70
	v_lshrrev_b32_e32 v116, 8, v72
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_lshl_or_b32 v65, v105, 5, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_lshrrev_b32_e32 v117, 24, v72
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v102.h, v94.l, v78.h, s16
	v_cndmask_b16 v104.h, v95.l, v82.h, s16
	v_cndmask_b16 v108.l, v68.h, v84.l, s16
	v_cndmask_b16 v108.h, v109.l, v84.h, s16
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v66, 0, v65
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_and_b16 v101.l, 0xff, v101.l
	v_lshlrev_b16 v101.h, 8, v101.h
	v_and_b16 v100.l, 0xff, v100.l
	v_lshlrev_b16 v100.h, 8, v100.h
	v_and_b16 v99.l, 0xff, v99.l
	v_lshlrev_b16 v99.h, 8, v99.h
	v_and_b16 v98.l, 0xff, v98.l
	v_lshlrev_b16 v98.h, 8, v98.h
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_lshrrev_b32_e32 v114, 8, v71
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v85.l, v69.l, 15
	v_and_b16 v85.h, v110.l, 15
	v_and_b16 v86.l, v69.h, 15
	v_and_b16 v86.h, v111.l, 15
	v_and_b16 v87.l, v70.l, 15
	v_and_b16 v87.h, v112.l, 15
	v_and_b16 v88.l, v70.h, 15
	v_and_b16 v88.h, v113.l, 15
	v_and_b16 v90.h, v115.l, 15
	v_and_b16 v91.l, v72.l, 15
	v_and_b16 v91.h, v116.l, 15
	v_and_b16 v93.h, v117.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[81:84], v66 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v66 offset0:2 offset1:3
	v_xad_u32 v66, v65, 8, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or_b16 v101.l, v101.l, v101.h
	v_lshlrev_b16 v101.h, 8, v108.h
	v_and_b16 v108.l, 0xff, v108.l
	v_or_b16 v100.l, v100.l, v100.h
	v_lshlrev_b16 v100.h, 8, v104.h
	v_and_b16 v104.l, 0xff, v104.l
	v_or_b16 v99.l, v99.l, v99.h
	v_lshlrev_b16 v99.h, 8, v103.h
	v_and_b16 v103.l, 0xff, v103.l
	v_or_b16 v98.l, v98.l, v98.h
	v_lshlrev_b16 v98.h, 8, v102.h
	v_and_b16 v102.l, 0xff, v102.l
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	v_and_b16 v89.l, v71.l, 15
	v_and_b16 v89.h, v114.l, 15
	v_and_b16 v90.l, v71.h, 15
	v_and_b16 v93.l, v72.h, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v109.l, v69.l, v85.l, s11
	v_cndmask_b16 v109.h, v110.l, v85.h, s11
	v_cndmask_b16 v110.l, v69.h, v86.l, s11
	v_cndmask_b16 v110.h, v111.l, v86.h, s11
	v_cndmask_b16 v111.l, v70.l, v87.l, s11
	v_cndmask_b16 v111.h, v112.l, v87.h, s11
	v_cndmask_b16 v112.l, v70.h, v88.l, s11
	v_cndmask_b16 v112.h, v113.l, v88.h, s11
	v_cndmask_b16 v114.h, v115.l, v90.h, s11
	v_cndmask_b16 v115.l, v72.l, v91.l, s11
	v_cndmask_b16 v115.h, v116.l, v91.h, s11
	v_cndmask_b16 v116.h, v117.l, v93.h, s11
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[85:88], v66 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v66 offset0:2 offset1:3
	v_xad_u32 v66, v65, 16, 0
	v_xad_u32 v65, v65, 24, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshl_add_u32 v117, v0, 4, 0
	v_or_b16 v101.h, v108.l, v101.h
	v_or_b16 v100.h, v104.l, v100.h
	v_or_b16 v99.h, v103.l, v99.h
	v_or_b16 v98.h, v102.l, v98.h
	v_cndmask_b16 v113.l, v71.l, v89.l, s11
	v_cndmask_b16 v113.h, v114.l, v89.h, s11
	v_cndmask_b16 v114.l, v71.h, v90.l, s11
	v_cndmask_b16 v116.l, v72.h, v93.l, s11
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[89:92], v66 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[93:96], v65 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v65 offset0:2 offset1:3
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v117, v[98:101]
	v_and_b16 v98.l, 0xff, v115.l
	v_lshlrev_b16 v98.h, 8, v115.h
	v_and_b16 v102.l, 0xff, v110.l
	v_and_b32_e32 v97, 0x70, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v101.l, v98.l, v98.h
	v_lshlrev_b16 v98.l, 8, v116.h
	v_and_b16 v98.h, 0xff, v116.l
	v_add3_u32 v108, 0, v97, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v101.h, v98.h, v98.l
	v_and_b16 v98.l, 0xff, v113.l
	v_lshlrev_b16 v98.h, 8, v113.h
	v_or_b16 v100.l, v98.l, v98.h
	v_lshlrev_b16 v98.l, 8, v114.h
	v_and_b16 v98.h, 0xff, v114.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v100.h, v98.h, v98.l
	v_and_b16 v98.l, 0xff, v111.l
	v_lshlrev_b16 v98.h, 8, v111.h
	v_or_b16 v99.l, v98.l, v98.h
	v_lshlrev_b16 v98.l, 8, v112.h
	v_and_b16 v98.h, 0xff, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v99.h, v98.h, v98.l
	v_and_b16 v98.l, 0xff, v109.l
	v_lshlrev_b16 v98.h, 8, v109.h
	v_or_b16 v98.l, v98.l, v98.h
	v_lshlrev_b16 v98.h, 8, v110.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v98.h, v102.l, v98.h
	ds_store_b128 v117, v[98:101] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v97, v108 offset:1280
	ds_load_u8 v98, v108 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v108 offset:1792
	ds_load_u8 v99, v108 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v108 offset:256
	ds_load_u8 v99, v108
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v99, v97, 0xc0c0004
	ds_load_u8 v99, v108 offset:768
	ds_load_u8 v100, v108 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v99, 16, v97
	ds_load_u8 v99, v108 offset:3328
	ds_load_u8 v100, v108 offset:3072
	v_wmma_i32_16x16x16_iu4 v[33:40], v[97:98], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[97:98], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[79:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v108 offset:3840
	ds_load_u8 v101, v108 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	ds_load_u8 v99, v108 offset:2304
	ds_load_u8 v101, v108 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v101, v99, 0xc0c0004
	ds_load_u8 v101, v108 offset:2816
	ds_load_u8 v102, v108 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v101, 16, v99
	ds_load_u8 v101, v108 offset:5376
	ds_load_u8 v102, v108 offset:5120
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[75:76], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v108 offset:5888
	ds_load_u8 v103, v108 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v108 offset:4352
	ds_load_u8 v103, v108 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v103, v101, 0xc0c0004
	ds_load_u8 v103, v108 offset:4864
	ds_load_u8 v104, v108 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v103, 16, v101
	ds_load_u8 v103, v108 offset:7424
	ds_load_u8 v104, v108 offset:7168
	v_wmma_i32_16x16x16_iu4 v[33:40], v[101:102], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[71:72], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v108 offset:7936
	ds_load_u8 v109, v108 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v109, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v108 offset:6400
	ds_load_u8 v109, v108 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v109, v103, 0xc0c0004
	ds_load_u8 v109, v108 offset:6912
	ds_load_u8 v110, v108 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v109, 16, v103
	ds_load_u8 v109, v108 offset:1408
	ds_load_u8 v110, v108 offset:1152
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[93:94], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[103:104], v[95:96], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[103:104], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[103:104], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v108 offset:1920
	ds_load_u8 v111, v108 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v110, 16, v109
	ds_load_u8 v109, v108 offset:384
	ds_load_u8 v111, v108 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v111, v109, 0xc0c0004
	ds_load_u8 v111, v108 offset:896
	ds_load_u8 v112, v108 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v111, 16, v109
	v_wmma_i32_16x16x16_iu4 v[57:64], v[109:110], v[81:82], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v108 offset:3456
	ds_load_u8 v82, v108 offset:3200
	v_wmma_i32_16x16x16_iu4 v[41:48], v[109:110], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[79:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v108 offset:3968
	ds_load_u8 v111, v108 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v111, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v108 offset:2432
	ds_load_u8 v111, v108 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v111, v81, 0xc0c0004
	ds_load_u8 v111, v108 offset:2944
	ds_load_u8 v112, v108 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v111, 16, v81
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[85:86], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v85, v108 offset:5504
	ds_load_u8 v86, v108 offset:5248
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[87:88], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v108 offset:6016
	ds_load_u8 v111, v108 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v111, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v108 offset:4480
	ds_load_u8 v111, v108 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v111, v85, 0xc0c0004
	ds_load_u8 v111, v108 offset:4992
	ds_load_u8 v112, v108 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v111, 16, v85
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[89:90], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v108 offset:7552
	ds_load_u8 v90, v108 offset:7296
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v108 offset:8064
	ds_load_u8 v111, v108 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v111, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v108 offset:6528
	ds_load_u8 v111, v108 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v111, v89, 0xc0c0004
	ds_load_u8 v111, v108 offset:7040
	ds_load_u8 v108, v108 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v108, 16, v89
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[93:94], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[95:96], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[67:68], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s33, v105
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v66, s8, v105, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v69, 16, v65
	v_or_b32_e32 v68, 32, v65
	v_or_b32_e32 v67, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s22, v65
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s22, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v71, 64, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s22, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s2
	v_add_nc_u32_e32 v66, 0x60, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s22, v67
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s1
	v_cndmask_b32_e64 v68, 0x80000000, v71, s0
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s40, s28
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v7, 28, v107
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x3
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	buffer_load_u16 v67, v69, s[40:43], 0 offen
	buffer_load_u16 v68, v68, s[40:43], 0 offen
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s21, v0
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s3, s34, s23
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s41, s31, 0xffff
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s3, s21, s3
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s40, s30
	v_add_lshl_u32 v70, s3, v0, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s23, v69
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v9
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v73, v12
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s3
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v70, 1, v106
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s8, s23
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v78, v1
	v_cvt_f32_i32_e32 v81, v4
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v69, v69, s[40:43], 0 offen
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v9, s21, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v4, s3, s21, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v72, v10
	v_cvt_f32_i32_e32 v85, v8
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, 0x80, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s23, v9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v8, v106, 2, 0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v80, v3
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v3, s23, v105
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
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
	v_cvt_f32_i32_e32 v83, v6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v86, v106, 1, 0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v79, v2
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v74, v13
	v_cvt_f32_i32_e32 v75, v14
	v_cvt_f32_i32_e32 v76, v15
	v_cvt_f32_i32_e32 v77, v16
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v82, v5
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v5, s23, 5, v3
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_and_b32 s41, s39, 0xffff
	s_mov_b32 s40, s38
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v9, 16, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v50, v50, v9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v10, 32, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s23, 48, v[3:4]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v7, v8, v10, v7
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v68
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v25, v25, v10 :: v_dual_lshlrev_b32 v8, 16, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v39, v39, v8 :: v_dual_add_nc_u32 v6, s4, v3
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v38, v38, v8 :: v_dual_lshlrev_b32 v65, 16, v66
	v_mul_f32_e32 v33, v33, v8
	v_mul_f32_e32 v34, v34, v8
	v_mul_f32_e32 v35, v35, v8
	v_mul_f32_e32 v36, v36, v8
	v_mul_f32_e32 v37, v37, v8
	v_dual_mul_f32 v40, v40, v8 :: v_dual_mul_f32 v53, v53, v9
	v_mul_f32_e32 v57, v57, v8
	v_dual_mul_f32 v58, v58, v8 :: v_dual_mul_f32 v55, v55, v9
	v_dual_mul_f32 v59, v59, v8 :: v_dual_mul_f32 v52, v52, v9
	v_dual_mul_f32 v60, v60, v8 :: v_dual_mul_f32 v41, v41, v9
	v_dual_mul_f32 v61, v61, v8 :: v_dual_mul_f32 v54, v54, v9
	v_dual_mul_f32 v62, v62, v8 :: v_dual_mul_f32 v43, v43, v9
	v_dual_mul_f32 v63, v63, v8 :: v_dual_mul_f32 v56, v56, v9
	v_dual_mul_f32 v64, v64, v8 :: v_dual_mul_f32 v45, v45, v9
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v69
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v49, v49, v9 :: v_dual_add_nc_u32 v2, 0x80, v4
	v_mul_f32_e32 v51, v51, v9
	v_dual_mul_f32 v42, v42, v9 :: v_dual_mul_f32 v27, v27, v10
	v_dual_mul_f32 v44, v44, v9 :: v_dual_mul_f32 v29, v29, v10
	v_dual_mul_f32 v46, v46, v9 :: v_dual_mul_f32 v31, v31, v10
	v_dual_mul_f32 v47, v47, v9 :: v_dual_mul_f32 v26, v26, v10
	v_dual_mul_f32 v48, v48, v9 :: v_dual_mul_f32 v67, v18, v10
	v_dual_mul_f32 v28, v28, v10 :: v_dual_mul_f32 v71, v71, v65
	v_dual_mul_f32 v30, v30, v10 :: v_dual_mul_f32 v73, v73, v65
	v_dual_mul_f32 v32, v32, v10 :: v_dual_mul_f32 v75, v75, v65
	v_dual_mul_f32 v66, v17, v10 :: v_dual_mul_f32 v79, v79, v65
	v_dual_mul_f32 v68, v19, v10 :: v_dual_mul_f32 v77, v77, v65
	v_dual_mul_f32 v69, v20, v10 :: v_dual_mul_f32 v88, v11, v65
	v_dual_mul_f32 v70, v21, v10 :: v_dual_mul_f32 v83, v83, v65
	v_dual_mul_f32 v87, v22, v10 :: v_dual_mul_f32 v72, v72, v65
	v_dual_mul_f32 v23, v23, v10 :: v_dual_mul_f32 v74, v74, v65
	v_dual_mul_f32 v24, v24, v10 :: v_dual_mul_f32 v81, v81, v65
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v7, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v86
	ds_load_b128 v[15:18], v86 offset:512
	ds_load_b128 v[19:22], v86 offset:528
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s23, v12
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[11:14], v86 offset:16
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v76, v76, v65
	v_mul_f32_e32 v78, v78, v65
	v_mul_f32_e32 v80, v80, v65
	v_mul_f32_e32 v82, v82, v65
	v_mul_f32_e32 v84, v84, v65
	v_mul_f32_e32 v65, v85, v65
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_lshl_u32 v3, v4, v3, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v50, v50, v8 :: v_dual_mul_f32 v41, v41, v15
	v_dual_mul_f32 v42, v42, v16 :: v_dual_mul_f32 v25, v25, v7
	v_dual_mul_f32 v44, v44, v18 :: v_dual_mul_f32 v27, v27, v9
	v_dual_mul_f32 v33, v33, v7 :: v_dual_mul_f32 v34, v34, v8
	v_dual_mul_f32 v52, v52, v10 :: v_dual_mul_f32 v43, v43, v17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v54, v54, v12 :: v_dual_mul_f32 v45, v45, v19
	v_dual_mul_f32 v46, v46, v20 :: v_dual_mul_f32 v29, v29, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v95, v41, 16, 1
	v_bfe_u32 v96, v42, 16, 1
	v_bfe_u32 v98, v44, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v35, v35, v9 :: v_dual_mul_f32 v36, v36, v10
	v_dual_mul_f32 v64, v64, v22 :: v_dual_mul_f32 v55, v55, v13
	v_dual_mul_f32 v49, v49, v7 :: v_dual_mul_f32 v56, v56, v14
	v_dual_mul_f32 v47, v47, v21 :: v_dual_mul_f32 v48, v48, v22
	v_mul_f32_e32 v31, v31, v13
	v_dual_mul_f32 v68, v68, v17 :: v_dual_mul_f32 v7, v71, v7
	v_mul_f32_e32 v24, v24, v22
	v_mul_f32_e32 v22, v65, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v65, v33, 16, 1
	v_bfe_u32 v71, v34, 16, 1
	v_cmp_o_f32_e64 s29, v41, v41
	v_cmp_o_f32_e64 s30, v42, v42
	v_bfe_u32 v97, v43, 16, 1
	v_cmp_o_f32_e64 s33, v44, v44
	v_bfe_u32 v99, v45, 16, 1
	v_bfe_u32 v100, v46, 16, 1
	v_add3_u32 v41, v41, v95, 0x7fff
	v_add3_u32 v42, v42, v96, 0x7fff
	v_add3_u32 v44, v44, v98, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v37, v37, v11 :: v_dual_mul_f32 v26, v26, v8
	v_dual_mul_f32 v69, v69, v18 :: v_dual_mul_f32 v8, v72, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s5, v33, v33
	v_cmp_o_f32_e64 s6, v34, v34
	v_bfe_u32 v72, v35, 16, 1
	v_cmp_o_f32_e64 s31, v43, v43
	v_cmp_o_f32_e64 s34, v45, v45
	v_cmp_o_f32_e64 s35, v46, v46
	v_bfe_u32 v101, v47, 16, 1
	v_add3_u32 v33, v33, v65, 0x7fff
	v_add3_u32 v34, v34, v71, 0x7fff
	v_add3_u32 v43, v43, v97, 0x7fff
	v_add3_u32 v45, v45, v99, 0x7fff
	v_add3_u32 v46, v46, v100, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s29
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s30
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s33
	v_bfe_u32 v44, v48, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v10 :: v_dual_mul_f32 v67, v67, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s7, v35, v35
	v_add3_u32 v35, v35, v72, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s5
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s6
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s31
	v_cndmask_b16 v43.l, 0x7fff, v45.h, s34
	v_cndmask_b16 v43.h, 0x7fff, v46.h, s35
	v_bfe_u32 v45, v25, 16, 1
	v_add3_u32 v46, v47, v101, 0x7fff
	v_cmp_o_f32_e64 s5, v47, v47
	v_add3_u32 v44, v48, v44, 0x7fff
	v_cmp_o_f32_e64 s6, v48, v48
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v30, v12 :: v_dual_mul_f32 v23, v23, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s7
	v_add3_u32 v45, v25, v45, 0x7fff
	v_cmp_o_f32_e64 s7, v25, v25
	v_cndmask_b16 v25.l, 0x7fff, v46.h, s5
	v_bfe_u32 v46, v26, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v44.h, s6
	v_bfe_u32 v44, v27, 16, 1
	v_bfe_u32 v47, v28, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v32, v14 :: v_dual_mul_f32 v85, v87, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s7
	v_add3_u32 v46, v26, v46, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v26, v27, v44, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_add3_u32 v27, v28, v47, 0x7fff
	v_cmp_o_f32_e64 s7, v28, v28
	v_bfe_u32 v28, v29, 16, 1
	v_bfe_u32 v44, v30, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v66, v66, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s5
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s6
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s7
	v_bfe_u32 v27, v31, 16, 1
	v_add3_u32 v28, v29, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	v_add3_u32 v29, v30, v44, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_bfe_u32 v30, v32, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v60, v60, v18 :: v_dual_mul_f32 v51, v51, v9
	v_mul_f32_e32 v9, v88, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s7, v31, v31
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s5
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v66, 16, 1
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v32, v32
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s7
	v_bfe_u32 v31, v67, 16, 1
	v_add3_u32 v29, v66, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v66, v66
	v_cndmask_b16 v27.h, 0x7fff, v30.h, s5
	v_bfe_u32 v30, v68, 16, 1
	v_bfe_u32 v32, v69, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v70, v70, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v31, v67, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v67, v67
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s6
	v_add3_u32 v30, v68, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v68, v68
	v_add3_u32 v32, v69, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v38, v38, v12 :: v_dual_mul_f32 v39, v39, v13
	v_mul_f32_e32 v13, v76, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s7
	v_bfe_u32 v31, v70, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s5
	v_bfe_u32 v44, v85, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s6
	v_bfe_u32 v32, v23, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v62, v62, v20 :: v_dual_mul_f32 v53, v53, v11
	v_mul_f32_e32 v11, v74, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v46, v24, 16, 1
	v_add3_u32 v31, v70, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v70, v70
	v_add3_u32 v44, v85, v44, 0x7fff
	v_cmp_o_f32_e64 s5, v85, v85
	v_add3_u32 v32, v23, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_add3_u32 v23, v24, v46, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v57, v57, v15
	v_dual_mul_f32 v10, v73, v10 :: v_dual_mul_f32 v15, v78, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s7
	v_cmp_o_f32_e64 s7, v24, v24
	v_cndmask_b16 v31.h, 0x7fff, v44.h, s5
	v_bfe_u32 v24, v7, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v32.h, s6
	v_bfe_u32 v32, v8, 16, 1
	v_bfe_u32 v44, v9, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v40, v40, v14 :: v_dual_mul_f32 v59, v59, v17
	v_dual_mul_f32 v12, v75, v12 :: v_dual_mul_f32 v17, v80, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s7
	v_add3_u32 v24, v7, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v7, v7
	v_add3_u32 v7, v8, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v8, v8
	v_add3_u32 v8, v9, v44, 0x7fff
	v_cmp_o_f32_e64 s7, v9, v9
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v61, v61, v19
	v_dual_mul_f32 v14, v77, v14 :: v_dual_mul_f32 v19, v82, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v7.l, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v11, 16, 1
	v_bfe_u32 v32, v12, 16, 1
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v58, v58, v16 :: v_dual_mul_f32 v63, v63, v21
	v_dual_mul_f32 v16, v79, v16 :: v_dual_mul_f32 v21, v84, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s7
	v_add3_u32 v10, v11, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v11, v12, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s5
	v_bfe_u32 v9, v13, 16, 1
	v_bfe_u32 v12, v14, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v18, v81, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s6
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s7
	v_bfe_u32 v11, v15, 16, 1
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v12, v14, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v14, v14
	v_bfe_u32 v13, v16, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v20, v83, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v17, 16, 1
	v_bfe_u32 v14, v18, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v16, v16
	v_bfe_u32 v73, v36, 16, 1
	v_bfe_u32 v74, v37, 16, 1
	v_bfe_u32 v75, v38, 16, 1
	v_bfe_u32 v76, v39, 16, 1
	v_bfe_u32 v77, v40, 16, 1
	v_bfe_u32 v80, v59, 16, 1
	v_bfe_u32 v81, v60, 16, 1
	v_bfe_u32 v84, v63, 16, 1
	v_bfe_u32 v86, v64, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v12, v17, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v14, v18, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_bfe_u32 v15, v19, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v20, 16, 1
	v_cmp_o_f32_e64 s8, v36, v36
	v_cmp_o_f32_e64 s9, v37, v37
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s11, v39, v39
	v_cmp_o_f32_e64 s12, v40, v40
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	v_cmp_o_f32_e64 s19, v63, v63
	v_cmp_o_f32_e64 s20, v64, v64
	v_add3_u32 v36, v36, v73, 0x7fff
	v_add3_u32 v37, v37, v74, 0x7fff
	v_add3_u32 v38, v38, v75, 0x7fff
	v_add3_u32 v39, v39, v76, 0x7fff
	v_add3_u32 v40, v40, v77, 0x7fff
	v_add3_u32 v59, v59, v80, 0x7fff
	v_add3_u32 v60, v60, v81, 0x7fff
	v_add3_u32 v63, v63, v84, 0x7fff
	v_add3_u32 v64, v64, v86, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s7
	v_add3_u32 v14, v19, v15, 0x7fff
	v_bfe_u32 v15, v21, 16, 1
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v13, v20, v13, 0x7fff
	v_bfe_u32 v16, v22, 16, 1
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s8
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s9
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s10
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s11
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s12
	v_cndmask_b16 v38.l, 0x7fff, v59.h, s15
	v_cndmask_b16 v38.h, 0x7fff, v60.h, s16
	v_cndmask_b16 v40.l, 0x7fff, v63.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v64.h, s20
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_add3_u32 v16, v22, v16, 0x7fff
	v_cmp_o_f32_e64 s8, v22, v22
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v16.h, s8
	v_bfe_u32 v78, v57, 16, 1
	v_cndmask_b32_e64 v14, v35, v33, s5
	v_cndmask_b32_e64 v15, v33, v35, s5
	v_cndmask_b32_e64 v16, v36, v34, s5
	v_cndmask_b32_e64 v17, v34, v36, s5
	v_cndmask_b32_e64 v20, v40, v38, s5
	v_cndmask_b32_e64 v21, v38, v40, s5
	v_cndmask_b32_e64 v34, v43, v41, s5
	v_cndmask_b32_e64 v35, v41, v43, s5
	v_cndmask_b32_e64 v36, v25, v42, s5
	v_cndmask_b32_e64 v25, v42, v25, s5
	v_cndmask_b32_e64 v40, v10, v7, s5
	v_cndmask_b32_e64 v7, v7, v10, s5
	v_cndmask_b32_e64 v41, v9, v8, s5
	v_cndmask_b32_e64 v8, v8, v9, s5
	v_cndmask_b32_e64 v42, v13, v11, s5
	v_cndmask_b32_e64 v9, v11, v13, s5
	v_mov_b32_e32 v10, 0x5410
	v_mov_b32_e32 v11, 0x7632
	v_bfe_u32 v79, v58, 16, 1
	v_bfe_u32 v82, v61, 16, 1
	v_bfe_u32 v83, v62, 16, 1
	v_bfe_u32 v87, v49, 16, 1
	v_bfe_u32 v88, v50, 16, 1
	v_bfe_u32 v89, v51, 16, 1
	v_bfe_u32 v90, v52, 16, 1
	v_bfe_u32 v91, v53, 16, 1
	v_bfe_u32 v92, v54, 16, 1
	v_bfe_u32 v93, v55, 16, 1
	v_bfe_u32 v94, v56, 16, 1
	v_cndmask_b32_e64 v10, 0x1054, v10, s5
	v_cndmask_b32_e64 v11, 0x3276, v11, s5
	v_cmp_o_f32_e64 s13, v57, v57
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s17, v61, v61
	v_cmp_o_f32_e64 s18, v62, v62
	v_cmp_o_f32_e64 s21, v49, v49
	v_cmp_o_f32_e64 s22, v50, v50
	v_cmp_o_f32_e64 s23, v51, v51
	v_cmp_o_f32_e64 s24, v52, v52
	v_cmp_o_f32_e64 s25, v53, v53
	v_cmp_o_f32_e64 s26, v54, v54
	v_cmp_o_f32_e64 s27, v55, v55
	v_cmp_o_f32_e64 s28, v56, v56
	v_add3_u32 v57, v57, v78, 0x7fff
	v_add3_u32 v58, v58, v79, 0x7fff
	v_add3_u32 v61, v61, v82, 0x7fff
	v_add3_u32 v62, v62, v83, 0x7fff
	v_add3_u32 v49, v49, v87, 0x7fff
	v_add3_u32 v50, v50, v88, 0x7fff
	v_add3_u32 v51, v51, v89, 0x7fff
	v_add3_u32 v52, v52, v90, 0x7fff
	v_add3_u32 v53, v53, v91, 0x7fff
	v_add3_u32 v54, v54, v92, 0x7fff
	v_add3_u32 v55, v55, v93, 0x7fff
	v_add3_u32 v56, v56, v94, 0x7fff
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b16 v37.l, 0x7fff, v57.h, s13
	v_cndmask_b16 v37.h, 0x7fff, v58.h, s14
	v_cndmask_b16 v39.l, 0x7fff, v61.h, s17
	v_cndmask_b16 v39.h, 0x7fff, v62.h, s18
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s21
	v_cndmask_b16 v49.h, 0x7fff, v50.h, s22
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s23
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s24
	v_cndmask_b16 v51.l, 0x7fff, v53.h, s25
	v_cndmask_b16 v51.h, 0x7fff, v54.h, s26
	v_cndmask_b16 v52.l, 0x7fff, v55.h, s27
	v_cndmask_b16 v52.h, 0x7fff, v56.h, s28
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b32_e64 v19, v37, v39, s5
	v_cndmask_b32_e64 v24, v49, v51, s5
	v_cndmask_b32_e64 v33, v50, v52, s5
	v_cndmask_b32_e64 v38, v27, v26, s5
	v_cndmask_b32_e64 v26, v26, v27, s5
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v18, v39, v37, s5
	v_cndmask_b32_e64 v22, v51, v49, s5
	v_cndmask_b32_e64 v32, v52, v50, s5
	v_cndmask_b32_e64 v37, v28, v45, s5
	v_cndmask_b32_e64 v28, v45, v28, s5
	v_cndmask_b32_e64 v39, v31, v29, s5
	v_cndmask_b32_e64 v27, v29, v31, s5
	v_cndmask_b32_e64 v31, v23, v30, s5
	v_cndmask_b32_e64 v23, v30, v23, s5
	v_cndmask_b32_e64 v43, v0, v12, s5
	v_cndmask_b32_e64 v0, v12, v0, s5
	v_permlanex16_b32 v12, v15, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v17, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v19, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v21, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v24, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v33, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v44, 0x5040504, v10
	v_and_b32_e32 v45, 0x7060706, v11
	v_permlanex16_b32 v24, v35, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v27, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v23, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v12, v14, v44
	v_perm_b32 v8, v12, v14, v45
	v_perm_b32 v9, v13, v16, v44
	v_perm_b32 v10, v13, v16, v45
	v_perm_b32 v11, v15, v18, v44
	v_perm_b32 v12, v15, v18, v45
	v_perm_b32 v13, v17, v20, v44
	v_perm_b32 v14, v17, v20, v45
	v_perm_b32 v15, v19, v22, v44
	v_perm_b32 v16, v19, v22, v45
	v_perm_b32 v17, v21, v32, v44
	v_perm_b32 v18, v21, v32, v45
	v_perm_b32 v21, v25, v36, v44
	v_perm_b32 v22, v25, v36, v45
	v_perm_b32 v25, v26, v38, v44
	v_perm_b32 v26, v26, v38, v45
	v_add_nc_u32_e32 v38, 0x100, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s5, s2, s3
	s_and_b32 s2, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	v_perm_b32 v19, v24, v34, v44
	v_perm_b32 v20, v24, v34, v45
	v_perm_b32 v23, v28, v37, v44
	v_perm_b32 v24, v28, v37, v45
	v_perm_b32 v27, v29, v39, v44
	v_perm_b32 v28, v29, v39, v45
	v_perm_b32 v29, v30, v31, v44
	v_perm_b32 v30, v30, v31, v45
	v_perm_b32 v31, v33, v40, v44
	v_perm_b32 v32, v33, v40, v45
	v_perm_b32 v37, v0, v43, v44
	v_cndmask_b32_e64 v40, 0x80000000, v38, s2
	v_perm_b32 v38, v0, v43, v45
	v_add_lshl_u32 v0, v2, v6, 1
	v_add_lshl_u32 v39, v4, v6, 1
	buffer_store_b128 v[7:10], v3, s[40:43], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v2, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s3
	s_and_b32 s1, s1, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v4, v1, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v5, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v33, v35, v41, v44
	v_perm_b32 v34, v35, v41, v45
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_perm_b32 v35, v46, v42, v44
	v_perm_b32 v36, v46, v42, v45
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b128 v[11:14], v40, s[40:43], 0 offen
	buffer_store_b128 v[15:18], v39, s[40:43], 0 offen
	buffer_store_b128 v[19:22], v0, s[40:43], 0 offen
	buffer_store_b128 v[23:26], v3, s[40:43], 0 offen
	buffer_store_b128 v[27:30], v2, s[40:43], 0 offen
	buffer_store_b128 v[31:34], v4, s[40:43], 0 offen
	buffer_store_b128 v[35:38], v1, s[40:43], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 129
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 129
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11140
; TotalNumSgprs: 50
; NumVgprs: 129
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 129
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     129
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
