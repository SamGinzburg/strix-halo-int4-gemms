	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b32 s67, s[0:1], 0x38
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x20
	s_load_b256 s[44:51], s[0:1], 0x0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v112, 5, v0
	v_and_b32_e32 v108, 0xe0, v0
	v_and_b32_e32 v107, 15, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v65, 31, v0
	v_and_b32_e32 v110, 0x7f, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v2, 16, v112
	v_or_b32_e32 v3, 24, v112
	v_or_b32_e32 v4, 32, v112
	v_or_b32_e32 v5, 40, v112
	v_or_b32_e32 v6, 48, v112
	v_or_b32_e32 v7, 56, v112
	v_lshlrev_b32_e32 v109, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s64, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s65, 0xff
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
	s_ashr_i32 s59, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s58, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s58, s59
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
	s_abs_i32 s6, s58
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s1, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s56, s1, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s1, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s56, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s4, s2, s4
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s69, s56, s64
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s5, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v1, 8, v112
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s0, s8, 0x4f7ffffe
	s_cvt_u32_f32 s0, s0
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s1, s1, s0
	s_mul_hi_u32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s4, s58
	s_mul_hi_u32 s0, s5, s0
	s_ashr_i32 s60, s1, 31
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
	s_ashr_i32 s57, s56, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s61, s0, s60
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[0:1], s[56:57], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, s61, s60
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s5, s58
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s66, s5, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s4, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, s66, v112
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s43, s4, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s0, s52, s0
	s_addc_u32 s1, s53, s1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v9, s66, v1
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s68, s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v10, s66, v2
	v_or_b32_e32 v11, s66, v3
	v_or_b32_e32 v12, s66, v4
	v_or_b32_e32 v13, s66, v5
	v_or_b32_e32 v14, s66, v6
	v_or_b32_e32 v15, s66, v7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s43, v112
	v_or_b32_e32 v1, s43, v1
	v_or_b32_e32 v2, s43, v2
	v_or_b32_e32 v3, s43, v3
	v_or_b32_e32 v4, s43, v4
	v_or_b32_e32 v5, s43, v5
	v_or_b32_e32 v6, s43, v6
	v_or_b32_e32 v7, s43, v7
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s40, s64, v8
	v_cmp_gt_i32_e64 s39, s64, v9
	v_cmp_gt_i32_e64 s38, s64, v10
	v_cmp_gt_i32_e64 s37, s64, v11
	v_cmp_gt_i32_e64 s36, s64, v12
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s1, s68, 31
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s35, s64, v13
	v_cmp_gt_i32_e64 s34, s64, v14
	v_cmp_gt_i32_e64 s33, s64, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v8, 64, v16
	v_or_b32_e32 v9, 0x48, v16
	v_or_b32_e32 v10, 0x50, v16
	v_or_b32_e32 v11, 0x58, v16
	v_or_b32_e32 v12, 0x60, v16
	v_or_b32_e32 v13, 0x68, v16
	v_or_b32_e32 v14, 0x70, v16
	v_or_b32_e32 v15, 0x78, v16
	v_or_b32_e32 v17, 0x80, v16
	v_or_b32_e32 v18, 0x88, v16
	v_or_b32_e32 v19, 0x90, v16
	v_or_b32_e32 v20, 0x98, v16
	v_or_b32_e32 v21, 0xa0, v16
	v_or_b32_e32 v22, 0xa8, v16
	v_or_b32_e32 v23, 0xb0, v16
	v_or_b32_e32 v24, 0xb8, v16
	v_or_b32_e32 v25, 0xc0, v16
	v_or_b32_e32 v26, 0xc8, v16
	v_or_b32_e32 v27, 0xd0, v16
	v_or_b32_e32 v28, 0xd8, v16
	v_or_b32_e32 v29, 0xe0, v16
	v_or_b32_e32 v30, 0xe8, v16
	v_or_b32_e32 v31, 0xf0, v16
	v_or_b32_e32 v32, 0xf8, v16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s30, s65, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_lshr_b32 s52, s1, 26
	v_bfe_i32 v1, v0, 7, 1
	s_add_i32 s52, s68, s52
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s31, s65, v16
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s53, s52, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s29, s65, v2
	v_cmp_gt_i32_e64 s28, s65, v3
	v_cmp_gt_i32_e64 s27, s65, v4
	v_cmp_gt_i32_e64 s26, s65, v5
	v_cmp_gt_i32_e64 s25, s65, v6
	v_cmp_gt_i32_e64 s24, s65, v7
	v_cmp_gt_i32_e64 s23, s65, v8
	v_cmp_gt_i32_e64 s22, s65, v9
	v_cmp_gt_i32_e64 s21, s65, v10
	v_cmp_gt_i32_e64 s20, s65, v11
	v_cmp_gt_i32_e64 s19, s65, v12
	v_cmp_gt_i32_e64 s18, s65, v13
	v_cmp_gt_i32_e64 s17, s65, v14
	v_cmp_gt_i32_e64 s16, s65, v15
	v_cmp_gt_i32_e64 s15, s65, v17
	v_cmp_gt_i32_e64 s14, s65, v18
	v_cmp_gt_i32_e64 s13, s65, v19
	v_cmp_gt_i32_e64 s12, s65, v20
	v_cmp_gt_i32_e64 s11, s65, v21
	v_cmp_gt_i32_e64 s10, s65, v22
	v_cmp_gt_i32_e64 s9, s65, v23
	v_cmp_gt_i32_e64 s8, s65, v24
	v_cmp_gt_i32_e64 s7, s65, v25
	v_cmp_gt_i32_e64 s6, s65, v26
	v_cmp_gt_i32_e64 s5, s65, v27
	v_cmp_gt_i32_e64 s4, s65, v28
	v_cmp_gt_i32_e64 s42, s65, v29
	v_cmp_gt_i32_e64 s0, s65, v30
	v_cmp_gt_i32_e64 s41, s65, v31
	v_cmp_gt_i32_e64 s1, s65, v32
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v111, 0x88, v1
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s52, s3, 5
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s53, 5
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s53, s56, s65
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s52, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_mul_i32 s59, s59, s56
	s_lshl_b32 s2, s2, 8
	s_sub_i32 s62, s60, s59
	v_xor_b32_e32 v2, v111, v110
	s_sub_i32 s62, s62, s61
	s_and_b32 s57, s45, 0xffff
	s_mul_i32 s58, s58, s62
	s_mov_b32 s56, s44
	s_lshl_b32 s58, s58, 8
	v_xor_b32_e32 v3, 0x110, v2
	s_add_i32 s58, s58, s53
	s_mov_b32 s59, 0x31027000
	v_add3_u32 v6, s58, s2, v112
	s_lshl_b32 s2, s61, 6
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 s61, s47, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v10, 56, v6
	v_lshlrev_b32_e32 v1, 1, v0
	v_add_nc_u32_e32 v13, 48, v6
	v_dual_mov_b32 v58, v49 :: v_dual_add_nc_u32 v71, 24, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v50, v49 :: v_dual_and_b32 v1, 24, v1
	v_mov_b32_e32 v52, v49
	v_mad_u64_u32 v[66:67], null, s67, v10, v[65:66]
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v10, 40, v6
	v_lshl_or_b32 v1, v107, 5, v1
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v46, v49
	v_mov_b32_e32 v56, v49
	v_mad_u64_u32 v[67:68], null, s67, v13, v[65:66]
	v_xor_b32_e32 v7, 16, v1
	v_mad_u64_u32 v[68:69], null, s67, v10, v[65:66]
	v_add_nc_u32_e32 v69, 32, v6
	v_xor_b32_e32 v8, 24, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v64, v49 :: v_dual_add_nc_u32 v117, 0, v7
	v_add_nc_u32_e32 v7, 16, v6
	v_mad_u64_u32 v[69:70], null, s67, v69, v[65:66]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v57, v49 :: v_dual_add_nc_u32 v118, 0, v8
	v_dual_mov_b32 v63, v49 :: v_dual_add_nc_u32 v8, 8, v6
	v_mad_u64_u32 v[70:71], null, s67, v71, v[65:66]
	v_mov_b32_e32 v48, v49
	v_mad_u64_u32 v[71:72], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xf8, v6
	v_mov_b32_e32 v41, v49
	v_mad_u64_u32 v[72:73], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0xf0, v6
	v_mov_b32_e32 v34, v49
	v_mad_u64_u32 v[73:74], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xe8, v6
	v_mov_b32_e32 v43, v49
	v_mad_u64_u32 v[74:75], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0xe0, v6
	v_mov_b32_e32 v36, v49
	v_mad_u64_u32 v[75:76], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xd8, v6
	v_mov_b32_e32 v45, v49
	v_mad_u64_u32 v[76:77], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0xd0, v6
	v_mov_b32_e32 v38, v49
	v_mad_u64_u32 v[77:78], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xc8, v6
	v_mov_b32_e32 v47, v49
	v_mad_u64_u32 v[78:79], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0xc0, v6
	v_mov_b32_e32 v40, v49
	v_mad_u64_u32 v[79:80], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xb8, v6
	v_mov_b32_e32 v33, v49
	v_mad_u64_u32 v[80:81], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0xb0, v6
	v_mov_b32_e32 v26, v49
	v_mad_u64_u32 v[81:82], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0xa8, v6
	v_mov_b32_e32 v35, v49
	v_mad_u64_u32 v[82:83], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0xa0, v6
	v_mov_b32_e32 v28, v49
	v_mad_u64_u32 v[83:84], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x98, v6
	v_mov_b32_e32 v37, v49
	v_mad_u64_u32 v[84:85], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0x90, v6
	v_mov_b32_e32 v30, v49
	v_mad_u64_u32 v[85:86], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x88, v6
	v_mov_b32_e32 v39, v49
	v_mad_u64_u32 v[86:87], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0x80, v6
	v_mov_b32_e32 v32, v49
	v_mad_u64_u32 v[87:88], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x78, v6
	v_mov_b32_e32 v25, v49
	v_mad_u64_u32 v[88:89], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0x70, v6
	v_mov_b32_e32 v18, v49
	v_mad_u64_u32 v[89:90], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x68, v6
	v_mov_b32_e32 v27, v49
	v_mad_u64_u32 v[90:91], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0x60, v6
	v_mov_b32_e32 v20, v49
	v_mad_u64_u32 v[91:92], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x58, v6
	v_add3_u32 v13, s69, s2, v112
	s_lshl_b32 s2, s60, 6
	v_mov_b32_e32 v29, v49
	v_mad_u64_u32 v[92:93], null, s67, v8, v[65:66]
	v_add_nc_u32_e32 v8, 0x50, v6
	v_mov_b32_e32 v22, v49
	v_mad_u64_u32 v[93:94], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 0x48, v6
	v_lshl_or_b32 v4, v108, 4, v1
	v_subrev_nc_u32_e32 v106, s2, v13
	v_dual_mov_b32 v24, v49 :: v_dual_add_nc_u32 v97, 64, v6
	v_mad_u64_u32 v[94:95], null, s67, v8, v[65:66]
	v_mad_u64_u32 v[95:96], null, s67, v7, v[65:66]
	v_xor_b32_e32 v12, 24, v4
	v_dual_mov_b32 v10, v49 :: v_dual_add_nc_u32 v7, 56, v106
	v_mad_u64_u32 v[96:97], null, s67, v97, v[65:66]
	v_mov_b32_e32 v31, v49
	v_mad_u64_u32 v[97:98], null, s67, v6, v[65:66]
	v_add_nc_u32_e32 v6, 48, v106
	v_dual_mov_b32 v61, v49 :: v_dual_add_nc_u32 v122, 0, v12
	v_mov_b32_e32 v12, v49
	v_mad_u64_u32 v[98:99], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 40, v106
	v_mov_b32_e32 v17, v49
	v_mad_u64_u32 v[99:100], null, s67, v6, v[65:66]
	v_add_nc_u32_e32 v6, 32, v106
	v_mov_b32_e32 v14, v49
	v_mad_u64_u32 v[100:101], null, s67, v7, v[65:66]
	v_add_nc_u32_e32 v7, 24, v106
	v_mov_b32_e32 v19, v49
	v_mad_u64_u32 v[101:102], null, s67, v6, v[65:66]
	v_dual_mov_b32 v21, v49 :: v_dual_add_nc_u32 v6, 16, v106
	v_add_nc_u32_e32 v8, 8, v106
	v_mad_u64_u32 v[102:103], null, s67, v7, v[65:66]
	v_xor_b32_e32 v5, 8, v1
	v_xor_b32_e32 v9, 8, v4
	v_xor_b32_e32 v11, 16, v4
	v_mad_u64_u32 v[103:104], null, s67, v6, v[65:66]
	v_mad_u64_u32 v[104:105], null, s67, v8, v[65:66]
	v_mad_u64_u32 v[105:106], null, s67, v106, v[65:66]
	v_dual_mov_b32 v60, v49 :: v_dual_add_nc_u32 v113, 0, v2
	v_dual_mov_b32 v53, v49 :: v_dual_add_nc_u32 v114, 0, v3
	v_dual_mov_b32 v62, v49 :: v_dual_add_nc_u32 v115, 0, v1
	v_dual_mov_b32 v55, v49 :: v_dual_add_nc_u32 v116, 0, v5
	v_dual_mov_b32 v42, v49 :: v_dual_add_nc_u32 v119, 0, v4
	v_dual_mov_b32 v59, v49 :: v_dual_add_nc_u32 v120, 0, v9
	v_dual_mov_b32 v44, v49 :: v_dual_add_nc_u32 v121, 0, v11
	v_mov_b32_e32 v23, v49
	v_mov_b32_e32 v9, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v15, v49
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v1, v49
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v7, v49
	v_mov_b32_e32 v8, v49
	s_mov_b32 s60, s46
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 42                       ; ragged.py:1362:42
	v_add_nc_u32_e32 v106, s52, v105
	v_add_nc_u32_e32 v124, s52, v103
	v_add_nc_u32_e32 v126, s52, v101
	v_add_nc_u32_e32 v128, s52, v99
	v_add_nc_u32_e32 v123, s52, v104
	v_add_nc_u32_e32 v125, s52, v102
	v_add_nc_u32_e32 v127, s52, v100
	.loc	1 1362 34 is_stmt 0             ; ragged.py:1362:34
	v_add_nc_u32_e32 v129, s52, v98
	v_add_nc_u32_e32 v155, s52, v79
	v_add_nc_u32_e32 v156, s52, v78
	v_add_nc_u32_e32 v157, s52, v77
	v_add_nc_u32_e32 v158, s52, v76
	v_add_nc_u32_e32 v159, s52, v75
	v_add_nc_u32_e32 v160, s52, v74
	.loc	1 1363 34 is_stmt 1             ; ragged.py:1363:34
	v_add_nc_u32_e32 v161, s52, v73
	.loc	1 1363 42 is_stmt 0             ; ragged.py:1363:42
	v_add_nc_u32_e32 v130, s52, v97
	v_add_nc_u32_e32 v131, s52, v72
	v_add_nc_u32_e32 v132, s52, v71
	v_add_nc_u32_e32 v133, s52, v70
	v_add_nc_u32_e32 v134, s52, v69
	v_add_nc_u32_e32 v135, s52, v68
	v_add_nc_u32_e32 v136, s52, v67
	v_add_nc_u32_e32 v137, s52, v66
	v_add_nc_u32_e32 v138, s52, v96
	v_add_nc_u32_e32 v139, s52, v95
	v_add_nc_u32_e32 v140, s52, v94
	v_add_nc_u32_e32 v141, s52, v93
	v_add_nc_u32_e32 v142, s52, v92
	v_add_nc_u32_e32 v143, s52, v91
	v_add_nc_u32_e32 v144, s52, v90
	v_add_nc_u32_e32 v145, s52, v89
	v_add_nc_u32_e32 v146, s52, v88
	v_add_nc_u32_e32 v147, s52, v87
	v_add_nc_u32_e32 v148, s52, v86
	v_add_nc_u32_e32 v149, s52, v85
	v_add_nc_u32_e32 v150, s52, v84
	v_add_nc_u32_e32 v151, s52, v83
	v_add_nc_u32_e32 v152, s52, v82
	v_add_nc_u32_e32 v153, s52, v81
	v_add_nc_u32_e32 v154, s52, v80
	.loc	1 1362 34 is_stmt 1             ; ragged.py:1362:34
	v_cndmask_b32_e64 v106, 0x80000000, v106, s40
	v_cndmask_b32_e64 v124, 0x80000000, v124, s38
	v_cndmask_b32_e64 v126, 0x80000000, v126, s36
	v_cndmask_b32_e64 v128, 0x80000000, v128, s34
	v_cndmask_b32_e64 v123, 0x80000000, v123, s39
	v_cndmask_b32_e64 v125, 0x80000000, v125, s37
	v_cndmask_b32_e64 v127, 0x80000000, v127, s35
	v_cndmask_b32_e64 v129, 0x80000000, v129, s33
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v155, 0x80000000, v155, s6
	v_cndmask_b32_e64 v156, 0x80000000, v156, s5
	v_cndmask_b32_e64 v157, 0x80000000, v157, s4
	v_cndmask_b32_e64 v158, 0x80000000, v158, s42
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	v_cndmask_b32_e64 v160, 0x80000000, v160, s41
	v_cndmask_b32_e64 v161, 0x80000000, v161, s1
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	v_cndmask_b32_e64 v130, 0x80000000, v130, s31
	v_cndmask_b32_e64 v131, 0x80000000, v131, s30
	v_cndmask_b32_e64 v132, 0x80000000, v132, s29
	v_cndmask_b32_e64 v133, 0x80000000, v133, s28
	v_cndmask_b32_e64 v134, 0x80000000, v134, s27
	v_cndmask_b32_e64 v135, 0x80000000, v135, s26
	v_cndmask_b32_e64 v136, 0x80000000, v136, s25
	v_cndmask_b32_e64 v137, 0x80000000, v137, s24
	v_cndmask_b32_e64 v138, 0x80000000, v138, s23
	v_cndmask_b32_e64 v139, 0x80000000, v139, s22
	v_cndmask_b32_e64 v140, 0x80000000, v140, s21
	v_cndmask_b32_e64 v141, 0x80000000, v141, s20
	v_cndmask_b32_e64 v142, 0x80000000, v142, s19
	v_cndmask_b32_e64 v143, 0x80000000, v143, s18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s17
	v_cndmask_b32_e64 v145, 0x80000000, v145, s16
	v_cndmask_b32_e64 v146, 0x80000000, v146, s15
	v_cndmask_b32_e64 v147, 0x80000000, v147, s14
	v_cndmask_b32_e64 v148, 0x80000000, v148, s13
	v_cndmask_b32_e64 v149, 0x80000000, v149, s12
	v_cndmask_b32_e64 v150, 0x80000000, v150, s11
	v_cndmask_b32_e64 v151, 0x80000000, v151, s10
	v_cndmask_b32_e64 v152, 0x80000000, v152, s9
	v_cndmask_b32_e64 v153, 0x80000000, v153, s8
	v_cndmask_b32_e64 v154, 0x80000000, v154, s7
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_clause 0x7
	buffer_load_u8 v106, v106, s[56:59], 0 offen
	buffer_load_u8 v124, v124, s[56:59], 0 offen
	buffer_load_u8 v126, v126, s[56:59], 0 offen
	buffer_load_u8 v128, v128, s[56:59], 0 offen
	buffer_load_u8 v129, v129, s[56:59], 0 offen
	buffer_load_u8 v127, v127, s[56:59], 0 offen
	buffer_load_u8 v125, v125, s[56:59], 0 offen
	buffer_load_u8 v123, v123, s[56:59], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x1f
	buffer_load_u8 v162, v130, s[60:63], 0 offen
	buffer_load_u8 v163, v132, s[60:63], 0 offen
	buffer_load_u8 v164, v134, s[60:63], 0 offen
	buffer_load_u8 v165, v136, s[60:63], 0 offen
	buffer_load_u8 v166, v138, s[60:63], 0 offen
	buffer_load_u8 v167, v140, s[60:63], 0 offen
	buffer_load_u8 v168, v142, s[60:63], 0 offen
	buffer_load_u8 v169, v144, s[60:63], 0 offen
	buffer_load_u8 v170, v146, s[60:63], 0 offen
	buffer_load_u8 v171, v148, s[60:63], 0 offen
	buffer_load_u8 v172, v150, s[60:63], 0 offen
	buffer_load_u8 v173, v152, s[60:63], 0 offen
	buffer_load_u8 v174, v154, s[60:63], 0 offen
	buffer_load_u8 v156, v156, s[60:63], 0 offen
	buffer_load_u8 v158, v158, s[60:63], 0 offen
	buffer_load_u8 v160, v160, s[60:63], 0 offen
	buffer_load_u8 v175, v137, s[60:63], 0 offen
	buffer_load_u8 v176, v135, s[60:63], 0 offen
	buffer_load_u8 v177, v133, s[60:63], 0 offen
	buffer_load_u8 v178, v131, s[60:63], 0 offen
	buffer_load_u8 v179, v145, s[60:63], 0 offen
	buffer_load_u8 v180, v143, s[60:63], 0 offen
	buffer_load_u8 v181, v141, s[60:63], 0 offen
	buffer_load_u8 v182, v139, s[60:63], 0 offen
	buffer_load_u8 v183, v153, s[60:63], 0 offen
	buffer_load_u8 v184, v151, s[60:63], 0 offen
	buffer_load_u8 v185, v149, s[60:63], 0 offen
	buffer_load_u8 v186, v147, s[60:63], 0 offen
	buffer_load_u8 v161, v161, s[60:63], 0 offen
	buffer_load_u8 v159, v159, s[60:63], 0 offen
	buffer_load_u8 v157, v157, s[60:63], 0 offen
	buffer_load_u8 v155, v155, s[60:63], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s52, s52, 32
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v113, v106
	s_waitcnt vmcnt(38)
	ds_store_b8 v113, v124 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v113, v126 offset:1024
	s_waitcnt vmcnt(36)
	ds_store_b8 v113, v128 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v114, v123
	ds_store_b8 v114, v125 offset:512
	ds_store_b8 v114, v127 offset:1024
	ds_store_b8 v114, v129 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[123:126], v115 offset1:1
	ds_load_2addr_stride64_b64 v[127:130], v115 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[131:134], v116 offset1:1
	ds_load_2addr_stride64_b64 v[135:138], v116 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[139:142], v117 offset1:1
	ds_load_2addr_stride64_b64 v[143:146], v117 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[147:150], v118 offset1:1
	ds_load_2addr_stride64_b64 v[151:154], v118 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v113, v162
	s_waitcnt vmcnt(30)
	ds_store_b8 v113, v163 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v113, v164 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v113, v165 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v113, v166 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v113, v167 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v113, v168 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v113, v169 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v113, v170 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v113, v171 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v113, v172 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v113, v173 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v113, v174 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v113, v156 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v113, v158 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v113, v160 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v114, v178
	ds_store_b8 v114, v177 offset:512
	ds_store_b8 v114, v176 offset:1024
	ds_store_b8 v114, v175 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v114, v182 offset:2048
	ds_store_b8 v114, v181 offset:2560
	ds_store_b8 v114, v180 offset:3072
	ds_store_b8 v114, v179 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v114, v186 offset:4096
	ds_store_b8 v114, v185 offset:4608
	ds_store_b8 v114, v184 offset:5120
	ds_store_b8 v114, v183 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v114, v155 offset:6144
	ds_store_b8 v114, v157 offset:6656
	ds_store_b8 v114, v159 offset:7168
	ds_store_b8 v114, v161 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[155:158], v119 offset1:8
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s52, s3
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[155:156], v[123:124], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[157:158], v[123:124], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[155:156], v[125:126], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[125:126], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[155:156], v[127:128], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[129:130], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[123:126], v120 offset1:8
	ds_load_2addr_stride64_b64 v[127:130], v121 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[123:124], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[125:126], v[131:132], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[123:124], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[133:134], v[33:40] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[131:134], v122 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[123:124], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[123:124], v[137:138], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[137:138], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[127:128], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[129:130], v[139:140], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[143:144], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[145:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[145:146], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[131:132], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[133:134], v[147:148], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[149:150], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[149:150], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[151:152], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[153:154], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[153:154], v[1:8] neg_lo:[1,1,0]
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
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s2, s68, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s3, s2, 31
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s62, s2, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s52, s62
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v66, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s3, s66, s69
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s60, s43, s53
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v109, v66
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr3
                                        ; implicit-def: $sgpr60
                                        ; implicit-def: $vgpr66
.LBB0_8:
	.loc	1 1387 42 is_stmt 1             ; ragged.py:1387:42
	v_mul_lo_u32 v66, s67, v112
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v67, s52, v65
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s2, s68, 0x80000001
	s_mov_b32 s59, 0x31027000
	s_cmp_eq_u32 s2, 1
	s_mov_b32 s58, 0x7ffffffe
	s_cselect_b32 s61, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s3, s66, s69
	v_mad_u64_u32 v[68:69], null, s67, 24, v[66:67]
	v_lshl_add_u32 v74, s67, 3, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e32 vcc_lo, s62, v67
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v75, s67, 4, v66
	v_lshl_add_u32 v76, s67, 5, v66
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_add_i32 s60, s43, s53
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s57, s45, 0xffff
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[69:70], null, s3, s67, v[67:68]
	v_mad_u64_u32 v[70:71], null, s67, 40, v[66:67]
	v_mad_u64_u32 v[71:72], null, s67, 48, v[66:67]
	v_mad_u64_u32 v[72:73], null, s67, 56, v[66:67]
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v73, v69, v66
	v_add_nc_u32_e32 v77, v69, v74
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s40, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v78, v69, v75
	v_add_nc_u32_e32 v79, v69, v68
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s39, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v80, v69, v76
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s38, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v81, v69, v70
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s37, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v82, v69, v71
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s36, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v69, v69, v72
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s35, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_mov_b32 s56, s44
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s34, vcc_lo
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s34, s60, s67
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v83, s52, s34, v65
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s33, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	s_clause 0x7
	buffer_load_u8 v91, v73, s[56:59], 0 offen
	buffer_load_u8 v92, v77, s[56:59], 0 offen
	buffer_load_u8 v93, v78, s[56:59], 0 offen
	buffer_load_u8 v94, v79, s[56:59], 0 offen
	buffer_load_u8 v95, v80, s[56:59], 0 offen
	buffer_load_u8 v96, v81, s[56:59], 0 offen
	buffer_load_u8 v97, v82, s[56:59], 0 offen
	buffer_load_u8 v98, v69, s[56:59], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v65, v83, v66
	v_add_nc_u32_e32 v66, v83, v74
	v_add_nc_u32_e32 v100, v83, v68
	v_add_nc_u32_e32 v102, v83, v70
	v_add_nc_u32_e32 v103, v83, v71
	v_add_nc_u32_e32 v104, v83, v72
	v_mad_u64_u32 v[68:69], null, 0x48, s67, v[65:66]
	v_mad_u64_u32 v[69:70], null, 0x50, s67, v[65:66]
	v_mad_u64_u32 v[70:71], null, 0x58, s67, v[65:66]
	v_mad_u64_u32 v[71:72], null, 0x60, s67, v[65:66]
	v_mad_u64_u32 v[72:73], null, 0x68, s67, v[65:66]
	v_mad_u64_u32 v[73:74], null, 0x70, s67, v[65:66]
	v_add_nc_u32_e32 v99, v83, v75
	v_mad_u64_u32 v[74:75], null, 0x78, s67, v[65:66]
	v_add_nc_u32_e32 v101, v83, v76
	v_mad_u64_u32 v[75:76], null, 0x88, s67, v[65:66]
	v_mad_u64_u32 v[76:77], null, 0x90, s67, v[65:66]
	v_mad_u64_u32 v[77:78], null, 0x98, s67, v[65:66]
	v_mad_u64_u32 v[78:79], null, 0xa0, s67, v[65:66]
	v_mad_u64_u32 v[79:80], null, 0xa8, s67, v[65:66]
	v_mad_u64_u32 v[80:81], null, 0xb0, s67, v[65:66]
	v_mad_u64_u32 v[81:82], null, 0xb8, s67, v[65:66]
	v_mad_u64_u32 v[82:83], null, 0xc0, s67, v[65:66]
	v_mad_u64_u32 v[83:84], null, 0xc8, s67, v[65:66]
	v_mad_u64_u32 v[84:85], null, 0xd0, s67, v[65:66]
	v_mad_u64_u32 v[85:86], null, 0xd8, s67, v[65:66]
	v_mad_u64_u32 v[86:87], null, 0xe0, s67, v[65:66]
	v_mad_u64_u32 v[87:88], null, 0xe8, s67, v[65:66]
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s31, vcc_lo
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[88:89], null, 0xf0, s67, v[65:66]
	v_lshl_add_u32 v105, s67, 6, v65
	v_lshl_add_u32 v106, s67, 7, v65
	v_mad_u64_u32 v[89:90], null, 0xf8, s67, v[65:66]
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s30, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s57, s47, 0xffff
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s29, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_mov_b32 s56, s46
	v_cndmask_b32_e64 v90, 0x80000000, v99, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s28, vcc_lo
	.loc	1 1386 63 is_stmt 1             ; ragged.py:1386:63
	s_add_i32 s62, s62, -1
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v99, 0x80000000, v100, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s27, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v100, 0x80000000, v101, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s26, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v101, 0x80000000, v102, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s25, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v102, 0x80000000, v103, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s24, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v103, 0x80000000, v104, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s23, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v104, v65, s[56:59], 0 offen
	buffer_load_u8 v112, v66, s[56:59], 0 offen
	buffer_load_u8 v90, v90, s[56:59], 0 offen
	buffer_load_u8 v99, v99, s[56:59], 0 offen
	buffer_load_u8 v100, v100, s[56:59], 0 offen
	buffer_load_u8 v101, v101, s[56:59], 0 offen
	buffer_load_u8 v102, v102, s[56:59], 0 offen
	buffer_load_u8 v103, v103, s[56:59], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v105, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s22, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v68, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s21, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v69, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s20, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s19, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v70, 0x80000000, v71, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s18, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v71, 0x80000000, v72, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s17, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v72, 0x80000000, v73, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s16, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v73, 0x80000000, v74, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s15, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v105, v65, s[56:59], 0 offen
	buffer_load_u8 v113, v66, s[56:59], 0 offen
	buffer_load_u8 v114, v68, s[56:59], 0 offen
	buffer_load_u8 v115, v69, s[56:59], 0 offen
	buffer_load_u8 v116, v70, s[56:59], 0 offen
	buffer_load_u8 v117, v71, s[56:59], 0 offen
	buffer_load_u8 v118, v72, s[56:59], 0 offen
	buffer_load_u8 v119, v73, s[56:59], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v106, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s14, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v75, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s13, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v76, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s12, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v69, 0x80000000, v77, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s11, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v70, 0x80000000, v78, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s10, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v71, 0x80000000, v79, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s9, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v72, 0x80000000, v80, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s8, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v73, 0x80000000, v81, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s7, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v106, v65, s[56:59], 0 offen
	buffer_load_u8 v120, v66, s[56:59], 0 offen
	buffer_load_u8 v121, v68, s[56:59], 0 offen
	buffer_load_u8 v122, v69, s[56:59], 0 offen
	buffer_load_u8 v123, v70, s[56:59], 0 offen
	buffer_load_u8 v124, v71, s[56:59], 0 offen
	buffer_load_u8 v125, v72, s[56:59], 0 offen
	buffer_load_u8 v126, v73, s[56:59], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v82, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s6, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v71, 0x80000000, v87, s0
	v_cndmask_b32_e64 v66, 0x80000000, v83, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s0, s41, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v84, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s4, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v72, 0x80000000, v88, s0
	v_cndmask_b32_e64 v69, 0x80000000, v85, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s42, vcc_lo
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v70, 0x80000000, v86, s2
	v_cndmask_b32_e32 v73, 0x80000000, v89, vcc_lo
	s_clause 0x7
	buffer_load_u8 v85, v65, s[56:59], 0 offen
	buffer_load_u8 v86, v66, s[56:59], 0 offen
	buffer_load_u8 v87, v68, s[56:59], 0 offen
	buffer_load_u8 v88, v69, s[56:59], 0 offen
	buffer_load_u8 v89, v70, s[56:59], 0 offen
	buffer_load_u8 v127, v71, s[56:59], 0 offen
	buffer_load_u8 v128, v72, s[56:59], 0 offen
	buffer_load_u8 v129, v73, s[56:59], 0 offen
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_and_b32_e32 v65, 24, v109
	v_xor_b32_e32 v66, v111, v110
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s62, v67
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_or_b32 v65, v107, 5, v65
	v_add_nc_u32_e32 v130, 0, v66
	v_xad_u32 v131, 0x110, v66, 0
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s0, s61, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v132, 0, v65
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshl_or_b32 v133, v108, 4, v65
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xad_u32 v134, v65, 8, 0
	v_xad_u32 v135, v65, 16, 0
	v_xad_u32 v136, v65, 24, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add_nc_u32_e32 v137, 0, v133
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(39)
	v_and_b16 v65.l, v91.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v65.h, v92.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v66.l, v93.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v66.h, v94.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v67.l, v95.l, 15
	s_waitcnt vmcnt(34)
	v_and_b16 v67.h, v96.l, 15
	s_waitcnt vmcnt(33)
	v_and_b16 v68.l, v97.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v68.h, v98.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v65.l, v91.l, v65.l, s0
	v_cndmask_b16 v66.l, v93.l, v66.l, s0
	v_cndmask_b16 v67.l, v95.l, v67.l, s0
	v_cndmask_b16 v68.l, v97.l, v68.l, s0
	v_cndmask_b16 v68.h, v98.l, v68.h, s0
	v_cndmask_b16 v65.h, v92.l, v65.h, s0
	v_cndmask_b16 v66.h, v94.l, v66.h, s0
	v_cndmask_b16 v67.h, v96.l, v67.h, s0
	ds_store_b8 v130, v65
	ds_store_b8 v130, v66 offset:512
	ds_store_b8 v130, v67 offset:1024
	ds_store_b8 v130, v68 offset:1536
	ds_store_b8_d16_hi v131, v65
	ds_store_b8_d16_hi v131, v66 offset:512
	ds_store_b8_d16_hi v131, v67 offset:1024
	ds_store_b8_d16_hi v131, v68 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(31)
	v_and_b16 v69.l, v104.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v69.h, v112.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v70.l, v90.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v70.h, v99.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v71.l, v100.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v71.h, v101.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v72.l, v102.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v72.h, v103.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v97.l, v104.l, v69.l, s0
	v_cndmask_b16 v98.l, v90.l, v70.l, s0
	v_cndmask_b16 v98.h, v99.l, v70.h, s0
	v_cndmask_b16 v99.l, v100.l, v71.l, s0
	v_cndmask_b16 v100.l, v102.l, v72.l, s0
	v_cndmask_b16 v97.h, v112.l, v69.h, s0
	v_cndmask_b16 v99.h, v101.l, v71.h, s0
	v_cndmask_b16 v100.h, v103.l, v72.h, s0
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v73.l, v105.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v74.l, v113.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v74.h, v114.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v75.l, v115.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v75.h, v116.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v76.l, v117.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v76.h, v118.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v77.l, v119.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v101.l, v105.l, v73.l, s0
	v_cndmask_b16 v102.l, v113.l, v74.l, s0
	v_cndmask_b16 v102.h, v114.l, v74.h, s0
	v_cndmask_b16 v103.l, v115.l, v75.l, s0
	v_cndmask_b16 v103.h, v116.l, v75.h, s0
	v_cndmask_b16 v104.l, v117.l, v76.l, s0
	v_cndmask_b16 v104.h, v118.l, v76.h, s0
	v_cndmask_b16 v105.l, v119.l, v77.l, s0
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v73.h, v106.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v77.h, v120.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v78.l, v121.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v78.h, v122.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v79.l, v123.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v79.h, v124.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v80.l, v125.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v80.h, v126.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v101.h, v106.l, v73.h, s0
	v_cndmask_b16 v105.h, v120.l, v77.h, s0
	v_cndmask_b16 v106.l, v121.l, v78.l, s0
	v_cndmask_b16 v106.h, v122.l, v78.h, s0
	v_cndmask_b16 v110.l, v123.l, v79.l, s0
	v_cndmask_b16 v110.h, v124.l, v79.h, s0
	v_cndmask_b16 v111.l, v125.l, v80.l, s0
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v81.l, v85.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v81.h, v86.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v82.l, v87.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v82.h, v88.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v83.l, v89.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v83.h, v127.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v84.l, v128.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v84.h, v129.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v111.h, v126.l, v80.h, s0
	v_cndmask_b16 v112.l, v85.l, v81.l, s0
	v_cndmask_b16 v112.h, v86.l, v81.h, s0
	v_cndmask_b16 v113.l, v87.l, v82.l, s0
	v_cndmask_b16 v113.h, v88.l, v82.h, s0
	v_cndmask_b16 v114.l, v89.l, v83.l, s0
	v_cndmask_b16 v114.h, v127.l, v83.h, s0
	v_cndmask_b16 v115.l, v128.l, v84.l, s0
	v_cndmask_b16 v115.h, v129.l, v84.h, s0
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[65:68], v132 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v132 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[73:76], v134 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v134 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[81:84], v135 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v135 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[89:92], v136 offset1:1
	ds_load_2addr_stride64_b64 v[93:96], v136 offset0:2 offset1:3
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v130, v97
	ds_store_b8 v130, v98 offset:512
	ds_store_b8 v130, v99 offset:1024
	ds_store_b8 v130, v100 offset:1536
	ds_store_b8 v130, v101 offset:2048
	ds_store_b8_d16_hi v130, v102 offset:2560
	ds_store_b8_d16_hi v130, v103 offset:3072
	ds_store_b8_d16_hi v130, v104 offset:3584
	ds_store_b8_d16_hi v130, v101 offset:4096
	ds_store_b8 v130, v106 offset:4608
	ds_store_b8 v130, v110 offset:5120
	ds_store_b8 v130, v111 offset:5632
	ds_store_b8 v130, v112 offset:6144
	ds_store_b8 v130, v113 offset:6656
	ds_store_b8 v130, v114 offset:7168
	ds_store_b8 v130, v115 offset:7680
	ds_store_b8_d16_hi v131, v97
	ds_store_b8_d16_hi v131, v98 offset:512
	ds_store_b8_d16_hi v131, v99 offset:1024
	ds_store_b8_d16_hi v131, v100 offset:1536
	ds_store_b8 v131, v102 offset:2048
	ds_store_b8 v131, v103 offset:2560
	ds_store_b8 v131, v104 offset:3072
	ds_store_b8 v131, v105 offset:3584
	ds_store_b8_d16_hi v131, v105 offset:4096
	ds_store_b8_d16_hi v131, v106 offset:4608
	ds_store_b8_d16_hi v131, v110 offset:5120
	ds_store_b8_d16_hi v131, v111 offset:5632
	ds_store_b8_d16_hi v131, v112 offset:6144
	ds_store_b8_d16_hi v131, v113 offset:6656
	ds_store_b8_d16_hi v131, v114 offset:7168
	ds_store_b8_d16_hi v131, v115 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[97:100], v137 offset1:8
	v_xad_u32 v101, v133, 8, 0
	v_xad_u32 v105, v133, 16, 0
	v_xad_u32 v106, v133, 24, 0
	ds_load_2addr_stride64_b64 v[110:113], v105 offset1:8
	ds_load_2addr_stride64_b64 v[114:117], v106 offset1:8
	ds_load_2addr_stride64_b64 v[101:104], v101 offset1:8
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[97:98], v[65:66], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[99:100], v[65:66], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[97:98], v[67:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[103:104], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[110:111], v[81:82], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[112:113], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[89:90], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[89:90], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[116:117], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[116:117], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[116:117], v[95:96], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s66, v107
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v66, s3, v107, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v69, 16, v65
	v_or_b32_e32 v68, 32, v65
	v_or_b32_e32 v67, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s4, s64, v65
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s64, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v71, 64, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s64, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s4
	v_add_nc_u32_e32 v66, 0x60, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s64, v67
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s1
	v_cndmask_b32_e64 v68, 0x80000000, v71, s0
	s_and_b32 s21, s49, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s48
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v80, v1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x3
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v67, v69, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s43, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v70, s60, v0, 1
	s_and_b32 s21, s51, 0xffff
	s_mov_b32 s20, s50
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v71, 1, v108
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s65, v69
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v81, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s65, v107
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v70, 4, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v0, 0xf0, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v74, v11
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v70, v70, 1, v71
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v75, v12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v11, 28, v109
	v_and_b32_e32 v1, 32, v1
	v_lshl_add_u32 v12, v0, 2, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v94, 2, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s3, s65
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v93, 4, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v76, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s43, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v73, v10
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v10, s2, s43, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v92, 6, v70
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v11, v12, v1, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v107, s43, v94
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v91, 8, v70
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v85, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x86, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v106, s43, v93
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v90, 10, v70
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s65, v13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v86, v7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v71, v0, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x84, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s65, 48, v[10:11]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v105, s43, v92
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v89, 12, v70
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v10, v70, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s65, v107
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v87, v8
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v8, 0x82, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v104, s43, v91
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v88, 14, v70
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s43, v6
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v13, v10, v94, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s65, v106
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v103, s43, v90
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s4, s8
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, s43, v7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v10, v93, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s65, v105
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v102, s43, v89
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s18
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v99, s43, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v109, v10, v92, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s65, v104
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v101, s43, v88
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s65, v97
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v13, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s17
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v100, s43, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v110, v10, v91, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s65, v103
	v_cmp_gt_i32_e64 s9, s65, v98
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v98, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v10, v90, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s65, v102
	v_cmp_gt_i32_e64 s10, s65, v99
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v99, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s15
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x88, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v10, v89, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s65, v101
	v_cmp_gt_i32_e64 s11, s65, v100
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v100, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s14
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v83, v4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x8a, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v113, v10, v88, 2
	v_cndmask_b32_e64 v101, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v82, v3
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v2, 0x8e, v70
	v_or_b32_e32 v3, 0x8c, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v10, v9, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v79, v16
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s43, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v102, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v115, v10, v8, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v78, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s43, v4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v116, v10, v7, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v77, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s43, v2
	v_or_b32_e32 v14, s43, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v117, v10, v6, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s65, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v118, v10, v5, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s65, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v119, v10, v4, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s65, v12
	v_cmp_gt_i32_e64 s3, s65, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v107, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s6
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v95, s65, 4, v10
	v_lshl_add_u32 v96, s65, 5, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v120, v10, v3, 2
	v_add_lshl_u32 v10, v10, v2, 2
	v_cndmask_b32_e64 v108, 0x80000000, v118, s19
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s4, s5
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s3
	s_and_b32 s4, s4, s2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
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
	v_add_lshl_u32 v121, v95, v70, 2
	s_and_b32 s21, s55, 0xffff
	s_mov_b32 s20, s54
	v_add_lshl_u32 v122, v95, v94, 2
	v_cndmask_b32_e64 v110, 0x80000000, v120, s19
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v65
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v65, 0x80000000, v10, s4
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v67
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v43, v43, v10
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v55, v55, v12 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v49, v49, v12
	v_mul_f32_e32 v50, v50, v12
	v_mul_f32_e32 v51, v51, v12
	v_mul_f32_e32 v52, v52, v12
	v_mul_f32_e32 v53, v53, v12
	v_dual_mul_f32 v42, v42, v10 :: v_dual_lshlrev_b32 v13, 16, v68
	v_mul_f32_e32 v54, v54, v12
	v_dual_mul_f32 v56, v56, v12 :: v_dual_mul_f32 v45, v45, v10
	v_mul_f32_e32 v57, v57, v12
	v_dual_mul_f32 v58, v58, v12 :: v_dual_mul_f32 v47, v47, v10
	v_dual_mul_f32 v59, v59, v12 :: v_dual_mul_f32 v44, v44, v10
	v_dual_mul_f32 v60, v60, v12 :: v_dual_mul_f32 v33, v33, v10
	v_dual_mul_f32 v61, v61, v12 :: v_dual_mul_f32 v46, v46, v10
	v_dual_mul_f32 v62, v62, v12 :: v_dual_mul_f32 v35, v35, v10
	v_dual_mul_f32 v63, v63, v12 :: v_dual_mul_f32 v48, v48, v10
	v_dual_mul_f32 v64, v64, v12 :: v_dual_mul_f32 v37, v37, v10
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v10 :: v_dual_lshlrev_b32 v12, 16, v69
	v_dual_mul_f32 v34, v34, v10 :: v_dual_mul_f32 v67, v25, v13
	v_dual_mul_f32 v36, v36, v10 :: v_dual_mul_f32 v27, v27, v13
	v_dual_mul_f32 v38, v38, v10 :: v_dual_mul_f32 v29, v29, v13
	v_dual_mul_f32 v39, v39, v10 :: v_dual_mul_f32 v26, v26, v13
	v_dual_mul_f32 v40, v40, v10 :: v_dual_mul_f32 v31, v31, v13
	v_dual_mul_f32 v28, v28, v13 :: v_dual_mul_f32 v73, v73, v66
	v_dual_mul_f32 v30, v30, v13 :: v_dual_mul_f32 v75, v75, v66
	v_dual_mul_f32 v32, v32, v13 :: v_dual_mul_f32 v77, v77, v66
	v_dual_mul_f32 v68, v17, v13 :: v_dual_mul_f32 v79, v79, v66
	v_dual_mul_f32 v69, v18, v13 :: v_dual_mul_f32 v72, v72, v66
	v_dual_mul_f32 v111, v19, v13 :: v_dual_mul_f32 v74, v74, v66
	v_mul_f32_e32 v112, v20, v13
	v_dual_mul_f32 v113, v21, v13 :: v_dual_mul_f32 v76, v76, v66
	v_mul_f32_e32 v114, v22, v13
	v_dual_mul_f32 v115, v23, v13 :: v_dual_mul_f32 v78, v78, v66
	v_mul_f32_e32 v116, v24, v13
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v71
	ds_load_b128 v[14:17], v71 offset:16
	ds_load_b128 v[18:21], v71 offset:512
	ds_load_b128 v[22:25], v71 offset:528
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v80, v80, v66
	v_mul_f32_e32 v71, v81, v66
	v_mul_f32_e32 v81, v82, v66
	v_mul_f32_e32 v82, v83, v66
	v_mul_f32_e32 v83, v84, v66
	v_mul_f32_e32 v84, v85, v66
	v_mul_f32_e32 v85, v86, v66
	v_mul_f32_e32 v66, v87, v66
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v49, v49, v10 :: v_dual_mul_f32 v50, v50, v11
	v_dual_mul_f32 v51, v51, v12 :: v_dual_mul_f32 v52, v52, v13
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v53, v53, v14 :: v_dual_mul_f32 v54, v54, v15
	v_dual_mul_f32 v55, v55, v16 :: v_dual_mul_f32 v56, v56, v17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v57, v57, v18 :: v_dual_mul_f32 v58, v58, v19
	v_dual_mul_f32 v59, v59, v20 :: v_dual_mul_f32 v60, v60, v21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v61, v61, v22 :: v_dual_mul_f32 v62, v62, v23
	v_mul_f32_e32 v63, v63, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0xe
	buffer_store_b32 v49, v1, s[20:23], 0 offen
	buffer_store_b32 v50, v97, s[20:23], 0 offen
	buffer_store_b32 v51, v98, s[20:23], 0 offen
	buffer_store_b32 v52, v99, s[20:23], 0 offen
	buffer_store_b32 v53, v100, s[20:23], 0 offen
	buffer_store_b32 v54, v101, s[20:23], 0 offen
	buffer_store_b32 v55, v102, s[20:23], 0 offen
	buffer_store_b32 v56, v103, s[20:23], 0 offen
	buffer_store_b32 v57, v104, s[20:23], 0 offen
	buffer_store_b32 v58, v105, s[20:23], 0 offen
	buffer_store_b32 v59, v106, s[20:23], 0 offen
	buffer_store_b32 v60, v107, s[20:23], 0 offen
	buffer_store_b32 v61, v108, s[20:23], 0 offen
	buffer_store_b32 v62, v109, s[20:23], 0 offen
	buffer_store_b32 v63, v110, s[20:23], 0 offen
	v_add_lshl_u32 v1, v95, v93, 2
	v_cndmask_b32_e64 v49, 0x80000000, v121, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v64, v64, v25 :: v_dual_mul_f32 v41, v41, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v50, 0x80000000, v122, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v42, v42, v11 :: v_dual_mul_f32 v43, v43, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_clause 0x1
	buffer_store_b32 v64, v65, s[20:23], 0 offen
	buffer_store_b32 v41, v49, s[20:23], 0 offen
	v_add_lshl_u32 v41, v95, v92, 2
	s_clause 0x1
	buffer_store_b32 v42, v50, s[20:23], 0 offen
	buffer_store_b32 v43, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v95, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v42, v95, v90, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s15
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v44, v44, v13 :: v_dual_mul_f32 v45, v45, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v89, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v46, v46, v15 :: v_dual_mul_f32 v47, v47, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v44, v41, s[20:23], 0 offen
	buffer_store_b32 v45, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	v_add_lshl_u32 v1, v95, v88, 2
	v_add_lshl_u32 v41, v95, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v46, v42, s[20:23], 0 offen
	buffer_store_b32 v47, v43, s[20:23], 0 offen
	v_add_lshl_u32 v42, v95, v8, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v48, v48, v17 :: v_dual_mul_f32 v33, v33, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v7, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v34, v34, v19 :: v_dual_mul_f32 v35, v35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v48, v1, s[20:23], 0 offen
	buffer_store_b32 v33, v41, s[20:23], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	v_add_lshl_u32 v1, v95, v6, 2
	v_add_lshl_u32 v33, v95, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v34, v42, s[20:23], 0 offen
	buffer_store_b32 v35, v43, s[20:23], 0 offen
	v_add_lshl_u32 v34, v95, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v36, v36, v21 :: v_dual_mul_f32 v37, v37, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v95, v3, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v38, v38, v23 :: v_dual_mul_f32 v39, v39, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v36, v1, s[20:23], 0 offen
	buffer_store_b32 v37, v33, s[20:23], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	v_add_lshl_u32 v1, v95, v2, 2
	v_add_lshl_u32 v33, v96, v70, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s1, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v38, v34, s[20:23], 0 offen
	buffer_store_b32 v39, v35, s[20:23], 0 offen
	v_add_lshl_u32 v34, v96, v94, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v96, v93, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v40, v40, v25 :: v_dual_mul_f32 v67, v67, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v26, v26, v11 :: v_dual_mul_f32 v27, v27, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	s_clause 0x1
	buffer_store_b32 v40, v1, s[20:23], 0 offen
	buffer_store_b32 v67, v33, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v92, 2
	s_clause 0x1
	buffer_store_b32 v26, v34, s[20:23], 0 offen
	buffer_store_b32 v27, v35, s[20:23], 0 offen
	v_add_lshl_u32 v26, v96, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v13 :: v_dual_mul_f32 v29, v29, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v90, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v33, v96, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v28, v1, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v88, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v30, v15 :: v_dual_mul_f32 v31, v31, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v9, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v32, v32, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v68, v68, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[20:23], 0 offen
	buffer_store_b32 v31, v33, s[20:23], 0 offen
	v_add_lshl_u32 v27, v96, v8, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v28, v96, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v86, v111, v20 :: v_dual_mul_f32 v11, v73, v11
	v_mul_f32_e32 v111, v113, v22
	v_mul_f32_e32 v113, v115, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v32, v1, s[20:23], 0 offen
	buffer_store_b32 v68, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v6, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v69, v69, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v5, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v87, v112, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v69, v27, s[20:23], 0 offen
	buffer_store_b32 v86, v28, s[20:23], 0 offen
	v_add_lshl_u32 v27, v96, v4, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v28, v96, v3, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v87, v1, s[20:23], 0 offen
	buffer_store_b32 v111, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v2, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s3
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v112, v114, v23 :: v_dual_mul_f32 v13, v75, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v0, v70, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v114, v116, v25 :: v_dual_mul_f32 v15, v77, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v72, v10 :: v_dual_mul_f32 v17, v79, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v112, v27, s[20:23], 0 offen
	buffer_store_b32 v113, v28, s[20:23], 0 offen
	v_add_lshl_u32 v27, v0, v94, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_add_lshl_u32 v28, v0, v93, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v114, v1, s[20:23], 0 offen
	buffer_store_b32 v10, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v92, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v10, v0, v91, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v74, v12 :: v_dual_mul_f32 v19, v71, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v14, v76, v14 :: v_dual_mul_f32 v21, v82, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v11, v27, s[20:23], 0 offen
	buffer_store_b32 v12, v28, s[20:23], 0 offen
	v_add_lshl_u32 v11, v0, v90, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_add_lshl_u32 v12, v0, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v13, v1, s[20:23], 0 offen
	buffer_store_b32 v14, v10, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v88, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v9, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v16, v78, v16 :: v_dual_mul_f32 v23, v84, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v18, v80, v18 :: v_dual_mul_f32 v25, v66, v25
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_add_lshl_u32 v7, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v15, v11, s[20:23], 0 offen
	buffer_store_b32 v16, v12, s[20:23], 0 offen
	buffer_store_b32 v17, v1, s[20:23], 0 offen
	buffer_store_b32 v18, v9, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v0, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v0, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v0, v3, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_add_lshl_u32 v0, v0, v2, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v20, v81, v20
	v_mul_f32_e32 v22, v83, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v24, v85, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 187
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 187
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11040
; TotalNumSgprs: 72
; NumVgprs: 187
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 187
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     187
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
