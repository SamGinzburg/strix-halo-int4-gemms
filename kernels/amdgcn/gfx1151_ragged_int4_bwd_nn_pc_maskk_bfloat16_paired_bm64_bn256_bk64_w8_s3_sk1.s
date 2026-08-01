	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
	s_clause 0x1
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v128, 0xe0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v127, 15, v0
	v_and_b32_e32 v125, 0x80, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v133, 31, v0
	v_and_b32_e32 v126, 0x7f, v0
	v_lshlrev_b32_e32 v129, 1, v0
	v_add_nc_u32_e32 v130, 0, v0
	v_lshrrev_b32_e32 v131, 1, v128
	v_cmp_eq_u32_e32 vcc_lo, 0, v125
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_mov_b64 s[20:21], s[18:19]
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	s_mul_i32 s23, s22, 24
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	s_mul_i32 s19, s22, 40
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s7, s8
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_xor_b32 s1, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s10, s1, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s1, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s10, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s33, s10, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s4, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 5, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s0, s9, 0x4f7ffffe
	v_mul_lo_u32 v132, s22, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s0, s0
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
	s_sub_i32 s8, s4, s7
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s0, s6, s0
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s0, 1
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s0, s6, s0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s11, s10, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s0, s1
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[0:1], s[10:11], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s41, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s40, s2, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s41, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s9, s40, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s0, s36, s0
	s_addc_u32 s1, s37, s1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s9, v0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s42, s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 8, v1
	v_or_b32_e32 v3, 16, v1
	v_or_b32_e32 v4, 24, v1
	v_or_b32_e32 v5, 32, v1
	v_or_b32_e32 v6, 40, v1
	v_or_b32_e32 v7, 48, v1
	v_or_b32_e32 v9, 56, v1
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s18, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s8, s34, v1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v97
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s7, s34, v2
	v_cmp_gt_i32_e64 s6, s34, v3
	v_cmp_gt_i32_e64 s5, s34, v4
	v_cmp_gt_i32_e64 s4, s34, v5
	v_cmp_gt_i32_e64 s3, s34, v6
	v_cmp_gt_i32_e64 s2, s34, v7
	.loc	1 1361 39                       ; ragged.py:1361:39
	s_mul_i32 s11, s10, s22
	s_mul_i32 s36, s22, 48
	s_mul_i32 s37, s22, 56
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s1, s42, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s1, s1, 26
	s_add_i32 s1, s42, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 6
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s43, s1, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v9
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s18, s43
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mad_u64_u32 v[98:99], null, s35, 3, v[97:98]
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v2, 0x7f, v0
	v_lshlrev_b32_e32 v1, 1, v0
	v_cndmask_b32_e64 v3, 0x88, 0, vcc_lo
	v_or_b32_e32 v7, 0x300, v0
	v_or_b32_e32 v8, 0x700, v0
	v_mad_u64_u32 v[99:100], null, s35, 5, v[97:98]
	v_mad_u64_u32 v[100:101], null, s35, 6, v[97:98]
	v_mad_u64_u32 v[101:102], null, s35, 7, v[97:98]
	v_mad_u64_u32 v[102:103], null, s35, 9, v[97:98]
	v_mad_u64_u32 v[103:104], null, s35, 10, v[97:98]
	v_mad_u64_u32 v[104:105], null, s35, 11, v[97:98]
	v_mad_u64_u32 v[105:106], null, s35, 12, v[97:98]
	v_mad_u64_u32 v[106:107], null, s35, 13, v[97:98]
	v_mad_u64_u32 v[107:108], null, s35, 14, v[97:98]
	v_mad_u64_u32 v[108:109], null, s35, 15, v[97:98]
	v_mad_u64_u32 v[109:110], null, s35, 17, v[97:98]
	v_mad_u64_u32 v[110:111], null, s35, 18, v[97:98]
	v_dual_mov_b32 v34, v33 :: v_dual_and_b32 v1, 24, v1
	v_mov_b32_e32 v36, v33
	v_mad_u64_u32 v[111:112], null, s35, 19, v[97:98]
	v_mad_u64_u32 v[112:113], null, s35, 20, v[97:98]
	v_mad_u64_u32 v[113:114], null, s35, 21, v[97:98]
	v_mad_u64_u32 v[114:115], null, s35, 22, v[97:98]
	v_mad_u64_u32 v[115:116], null, s35, 23, v[97:98]
	v_xor_b32_e32 v2, v3, v2
	v_lshl_or_b32 v1, v127, 5, v1
	v_mad_u64_u32 v[116:117], null, s35, 24, v[97:98]
	v_mad_u64_u32 v[117:118], null, s35, 25, v[97:98]
	v_mad_u64_u32 v[118:119], null, s35, 26, v[97:98]
	v_mad_u64_u32 v[119:120], null, s35, 27, v[97:98]
	v_mad_u64_u32 v[120:121], null, s35, 28, v[97:98]
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
	v_mad_u64_u32 v[121:122], null, s35, 29, v[97:98]
	s_add_i32 s24, s41, s33
	v_mad_u64_u32 v[122:123], null, s35, 30, v[97:98]
	v_mad_u64_u32 v[123:124], null, s35, 31, v[97:98]
	s_mul_i32 s26, s24, s22
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v134, s35, v97
	v_lshl_add_u32 v135, s35, 1, v97
	v_lshl_add_u32 v136, s35, 2, v97
	v_lshl_add_u32 v137, s35, 3, v97
	v_lshl_add_u32 v138, s35, 4, v97
	v_add3_u32 v139, 0, v127, v131
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v140, v133, v132, s26
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v141, 0, v2
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v142, 0, v3
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v143, 0, v1
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v144, 0, v4
	v_dual_mov_b32 v58, v33 :: v_dual_add_nc_u32 v145, 0, v5
	v_dual_mov_b32 v57, v33 :: v_dual_add_nc_u32 v146, 0, v6
	v_dual_mov_b32 v60, v33 :: v_dual_add_nc_u32 v147, 0, v7
	v_dual_mov_b32 v59, v33 :: v_dual_add_nc_u32 v148, 0, v8
	v_dual_mov_b32 v62, v33 :: v_dual_add_nc_u32 v149, 0, v9
	v_dual_mov_b32 v61, v33 :: v_dual_add_nc_u32 v150, 0, v10
	v_dual_mov_b32 v64, v33 :: v_dual_add_nc_u32 v151, 0, v11
	v_dual_mov_b32 v63, v33 :: v_dual_add_nc_u32 v152, 0, v12
	v_dual_mov_b32 v50, v33 :: v_dual_add_nc_u32 v153, 0, v13
	v_dual_mov_b32 v49, v33 :: v_dual_add_nc_u32 v154, 0, v14
	v_mov_b32_e32 v51, v33
	v_mov_b32_e32 v52, v33
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
	s_lshl_b32 s44, s22, 3
	s_lshl_b32 s45, s22, 4
	s_lshl_b32 s46, s22, 5
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1363 42 is_stmt 1             ; ragged.py:1363:42
	s_add_i32 s47, s18, s11
	v_add_nc_u32_e32 v65, s18, v140
	s_mul_i32 s47, s47, s35
	.loc	1 1363 34 is_stmt 0             ; ragged.py:1363:34
	s_mov_b32 s30, s26
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v66, s47, v97
	v_add_nc_u32_e32 v67, s47, v134
	v_add_nc_u32_e32 v68, s47, v135
	v_add_nc_u32_e32 v69, s47, v98
	v_add_nc_u32_e32 v70, s47, v136
	v_add_nc_u32_e32 v71, s47, v99
	v_add_nc_u32_e32 v72, s47, v100
	v_add_nc_u32_e32 v124, s47, v123
	v_add_nc_u32_e32 v73, s47, v101
	v_add_nc_u32_e32 v74, s47, v137
	v_add_nc_u32_e32 v75, s47, v102
	v_add_nc_u32_e32 v76, s47, v103
	v_add_nc_u32_e32 v77, s47, v104
	v_add_nc_u32_e32 v78, s47, v105
	v_add_nc_u32_e32 v79, s47, v106
	v_add_nc_u32_e32 v80, s47, v107
	v_add_nc_u32_e32 v81, s47, v108
	v_add_nc_u32_e32 v82, s47, v138
	v_add_nc_u32_e32 v83, s47, v109
	v_add_nc_u32_e32 v84, s47, v110
	v_add_nc_u32_e32 v85, s47, v111
	v_add_nc_u32_e32 v86, s47, v112
	v_add_nc_u32_e32 v87, s47, v113
	v_add_nc_u32_e32 v88, s47, v114
	v_add_nc_u32_e32 v89, s47, v115
	v_add_nc_u32_e32 v90, s47, v116
	v_add_nc_u32_e32 v91, s47, v117
	v_add_nc_u32_e32 v92, s47, v118
	v_add_nc_u32_e32 v93, s47, v119
	v_add_nc_u32_e32 v94, s47, v120
	v_add_nc_u32_e32 v95, s47, v121
	v_add_nc_u32_e32 v96, s47, v122
	v_add_nc_u32_e32 v155, s44, v65
	v_add_nc_u32_e32 v156, s45, v65
	v_add_nc_u32_e32 v157, s23, v65
	v_add_nc_u32_e32 v158, s46, v65
	v_add_nc_u32_e32 v159, s19, v65
	v_add_nc_u32_e32 v160, s36, v65
	v_add_nc_u32_e32 v161, s37, v65
	.loc	1 1362 34 is_stmt 1             ; ragged.py:1362:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s8
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	s_mov_b32 s31, s27
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
	buffer_load_u8 v65, v65, s[24:27], 0 offen
	v_cndmask_b32_e64 v155, 0x80000000, v155, s7
	v_cndmask_b32_e64 v156, 0x80000000, v156, s6
	v_cndmask_b32_e64 v157, 0x80000000, v157, s5
	v_cndmask_b32_e64 v158, 0x80000000, v158, s4
	v_cndmask_b32_e64 v159, 0x80000000, v159, s3
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s1
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x1f
	buffer_load_u8 v162, v66, s[28:31], 0 offen
	buffer_load_u8 v163, v67, s[28:31], 0 offen
	buffer_load_u8 v164, v68, s[28:31], 0 offen
	buffer_load_u8 v165, v69, s[28:31], 0 offen
	buffer_load_u8 v166, v70, s[28:31], 0 offen
	buffer_load_u8 v167, v71, s[28:31], 0 offen
	buffer_load_u8 v168, v72, s[28:31], 0 offen
	buffer_load_u8 v169, v73, s[28:31], 0 offen
	buffer_load_u8 v170, v74, s[28:31], 0 offen
	buffer_load_u8 v171, v75, s[28:31], 0 offen
	buffer_load_u8 v172, v76, s[28:31], 0 offen
	buffer_load_u8 v173, v77, s[28:31], 0 offen
	buffer_load_u8 v174, v78, s[28:31], 0 offen
	buffer_load_u8 v175, v79, s[28:31], 0 offen
	buffer_load_u8 v176, v80, s[28:31], 0 offen
	buffer_load_u8 v177, v81, s[28:31], 0 offen
	buffer_load_u8 v178, v82, s[28:31], 0 offen
	buffer_load_u8 v179, v83, s[28:31], 0 offen
	buffer_load_u8 v180, v84, s[28:31], 0 offen
	buffer_load_u8 v181, v85, s[28:31], 0 offen
	buffer_load_u8 v182, v86, s[28:31], 0 offen
	buffer_load_u8 v183, v87, s[28:31], 0 offen
	buffer_load_u8 v184, v88, s[28:31], 0 offen
	buffer_load_u8 v185, v89, s[28:31], 0 offen
	buffer_load_u8 v186, v90, s[28:31], 0 offen
	buffer_load_u8 v187, v91, s[28:31], 0 offen
	buffer_load_u8 v188, v92, s[28:31], 0 offen
	buffer_load_u8 v189, v93, s[28:31], 0 offen
	buffer_load_u8 v190, v94, s[28:31], 0 offen
	buffer_load_u8 v191, v95, s[28:31], 0 offen
	buffer_load_u8 v192, v96, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_clause 0x6
	buffer_load_u8 v66, v156, s[24:27], 0 offen
	buffer_load_u8 v67, v158, s[24:27], 0 offen
	buffer_load_u8 v68, v160, s[24:27], 0 offen
	buffer_load_u8 v69, v161, s[24:27], 0 offen
	buffer_load_u8 v70, v159, s[24:27], 0 offen
	buffer_load_u8 v71, v157, s[24:27], 0 offen
	buffer_load_u8 v72, v155, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s18, s18, 32
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v141, v65
	s_waitcnt vmcnt(6)
	ds_store_b8 v141, v66 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v141, v67 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v141, v68 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v142, v72
	ds_store_b8 v142, v71 offset:512
	ds_store_b8 v142, v70 offset:1024
	ds_store_b8 v142, v69 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[93:96], v143 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v143 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v144 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v144 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v145 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v145 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v146 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v146 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v130, v162
	ds_store_b8 v130, v163 offset:256
	ds_store_b8 v130, v164 offset:512
	ds_store_b8 v130, v166 offset:1024
	ds_store_b8 v130, v167 offset:1280
	ds_store_b8 v130, v168 offset:1536
	ds_store_b8 v130, v170 offset:2048
	ds_store_b8 v130, v171 offset:2304
	ds_store_b8 v130, v172 offset:2560
	ds_store_b8 v130, v174 offset:3072
	ds_store_b8 v130, v175 offset:3328
	ds_store_b8 v130, v176 offset:3584
	ds_store_b8 v130, v178 offset:4096
	ds_store_b8 v130, v179 offset:4352
	ds_store_b8 v130, v180 offset:4608
	ds_store_b8 v130, v182 offset:5120
	ds_store_b8 v130, v183 offset:5376
	ds_store_b8 v130, v184 offset:5632
	ds_store_b8 v130, v186 offset:6144
	ds_store_b8 v130, v187 offset:6400
	ds_store_b8 v130, v188 offset:6656
	ds_store_b8 v130, v190 offset:7168
	ds_store_b8 v130, v191 offset:7424
	ds_store_b8 v130, v192 offset:7680
	ds_store_b8 v147, v165
	ds_store_b8 v148, v169
	ds_store_b8 v149, v173
	ds_store_b8 v150, v177
	ds_store_b8 v151, v181
	ds_store_b8 v152, v185
	ds_store_b8 v153, v189
	ds_store_b8 v154, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1364 31                       ; ragged.py:1364:31
	ds_load_u8 v124, v139 offset:1280
	ds_load_u8 v155, v139 offset:1024
	ds_load_u8 v156, v139 offset:1792
	ds_load_u8 v157, v139 offset:1536
	ds_load_u8 v158, v139 offset:256
	ds_load_u8 v159, v139
	ds_load_u8 v160, v139 offset:768
	ds_load_u8 v161, v139 offset:512
	ds_load_u8 v162, v139 offset:1920
	ds_load_u8 v163, v139 offset:1664
	ds_load_u8 v164, v139 offset:1408
	ds_load_u8 v165, v139 offset:1152
	ds_load_u8 v166, v139 offset:896
	ds_load_u8 v167, v139 offset:640
	ds_load_u8 v168, v139 offset:384
	ds_load_u8 v169, v139 offset:128
	ds_load_u8 v170, v139 offset:3328
	ds_load_u8 v171, v139 offset:3072
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s18, s43
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v124, v155, v124, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v155, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v157, v159, v158, 0xc0c0004
	ds_load_u8 v159, v139 offset:3840
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v158, v161, v160, 0xc0c0004
	v_lshl_or_b32 v156, v155, 16, v124
	ds_load_u8 v160, v139 offset:3584
	ds_load_u8 v124, v139 offset:2304
	ds_load_u8 v161, v139 offset:2048
	v_lshl_or_b32 v155, v158, 16, v157
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v157, v165, v164, 0xc0c0004
	v_perm_b32 v158, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v163, v169, v168, 0xc0c0004
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v164, v139 offset:3968
	ds_load_u8 v162, v139 offset:3712
	ds_load_u8 v165, v139 offset:3456
	ds_load_u8 v167, v139 offset:3200
	ds_load_u8 v169, v139 offset:2432
	v_lshl_or_b32 v158, v158, 16, v157
	v_lshl_or_b32 v157, v166, 16, v163
	ds_load_u8 v163, v139 offset:2944
	ds_load_u8 v166, v139 offset:2688
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v168, v171, v170, 0xc0c0004
	ds_load_u8 v170, v139 offset:2176
	v_wmma_i32_16x16x16_iu4 v[33:40], v[155:156], v[93:94], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[157:158], v[93:94], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[155:156], v[95:96], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v161, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[157:158], v[95:96], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[155:156], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[91:92], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v163, v166, v163, 0xc0c0004
	ds_load_u8 v166, v139 offset:5760
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v139 offset:2816
	ds_load_u8 v161, v139 offset:2560
	v_perm_b32 v162, v162, v164, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v161, v160, 0xc0c0004
	v_lshl_or_b32 v160, v159, 16, v168
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v159, v161, 16, v124
	ds_load_u8 v124, v139 offset:5376
	ds_load_u8 v168, v139 offset:5120
	v_perm_b32 v161, v167, v165, 0xc0c0004
	ds_load_u8 v165, v139 offset:5888
	v_perm_b32 v167, v170, v169, 0xc0c0004
	ds_load_u8 v169, v139 offset:6016
	ds_load_u8 v164, v139 offset:5632
	v_lshl_or_b32 v162, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[33:40], v[159:160], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v161, v163, 16, v167
	ds_load_u8 v163, v139 offset:4352
	ds_load_u8 v167, v139 offset:5504
	ds_load_u8 v170, v139 offset:5248
	v_wmma_i32_16x16x16_iu4 v[49:56], v[159:160], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[161:162], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[161:162], v[87:88], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[161:162], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[161:162], v[83:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v168, v124, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v164, v164, v165, 0xc0c0004
	ds_load_u8 v165, v139 offset:4096
	ds_load_u8 v168, v139 offset:4992
	ds_load_u8 v171, v139 offset:4736
	ds_load_u8 v172, v139 offset:4480
	ds_load_u8 v173, v139 offset:4224
	v_lshl_or_b32 v164, v164, 16, v124
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v124, v170, v167, 0xc0c0004
	ds_load_u8 v170, v139 offset:7168
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v163, v165, v163, 0xc0c0004
	ds_load_u8 v165, v139 offset:4864
	ds_load_u8 v174, v139 offset:4608
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v168, v171, v168, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v167, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v174, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v165, 16, v163
	v_perm_b32 v165, v166, v169, 0xc0c0004
	ds_load_u8 v169, v139 offset:7424
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v166, v165, 16, v124
	v_lshl_or_b32 v165, v168, 16, v167
	ds_load_u8 v124, v139 offset:7552
	ds_load_u8 v167, v139 offset:7680
	ds_load_u8 v171, v139 offset:8064
	ds_load_u8 v172, v139 offset:7808
	ds_load_u8 v173, v139 offset:7296
	v_wmma_i32_16x16x16_iu4 v[49:56], v[163:164], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[163:164], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[163:164], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[165:166], v[77:78], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[165:166], v[79:80], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[165:166], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[165:166], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v168, v170, v169, 0xc0c0004
	ds_load_u8 v169, v139 offset:7936
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v124, v173, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v167, v169, 0xc0c0004
	ds_load_u8 v169, v139 offset:6400
	ds_load_u8 v170, v139 offset:6144
	ds_load_u8 v174, v139 offset:7040
	ds_load_u8 v175, v139 offset:6784
	ds_load_u8 v176, v139 offset:6528
	ds_load_u8 v177, v139 offset:6272
	v_lshl_or_b32 v168, v167, 16, v168
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v139 offset:6912
	ds_load_u8 v178, v139 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v178, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v167, v170, 16, v169
	v_perm_b32 v169, v172, v171, 0xc0c0004
	v_perm_b32 v171, v177, v176, 0xc0c0004
	v_perm_b32 v172, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[167:168], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v170, v169, 16, v124
	v_wmma_i32_16x16x16_iu4 v[49:56], v[167:168], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v169, v172, 16, v171
	v_wmma_i32_16x16x16_iu4 v[25:32], v[167:168], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[169:170], v[69:70], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[169:170], v[71:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[169:170], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[169:170], v[67:68], v[1:8] neg_lo:[1,1,0]
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
	s_add_i32 s24, s42, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s25, s24, 31
	s_add_i32 s24, s24, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s24, s24, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s18, s24
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v66, 0x7f, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s28, s41, s33
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v126, v66 :: v_dual_mov_b32 v129, v65
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr28
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
.LBB0_8:
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	s_or_b32 s25, s18, 1
	s_or_b32 s26, s18, 2
	s_or_b32 s27, s18, 3
	s_or_b32 s28, s18, 4
	s_or_b32 s46, s18, 5
	s_or_b32 s47, s18, 6
	s_or_b32 s48, s18, 7
	s_or_b32 s49, s18, 8
	s_or_b32 s50, s18, 9
	s_or_b32 s51, s18, 10
	s_or_b32 s52, s18, 11
	s_or_b32 s53, s18, 12
	s_or_b32 s54, s18, 13
	s_or_b32 s55, s18, 14
	s_or_b32 s56, s18, 15
	s_or_b32 s57, s18, 16
	s_or_b32 s58, s18, 17
	s_or_b32 s59, s18, 18
	s_or_b32 s60, s18, 19
	s_or_b32 s61, s18, 20
	s_or_b32 s62, s18, 21
	s_or_b32 s63, s18, 22
	s_or_b32 s64, s18, 23
	s_or_b32 s65, s18, 24
	s_or_b32 s66, s18, 25
	s_or_b32 s67, s18, 26
	s_or_b32 s68, s18, 27
	s_or_b32 s69, s18, 28
	s_or_b32 s70, s18, 29
	s_or_b32 s71, s18, 30
	s_or_b32 s72, s18, 31
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cmp_lt_i32 s25, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v65, s18, v133
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s26, s24
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s27, s24
	v_cmp_gt_i32_e32 vcc_lo, s24, v65
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s28, s24
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s46, s24
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s47, s24
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s48, s24
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s49, s24
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s50, s24
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s51, s24
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s52, s24
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s53, s24
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s54, s24
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s55, s24
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s56, s24
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s57, s24
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s58, s24
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s59, s24
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s60, s24
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s61, s24
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s62, s24
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s63, s24
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s64, s24
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s65, s24
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s66, s24
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s67, s24
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s68, s24
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s69, s24
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s70, s24
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s71, s24
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s72, s24
	s_cselect_b32 s73, -1, 0
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s29, s42, 0x80000001
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cmp_eq_u32 s29, 1
	s_cselect_b32 s29, -1, 0
	.loc	1 1386 63 is_stmt 0             ; ragged.py:1386:63
	s_add_i32 s30, s24, -1
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cmp_eq_u32 s18, s30
	s_cselect_b32 s31, -1, 0
	s_cmp_eq_u32 s25, s30
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s26, s30
	s_mov_b32 s26, 0x7ffffffe
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s27, s30
	s_mov_b32 s27, 0x31027000
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s28, s30
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s46, s30
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s30
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s48, s30
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s49, s30
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s50, s30
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s51, s30
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s52, s30
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s53, s30
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s54, s30
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s55, s30
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s56, s30
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s57, s30
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s58, s30
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s59, s30
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s60, s30
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s61, s30
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s62, s30
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s63, s30
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s64, s30
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s65, s30
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s66, s30
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s67, s30
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s68, s30
	s_cselect_b32 s68, -1, 0
	s_cmp_eq_u32 s69, s30
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s70, s30
	s_cselect_b32 s70, -1, 0
	s_cmp_eq_u32 s71, s30
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s72, s30
	s_cselect_b32 s72, -1, 0
	.loc	1 1387 42 is_stmt 1             ; ragged.py:1387:42
	s_add_i32 s28, s41, s33
	s_lshl_b32 s24, s22, 3
	v_mad_u64_u32 v[66:67], null, s28, s22, v[65:66]
	s_lshl_b32 s25, s22, 4
	s_lshl_b32 s22, s22, 5
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s8, s8, vcc_lo
	s_and_b32 s7, s7, vcc_lo
	s_and_b32 s6, s6, vcc_lo
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v68, v132, s24, v66
	v_add3_u32 v69, v132, s25, v66
	v_add3_u32 v70, v132, s23, v66
	v_add3_u32 v71, v132, s22, v66
	v_add3_u32 v72, v132, s19, v66
	v_add3_u32 v73, v132, s36, v66
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s4, s4, vcc_lo
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s2, s2, vcc_lo
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v67, v66, v132
	v_add3_u32 v66, v132, s37, v66
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s11, s18, s11
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s11, s11, s35
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s6
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e64 v67, 0x80000000, v67, s8
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	v_cndmask_b32_e64 v70, 0x80000000, v70, s5
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s1, s35, 1
	v_add3_u32 v81, s11, s35, v97
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	s_clause 0x7
	buffer_load_u8 v85, v67, s[24:27], 0 offen
	buffer_load_u8 v86, v68, s[24:27], 0 offen
	buffer_load_u8 v87, v69, s[24:27], 0 offen
	buffer_load_u8 v88, v70, s[24:27], 0 offen
	buffer_load_u8 v89, v71, s[24:27], 0 offen
	buffer_load_u8 v90, v72, s[24:27], 0 offen
	buffer_load_u8 v91, v73, s[24:27], 0 offen
	buffer_load_u8 v92, v66, s[24:27], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s2, s35, 3
	v_add3_u32 v66, s11, s1, v97
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s103
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s3, s35, 2
	v_add3_u32 v67, s11, s2, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s102
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s4, s35, 5
	v_add3_u32 v68, s11, s3, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s101
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s35, 6
	v_add3_u32 v69, s11, s4, v97
	v_add_nc_u32_e32 v80, s11, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s100
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s6, s35, 7
	v_add3_u32 v70, s11, s5, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s99
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s7, s35, 3
	v_add3_u32 v71, s11, s6, v97
	s_mul_i32 s8, s35, 9
	s_mul_i32 s12, s35, 10
	s_mul_i32 s13, s35, 11
	s_mul_i32 s19, s35, 12
	s_mul_i32 s22, s35, 13
	s_mul_i32 s23, s35, 14
	s_mul_i32 s24, s35, 15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s98
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v72, s11, s7, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v80, 0x80000000, v80, s0
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s18, s35, 4
	s_mul_i32 s25, s35, 17
	s_mul_i32 s1, s35, 18
	s_mul_i32 s2, s35, 19
	s_mul_i32 s3, s35, 20
	s_mul_i32 s4, s35, 21
	s_mul_i32 s5, s35, 22
	s_mul_i32 s6, s35, 23
	s_mul_i32 s7, s35, 24
	v_add3_u32 v73, s11, s8, v97
	s_mul_i32 s8, s35, 25
	v_add3_u32 v74, s11, s12, v97
	s_mul_i32 s12, s35, 26
	v_add3_u32 v75, s11, s13, v97
	s_mul_i32 s13, s35, 27
	v_add3_u32 v76, s11, s19, v97
	s_mul_i32 s19, s35, 28
	v_add3_u32 v77, s11, s22, v97
	s_mul_i32 s22, s35, 29
	v_add3_u32 v78, s11, s23, v97
	s_mul_i32 s23, s35, 30
	v_add3_u32 v79, s11, s24, v97
	s_mul_i32 s24, s35, 31
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s97
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v82, s11, s18, v97
	v_add3_u32 v83, s11, s25, v97
	v_add3_u32 v84, s11, s1, v97
	v_add3_u32 v93, s11, s2, v97
	v_add3_u32 v94, s11, s3, v97
	v_add3_u32 v95, s11, s4, v97
	v_add3_u32 v96, s11, s5, v97
	v_add3_u32 v98, s11, s6, v97
	v_add3_u32 v99, s11, s7, v97
	v_add3_u32 v100, s11, s8, v97
	v_add3_u32 v101, s11, s12, v97
	v_add3_u32 v102, s11, s13, v97
	v_add3_u32 v103, s11, s19, v97
	v_add3_u32 v104, s11, s22, v97
	v_add3_u32 v105, s11, s23, v97
	v_add3_u32 v97, s11, s24, v97
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s95
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v106, v80, s[24:27], 0 offen
	buffer_load_u8 v107, v81, s[24:27], 0 offen
	buffer_load_u8 v108, v66, s[24:27], 0 offen
	buffer_load_u8 v109, v67, s[24:27], 0 offen
	buffer_load_u8 v110, v68, s[24:27], 0 offen
	buffer_load_u8 v111, v69, s[24:27], 0 offen
	buffer_load_u8 v112, v70, s[24:27], 0 offen
	buffer_load_u8 v113, v71, s[24:27], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v72, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s96
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s1, s29, s31
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v73, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s94
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s2, s29, s42
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v74, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s93
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s11, s29, s49
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v75, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s92
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s12, s29, s50
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v76, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s91
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s3, s29, s43
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v77, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s90
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s4, s29, s44
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v78, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s89
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s8, s29, s48
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v73, 0x80000000, v79, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s87
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v114, v66, s[24:27], 0 offen
	buffer_load_u8 v115, v67, s[24:27], 0 offen
	buffer_load_u8 v116, v68, s[24:27], 0 offen
	buffer_load_u8 v117, v69, s[24:27], 0 offen
	buffer_load_u8 v118, v70, s[24:27], 0 offen
	buffer_load_u8 v119, v71, s[24:27], 0 offen
	buffer_load_u8 v120, v72, s[24:27], 0 offen
	buffer_load_u8 v121, v73, s[24:27], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v82, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s88
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s23, s29, s57
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v83, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s86
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s5, s29, s45
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v84, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s85
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s6, s29, s46
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v93, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s84
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s7, s29, s47
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v94, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s83
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s13, s29, s51
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v95, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s82
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s14, s29, s52
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v96, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s81
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s15, s29, s53
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v73, 0x80000000, v98, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s79
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v93, v66, s[24:27], 0 offen
	buffer_load_u8 v94, v67, s[24:27], 0 offen
	buffer_load_u8 v95, v68, s[24:27], 0 offen
	buffer_load_u8 v96, v69, s[24:27], 0 offen
	buffer_load_u8 v122, v70, s[24:27], 0 offen
	buffer_load_u8 v123, v71, s[24:27], 0 offen
	buffer_load_u8 v124, v72, s[24:27], 0 offen
	buffer_load_u8 v132, v73, s[24:27], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v99, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s80
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s18, s29, s54
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v100, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s78
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s19, s29, s55
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v101, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s77
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s22, s29, s56
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v102, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s76
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s31, s29, s63
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v103, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s75
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s36, s29, s64
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v104, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s74
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s37, s29, s65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v105, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s73
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s42, s29, s66
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v73, 0x80000000, v97, vcc_lo
	s_clause 0x7
	buffer_load_u8 v133, v66, s[24:27], 0 offen
	buffer_load_u8 v134, v67, s[24:27], 0 offen
	buffer_load_u8 v135, v68, s[24:27], 0 offen
	buffer_load_u8 v136, v69, s[24:27], 0 offen
	buffer_load_u8 v137, v70, s[24:27], 0 offen
	buffer_load_u8 v138, v71, s[24:27], 0 offen
	buffer_load_u8 v139, v72, s[24:27], 0 offen
	buffer_load_u8 v140, v73, s[24:27], 0 offen
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cmp_eq_u32_e32 vcc_lo, 0, v125
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s24, s29, s58
	s_and_b32 s25, s29, s59
	s_and_b32 s26, s29, s60
	s_and_b32 s27, s29, s61
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b32_e64 v66, 0x88, 0, vcc_lo
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s30, v65
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s30, s29, s62
	s_and_b32 s43, s29, s67
	s_and_b32 s44, s29, s68
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xor_b32_e32 v141, v66, v126
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s48, s29, vcc_lo
	s_and_b32 s45, s29, s69
	s_and_b32 s46, s29, s70
	s_and_b32 s47, s29, s71
	s_and_b32 s29, s29, s72
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1389 62 is_stmt 0             ; ragged.py:1389:62
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
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v65.l, v85.l, v65.l, s48
	v_cndmask_b16 v66.l, v87.l, v66.l, s48
	v_cndmask_b16 v67.l, v89.l, v67.l, s48
	v_cndmask_b16 v68.l, v91.l, v68.l, s48
	v_cndmask_b16 v65.h, v86.l, v65.h, s48
	v_cndmask_b16 v66.h, v88.l, v66.h, s48
	v_cndmask_b16 v67.h, v90.l, v67.h, s48
	v_cndmask_b16 v68.h, v92.l, v68.h, s48
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
	v_and_b32_e32 v69, 24, v129
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
	v_add_nc_u32_e32 v70, 0, v141
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v99.l, v110.l, v71.l, s5
	v_cndmask_b16 v99.h, v111.l, v71.h, s6
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xad_u32 v71, 0x110, v141, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v100.l, v112.l, v72.l, s7
	v_cndmask_b16 v100.h, v113.l, v72.h, s8
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_store_b8 v70, v65
	ds_store_b8 v70, v66 offset:512
	ds_store_b8 v70, v67 offset:1024
	ds_store_b8 v70, v68 offset:1536
	ds_store_b8_d16_hi v71, v65
	ds_store_b8_d16_hi v71, v66 offset:512
	ds_store_b8_d16_hi v71, v67 offset:1024
	ds_store_b8_d16_hi v71, v68 offset:1536
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
	v_cndmask_b16 v101.l, v114.l, v73.l, s11
	v_cndmask_b16 v101.h, v115.l, v73.h, s12
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_lshl_or_b32 v73, v127, 5, v69
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
	v_cndmask_b16 v103.h, v119.l, v75.h, s18
	v_cndmask_b16 v104.l, v120.l, v76.l, s19
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
	v_cndmask_b16 v105.h, v94.l, v77.h, s24
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v77, v73, 8, 0
	v_xad_u32 v93, v73, 24, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v106.l, v95.l, v78.l, s25
	v_cndmask_b16 v106.h, v96.l, v78.h, s26
	v_cndmask_b16 v107.l, v122.l, v79.l, s27
	v_cndmask_b16 v107.h, v123.l, v79.h, s30
	v_cndmask_b16 v108.l, v124.l, v80.l, s31
	v_cndmask_b16 v108.h, v132.l, v80.h, s36
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
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
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v109.l, v133.l, v81.l, s37
	v_cndmask_b16 v109.h, v134.l, v81.h, s42
	v_cndmask_b16 v110.l, v135.l, v82.l, s43
	v_cndmask_b16 v110.h, v136.l, v82.h, s44
	v_cndmask_b16 v111.l, v137.l, v83.l, s45
	v_cndmask_b16 v111.h, v138.l, v83.h, s46
	v_cndmask_b16 v112.l, v139.l, v84.l, s47
	v_cndmask_b16 v112.h, v140.l, v84.h, s29
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
	ds_store_b8 v130, v97
	ds_store_b8_d16_hi v130, v97 offset:256
	ds_store_b8 v130, v98 offset:512
	ds_store_b8_d16_hi v130, v98 offset:768
	ds_store_b8 v130, v99 offset:1024
	ds_store_b8_d16_hi v130, v99 offset:1280
	ds_store_b8 v130, v100 offset:1536
	ds_store_b8_d16_hi v130, v100 offset:1792
	ds_store_b8 v130, v101 offset:2048
	ds_store_b8_d16_hi v130, v101 offset:2304
	ds_store_b8 v130, v102 offset:2560
	ds_store_b8_d16_hi v130, v102 offset:2816
	ds_store_b8 v130, v103 offset:3072
	ds_store_b8_d16_hi v130, v103 offset:3328
	ds_store_b8 v130, v104 offset:3584
	ds_store_b8_d16_hi v130, v104 offset:3840
	ds_store_b8 v130, v105 offset:4096
	ds_store_b8_d16_hi v130, v105 offset:4352
	ds_store_b8 v130, v106 offset:4608
	ds_store_b8_d16_hi v130, v106 offset:4864
	ds_store_b8 v130, v107 offset:5120
	ds_store_b8_d16_hi v130, v107 offset:5376
	ds_store_b8 v130, v108 offset:5632
	ds_store_b8_d16_hi v130, v108 offset:5888
	v_add3_u32 v105, 0, v131, v127
	ds_store_b8 v130, v109 offset:6144
	ds_store_b8_d16_hi v130, v109 offset:6400
	ds_store_b8 v130, v110 offset:6656
	ds_store_b8_d16_hi v130, v110 offset:6912
	ds_store_b8 v130, v111 offset:7168
	ds_store_b8_d16_hi v130, v111 offset:7424
	ds_store_b8 v130, v112 offset:7680
	ds_store_b8_d16_hi v130, v112 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v97, v105 offset:1280
	ds_load_u8 v98, v105 offset:1024
	ds_load_u8 v99, v105 offset:1792
	ds_load_u8 v100, v105 offset:1536
	ds_load_u8 v101, v105 offset:256
	ds_load_u8 v102, v105
	ds_load_u8 v103, v105 offset:768
	ds_load_u8 v104, v105 offset:512
	ds_load_u8 v106, v105 offset:1920
	ds_load_u8 v107, v105 offset:1664
	ds_load_u8 v108, v105 offset:1408
	ds_load_u8 v109, v105 offset:1152
	ds_load_u8 v118, v105 offset:3968
	ds_load_u8 v119, v105 offset:3712
	ds_load_u8 v120, v105 offset:3456
	ds_load_u8 v121, v105 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v100, v99, 0xc0c0004
	ds_load_u8 v99, v105 offset:3328
	ds_load_u8 v100, v105 offset:3072
	ds_load_u8 v110, v105 offset:3840
	ds_load_u8 v111, v105 offset:3584
	ds_load_u8 v112, v105 offset:896
	ds_load_u8 v113, v105 offset:640
	ds_load_u8 v114, v105 offset:384
	ds_load_u8 v115, v105 offset:128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v102, v104, v103, 0xc0c0004
	ds_load_u8 v103, v105 offset:2304
	ds_load_u8 v104, v105 offset:2048
	ds_load_u8 v116, v105 offset:2816
	ds_load_u8 v117, v105 offset:2560
	v_lshl_or_b32 v98, v98, 16, v97
	v_lshl_or_b32 v97, v102, 16, v101
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[97:98], v[65:66], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[97:98], v[67:68], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v100, v111, v110, 0xc0c0004
	ds_load_u8 v101, v105 offset:5376
	ds_load_u8 v102, v105 offset:5120
	ds_load_u8 v110, v105 offset:5888
	ds_load_u8 v111, v105 offset:5632
	ds_load_u8 v122, v105 offset:2944
	ds_load_u8 v123, v105 offset:2688
	ds_load_u8 v124, v105 offset:2432
	ds_load_u8 v130, v105 offset:2176
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v100, 16, v99
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v104, v117, v116, 0xc0c0004
	ds_load_u8 v116, v105 offset:4352
	ds_load_u8 v117, v105 offset:4096
	ds_load_u8 v131, v105 offset:4864
	ds_load_u8 v132, v105 offset:4608
	v_lshl_or_b32 v99, v104, 16, v103
	ds_load_u8 v103, v105 offset:7424
	ds_load_u8 v104, v105 offset:7168
	ds_load_u8 v133, v105 offset:7936
	ds_load_u8 v134, v105 offset:7680
	ds_load_u8 v135, v105 offset:6016
	ds_load_u8 v136, v105 offset:5760
	ds_load_u8 v137, v105 offset:5504
	ds_load_u8 v138, v105 offset:5248
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v102, v111, v110, 0xc0c0004
	ds_load_u8 v110, v105 offset:4992
	ds_load_u8 v111, v105 offset:4736
	ds_load_u8 v139, v105 offset:4480
	ds_load_u8 v140, v105 offset:4224
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v102, 16, v101
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[79:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v141, v104, v103, 0xc0c0004
	v_perm_b32 v117, v132, v131, 0xc0c0004
	v_perm_b32 v103, v109, v108, 0xc0c0004
	v_perm_b32 v104, v107, v106, 0xc0c0004
	v_perm_b32 v106, v115, v114, 0xc0c0004
	v_perm_b32 v107, v113, v112, 0xc0c0004
	v_lshl_or_b32 v101, v117, 16, v116
	ds_load_u8 v116, v105 offset:8064
	ds_load_u8 v117, v105 offset:7808
	ds_load_u8 v131, v105 offset:7552
	ds_load_u8 v132, v105 offset:7296
	ds_load_u8 v108, v105 offset:6400
	ds_load_u8 v109, v105 offset:6144
	ds_load_u8 v112, v105 offset:6912
	ds_load_u8 v113, v105 offset:6656
	v_perm_b32 v114, v119, v118, 0xc0c0004
	ds_load_u8 v115, v105 offset:7040
	ds_load_u8 v118, v105 offset:6784
	ds_load_u8 v119, v105 offset:6528
	ds_load_u8 v105, v105 offset:6272
	v_lshl_or_b32 v104, v104, 16, v103
	v_lshl_or_b32 v103, v107, 16, v106
	v_perm_b32 v107, v121, v120, 0xc0c0004
	v_perm_b32 v120, v130, v124, 0xc0c0004
	v_perm_b32 v121, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[103:104], v[65:66], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v114, 16, v107
	v_perm_b32 v107, v138, v137, 0xc0c0004
	v_lshl_or_b32 v65, v121, 16, v120
	v_perm_b32 v114, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v120, v140, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[103:104], v[67:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v109, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v114, 16, v107
	v_lshl_or_b32 v73, v110, 16, v120
	v_perm_b32 v107, v132, v131, 0xc0c0004
	v_perm_b32 v110, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v105, v119, 0xc0c0004
	v_perm_b32 v112, v118, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[101:102], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v133, 16, v141
	v_lshl_or_b32 v105, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v110, 16, v107
	v_lshl_or_b32 v81, v112, 16, v111
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[105:106], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[89:90], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[105:106], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[105:106], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[105:106], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[95:96], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s41, v127
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v66, s28, v127, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s1, s10, s35
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v67, 16, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v65
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v68, 32, v65
	v_or_b32_e32 v69, 48, v65
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v66
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s9, s9, s1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v65, 0x80000000, v66, vcc_lo
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v71, s9, v0, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v53, v53
	s_mov_b32 s19, 0x31027000
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v67, 0x80000000, v70, vcc_lo
	v_add_nc_u32_e32 v70, 64, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v66, 0x60, v66
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s21, s21, 0xffff
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v68, 0x80000000, v70, vcc_lo
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v69
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v69, 0x80000000, v71, s0
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v78, v1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v80, v3
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v3, 28, v129
	.loc	1 1403 36                       ; ragged.py:1403:36
	buffer_load_u16 v65, v65, s[16:19], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x2
	buffer_load_u16 v67, v67, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v79, v2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v2, 0xf0, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v74, v13
	v_cvt_f32_i32_e32 v81, v4
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v4, v2, 2, 0
	v_lshl_add_u32 v13, v2, 1, 0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
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
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v70, v9
	v_cvt_f32_i32_e32 v71, v10
	v_cvt_f32_i32_e32 v72, v11
	v_cvt_f32_i32_e32 v73, v12
	v_cvt_f32_i32_e32 v75, v14
	v_cvt_f32_i32_e32 v76, v15
	v_cvt_f32_i32_e32 v77, v16
	v_cvt_f32_i32_e32 v82, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v84, v7
	v_cvt_f32_i32_e32 v85, v8
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v41, v41
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
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v0, 0x400, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v2, 16, v65
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v1, 32, v1
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v65, 16, v67
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v40, v2 :: v_dual_lshlrev_b32 v67, 16, v68
	v_mul_f32_e32 v34, v34, v2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v1, v4, v1, v3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v36, v36, v2 :: v_dual_lshlrev_b32 v3, 16, v69
	v_mul_f32_e32 v38, v38, v2
	v_dual_mul_f32 v33, v33, v2 :: v_dual_mul_f32 v50, v50, v65
	v_dual_mul_f32 v35, v35, v2 :: v_dual_mul_f32 v52, v52, v65
	v_dual_mul_f32 v37, v37, v2 :: v_dual_mul_f32 v54, v54, v65
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v56, v56, v65
	v_dual_mul_f32 v57, v57, v2 :: v_dual_mul_f32 v42, v42, v65
	v_dual_mul_f32 v58, v58, v2 :: v_dual_mul_f32 v43, v43, v65
	v_dual_mul_f32 v59, v59, v2 :: v_dual_mul_f32 v44, v44, v65
	v_dual_mul_f32 v60, v60, v2 :: v_dual_mul_f32 v45, v45, v65
	v_dual_mul_f32 v61, v61, v2 :: v_dual_mul_f32 v46, v46, v65
	v_dual_mul_f32 v62, v62, v2 :: v_dual_mul_f32 v47, v47, v65
	v_dual_mul_f32 v63, v63, v2 :: v_dual_mul_f32 v48, v48, v65
	v_dual_mul_f32 v64, v64, v2 :: v_dual_mul_f32 v25, v25, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v65 :: v_dual_lshlrev_b32 v66, 16, v66
	v_dual_mul_f32 v51, v51, v65 :: v_dual_mul_f32 v26, v26, v67
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v27, v27, v67 :: v_dual_mul_f32 v68, v72, v66
	v_mul_f32_e32 v28, v28, v67
	v_mul_f32_e32 v29, v29, v67
	v_mul_f32_e32 v30, v30, v67
	v_dual_mul_f32 v31, v31, v67 :: v_dual_mul_f32 v72, v76, v66
	v_dual_mul_f32 v32, v32, v67 :: v_dual_mul_f32 v69, v73, v66
	v_mul_f32_e32 v17, v17, v67
	v_mul_f32_e32 v18, v18, v67
	v_dual_mul_f32 v19, v19, v67 :: v_dual_mul_f32 v76, v80, v66
	v_dual_mul_f32 v20, v20, v67 :: v_dual_mul_f32 v73, v77, v66
	v_mul_f32_e32 v21, v21, v67
	v_mul_f32_e32 v22, v22, v67
	v_dual_mul_f32 v23, v23, v67 :: v_dual_mul_f32 v80, v84, v66
	v_dual_mul_f32 v24, v24, v67 :: v_dual_mul_f32 v77, v81, v66
	v_mul_f32_e32 v67, v71, v66
	v_mul_f32_e32 v71, v75, v66
	v_mul_f32_e32 v75, v79, v66
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v79, v83, v66 :: v_dual_mul_f32 v36, v36, v4
	v_mul_f32_e32 v53, v53, v65
	v_mul_f32_e32 v55, v55, v65
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v37, v37, v5 :: v_dual_mul_f32 v38, v38, v6
	v_dual_mul_f32 v39, v39, v7 :: v_dual_mul_f32 v40, v40, v8
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v49, v49, v65
	v_mul_f32_e32 v65, v70, v66
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v33, v33, v1 :: v_dual_mul_f32 v34, v34, v2
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v59, v59, v11 :: v_dual_mul_f32 v60, v60, v12
	v_dual_mul_f32 v51, v51, v3 :: v_dual_mul_f32 v52, v52, v4
	v_dual_mul_f32 v81, v27, v3 :: v_dual_mul_f32 v28, v28, v4
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v88, v22, v14 :: v_dual_mul_f32 v69, v69, v4
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v4, v36, 16, 1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v70, v74, v66
	v_mul_f32_e32 v74, v78, v66
	v_mul_f32_e32 v78, v82, v66
	v_dual_mul_f32 v66, v85, v66 :: v_dual_mul_f32 v35, v35, v3
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v61, v61, v13 :: v_dual_mul_f32 v62, v62, v14
	v_dual_mul_f32 v53, v53, v5 :: v_dual_mul_f32 v54, v54, v6
	v_dual_mul_f32 v55, v55, v7 :: v_dual_mul_f32 v56, v56, v8
	v_dual_mul_f32 v82, v29, v5 :: v_dual_mul_f32 v83, v31, v7
	v_dual_mul_f32 v30, v30, v6 :: v_dual_mul_f32 v85, v19, v11
	v_dual_mul_f32 v90, v24, v16 :: v_dual_mul_f32 v71, v71, v6
	v_dual_mul_f32 v72, v72, v7 :: v_dual_mul_f32 v77, v77, v12
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v6, v38, 16, 1
	v_bfe_u32 v7, v39, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v57, v57, v9 :: v_dual_mul_f32 v58, v58, v10
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v50, v50, v2
	v_dual_mul_f32 v43, v43, v11 :: v_dual_mul_f32 v44, v44, v12
	v_dual_mul_f32 v25, v25, v1 :: v_dual_mul_f32 v26, v26, v2
	v_dual_mul_f32 v86, v20, v12 :: v_dual_mul_f32 v67, v67, v2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v2, v34, 16, 1
	v_cmp_o_f32_e64 s2, v36, v36
	v_bfe_u32 v12, v60, 16, 1
	v_add3_u32 v4, v36, v4, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v76, v76, v11
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v11, v59, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v63, v63, v15 :: v_dual_mul_f32 v64, v64, v16
	v_dual_mul_f32 v45, v45, v13 :: v_dual_mul_f32 v46, v46, v14
	v_dual_mul_f32 v84, v17, v9 :: v_dual_mul_f32 v89, v23, v15
	v_dual_mul_f32 v68, v68, v3 :: v_dual_mul_f32 v73, v73, v8
	v_dual_mul_f32 v74, v74, v9 :: v_dual_mul_f32 v79, v79, v14
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v3, v35, 16, 1
	v_cmp_o_f32_e64 s4, v38, v38
	v_bfe_u32 v14, v62, 16, 1
	v_bfe_u32 v23, v54, 16, 1
	v_add3_u32 v6, v38, v6, 0x7fff
	v_add3_u32 v7, v39, v7, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v41, v41, v9 :: v_dual_mul_f32 v42, v42, v10
	v_dual_mul_f32 v32, v32, v8 :: v_dual_mul_f32 v87, v21, v13
	v_dual_mul_f32 v18, v18, v10 :: v_dual_mul_f32 v65, v65, v1
	v_dual_mul_f32 v70, v70, v5 :: v_dual_mul_f32 v75, v75, v10
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v33, 16, 1
	v_cmp_o_f32_e64 s0, v34, v34
	v_bfe_u32 v5, v37, 16, 1
	v_bfe_u32 v8, v40, 16, 1
	v_bfe_u32 v10, v58, 16, 1
	v_cmp_o_f32_e64 s10, v60, v60
	v_bfe_u32 v20, v51, 16, 1
	v_add3_u32 v2, v34, v2, 0x7fff
	v_add3_u32 v12, v60, v12, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v4.h, s2
	v_bfe_u32 v4, v81, 16, 1
	v_bfe_u32 v27, v56, 16, 1
	v_add3_u32 v11, v59, v11, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v47, v47, v15 :: v_dual_mul_f32 v48, v48, v16
	v_mul_f32_e32 v80, v80, v15
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s1, v35, v35
	v_bfe_u32 v9, v57, 16, 1
	v_cmp_o_f32_e64 s12, v62, v62
	v_bfe_u32 v15, v63, 16, 1
	v_bfe_u32 v19, v50, 16, 1
	v_bfe_u32 v22, v53, 16, 1
	v_add3_u32 v3, v35, v3, 0x7fff
	v_add3_u32 v14, v62, v14, 0x7fff
	v_add3_u32 v23, v54, v23, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v28, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v66, v66, v16
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s3, v37, v37
	v_cmp_o_f32_e64 s6, v40, v40
	v_cmp_o_f32_e64 s8, v58, v58
	v_bfe_u32 v16, v64, 16, 1
	v_cmp_o_f32_e64 s17, v51, v51
	v_bfe_u32 v98, v26, 16, 1
	v_add3_u32 v1, v33, v1, 0x7fff
	v_add3_u32 v5, v37, v5, 0x7fff
	v_add3_u32 v8, v40, v8, 0x7fff
	v_add3_u32 v10, v58, v10, 0x7fff
	v_add3_u32 v20, v51, v20, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v12.h, s10
	v_add3_u32 v4, v81, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v81, v81
	v_bfe_u32 v12, v30, 16, 1
	v_bfe_u32 v17, v49, 16, 1
	v_add3_u32 v27, v56, v27, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v78, v78, v13
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s7, v57, v57
	v_bfe_u32 v13, v61, 16, 1
	v_cmp_o_f32_e64 s19, v53, v53
	v_bfe_u32 v24, v55, 16, 1
	v_bfe_u32 v31, v42, 16, 1
	v_add3_u32 v9, v57, v9, 0x7fff
	v_add3_u32 v15, v63, v15, 0x7fff
	v_add3_u32 v19, v50, v19, 0x7fff
	v_add3_u32 v22, v53, v22, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v3.h, s1
	v_cndmask_b16 v27.l, 0x7fff, v14.h, s12
	v_add3_u32 v6, v28, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v28, v28
	v_bfe_u32 v14, v83, 16, 1
	v_cmp_o_f32_e64 s14, v64, v64
	v_add3_u32 v16, v64, v16, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v5.h, s3
	v_cndmask_b16 v15.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v19.l, 0x7fff, v10.h, s8
	v_cndmask_b16 v5.h, 0x7fff, v20.h, s17
	v_add3_u32 v8, v26, v98, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_bfe_u32 v10, v82, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s0
	v_add3_u32 v12, v30, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v30, v30
	v_bfe_u32 v20, v84, 16, 1
	v_add3_u32 v17, v49, v17, 0x7fff
	v_cmp_o_f32_e64 s11, v61, v61
	v_cmp_o_f32_e64 s21, v55, v55
	v_bfe_u32 v97, v25, 16, 1
	v_add3_u32 v13, v61, v13, 0x7fff
	v_add3_u32 v24, v55, v24, 0x7fff
	v_add3_u32 v31, v42, v31, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v9.h, s7
	v_cndmask_b16 v9.h, 0x7fff, v22.h, s19
	v_cndmask_b16 v8.l, 0x7fff, v6.h, s1
	v_add3_u32 v14, v83, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v83, v83
	v_bfe_u32 v22, v18, 16, 1
	v_bfe_u32 v92, v44, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v16.h, s14
	v_cndmask_b16 v4.l, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v10, v82, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_bfe_u32 v16, v32, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_add3_u32 v20, v84, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_bfe_u32 v26, v86, 16, 1
	v_cmp_o_f32_e64 s5, v39, v39
	v_bfe_u32 v21, v52, 16, 1
	v_cmp_o_f32_e64 s31, v25, v25
	v_add3_u32 v39, v25, v97, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v13.h, s11
	v_cndmask_b16 v13.h, 0x7fff, v24.h, s21
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_add3_u32 v22, v18, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_bfe_u32 v24, v85, 16, 1
	v_cmp_o_f32_e64 s9, v59, v59
	v_cmp_o_f32_e64 s20, v54, v54
	v_bfe_u32 v91, v43, 16, 1
	v_cmp_o_f32_e64 s26, v44, v44
	v_add3_u32 v34, v44, v92, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v16, v32, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s0
	v_add3_u32 v26, v86, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v86, v86
	v_bfe_u32 v30, v89, 16, 1
	v_add3_u32 v21, v52, v21, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v87, 16, 1
	v_add3_u32 v24, v85, v24, 0x7fff
	v_cmp_o_f32_e64 s18, v52, v52
	v_cmp_o_f32_e64 s25, v43, v43
	v_add3_u32 v33, v43, v91, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v11.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v23.h, s20
	v_cndmask_b16 v23.h, 0x7fff, v34.h, s26
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_bfe_u32 v28, v88, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s0
	v_add3_u32 v30, v89, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	v_bfe_u32 v34, v67, 16, 1
	v_add3_u32 v22, v87, v22, 0x7fff
	v_bfe_u32 v93, v45, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v21.h, s18
	v_cndmask_b16 v21.h, 0x7fff, v33.h, s25
	v_cndmask_b16 v22.l, 0x7fff, v24.h, vcc_lo
	v_add3_u32 v28, v88, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_bfe_u32 v33, v65, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s0
	v_add3_u32 v34, v67, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v67, v67
	v_cmp_o_f32_e64 s27, v45, v45
	v_add3_u32 v35, v45, v93, 0x7fff
	v_cmp_o_f32_e64 s1, v87, v87
	v_bfe_u32 v32, v90, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v33, v65, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cndmask_b16 v4.h, 0x7fff, v34.h, s0
	v_bfe_u32 v34, v70, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v35.h, s27
	v_cndmask_b16 v26.l, 0x7fff, v22.h, s1
	v_add3_u32 v32, v90, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v90, v90
	v_bfe_u32 v35, v68, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v33.h, vcc_lo
	v_bfe_u32 v33, v69, 16, 1
	v_add3_u32 v34, v70, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v70, v70
	v_bfe_u32 v29, v41, 16, 1
	v_bfe_u32 v95, v47, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s1
	v_add3_u32 v35, v68, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_add3_u32 v33, v69, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_cndmask_b16 v10.h, 0x7fff, v34.h, s0
	v_bfe_u32 v34, v73, 16, 1
	v_cmp_o_f32_e64 s15, v49, v49
	v_cmp_o_f32_e64 s23, v41, v41
	v_bfe_u32 v94, v46, 16, 1
	v_cmp_o_f32_e64 s29, v47, v47
	v_add3_u32 v29, v41, v29, 0x7fff
	v_add3_u32 v37, v47, v95, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v71, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v33.h, vcc_lo
	v_bfe_u32 v33, v72, 16, 1
	v_add3_u32 v34, v73, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v73, v73
	v_cmp_o_f32_e64 s13, v63, v63
	v_cmp_o_f32_e64 s22, v56, v56
	v_cmp_o_f32_e64 s28, v46, v46
	v_add3_u32 v36, v46, v94, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s15
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s23
	v_cndmask_b16 v29.h, 0x7fff, v37.h, s29
	v_add3_u32 v35, v71, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v71, v71
	v_add3_u32 v33, v72, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_cndmask_b16 v16.h, 0x7fff, v34.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v37, 1, v128
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v34, v76, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v15.h, s13
	v_cndmask_b16 v15.h, 0x7fff, v27.h, s22
	v_cndmask_b16 v27.h, 0x7fff, v36.h, s28
	v_cndmask_b16 v2.l, 0x7fff, v39.h, s31
	v_cndmask_b16 v12.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v74, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v33.h, vcc_lo
	v_bfe_u32 v33, v75, 16, 1
	v_add3_u32 v34, v76, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v76, v76
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v39, 11, v127
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v36, v78, 16, 1
	v_add3_u32 v35, v74, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v74, v74
	v_add3_u32 v33, v75, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_cndmask_b16 v22.h, 0x7fff, v34.h, s0
	v_add3_u32 v34, v78, v36, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v36, 3, v127
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v18.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v77, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v33.h, vcc_lo
	v_bfe_u32 v33, v79, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v36, v36, v37
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s1, v77, v77
	v_add3_u32 v35, v77, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v79, v79
	v_add3_u32 v33, v79, v33, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_or3_b32 v0, v39, v0, v36
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v96, v48, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v35.h, s1
	v_cmp_o_f32_e64 s16, v50, v50
	v_cndmask_b16 v28.h, 0x7fff, v33.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v33, 0, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v35, v80, 16, 1
	v_cmp_o_f32_e64 s24, v42, v42
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_cmp_o_f32_e64 s1, v80, v80
	v_cmp_o_f32_e64 s30, v48, v48
	v_add3_u32 v35, v80, v35, 0x7fff
	v_add3_u32 v38, v48, v96, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s16
	v_cndmask_b16 v19.h, 0x7fff, v31.h, s24
	v_cndmask_b16 v26.h, 0x7fff, v34.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v34, v0, 8, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v30.h, 0x7fff, v35.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v35, v0, 16, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v125
	v_xad_u32 v36, v0, 24, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v31.h, 0x7fff, v38.h, s30
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v33, v[1:2], v[17:18] offset1:1
	ds_store_2addr_stride64_b64 v34, v[3:4], v[19:20] offset1:1
	ds_store_2addr_stride64_b64 v35, v[5:6], v[21:22] offset1:1
	ds_store_2addr_stride64_b64 v36, v[7:8], v[23:24] offset1:1
	v_lshlrev_b32_e32 v1, 3, v126
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v38, v66, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_cndmask_b32_e64 v2, 0x808, 0, vcc_lo
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s2, v66, v66
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v3, v0, 32, 0
	v_xad_u32 v4, v0, 40, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v37, v66, v38, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v1, v2, v1
	v_xad_u32 v5, v0, 48, 0
	v_xad_u32 v0, v0, 56, 0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v32.h, 0x7fff, v37.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_2addr_stride64_b64 v3, v[9:10], v[25:26] offset1:1
	ds_store_2addr_stride64_b64 v4, v[11:12], v[27:28] offset1:1
	ds_store_2addr_stride64_b64 v5, v[13:14], v[29:30] offset1:1
	ds_store_2addr_stride64_b64 v0, v[15:16], v[31:32] offset1:1
	v_add_nc_u32_e32 v0, 0, v1
	v_xad_u32 v2, 0x1010, v1, 0
	v_xad_u32 v3, 0x2020, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[28:31], v0 offset1:2
	ds_load_2addr_stride64_b64 v[24:27], v2 offset1:2
	ds_load_2addr_stride64_b64 v[20:23], v3 offset1:2
	v_xad_u32 v0, 0x3030, v1, 0
	v_xad_u32 v2, 0x4040, v1, 0
	v_xad_u32 v3, 0x5050, v1, 0
	v_xad_u32 v4, 0x6060, v1, 0
	v_xad_u32 v1, 0x7070, v1, 0
	ds_load_2addr_stride64_b64 v[16:19], v0 offset1:2
	ds_load_2addr_stride64_b64 v[12:15], v2 offset1:2
	ds_load_2addr_stride64_b64 v[8:11], v3 offset1:2
	ds_load_2addr_stride64_b64 v[4:7], v4 offset1:2
	ds_load_2addr_stride64_b64 v[0:3], v1 offset1:2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v32, 7, v125
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_ashr_i32 s1, s0, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v33, s41, v32
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v32, s40, 7, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v33
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v32
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v33
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v28, v30, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 2, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v24, v26, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v20, v22, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v16, v18, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 8, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v12, v14, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v8, v10, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v4, v6, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v28, v28, v30, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v28, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v28, 18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v28
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v28, s33, v28
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v24, v26, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v28, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v24, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v24, 20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v24
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v24, s33, v24
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v20, v22, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v24, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v20, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v20, 22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v20
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v20, s33, v20
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v16, v18, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v20, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v16, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(4)
	v_or_b32_e32 v16, 24, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s33, v16
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v12, v14, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v16, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v12, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v12, 26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s33, v12
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v10, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v12, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v8, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v8, 28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s33, v8
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v4, v6, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v8, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v4, off
.LBB0_39:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v4, 30, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v4
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_41
; %bb.40:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v4, s33, v4
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v4, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_41:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v0, 32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_43
; %bb.42:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v29, v31, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_43:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_45
; %bb.44:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v25, v27, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_45:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_47
; %bb.46:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v21, v23, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_47:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_49
; %bb.48:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v17, v19, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_49:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_51
; %bb.50:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v13, v15, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_51:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_53
; %bb.52:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v9, v11, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_53:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 44, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_55
; %bb.54:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v5, v7, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_55:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_57
; %bb.56:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v1, v3, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_57:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_59
; %bb.58:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v29, v31, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v28, s0, s38, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s39, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[28:29], v0, off
.LBB0_59:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 50, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_61
; %bb.60:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[28:29], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v25, v27, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v24, s0, s38, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s39, v29, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[24:25], v0, off
.LBB0_61:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_63
; %bb.62:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[24:25], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v21, v23, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v20, s0, s38, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s39, v25, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[20:21], v0, off
.LBB0_63:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 54, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_65
; %bb.64:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[20:21], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v17, v19, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v16, s0, s38, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s39, v21, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v0, off
.LBB0_65:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 56, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_67
; %bb.66:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[16:17], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v13, v15, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v12, s0, s38, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s39, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v0, off
.LBB0_67:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_69
; %bb.68:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[12:13], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v9, v11, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v8, s0, s38, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s39, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v0, off
.LBB0_69:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_71
; %bb.70:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[8:9], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v5, v7, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v4, s0, s38, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s39, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v0, off
.LBB0_71:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_73
; %bb.72:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s33, v0
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s38, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s39, v5, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_73:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 193
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 193
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 104
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16800
; TotalNumSgprs: 106
; NumVgprs: 193
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 106
; NumVGPRsForWavesPerEU: 193
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     106
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     193
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
