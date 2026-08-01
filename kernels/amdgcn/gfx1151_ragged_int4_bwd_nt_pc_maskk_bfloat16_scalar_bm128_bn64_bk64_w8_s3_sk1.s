	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b32 s34, s[0:1], 0x38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v67, 5, v0
	v_bfe_i32 v2, v0, 7, 1
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v59, 15, v0
	v_and_b32_e32 v60, 0xc0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v3, 16, v67
	v_or_b32_e32 v69, 24, v67
	v_or_b32_e32 v4, 32, v67
	v_or_b32_e32 v5, 40, v67
	v_or_b32_e32 v6, 48, v67
	v_or_b32_e32 v68, 56, v67
	v_or_b32_e32 v65, 0x58, v67
	v_or_b32_e32 v66, 0x78, v67
	v_and_b32_e32 v63, 0x88, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v61, 32, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v33, 31, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s26, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s27, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 25
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
	s_ashr_i32 s49, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s48, s5, 6
	v_and_b32_e32 v62, 0x7f, v0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s48, s49
	v_lshlrev_b32_e32 v64, 1, v0
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
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s48
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s1, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s30, s1, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s1, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s30, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s4, s2, s4
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s53, s30, s26
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s5, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s0, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v1, 8, v67
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s0, s0, 0x4f7ffffe
	s_cvt_u32_f32 s0, s0
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s1, s1, s0
	s_mul_hi_u32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s4, s48
	s_mul_hi_u32 s0, s5, s0
	s_ashr_i32 s50, s1, 31
	s_mul_i32 s7, s0, s6
	s_sub_i32 s1, s5, s7
	s_add_i32 s5, s0, 1
	s_sub_i32 s7, s1, s6
	s_cmp_ge_u32 s1, s6
	s_cselect_b32 s0, s5, s0
	s_cselect_b32 s1, s7, s1
	s_add_i32 s5, s0, 1
	s_cmp_ge_u32 s1, s6
	s_cselect_b32 s0, s5, s0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s31, s30, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s51, s0, s50
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[0:1], s[30:31], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, s51, s50
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s5, s48
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s33, s5, 7
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s4, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s33, v67
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s25, s4, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s0, s44, s0
	s_addc_u32 s1, s45, s1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v7, s33, v1
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s52, s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v9, s33, v3
	v_or_b32_e32 v10, s33, v69
	v_or_b32_e32 v11, s33, v4
	v_or_b32_e32 v12, s33, v5
	v_or_b32_e32 v13, s33, v6
	v_or_b32_e32 v14, s33, v68
	v_or_b32_e32 v15, s33, v65
	v_or_b32_e32 v16, s33, v66
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v17, s25, v67
	v_or_b32_e32 v1, s25, v1
	v_or_b32_e32 v3, s25, v3
	v_or_b32_e32 v18, s25, v69
	v_or_b32_e32 v4, s25, v4
	v_or_b32_e32 v5, s25, v5
	v_or_b32_e32 v6, s25, v6
	v_or_b32_e32 v19, s25, v68
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v20, 64, v2
	v_or_b32_e32 v21, 0x48, v2
	v_or_b32_e32 v22, 0x50, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s9, s52, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v23, 0x60, v2
	v_or_b32_e32 v24, 0x68, v2
	v_or_b32_e32 v25, 0x70, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_lshr_b32 s9, s9, 26
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s35, s3, 5
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_add_i32 s9, s52, s9
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s23, s26, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s28, s9, 6
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s22, s26, v7
	v_cmp_gt_i32_e64 s21, s26, v9
	v_cmp_gt_i32_e64 s20, s26, v10
	v_cmp_gt_i32_e64 s19, s26, v11
	v_cmp_gt_i32_e64 s18, s26, v12
	v_cmp_gt_i32_e64 s17, s26, v13
	v_cmp_gt_i32_e64 s15, s26, v14
	v_cmp_gt_i32_e64 s10, s26, v15
	v_cmp_gt_i32_e64 s8, s26, v16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s27, v17
	v_cmp_gt_i32_e64 s6, s27, v1
	v_cmp_gt_i32_e64 s5, s27, v3
	v_cmp_gt_i32_e64 s4, s27, v18
	v_cmp_gt_i32_e64 s3, s27, v4
	v_cmp_gt_i32_e64 s24, s27, v5
	v_cmp_gt_i32_e64 s1, s27, v6
	v_cmp_gt_i32_e64 s0, s27, v19
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s16, s26, v20
	v_cmp_gt_i32_e64 s14, s26, v21
	v_cmp_gt_i32_e64 s13, s26, v22
	v_cmp_gt_i32_e64 s12, s26, v23
	v_cmp_gt_i32_e64 s11, s26, v24
	v_cmp_gt_i32_e64 s9, s26, v25
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s44, s28, 5
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s45, s30, s27
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s35, s44
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_mul_i32 s49, s49, s30
	s_lshl_b32 s2, s2, 6
	s_sub_i32 s30, s50, s49
	v_xor_b32_e32 v2, v63, v62
	s_sub_i32 s30, s30, s51
	s_and_b32 s29, s37, 0xffff
	s_mul_i32 s48, s48, s30
	s_mov_b32 s28, s36
	s_lshl_b32 s30, s48, 6
	s_add_i32 s48, s2, s45
	s_add_i32 s49, s30, s45
	s_add_i32 s48, s48, s30
	v_add3_u32 v8, s49, s2, v67
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v10, s48, v68
	s_lshl_b32 s2, s51, 7
	v_and_b32_e32 v1, 24, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v13, 48, v8
	v_mad_u64_u32 v[34:35], null, s34, v10, v[33:34]
	v_dual_mov_b32 v19, v17 :: v_dual_add_nc_u32 v10, 40, v8
	v_mov_b32_e32 v20, v17
	s_add_i32 s2, s53, s2
	s_lshl_b32 s30, s50, 7
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[35:36], null, s34, v13, v[33:34]
	v_add_nc_u32_e32 v13, 32, v8
	v_mad_u64_u32 v[36:37], null, s34, v10, v[33:34]
	v_dual_mov_b32 v21, v17 :: v_dual_add_nc_u32 v10, s48, v69
	v_mad_u64_u32 v[37:38], null, s34, v13, v[33:34]
	v_dual_mov_b32 v24, v17 :: v_dual_add_nc_u32 v13, 16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[38:39], null, s34, v10, v[33:34]
	v_dual_mov_b32 v23, v17 :: v_dual_add_nc_u32 v10, 8, v8
	v_mad_u64_u32 v[39:40], null, s34, v13, v[33:34]
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v14, s2, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[40:41], null, s34, v10, v[33:34]
	v_dual_mov_b32 v25, v17 :: v_dual_add_nc_u32 v10, s2, v66
	v_dual_mov_b32 v26, v17 :: v_dual_add_nc_u32 v13, s2, v65
	v_mad_u64_u32 v[41:42], null, s34, v8, v[33:34]
	v_subrev_nc_u32_e32 v8, s30, v10
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v10, s2, v68
	v_mov_b32_e32 v18, v17
	v_lshl_or_b32 v1, v59, 5, v1
	v_subrev_nc_u32_e32 v58, s30, v14
	v_subrev_nc_u32_e32 v13, s30, v13
	v_mad_u64_u32 v[42:43], null, s34, v8, v[33:34]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v60, 3, v1
	v_lshl_or_b32 v1, v61, 4, v1
	v_subrev_nc_u32_e32 v8, s30, v10
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v10, 48, v58
	v_mad_u64_u32 v[43:44], null, s34, v13, v[33:34]
	v_xor_b32_e32 v9, 8, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[44:45], null, s34, v8, v[33:34]
	v_add_nc_u32_e32 v8, 40, v58
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v13, s2, v69
	v_xor_b32_e32 v11, 16, v1
	v_mad_u64_u32 v[45:46], null, s34, v10, v[33:34]
	v_add_nc_u32_e32 v10, 32, v58
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v77, 0, v9
	v_mov_b32_e32 v9, v17
	v_mad_u64_u32 v[46:47], null, s34, v8, v[33:34]
	v_subrev_nc_u32_e32 v8, s30, v13
	v_xor_b32_e32 v6, 16, v3
	v_add_nc_u32_e32 v78, 0, v11
	v_mov_b32_e32 v11, v17
	v_mad_u64_u32 v[47:48], null, s34, v10, v[33:34]
	v_add_nc_u32_e32 v10, 16, v58
	v_dual_mov_b32 v30, v17 :: v_dual_add_nc_u32 v13, 8, v58
	v_mad_u64_u32 v[48:49], null, s34, v8, v[33:34]
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v8, 0x70, v58
	v_xor_b32_e32 v4, 0x110, v2
	v_xor_b32_e32 v7, 24, v3
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v53, 0x68, v58
	v_add_nc_u32_e32 v74, 0, v6
	v_add_nc_u32_e32 v6, 0x60, v58
	v_mad_u64_u32 v[49:50], null, s34, v10, v[33:34]
	v_mad_u64_u32 v[50:51], null, s34, v13, v[33:34]
	v_mad_u64_u32 v[51:52], null, s34, v8, v[33:34]
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v71, 0, v4
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v75, 0, v7
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v7, 0x50, v58
	v_mad_u64_u32 v[52:53], null, s34, v53, v[33:34]
	v_mad_u64_u32 v[53:54], null, s34, v6, v[33:34]
	v_add_nc_u32_e32 v6, 0x48, v58
	v_add_nc_u32_e32 v8, 64, v58
	v_mad_u64_u32 v[54:55], null, s34, v7, v[33:34]
	v_xor_b32_e32 v5, 8, v3
	v_xor_b32_e32 v12, 24, v1
	v_mad_u64_u32 v[55:56], null, s34, v6, v[33:34]
	v_mad_u64_u32 v[56:57], null, s34, v8, v[33:34]
	v_mad_u64_u32 v[57:58], null, s34, v58, v[33:34]
	v_add_nc_u32_e32 v70, 0, v2
	v_add_nc_u32_e32 v72, 0, v3
	v_mov_b32_e32 v3, v17
	v_add_nc_u32_e32 v73, 0, v5
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v76, 0, v1
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v79, 0, v12
	v_mov_b32_e32 v12, v17
	v_mov_b32_e32 v13, v17
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v6, v17
	v_mov_b32_e32 v8, v17
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s49, s39, 0xffff
	s_mov_b32 s48, s38
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 42                       ; ragged.py:1362:42
	v_add_nc_u32_e32 v58, s35, v57
	v_add_nc_u32_e32 v81, s35, v49
	v_add_nc_u32_e32 v83, s35, v47
	v_add_nc_u32_e32 v85, s35, v45
	v_add_nc_u32_e32 v80, s35, v50
	v_add_nc_u32_e32 v82, s35, v48
	v_add_nc_u32_e32 v84, s35, v46
	v_add_nc_u32_e32 v86, s35, v44
	v_add_nc_u32_e32 v87, s35, v56
	v_add_nc_u32_e32 v88, s35, v55
	v_add_nc_u32_e32 v89, s35, v54
	v_add_nc_u32_e32 v90, s35, v43
	v_add_nc_u32_e32 v91, s35, v53
	v_add_nc_u32_e32 v92, s35, v52
	v_add_nc_u32_e32 v93, s35, v51
	.loc	1 1362 34 is_stmt 0             ; ragged.py:1362:34
	v_add_nc_u32_e32 v94, s35, v42
	.loc	1 1363 42 is_stmt 1             ; ragged.py:1363:42
	v_add_nc_u32_e32 v96, s35, v40
	v_add_nc_u32_e32 v97, s35, v39
	v_add_nc_u32_e32 v98, s35, v38
	v_add_nc_u32_e32 v99, s35, v37
	v_add_nc_u32_e32 v100, s35, v36
	v_add_nc_u32_e32 v101, s35, v35
	.loc	1 1363 34 is_stmt 0             ; ragged.py:1363:34
	v_add_nc_u32_e32 v102, s35, v34
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v95, s35, v41
	.loc	1 1362 34 is_stmt 1             ; ragged.py:1362:34
	v_cndmask_b32_e64 v58, 0x80000000, v58, s23
	v_cndmask_b32_e64 v81, 0x80000000, v81, s21
	v_cndmask_b32_e64 v83, 0x80000000, v83, s19
	v_cndmask_b32_e64 v85, 0x80000000, v85, s17
	v_cndmask_b32_e64 v80, 0x80000000, v80, s22
	v_cndmask_b32_e64 v82, 0x80000000, v82, s20
	v_cndmask_b32_e64 v84, 0x80000000, v84, s18
	v_cndmask_b32_e64 v86, 0x80000000, v86, s15
	v_cndmask_b32_e64 v87, 0x80000000, v87, s16
	v_cndmask_b32_e64 v88, 0x80000000, v88, s14
	v_cndmask_b32_e64 v89, 0x80000000, v89, s13
	v_cndmask_b32_e64 v90, 0x80000000, v90, s10
	v_cndmask_b32_e64 v91, 0x80000000, v91, s12
	v_cndmask_b32_e64 v92, 0x80000000, v92, s11
	v_cndmask_b32_e64 v93, 0x80000000, v93, s9
	v_cndmask_b32_e64 v94, 0x80000000, v94, s8
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v96, 0x80000000, v96, s6
	v_cndmask_b32_e64 v97, 0x80000000, v97, s5
	v_cndmask_b32_e64 v98, 0x80000000, v98, s4
	v_cndmask_b32_e64 v99, 0x80000000, v99, s3
	v_cndmask_b32_e64 v100, 0x80000000, v100, s24
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	v_cndmask_b32_e64 v95, 0x80000000, v95, s7
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_clause 0xf
	buffer_load_u8 v58, v58, s[28:31], 0 offen
	buffer_load_u8 v81, v81, s[28:31], 0 offen
	buffer_load_u8 v83, v83, s[28:31], 0 offen
	buffer_load_u8 v85, v85, s[28:31], 0 offen
	buffer_load_u8 v87, v87, s[28:31], 0 offen
	buffer_load_u8 v89, v89, s[28:31], 0 offen
	buffer_load_u8 v91, v91, s[28:31], 0 offen
	buffer_load_u8 v93, v93, s[28:31], 0 offen
	buffer_load_u8 v86, v86, s[28:31], 0 offen
	buffer_load_u8 v84, v84, s[28:31], 0 offen
	buffer_load_u8 v82, v82, s[28:31], 0 offen
	buffer_load_u8 v80, v80, s[28:31], 0 offen
	buffer_load_u8 v94, v94, s[28:31], 0 offen
	buffer_load_u8 v92, v92, s[28:31], 0 offen
	buffer_load_u8 v90, v90, s[28:31], 0 offen
	buffer_load_u8 v88, v88, s[28:31], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x7
	buffer_load_u8 v103, v95, s[48:51], 0 offen
	buffer_load_u8 v97, v97, s[48:51], 0 offen
	buffer_load_u8 v99, v99, s[48:51], 0 offen
	buffer_load_u8 v101, v101, s[48:51], 0 offen
	buffer_load_u8 v102, v102, s[48:51], 0 offen
	buffer_load_u8 v100, v100, s[48:51], 0 offen
	buffer_load_u8 v98, v98, s[48:51], 0 offen
	buffer_load_u8 v96, v96, s[48:51], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s35, s35, 32
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(23)
	ds_store_b8 v70, v58
	s_waitcnt vmcnt(22)
	ds_store_b8 v70, v81 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v70, v83 offset:1024
	s_waitcnt vmcnt(20)
	ds_store_b8 v70, v85 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v70, v87 offset:2048
	s_waitcnt vmcnt(18)
	ds_store_b8 v70, v89 offset:2560
	s_waitcnt vmcnt(17)
	ds_store_b8 v70, v91 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b8 v70, v93 offset:3584
	s_waitcnt vmcnt(12)
	ds_store_b8 v71, v80
	ds_store_b8 v71, v82 offset:512
	ds_store_b8 v71, v84 offset:1024
	ds_store_b8 v71, v86 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v71, v88 offset:2048
	ds_store_b8 v71, v90 offset:2560
	ds_store_b8 v71, v92 offset:3072
	ds_store_b8 v71, v94 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[80:83], v72 offset1:4
	ds_load_2addr_stride64_b64 v[84:87], v73 offset1:4
	ds_load_2addr_stride64_b64 v[88:91], v74 offset1:4
	ds_load_2addr_stride64_b64 v[92:95], v75 offset1:4
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v70, v103
	s_waitcnt vmcnt(6)
	ds_store_b8 v70, v97 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v70, v99 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v70, v101 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v71, v96
	ds_store_b8 v71, v98 offset:512
	ds_store_b8 v71, v100 offset:1024
	ds_store_b8 v71, v102 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[96:99], v76 offset1:2
	ds_load_2addr_stride64_b64 v[100:103], v77 offset1:2
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s35, s44
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[80:81], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[96:97], v[82:83], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[82:83], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[80:83], v78 offset1:2
	ds_load_2addr_stride64_b64 v[96:99], v79 offset1:2
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[84:85], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[102:103], v[84:85], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[86:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[86:87], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[88:89], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[88:89], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[90:91], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[96:97], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[94:95], v[1:8] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s2, s52, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s28, s2, 31
	s_add_i32 s2, s2, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s48, s2, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s35, s48
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1404 21 is_stmt 1             ; ragged.py:1404:21
	s_add_i32 s44, s33, s53
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s54, s25, s45
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr44
                                        ; implicit-def: $sgpr54
.LBB0_7:
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v34, s34, v67
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v35, s35, v33
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s2, s52, 0x80000001
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v42, s34, v69
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s2, 1
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v46, s34, v68
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s49, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s44, s33, s53
	v_mad_u64_u32 v[36:37], null, s34, 40, v[34:35]
	v_mad_u64_u32 v[37:38], null, s34, 48, v[34:35]
	v_lshl_add_u32 v43, s34, 3, v34
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e32 vcc_lo, s48, v35
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v44, s34, 4, v34
	v_lshl_add_u32 v45, s34, 5, v34
	v_mad_u64_u32 v[38:39], null, s44, s34, v[35:36]
	s_lshl_b32 s2, s34, 6
	s_mul_i32 s28, s34, 0x48
	s_mul_i32 s29, s34, 0x50
	s_mul_i32 s30, s34, 0x60
	s_mul_i32 s31, s34, 0x68
	s_mul_i32 s50, s34, 0x70
	v_mad_u64_u32 v[39:40], null, s34, v65, v[38:39]
	v_add_nc_u32_e32 v47, v38, v34
	v_add_nc_u32_e32 v48, v38, v43
	v_add3_u32 v55, v34, s2, v38
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s23, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v49, v38, v44
	v_add_nc_u32_e32 v50, v38, v42
	v_add_nc_u32_e32 v51, v38, v45
	v_add_nc_u32_e32 v52, v38, v36
	v_add_nc_u32_e32 v53, v38, v37
	v_add_nc_u32_e32 v54, v38, v46
	v_add3_u32 v56, v34, s28, v38
	v_add3_u32 v57, v34, s29, v38
	v_add3_u32 v58, v34, s30, v38
	v_add3_u32 v65, v34, s31, v38
	v_add3_u32 v67, v34, s50, v38
	v_mad_u64_u32 v[40:41], null, s34, v66, v[38:39]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v38, 0x80000000, v47, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s22, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s29, s37, 0xffff
	v_cndmask_b32_e64 v41, 0x80000000, v48, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s21, vcc_lo
	s_mov_b32 s31, 0x31027000
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v47, 0x80000000, v49, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s20, vcc_lo
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v48, 0x80000000, v50, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s19, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_mov_b32 s28, s36
	v_cndmask_b32_e64 v49, 0x80000000, v51, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s18, vcc_lo
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s54, s25, s45
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v50, 0x80000000, v52, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s17, vcc_lo
	.loc	1 1388 66 is_stmt 1             ; ragged.py:1388:66
	s_and_b32 s1, s1, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v51, 0x80000000, v53, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s15, vcc_lo
	.loc	1 1386 63 is_stmt 1             ; ragged.py:1386:63
	s_add_i32 s48, s48, -1
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v52, 0x80000000, v54, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s16, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_clause 0x7
	buffer_load_u8 v53, v38, s[28:31], 0 offen
	buffer_load_u8 v41, v41, s[28:31], 0 offen
	buffer_load_u8 v47, v47, s[28:31], 0 offen
	buffer_load_u8 v48, v48, s[28:31], 0 offen
	buffer_load_u8 v49, v49, s[28:31], 0 offen
	buffer_load_u8 v50, v50, s[28:31], 0 offen
	buffer_load_u8 v51, v51, s[28:31], 0 offen
	buffer_load_u8 v52, v52, s[28:31], 0 offen
	v_cndmask_b32_e64 v38, 0x80000000, v55, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s14, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v54, 0x80000000, v56, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s13, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v55, 0x80000000, v57, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s10, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s12, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v56, 0x80000000, v58, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s11, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v57, 0x80000000, v65, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s9, vcc_lo
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s9, s54, s34
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v58, 0x80000000, v67, s2
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v33, s35, s9, v33
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s8, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	s_clause 0x7
	buffer_load_u8 v65, v38, s[28:31], 0 offen
	buffer_load_u8 v54, v54, s[28:31], 0 offen
	buffer_load_u8 v55, v55, s[28:31], 0 offen
	buffer_load_u8 v66, v39, s[28:31], 0 offen
	buffer_load_u8 v56, v56, s[28:31], 0 offen
	buffer_load_u8 v57, v57, s[28:31], 0 offen
	buffer_load_u8 v58, v58, s[28:31], 0 offen
	buffer_load_u8 v67, v40, s[28:31], 0 offen
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add_nc_u32_e32 v34, v33, v34
	v_add_nc_u32_e32 v38, v33, v43
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s7, vcc_lo
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v39, v33, v44
	v_add_nc_u32_e32 v40, v33, v42
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s6, vcc_lo
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v42, v33, v45
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s5, vcc_lo
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v36, v33, v36
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s4, vcc_lo
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v37, v33, v37
	v_add_nc_u32_e32 v33, v33, v46
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s3, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s29, s39, 0xffff
	s_mov_b32 s28, s38
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s24, vcc_lo
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_clause 0x7
	buffer_load_u8 v45, v34, s[28:31], 0 offen
	buffer_load_u8 v46, v38, s[28:31], 0 offen
	buffer_load_u8 v68, v39, s[28:31], 0 offen
	buffer_load_u8 v69, v40, s[28:31], 0 offen
	buffer_load_u8 v70, v42, s[28:31], 0 offen
	buffer_load_u8 v71, v36, s[28:31], 0 offen
	buffer_load_u8 v72, v37, s[28:31], 0 offen
	buffer_load_u8 v73, v33, s[28:31], 0 offen
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_and_b32_e32 v33, 24, v64
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s48, v35
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xor_b32_e32 v34, v63, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_or_b32 v33, v59, 5, v33
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s0, s49, vcc_lo
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v62, 0, v34
	v_xad_u32 v63, 0x110, v34, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v35, v60, 3, v33
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshl_or_b32 v64, v61, 4, v33
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v74, 0, v35
	v_xad_u32 v75, v35, 8, 0
	v_xad_u32 v76, v35, 16, 0
	v_xad_u32 v77, v35, 24, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add_nc_u32_e32 v78, 0, v64
	v_xad_u32 v79, v64, 8, 0
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(23)
	v_and_b16 v33.l, v53.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v33.h, v41.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v34.l, v47.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v34.h, v48.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v35.l, v49.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v37.l, v50.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v33.h, v41.l, v33.h, s0
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(17)
	v_and_b16 v37.h, v51.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v38.l, v52.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v33.l, v53.l, v33.l, s0
	v_cndmask_b16 v35.l, v49.l, v35.l, s0
	v_cndmask_b16 v34.l, v47.l, v34.l, s0
	v_cndmask_b16 v37.l, v50.l, v37.l, s0
	v_cndmask_b16 v37.h, v51.l, v37.h, s0
	v_cndmask_b16 v38.l, v52.l, v38.l, s0
	v_cndmask_b16 v34.h, v48.l, v34.h, s0
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(15)
	v_and_b16 v35.h, v65.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v36.l, v54.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v36.h, v55.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v38.h, v66.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v39.l, v56.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v39.h, v57.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v40.l, v58.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v40.h, v67.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v35.h, v65.l, v35.h, s0
	v_cndmask_b16 v36.l, v54.l, v36.l, s0
	v_cndmask_b16 v36.h, v55.l, v36.h, s0
	v_cndmask_b16 v38.h, v66.l, v38.h, s0
	v_cndmask_b16 v39.l, v56.l, v39.l, s0
	v_cndmask_b16 v39.h, v57.l, v39.h, s0
	v_cndmask_b16 v40.l, v58.l, v40.l, s0
	v_cndmask_b16 v40.h, v67.l, v40.h, s0
	ds_store_b8 v62, v33
	ds_store_b8 v62, v34 offset:512
	ds_store_b8 v62, v35 offset:1024
	ds_store_b8_d16_hi v62, v37 offset:1536
	ds_store_b8_d16_hi v62, v35 offset:2048
	ds_store_b8_d16_hi v62, v36 offset:2560
	ds_store_b8 v62, v39 offset:3072
	ds_store_b8 v62, v40 offset:3584
	ds_store_b8_d16_hi v63, v33
	ds_store_b8_d16_hi v63, v34 offset:512
	ds_store_b8 v63, v37 offset:1024
	ds_store_b8 v63, v38 offset:1536
	ds_store_b8 v63, v36 offset:2048
	ds_store_b8_d16_hi v63, v38 offset:2560
	ds_store_b8_d16_hi v63, v39 offset:3072
	ds_store_b8_d16_hi v63, v40 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_xad_u32 v57, v64, 16, 0
	v_xad_u32 v58, v64, 24, 0
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v41.l, v45.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v41.h, v46.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v42.l, v68.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v42.h, v69.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v43.l, v70.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v43.h, v71.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v44.l, v72.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v44.h, v73.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v49.l, v45.l, v41.l, s0
	v_cndmask_b16 v50.l, v68.l, v42.l, s0
	v_cndmask_b16 v51.l, v70.l, v43.l, s0
	v_cndmask_b16 v52.l, v72.l, v44.l, s0
	v_cndmask_b16 v49.h, v46.l, v41.h, s0
	v_cndmask_b16 v50.h, v69.l, v42.h, s0
	v_cndmask_b16 v51.h, v71.l, v43.h, s0
	v_cndmask_b16 v52.h, v73.l, v44.h, s0
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[33:36], v74 offset1:4
	ds_load_2addr_stride64_b64 v[37:40], v75 offset1:4
	ds_load_2addr_stride64_b64 v[41:44], v76 offset1:4
	ds_load_2addr_stride64_b64 v[45:48], v77 offset1:4
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v62, v49
	ds_store_b8 v62, v50 offset:512
	ds_store_b8 v62, v51 offset:1024
	ds_store_b8 v62, v52 offset:1536
	ds_store_b8_d16_hi v63, v49
	ds_store_b8_d16_hi v63, v50 offset:512
	ds_store_b8_d16_hi v63, v51 offset:1024
	ds_store_b8_d16_hi v63, v52 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v78 offset1:2
	ds_load_2addr_stride64_b64 v[53:56], v79 offset1:2
	ds_load_2addr_stride64_b64 v[62:65], v57 offset1:2
	ds_load_2addr_stride64_b64 v[66:69], v58 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[33:34], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[37:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[39:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[64:65], v[43:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[66:67], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[68:69], v[45:46], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[47:48], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v48, 2, v60
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v34, 1, v61
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s49, s41, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v48, v48, v59
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v33, v33, 1, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s48, s40
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v57, 64, v48
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v63, s33, v48
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v64, s44, v48, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v56, 2, v33
	v_or_b32_e32 v55, 4, v33
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v62, s33, v57
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s26, v63
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v65, s44, v57, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v61, s25, v56
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v54, 6, v33
	.loc	1 1311 20 is_stmt 1             ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s26, v62
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v63, 0x80000000, v64, s0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v64, s25, v33
	v_or_b32_e32 v60, s25, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v56, s54, v56, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v62, 0x80000000, v65, vcc_lo
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v65, s54, v33, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v64
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v53, 8, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v59, s25, v54
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v55, s54, v55, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v47, 10, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v64, 0x80000000, v65, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v61
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v58, s25, v53
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v54, s54, v54, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v41, 12, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v52, s25, v47
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v53, s54, v53, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v40, 14, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v51, s25, v41
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v47, s54, v47, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v59
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v39, 32, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v50, s25, v40
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v41, s54, v41, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v38, 34, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v58
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v49, s25, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s54, v40, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 36, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v46, s25, v38
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v52
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v39, s54, v39, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v36, 38, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v45, s25, v37
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v38, s54, v38, 1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v51
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 40, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v44, s25, v36
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v37, s54, v37, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v34, 42, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v50
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v43, s25, v35
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v36, s54, v36, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v63, v63, s[48:51], 0 offen
	buffer_load_u16 v62, v62, s[48:51], 0 offen
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v42, s25, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v35, s54, v35, 1
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	v_add_lshl_u32 v34, s54, v34, 1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v46
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v50, v64, s[48:51], 0 offen
	buffer_load_u16 v51, v56, s[48:51], 0 offen
	buffer_load_u16 v52, v55, s[48:51], 0 offen
	buffer_load_u16 v54, v54, s[48:51], 0 offen
	buffer_load_u16 v53, v53, s[48:51], 0 offen
	buffer_load_u16 v47, v47, s[48:51], 0 offen
	buffer_load_u16 v41, v41, s[48:51], 0 offen
	buffer_load_u16 v40, v40, s[48:51], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v56, v22
	v_cvt_f32_i32_e32 v22, v7
	v_cvt_f32_i32_e32 v68, v1
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v45
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v70, v3
	v_cvt_f32_i32_e32 v71, v4
	v_cvt_f32_i32_e32 v74, v8
	v_cvt_f32_i32_e32 v69, v2
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v44
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v45, v18
	v_cvt_f32_i32_e32 v46, v19
	v_cvt_f32_i32_e32 v49, v20
	v_cvt_f32_i32_e32 v55, v21
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v43
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v42
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	s_clause 0x5
	buffer_load_u16 v38, v38, s[48:51], 0 offen
	buffer_load_u16 v39, v39, s[48:51], 0 offen
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	buffer_load_u16 v37, v37, s[48:51], 0 offen
	buffer_load_u16 v42, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v34, 44, v33
	v_or_b32_e32 v33, 46, v33
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v61, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v43, s25, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s54, v34, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v44, s25, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v33, s54, v33, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v59, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v43
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v43, 1, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v60, v11
	v_cvt_f32_i32_e32 v64, v13
	v_cvt_f32_i32_e32 v65, v14
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v44
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v5, 24, v43
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v44, v17
	v_cvt_f32_i32_e32 v58, v9
	v_cvt_f32_i32_e32 v66, v15
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	s_clause 0x1
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s1, s44, s27
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 39, v5
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s2, s1, s25
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s25, v5
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s27, v48, s[2:3]
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v8, 38, v5
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v4, s25, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s27, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s27, v57, s[2:3]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v48, s25, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v4
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v67, v16
	v_cvt_f32_i32_e32 v73, v6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v6.h, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s27, v48
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 37, v5
	v_or_b32_e32 v10, 36, v5
	v_or_b32_e32 v11, 35, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v43.h, v6.h
	v_mov_b16_e32 v75.h, v6.h
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v12, 34, v5
	v_or_b32_e32 v13, 33, v5
	v_or_b32_e32 v14, 32, v5
	v_or_b32_e32 v15, 7, v5
	v_or_b32_e32 v16, 6, v5
	v_or_b32_e32 v17, 5, v5
	v_or_b32_e32 v18, 4, v5
	v_or_b32_e32 v19, 3, v5
	v_or_b32_e32 v20, 2, v5
	v_or_b32_e32 v21, 1, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v76.h, v6.h
	v_mov_b16_e32 v78.h, v6.h
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v81, s25, v9
	v_or_b32_e32 v82, s25, v10
	v_or_b32_e32 v83, s25, v11
	v_or_b32_e32 v84, s25, v12
	v_or_b32_e32 v85, s25, v13
	v_or_b32_e32 v86, s25, v14
	v_or_b32_e32 v87, s25, v15
	v_or_b32_e32 v88, s25, v16
	v_or_b32_e32 v89, s25, v17
	v_or_b32_e32 v90, s25, v18
	v_or_b32_e32 v91, s25, v19
	v_or_b32_e32 v92, s25, v20
	v_or_b32_e32 v93, s25, v21
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s27, v81
	v_cmp_gt_i32_e64 s4, s27, v82
	v_cmp_gt_i32_e64 s5, s27, v83
	v_cmp_gt_i32_e64 s6, s27, v84
	v_cmp_gt_i32_e64 s7, s27, v85
	v_cmp_gt_i32_e64 s8, s27, v86
	v_cmp_gt_i32_e64 s9, s27, v87
	v_cmp_gt_i32_e64 s10, s27, v88
	v_cmp_gt_i32_e64 s11, s27, v89
	v_cmp_gt_i32_e64 s12, s27, v90
	v_cmp_gt_i32_e64 s13, s27, v91
	v_cmp_gt_i32_e64 s15, s27, v92
	v_cmp_gt_i32_e64 s16, s27, v93
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v77.h, v6.h
	v_mov_b16_e32 v79.h, v6.h
	v_mov_b16_e32 v80.h, v6.h
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s49, s47, 0xffff
	s_mov_b32 s48, s46
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v4, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v57, v4, v61 :: v_dual_lshlrev_b32 v2, 16, v63
	v_mul_f32_e32 v44, v44, v2
	v_mul_f32_e32 v45, v45, v2
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v46, v46, v2 :: v_dual_lshlrev_b32 v53, 16, v53
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v48, v49, v2 :: v_dual_lshlrev_b32 v41, 16, v41
	v_dual_mul_f32 v49, v55, v2 :: v_dual_lshlrev_b32 v52, 16, v52
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v55, v56, v2 :: v_dual_lshlrev_b32 v40, 16, v40
	v_mul_f32_e32 v23, v23, v2
	v_mul_f32_e32 v24, v24, v2
	v_mul_f32_e32 v25, v25, v2
	v_mul_f32_e32 v26, v26, v2
	v_mul_f32_e32 v27, v27, v2
	v_mul_f32_e32 v28, v28, v2
	v_mul_f32_e32 v29, v29, v2
	v_mul_f32_e32 v30, v30, v2
	v_mul_f32_e32 v31, v31, v2
	v_dual_mul_f32 v2, v32, v2 :: v_dual_mul_f32 v49, v49, v53
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v32, 16, v51
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v46, v46, v52 :: v_dual_lshlrev_b32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s21, v49, v49
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v45, v45, v32 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v61, v4, v67
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v51, 16, v54
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v63, v4, v69 :: v_dual_lshlrev_b32 v38, 16, v38
	v_mul_f32_e32 v54, v4, v59
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v56, v4, v58 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v55, v55, v47 :: v_dual_mul_f32 v58, v4, v60
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v60, v4, v64
	v_dual_mul_f32 v62, v4, v66 :: v_dual_mul_f32 v23, v23, v41
	v_mul_f32_e32 v64, v4, v68
	v_mul_f32_e32 v68, v4, v72
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v44, v44, v50 :: v_dual_mul_f32 v27, v27, v37
	v_dual_mul_f32 v24, v24, v40 :: v_dual_mul_f32 v29, v29, v35
	v_mul_f32_e32 v26, v26, v38
	v_dual_mul_f32 v32, v54, v32 :: v_dual_mul_f32 v59, v4, v65
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v65, v4, v71
	v_dual_mul_f32 v66, v4, v70 :: v_dual_mul_f32 v25, v25, v39
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v48, v48, v51 :: v_dual_mul_f32 v41, v62, v41
	v_dual_mul_f32 v30, v30, v42 :: v_dual_mul_f32 v53, v60, v53
	v_mul_f32_e32 v51, v57, v51
	v_mul_f32_e32 v39, v64, v39
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v54, v44, 16, 1
	v_bfe_u32 v60, v55, 16, 1
	v_bfe_u32 v62, v24, 16, 1
	v_bfe_u32 v64, v26, 16, 1
	v_mov_b16_e32 v6.l, v32.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v40, v61, v40
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v61, v23, 16, 1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v67, v4, v73
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v36 :: v_dual_mul_f32 v47, v59, v47
	v_dual_mul_f32 v50, v56, v50 :: v_dual_mul_f32 v37, v66, v37
	v_dual_mul_f32 v52, v58, v52 :: v_dual_mul_f32 v35, v68, v35
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v44, v44
	v_bfe_u32 v56, v45, 16, 1
	v_bfe_u32 v58, v48, 16, 1
	v_cmp_o_f32_e64 s22, v55, v55
	v_cmp_o_f32_e64 s23, v23, v23
	v_cmp_o_f32_e64 s24, v24, v24
	v_cmp_o_f32_e64 s26, v26, v26
	v_add3_u32 v44, v44, v54, 0x7fff
	v_add3_u32 v54, v55, v60, 0x7fff
	v_add3_u32 v23, v23, v61, 0x7fff
	v_add3_u32 v24, v24, v62, 0x7fff
	v_add3_u32 v26, v26, v64, 0x7fff
	v_and_b32_e32 v55, 1, v6
	v_mov_b16_e32 v6.l, v51.h
	v_cmp_o_f32_e64 s18, v45, v45
	v_cmp_o_f32_e64 s20, v48, v48
	v_bfe_u32 v59, v49, 16, 1
	v_bfe_u32 v66, v28, 16, 1
	v_mov_b16_e32 v43.l, v50.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v38, v63, v38
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v63, v25, 16, 1
	v_mov_b16_e32 v75.l, v52.h
	v_add3_u32 v45, v45, v56, 0x7fff
	v_add3_u32 v48, v48, v58, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s23
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s24
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s26
	v_and_b32_e32 v26, 1, v6
	v_mov_b16_e32 v6.l, v47.h
	v_bfe_u32 v57, v46, 16, 1
	v_cmp_o_f32_e64 s25, v25, v25
	v_cmp_o_f32_e64 s28, v28, v28
	v_mov_b16_e32 v76.l, v53.h
	v_mov_b16_e32 v78.l, v39.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v36, v65, v36
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v65, v27, 16, 1
	v_add3_u32 v49, v49, v59, 0x7fff
	v_add3_u32 v25, v25, v63, 0x7fff
	v_add3_u32 v28, v28, v66, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s17
	v_cndmask_b16 v44.h, 0x7fff, v45.h, s18
	v_cndmask_b16 v45.h, 0x7fff, v48.h, s20
	v_and_b32_e32 v48, 1, v6
	v_mov_b16_e32 v6.l, v40.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v56, 1, v75
	v_cmp_o_f32_e64 s19, v46, v46
	v_add3_u32 v46, v46, v57, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v42, v67, v42 :: v_dual_and_b32 v57, 1, v76
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s27, v27, v27
	v_cmp_o_f32_e64 s30, v32, v32
	v_cmp_o_f32_e64 s34, v52, v52
	v_add3_u32 v27, v27, v65, 0x7fff
	v_and_b32_e32 v43, 1, v43
	v_cndmask_b16 v46.l, 0x7fff, v49.h, s21
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s25
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s28
	v_add3_u32 v28, v32, v55, 0x7fff
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v4, v22 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v49, 1, v6
	v_mov_b16_e32 v6.l, v38.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v31, v31, v34
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v32, v52, v56, 0x7fff
	v_add3_u32 v26, v51, v26, 0x7fff
	v_cmp_o_f32_e64 s36, v53, v53
	v_mov_b16_e32 v77.l, v41.h
	v_and_b32_e32 v59, 1, v78
	v_cndmask_b16 v25.l, 0x7fff, v27.h, s27
	v_add3_u32 v27, v50, v43, 0x7fff
	v_add3_u32 v43, v53, v57, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v32.h, s34
	v_and_b32_e32 v32, 1, v6
	v_mov_b16_e32 v6.l, v36.h
	v_mov_b16_e32 v79.l, v37.h
	v_and_b32_e32 v58, 1, v77
	v_cndmask_b16 v27.l, 0x7fff, v43.h, s36
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v4, v4, v74
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v43, 1, v6
	v_and_b32_e32 v60, 1, v79
	v_bfe_u32 v67, v29, 16, 1
	v_bfe_u32 v68, v30, 16, 1
	v_cmp_o_f32_e64 s38, v41, v41
	v_cmp_o_f32_e64 s41, v36, v36
	v_mov_b16_e32 v80.l, v35.h
	v_add3_u32 v41, v41, v58, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v4, v4, v33
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v36, v36, v43, 0x7fff
	v_cmp_o_f32_e64 s39, v38, v38
	v_cmp_o_f32_e64 s40, v39, v39
	v_cmp_o_f32_e64 s42, v37, v37
	v_add3_u32 v39, v39, v59, 0x7fff
	v_add3_u32 v37, v37, v60, 0x7fff
	v_add3_u32 v32, v38, v32, 0x7fff
	v_mov_b16_e32 v6.l, v42.h
	v_cmp_o_f32_e64 s29, v29, v29
	v_add3_u32 v29, v29, v67, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s38
	v_cndmask_b16 v41.h, 0x7fff, v36.h, s41
	v_add3_u32 v36, v30, v68, 0x7fff
	v_cmp_o_f32_e64 s17, v30, v30
	v_and_b32_e32 v30, 1, v80
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s40
	v_cndmask_b16 v39.h, 0x7fff, v32.h, s39
	v_and_b32_e32 v32, 1, v6
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s29
	v_cndmask_b16 v29.h, 0x7fff, v36.h, s17
	v_add3_u32 v30, v35, v30, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v22, v22, v34
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v35, v35
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v33
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v32, v42, v32, 0x7fff
	v_cmp_o_f32_e64 s18, v42, v42
	v_bfe_u32 v33, v31, 16, 1
	v_mov_b16_e32 v34.l, v22.h
	v_mov_b16_e32 v34.h, v6.h
	v_cndmask_b16 v32.l, 0x7fff, v30.h, s17
	v_mov_b16_e32 v6.l, v4.h
	v_bfe_u32 v30, v2, 16, 1
	v_cmp_o_f32_e64 s31, v50, v50
	v_cmp_o_f32_e64 s35, v47, v47
	v_add3_u32 v47, v47, v48, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s18
	v_add3_u32 v33, v31, v33, 0x7fff
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s17, v31, v31
	v_and_b32_e32 v31, 1, v6
	v_add3_u32 v30, v2, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v2, v2
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s30
	v_cndmask_b16 v28.l, 0x7fff, v27.h, s31
	v_cndmask_b16 v27.h, 0x7fff, v47.h, s35
	v_add3_u32 v2, v22, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v4, v4
	v_mov_b32_e32 v34, 0x7632
	v_add3_u32 v31, v4, v31, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v33.h, s17
	v_cmp_eq_u32_e64 s17, 0, v0
	v_cndmask_b16 v4.h, 0x7fff, v30.h, s18
	v_mov_b32_e32 v33, 0x5410
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s19
	v_cmp_o_f32_e64 s33, v51, v51
	v_cndmask_b32_e64 v31, v29, v24, s17
	v_cndmask_b32_e64 v24, v24, v29, s17
	v_cndmask_b32_e64 v29, v4, v25, s17
	v_cndmask_b32_e64 v4, v25, v4, s17
	v_cndmask_b32_e64 v25, v27, v28, s17
	v_cndmask_b32_e64 v27, v28, v27, s17
	v_cndmask_b32_e64 v28, 0x1054, v33, s17
	v_cndmask_b32_e64 v33, 0x3276, v34, s17
	v_cmp_o_f32_e64 s37, v40, v40
	v_cndmask_b16 v46.h, 0x7fff, v54.h, s22
	v_add3_u32 v40, v40, v49, 0x7fff
	v_lshl_or_b32 v28, v28, 8, v28
	v_lshl_or_b32 v33, v33, 8, v33
	v_cndmask_b16 v41.l, 0x7fff, v37.h, s42
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s33
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s37
	v_and_b32_e32 v28, 0x540054, v28
	v_and_b32_e32 v33, 0x760076, v33
	s_mov_b32 s18, 0x76543210
	v_cndmask_b32_e64 v30, v23, v45, s17
	v_cndmask_b32_e64 v23, v45, v23, s17
	v_lshl_or_b32 v28, v28, 4, v28
	v_lshl_or_b32 v33, v33, 4, v33
	v_cndmask_b32_e64 v34, v37, v26, s17
	v_cndmask_b32_e64 v26, v26, v37, s17
	v_cndmask_b32_e64 v35, v32, v39, s17
	v_cndmask_b32_e64 v32, v39, v32, s17
	v_and_b32_e32 v33, 0x7060706, v33
	v_cmp_o_f32_e64 s20, v22, v22
	v_cndmask_b32_e64 v22, v44, v46, s17
	v_and_b32_e32 v28, 0x5040504, v28
	v_add_lshl_u32 v50, v3, v5, 1
	v_permlanex16_b32 v23, v23, s18, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s20
	v_cndmask_b32_e64 v2, v46, v44, s17
	v_permlanex16_b32 v22, v22, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s18, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v36, v0, v41, s17
	v_cndmask_b32_e64 v0, v41, v0, s17
	v_permlanex16_b32 v27, v27, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v22, v2, v28
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v51, v3, v21, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v52, v3, v20, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v22, v2, v33
	v_perm_b32 v22, v23, v30, v28
	v_perm_b32 v23, v23, v30, v33
	v_perm_b32 v30, v24, v31, v28
	v_perm_b32 v24, v24, v31, v33
	v_perm_b32 v31, v4, v29, v28
	v_perm_b32 v4, v4, v29, v33
	v_perm_b32 v29, v27, v25, v28
	v_perm_b32 v25, v27, v25, v33
	v_perm_b32 v27, v26, v34, v28
	v_perm_b32 v26, v26, v34, v33
	v_perm_b32 v34, v32, v35, v28
	v_perm_b32 v32, v32, v35, v33
	v_perm_b32 v28, v0, v36, v28
	v_perm_b32 v0, v0, v36, v33
	v_mov_b16_e32 v33.l, v37.h
	v_mov_b16_e32 v33.h, v6.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v37, v50, s[48:51], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	v_add_lshl_u32 v37, v3, v19, 1
	buffer_store_b16 v33, v51, s[48:51], 0 offen
	v_add_lshl_u32 v33, v3, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v6.l, v2.h
	buffer_store_b16 v2, v50, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v17, 1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v36.l, v22.h
	v_cndmask_b32_e64 v33, 0x80000000, v33, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v36.h, v6.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_mov_b16_e32 v35.h, v6.h
	v_mov_b16_e32 v38.h, v6.h
	v_mov_b16_e32 v39.h, v6.h
	v_mov_b16_e32 v40.h, v6.h
	v_mov_b16_e32 v41.h, v6.h
	v_mov_b16_e32 v42.h, v6.h
	v_mov_b16_e32 v43.h, v6.h
	v_mov_b16_e32 v44.h, v6.h
	v_mov_b16_e32 v45.h, v6.h
	v_mov_b16_e32 v46.h, v6.h
	v_mov_b16_e32 v47.h, v6.h
	v_mov_b16_e32 v48.h, v6.h
	v_mov_b16_e32 v49.h, v6.h
	buffer_store_b16 v6, v37, s[48:51], 0 offen
	v_add_lshl_u32 v6, v3, v16, 1
	buffer_store_b16 v22, v33, s[48:51], 0 offen
	v_add_lshl_u32 v22, v3, v15, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v36, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v14, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v35.l, v23.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v23, v6, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v6, v3, v13, 1
	buffer_store_b16 v35, v22, s[48:51], 0 offen
	v_add_lshl_u32 v22, v3, v12, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v30, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v11, 1
	v_mov_b16_e32 v39.l, v30.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v24.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v39, v6, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v6, v3, v10, 1
	buffer_store_b16 v24, v22, s[48:51], 0 offen
	v_add_lshl_u32 v22, v3, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v38, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v8, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v31.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v7, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v5, v1, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x2
	buffer_store_b16 v31, v6, s[48:51], 0 offen
	buffer_store_b16 v41, v22, s[48:51], 0 offen
	buffer_store_b16 v4, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v21, 1
	v_mov_b16_e32 v40.l, v4.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v43.l, v29.h
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v40, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v20, 1
	buffer_store_b16 v29, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v19, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v43, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v18, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v42.l, v25.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v25, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v17, 1
	buffer_store_b16 v42, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v27, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v15, 1
	v_mov_b16_e32 v45.l, v27.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v44.l, v26.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v45, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v14, 1
	buffer_store_b16 v26, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v44, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v12, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v47.l, v34.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v34, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v11, 1
	buffer_store_b16 v47, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v10, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v32, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v9, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v1, v8, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_lshl_u32 v1, v1, v7, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v46.l, v32.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v49.l, v28.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v46, v3, s[48:51], 0 offen
	buffer_store_b16 v28, v4, s[48:51], 0 offen
	buffer_store_b16 v49, v2, s[48:51], 0 offen
	buffer_store_b16 v0, v5, s[48:51], 0 offen
	buffer_store_b16 v48, v1, s[48:51], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 104
		.amdhsa_next_free_sgpr 55
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 104
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9380
; TotalNumSgprs: 57
; NumVgprs: 104
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 57
; NumVGPRsForWavesPerEU: 104
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     104
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
