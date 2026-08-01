	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	s_load_b256 s[12:19], s[0:1], 0x0
	v_mov_b32_e32 v8, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 5, v0
	v_bfe_i32 v3, v0, 7, 1
	v_and_b32_e32 v125, 15, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v133, 31, v0
	v_and_b32_e32 v130, 0x7f, v0
	v_lshlrev_b32_e32 v126, 1, v0
	v_and_b32_e32 v131, 0x88, v3
	v_add_nc_u32_e32 v129, 0, v0
	s_load_b32 s35, s[0:1], 0x38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s29, 0xff
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s5, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	v_mul_lo_u32 v132, s35, v2
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	s_mul_i32 s37, s35, 24
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_mul_i32 s36, s35, 40
	s_mul_i32 s39, s35, 48
	v_rcp_iflag_f32_e32 v1, s7
	s_mul_i32 s40, s35, 56
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
	s_ashr_i32 s20, s8, 31
	s_mul_i32 s10, s7, s6
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s9, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s8, s7
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b128 s[8:11], s[0:1], 0x20
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s1, s6, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	s_sub_i32 s30, s1, s20
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s1, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s30, s4
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s38, s30, s28
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_readfirstlane_b32 s21, v1
	s_abs_i32 s4, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 0xe0, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s0, s21, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v127, 1, v1
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	v_add3_u32 v128, 0, v127, v125
	s_mul_i32 s1, s1, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s1, s0, s1
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s2, s5
	s_mul_hi_u32 s0, s4, s0
	s_ashr_i32 s1, s1, 31
	s_mul_i32 s6, s0, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	s_add_i32 s6, s0, 1
	s_sub_i32 s20, s4, s7
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s0, s6, s0
	s_cselect_b32 s4, s20, s4
	s_add_i32 s6, s0, 1
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s0, s6, s0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s31, s30, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s0, s1
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[0:1], s[30:31], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s33, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s31, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s8, s0
	s_addc_u32 s1, s9, s1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s31, v0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s41, s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 8, v1
	v_or_b32_e32 v3, 16, v1
	v_or_b32_e32 v4, 24, v1
	v_or_b32_e32 v5, 32, v1
	v_or_b32_e32 v6, 40, v1
	v_or_b32_e32 v7, 48, v1
	v_or_b32_e32 v9, 56, v1
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s34, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s8, s28, v1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s29, v97
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s7, s28, v2
	v_cmp_gt_i32_e64 s6, s28, v3
	v_cmp_gt_i32_e64 s5, s28, v4
	v_cmp_gt_i32_e64 s4, s28, v5
	v_cmp_gt_i32_e64 s3, s28, v6
	v_cmp_gt_i32_e64 s2, s28, v7
	.loc	1 1361 39                       ; ragged.py:1361:39
	s_mul_i32 s9, s30, s35
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s1, s41, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s1, s1, 26
	s_add_i32 s1, s41, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 6
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s42, s1, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s28, v9
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s34, s42
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mad_u64_u32 v[98:99], null, s29, 3, v[97:98]
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v134, s29, v97
	v_lshlrev_b32_e32 v1, 1, v0
	v_xor_b32_e32 v2, v131, v130
	v_or_b32_e32 v7, 0x300, v0
	v_or_b32_e32 v8, 0x700, v0
	v_mad_u64_u32 v[99:100], null, s29, 5, v[97:98]
	v_mad_u64_u32 v[100:101], null, s29, 6, v[97:98]
	v_mad_u64_u32 v[101:102], null, s29, 7, v[97:98]
	v_mad_u64_u32 v[102:103], null, s29, 9, v[97:98]
	v_mad_u64_u32 v[103:104], null, s29, 10, v[97:98]
	v_mad_u64_u32 v[104:105], null, s29, 11, v[97:98]
	v_mad_u64_u32 v[105:106], null, s29, 12, v[97:98]
	v_mad_u64_u32 v[106:107], null, s29, 13, v[97:98]
	v_mad_u64_u32 v[107:108], null, s29, 14, v[97:98]
	v_mad_u64_u32 v[108:109], null, s29, 15, v[97:98]
	v_mad_u64_u32 v[109:110], null, s29, 17, v[97:98]
	v_mad_u64_u32 v[110:111], null, s29, 18, v[97:98]
	v_dual_mov_b32 v42, v41 :: v_dual_and_b32 v1, 24, v1
	v_mov_b32_e32 v44, v41
	v_mad_u64_u32 v[111:112], null, s29, 19, v[97:98]
	v_mad_u64_u32 v[112:113], null, s29, 20, v[97:98]
	v_mad_u64_u32 v[113:114], null, s29, 21, v[97:98]
	v_mad_u64_u32 v[114:115], null, s29, 22, v[97:98]
	v_mad_u64_u32 v[115:116], null, s29, 23, v[97:98]
	v_lshl_or_b32 v1, v125, 5, v1
	v_mad_u64_u32 v[116:117], null, s29, 24, v[97:98]
	v_mad_u64_u32 v[117:118], null, s29, 25, v[97:98]
	v_mad_u64_u32 v[118:119], null, s29, 26, v[97:98]
	v_mad_u64_u32 v[119:120], null, s29, 27, v[97:98]
	v_mad_u64_u32 v[120:121], null, s29, 28, v[97:98]
	v_xor_b32_e32 v3, 0x110, v2
	v_xor_b32_e32 v4, 8, v1
	v_xor_b32_e32 v5, 16, v1
	v_xor_b32_e32 v6, 24, v1
	v_or_b32_e32 v9, 0xb00, v0
	v_or_b32_e32 v10, 0xf00, v0
	v_or_b32_e32 v11, 0x1300, v0
	v_or_b32_e32 v12, 0x1700, v0
	v_or_b32_e32 v13, 0x1b00, v0
	v_or_b32_e32 v14, 0x1f00, v0
	v_mad_u64_u32 v[121:122], null, s29, 29, v[97:98]
	s_add_i32 s20, s33, s38
	v_mad_u64_u32 v[122:123], null, s29, 30, v[97:98]
	v_mad_u64_u32 v[123:124], null, s29, 31, v[97:98]
	s_mul_i32 s22, s20, s35
	v_lshl_add_u32 v135, s29, 1, v97
	v_lshl_add_u32 v136, s29, 2, v97
	v_lshl_add_u32 v137, s29, 3, v97
	v_lshl_add_u32 v138, s29, 4, v97
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v139, v133, v132, s22
	v_dual_mov_b32 v43, v41 :: v_dual_add_nc_u32 v140, 0, v2
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v141, 0, v3
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v142, 0, v1
	v_dual_mov_b32 v48, v41 :: v_dual_add_nc_u32 v143, 0, v4
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v144, 0, v5
	v_dual_mov_b32 v58, v41 :: v_dual_add_nc_u32 v145, 0, v6
	v_dual_mov_b32 v57, v41 :: v_dual_add_nc_u32 v146, 0, v7
	v_dual_mov_b32 v60, v41 :: v_dual_add_nc_u32 v147, 0, v8
	v_dual_mov_b32 v59, v41 :: v_dual_add_nc_u32 v148, 0, v9
	v_dual_mov_b32 v62, v41 :: v_dual_add_nc_u32 v149, 0, v10
	v_dual_mov_b32 v61, v41 :: v_dual_add_nc_u32 v150, 0, v11
	v_dual_mov_b32 v64, v41 :: v_dual_add_nc_u32 v151, 0, v12
	v_dual_mov_b32 v63, v41 :: v_dual_add_nc_u32 v152, 0, v13
	v_dual_mov_b32 v50, v41 :: v_dual_add_nc_u32 v153, 0, v14
	v_mov_b32_e32 v49, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_lshl_b32 s43, s35, 3
	s_lshl_b32 s44, s35, 4
	s_lshl_b32 s45, s35, 5
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1363 42 is_stmt 1             ; ragged.py:1363:42
	s_add_i32 s46, s34, s9
	v_add_nc_u32_e32 v65, s34, v139
	s_mul_i32 s46, s46, s29
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s34, s34, 32
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v66, s46, v97
	v_add_nc_u32_e32 v67, s46, v134
	v_add_nc_u32_e32 v68, s46, v135
	v_add_nc_u32_e32 v69, s46, v98
	v_add_nc_u32_e32 v70, s46, v136
	v_add_nc_u32_e32 v71, s46, v99
	v_add_nc_u32_e32 v72, s46, v100
	v_add_nc_u32_e32 v124, s46, v123
	v_add_nc_u32_e32 v73, s46, v101
	v_add_nc_u32_e32 v74, s46, v137
	v_add_nc_u32_e32 v75, s46, v102
	v_add_nc_u32_e32 v76, s46, v103
	v_add_nc_u32_e32 v77, s46, v104
	v_add_nc_u32_e32 v78, s46, v105
	v_add_nc_u32_e32 v79, s46, v106
	v_add_nc_u32_e32 v80, s46, v107
	v_add_nc_u32_e32 v81, s46, v108
	v_add_nc_u32_e32 v82, s46, v138
	v_add_nc_u32_e32 v83, s46, v109
	v_add_nc_u32_e32 v84, s46, v110
	v_add_nc_u32_e32 v85, s46, v111
	v_add_nc_u32_e32 v86, s46, v112
	v_add_nc_u32_e32 v87, s46, v113
	v_add_nc_u32_e32 v88, s46, v114
	v_add_nc_u32_e32 v89, s46, v115
	v_add_nc_u32_e32 v90, s46, v116
	v_add_nc_u32_e32 v91, s46, v117
	v_add_nc_u32_e32 v92, s46, v118
	v_add_nc_u32_e32 v93, s46, v119
	v_add_nc_u32_e32 v94, s46, v120
	v_add_nc_u32_e32 v95, s46, v121
	v_add_nc_u32_e32 v96, s46, v122
	v_add_nc_u32_e32 v154, s43, v65
	v_add_nc_u32_e32 v155, s44, v65
	v_add_nc_u32_e32 v156, s37, v65
	v_add_nc_u32_e32 v157, s45, v65
	v_add_nc_u32_e32 v158, s36, v65
	v_add_nc_u32_e32 v159, s39, v65
	v_add_nc_u32_e32 v160, s40, v65
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s8
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	v_cndmask_b32_e64 v76, 0x80000000, v76, s0
	v_cndmask_b32_e64 v77, 0x80000000, v77, s0
	v_cndmask_b32_e64 v78, 0x80000000, v78, s0
	v_cndmask_b32_e64 v79, 0x80000000, v79, s0
	v_cndmask_b32_e64 v80, 0x80000000, v80, s0
	v_cndmask_b32_e64 v81, 0x80000000, v81, s0
	v_cndmask_b32_e64 v82, 0x80000000, v82, s0
	v_cndmask_b32_e64 v83, 0x80000000, v83, s0
	v_cndmask_b32_e64 v84, 0x80000000, v84, s0
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	v_cndmask_b32_e64 v87, 0x80000000, v87, s0
	v_cndmask_b32_e64 v88, 0x80000000, v88, s0
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	v_cndmask_b32_e64 v90, 0x80000000, v90, s0
	v_cndmask_b32_e64 v91, 0x80000000, v91, s0
	v_cndmask_b32_e64 v92, 0x80000000, v92, s0
	v_cndmask_b32_e64 v93, 0x80000000, v93, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	.loc	1 1362 34                       ; ragged.py:1362:34
	buffer_load_u8 v65, v65, s[20:23], 0 offen
	v_cndmask_b32_e64 v154, 0x80000000, v154, s7
	v_cndmask_b32_e64 v155, 0x80000000, v155, s6
	v_cndmask_b32_e64 v156, 0x80000000, v156, s5
	v_cndmask_b32_e64 v157, 0x80000000, v157, s4
	v_cndmask_b32_e64 v158, 0x80000000, v158, s3
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s1
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x1f
	buffer_load_u8 v161, v66, s[24:27], 0 offen
	buffer_load_u8 v162, v67, s[24:27], 0 offen
	buffer_load_u8 v163, v68, s[24:27], 0 offen
	buffer_load_u8 v164, v69, s[24:27], 0 offen
	buffer_load_u8 v165, v70, s[24:27], 0 offen
	buffer_load_u8 v166, v71, s[24:27], 0 offen
	buffer_load_u8 v167, v72, s[24:27], 0 offen
	buffer_load_u8 v168, v73, s[24:27], 0 offen
	buffer_load_u8 v169, v74, s[24:27], 0 offen
	buffer_load_u8 v170, v75, s[24:27], 0 offen
	buffer_load_u8 v171, v76, s[24:27], 0 offen
	buffer_load_u8 v172, v77, s[24:27], 0 offen
	buffer_load_u8 v173, v78, s[24:27], 0 offen
	buffer_load_u8 v174, v79, s[24:27], 0 offen
	buffer_load_u8 v175, v80, s[24:27], 0 offen
	buffer_load_u8 v176, v81, s[24:27], 0 offen
	buffer_load_u8 v177, v82, s[24:27], 0 offen
	buffer_load_u8 v178, v83, s[24:27], 0 offen
	buffer_load_u8 v179, v84, s[24:27], 0 offen
	buffer_load_u8 v180, v85, s[24:27], 0 offen
	buffer_load_u8 v181, v86, s[24:27], 0 offen
	buffer_load_u8 v182, v87, s[24:27], 0 offen
	buffer_load_u8 v183, v88, s[24:27], 0 offen
	buffer_load_u8 v184, v89, s[24:27], 0 offen
	buffer_load_u8 v185, v90, s[24:27], 0 offen
	buffer_load_u8 v186, v91, s[24:27], 0 offen
	buffer_load_u8 v187, v92, s[24:27], 0 offen
	buffer_load_u8 v188, v93, s[24:27], 0 offen
	buffer_load_u8 v189, v94, s[24:27], 0 offen
	buffer_load_u8 v190, v95, s[24:27], 0 offen
	buffer_load_u8 v191, v96, s[24:27], 0 offen
	buffer_load_u8 v124, v124, s[24:27], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_clause 0x6
	buffer_load_u8 v66, v155, s[20:23], 0 offen
	buffer_load_u8 v67, v157, s[20:23], 0 offen
	buffer_load_u8 v68, v159, s[20:23], 0 offen
	buffer_load_u8 v69, v160, s[20:23], 0 offen
	buffer_load_u8 v70, v158, s[20:23], 0 offen
	buffer_load_u8 v71, v156, s[20:23], 0 offen
	buffer_load_u8 v72, v154, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s34, s42
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v140, v65
	s_waitcnt vmcnt(6)
	ds_store_b8 v140, v66 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v140, v67 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v140, v68 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v141, v72
	ds_store_b8 v141, v71 offset:512
	ds_store_b8 v141, v70 offset:1024
	ds_store_b8 v141, v69 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[93:96], v142 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v142 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v143 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v143 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v144 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v144 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v145 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v145 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v129, v161
	ds_store_b8 v129, v162 offset:256
	ds_store_b8 v129, v163 offset:512
	ds_store_b8 v129, v165 offset:1024
	ds_store_b8 v129, v166 offset:1280
	ds_store_b8 v129, v167 offset:1536
	ds_store_b8 v129, v169 offset:2048
	ds_store_b8 v129, v170 offset:2304
	ds_store_b8 v129, v171 offset:2560
	ds_store_b8 v129, v173 offset:3072
	ds_store_b8 v129, v174 offset:3328
	ds_store_b8 v129, v175 offset:3584
	ds_store_b8 v129, v177 offset:4096
	ds_store_b8 v129, v178 offset:4352
	ds_store_b8 v129, v179 offset:4608
	ds_store_b8 v129, v181 offset:5120
	ds_store_b8 v129, v182 offset:5376
	ds_store_b8 v129, v183 offset:5632
	ds_store_b8 v129, v185 offset:6144
	ds_store_b8 v129, v186 offset:6400
	ds_store_b8 v129, v187 offset:6656
	ds_store_b8 v129, v189 offset:7168
	ds_store_b8 v129, v190 offset:7424
	ds_store_b8 v129, v191 offset:7680
	ds_store_b8 v146, v164
	ds_store_b8 v147, v168
	ds_store_b8 v148, v172
	ds_store_b8 v149, v176
	ds_store_b8 v150, v180
	ds_store_b8 v151, v184
	ds_store_b8 v152, v188
	ds_store_b8 v153, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1364 31                       ; ragged.py:1364:31
	ds_load_u8 v124, v128 offset:1280
	ds_load_u8 v154, v128 offset:1024
	ds_load_u8 v155, v128 offset:1792
	ds_load_u8 v156, v128 offset:1536
	ds_load_u8 v157, v128 offset:256
	ds_load_u8 v158, v128
	ds_load_u8 v159, v128 offset:768
	ds_load_u8 v160, v128 offset:512
	ds_load_u8 v161, v128 offset:1920
	ds_load_u8 v162, v128 offset:1664
	ds_load_u8 v163, v128 offset:1408
	ds_load_u8 v164, v128 offset:1152
	ds_load_u8 v165, v128 offset:896
	ds_load_u8 v166, v128 offset:640
	ds_load_u8 v167, v128 offset:384
	ds_load_u8 v168, v128 offset:128
	ds_load_u8 v169, v128 offset:3328
	ds_load_u8 v170, v128 offset:3072
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v124, v154, v124, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v154, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	ds_load_u8 v158, v128 offset:3840
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v157, v160, v159, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v124
	ds_load_u8 v159, v128 offset:3584
	ds_load_u8 v124, v128 offset:2304
	ds_load_u8 v160, v128 offset:2048
	v_lshl_or_b32 v154, v157, 16, v156
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v156, v164, v163, 0xc0c0004
	v_perm_b32 v157, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v162, v168, v167, 0xc0c0004
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v163, v128 offset:3968
	ds_load_u8 v161, v128 offset:3712
	ds_load_u8 v164, v128 offset:3456
	ds_load_u8 v166, v128 offset:3200
	ds_load_u8 v168, v128 offset:2432
	v_lshl_or_b32 v157, v157, 16, v156
	v_lshl_or_b32 v156, v165, 16, v162
	ds_load_u8 v162, v128 offset:2944
	ds_load_u8 v165, v128 offset:2688
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v167, v170, v169, 0xc0c0004
	ds_load_u8 v169, v128 offset:2176
	v_wmma_i32_16x16x16_iu4 v[41:48], v[154:155], v[93:94], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[156:157], v[93:94], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[154:155], v[95:96], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v160, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[156:157], v[95:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[154:155], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[156:157], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[156:157], v[91:92], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v162, v165, v162, 0xc0c0004
	ds_load_u8 v165, v128 offset:5760
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v128 offset:2816
	ds_load_u8 v160, v128 offset:2560
	v_perm_b32 v161, v161, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v160, v159, 0xc0c0004
	v_lshl_or_b32 v159, v158, 16, v167
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v158, v160, 16, v124
	ds_load_u8 v124, v128 offset:5376
	ds_load_u8 v167, v128 offset:5120
	v_perm_b32 v160, v166, v164, 0xc0c0004
	ds_load_u8 v164, v128 offset:5888
	v_perm_b32 v166, v169, v168, 0xc0c0004
	ds_load_u8 v168, v128 offset:6016
	ds_load_u8 v163, v128 offset:5632
	v_lshl_or_b32 v161, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[41:48], v[158:159], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v160, v162, 16, v166
	ds_load_u8 v162, v128 offset:4352
	ds_load_u8 v166, v128 offset:5504
	ds_load_u8 v169, v128 offset:5248
	v_wmma_i32_16x16x16_iu4 v[49:56], v[158:159], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[158:159], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[160:161], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[160:161], v[87:88], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[160:161], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[160:161], v[83:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v167, v124, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v163, v163, v164, 0xc0c0004
	ds_load_u8 v164, v128 offset:4096
	ds_load_u8 v167, v128 offset:4992
	ds_load_u8 v170, v128 offset:4736
	ds_load_u8 v171, v128 offset:4480
	ds_load_u8 v172, v128 offset:4224
	v_lshl_or_b32 v163, v163, 16, v124
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v124, v169, v166, 0xc0c0004
	ds_load_u8 v169, v128 offset:7168
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v128 offset:4864
	ds_load_u8 v173, v128 offset:4608
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v167, v170, v167, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v166, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v173, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v164, 16, v162
	v_perm_b32 v164, v165, v168, 0xc0c0004
	ds_load_u8 v168, v128 offset:7424
	v_wmma_i32_16x16x16_iu4 v[41:48], v[162:163], v[77:78], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v164, 16, v124
	v_lshl_or_b32 v164, v167, 16, v166
	ds_load_u8 v124, v128 offset:7552
	ds_load_u8 v166, v128 offset:7680
	ds_load_u8 v170, v128 offset:8064
	ds_load_u8 v171, v128 offset:7808
	ds_load_u8 v172, v128 offset:7296
	v_wmma_i32_16x16x16_iu4 v[49:56], v[162:163], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[162:163], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[164:165], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[79:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v167, v169, v168, 0xc0c0004
	ds_load_u8 v168, v128 offset:7936
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v124, v172, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v166, v168, 0xc0c0004
	ds_load_u8 v168, v128 offset:6400
	ds_load_u8 v169, v128 offset:6144
	ds_load_u8 v173, v128 offset:7040
	ds_load_u8 v174, v128 offset:6784
	ds_load_u8 v175, v128 offset:6528
	ds_load_u8 v176, v128 offset:6272
	v_lshl_or_b32 v167, v166, 16, v167
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v128 offset:6912
	ds_load_u8 v177, v128 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v177, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v166, v169, 16, v168
	v_perm_b32 v168, v171, v170, 0xc0c0004
	v_perm_b32 v170, v176, v175, 0xc0c0004
	v_perm_b32 v171, v174, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[69:70], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v169, v168, 16, v124
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v168, v171, 16, v170
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[69:70], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[168:169], v[71:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[168:169], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[168:169], v[67:68], v[1:8] neg_lo:[1,1,0]
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
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
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
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s20, s41, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s21, s20, 31
	s_add_i32 s20, s20, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s20, s20, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s34, s20
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s24, s33, s38
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s25, s29, 4
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v126, v65
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr24
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $sgpr25
.LBB0_8:
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	s_or_b32 s21, s34, 1
	s_or_b32 s22, s34, 2
	s_or_b32 s23, s34, 3
	s_or_b32 s24, s34, 4
	s_or_b32 s25, s34, 5
	s_or_b32 s47, s34, 6
	s_or_b32 s48, s34, 7
	s_or_b32 s49, s34, 8
	s_or_b32 s50, s34, 9
	s_or_b32 s51, s34, 10
	s_or_b32 s52, s34, 11
	s_or_b32 s53, s34, 12
	s_or_b32 s54, s34, 13
	s_or_b32 s55, s34, 14
	s_or_b32 s56, s34, 15
	s_or_b32 s57, s34, 16
	s_or_b32 s58, s34, 17
	s_or_b32 s59, s34, 18
	s_or_b32 s60, s34, 19
	s_or_b32 s61, s34, 20
	s_or_b32 s62, s34, 21
	s_or_b32 s63, s34, 22
	s_or_b32 s64, s34, 23
	s_or_b32 s65, s34, 24
	s_or_b32 s66, s34, 25
	s_or_b32 s67, s34, 26
	s_or_b32 s68, s34, 27
	s_or_b32 s69, s34, 28
	s_or_b32 s70, s34, 29
	s_or_b32 s71, s34, 30
	s_or_b32 s72, s34, 31
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cmp_lt_i32 s21, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v65, s34, v133
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s22, s20
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xor_b32_e32 v130, v131, v130
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s23, s20
	v_cmp_gt_i32_e32 vcc_lo, s20, v65
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s24, s20
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_and_b32_e32 v131, 24, v126
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s25, s20
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s47, s20
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s48, s20
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s49, s20
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s50, s20
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s51, s20
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s52, s20
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s53, s20
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s54, s20
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s55, s20
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s56, s20
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s57, s20
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s58, s20
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s59, s20
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s60, s20
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s61, s20
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s62, s20
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s63, s20
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s64, s20
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s65, s20
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s66, s20
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s67, s20
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s68, s20
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s69, s20
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s70, s20
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s71, s20
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s72, s20
	s_cselect_b32 s73, -1, 0
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s26, s41, 0x80000001
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cmp_eq_u32 s26, 1
	s_cselect_b32 s26, -1, 0
	.loc	1 1386 63 is_stmt 0             ; ragged.py:1386:63
	s_add_i32 s27, s20, -1
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cmp_eq_u32 s34, s27
	s_cselect_b32 s41, -1, 0
	s_cmp_eq_u32 s21, s27
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s22, s27
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s23, s27
	s_mov_b32 s23, 0x31027000
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s24, s27
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s25, s27
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s27
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s48, s27
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s49, s27
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s50, s27
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s51, s27
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s52, s27
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s53, s27
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s54, s27
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s55, s27
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s56, s27
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s57, s27
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s58, s27
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s59, s27
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s60, s27
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s61, s27
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s62, s27
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s63, s27
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s64, s27
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s65, s27
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s66, s27
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s67, s27
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s68, s27
	s_cselect_b32 s68, -1, 0
	s_cmp_eq_u32 s69, s27
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s70, s27
	s_cselect_b32 s70, -1, 0
	s_cmp_eq_u32 s71, s27
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s72, s27
	s_cselect_b32 s72, -1, 0
	.loc	1 1387 42 is_stmt 1             ; ragged.py:1387:42
	s_add_i32 s24, s33, s38
	s_lshl_b32 s20, s35, 3
	v_mad_u64_u32 v[66:67], null, s24, s35, v[65:66]
	s_lshl_b32 s21, s35, 4
	s_lshl_b32 s22, s35, 5
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s8, s8, vcc_lo
	s_and_b32 s7, s7, vcc_lo
	s_and_b32 s6, s6, vcc_lo
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v68, v132, s20, v66
	v_add3_u32 v69, v132, s21, v66
	v_add3_u32 v70, v132, s37, v66
	v_add3_u32 v71, v132, s22, v66
	v_add3_u32 v72, v132, s36, v66
	v_add3_u32 v73, v132, s39, v66
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s4, s4, vcc_lo
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s2, s2, vcc_lo
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v67, v66, v132
	v_add3_u32 v66, v132, s40, v66
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s9, s34, s9
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s9, s9, s29
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s6
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e64 v67, 0x80000000, v67, s8
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	v_cndmask_b32_e64 v70, 0x80000000, v70, s5
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s1, s29, 1
	v_add3_u32 v80, s9, s29, v97
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	s_clause 0x7
	buffer_load_u8 v85, v67, s[20:23], 0 offen
	buffer_load_u8 v86, v68, s[20:23], 0 offen
	buffer_load_u8 v87, v69, s[20:23], 0 offen
	buffer_load_u8 v88, v70, s[20:23], 0 offen
	buffer_load_u8 v89, v71, s[20:23], 0 offen
	buffer_load_u8 v90, v72, s[20:23], 0 offen
	buffer_load_u8 v91, v73, s[20:23], 0 offen
	buffer_load_u8 v92, v66, s[20:23], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s2, s29, 3
	v_add3_u32 v66, s9, s1, v97
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s103
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s3, s29, 2
	v_add3_u32 v67, s9, s2, v97
	s_mul_i32 s4, s29, 5
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s102
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v68, s9, s3, v97
	v_add3_u32 v69, s9, s4, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s101
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s29, 6
	s_mul_i32 s6, s29, 7
	v_add_nc_u32_e32 v79, s9, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s100
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v70, s9, s5, v97
	v_add3_u32 v71, s9, s6, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s99
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s7, s29, 3
	s_mul_i32 s8, s29, 9
	s_mul_i32 s20, s29, 12
	s_mul_i32 s21, s29, 13
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s98
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v72, s9, s7, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v79, 0x80000000, v79, s0
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v73, s9, s8, v97
	v_add3_u32 v76, s9, s20, v97
	s_mul_i32 s20, s29, 29
	v_add3_u32 v77, s9, s21, v97
	s_mul_i32 s21, s29, 30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s97
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s12, s29, 10
	s_mul_i32 s13, s29, 11
	v_add3_u32 v104, s9, s20, v97
	v_add3_u32 v105, s9, s21, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s95
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v74, s9, s12, v97
	v_add3_u32 v75, s9, s13, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v106, v79, s[20:23], 0 offen
	buffer_load_u8 v107, v80, s[20:23], 0 offen
	buffer_load_u8 v108, v66, s[20:23], 0 offen
	buffer_load_u8 v109, v67, s[20:23], 0 offen
	buffer_load_u8 v110, v68, s[20:23], 0 offen
	buffer_load_u8 v111, v69, s[20:23], 0 offen
	buffer_load_u8 v112, v70, s[20:23], 0 offen
	buffer_load_u8 v113, v71, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v72, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s96
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s35, s29, 14
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v73, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s94
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s36, s29, 15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v74, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s93
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v78, s9, s35, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v75, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s92
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v81, s9, s36, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v76, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s91
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s25, s29, 4
	s_mul_i32 s34, s29, 17
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v77, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s90
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v82, s9, s25, v97
	v_add3_u32 v83, s9, s34, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v78, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s89
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s37, s29, 18
	s_mul_i32 s1, s29, 19
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v73, 0x80000000, v81, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s87
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v84, s9, s37, v97
	v_add3_u32 v93, s9, s1, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v114, v66, s[20:23], 0 offen
	buffer_load_u8 v115, v67, s[20:23], 0 offen
	buffer_load_u8 v116, v68, s[20:23], 0 offen
	buffer_load_u8 v117, v69, s[20:23], 0 offen
	buffer_load_u8 v118, v70, s[20:23], 0 offen
	buffer_load_u8 v119, v71, s[20:23], 0 offen
	buffer_load_u8 v120, v72, s[20:23], 0 offen
	buffer_load_u8 v121, v73, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v82, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s88
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s2, s29, 20
	s_mul_i32 s3, s29, 21
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v83, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s86
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v94, s9, s2, v97
	v_add3_u32 v95, s9, s3, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v84, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s85
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s4, s29, 22
	s_mul_i32 s7, s29, 25
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v93, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s84
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s29, 23
	v_add3_u32 v96, s9, s4, v97
	v_add3_u32 v100, s9, s7, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v94, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s83
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s6, s29, 24
	v_add3_u32 v98, s9, s5, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v95, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s82
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v99, s9, s6, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v96, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s81
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s8, s29, 26
	s_mul_i32 s12, s29, 27
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v73, 0x80000000, v98, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s79
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v101, s9, s8, v97
	v_add3_u32 v102, s9, s12, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v93, v66, s[20:23], 0 offen
	buffer_load_u8 v94, v67, s[20:23], 0 offen
	buffer_load_u8 v95, v68, s[20:23], 0 offen
	buffer_load_u8 v96, v69, s[20:23], 0 offen
	buffer_load_u8 v122, v70, s[20:23], 0 offen
	buffer_load_u8 v123, v71, s[20:23], 0 offen
	buffer_load_u8 v124, v72, s[20:23], 0 offen
	buffer_load_u8 v132, v73, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v99, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s80
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s13, s29, 28
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v100, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s78
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v103, s9, s13, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v101, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s77
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s35, s29, 31
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v102, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s76
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v97, s9, s35, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v103, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s75
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s1, s26, s41
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v104, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s74
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s2, s26, s42
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v105, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s73
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s7, s26, s47
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v73, 0x80000000, v97, vcc_lo
	s_clause 0x7
	buffer_load_u8 v133, v66, s[20:23], 0 offen
	buffer_load_u8 v134, v67, s[20:23], 0 offen
	buffer_load_u8 v135, v68, s[20:23], 0 offen
	buffer_load_u8 v136, v69, s[20:23], 0 offen
	buffer_load_u8 v137, v70, s[20:23], 0 offen
	buffer_load_u8 v138, v71, s[20:23], 0 offen
	buffer_load_u8 v139, v72, s[20:23], 0 offen
	buffer_load_u8 v140, v73, s[20:23], 0 offen
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s27, v65
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s9, s26, s49
	s_and_b32 s12, s26, s50
	s_and_b32 s3, s26, s43
	s_and_b32 s4, s26, s44
	s_and_b32 s47, s26, vcc_lo
	s_and_b32 s23, s26, s57
	s_and_b32 s27, s26, s58
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s5, s26, s45
	s_and_b32 s6, s26, s46
	s_and_b32 s8, s26, s48
	s_and_b32 s13, s26, s51
	s_and_b32 s14, s26, s52
	s_and_b32 s15, s26, s53
	s_and_b32 s20, s26, s54
	s_and_b32 s21, s26, s55
	s_and_b32 s22, s26, s56
	s_and_b32 s34, s26, s59
	s_and_b32 s35, s26, s60
	s_and_b32 s36, s26, s61
	s_and_b32 s37, s26, s62
	s_and_b32 s38, s26, s63
	s_and_b32 s39, s26, s64
	s_and_b32 s40, s26, s65
	s_and_b32 s41, s26, s66
	s_and_b32 s42, s26, s67
	s_and_b32 s43, s26, s68
	s_and_b32 s44, s26, s69
	s_and_b32 s45, s26, s70
	s_and_b32 s46, s26, s71
	s_and_b32 s26, s26, s72
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(39)
	v_and_b16 v65.l, v85.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v65.h, v86.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v66.l, v87.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v66.h, v88.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v67.l, v89.l, 15
	s_waitcnt vmcnt(34)
	v_and_b16 v67.h, v90.l, 15
	s_waitcnt vmcnt(33)
	v_and_b16 v68.l, v91.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v68.h, v92.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v65.l, v85.l, v65.l, s47
	v_cndmask_b16 v66.l, v87.l, v66.l, s47
	v_cndmask_b16 v67.l, v89.l, v67.l, s47
	v_cndmask_b16 v68.l, v91.l, v68.l, s47
	v_cndmask_b16 v65.h, v86.l, v65.h, s47
	v_cndmask_b16 v66.h, v88.l, v66.h, s47
	v_cndmask_b16 v67.h, v90.l, v67.h, s47
	v_cndmask_b16 v68.h, v92.l, v68.h, s47
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(31)
	v_and_b16 v69.l, v106.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v69.h, v107.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v70.l, v108.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v70.h, v109.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v71.l, v110.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v97.l, v106.l, v69.l, s1
	v_cndmask_b16 v97.h, v107.l, v69.h, s2
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v69, 0, v130
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(26)
	v_and_b16 v71.h, v111.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v72.l, v112.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v72.h, v113.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v98.l, v108.l, v70.l, s3
	v_cndmask_b16 v98.h, v109.l, v70.h, s4
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v70, 0x110, v130, 0
	ds_store_b8 v69, v65
	ds_store_b8 v69, v66 offset:512
	ds_store_b8 v69, v67 offset:1024
	ds_store_b8 v69, v68 offset:1536
	ds_store_b8_d16_hi v70, v65
	ds_store_b8_d16_hi v70, v66 offset:512
	ds_store_b8_d16_hi v70, v67 offset:1024
	ds_store_b8_d16_hi v70, v68 offset:1536
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v99.l, v110.l, v71.l, s5
	v_cndmask_b16 v99.h, v111.l, v71.h, s6
	v_cndmask_b16 v100.l, v112.l, v72.l, s7
	v_cndmask_b16 v100.h, v113.l, v72.h, s8
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v73.l, v114.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v73.h, v115.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v74.l, v116.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v74.h, v117.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v75.l, v118.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v101.l, v114.l, v73.l, s9
	v_cndmask_b16 v101.h, v115.l, v73.h, s12
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_lshl_or_b32 v73, v125, 5, v131
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(18)
	v_and_b16 v75.h, v119.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v76.l, v120.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v76.h, v121.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v102.l, v116.l, v74.l, s13
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v69, 0, v73
	v_xad_u32 v85, v73, 16, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v102.h, v117.l, v74.h, s14
	v_cndmask_b16 v103.l, v118.l, v75.l, s15
	v_cndmask_b16 v103.h, v119.l, v75.h, s20
	v_cndmask_b16 v104.l, v120.l, v76.l, s21
	v_cndmask_b16 v104.h, v121.l, v76.h, s22
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[65:68], v69 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v69 offset0:2 offset1:3
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v77.l, v93.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v77.h, v94.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v78.l, v95.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v78.h, v96.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v79.l, v122.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v79.h, v123.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v80.l, v124.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v80.h, v132.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v105.l, v93.l, v77.l, s23
	v_cndmask_b16 v105.h, v94.l, v77.h, s27
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v77, v73, 8, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v106.l, v95.l, v78.l, s34
	v_cndmask_b16 v106.h, v96.l, v78.h, s35
	v_cndmask_b16 v107.l, v122.l, v79.l, s36
	v_cndmask_b16 v107.h, v123.l, v79.h, s37
	v_cndmask_b16 v108.l, v124.l, v80.l, s38
	v_cndmask_b16 v108.h, v132.l, v80.h, s39
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xad_u32 v93, v73, 24, 0
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v81.l, v133.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v81.h, v134.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v82.l, v135.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v82.h, v136.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v83.l, v137.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v83.h, v138.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v84.l, v139.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v84.h, v140.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v109.l, v133.l, v81.l, s40
	v_cndmask_b16 v109.h, v134.l, v81.h, s41
	v_cndmask_b16 v110.l, v135.l, v82.l, s42
	v_cndmask_b16 v110.h, v136.l, v82.h, s43
	v_cndmask_b16 v111.l, v137.l, v83.l, s44
	v_cndmask_b16 v111.h, v138.l, v83.h, s45
	v_cndmask_b16 v112.l, v139.l, v84.l, s46
	v_cndmask_b16 v112.h, v140.l, v84.h, s26
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[73:76], v77 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v77 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[81:84], v85 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v85 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[89:92], v93 offset1:1
	ds_load_2addr_stride64_b64 v[93:96], v93 offset0:2 offset1:3
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v129, v97
	ds_store_b8_d16_hi v129, v97 offset:256
	ds_store_b8 v129, v98 offset:512
	ds_store_b8_d16_hi v129, v98 offset:768
	ds_store_b8 v129, v99 offset:1024
	ds_store_b8_d16_hi v129, v99 offset:1280
	ds_store_b8 v129, v100 offset:1536
	ds_store_b8_d16_hi v129, v100 offset:1792
	ds_store_b8 v129, v101 offset:2048
	ds_store_b8_d16_hi v129, v101 offset:2304
	ds_store_b8 v129, v102 offset:2560
	ds_store_b8_d16_hi v129, v102 offset:2816
	ds_store_b8 v129, v103 offset:3072
	ds_store_b8_d16_hi v129, v103 offset:3328
	ds_store_b8 v129, v104 offset:3584
	ds_store_b8_d16_hi v129, v104 offset:3840
	ds_store_b8 v129, v105 offset:4096
	ds_store_b8_d16_hi v129, v105 offset:4352
	ds_store_b8 v129, v106 offset:4608
	ds_store_b8_d16_hi v129, v106 offset:4864
	ds_store_b8 v129, v107 offset:5120
	ds_store_b8_d16_hi v129, v107 offset:5376
	ds_store_b8 v129, v108 offset:5632
	ds_store_b8_d16_hi v129, v108 offset:5888
	ds_store_b8 v129, v109 offset:6144
	ds_store_b8_d16_hi v129, v109 offset:6400
	ds_store_b8 v129, v110 offset:6656
	ds_store_b8_d16_hi v129, v110 offset:6912
	ds_store_b8 v129, v111 offset:7168
	ds_store_b8_d16_hi v129, v111 offset:7424
	ds_store_b8 v129, v112 offset:7680
	ds_store_b8_d16_hi v129, v112 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v97, v128 offset:1280
	ds_load_u8 v98, v128 offset:1024
	ds_load_u8 v99, v128 offset:1792
	ds_load_u8 v100, v128 offset:1536
	ds_load_u8 v101, v128 offset:256
	ds_load_u8 v102, v128
	ds_load_u8 v103, v128 offset:768
	ds_load_u8 v104, v128 offset:512
	ds_load_u8 v105, v128 offset:1920
	ds_load_u8 v106, v128 offset:1664
	ds_load_u8 v107, v128 offset:1408
	ds_load_u8 v108, v128 offset:1152
	ds_load_u8 v117, v128 offset:3968
	ds_load_u8 v118, v128 offset:3712
	ds_load_u8 v119, v128 offset:3456
	ds_load_u8 v120, v128 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v100, v99, 0xc0c0004
	ds_load_u8 v99, v128 offset:3328
	ds_load_u8 v100, v128 offset:3072
	ds_load_u8 v109, v128 offset:3840
	ds_load_u8 v110, v128 offset:3584
	ds_load_u8 v111, v128 offset:896
	ds_load_u8 v112, v128 offset:640
	ds_load_u8 v113, v128 offset:384
	ds_load_u8 v114, v128 offset:128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v102, v104, v103, 0xc0c0004
	ds_load_u8 v103, v128 offset:2304
	ds_load_u8 v104, v128 offset:2048
	ds_load_u8 v115, v128 offset:2816
	ds_load_u8 v116, v128 offset:2560
	v_lshl_or_b32 v98, v98, 16, v97
	v_lshl_or_b32 v97, v102, 16, v101
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[97:98], v[65:66], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[97:98], v[67:68], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v100, v110, v109, 0xc0c0004
	ds_load_u8 v101, v128 offset:5376
	ds_load_u8 v102, v128 offset:5120
	ds_load_u8 v109, v128 offset:5888
	ds_load_u8 v110, v128 offset:5632
	ds_load_u8 v121, v128 offset:2944
	ds_load_u8 v122, v128 offset:2688
	ds_load_u8 v123, v128 offset:2432
	ds_load_u8 v124, v128 offset:2176
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v100, 16, v99
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v104, v116, v115, 0xc0c0004
	ds_load_u8 v115, v128 offset:4352
	ds_load_u8 v116, v128 offset:4096
	ds_load_u8 v129, v128 offset:4864
	ds_load_u8 v130, v128 offset:4608
	v_lshl_or_b32 v99, v104, 16, v103
	ds_load_u8 v103, v128 offset:7424
	ds_load_u8 v104, v128 offset:7168
	ds_load_u8 v131, v128 offset:7936
	ds_load_u8 v132, v128 offset:7680
	ds_load_u8 v133, v128 offset:6016
	ds_load_u8 v134, v128 offset:5760
	ds_load_u8 v135, v128 offset:5504
	ds_load_u8 v136, v128 offset:5248
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v102, v110, v109, 0xc0c0004
	ds_load_u8 v109, v128 offset:4992
	ds_load_u8 v110, v128 offset:4736
	ds_load_u8 v137, v128 offset:4480
	ds_load_u8 v138, v128 offset:4224
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[99:100], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v102, 16, v101
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[79:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v139, v104, v103, 0xc0c0004
	v_perm_b32 v116, v130, v129, 0xc0c0004
	v_perm_b32 v103, v108, v107, 0xc0c0004
	v_perm_b32 v104, v106, v105, 0xc0c0004
	v_perm_b32 v105, v114, v113, 0xc0c0004
	v_perm_b32 v106, v112, v111, 0xc0c0004
	v_lshl_or_b32 v101, v116, 16, v115
	ds_load_u8 v115, v128 offset:8064
	ds_load_u8 v116, v128 offset:7808
	ds_load_u8 v129, v128 offset:7552
	ds_load_u8 v130, v128 offset:7296
	ds_load_u8 v107, v128 offset:6400
	ds_load_u8 v108, v128 offset:6144
	ds_load_u8 v111, v128 offset:6912
	ds_load_u8 v112, v128 offset:6656
	v_lshl_or_b32 v104, v104, 16, v103
	v_lshl_or_b32 v103, v106, 16, v105
	v_perm_b32 v105, v120, v119, 0xc0c0004
	v_perm_b32 v113, v118, v117, 0xc0c0004
	ds_load_u8 v114, v128 offset:7040
	ds_load_u8 v117, v128 offset:6784
	ds_load_u8 v118, v128 offset:6528
	ds_load_u8 v119, v128 offset:6272
	v_perm_b32 v120, v124, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[103:104], v[65:66], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_lshl_or_b32 v66, v113, 16, v105
	v_perm_b32 v105, v136, v135, 0xc0c0004
	v_lshl_or_b32 v65, v121, 16, v120
	v_perm_b32 v113, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v120, v138, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v112, v111, 0xc0c0004
	v_lshl_or_b32 v74, v113, 16, v105
	v_lshl_or_b32 v73, v109, 16, v120
	v_perm_b32 v109, v130, v129, 0xc0c0004
	v_perm_b32 v110, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_perm_b32 v112, v117, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v131, 16, v139
	v_lshl_or_b32 v105, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v110, 16, v109
	v_lshl_or_b32 v81, v112, 16, v111
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[105:106], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[89:90], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[105:106], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[105:106], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[105:106], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[95:96], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s33, v125
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v66, s24, v125, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v69, 16, v65
	v_or_b32_e32 v68, 32, v65
	v_or_b32_e32 v67, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s28, v65
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s28, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v71, 64, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s28, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s3
	v_add_nc_u32_e32 v66, 0x60, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v67
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s4, s30, s29
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v68, 0x80000000, v71, s1
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s16
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s4, s31, s4
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v79, v1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x3
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v67, v69, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v69, s4, v0, 1
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v70, 4, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v0, 0xf0, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v80, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v70, v70, 1, v127
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s29, v125
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v73, v11
	v_cvt_f32_i32_e32 v74, v12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v11, 28, v126
	v_and_b32_e32 v1, 32, v1
	v_lshl_add_u32 v12, v0, 2, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v94, 2, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s0, s24, s29
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v93, 4, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v75, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s31, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v10
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v10, s0, s31, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v92, 6, v70
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v11, v12, v1, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v107, s31, v94
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v91, 8, v70
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x86, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v106, s31, v93
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v90, 10, v70
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s29, v13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v85, v7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v87, v0, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x84, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s29, 48, v[10:11]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v105, s31, v92
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v89, 12, v70
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v10, v70, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s29, v107
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v86, v8
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v8, 0x82, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v104, s31, v91
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v88, 14, v70
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s31, v6
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v13, v10, v94, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s29, v106
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v103, s31, v90
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, s31, v7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v10, v93, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s29, v105
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v102, s31, v89
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v99, s31, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v109, v10, v92, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s29, v104
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v101, s31, v88
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s29, v97
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v13, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v100, s31, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v110, v10, v91, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s29, v103
	v_cmp_gt_i32_e64 s9, s29, v98
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v98, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v10, v90, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s29, v102
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s20, s10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s29, v99
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v99, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v83, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x88, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v10, v89, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s29, v101
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_and_b32 s21, s11, 0xffff
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s29, v100
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v100, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v82, v4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x8a, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v113, v10, v88, 2
	v_cndmask_b32_e64 v101, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v81, v3
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v2, 0x8e, v70
	v_or_b32_e32 v3, 0x8c, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v10, v9, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v78, v16
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s31, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v102, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v115, v10, v8, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v77, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s31, v4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v116, v10, v7, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v76, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s31, v2
	v_or_b32_e32 v14, s31, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v117, v10, v6, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s29, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v118, v10, v5, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s29, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v119, v10, v4, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s29, v12
	v_cmp_gt_i32_e64 s4, s29, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v107, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v96, s29, 5, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v120, v10, v3, 2
	v_cndmask_b32_e64 v108, 0x80000000, v118, s19
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s4
	s_and_b32 s3, s3, s0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
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
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v110, 0x80000000, v120, s19
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v65
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v95, s25, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v10, v10, v2, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v65, 0x80000000, v10, s3
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v67
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v51, v51, v10
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v47, v47, v12 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v41, v41, v12
	v_mul_f32_e32 v42, v42, v12
	v_mul_f32_e32 v43, v43, v12
	v_mul_f32_e32 v44, v44, v12
	v_mul_f32_e32 v45, v45, v12
	v_dual_mul_f32 v50, v50, v10 :: v_dual_lshlrev_b32 v13, 16, v68
	v_mul_f32_e32 v46, v46, v12
	v_mul_f32_e32 v48, v48, v12
	v_mul_f32_e32 v57, v57, v12
	v_dual_mul_f32 v58, v58, v12 :: v_dual_mul_f32 v53, v53, v10
	v_dual_mul_f32 v59, v59, v12 :: v_dual_mul_f32 v52, v52, v10
	v_dual_mul_f32 v60, v60, v12 :: v_dual_mul_f32 v55, v55, v10
	v_dual_mul_f32 v61, v61, v12 :: v_dual_mul_f32 v54, v54, v10
	v_dual_mul_f32 v62, v62, v12 :: v_dual_mul_f32 v33, v33, v10
	v_dual_mul_f32 v63, v63, v12 :: v_dual_mul_f32 v56, v56, v10
	v_dual_mul_f32 v64, v64, v12 :: v_dual_mul_f32 v35, v35, v10
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, v49, v10 :: v_dual_lshlrev_b32 v12, 16, v69
	v_dual_mul_f32 v34, v34, v10 :: v_dual_mul_f32 v67, v25, v13
	v_dual_mul_f32 v36, v36, v10 :: v_dual_mul_f32 v27, v27, v13
	v_dual_mul_f32 v37, v37, v10 :: v_dual_mul_f32 v26, v26, v13
	v_dual_mul_f32 v38, v38, v10 :: v_dual_mul_f32 v29, v29, v13
	v_dual_mul_f32 v39, v39, v10 :: v_dual_mul_f32 v28, v28, v13
	v_dual_mul_f32 v40, v40, v10 :: v_dual_mul_f32 v31, v31, v13
	v_dual_mul_f32 v30, v30, v13 :: v_dual_mul_f32 v71, v71, v66
	v_dual_mul_f32 v32, v32, v13 :: v_dual_mul_f32 v73, v73, v66
	v_dual_mul_f32 v68, v17, v13 :: v_dual_mul_f32 v75, v75, v66
	v_dual_mul_f32 v69, v18, v13 :: v_dual_mul_f32 v72, v72, v66
	v_dual_mul_f32 v111, v19, v13 :: v_dual_mul_f32 v74, v74, v66
	v_dual_mul_f32 v112, v20, v13 :: v_dual_mul_f32 v77, v77, v66
	v_dual_mul_f32 v113, v21, v13 :: v_dual_mul_f32 v76, v76, v66
	v_dual_mul_f32 v114, v22, v13 :: v_dual_mul_f32 v79, v79, v66
	v_dual_mul_f32 v115, v23, v13 :: v_dual_mul_f32 v78, v78, v66
	v_dual_mul_f32 v116, v24, v13 :: v_dual_mul_f32 v81, v81, v66
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v87
	ds_load_b128 v[14:17], v87 offset:16
	ds_load_b128 v[18:21], v87 offset:512
	ds_load_b128 v[22:25], v87 offset:528
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v121, v95, v70, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v83, v83, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v122, v95, v94, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v80, v80, v66
	v_mul_f32_e32 v85, v85, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v123, v95, v93, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v82, v82, v66
	v_mul_f32_e32 v84, v84, v66
	v_mul_f32_e32 v66, v86, v66
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v41, v41, v10 :: v_dual_mul_f32 v46, v46, v15
	v_dual_mul_f32 v42, v42, v11 :: v_dual_mul_f32 v43, v43, v12
	v_dual_mul_f32 v44, v44, v13 :: v_dual_mul_f32 v45, v45, v14
	v_dual_mul_f32 v48, v48, v17 :: v_dual_mul_f32 v47, v47, v16
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v57, v57, v18 :: v_dual_mul_f32 v58, v58, v19
	v_dual_mul_f32 v59, v59, v20 :: v_dual_mul_f32 v60, v60, v21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v61, v61, v22 :: v_dual_mul_f32 v62, v62, v23
	v_mul_f32_e32 v49, v49, v10
	v_mul_f32_e32 v63, v63, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0xe
	buffer_store_b32 v41, v1, s[20:23], 0 offen
	buffer_store_b32 v42, v97, s[20:23], 0 offen
	buffer_store_b32 v43, v98, s[20:23], 0 offen
	buffer_store_b32 v44, v99, s[20:23], 0 offen
	buffer_store_b32 v45, v100, s[20:23], 0 offen
	buffer_store_b32 v46, v101, s[20:23], 0 offen
	buffer_store_b32 v47, v102, s[20:23], 0 offen
	buffer_store_b32 v48, v103, s[20:23], 0 offen
	buffer_store_b32 v57, v104, s[20:23], 0 offen
	buffer_store_b32 v58, v105, s[20:23], 0 offen
	buffer_store_b32 v59, v106, s[20:23], 0 offen
	buffer_store_b32 v60, v107, s[20:23], 0 offen
	buffer_store_b32 v61, v108, s[20:23], 0 offen
	buffer_store_b32 v62, v109, s[20:23], 0 offen
	buffer_store_b32 v63, v110, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v121, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v64, v64, v25 :: v_dual_mul_f32 v51, v51, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v41, 0x80000000, v122, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v50, v50, v11 :: v_dual_mul_f32 v53, v53, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v123, s3
	s_clause 0x1
	buffer_store_b32 v64, v65, s[20:23], 0 offen
	buffer_store_b32 v49, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v95, v92, 2
	s_clause 0x1
	buffer_store_b32 v50, v41, s[20:23], 0 offen
	buffer_store_b32 v51, v42, s[20:23], 0 offen
	v_add_lshl_u32 v41, v95, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v42, v95, v90, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v52, v52, v13 :: v_dual_mul_f32 v55, v55, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v89, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v54, v54, v15 :: v_dual_mul_f32 v33, v33, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v52, v1, s[20:23], 0 offen
	buffer_store_b32 v53, v41, s[20:23], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	v_add_lshl_u32 v1, v95, v88, 2
	v_add_lshl_u32 v41, v95, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v54, v42, s[20:23], 0 offen
	buffer_store_b32 v55, v43, s[20:23], 0 offen
	v_add_lshl_u32 v42, v95, v8, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v56, v56, v17 :: v_dual_mul_f32 v35, v35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v7, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v34, v34, v19 :: v_dual_mul_f32 v37, v37, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v56, v1, s[20:23], 0 offen
	buffer_store_b32 v33, v41, s[20:23], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	v_add_lshl_u32 v1, v95, v6, 2
	v_add_lshl_u32 v33, v95, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v34, v42, s[20:23], 0 offen
	buffer_store_b32 v35, v43, s[20:23], 0 offen
	v_add_lshl_u32 v34, v95, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v36, v36, v21 :: v_dual_mul_f32 v39, v39, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v95, v3, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v38, v38, v23 :: v_dual_mul_f32 v67, v67, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v36, v1, s[20:23], 0 offen
	buffer_store_b32 v37, v33, s[20:23], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	v_add_lshl_u32 v1, v95, v2, 2
	v_add_lshl_u32 v33, v96, v70, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v38, v34, s[20:23], 0 offen
	buffer_store_b32 v39, v35, s[20:23], 0 offen
	v_add_lshl_u32 v34, v96, v94, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v96, v93, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v40, v40, v25 :: v_dual_mul_f32 v27, v27, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v26, v26, v11 :: v_dual_mul_f32 v29, v29, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	s_clause 0x1
	buffer_store_b32 v40, v1, s[20:23], 0 offen
	buffer_store_b32 v67, v33, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v92, 2
	s_clause 0x1
	buffer_store_b32 v26, v34, s[20:23], 0 offen
	buffer_store_b32 v27, v35, s[20:23], 0 offen
	v_add_lshl_u32 v26, v96, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v13 :: v_dual_mul_f32 v31, v31, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v90, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v33, v96, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v28, v1, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v88, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v30, v15 :: v_dual_mul_f32 v87, v112, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v9, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v32, v17 :: v_dual_mul_f32 v69, v69, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v68, v68, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[20:23], 0 offen
	buffer_store_b32 v31, v33, s[20:23], 0 offen
	v_add_lshl_u32 v27, v96, v8, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v86, v111, v20 :: v_dual_mul_f32 v111, v113, v22
	v_mul_f32_e32 v113, v115, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v32, v1, s[20:23], 0 offen
	buffer_store_b32 v68, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v6, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v5, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v69, v27, s[20:23], 0 offen
	buffer_store_b32 v86, v28, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v4, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v3, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v87, v1, s[20:23], 0 offen
	buffer_store_b32 v111, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v2, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v112, v114, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v0, v70, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s1, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v114, v116, v25
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v71, v10 :: v_dual_mul_f32 v11, v72, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v112, v27, s[20:23], 0 offen
	buffer_store_b32 v113, v28, s[20:23], 0 offen
	v_add_lshl_u32 v27, v0, v94, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v28, v0, v93, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v114, v1, s[20:23], 0 offen
	buffer_store_b32 v10, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v92, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v10, v0, v91, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v73, v12 :: v_dual_mul_f32 v13, v74, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v14, v75, v14 :: v_dual_mul_f32 v15, v76, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v11, v27, s[20:23], 0 offen
	buffer_store_b32 v12, v28, s[20:23], 0 offen
	v_add_lshl_u32 v11, v0, v90, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	v_add_lshl_u32 v12, v0, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v13, v1, s[20:23], 0 offen
	buffer_store_b32 v14, v10, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v88, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v9, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v16, v77, v16 :: v_dual_mul_f32 v17, v78, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v18, v79, v18 :: v_dual_mul_f32 v19, v80, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	v_add_lshl_u32 v7, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v15, v11, s[20:23], 0 offen
	buffer_store_b32 v16, v12, s[20:23], 0 offen
	buffer_store_b32 v17, v1, s[20:23], 0 offen
	buffer_store_b32 v18, v9, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v0, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v0, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v0, v3, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	v_add_lshl_u32 v0, v0, v2, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v20, v81, v20 :: v_dual_mul_f32 v21, v82, v21
	v_dual_mul_f32 v22, v83, v22 :: v_dual_mul_f32 v23, v84, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s4
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v24, v85, v24 :: v_dual_mul_f32 v25, v66, v25
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b32 v19, v8, s[20:23], 0 offen
	buffer_store_b32 v20, v7, s[20:23], 0 offen
	buffer_store_b32 v21, v1, s[20:23], 0 offen
	buffer_store_b32 v22, v5, s[20:23], 0 offen
	buffer_store_b32 v23, v2, s[20:23], 0 offen
	buffer_store_b32 v24, v3, s[20:23], 0 offen
	buffer_store_b32 v25, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 192
		.amdhsa_next_free_sgpr 104
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 192
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 104
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12928
; TotalNumSgprs: 106
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 106
; NumVGPRsForWavesPerEU: 192
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     106
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
