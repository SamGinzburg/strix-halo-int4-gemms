	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v34, 0xe0, v0
	v_lshlrev_b32_e32 v127, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s25, 0xff
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
	s_ashr_i32 s6, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
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
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s22, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s22, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_ashr_i32 s10, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s11, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	.loc	1 1329 39                       ; ragged.py:1329:39
	s_mul_i32 s12, s22, s24
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s7, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s23, s22, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s8, s7, s10
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s9, s8, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[22:23], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s28, s8, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s26, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s26, v0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s29, s3, 5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s2, 31
	s_add_i32 s3, s2, s4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s25, v97
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s30, s3, 1
	s_mov_b32 s3, 0
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s29, s30
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s23, s28, s12
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s27, s25, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr23
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $sgpr27
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v126, 15, v0
	v_lshrrev_b32_e32 v125, 1, v34
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v96, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s13, s[0:1], 0x38
	s_load_b128 s[16:19], s[0:1], 0x0
	v_mad_u64_u32 v[98:99], null, s25, 3, v[97:98]
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 5, v34
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v3, 31, v0
	s_add_i32 s23, s28, s12
	v_or_b32_e32 v11, 0xb00, v0
	v_or_b32_e32 v12, 0xf00, v0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s28, v1
	v_mad_u64_u32 v[99:100], null, s25, 5, v[97:98]
	v_mad_u64_u32 v[100:101], null, s25, 6, v[97:98]
	v_mad_u64_u32 v[101:102], null, s25, 7, v[97:98]
	v_mad_u64_u32 v[102:103], null, s25, 9, v[97:98]
	v_mad_u64_u32 v[103:104], null, s25, 10, v[97:98]
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s13, v1
	v_mad_u64_u32 v[104:105], null, s25, 11, v[97:98]
	v_mad_u64_u32 v[105:106], null, s25, 12, v[97:98]
	v_or_b32_e32 v4, 8, v2
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 24, v2
	v_or_b32_e32 v7, 32, v2
	v_or_b32_e32 v8, 40, v2
	v_or_b32_e32 v9, 48, v2
	v_or_b32_e32 v10, 56, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v2
	v_bfe_i32 v2, v0, 7, 1
	v_mad_u64_u32 v[106:107], null, s25, 13, v[97:98]
	v_mad_u64_u32 v[107:108], null, s25, 14, v[97:98]
	v_mad_u64_u32 v[108:109], null, s25, 15, v[97:98]
	s_mul_i32 s12, s23, s13
	v_mad_u64_u32 v[109:110], null, s25, 17, v[97:98]
	v_mad_u64_u32 v[110:111], null, s25, 18, v[97:98]
	v_cmp_gt_i32_e64 s0, s24, v4
	v_cmp_gt_i32_e64 s1, s24, v5
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v134, v3, v1, s12
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_and_b32_e32 v5, 24, v127
	v_mad_u64_u32 v[111:112], null, s25, 19, v[97:98]
	v_mad_u64_u32 v[112:113], null, s25, 20, v[97:98]
	v_mad_u64_u32 v[113:114], null, s25, 21, v[97:98]
	v_mad_u64_u32 v[114:115], null, s25, 22, v[97:98]
	v_mad_u64_u32 v[115:116], null, s25, 23, v[97:98]
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v2, v2, v4
	v_lshl_or_b32 v4, v126, 5, v5
	v_mad_u64_u32 v[116:117], null, s25, 24, v[97:98]
	v_mad_u64_u32 v[117:118], null, s25, 25, v[97:98]
	v_mad_u64_u32 v[118:119], null, s25, 26, v[97:98]
	v_mad_u64_u32 v[119:120], null, s25, 27, v[97:98]
	v_mad_u64_u32 v[120:121], null, s25, 28, v[97:98]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s24, v6
	v_cmp_gt_i32_e64 s4, s24, v7
	v_cmp_gt_i32_e64 s5, s24, v8
	v_cmp_gt_i32_e64 s6, s24, v9
	v_cmp_gt_i32_e64 s7, s24, v10
	v_xor_b32_e32 v5, 0x110, v2
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_or_b32_e32 v9, 0x300, v0
	v_or_b32_e32 v10, 0x700, v0
	v_or_b32_e32 v13, 0x1300, v0
	v_or_b32_e32 v14, 0x1700, v0
	v_or_b32_e32 v15, 0x1b00, v0
	v_or_b32_e32 v16, 0x1f00, v0
	v_mad_u64_u32 v[121:122], null, s25, 29, v[97:98]
	v_mad_u64_u32 v[122:123], null, s25, 30, v[97:98]
	v_mad_u64_u32 v[123:124], null, s25, 31, v[97:98]
	s_lshl_b32 s27, s25, 4
	v_add_nc_u32_e32 v128, s25, v97
	v_lshl_add_u32 v129, s25, 1, v97
	v_lshl_add_u32 v130, s25, 2, v97
	v_lshl_add_u32 v131, s25, 3, v97
	v_add_nc_u32_e32 v132, s27, v97
	v_add3_u32 v133, 0, v125, v126
	v_add_nc_u32_e32 v135, 0, v2
	v_add_nc_u32_e32 v136, 0, v5
	v_add_nc_u32_e32 v137, 0, v4
	v_add_nc_u32_e32 v138, 0, v6
	v_add_nc_u32_e32 v139, 0, v7
	v_add_nc_u32_e32 v140, 0, v8
	v_add_nc_u32_e32 v141, 0, v0
	v_add_nc_u32_e32 v142, 0, v9
	v_add_nc_u32_e32 v143, 0, v10
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v144, 0, v11
	v_add_nc_u32_e32 v145, 0, v12
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v146, 0, v13
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v147, 0, v14
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v148, 0, v15
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v149, 0, v16
	v_mov_b32_e32 v2, v1
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
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	.loc	1 1333 39                       ; ragged.py:1333:39
	s_mul_i32 s31, s22, s13
	s_lshl_b32 s33, s13, 3
	s_lshl_b32 s34, s13, 4
	s_mul_i32 s35, s13, 24
	s_lshl_b32 s36, s13, 5
	s_mul_i32 s37, s13, 40
	s_mul_i32 s38, s13, 48
	s_mul_i32 s39, s13, 56
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1335 42                       ; ragged.py:1335:42
	s_add_i32 s40, s29, s31
	v_add_nc_u32_e32 v65, s29, v134
	s_mul_i32 s40, s40, s25
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s29, s29, 32
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v66, s40, v97
	v_add_nc_u32_e32 v67, s40, v128
	v_add_nc_u32_e32 v68, s40, v129
	v_add_nc_u32_e32 v69, s40, v98
	v_add_nc_u32_e32 v70, s40, v130
	v_add_nc_u32_e32 v71, s40, v99
	v_add_nc_u32_e32 v72, s40, v100
	v_add_nc_u32_e32 v124, s40, v123
	v_add_nc_u32_e32 v73, s40, v101
	v_add_nc_u32_e32 v74, s40, v131
	v_add_nc_u32_e32 v75, s40, v102
	v_add_nc_u32_e32 v76, s40, v103
	v_add_nc_u32_e32 v77, s40, v104
	v_add_nc_u32_e32 v78, s40, v105
	v_add_nc_u32_e32 v79, s40, v106
	v_add_nc_u32_e32 v80, s40, v107
	v_add_nc_u32_e32 v81, s40, v108
	v_add_nc_u32_e32 v82, s40, v132
	v_add_nc_u32_e32 v83, s40, v109
	v_add_nc_u32_e32 v84, s40, v110
	v_add_nc_u32_e32 v85, s40, v111
	v_add_nc_u32_e32 v86, s40, v112
	v_add_nc_u32_e32 v87, s40, v113
	v_add_nc_u32_e32 v88, s40, v114
	v_add_nc_u32_e32 v89, s40, v115
	v_add_nc_u32_e32 v90, s40, v116
	v_add_nc_u32_e32 v91, s40, v117
	v_add_nc_u32_e32 v92, s40, v118
	v_add_nc_u32_e32 v93, s40, v119
	v_add_nc_u32_e32 v94, s40, v120
	v_add_nc_u32_e32 v95, s40, v121
	v_add_nc_u32_e32 v96, s40, v122
	v_add_nc_u32_e32 v150, s33, v65
	v_add_nc_u32_e32 v151, s34, v65
	v_add_nc_u32_e32 v152, s35, v65
	v_add_nc_u32_e32 v153, s36, v65
	v_add_nc_u32_e32 v154, s37, v65
	v_add_nc_u32_e32 v155, s38, v65
	v_add_nc_u32_e32 v156, s39, v65
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	.loc	1 1334 34                       ; ragged.py:1334:34
	buffer_load_u8 v65, v65, s[12:15], 0 offen
	v_cndmask_b32_e64 v150, 0x80000000, v150, s0
	v_cndmask_b32_e64 v151, 0x80000000, v151, s1
	v_cndmask_b32_e64 v152, 0x80000000, v152, s3
	v_cndmask_b32_e64 v153, 0x80000000, v153, s4
	v_cndmask_b32_e64 v154, 0x80000000, v154, s5
	v_cndmask_b32_e64 v155, 0x80000000, v155, s6
	v_cndmask_b32_e64 v156, 0x80000000, v156, s7
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_clause 0x1f
	buffer_load_u8 v157, v66, s[16:19], 0 offen
	buffer_load_u8 v158, v67, s[16:19], 0 offen
	buffer_load_u8 v159, v68, s[16:19], 0 offen
	buffer_load_u8 v160, v69, s[16:19], 0 offen
	buffer_load_u8 v161, v70, s[16:19], 0 offen
	buffer_load_u8 v162, v71, s[16:19], 0 offen
	buffer_load_u8 v163, v72, s[16:19], 0 offen
	buffer_load_u8 v164, v73, s[16:19], 0 offen
	buffer_load_u8 v165, v74, s[16:19], 0 offen
	buffer_load_u8 v166, v75, s[16:19], 0 offen
	buffer_load_u8 v167, v76, s[16:19], 0 offen
	buffer_load_u8 v168, v77, s[16:19], 0 offen
	buffer_load_u8 v169, v78, s[16:19], 0 offen
	buffer_load_u8 v170, v79, s[16:19], 0 offen
	buffer_load_u8 v171, v80, s[16:19], 0 offen
	buffer_load_u8 v172, v81, s[16:19], 0 offen
	buffer_load_u8 v173, v82, s[16:19], 0 offen
	buffer_load_u8 v174, v83, s[16:19], 0 offen
	buffer_load_u8 v175, v84, s[16:19], 0 offen
	buffer_load_u8 v176, v85, s[16:19], 0 offen
	buffer_load_u8 v177, v86, s[16:19], 0 offen
	buffer_load_u8 v178, v87, s[16:19], 0 offen
	buffer_load_u8 v179, v88, s[16:19], 0 offen
	buffer_load_u8 v180, v89, s[16:19], 0 offen
	buffer_load_u8 v181, v90, s[16:19], 0 offen
	buffer_load_u8 v182, v91, s[16:19], 0 offen
	buffer_load_u8 v183, v92, s[16:19], 0 offen
	buffer_load_u8 v184, v93, s[16:19], 0 offen
	buffer_load_u8 v185, v94, s[16:19], 0 offen
	buffer_load_u8 v186, v95, s[16:19], 0 offen
	buffer_load_u8 v187, v96, s[16:19], 0 offen
	buffer_load_u8 v124, v124, s[16:19], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_clause 0x6
	buffer_load_u8 v66, v151, s[12:15], 0 offen
	buffer_load_u8 v67, v153, s[12:15], 0 offen
	buffer_load_u8 v68, v155, s[12:15], 0 offen
	buffer_load_u8 v69, v156, s[12:15], 0 offen
	buffer_load_u8 v70, v154, s[12:15], 0 offen
	buffer_load_u8 v71, v152, s[12:15], 0 offen
	buffer_load_u8 v72, v150, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s29, s30
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v135, v65
	s_waitcnt vmcnt(6)
	ds_store_b8 v135, v66 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v135, v67 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v135, v68 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v136, v72
	ds_store_b8 v136, v71 offset:512
	ds_store_b8 v136, v70 offset:1024
	ds_store_b8 v136, v69 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[93:96], v137 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v137 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v138 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v138 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v139 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v139 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v140 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v140 offset0:2 offset1:3
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v141, v157
	ds_store_b8 v141, v158 offset:256
	ds_store_b8 v141, v159 offset:512
	ds_store_b8 v141, v161 offset:1024
	ds_store_b8 v141, v162 offset:1280
	ds_store_b8 v141, v163 offset:1536
	ds_store_b8 v141, v165 offset:2048
	ds_store_b8 v141, v166 offset:2304
	ds_store_b8 v141, v167 offset:2560
	ds_store_b8 v141, v169 offset:3072
	ds_store_b8 v141, v170 offset:3328
	ds_store_b8 v141, v171 offset:3584
	ds_store_b8 v141, v173 offset:4096
	ds_store_b8 v141, v174 offset:4352
	ds_store_b8 v141, v175 offset:4608
	ds_store_b8 v141, v177 offset:5120
	ds_store_b8 v141, v178 offset:5376
	ds_store_b8 v141, v179 offset:5632
	ds_store_b8 v141, v181 offset:6144
	ds_store_b8 v141, v182 offset:6400
	ds_store_b8 v141, v183 offset:6656
	ds_store_b8 v141, v185 offset:7168
	ds_store_b8 v141, v186 offset:7424
	ds_store_b8 v141, v187 offset:7680
	ds_store_b8 v142, v160
	ds_store_b8 v143, v164
	ds_store_b8 v144, v168
	ds_store_b8 v145, v172
	ds_store_b8 v146, v176
	ds_store_b8 v147, v180
	ds_store_b8 v148, v184
	ds_store_b8 v149, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1336 31                       ; ragged.py:1336:31
	ds_load_u8 v124, v133 offset:1280
	ds_load_u8 v150, v133 offset:1024
	ds_load_u8 v151, v133 offset:1792
	ds_load_u8 v152, v133 offset:1536
	ds_load_u8 v153, v133 offset:256
	ds_load_u8 v154, v133
	ds_load_u8 v155, v133 offset:768
	ds_load_u8 v156, v133 offset:512
	ds_load_u8 v157, v133 offset:1920
	ds_load_u8 v158, v133 offset:1664
	ds_load_u8 v159, v133 offset:1408
	ds_load_u8 v160, v133 offset:1152
	ds_load_u8 v161, v133 offset:896
	ds_load_u8 v162, v133 offset:640
	ds_load_u8 v163, v133 offset:384
	ds_load_u8 v164, v133 offset:128
	ds_load_u8 v165, v133 offset:3328
	ds_load_u8 v166, v133 offset:3072
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v124, v150, v124, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v150, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v152, v154, v153, 0xc0c0004
	ds_load_u8 v154, v133 offset:3840
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v153, v156, v155, 0xc0c0004
	v_lshl_or_b32 v151, v150, 16, v124
	ds_load_u8 v155, v133 offset:3584
	ds_load_u8 v124, v133 offset:2304
	ds_load_u8 v156, v133 offset:2048
	v_lshl_or_b32 v150, v153, 16, v152
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v152, v160, v159, 0xc0c0004
	v_perm_b32 v153, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v164, v163, 0xc0c0004
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v159, v133 offset:3968
	ds_load_u8 v157, v133 offset:3712
	ds_load_u8 v160, v133 offset:3456
	ds_load_u8 v162, v133 offset:3200
	ds_load_u8 v164, v133 offset:2432
	v_lshl_or_b32 v153, v153, 16, v152
	v_lshl_or_b32 v152, v161, 16, v158
	ds_load_u8 v158, v133 offset:2944
	ds_load_u8 v161, v133 offset:2688
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v163, v166, v165, 0xc0c0004
	ds_load_u8 v165, v133 offset:2176
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[93:94], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[150:151], v[95:96], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v156, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[150:151], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[150:151], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[152:153], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[152:153], v[91:92], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v158, v161, v158, 0xc0c0004
	ds_load_u8 v161, v133 offset:5760
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v133 offset:2816
	ds_load_u8 v156, v133 offset:2560
	v_perm_b32 v157, v157, v159, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v163
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v154, v156, 16, v124
	ds_load_u8 v124, v133 offset:5376
	ds_load_u8 v163, v133 offset:5120
	v_perm_b32 v156, v162, v160, 0xc0c0004
	ds_load_u8 v160, v133 offset:5888
	v_perm_b32 v162, v165, v164, 0xc0c0004
	ds_load_u8 v164, v133 offset:6016
	ds_load_u8 v159, v133 offset:5632
	v_lshl_or_b32 v157, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[1:8], v[154:155], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v156, v158, 16, v162
	ds_load_u8 v158, v133 offset:4352
	ds_load_u8 v162, v133 offset:5504
	ds_load_u8 v165, v133 offset:5248
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[154:155], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[87:88], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[154:155], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[156:157], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[156:157], v[83:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v163, v124, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v159, v159, v160, 0xc0c0004
	ds_load_u8 v160, v133 offset:4096
	ds_load_u8 v163, v133 offset:4992
	ds_load_u8 v166, v133 offset:4736
	ds_load_u8 v167, v133 offset:4480
	ds_load_u8 v168, v133 offset:4224
	v_lshl_or_b32 v159, v159, 16, v124
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v124, v165, v162, 0xc0c0004
	ds_load_u8 v165, v133 offset:7168
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v158, v160, v158, 0xc0c0004
	ds_load_u8 v160, v133 offset:4864
	ds_load_u8 v169, v133 offset:4608
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v163, v166, v163, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v162, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v169, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v160, 16, v158
	v_perm_b32 v160, v161, v164, 0xc0c0004
	ds_load_u8 v164, v133 offset:7424
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v161, v160, 16, v124
	v_lshl_or_b32 v160, v163, 16, v162
	ds_load_u8 v124, v133 offset:7552
	ds_load_u8 v162, v133 offset:7680
	ds_load_u8 v166, v133 offset:8064
	ds_load_u8 v167, v133 offset:7808
	ds_load_u8 v168, v133 offset:7296
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[158:159], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[158:159], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[160:161], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[160:161], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v163, v165, v164, 0xc0c0004
	ds_load_u8 v164, v133 offset:7936
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v124, v168, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v162, v164, 0xc0c0004
	ds_load_u8 v164, v133 offset:6400
	ds_load_u8 v165, v133 offset:6144
	ds_load_u8 v169, v133 offset:7040
	ds_load_u8 v170, v133 offset:6784
	ds_load_u8 v171, v133 offset:6528
	ds_load_u8 v172, v133 offset:6272
	v_lshl_or_b32 v163, v162, 16, v163
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v133 offset:6912
	ds_load_u8 v173, v133 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v173, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v162, v165, 16, v164
	v_perm_b32 v164, v167, v166, 0xc0c0004
	v_perm_b32 v166, v172, v171, 0xc0c0004
	v_perm_b32 v167, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[162:163], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v165, v164, 16, v124
	v_wmma_i32_16x16x16_iu4 v[17:24], v[162:163], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v167, 16, v166
	v_wmma_i32_16x16x16_iu4 v[33:40], v[162:163], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[162:163], v[67:68], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[164:165], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[164:165], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v96, v1
	v_cvt_f32_i32_e32 v95, v2
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v92, v5
	v_cvt_f32_i32_e32 v91, v6
	v_cvt_f32_i32_e32 v90, v7
	v_cvt_f32_i32_e32 v89, v8
	v_cvt_f32_i32_e32 v88, v9
	v_cvt_f32_i32_e32 v87, v10
	v_cvt_f32_i32_e32 v86, v11
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v82, v15
	v_cvt_f32_i32_e32 v81, v16
	v_cvt_f32_i32_e32 v80, v17
	v_cvt_f32_i32_e32 v79, v18
	v_cvt_f32_i32_e32 v78, v19
	v_cvt_f32_i32_e32 v77, v20
	v_cvt_f32_i32_e32 v76, v21
	v_cvt_f32_i32_e32 v75, v22
	v_cvt_f32_i32_e32 v74, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v72, v25
	v_cvt_f32_i32_e32 v71, v26
	v_cvt_f32_i32_e32 v70, v27
	v_cvt_f32_i32_e32 v69, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v31, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v29, v37
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v27, v39
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v21, v45
	v_cvt_f32_i32_e32 v20, v46
	v_cvt_f32_i32_e32 v19, v47
	v_cvt_f32_i32_e32 v18, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v15, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v13, v53
	v_cvt_f32_i32_e32 v12, v54
	v_cvt_f32_i32_e32 v11, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v8, v58
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	v_mov_b32_e32 v1, v127
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v34, s28, v126
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v35, s23, v126, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v38, 16, v34
	v_or_b32_e32 v37, 32, v34
	v_or_b32_e32 v36, 48, v34
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s24, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v39, 32, v35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s24, v38
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v40, 64, v35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v37
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v34, 0x80000000, v35, s3
	v_add_nc_u32_e32 v35, 0x60, v35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v36
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v38, 0x80000000, v39, s1
	v_cndmask_b32_e64 v37, 0x80000000, v40, s0
	s_mov_b32 s4, s8
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v36, s25, v126
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v38, s[4:7], 0 offen
	buffer_load_u16 v45, v37, s[4:7], 0 offen
	buffer_load_u16 v46, v35, s[4:7], 0 offen
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s4, s22, s25
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s5, s11, 0xffff
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s4, s26, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v35, 0xf0, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s4, v0, 1
	s_mov_b32 s4, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v1, 28, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s22, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v49, v35, 2, 0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s23, s25
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_mov_b32 s23, s7
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v42, s2, s26, v36
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	buffer_load_u16 v47, v34, s[4:7], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v60, s25, 5, v42
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v48, v34, 1, v125
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v0, 32, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v57, 2, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v58, s26, v48
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v56, 4, v48
	v_or_b32_e32 v55, 6, v48
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_add3_u32 v49, v49, v0, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v34, 0x8e, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v107, s26, v57
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v54, 8, v48
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s25, v58
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v106, s26, v56
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v53, 10, v48
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v105, s26, v55
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v52, 12, v48
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v61, s26, v34
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s25, v107
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v36, 0x8a, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v104, s26, v54
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s3, s2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v51, 14, v48
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v58, v42, v57, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s25, v106
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 0x88, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v103, s26, v53
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v41, 0x80, v48
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v108, v42, v56, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s25, v105
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v38, 0x86, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v102, s26, v52
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s25, v61
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v40, 0x82, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v63, s26, v36
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v109, v42, v55, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s25, v104
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v39, 0x84, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v101, s26, v51
	v_or_b32_e32 v64, s26, v37
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v110, v42, v54, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s25, v103
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v100, s26, v41
	v_or_b32_e32 v97, s26, v38
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v42, v53, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s25, v102
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v99, s26, v40
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s25, v63
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, s26, v39
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v42, v52, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s25, v101
	v_cmp_gt_i32_e64 s7, s25, v64
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v113, v42, v51, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s25, v100
	v_cmp_gt_i32_e64 s8, s25, v97
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v42, v41, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s25, v99
	v_cmp_gt_i32_e64 s9, s25, v98
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v115, v42, v40, 2
	v_add_lshl_u32 v116, v42, v39, 2
	v_add_lshl_u32 v117, v42, v38, 2
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v119, v42, v36, 2
	v_add_lshl_u32 v136, v60, v48, 2
	v_add_lshl_u32 v137, v60, v57, 2
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_waitcnt vmcnt(4)
	v_mad_u64_u32 v[0:1], null, s25, 48, v[42:43]
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v42, v48, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v76, v76, v44 :: v_dual_add_nc_u32 v59, s27, v42
	v_mul_f32_e32 v92, v92, v43
	v_mul_f32_e32 v96, v96, v43
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v50, v35, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 0x8c, v48
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v121, v59, v48, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s1, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v122, v59, v57, 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v62, s26, v35
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v120, v42, v35, 2
	v_cndmask_b32_e64 v58, 0x80000000, v58, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s25, v62
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v42, v42, v34, 2
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v123, v59, v56, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v124, v59, v55, 2
	v_cndmask_b32_e64 v97, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v125, v59, v54, 2
	v_cndmask_b32_e64 v98, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v126, v59, v53, 2
	v_cndmask_b32_e64 v99, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v127, v59, v52, 2
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v128, v59, v51, 2
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v129, v59, v41, 2
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v90, v90, v43 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	s_and_b32 s3, s3, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v130, v59, v40, 2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v131, v59, v39, 2
	v_cndmask_b32_e64 v107, 0x80000000, v122, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s17
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v91, v91, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v108, 0x80000000, v123, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s16
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v95, v95, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v124, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v94, v94, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v110, 0x80000000, v125, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s14
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v89, v89, v43 :: v_dual_mul_f32 v74, v74, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v111, 0x80000000, v126, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s13
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v77, v77, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v112, 0x80000000, v127, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s12
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v87, v87, v43 :: v_dual_mul_f32 v72, v72, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v113, 0x80000000, v128, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s11
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v75, v75, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v114, 0x80000000, v129, s3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_mul_f32 v70, v70, v44
	v_dual_mul_f32 v84, v84, v43 :: v_dual_mul_f32 v73, v73, v44
	v_dual_mul_f32 v83, v83, v43 :: v_dual_mul_f32 v68, v68, v44
	v_dual_mul_f32 v82, v82, v43 :: v_dual_mul_f32 v71, v71, v44
	v_dual_mul_f32 v43, v81, v43 :: v_dual_mul_f32 v66, v66, v44
	v_mul_f32_e32 v80, v80, v44
	v_mul_f32_e32 v79, v79, v44
	v_mul_f32_e32 v78, v78, v44
	v_dual_mul_f32 v69, v69, v44 :: v_dual_mul_f32 v32, v32, v45
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v30, v30, v45
	v_mul_f32_e32 v44, v65, v44
	v_dual_mul_f32 v33, v33, v45 :: v_dual_mul_f32 v16, v16, v46
	v_mul_f32_e32 v31, v31, v45
	v_dual_mul_f32 v65, v29, v45 :: v_dual_mul_f32 v10, v10, v46
	v_dual_mul_f32 v81, v28, v45 :: v_dual_mul_f32 v6, v6, v46
	v_dual_mul_f32 v121, v27, v45 :: v_dual_mul_f32 v8, v8, v46
	v_dual_mul_f32 v122, v26, v45 :: v_dual_mul_f32 v17, v17, v46
	v_dual_mul_f32 v123, v25, v45 :: v_dual_mul_f32 v4, v4, v46
	v_mul_f32_e32 v124, v24, v45
	v_dual_mul_f32 v125, v23, v45 :: v_dual_mul_f32 v2, v2, v46
	v_mul_f32_e32 v126, v22, v45
	v_mul_f32_e32 v127, v21, v45
	v_mul_f32_e32 v128, v20, v45
	v_mul_f32_e32 v129, v19, v45
	v_mul_f32_e32 v45, v18, v45
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v49, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v50
	ds_load_b128 v[22:25], v50 offset:16
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s10
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v47, v15, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v115, 0x80000000, v130, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s9
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v49, v14, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v116, 0x80000000, v131, s3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v130, v13, v46
	v_mul_f32_e32 v131, v12, v46
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[12:15], v50 offset:512
	ds_load_b128 v[26:29], v50 offset:528
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v132, v59, v38, 2
	v_add_lshl_u32 v133, v59, v37, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v134, v59, v36, 2
	v_add_lshl_u32 v135, v59, v35, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v59, v59, v34, 2
	v_cndmask_b32_e64 v118, 0x80000000, v133, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s6
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v11, v11, v46 :: v_dual_mul_f32 v90, v90, v24
	v_mul_f32_e32 v9, v9, v46
	v_mul_f32_e32 v7, v7, v46
	v_dual_mul_f32 v5, v5, v46 :: v_dual_mul_f32 v78, v78, v20
	v_dual_mul_f32 v3, v3, v46 :: v_dual_mul_f32 v74, v74, v24
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v46, v96, v18
	v_mul_f32_e32 v50, v95, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v119, 0x80000000, v134, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v94, v94, v20 :: v_dual_mul_f32 v93, v93, v21
	v_mul_f32_e32 v92, v92, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s3
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v91, v91, v23 :: v_dual_mul_f32 v86, v86, v14
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v89, v89, v25 :: v_dual_mul_f32 v84, v84, v26
	v_dual_mul_f32 v88, v88, v12 :: v_dual_mul_f32 v87, v87, v13
	v_dual_mul_f32 v80, v80, v18 :: v_dual_mul_f32 v85, v85, v15
	v_dual_mul_f32 v76, v76, v22 :: v_dual_mul_f32 v83, v83, v27
	v_mul_f32_e32 v72, v72, v12
	v_dual_mul_f32 v82, v82, v28 :: v_dual_mul_f32 v43, v43, v29
	v_dual_mul_f32 v70, v70, v14 :: v_dual_mul_f32 v79, v79, v19
	v_dual_mul_f32 v68, v68, v26 :: v_dual_mul_f32 v77, v77, v21
	v_dual_mul_f32 v66, v66, v28 :: v_dual_mul_f32 v75, v75, v23
	v_mul_f32_e32 v44, v44, v29
	v_dual_mul_f32 v73, v73, v25 :: v_dual_mul_f32 v32, v32, v19
	v_mul_f32_e32 v71, v71, v13
	v_dual_mul_f32 v69, v69, v15 :: v_dual_mul_f32 v30, v30, v21
	v_dual_mul_f32 v67, v67, v27 :: v_dual_mul_f32 v96, v122, v25
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v122, v124, v13
	v_mul_f32_e32 v124, v126, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[20:23], 0 offen
	buffer_store_b32 v50, v58, s[20:23], 0 offen
	buffer_store_b32 v94, v62, s[20:23], 0 offen
	buffer_store_b32 v93, v63, s[20:23], 0 offen
	buffer_store_b32 v92, v64, s[20:23], 0 offen
	buffer_store_b32 v91, v97, s[20:23], 0 offen
	buffer_store_b32 v90, v98, s[20:23], 0 offen
	buffer_store_b32 v89, v99, s[20:23], 0 offen
	buffer_store_b32 v88, v100, s[20:23], 0 offen
	buffer_store_b32 v87, v101, s[20:23], 0 offen
	buffer_store_b32 v86, v102, s[20:23], 0 offen
	buffer_store_b32 v85, v103, s[20:23], 0 offen
	buffer_store_b32 v84, v104, s[20:23], 0 offen
	buffer_store_b32 v83, v105, s[20:23], 0 offen
	buffer_store_b32 v82, v106, s[20:23], 0 offen
	buffer_store_b32 v43, v42, s[20:23], 0 offen
	buffer_store_b32 v80, v61, s[20:23], 0 offen
	buffer_store_b32 v79, v107, s[20:23], 0 offen
	buffer_store_b32 v78, v108, s[20:23], 0 offen
	buffer_store_b32 v77, v109, s[20:23], 0 offen
	buffer_store_b32 v76, v110, s[20:23], 0 offen
	buffer_store_b32 v75, v111, s[20:23], 0 offen
	buffer_store_b32 v74, v112, s[20:23], 0 offen
	buffer_store_b32 v73, v113, s[20:23], 0 offen
	buffer_store_b32 v72, v114, s[20:23], 0 offen
	buffer_store_b32 v71, v115, s[20:23], 0 offen
	buffer_store_b32 v70, v116, s[20:23], 0 offen
	buffer_store_b32 v69, v117, s[20:23], 0 offen
	buffer_store_b32 v68, v118, s[20:23], 0 offen
	buffer_store_b32 v67, v119, s[20:23], 0 offen
	buffer_store_b32 v66, v120, s[20:23], 0 offen
	v_add_lshl_u32 v1, v60, v56, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v95, v121, v24
	v_dual_mul_f32 v121, v123, v12 :: v_dual_mul_f32 v10, v10, v25
	v_mul_f32_e32 v9, v9, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v12, 0x80000000, v136, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v123, v125, v14 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v137, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v31, v31, v20 :: v_dual_mul_f32 v126, v128, v27
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_clause 0x1
	buffer_store_b32 v44, v59, s[20:23], 0 offen
	buffer_store_b32 v33, v12, s[20:23], 0 offen
	v_add_lshl_u32 v12, v60, v55, 2
	s_clause 0x1
	buffer_store_b32 v32, v13, s[20:23], 0 offen
	buffer_store_b32 v31, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v60, v54, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v60, v53, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s15
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v7, v7, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v52, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v65, v65, v22 :: v_dual_mul_f32 v16, v16, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v81, v81, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v12, s[20:23], 0 offen
	buffer_store_b32 v65, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v51, 2
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v2, v2, v29
	v_mul_f32_e32 v18, v47, v20
	v_mul_f32_e32 v20, v130, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v81, v13, s[20:23], 0 offen
	buffer_store_b32 v95, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v60, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v39, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v96, v1, s[20:23], 0 offen
	buffer_store_b32 v121, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v60, v38, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v12, v60, v37, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v122, v13, s[20:23], 0 offen
	buffer_store_b32 v123, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v60, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v35, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v125, v127, v26 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v127, v129, v28 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v124, v1, s[20:23], 0 offen
	buffer_store_b32 v125, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v34, 2
	v_add_lshl_u32 v12, v0, v48, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v126, v13, s[20:23], 0 offen
	buffer_store_b32 v127, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v45, v45, v29
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v0, v56, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v45, v1, s[20:23], 0 offen
	buffer_store_b32 v17, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v55, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v12, v0, v54, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v16, v13, s[20:23], 0 offen
	buffer_store_b32 v18, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v0, v52, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v19, v49, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v21, v131, v23
	v_mul_f32_e32 v11, v11, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_store_b32 v19, v1, s[20:23], 0 offen
	buffer_store_b32 v20, v12, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v51, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[20:23], 0 offen
	buffer_store_b32 v11, v14, s[20:23], 0 offen
	v_add_lshl_u32 v11, v0, v41, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v0, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v0, v39, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v10, v1, s[20:23], 0 offen
	buffer_store_b32 v9, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v38, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[20:23], 0 offen
	buffer_store_b32 v7, v13, s[20:23], 0 offen
	v_add_lshl_u32 v7, v0, v37, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v35, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_add_lshl_u32 v0, v0, v34, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v5, v5, v26
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v3, v3, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v7, s[20:23], 0 offen
	buffer_store_b32 v4, v8, s[20:23], 0 offen
	buffer_store_b32 v3, v9, s[20:23], 0 offen
	buffer_store_b32 v2, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 188
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 188
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8124
; TotalNumSgprs: 43
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 188
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
