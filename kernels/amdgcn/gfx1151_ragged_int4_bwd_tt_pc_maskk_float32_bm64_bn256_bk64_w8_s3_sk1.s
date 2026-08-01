	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[40:43], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	s_clause 0x1
	s_load_b256 s[44:51], s[0:1], 0x0
	s_load_b32 s61, s[0:1], 0x38
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 63, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v2, 5, v0
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v77, 15, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v79, 0xe0, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshrrev_b32_e32 v90, 6, v0
	v_and_b32_e32 v88, 31, v0
	v_and_b32_e32 v84, 0x88, v3
	v_or_b32_e32 v85, 0x3f0, v0
	v_or_b32_e32 v86, 0x7f0, v0
	v_and_b32_e32 v83, 0x7f, v0
	v_lshlrev_b32_e32 v78, 1, v0
	v_or_b32_e32 v92, 12, v90
	v_or_b32_e32 v91, 28, v90
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s56, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s57, 0xff
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
	v_mul_lo_u32 v89, s61, v2
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	v_add_nc_u32_e32 v82, 0, v77
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	v_lshlrev_b32_e32 v80, 5, v77
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_lshlrev_b32_e32 v81, 4, v79
	v_add_nc_u32_e32 v87, 0, v0
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
	s_xor_b32 s1, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s58, s1, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s1, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s58, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s63, s58, s57
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s4, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s0, v1
	s_mul_f32 s0, s0, 0x4f7ffffe
	s_cvt_u32_f32 s0, s0
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s1, s1, s0
	s_mul_hi_u32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s2, s5
	s_mul_hi_u32 s0, s4, s0
	s_ashr_i32 s1, s1, 31
	s_mul_i32 s6, s0, s7
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
	s_ashr_i32 s59, s58, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s0, s1
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[0:1], s[58:59], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s60, s4, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s60, v69
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s59, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s0, s40, s0
	s_addc_u32 s1, s41, s1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s59, v2
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s34, s[0:1], 0x0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s33, s56, v1
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s62, s3, 5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, 8, v2
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 24, v2
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 40, v2
	v_or_b32_e32 v7, 48, v2
	v_or_b32_e32 v9, 56, v2
	v_or_b32_e32 v10, 64, v2
	v_or_b32_e32 v11, 0x48, v2
	v_or_b32_e32 v12, 0x50, v2
	v_or_b32_e32 v13, 0x58, v2
	v_or_b32_e32 v14, 0x60, v2
	v_or_b32_e32 v15, 0x68, v2
	v_or_b32_e32 v16, 0x70, v2
	v_or_b32_e32 v17, 0x78, v2
	v_or_b32_e32 v18, 0x80, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s34, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, 0x88, v2
	v_or_b32_e32 v20, 0x90, v2
	v_or_b32_e32 v21, 0x98, v2
	v_or_b32_e32 v22, 0xa0, v2
	v_or_b32_e32 v23, 0xa8, v2
	v_or_b32_e32 v24, 0xb0, v2
	v_or_b32_e32 v25, 0xb8, v2
	v_or_b32_e32 v26, 0xc0, v2
	v_or_b32_e32 v27, 0xc8, v2
	v_or_b32_e32 v28, 0xd0, v2
	v_or_b32_e32 v29, 0xd8, v2
	v_or_b32_e32 v30, 0xe0, v2
	v_or_b32_e32 v31, 0xe8, v2
	v_or_b32_e32 v32, 0xf0, v2
	v_or_b32_e32 v33, 0xf8, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_lshr_b32 s0, s0, 26
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s31, s57, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_add_i32 s0, s34, s0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s30, s57, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s35, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s29, s57, v3
	v_cmp_gt_i32_e64 s28, s57, v4
	v_cmp_gt_i32_e64 s27, s57, v5
	v_cmp_gt_i32_e64 s26, s57, v6
	v_cmp_gt_i32_e64 s25, s57, v7
	v_cmp_gt_i32_e64 s24, s57, v9
	v_cmp_gt_i32_e64 s23, s57, v10
	v_cmp_gt_i32_e64 s22, s57, v11
	v_cmp_gt_i32_e64 s21, s57, v12
	v_cmp_gt_i32_e64 s20, s57, v13
	v_cmp_gt_i32_e64 s19, s57, v14
	v_cmp_gt_i32_e64 s18, s57, v15
	v_cmp_gt_i32_e64 s17, s57, v16
	v_cmp_gt_i32_e64 s16, s57, v17
	v_cmp_gt_i32_e64 s15, s57, v18
	v_cmp_gt_i32_e64 s14, s57, v19
	v_cmp_gt_i32_e64 s13, s57, v20
	v_cmp_gt_i32_e64 s12, s57, v21
	v_cmp_gt_i32_e64 s11, s57, v22
	v_cmp_gt_i32_e64 s10, s57, v23
	v_cmp_gt_i32_e64 s9, s57, v24
	v_cmp_gt_i32_e64 s8, s57, v25
	v_cmp_gt_i32_e64 s7, s57, v26
	v_cmp_gt_i32_e64 s6, s57, v27
	v_cmp_gt_i32_e64 s5, s57, v28
	v_cmp_gt_i32_e64 s4, s57, v29
	v_cmp_gt_i32_e64 s3, s57, v30
	v_cmp_gt_i32_e64 s2, s57, v31
	v_cmp_gt_i32_e64 s1, s57, v32
	v_cmp_gt_i32_e64 s0, s57, v33
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s40, s35, 5
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s35, s58, s61
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s62, s40
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_or_b32_e32 v3, 0x300, v0
	v_mov_b32_e32 v49, 0
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_mad_u64_u32 v[70:71], null, s56, v90, v[69:70]
	v_xor_b32_e32 v2, v84, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v94, 0, v3
	v_dual_mov_b32 v50, v49 :: v_dual_lshlrev_b32 v1, 1, v0
	v_or_b32_e32 v4, 0x700, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v5, 0x110, v2
	v_dual_mov_b32 v52, v49 :: v_dual_and_b32 v1, 24, v1
	v_mad_u64_u32 v[71:72], null, s56, v92, v[69:70]
	s_add_i32 s52, s59, s63
	v_mad_u64_u32 v[72:73], null, s56, v91, v[69:70]
	v_or3_b32 v1, v80, v1, v81
	s_mul_i32 s52, s52, s61
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v95, 0, v4
	v_add3_u32 v93, v88, v89, s52
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v6, 8, v1
	v_xor_b32_e32 v7, 16, v1
	v_xor_b32_e32 v8, 24, v1
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v96, 0, v85
	v_dual_mov_b32 v56, v49 :: v_dual_add_nc_u32 v97, 0, v86
	v_dual_mov_b32 v53, v49 :: v_dual_add_nc_u32 v98, 0, v2
	v_dual_mov_b32 v58, v49 :: v_dual_add_nc_u32 v99, 0, v5
	v_dual_mov_b32 v55, v49 :: v_dual_add_nc_u32 v100, 0, v1
	v_dual_mov_b32 v60, v49 :: v_dual_add_nc_u32 v101, 0, v6
	v_dual_mov_b32 v57, v49 :: v_dual_add_nc_u32 v102, 0, v7
	v_dual_mov_b32 v62, v49 :: v_dual_add_nc_u32 v103, 0, v8
	v_mov_b32_e32 v59, v49
	v_mov_b32_e32 v61, v49
	v_mov_b32_e32 v63, v49
	v_mov_b32_e32 v64, v49
	v_mov_b32_e32 v41, v49
	v_mov_b32_e32 v42, v49
	v_mov_b32_e32 v43, v49
	v_mov_b32_e32 v44, v49
	v_mov_b32_e32 v45, v49
	v_mov_b32_e32 v46, v49
	v_mov_b32_e32 v47, v49
	v_mov_b32_e32 v48, v49
	v_mov_b32_e32 v33, v49
	v_mov_b32_e32 v34, v49
	v_mov_b32_e32 v35, v49
	v_mov_b32_e32 v36, v49
	v_mov_b32_e32 v37, v49
	v_mov_b32_e32 v38, v49
	v_mov_b32_e32 v39, v49
	v_mov_b32_e32 v40, v49
	v_mov_b32_e32 v25, v49
	v_mov_b32_e32 v26, v49
	v_mov_b32_e32 v27, v49
	v_mov_b32_e32 v28, v49
	v_mov_b32_e32 v29, v49
	v_mov_b32_e32 v30, v49
	v_mov_b32_e32 v31, v49
	v_mov_b32_e32 v32, v49
	v_mov_b32_e32 v17, v49
	v_mov_b32_e32 v18, v49
	v_mov_b32_e32 v19, v49
	v_mov_b32_e32 v20, v49
	v_mov_b32_e32 v21, v49
	v_mov_b32_e32 v22, v49
	v_mov_b32_e32 v23, v49
	v_mov_b32_e32 v24, v49
	v_mov_b32_e32 v9, v49
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v14, v49
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
	s_lshl_b32 s41, s56, 2
	s_lshl_b32 s64, s56, 3
	s_lshl_b32 s65, s56, 4
	s_mul_i32 s66, s56, 20
	s_mul_i32 s67, s56, 24
	s_and_b32 s37, s45, 0xffff
	s_mov_b32 s36, s44
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_lshl_b32 s68, s61, 3
	s_lshl_b32 s69, s61, 4
	s_mul_i32 s70, s61, 24
	s_lshl_b32 s71, s61, 5
	s_mul_i32 s72, s61, 40
	s_mul_i32 s73, s61, 48
	s_mul_i32 s74, s61, 56
	s_lshl_b32 s75, s61, 6
	s_mul_i32 s76, s61, 0x48
	s_mul_i32 s77, s61, 0x50
	s_mul_i32 s78, s61, 0x58
	s_mul_i32 s79, s61, 0x60
	s_mul_i32 s80, s61, 0x68
	s_mul_i32 s81, s61, 0x70
	s_mul_i32 s82, s61, 0x78
	s_lshl_b32 s83, s61, 7
	s_mul_i32 s84, s61, 0x88
	s_mul_i32 s85, s61, 0x90
	s_mul_i32 s86, s61, 0x98
	s_mul_i32 s87, s61, 0xa0
	s_mul_i32 s88, s61, 0xa8
	s_mul_i32 s89, s61, 0xb0
	s_mul_i32 s90, s61, 0xb8
	s_mul_i32 s91, s61, 0xc0
	s_mul_i32 s92, s61, 0xc8
	s_mul_i32 s93, s61, 0xd0
	s_mul_i32 s94, s61, 0xd8
	s_mul_i32 s95, s61, 0xe0
	s_mul_i32 s96, s61, 0xe8
	s_mul_i32 s97, s61, 0xf0
	s_mul_i32 s98, s61, 0xf8
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 23                          ; ragged.py:0:23
	v_add_nc_u32_e32 v65, s62, v93
	.loc	1 1362 42 is_stmt 1             ; ragged.py:1362:42
	s_add_i32 s99, s62, s35
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_mov_b32 s54, s38
	.loc	1 1362 42                       ; ragged.py:1362:42
	s_mul_i32 s99, s99, s56
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_mov_b32 s55, s39
	v_add_nc_u32_e32 v105, s75, v65
	.loc	1 1362 42                       ; ragged.py:1362:42
	s_add_i32 s99, s99, s60
	v_add_nc_u32_e32 v66, s68, v65
	v_add_nc_u32_e32 v67, s69, v65
	v_add_nc_u32_e32 v68, s70, v65
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v128, 0x80000000, v105, s23
	v_add_nc_u32_e32 v105, s99, v70
	v_add_nc_u32_e32 v73, s71, v65
	v_add_nc_u32_e32 v74, s72, v65
	v_add_nc_u32_e32 v75, s73, v65
	v_add_nc_u32_e32 v76, s74, v65
	v_add_nc_u32_e32 v142, s41, v105
	v_add_nc_u32_e32 v143, s64, v105
	v_add_nc_u32_e32 v144, s65, v105
	v_add_nc_u32_e32 v145, s66, v105
	v_add_nc_u32_e32 v146, s67, v105
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v147, 0x80000000, v105, s33
	v_add_nc_u32_e32 v105, s99, v71
	v_add_nc_u32_e32 v106, s76, v65
	v_add_nc_u32_e32 v107, s77, v65
	v_add_nc_u32_e32 v108, s78, v65
	v_add_nc_u32_e32 v109, s79, v65
	v_add_nc_u32_e32 v110, s80, v65
	v_add_nc_u32_e32 v111, s81, v65
	v_add_nc_u32_e32 v112, s82, v65
	v_add_nc_u32_e32 v113, s83, v65
	v_add_nc_u32_e32 v114, s84, v65
	v_add_nc_u32_e32 v115, s85, v65
	v_add_nc_u32_e32 v116, s86, v65
	v_add_nc_u32_e32 v117, s87, v65
	v_add_nc_u32_e32 v118, s88, v65
	v_add_nc_u32_e32 v119, s89, v65
	v_add_nc_u32_e32 v120, s90, v65
	v_add_nc_u32_e32 v121, s91, v65
	v_add_nc_u32_e32 v122, s92, v65
	v_add_nc_u32_e32 v123, s93, v65
	v_add_nc_u32_e32 v124, s94, v65
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v104, 0x80000000, v65, s31
	v_add_nc_u32_e32 v125, s95, v65
	v_add_nc_u32_e32 v126, s96, v65
	v_add_nc_u32_e32 v127, s97, v65
	v_add_nc_u32_e32 v65, s98, v65
	v_cndmask_b32_e64 v66, 0x80000000, v66, s30
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v148, 0x80000000, v105, s33
	v_add_nc_u32_e32 v105, s99, v72
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s29
	v_cndmask_b32_e64 v68, 0x80000000, v68, s28
	v_cndmask_b32_e64 v73, 0x80000000, v73, s27
	v_cndmask_b32_e64 v74, 0x80000000, v74, s26
	v_cndmask_b32_e64 v129, 0x80000000, v106, s22
	v_cndmask_b32_e64 v130, 0x80000000, v107, s21
	v_cndmask_b32_e64 v131, 0x80000000, v108, s20
	v_cndmask_b32_e64 v132, 0x80000000, v109, s19
	v_cndmask_b32_e64 v133, 0x80000000, v110, s18
	v_cndmask_b32_e64 v134, 0x80000000, v111, s17
	v_cndmask_b32_e64 v112, 0x80000000, v112, s16
	v_cndmask_b32_e64 v113, 0x80000000, v113, s15
	v_cndmask_b32_e64 v114, 0x80000000, v114, s14
	v_cndmask_b32_e64 v115, 0x80000000, v115, s13
	v_cndmask_b32_e64 v116, 0x80000000, v116, s12
	v_cndmask_b32_e64 v117, 0x80000000, v117, s11
	v_cndmask_b32_e64 v118, 0x80000000, v118, s10
	v_cndmask_b32_e64 v119, 0x80000000, v119, s9
	v_cndmask_b32_e64 v120, 0x80000000, v120, s8
	v_cndmask_b32_e64 v135, 0x80000000, v121, s7
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v75, 0x80000000, v75, s25
	v_cndmask_b32_e64 v76, 0x80000000, v76, s24
	v_cndmask_b32_e64 v136, 0x80000000, v122, s6
	v_cndmask_b32_e64 v137, 0x80000000, v123, s5
	v_cndmask_b32_e64 v138, 0x80000000, v124, s4
	v_cndmask_b32_e64 v139, 0x80000000, v125, s3
	v_cndmask_b32_e64 v140, 0x80000000, v126, s2
	v_cndmask_b32_e64 v141, 0x80000000, v127, s1
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v149, 0x80000000, v105, s33
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x1e
	buffer_load_u8 v105, v66, s[52:55], 0 offen
	buffer_load_u8 v121, v67, s[52:55], 0 offen
	buffer_load_u8 v106, v68, s[52:55], 0 offen
	buffer_load_u8 v122, v73, s[52:55], 0 offen
	buffer_load_u8 v107, v74, s[52:55], 0 offen
	buffer_load_u8 v123, v75, s[52:55], 0 offen
	buffer_load_u8 v108, v76, s[52:55], 0 offen
	buffer_load_u8 v124, v128, s[52:55], 0 offen
	buffer_load_u8 v109, v129, s[52:55], 0 offen
	buffer_load_u8 v125, v130, s[52:55], 0 offen
	buffer_load_u8 v110, v131, s[52:55], 0 offen
	buffer_load_u8 v126, v132, s[52:55], 0 offen
	buffer_load_u8 v111, v133, s[52:55], 0 offen
	buffer_load_u8 v127, v134, s[52:55], 0 offen
	buffer_load_u8 v112, v112, s[52:55], 0 offen
	buffer_load_u8 v128, v113, s[52:55], 0 offen
	buffer_load_u8 v113, v114, s[52:55], 0 offen
	buffer_load_u8 v129, v115, s[52:55], 0 offen
	buffer_load_u8 v114, v116, s[52:55], 0 offen
	buffer_load_u8 v130, v117, s[52:55], 0 offen
	buffer_load_u8 v115, v118, s[52:55], 0 offen
	buffer_load_u8 v131, v119, s[52:55], 0 offen
	buffer_load_u8 v116, v120, s[52:55], 0 offen
	buffer_load_u8 v132, v135, s[52:55], 0 offen
	buffer_load_u8 v117, v136, s[52:55], 0 offen
	buffer_load_u8 v133, v137, s[52:55], 0 offen
	buffer_load_u8 v118, v138, s[52:55], 0 offen
	buffer_load_u8 v134, v139, s[52:55], 0 offen
	buffer_load_u8 v119, v140, s[52:55], 0 offen
	buffer_load_u8 v135, v141, s[52:55], 0 offen
	buffer_load_u8 v120, v65, s[52:55], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v65, 0x80000000, v142, s33
	v_cndmask_b32_e64 v66, 0x80000000, v143, s33
	v_cndmask_b32_e64 v67, 0x80000000, v144, s33
	v_cndmask_b32_e64 v68, 0x80000000, v145, s33
	v_cndmask_b32_e64 v73, 0x80000000, v146, s33
	s_clause 0x7
	buffer_load_u8 v74, v147, s[36:39], 0 offen
	buffer_load_u8 v75, v148, s[36:39], 0 offen
	buffer_load_u8 v65, v65, s[36:39], 0 offen
	buffer_load_u8 v66, v66, s[36:39], 0 offen
	buffer_load_u8 v67, v67, s[36:39], 0 offen
	buffer_load_u8 v68, v68, s[36:39], 0 offen
	buffer_load_u8 v73, v73, s[36:39], 0 offen
	buffer_load_u8 v76, v149, s[36:39], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	buffer_load_u8 v104, v104, s[52:55], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s62, s62, 32
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v94, v75
	ds_store_b8 v87, v74
	s_waitcnt vmcnt(6)
	ds_store_b8 v87, v65 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v87, v66 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v87, v67 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v87, v68 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v87, v73 offset:1536
	s_waitcnt vmcnt(1)
	ds_store_b8 v95, v76
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1364 31                       ; ragged.py:1364:31
	ds_load_u8 v65, v82 offset:320
	ds_load_u8 v66, v82 offset:256
	ds_load_u8 v67, v82 offset:336
	ds_load_u8 v68, v82 offset:272
	ds_load_u8 v73, v82 offset:288
	ds_load_u8 v75, v82 offset:304
	ds_load_u8 v76, v82 offset:240
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s62, s40
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:448
	ds_load_u8 v74, v82 offset:384
	ds_load_u8 v137, v82 offset:464
	ds_load_u8 v138, v82 offset:400
	ds_load_u8 v141, v82 offset:416
	ds_load_u8 v142, v82 offset:432
	ds_load_u8 v143, v82 offset:368
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v66, v74, v66, 0xc0c0004
	ds_load_u8 v74, v82 offset:64
	ds_load_u8 v139, v82
	ds_load_u8 v140, v82 offset:80
	ds_load_u8 v144, v82 offset:16
	ds_load_u8 v145, v82 offset:32
	ds_load_u8 v146, v82 offset:48
	ds_load_u8 v136, v97
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v68, v138, v137, 0xc0c0004
	v_lshl_or_b32 v66, v66, 16, v65
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v75, v75, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v74, v139, v74, 0xc0c0004
	ds_load_u8 v139, v82 offset:192
	ds_load_u8 v147, v82 offset:128
	ds_load_u8 v148, v82 offset:208
	ds_load_u8 v149, v82 offset:144
	ds_load_u8 v150, v82 offset:160
	ds_load_u8 v151, v82 offset:176
	ds_load_u8 v152, v82 offset:112
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v139, v147, v139, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v137, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v143, v151, v76, 0xc0c0004
	v_lshl_or_b32 v65, v139, 16, v74
	v_perm_b32 v74, v144, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v137, 16, v74
	ds_load_u8 v74, v82 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v74, 0xc0c0004
	ds_load_u8 v74, v82 offset:480
	ds_load_u8 v139, v82 offset:592
	ds_load_u8 v140, v82 offset:528
	ds_load_u8 v138, v82 offset:544
	ds_load_u8 v137, v82 offset:560
	ds_load_u8 v144, v82 offset:496
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v74, v141, v74, 0xc0c0004
	ds_load_u8 v141, v82 offset:96
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v145, v141, 0xc0c0004
	ds_load_u8 v145, v82 offset:224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v150, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v145, 16, v141
	v_perm_b32 v141, v142, v144, 0xc0c0004
	v_perm_b32 v142, v146, v152, 0xc0c0004
	v_lshl_or_b32 v76, v141, 16, v75
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v75, v143, 16, v142
	ds_load_u8 v141, v82 offset:576
	ds_load_u8 v142, v82 offset:512
	ds_load_u8 v143, v96
	ds_load_u8 v144, v82 offset:1088
	ds_load_u8 v145, v82 offset:1024
	ds_load_u8 v146, v82 offset:1104
	ds_load_u8 v147, v82 offset:1040
	ds_load_u8 v148, v82 offset:1120
	ds_load_u8 v149, v82 offset:1056
	ds_load_u8 v150, v82 offset:1072
	ds_load_u8 v151, v82 offset:992
	ds_load_u8 v152, v82 offset:960
	ds_load_u8 v153, v82 offset:896
	ds_load_u8 v154, v82 offset:976
	ds_load_u8 v155, v82 offset:912
	ds_load_u8 v156, v82 offset:928
	ds_load_u8 v157, v82 offset:864
	ds_load_u8 v158, v82 offset:944
	ds_load_u8 v159, v82 offset:880
	ds_load_u8 v160, v82 offset:832
	ds_load_u8 v161, v82 offset:768
	ds_load_u8 v162, v82 offset:848
	ds_load_u8 v163, v82 offset:784
	ds_load_u8 v164, v82 offset:736
	ds_load_u8 v165, v82 offset:800
	ds_load_u8 v166, v82 offset:816
	ds_load_u8 v167, v82 offset:752
	ds_load_u8 v168, v82 offset:704
	ds_load_u8 v169, v82 offset:640
	ds_load_u8 v170, v82 offset:720
	ds_load_u8 v171, v82 offset:656
	ds_load_u8 v172, v82 offset:672
	ds_load_u8 v173, v82 offset:608
	ds_load_u8 v174, v82 offset:688
	ds_load_u8 v175, v82 offset:624
	ds_load_u8 v176, v82 offset:1344
	ds_load_u8 v177, v82 offset:1280
	ds_load_u8 v178, v82 offset:1360
	ds_load_u8 v179, v82 offset:1296
	ds_load_u8 v180, v82 offset:1376
	ds_load_u8 v181, v82 offset:1312
	ds_load_u8 v182, v82 offset:1328
	ds_load_u8 v183, v82 offset:1264
	ds_load_u8 v184, v82 offset:1216
	ds_load_u8 v185, v82 offset:1152
	ds_load_u8 v186, v82 offset:1232
	ds_load_u8 v187, v82 offset:1168
	ds_load_u8 v188, v82 offset:1248
	ds_load_u8 v189, v82 offset:1184
	ds_load_u8 v190, v82 offset:1200
	ds_load_u8 v191, v82 offset:1136
	ds_load_u8 v192, v82 offset:1600
	ds_load_u8 v193, v82 offset:1536
	ds_load_u8 v194, v82 offset:1616
	ds_load_u8 v195, v82 offset:1552
	ds_load_u8 v196, v82 offset:1632
	ds_load_u8 v197, v82 offset:1568
	ds_load_u8 v198, v82 offset:1584
	ds_load_u8 v199, v82 offset:1520
	ds_load_u8 v200, v82 offset:1472
	ds_load_u8 v201, v82 offset:1408
	ds_load_u8 v202, v82 offset:1488
	ds_load_u8 v203, v82 offset:1424
	ds_load_u8 v204, v82 offset:1504
	ds_load_u8 v205, v82 offset:1440
	ds_load_u8 v206, v82 offset:1456
	ds_load_u8 v207, v82 offset:1392
	ds_load_u8 v208, v82 offset:1984
	ds_load_u8 v209, v82 offset:1920
	ds_load_u8 v210, v82 offset:2000
	ds_load_u8 v211, v82 offset:1936
	ds_load_u8 v212, v82 offset:2016
	ds_load_u8 v213, v82 offset:1952
	ds_load_u8 v214, v82 offset:1968
	ds_load_u8 v215, v82 offset:1904
	ds_load_u8 v216, v82 offset:1856
	ds_load_u8 v217, v82 offset:1792
	ds_load_u8 v218, v82 offset:1872
	ds_load_u8 v219, v82 offset:1808
	ds_load_u8 v220, v82 offset:1888
	ds_load_u8 v221, v82 offset:1824
	ds_load_u8 v222, v82 offset:1840
	ds_load_u8 v223, v82 offset:1776
	ds_load_u8 v224, v82 offset:1728
	ds_load_u8 v225, v82 offset:1664
	ds_load_u8 v226, v82 offset:1744
	ds_load_u8 v227, v82 offset:1680
	ds_load_u8 v228, v82 offset:1760
	ds_load_u8 v229, v82 offset:1696
	ds_load_u8 v230, v82 offset:1712
	ds_load_u8 v231, v82 offset:1648
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b8 v98, v104
	ds_store_b8 v98, v121 offset:512
	ds_store_b8 v98, v122 offset:1024
	ds_store_b8 v98, v123 offset:1536
	ds_store_b8 v98, v124 offset:2048
	ds_store_b8 v98, v125 offset:2560
	ds_store_b8 v98, v126 offset:3072
	ds_store_b8 v98, v127 offset:3584
	ds_store_b8 v98, v128 offset:4096
	ds_store_b8 v98, v129 offset:4608
	ds_store_b8 v98, v130 offset:5120
	ds_store_b8 v98, v131 offset:5632
	ds_store_b8 v98, v132 offset:6144
	ds_store_b8 v98, v133 offset:6656
	ds_store_b8 v98, v134 offset:7168
	ds_store_b8 v98, v135 offset:7680
	ds_store_b8 v99, v105
	ds_store_b8 v99, v106 offset:512
	ds_store_b8 v99, v107 offset:1024
	ds_store_b8 v99, v108 offset:1536
	ds_store_b8 v99, v109 offset:2048
	ds_store_b8 v99, v110 offset:2560
	ds_store_b8 v99, v111 offset:3072
	ds_store_b8 v99, v112 offset:3584
	ds_store_b8 v99, v113 offset:4096
	ds_store_b8 v99, v114 offset:4608
	ds_store_b8 v99, v115 offset:5120
	ds_store_b8 v99, v116 offset:5632
	ds_store_b8 v99, v117 offset:6144
	ds_store_b8 v99, v118 offset:6656
	ds_store_b8 v99, v119 offset:7168
	ds_store_b8 v99, v120 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[104:107], v100 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[104:105], v[65:66], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[106:107], v[65:66], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[104:105], v[67:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v65, v161, v160, 0xc0c0004
	v_perm_b32 v66, v153, v152, 0xc0c0004
	v_perm_b32 v67, v142, v141, 0xc0c0004
	v_perm_b32 v68, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v66, 16, v65
	v_perm_b32 v65, v163, v162, 0xc0c0004
	v_lshl_or_b32 v73, v68, 16, v67
	v_perm_b32 v66, v155, v154, 0xc0c0004
	v_perm_b32 v67, v140, v139, 0xc0c0004
	v_perm_b32 v68, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v66, 16, v65
	v_perm_b32 v65, v165, v157, 0xc0c0004
	v_lshl_or_b32 v75, v68, 16, v67
	v_perm_b32 v66, v156, v151, 0xc0c0004
	v_perm_b32 v67, v138, v173, 0xc0c0004
	v_perm_b32 v68, v172, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v105, v66, 16, v65
	v_perm_b32 v65, v137, v175, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v66, v174, v167, 0xc0c0004
	v_perm_b32 v67, v166, v159, 0xc0c0004
	v_perm_b32 v68, v158, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v106, v66, 16, v65
	v_lshl_or_b32 v107, v68, 16, v67
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[65:68], v101 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v65, v177, v176, 0xc0c0004
	v_perm_b32 v66, v201, v200, 0xc0c0004
	v_perm_b32 v67, v145, v144, 0xc0c0004
	v_perm_b32 v68, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v74, v66, 16, v65
	v_perm_b32 v65, v179, v178, 0xc0c0004
	v_lshl_or_b32 v73, v68, 16, v67
	v_perm_b32 v66, v203, v202, 0xc0c0004
	v_perm_b32 v67, v147, v146, 0xc0c0004
	v_perm_b32 v68, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v76, v66, 16, v65
	v_perm_b32 v65, v181, v180, 0xc0c0004
	v_lshl_or_b32 v75, v68, 16, v67
	v_perm_b32 v66, v205, v204, 0xc0c0004
	v_perm_b32 v67, v149, v148, 0xc0c0004
	v_perm_b32 v68, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v105, v66, 16, v65
	v_perm_b32 v65, v182, v207, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v66, v206, v199, 0xc0c0004
	v_perm_b32 v67, v150, v191, 0xc0c0004
	v_perm_b32 v68, v190, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v107, v66, 16, v65
	v_lshl_or_b32 v106, v68, 16, v67
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[65:68], v102 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v65, v217, v216, 0xc0c0004
	v_perm_b32 v66, v209, v208, 0xc0c0004
	v_perm_b32 v67, v193, v192, 0xc0c0004
	v_perm_b32 v68, v225, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v105, v66, 16, v65
	v_perm_b32 v65, v219, v218, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v66, v211, v210, 0xc0c0004
	v_perm_b32 v67, v195, v194, 0xc0c0004
	v_perm_b32 v68, v227, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v107, v66, 16, v65
	v_perm_b32 v65, v221, v220, 0xc0c0004
	v_lshl_or_b32 v106, v68, 16, v67
	v_perm_b32 v66, v213, v212, 0xc0c0004
	v_perm_b32 v67, v197, v196, 0xc0c0004
	v_perm_b32 v68, v229, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v74, v66, 16, v65
	v_perm_b32 v65, v198, v231, 0xc0c0004
	v_lshl_or_b32 v73, v68, 16, v67
	v_perm_b32 v66, v230, v223, 0xc0c0004
	v_perm_b32 v67, v222, v215, 0xc0c0004
	v_perm_b32 v68, v214, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v75, v66, 16, v65
	v_lshl_or_b32 v76, v68, 16, v67
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[65:68], v103 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[104:105], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[106:107], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[75:76], v[1:8] neg_lo:[1,1,0]
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
	s_add_i32 s36, s34, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s37, s36, 31
	s_add_i32 s36, s36, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s64, s36, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s62, s64
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s36, s59, s63
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v78, v65
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr36
                                        ; implicit-def: $vgpr65
.LBB0_8:
	.loc	1 1386 33 is_stmt 1             ; ragged.py:1386:33
	s_and_b32 s34, s34, 0x80000001
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v105, s62, v90
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s34, 1
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v107, s62, v92
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s65, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s34, s62, s35
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v108, 4, v105
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s34, s34, s56
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v109, 8, v105
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v65, s34, s60, v69
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s34, s64, v105
	v_cmp_gt_i32_e64 s35, s64, v108
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v110, 16, v105
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s36, s64, v109
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[66:67], null, s56, v90, v[65:66]
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s34, s33, s34
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v111, 20, v105
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s37, s64, v107
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v112, 24, v105
	v_or_b32_e32 v113, s62, v91
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s38, s64, v110
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[67:68], null, s56, v92, v[65:66]
	v_lshl_add_u32 v72, s56, 2, v66
	v_lshl_add_u32 v73, s56, 3, v66
	v_lshl_add_u32 v74, s56, 4, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s39, s64, v111
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v106, s62, v88
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s40, s64, v112
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[68:69], null, s56, 20, v[66:67]
	v_mad_u64_u32 v[69:70], null, s56, 24, v[66:67]
	v_mad_u64_u32 v[70:71], null, s56, v91, v[65:66]
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s34
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s34, s33, s35
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s41, s64, v113
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v71, 0x80000000, v72, s34
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s34, s33, s36
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s36, s59, s63
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v72, 0x80000000, v73, s34
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s35, s36, s61
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s34, s33, s37
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_add_i32 s62, s62, s35
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s34
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s34, s33, s38
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v65, s62, v88, v89
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v73, 0x80000000, v74, s34
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s34, s33, s39
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s53, s45, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_mov_b32 s52, s44
	v_cndmask_b32_e64 v68, 0x80000000, v68, s34
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s34, s33, s40
	s_and_b32 s33, s33, s41
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s33
	s_clause 0x7
	buffer_load_u8 v114, v66, s[52:55], 0 offen
	buffer_load_u8 v115, v71, s[52:55], 0 offen
	buffer_load_u8 v116, v72, s[52:55], 0 offen
	buffer_load_u8 v117, v67, s[52:55], 0 offen
	buffer_load_u8 v118, v73, s[52:55], 0 offen
	buffer_load_u8 v119, v68, s[52:55], 0 offen
	buffer_load_u8 v120, v69, s[52:55], 0 offen
	buffer_load_u8 v121, v70, s[52:55], 0 offen
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_mad_u64_u32 v[66:67], null, s61, 24, v[65:66]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e32 vcc_lo, s64, v106
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_lshl_add_u32 v122, s61, 3, v65
	v_lshl_add_u32 v123, s61, 4, v65
	v_lshl_add_u32 v124, s61, 5, v65
	v_lshl_add_u32 v125, s61, 6, v65
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s31, s31, vcc_lo
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mad_u64_u32 v[88:89], null, 0x78, s61, v[65:66]
	v_mad_u64_u32 v[89:90], null, 0x88, s61, v[65:66]
	v_mad_u64_u32 v[90:91], null, 0x90, s61, v[65:66]
	v_mad_u64_u32 v[91:92], null, 0x98, s61, v[65:66]
	v_mad_u64_u32 v[92:93], null, 0xa0, s61, v[65:66]
	v_mad_u64_u32 v[93:94], null, 0xa8, s61, v[65:66]
	v_mad_u64_u32 v[67:68], null, s61, 40, v[65:66]
	v_mad_u64_u32 v[94:95], null, 0xb0, s61, v[65:66]
	v_mad_u64_u32 v[68:69], null, s61, 48, v[65:66]
	v_mad_u64_u32 v[95:96], null, 0xb8, s61, v[65:66]
	v_mad_u64_u32 v[69:70], null, s61, 56, v[65:66]
	v_mad_u64_u32 v[96:97], null, 0xc0, s61, v[65:66]
	v_mad_u64_u32 v[70:71], null, 0x48, s61, v[65:66]
	v_mad_u64_u32 v[97:98], null, 0xc8, s61, v[65:66]
	v_mad_u64_u32 v[71:72], null, 0x50, s61, v[65:66]
	v_mad_u64_u32 v[98:99], null, 0xd0, s61, v[65:66]
	v_mad_u64_u32 v[72:73], null, 0x58, s61, v[65:66]
	v_mad_u64_u32 v[99:100], null, 0xd8, s61, v[65:66]
	v_mad_u64_u32 v[73:74], null, 0x60, s61, v[65:66]
	v_mad_u64_u32 v[100:101], null, 0xe0, s61, v[65:66]
	v_mad_u64_u32 v[74:75], null, 0x68, s61, v[65:66]
	v_mad_u64_u32 v[101:102], null, 0xe8, s61, v[65:66]
	v_mad_u64_u32 v[75:76], null, 0x70, s61, v[65:66]
	v_mad_u64_u32 v[102:103], null, 0xf0, s61, v[65:66]
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s30, s30, vcc_lo
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_lshl_add_u32 v76, s61, 7, v65
	v_mad_u64_u32 v[103:104], null, 0xf8, s61, v[65:66]
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s31
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s29, s29, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v104, 0x80000000, v122, s30
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s28, s28, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v122, 0x80000000, v123, s29
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s27, s27, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	v_cndmask_b32_e64 v66, 0x80000000, v66, s28
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s26, s26, vcc_lo
	s_and_b32 s25, s25, vcc_lo
	s_and_b32 s24, s24, vcc_lo
	s_and_b32 s23, s23, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v123, 0x80000000, v124, s27
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s22, s22, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s26
	v_cndmask_b32_e64 v68, 0x80000000, v68, s25
	v_cndmask_b32_e64 v69, 0x80000000, v69, s24
	s_clause 0x7
	buffer_load_u8 v124, v65, s[52:55], 0 offen
	buffer_load_u8 v104, v104, s[52:55], 0 offen
	buffer_load_u8 v122, v122, s[52:55], 0 offen
	buffer_load_u8 v126, v66, s[52:55], 0 offen
	buffer_load_u8 v123, v123, s[52:55], 0 offen
	buffer_load_u8 v127, v67, s[52:55], 0 offen
	buffer_load_u8 v128, v68, s[52:55], 0 offen
	buffer_load_u8 v129, v69, s[52:55], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v125, s23
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s21, s21, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v70, s22
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s20, s20, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v67, 0x80000000, v71, s21
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s19, s19, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v72, s20
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s18, s18, vcc_lo
	s_and_b32 s17, s17, vcc_lo
	s_and_b32 s16, s16, vcc_lo
	s_and_b32 s15, s15, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v69, 0x80000000, v73, s19
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s14, s14, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v70, 0x80000000, v74, s18
	v_cndmask_b32_e64 v71, 0x80000000, v75, s17
	v_cndmask_b32_e64 v72, 0x80000000, v88, s16
	s_clause 0x7
	buffer_load_u8 v125, v65, s[52:55], 0 offen
	buffer_load_u8 v130, v66, s[52:55], 0 offen
	buffer_load_u8 v131, v67, s[52:55], 0 offen
	buffer_load_u8 v132, v68, s[52:55], 0 offen
	buffer_load_u8 v133, v69, s[52:55], 0 offen
	buffer_load_u8 v134, v70, s[52:55], 0 offen
	buffer_load_u8 v135, v71, s[52:55], 0 offen
	buffer_load_u8 v136, v72, s[52:55], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v76, s15
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s13, s13, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v89, s14
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s12, s12, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v67, 0x80000000, v90, s13
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s11, s11, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v91, s12
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s10, s10, vcc_lo
	s_and_b32 s9, s9, vcc_lo
	s_and_b32 s8, s8, vcc_lo
	s_and_b32 s7, s7, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v69, 0x80000000, v92, s11
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s6, s6, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v70, 0x80000000, v93, s10
	v_cndmask_b32_e64 v71, 0x80000000, v94, s9
	v_cndmask_b32_e64 v72, 0x80000000, v95, s8
	s_clause 0x7
	buffer_load_u8 v94, v65, s[52:55], 0 offen
	buffer_load_u8 v95, v66, s[52:55], 0 offen
	buffer_load_u8 v137, v67, s[52:55], 0 offen
	buffer_load_u8 v138, v68, s[52:55], 0 offen
	buffer_load_u8 v139, v69, s[52:55], 0 offen
	buffer_load_u8 v140, v70, s[52:55], 0 offen
	buffer_load_u8 v141, v71, s[52:55], 0 offen
	buffer_load_u8 v142, v72, s[52:55], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v96, s7
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v97, s6
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s4, s4, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v67, 0x80000000, v98, s5
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s3, s3, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v99, s4
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s2, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v69, 0x80000000, v100, s3
	v_cndmask_b32_e64 v70, 0x80000000, v101, s2
	v_cndmask_b32_e64 v71, 0x80000000, v102, s1
	v_dual_cndmask_b32 v72, 0x80000000, v103 :: v_dual_add_nc_u32 v143, 0, v85
	s_clause 0x7
	buffer_load_u8 v96, v65, s[52:55], 0 offen
	buffer_load_u8 v97, v66, s[52:55], 0 offen
	buffer_load_u8 v98, v67, s[52:55], 0 offen
	buffer_load_u8 v99, v68, s[52:55], 0 offen
	buffer_load_u8 v100, v69, s[52:55], 0 offen
	buffer_load_u8 v101, v70, s[52:55], 0 offen
	buffer_load_u8 v102, v71, s[52:55], 0 offen
	buffer_load_u8 v103, v72, s[52:55], 0 offen
	.loc	1 1386 63 is_stmt 1             ; ragged.py:1386:63
	s_add_i32 s64, s64, -1
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v144, 0, v86
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s64, v105
	v_cmp_eq_u32_e64 s3, s64, v108
	v_cmp_eq_u32_e64 s4, s64, v109
	v_cmp_eq_u32_e64 s0, s64, v107
	v_cmp_eq_u32_e64 s1, s64, v113
	v_cmp_eq_u32_e64 s5, s64, v110
	v_cmp_eq_u32_e64 s7, s64, v112
	v_cmp_eq_u32_e64 s6, s64, v111
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s8, s65, vcc_lo
	s_and_b32 s3, s65, s3
	s_and_b32 s4, s65, s4
	s_and_b32 s0, s65, s0
	s_and_b32 s1, s65, s1
	s_and_b32 s5, s65, s5
	s_and_b32 s7, s65, s7
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s2, s64, v106
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s6, s65, s6
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s2, s65, s2
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(39)
	v_and_b16 v65.l, v114.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v65.h, v115.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v66.l, v116.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v66.h, v117.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v67.l, v118.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v65.l, v114.l, v65.l, s8
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(33)
	v_and_b16 v68.l, v120.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v68.h, v121.l, 15
	v_and_b16 v67.h, v119.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v65.h, v115.l, v65.h, s3
	v_cndmask_b16 v66.l, v116.l, v66.l, s4
	v_cndmask_b16 v66.h, v117.l, v66.h, s0
	v_cndmask_b16 v67.l, v118.l, v67.l, s5
	v_cndmask_b16 v68.l, v120.l, v68.l, s7
	v_cndmask_b16 v68.h, v121.l, v68.h, s1
	v_cndmask_b16 v67.h, v119.l, v67.h, s6
	ds_store_b8 v87, v65
	ds_store_b8_d16_hi v87, v65 offset:256
	ds_store_b8 v87, v66 offset:512
	ds_store_b8_d16_hi v87, v66 offset:768
	ds_store_b8 v87, v67 offset:1024
	ds_store_b8_d16_hi v87, v67 offset:1280
	ds_store_b8 v87, v68 offset:1536
	ds_store_b8_d16_hi v87, v68 offset:1792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_xor_b32_e32 v66, v84, v83
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v83, v82 offset:64
	ds_load_u8 v206, v82 offset:80
	ds_load_u8 v84, v82
	ds_load_u8 v207, v82 offset:16
	ds_load_u8 v208, v82 offset:32
	ds_load_u8 v209, v82 offset:48
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_and_b32_e32 v68, 24, v78
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v210, v82 offset:1984
	ds_load_u8 v211, v82 offset:1920
	ds_load_u8 v212, v82 offset:2000
	ds_load_u8 v213, v82 offset:1936
	ds_load_u8 v214, v82 offset:2016
	ds_load_u8 v215, v82 offset:1952
	ds_load_u8 v216, v82 offset:1968
	ds_load_u8 v217, v82 offset:1904
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add_nc_u32_e32 v67, 0, v66
	v_xad_u32 v66, 0x110, v66, 0
	v_or3_b32 v218, v80, v68, v81
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v84, v84, v83, 0xc0c0004
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(31)
	v_and_b16 v69.l, v124.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v69.h, v104.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v70.l, v122.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v70.h, v126.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v71.l, v123.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v71.h, v127.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v72.l, v128.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v72.h, v129.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v69.l, v124.l, v69.l, s2
	v_cndmask_b16 v70.l, v122.l, v70.l, s2
	v_cndmask_b16 v71.l, v123.l, v71.l, s2
	v_cndmask_b16 v72.l, v128.l, v72.l, s2
	v_cndmask_b16 v69.h, v104.l, v69.h, s2
	v_cndmask_b16 v70.h, v126.l, v70.h, s2
	v_cndmask_b16 v71.h, v127.l, v71.h, s2
	v_cndmask_b16 v72.h, v129.l, v72.h, s2
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v73.l, v125.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v73.h, v130.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v74.l, v131.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v74.h, v132.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v75.l, v133.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v75.h, v134.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v76.l, v135.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v76.h, v136.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v73.l, v125.l, v73.l, s2
	v_cndmask_b16 v73.h, v130.l, v73.h, s2
	v_cndmask_b16 v74.l, v131.l, v74.l, s2
	v_cndmask_b16 v74.h, v132.l, v74.h, s2
	v_cndmask_b16 v75.l, v133.l, v75.l, s2
	v_cndmask_b16 v75.h, v134.l, v75.h, s2
	v_cndmask_b16 v76.l, v135.l, v76.l, s2
	v_cndmask_b16 v76.h, v136.l, v76.h, s2
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v85.l, v94.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v85.h, v95.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v86.l, v137.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v86.h, v138.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v88.l, v139.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v88.h, v140.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v89.l, v141.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v89.h, v142.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v85.l, v94.l, v85.l, s2
	v_cndmask_b16 v86.l, v137.l, v86.l, s2
	v_cndmask_b16 v88.l, v139.l, v88.l, s2
	v_cndmask_b16 v89.l, v141.l, v89.l, s2
	v_cndmask_b16 v85.h, v95.l, v85.h, s2
	v_cndmask_b16 v86.h, v138.l, v86.h, s2
	v_cndmask_b16 v88.h, v140.l, v88.h, s2
	v_cndmask_b16 v89.h, v142.l, v89.h, s2
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v90.l, v96.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v90.h, v97.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v91.l, v98.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v91.h, v99.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v92.l, v100.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v92.h, v101.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v93.l, v102.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v93.h, v103.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v90.l, v96.l, v90.l, s2
	v_cndmask_b16 v90.h, v97.l, v90.h, s2
	v_cndmask_b16 v91.l, v98.l, v91.l, s2
	v_cndmask_b16 v91.h, v99.l, v91.h, s2
	v_cndmask_b16 v92.l, v100.l, v92.l, s2
	v_cndmask_b16 v92.h, v101.l, v92.h, s2
	v_cndmask_b16 v93.l, v102.l, v93.l, s2
	v_cndmask_b16 v93.h, v103.l, v93.h, s2
	.loc	1 1391 31 is_stmt 1             ; ragged.py:1391:31
	ds_load_u8 v87, v82 offset:1088
	ds_load_u8 v94, v82 offset:1024
	ds_load_u8 v95, v82 offset:1104
	ds_load_u8 v96, v82 offset:1040
	ds_load_u8 v97, v82 offset:1120
	ds_load_u8 v98, v82 offset:1056
	ds_load_u8 v65, v82 offset:1072
	ds_load_u8 v99, v82 offset:992
	ds_load_u8 v100, v82 offset:320
	ds_load_u8 v101, v82 offset:256
	ds_load_u8 v102, v82 offset:336
	ds_load_u8 v103, v82 offset:272
	ds_load_u8 v104, v82 offset:224
	ds_load_u8 v105, v82 offset:288
	ds_load_u8 v106, v82 offset:304
	ds_load_u8 v107, v82 offset:240
	ds_load_u8 v108, v82 offset:192
	ds_load_u8 v109, v82 offset:128
	ds_load_u8 v110, v82 offset:208
	ds_load_u8 v111, v82 offset:144
	ds_load_u8 v112, v82 offset:160
	ds_load_u8 v113, v82 offset:96
	ds_load_u8 v114, v82 offset:176
	ds_load_u8 v115, v82 offset:112
	ds_load_u8 v116, v82 offset:576
	ds_load_u8 v117, v82 offset:512
	ds_load_u8 v118, v82 offset:592
	ds_load_u8 v119, v82 offset:528
	ds_load_u8 v120, v82 offset:480
	ds_load_u8 v121, v82 offset:544
	ds_load_u8 v122, v82 offset:560
	ds_load_u8 v123, v82 offset:496
	ds_load_u8 v124, v82 offset:448
	ds_load_u8 v125, v82 offset:384
	ds_load_u8 v126, v82 offset:464
	ds_load_u8 v127, v82 offset:400
	ds_load_u8 v128, v82 offset:416
	ds_load_u8 v129, v82 offset:352
	ds_load_u8 v130, v82 offset:432
	ds_load_u8 v131, v82 offset:368
	ds_load_u8 v132, v82 offset:832
	ds_load_u8 v133, v82 offset:768
	ds_load_u8 v134, v82 offset:848
	ds_load_u8 v135, v82 offset:784
	ds_load_u8 v136, v82 offset:736
	ds_load_u8 v137, v82 offset:800
	ds_load_u8 v138, v82 offset:816
	ds_load_u8 v139, v82 offset:752
	ds_load_u8 v140, v82 offset:704
	ds_load_u8 v141, v82 offset:640
	ds_load_u8 v142, v82 offset:720
	ds_load_u8 v145, v82 offset:656
	ds_load_u8 v146, v82 offset:672
	ds_load_u8 v147, v82 offset:608
	ds_load_u8 v148, v82 offset:688
	ds_load_u8 v149, v82 offset:624
	ds_load_u8 v150, v82 offset:960
	ds_load_u8 v151, v82 offset:896
	ds_load_u8 v152, v82 offset:976
	ds_load_u8 v153, v82 offset:912
	ds_load_u8 v154, v82 offset:928
	ds_load_u8 v155, v82 offset:864
	ds_load_u8 v156, v82 offset:944
	ds_load_u8 v157, v82 offset:880
	ds_load_u8 v158, v82 offset:1344
	ds_load_u8 v159, v82 offset:1280
	ds_load_u8 v160, v82 offset:1360
	ds_load_u8 v161, v82 offset:1296
	ds_load_u8 v162, v82 offset:1376
	ds_load_u8 v163, v82 offset:1312
	ds_load_u8 v164, v82 offset:1328
	ds_load_u8 v165, v82 offset:1264
	ds_load_u8 v166, v82 offset:1216
	ds_load_u8 v167, v82 offset:1152
	ds_load_u8 v168, v82 offset:1232
	ds_load_u8 v169, v82 offset:1168
	ds_load_u8 v170, v82 offset:1248
	ds_load_u8 v171, v82 offset:1184
	ds_load_u8 v172, v82 offset:1200
	ds_load_u8 v173, v82 offset:1136
	ds_load_u8 v174, v82 offset:1600
	ds_load_u8 v175, v82 offset:1536
	ds_load_u8 v176, v82 offset:1616
	ds_load_u8 v177, v82 offset:1552
	ds_load_u8 v178, v82 offset:1632
	ds_load_u8 v179, v82 offset:1568
	ds_load_u8 v180, v82 offset:1584
	ds_load_u8 v181, v82 offset:1520
	ds_load_u8 v182, v82 offset:1472
	ds_load_u8 v183, v82 offset:1408
	ds_load_u8 v184, v82 offset:1488
	ds_load_u8 v185, v82 offset:1424
	ds_load_u8 v186, v82 offset:1504
	ds_load_u8 v187, v82 offset:1440
	ds_load_u8 v188, v82 offset:1456
	ds_load_u8 v189, v82 offset:1392
	ds_load_u8 v190, v82 offset:1856
	ds_load_u8 v191, v82 offset:1792
	ds_load_u8 v192, v82 offset:1872
	ds_load_u8 v193, v82 offset:1808
	ds_load_u8 v194, v82 offset:1888
	ds_load_u8 v195, v82 offset:1824
	ds_load_u8 v196, v82 offset:1840
	ds_load_u8 v197, v82 offset:1776
	ds_load_u8 v198, v82 offset:1728
	ds_load_u8 v199, v82 offset:1664
	ds_load_u8 v200, v82 offset:1744
	ds_load_u8 v201, v82 offset:1680
	ds_load_u8 v202, v82 offset:1760
	ds_load_u8 v203, v82 offset:1696
	ds_load_u8 v204, v82 offset:1712
	ds_load_u8 v205, v82 offset:1648
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v67, v69
	ds_store_b8 v67, v70 offset:512
	ds_store_b8 v67, v71 offset:1024
	ds_store_b8 v67, v72 offset:1536
	ds_store_b8 v67, v73 offset:2048
	ds_store_b8 v67, v74 offset:2560
	ds_store_b8 v67, v75 offset:3072
	ds_store_b8 v67, v76 offset:3584
	ds_store_b8 v67, v85 offset:4096
	ds_store_b8 v67, v86 offset:4608
	ds_store_b8 v67, v88 offset:5120
	ds_store_b8 v67, v89 offset:5632
	ds_store_b8 v67, v90 offset:6144
	ds_store_b8 v67, v91 offset:6656
	ds_store_b8 v67, v92 offset:7168
	ds_store_b8 v67, v93 offset:7680
	v_add_nc_u32_e32 v67, 0, v218
	ds_store_b8_d16_hi v66, v69
	ds_store_b8_d16_hi v66, v70 offset:512
	ds_store_b8_d16_hi v66, v71 offset:1024
	ds_store_b8_d16_hi v66, v72 offset:1536
	ds_store_b8_d16_hi v66, v73 offset:2048
	ds_store_b8_d16_hi v66, v74 offset:2560
	ds_store_b8_d16_hi v66, v75 offset:3072
	ds_store_b8_d16_hi v66, v76 offset:3584
	ds_store_b8_d16_hi v66, v85 offset:4096
	ds_store_b8_d16_hi v66, v86 offset:4608
	ds_store_b8_d16_hi v66, v88 offset:5120
	ds_store_b8_d16_hi v66, v89 offset:5632
	ds_store_b8_d16_hi v66, v90 offset:6144
	ds_store_b8_d16_hi v66, v91 offset:6656
	ds_store_b8_d16_hi v66, v92 offset:7168
	ds_store_b8_d16_hi v66, v93 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[66:69], v67 offset1:8
	v_xad_u32 v70, v218, 8, 0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v75, v101, v100, 0xc0c0004
	v_perm_b32 v76, v125, v124, 0xc0c0004
	v_perm_b32 v85, v109, v108, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v74, v218, 16, 0
	ds_load_2addr_stride64_b64 v[70:73], v70 offset1:8
	ds_load_2addr_stride64_b64 v[80:83], v74 offset1:8
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v75, v76, 16, v75
	v_lshl_or_b32 v74, v85, 16, v84
	v_perm_b32 v76, v133, v132, 0xc0c0004
	v_perm_b32 v84, v151, v150, 0xc0c0004
	v_perm_b32 v85, v117, v116, 0xc0c0004
	v_perm_b32 v86, v141, v140, 0xc0c0004
	v_perm_b32 v92, v211, v210, 0xc0c0004
	v_perm_b32 v93, v103, v102, 0xc0c0004
	v_lshl_or_b32 v89, v84, 16, v76
	v_perm_b32 v76, v159, v158, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	v_perm_b32 v84, v183, v182, 0xc0c0004
	v_perm_b32 v85, v94, v87, 0xc0c0004
	v_perm_b32 v86, v167, v166, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v87, v218, 24, 0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v94, v127, v126, 0xc0c0004
	v_lshl_or_b32 v91, v84, 16, v76
	v_perm_b32 v76, v191, v190, 0xc0c0004
	v_lshl_or_b32 v90, v86, 16, v85
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_load_2addr_stride64_b64 v[84:87], v87 offset1:8
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v100, v207, v206, 0xc0c0004
	v_perm_b32 v101, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[66:67], v[74:75], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v92, 16, v76
	v_wmma_i32_16x16x16_iu4 v[57:64], v[68:69], v[74:75], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v94, 16, v93
	v_lshl_or_b32 v92, v101, 16, v100
	v_perm_b32 v74, v135, v134, 0xc0c0004
	v_perm_b32 v75, v153, v152, 0xc0c0004
	v_perm_b32 v94, v119, v118, 0xc0c0004
	v_perm_b32 v100, v145, v142, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[88:89], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v102, v175, v174, 0xc0c0004
	v_perm_b32 v101, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[88:89], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v75, 16, v74
	v_lshl_or_b32 v88, v100, 16, v94
	v_perm_b32 v74, v161, v160, 0xc0c0004
	v_perm_b32 v94, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[80:81], v[90:91], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_perm_b32 v96, v169, v168, 0xc0c0004
	v_lshl_or_b32 v75, v101, 16, v102
	v_wmma_i32_16x16x16_iu4 v[57:64], v[82:83], v[90:91], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v91, v94, 16, v74
	v_perm_b32 v74, v193, v192, 0xc0c0004
	v_perm_b32 v94, v213, v212, 0xc0c0004
	v_lshl_or_b32 v90, v96, 16, v95
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[84:85], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[75:76], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v95, v112, v104, 0xc0c0004
	v_lshl_or_b32 v75, v94, 16, v74
	v_perm_b32 v94, v208, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[66:67], v[92:93], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v74, v105, v129, 0xc0c0004
	v_perm_b32 v76, v128, v120, 0xc0c0004
	v_perm_b32 v96, v177, v176, 0xc0c0004
	v_perm_b32 v100, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[68:69], v[92:93], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v95, 16, v94
	v_perm_b32 v94, v154, v99, 0xc0c0004
	v_perm_b32 v95, v121, v147, 0xc0c0004
	v_perm_b32 v99, v146, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[70:71], v[88:89], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v76, 16, v74
	v_perm_b32 v76, v137, v155, 0xc0c0004
	v_lshl_or_b32 v74, v100, 16, v96
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v99, 16, v95
	v_perm_b32 v95, v98, v97, 0xc0c0004
	v_perm_b32 v96, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[80:81], v[90:91], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v94, 16, v76
	v_perm_b32 v76, v163, v162, 0xc0c0004
	v_perm_b32 v94, v187, v186, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[82:83], v[90:91], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v96, 16, v95
	v_perm_b32 v95, v106, v131, 0xc0c0004
	v_perm_b32 v96, v130, v123, 0xc0c0004
	v_perm_b32 v97, v209, v115, 0xc0c0004
	v_perm_b32 v98, v114, v107, 0xc0c0004
	v_lshl_or_b32 v91, v94, 16, v76
	v_perm_b32 v76, v195, v194, 0xc0c0004
	v_perm_b32 v94, v215, v214, 0xc0c0004
	v_lshl_or_b32 v96, v96, 16, v95
	v_lshl_or_b32 v95, v98, 16, v97
	v_perm_b32 v97, v138, v157, 0xc0c0004
	v_perm_b32 v98, v156, v143, 0xc0c0004
	v_perm_b32 v99, v122, v149, 0xc0c0004
	v_perm_b32 v100, v148, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[66:67], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v94, 16, v76
	v_perm_b32 v76, v179, v178, 0xc0c0004
	v_perm_b32 v101, v203, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v67, v98, 16, v97
	v_lshl_or_b32 v66, v100, 16, v99
	v_perm_b32 v92, v164, v189, 0xc0c0004
	v_perm_b32 v97, v188, v181, 0xc0c0004
	v_perm_b32 v65, v65, v173, 0xc0c0004
	v_perm_b32 v98, v172, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[70:71], v[88:89], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v101, 16, v76
	v_wmma_i32_16x16x16_iu4 v[17:24], v[72:73], v[88:89], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[70:71], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v97, 16, v92
	v_lshl_or_b32 v70, v98, 16, v65
	v_perm_b32 v65, v196, v217, 0xc0c0004
	v_perm_b32 v68, v216, v144, 0xc0c0004
	v_perm_b32 v69, v180, v205, 0xc0c0004
	v_perm_b32 v76, v204, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[66:67], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[80:81], v[90:91], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[82:83], v[90:91], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v68, 16, v65
	v_lshl_or_b32 v65, v76, 16, v69
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[84:85], v[74:75], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[86:87], v[74:75], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[84:85], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[65:66], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s60, v77
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s0, s58, s56
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s3, s60, s0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v66, 48, v65
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v69, s3, v77, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s4, s56, v65
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v67, 32, v65
	v_or_b32_e32 v68, 16, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s56, v66
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v69
	v_cndmask_b32_e64 v65, 0x80000000, v69, s4
	v_add_nc_u32_e32 v71, 64, v69
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v69, 0x60, v69
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s56, v68
	v_cmp_gt_i32_e64 s0, s56, v67
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s21, s49, 0xffff
	s_mov_b32 s23, 0x31027000
	v_cndmask_b32_e32 v66, 0x80000000, v69, vcc_lo
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s59, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v68, 0x80000000, v70, s1
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v70, s36, v0, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v67, 0x80000000, v71, s0
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s57, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s20, s48
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v82, v1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x3
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v67, v67, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	s_and_b32 s21, s51, 0xffff
	s_mov_b32 s20, s50
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v70, 4, v0
	v_lshrrev_b32_e32 v71, 1, v79
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v0, 0xf0, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v83, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v70, v70, 1, v71
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s57, v77
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v74, v11
	v_cvt_f32_i32_e32 v75, v12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v11, 28, v78
	v_and_b32_e32 v1, 32, v1
	v_lshl_add_u32 v12, v0, 2, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v94, 2, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s3, s57
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v93, 4, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v76, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s59, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v73, v10
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v10, s3, s59, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v92, 6, v70
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v11, v12, v1, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v107, s59, v94
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v91, 8, v70
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v87, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x86, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v106, s59, v93
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v90, 10, v70
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s57, v13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v88, v7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v71, v0, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x84, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s57, 48, v[10:11]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v105, s59, v92
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v78, 12, v70
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v10, v70, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s57, v107
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v89, v8
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v8, 0x82, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v104, s59, v91
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v77, 14, v70
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s59, v6
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v13, v10, v94, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s57, v106
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v103, s59, v90
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s4, s8
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, s59, v7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v10, v93, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s57, v105
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v102, s59, v78
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s18
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v99, s59, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v109, v10, v92, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s57, v104
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v101, s59, v77
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s57, v97
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v13, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s17
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v100, s59, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v110, v10, v91, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s57, v103
	v_cmp_gt_i32_e64 s9, s57, v98
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v98, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v10, v90, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s57, v102
	v_cmp_gt_i32_e64 s10, s57, v99
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v99, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s15
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v86, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x88, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v10, v78, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s57, v101
	v_cmp_gt_i32_e64 s11, s57, v100
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v100, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s14
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v85, v4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x8a, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v113, v10, v77, 2
	v_cndmask_b32_e64 v101, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v3
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v2, 0x8e, v70
	v_or_b32_e32 v3, 0x8c, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v10, v9, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v81, v16
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s59, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v102, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v115, v10, v8, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v80, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s59, v4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v116, v10, v7, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v79, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s59, v2
	v_or_b32_e32 v14, s59, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v117, v10, v6, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s57, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v118, v10, v5, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s57, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v119, v10, v4, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s57, v12
	v_cmp_gt_i32_e64 s3, s57, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v107, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s6
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v95, s57, 4, v10
	v_lshl_add_u32 v96, s57, 5, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v120, v10, v3, 2
	v_add_lshl_u32 v10, v10, v2, 2
	v_cndmask_b32_e64 v108, 0x80000000, v118, s19
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s4, s5
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s4, s3
	s_and_b32 s4, s4, s2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v25, v25
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
	v_add_lshl_u32 v122, v95, v94, 2
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s20, s42
	v_add_lshl_u32 v123, v95, v93, 2
	v_cndmask_b32_e64 v110, 0x80000000, v120, s19
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v65
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v65, 0x80000000, v10, s4
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v67
	v_lshlrev_b32_e32 v10, 16, v68
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v67, v25, v13
	v_mul_f32_e32 v43, v43, v10
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v51, v51, v12 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v49, v49, v12
	v_mul_f32_e32 v50, v50, v12
	v_mul_f32_e32 v52, v52, v12
	v_mul_f32_e32 v53, v53, v12
	v_mul_f32_e32 v54, v54, v12
	v_dual_mul_f32 v55, v55, v12 :: v_dual_mul_f32 v42, v42, v10
	v_mul_f32_e32 v56, v56, v12
	v_dual_mul_f32 v57, v57, v12 :: v_dual_mul_f32 v44, v44, v10
	v_mul_f32_e32 v58, v58, v12
	v_dual_mul_f32 v59, v59, v12 :: v_dual_mul_f32 v46, v46, v10
	v_dual_mul_f32 v60, v60, v12 :: v_dual_mul_f32 v45, v45, v10
	v_dual_mul_f32 v61, v61, v12 :: v_dual_mul_f32 v48, v48, v10
	v_dual_mul_f32 v62, v62, v12 :: v_dual_mul_f32 v47, v47, v10
	v_dual_mul_f32 v63, v63, v12 :: v_dual_mul_f32 v34, v34, v10
	v_dual_mul_f32 v64, v64, v12 :: v_dual_mul_f32 v33, v33, v10
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v10 :: v_dual_lshlrev_b32 v12, 16, v69
	v_dual_mul_f32 v35, v35, v10 :: v_dual_mul_f32 v26, v26, v13
	v_dual_mul_f32 v36, v36, v10 :: v_dual_mul_f32 v27, v27, v13
	v_dual_mul_f32 v37, v37, v10 :: v_dual_mul_f32 v28, v28, v13
	v_dual_mul_f32 v38, v38, v10 :: v_dual_mul_f32 v29, v29, v13
	v_dual_mul_f32 v39, v39, v10 :: v_dual_mul_f32 v30, v30, v13
	v_dual_mul_f32 v40, v40, v10 :: v_dual_mul_f32 v31, v31, v13
	v_dual_mul_f32 v32, v32, v13 :: v_dual_mul_f32 v73, v73, v66
	v_dual_mul_f32 v68, v17, v13 :: v_dual_mul_f32 v75, v75, v66
	v_dual_mul_f32 v69, v18, v13 :: v_dual_mul_f32 v72, v72, v66
	v_dual_mul_f32 v111, v19, v13 :: v_dual_mul_f32 v74, v74, v66
	v_dual_mul_f32 v112, v20, v13 :: v_dual_mul_f32 v79, v79, v66
	v_dual_mul_f32 v113, v21, v13 :: v_dual_mul_f32 v76, v76, v66
	v_dual_mul_f32 v114, v22, v13 :: v_dual_mul_f32 v81, v81, v66
	v_dual_mul_f32 v115, v23, v13 :: v_dual_mul_f32 v80, v80, v66
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
	v_mul_f32_e32 v71, v83, v66
	v_mul_f32_e32 v83, v84, v66
	v_mul_f32_e32 v82, v82, v66
	v_mul_f32_e32 v84, v85, v66
	v_mul_f32_e32 v85, v86, v66
	v_mul_f32_e32 v86, v87, v66
	v_mul_f32_e32 v87, v88, v66
	v_mul_f32_e32 v66, v89, v66
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v49, v49, v10 :: v_dual_mul_f32 v56, v56, v17
	v_dual_mul_f32 v50, v50, v11 :: v_dual_mul_f32 v51, v51, v12
	v_dual_mul_f32 v52, v52, v13 :: v_dual_mul_f32 v53, v53, v14
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v58, v58, v19 :: v_dual_mul_f32 v63, v63, v24
	v_mul_f32_e32 v64, v64, v25
	v_dual_mul_f32 v54, v54, v15 :: v_dual_mul_f32 v55, v55, v16
	v_dual_mul_f32 v57, v57, v18 :: v_dual_mul_f32 v60, v60, v21
	v_mul_f32_e32 v59, v59, v20
	v_dual_mul_f32 v61, v61, v22 :: v_dual_mul_f32 v62, v62, v23
	v_dual_mul_f32 v41, v41, v10 :: v_dual_mul_f32 v42, v42, v11
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
	v_cndmask_b32_e64 v1, 0x80000000, v121, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v43, v43, v12 :: v_dual_mul_f32 v44, v44, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v49, 0x80000000, v122, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v64, v65, s[20:23], 0 offen
	buffer_store_b32 v41, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v123, s4
	v_add_lshl_u32 v1, v95, v92, 2
	v_add_lshl_u32 v41, v95, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v42, v49, s[20:23], 0 offen
	buffer_store_b32 v43, v50, s[20:23], 0 offen
	v_add_lshl_u32 v42, v95, v90, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v78, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v45, v45, v14 :: v_dual_mul_f32 v46, v46, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v47, v47, v16 :: v_dual_mul_f32 v48, v48, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v44, v1, s[20:23], 0 offen
	buffer_store_b32 v45, v41, s[20:23], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	v_add_lshl_u32 v1, v95, v77, 2
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
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v7, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v34, v34, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v35, v35, v20 :: v_dual_mul_f32 v36, v36, v21
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
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v95, v3, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v37, v37, v22 :: v_dual_mul_f32 v38, v38, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s1, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v39, v39, v24 :: v_dual_mul_f32 v40, v40, v25
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
	v_dual_mul_f32 v67, v67, v10 :: v_dual_mul_f32 v26, v26, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v27, v27, v12 :: v_dual_mul_f32 v28, v28, v13
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
	v_dual_mul_f32 v29, v29, v14 :: v_dual_mul_f32 v30, v30, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v90, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v33, v96, v78, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v28, v1, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v77, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v9, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v31, v31, v16 :: v_dual_mul_f32 v32, v32, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v68, v68, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
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
	v_dual_mul_f32 v88, v111, v20 :: v_dual_mul_f32 v89, v112, v21
	v_dual_mul_f32 v111, v113, v22 :: v_dual_mul_f32 v112, v114, v23
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
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v69, v27, s[20:23], 0 offen
	buffer_store_b32 v88, v28, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v4, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v28, v96, v3, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v89, v1, s[20:23], 0 offen
	buffer_store_b32 v111, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v2, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v0, v70, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v114, v116, v25 :: v_dual_mul_f32 v11, v73, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v72, v10 :: v_dual_mul_f32 v13, v75, v13
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
	v_dual_mul_f32 v12, v74, v12 :: v_dual_mul_f32 v15, v79, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v14, v76, v14 :: v_dual_mul_f32 v17, v81, v17
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
	v_add_lshl_u32 v12, v0, v78, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v13, v1, s[20:23], 0 offen
	buffer_store_b32 v14, v10, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v77, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v9, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v16, v80, v16 :: v_dual_mul_f32 v19, v71, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v18, v82, v18 :: v_dual_mul_f32 v21, v84, v21
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
	v_dual_mul_f32 v20, v83, v20 :: v_dual_mul_f32 v23, v86, v23
	v_dual_mul_f32 v22, v85, v22 :: v_dual_mul_f32 v25, v66, v25
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v24, v87, v24
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 232
		.amdhsa_next_free_sgpr 100
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 232
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 100
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14760
; TotalNumSgprs: 102
; NumVgprs: 232
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 232
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     102
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     232
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
